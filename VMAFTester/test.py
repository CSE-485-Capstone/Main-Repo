#!/usr/bin/env python3

import argparse
from os import listdir, path
from json import loads, dumps
import subprocess, random, string

import ffmpeg

import pprint

VMAF_MODEL = '/home/haxx/Software/vmaf/model/vmaf_v0.6.1.pkl'

class Tester:
    def test(self, src, temp, conf):
        self.src = src
        self.temp = temp
        self.conf = conf

        self.getDirectoryListing()
        self.analyzeFiles()
        self.runTests()
        self.outputs = {}

        return self.testResults
    
    def getDirectoryListing(self):
        self.files = [
            path.join(self.src, f) for f in listdir(self.src) if path.isfile(path.join(self.src, f))
        ]

    def analyzeFiles(self):
        analyses = {}
        for fil in self.files:
            p = ffmpeg.probe(fil)
            stream = [
                s for s in p['streams'] if s['codec_type'] == 'video'
            ][0]

            info = {
                'codec': stream['codec_name'],
                'duration': stream['duration'],
                'resolution': (stream['width'], stream['height'])
            }

            analyses[fil] = info
            print(f'discovered source: {fil}\t codec: {info["codec"]}\t duration: {info["duration"]}\t res: {info["resolution"]}')
        self.meta = analyses
    
    def runTests(self):
        self.testResults = {}

        for fil in self.files:
            self.testResults[fil] = {}
            # run tests
            # 1. convert the file to yuv as the control sample
            print(f'convert file {fil} -> {path.join(self.temp, "control.yuv")}')
            ctrl_conv = subprocess.Popen([
                'ffmpeg', '-hide_banner', '-y', '-i', fil, '-c:v', 'rawvideo', '-pix_fmt', 'yuv444p10le', path.join(self.temp, 'control.yuv'),
            ], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

            _, _ = ctrl_conv.communicate()
            ctrl_conv.wait()

            print(f'performing tests on {fil}...')

            # 2. convert to the different codecs and profiles
            for codec in self.conf['codecs']:
                self.testResults[fil][codec['name']] = {}
                args = {
                    "name": codec['name'],
                    "encoder": codec['encoder'],
                    "container": codec['container'],
                    "color": codec['color'],
                    'fileinput': fil
                }
                print(f'===>Testing codec {args["name"]}')

                for profile in codec['profiles']:
                    prof_args = args.copy()
                    
                    for key in profile:
                        prof_args[key] = profile[key]
                    
                    prof_args['fileoutput'] = path.join(self.temp, ''.join(random.choices(string.ascii_uppercase + string.digits, k=16)) + '.' + codec['container'])
                    prog_cmds = ['ffmpeg', '-hide_banner', '-y']
                    print(f'=======>Testing profile {profile}: {fil} -> {prof_args["fileoutput"]}')

                    # generate args to encode the file
                    cmds = [ c['arg'] for c in codec['command']]
                    for cmd in cmds:
                        if cmd[0] == '{' and cmd[-1] == '}':
                            prog_cmds.append(prof_args[cmd[1:-1]])
                        else:
                            prog_cmds.append(cmd)

                    encoded_file = subprocess.Popen(prog_cmds, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    _, _ = encoded_file.communicate()
                    encoded_file.wait()

                    # transcode the file to yuv
                    print(f'    transcoding {prof_args["fileoutput"]} -> {path.join(self.temp, "under_test.yuv")}')
                    test_conv = subprocess.Popen(
                        ['ffmpeg', '-y', '-i', prof_args['fileoutput'], '-c:v', 'rawvideo', '-pix_fmt', 'yuv444p10le', path.join(self.temp, 'under_test.yuv')
                    ], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    _, _ = test_conv.communicate()
                    test_conv.wait()

                    vmaf_args = [
                        'vmafossexec',
                        'yuv444p10le',
                        str(self.meta[fil]['resolution'][0]),
                        str(self.meta[fil]['resolution'][1]),
                        path.join(self.temp, 'control.yuv'),
                        path.join(self.temp, 'under_test.yuv'),
                        VMAF_MODEL,
                        path.join(self.temp, 'vmaf_output.xml'),
                        '--psnr',
                        '--ssim',
                        '--ms-ssim',
                        '--thread',
                        '0',
                        '--subsample'
                        '5'
                    ]

                    vmaf_proc = subprocess.Popen(vmaf_args)#, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    _, _ = vmaf_proc.communicate()
                    vmaf_proc.wait()

                    with open(path.join(self.temp, 'vmaf_output.xml'), 'w') as vmaf_out:
                        self.testResults[fil][codec['name']][profile] = vmaf_out.read()

                    print(f'vmaf testing complete...')

# tests we want to do:
    # Test different codecs vs bitrate
    # Test generational losses

if __name__ == "__main__":
    argumentParser = argparse.ArgumentParser(description='FOX media study')
    argumentParser.add_argument(
        'src',
        metavar='src',
        help='path to directory containing the video files to test'
    )

    argumentParser.add_argument(
        'tmp',
        metavar='tmp',
        help='where to store files that are generated by this process'
    )

    argumentParser.add_argument(
        'conf',
        metavar='conffile',
        help='where is the json config file?'
    )

    args = argumentParser.parse_args()
    conf = None
    with open(args.conf, 'r') as configurationFile:
        conf = loads(configurationFile.read())

    tester = Tester()
    results = tester.test(src=args.src, temp=args.tmp, conf=conf)
    with open('results.json', 'w') as res:
        res.write(dumps(results))
import cv2
import os
import numpy

class FramePixels:

    def __init__(self, someFrame):
        self.frame = someFrame
        self.height = someFrame.shape[0]
        self.width = someFrame.shape[1]
        self.buildRBGDict()

    def buildRBGDict(self):
        print('Building Dictionary...')
        pixelDict = {}
        key = 0
        for i in range(self.height):
            for j in range(self.width):
                pixel_b, pixel_g, pixel_r = self.frame[i][j]
                pixelDict[key] = pixel_r, pixel_b, pixel_g
                key+=1
        print('Built')

#ifndef _VIDEO_COMPARER_H
#define _VIDEO_COMPARER_H

#include <opencv2/videoio/videoio.hpp>

#include <vector>
#include <string>
#include <map>
#include <iostream>

namespace tst
{
    class TestResult
    {
    public:
        bool success = false;
        std::string test_name = "default test";
        std::map<std::string, std::string> results;

        void print(std::ostream& out);
    };

    class Test
    {
    protected:
        cv::VideoCapture cap_test;
        cv::VideoCapture cap_ctrl;
        std::string test_name = "default test";
    
    public:
        virtual ~Test();

        TestResult prepare(char* test, char* ctrl);
        virtual TestResult execute();
        void teardown();
    };

    class TestBed
    {
    private:
        char *p_ctrl = nullptr, *p_test = nullptr;
        std::vector<Test*> tests;
        std::vector<TestResult> results;
    protected:
    public:
        TestBed() = delete;
        TestBed(char* ctrl, char* test);
        virtual ~TestBed() = default;

        void queue_test(Test* test);
        std::vector<TestResult>& getTestResults();
        void printTestResults(std::ostream& out);

        void execute(unsigned int threads);
    };
}

#endif
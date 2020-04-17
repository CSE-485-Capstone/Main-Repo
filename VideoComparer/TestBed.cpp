#include "TestBed.h"

tst::Test::~Test()
{
    if (cap_test.isOpened())
        cap_test.release();
    if (cap_ctrl.isOpened())
        cap_ctrl.release();
}

tst::TestResult tst::Test::prepare(char* test, char* ctrl)
{
    tst::TestResult res;
    cap_test.open(test);
    cap_ctrl.open(ctrl);

    if (!cap_test.isOpened())
        res.results["fail opening source file"] = "test";
    if (!cap_ctrl.isOpened())
        res.results["fail opening source file"] = "control";
    
    res.success = !res.results.empty();
    res.test_name = test_name;

    return res;
}

tst::TestResult tst::Test::execute()
{
    tst::TestResult res;
    res.success = true;
    res.test_name = "Default test";
    res.results["test res0"] = "res0-result";
    res.results["test res1"] = "res1-result";

    return res;
}

void tst::Test::teardown()
{
    if (cap_test.isOpened())
        cap_test.release();
    if (cap_ctrl.isOpened())
        cap_ctrl.release(); }

void tst::TestResult::print(std::ostream& out)
{
    const char* tab = "\t";
    const char* colon = ":";

    // print the test name
    out << test_name;
    
    // iterate over all result fields
    for (auto it = results.begin(); it != results.end(); ++it)
    {
        out << (success ? "[SUCC]" : "[FAIL]") << tab << it->first << colon << it->second;
    }

    // print a newline at end and flush
    out << std::endl;
}

tst::TestBed::TestBed(char* ctrl, char* test) :
    p_ctrl(ctrl),
    p_test(test)
{}

void tst::TestBed::queue_test(Test* test)
{
    tests.push_back(test);
}

std::vector<tst::TestResult>& tst::TestBed::getTestResults()
{
    return results;
}

void tst::TestBed::printTestResults(std::ostream& out)
{
    for (auto it = results.begin(); it != results.end(); ++it)
    {
        it->print(out);
    }
}

void tst::TestBed::execute(unsigned int threads)
{
    // Currently no multithreading, so `threads` is ignored

    for (auto it = tests.begin(); it != tests.end(); ++it)
    {
        TestResult res;
        Test* test = *it;
        res = test->prepare(p_test, p_ctrl);
        if (!res.success)
        {
            res.print(std::cerr);
            continue;
            test->teardown();
        }
        res = test->execute();
        res.print(std::cout);
        test->teardown();
    }
}
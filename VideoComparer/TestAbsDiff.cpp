#include "TestAbsDiff.h"

tests::AbsDiffTest::AbsDiffTest()
{
    test_name = "Absolute difference btwn ctrl and test";
}

tst::TestResult tests::AbsDiffTest::execute()
{
    tst::TestResult test_results;

    // VC cap_test
    // VC cap_ctrl

    cv::Mat m_test, m_ctrl, m_diff;

    while (cap_test.retrieve(m_test) && cap_ctrl.retrieve(m_ctrl))
    {
        // calculate the absdiff of the frame
        cv::absdiff(m_ctrl, m_test, m_diff);

        // calculate min, max, mean, stdev
    }

    return  test_results;
}
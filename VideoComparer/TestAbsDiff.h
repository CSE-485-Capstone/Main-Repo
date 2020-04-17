#ifndef _TEST_ABS_DIFF_H
#define _TEST_ABS_DIFF_H

#include "TestBed.h"

namespace tests
{
    // Calculates the mean / median / min per frame / max per frame absdiff
    // Use captures cap_test, cap_ctrl
    class AbsDiffTest : public tst::Test
    {
    public:
        AbsDiffTest();
        virtual tst::TestResult execute();
    };
}

#endif
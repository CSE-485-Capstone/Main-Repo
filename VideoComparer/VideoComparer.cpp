#include "TestBed.h"

#include "TestAbsDiff.h"

#include <iostream>


int main(int argc, char** argv)
{
    if (argc < 3)
    {
        std::cerr << "Error: invalid usage: " << argv[0] << " {path-to-control-file} {path-to-test-file}" << std::endl;
        return -1;
    }

    char* control = argv[1];
    char* test = argv[2];

    tst::TestBed bed(control, test);

    tests::AbsDiffTest absDiffTest;
    bed.queue_test(dynamic_cast<tst::Test*>(&absDiffTest));

    bed.execute(1);

    return 0;
}

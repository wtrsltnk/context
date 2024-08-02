/* 
 * File:   main.cpp
 * Author: wouter
 *
 * Created on May 26, 2011, 3:12 PM
 */

#include "ContextTest.h"

int main(
    int argc,
    char **argv)
{
    (void)argc;
    (void)argv;

    ContextTest test;

    if (test.create(3, 1))
    {
        return test.startGameloop();
    }

    return 0;
}

#!/bin/bash

echo "Running test..."

if [ -f ci-test.txt ]; then
    echo "Test Passed"
    exit 0
else
    echo "Test Failed"
    exit 1
fi

#!/bin/bash

echo "Running test..."

if [ -f wrong-file.txt ]; then
    echo "Test Passed"
    exit 0
else
    echo "Test Failed"
    exit 1
fi

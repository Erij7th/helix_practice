#!/bin/sh
# Test runner script for helix evaluation

# Usage: ./run-tests-eval.sh <test_files>
# Example: ./run-tests-eval.sh tests/test_main.py,tests/test_utils.py

set -e

TEST_FILES="${1:-tests/test_main.py}"

echo "Running tests: $TEST_FILES"

# Convert comma-separated list to space-separated
TEST_ARRAY=$(echo "$TEST_FILES" | tr ',' ' ')

# Run pytest on specified files
python -m pytest -v $TEST_ARRAY

echo "Tests completed successfully"

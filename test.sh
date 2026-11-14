#!/bin/sh
set -eu

echo "Running application content tests..."

test -f index.html

grep -q "CI/CD Deployment Successful!" index.html

grep -q "Version: v2" index.html

echo "All tests passed!"

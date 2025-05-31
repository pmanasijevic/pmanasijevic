#!/bin/bash
echo "🧪 Running tests (demo)"
curl --version > /dev/null && echo "Test passed: curl is installed" || echo "Test failed"

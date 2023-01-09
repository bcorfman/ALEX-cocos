#!/bin/bash
./CocosCreator.app/Contents/MacOS/CocosCreator --project "." --build "platform=web-desktop" 2>&1
exit_code=$?
if [ ${exit_code} -eq 36 ]; then
    exit 0
else
    exit $build_result
fi

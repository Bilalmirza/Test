#! /bin/sh
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COCOS2DX_ROOT="$DIR"/../..
CPU_CORES=4

function build_mac_cmake()
{
xcodebuild -project /Users/travis/build/Bilalmirza/Test/proj.ios_mac/travis-test.xcodeproj -configuration Release -target "travis-test-desktop" CONFIGURATION_BUILD_DIR="/Users/travis/build/Bilalmirza/Test/output" | xcpretty
exit 0
}

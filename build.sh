set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COCOS2DX_ROOT="$DIR"/../..
CPU_CORES=4

function build_mac_cmake()
{
NUM_OF_CORES=`getconf _NPROCESSORS_ONLN`

# pushd $COCOS2DX_ROOT
# python -u tools/cocos2d-console/bin/cocos.py --agreement n new -l cpp -p my.pack.qqqq cocos_new_test
# popd
# cd $COCOS2DX_ROOT/cocos_new_test
cd /Users/apple/Testing/travis-test/proj.ios_mac

xcodebuild -project Cocos2d-x.xcodeproj -alltargets -jobs $NUM_OF_CORES build  | xcpretty
#the following commands must not be removed
xcodebuild -project Cocos2d-x.xcodeproj -alltargets -jobs $NUM_OF_CORES build
exit 0
}

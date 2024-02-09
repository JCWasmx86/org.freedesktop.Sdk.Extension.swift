#!/usr/bin/env bash
mkdir -p .build/{checkouts,repositories}
cd .build/repositories || exit 1
mkdir -p swift-argument-parser-59ba1edd swift-syntax-cb9339b1 swift-system-b9feb0b6 swift-tools-support-core-1e273aae swift-markdown-b692ce3c swift-cmark-4b3746f9
cd ..
cp -R ../{swift-argument-parser,swift-syntax,swift-system,swift-tools-support-core,swift-markdown,swift-cmark} checkouts
git config --global advice.detachedHead false
cd checkouts/swift-argument-parser || exit 1
git checkout c8ed701b513cf5177118a175d85fbbbcd707ab41
cd ../..
cd checkouts/swift-syntax || exit 1
git checkout 64889f0c732f210a935a0ad7cda38f77f876262d
cd ../..
cd checkouts/swift-system || exit 1
git checkout 836bc4557b74fe6d2660218d56e3ce96aff76574
cd ../..
cd checkouts/swift-tools-support-core || exit 1
git checkout 93784c59434dbca8e8a9e4b700d0d6d94551da6a
cd ../..
cd checkouts/swift-markdown || exit 1
git checkout e4f95e2dc23097a1a9a1dfdfe3fe3ee44de77378
cd ../..
cd checkouts/swift-cmark || exit 1
git checkout f218e5d7691f78b55bfa39b367763f4612486c35
cd ../../checkouts || exit 1
cp -Rv swift-argument-parser/.git/* ../repositories/swift-argument-parser-59ba1edd/
cp -Rv swift-syntax/.git/* ../repositories/swift-syntax-cb9339b1/
cp -Rv swift-system/.git/* ../repositories/swift-system-b9feb0b6/
cp -Rv swift-tools-support-core/.git/* ../repositories/swift-tools-support-core-1e273aae/
cp -Rv swift-markdown/.git/* ../repositories/swift-markdown-b692ce3c/
cp -Rv swift-cmark/.git/* ../repositories/swift-cmark-4b3746f9/
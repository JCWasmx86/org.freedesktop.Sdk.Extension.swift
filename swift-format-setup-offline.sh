#!/usr/bin/env bash
mkdir -p .build/{checkouts,repositories}
cd .build/repositories || exit 1
mkdir -p swift-argument-parser-59ba1edd swift-syntax-cb9339b1 swift-system-b9feb0b6 swift-tools-support-core-1e273aae
cd ..
cp -R ../{swift-argument-parser,swift-syntax,swift-system,swift-tools-support-core} checkouts
git config --global advice.detachedHead false
cd checkouts/swift-argument-parser || exit 1
git checkout 9f39744e025c7d377987f30b03770805dcb0bcd1
cd ../..
cd checkouts/swift-syntax || exit 1
git checkout cd793adf5680e138bf2bcbaacc292490175d0dcd
cd ../..
cd checkouts/swift-system || exit 1
git checkout 836bc4557b74fe6d2660218d56e3ce96aff76574
cd ../..
cd checkouts/swift-tools-support-core || exit 1
git checkout 93784c59434dbca8e8a9e4b700d0d6d94551da6a
cd ../../checkouts || exit 1
cp -Rv swift-argument-parser/.git/* ../repositories/swift-argument-parser-59ba1edd/
cp -Rv swift-syntax/.git/* ../repositories/swift-syntax-cb9339b1/
cp -Rv swift-system/.git/* ../repositories/swift-system-b9feb0b6/
cp -Rv swift-tools-support-core/.git/* ../repositories/swift-tools-support-core-1e273aae/

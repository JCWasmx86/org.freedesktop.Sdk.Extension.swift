#!/usr/bin/env bash
mkdir -p .build/{checkouts,repositories}
cd .build/repositories
mkdir -p swift-argument-parser-59ba1edd swift-syntax-e33d5ec5 swift-system-b9feb0b6 swift-tools-support-core-1e273aae
cd ..
cp -R ../{swift-argument-parser,swift-syntax,swift-system,swift-tools-support-core} checkouts
git config --global advice.detachedHead false
cd checkouts/swift-argument-parser
git checkout 9f39744e025c7d377987f30b03770805dcb0bcd1
cd ../..
cd checkouts/swift-syntax
git checkout 72d3da66b085c2299dd287c2be3b92b5ebd226de
cd ../..
cd checkouts/swift-system
git checkout 836bc4557b74fe6d2660218d56e3ce96aff76574
cd ../..
cd checkouts/swift-tools-support-core
git checkout 4f07be3dc201f6e2ee85b6942d0c220a16926811
cd ../../checkouts
cp -Rv swift-argument-parser/.git/* ../repositories/swift-argument-parser-59ba1edd/
cp -Rv swift-syntax/.git/* ../repositories/swift-syntax-e33d5ec5/
cp -Rv swift-system/.git/* ../repositories/swift-system-b9feb0b6/
cp -Rv swift-tools-support-core/.git/* ../repositories/swift-tools-support-core-1e273aae/

#!/usr/bin/env bash
mkdir -p .build/{checkouts,repositories}
cd .build/repositories || exit 1
mkdir -p CollectionConcurrencyKit-9b263e6b CryptoSwift-72c2bbc7 SourceKitten-45a013ca swift-argument-parser-59ba1edd swift-syntax-cb9339b1 SwiftyTextTable-dce42391 SWXMLHash-0bda306e Yams-00fc82b0
cd ..
cp -R ../{CollectionConcurrencyKit,CryptoSwift,SourceKitten,swift-argument-parser,swift-syntax,SwiftyTextTable,SWXMLHash,Yams} checkouts
git config --global advice.detachedHead false
cd checkouts/CollectionConcurrencyKit || exit 1
git checkout b4f23e24b5a1bff301efc5e70871083ca029ff95
cd ../..
cd checkouts/CryptoSwift || exit 1
git checkout 19b3c3ceed117c5cc883517c4e658548315ba70b
cd ../..
cd checkouts/SourceKitten || exit 1
git checkout fc12c0f182c5cf80781dd933b17a82eb98bd7c61
cd ../..
cd checkouts/swift-argument-parser || exit 1
git checkout fddd1c00396eed152c45a46bea9f47b98e59301d
cd ../..
cd checkouts/swift-syntax || exit 1
git checkout 76d01195182593ff34f5ada1ab0910fae190fc9c
cd ../..
cd checkouts/SwiftyTextTable || exit 1
git checkout c6df6cf533d120716bff38f8ff9885e1ce2a4ac3
cd ../..
cd checkouts/SWXMLHash || exit 1
git checkout 4d0f62f561458cbe1f732171e625f03195151b60
cd ../..
cd checkouts/Yams || exit 1
git checkout 01835dc202670b5bb90d07f3eae41867e9ed29f6
cd ../../checkouts || exit 1
cp -Rv CollectionConcurrencyKit/.git/* ../repositories/CollectionConcurrencyKit-9b263e6b
cp -Rv CryptoSwift/.git/* ../repositories/CryptoSwift-72c2bbc7
cp -Rv SourceKitten/.git/* ../repositories/SourceKitten-45a013ca
cp -Rv swift-argument-parser/.git/* ../repositories/swift-argument-parser-59ba1edd
cp -Rv swift-syntax/.git/* ../repositories/swift-syntax-cb9339b1
cp -Rv SwiftyTextTable/.git/* ../repositories/SwiftyTextTable-dce42391
cp -Rv SWXMLHash/.git/* ../repositories/SWXMLHash-0bda306e
cp -Rv Yams/.git/* ../repositories/Yams-00fc82b0
cd ../..
patch Package.swift swiftlint.patch

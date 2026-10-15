#!/bin/bash
set -e

cd "$(dirname "$0")/.."

echo "--- Cleaning project ---"
flutter clean

echo "--- Getting packages ---"
flutter pub get

echo "--- Generating assets ---"
dart run build_runner build

echo "--- Building release IPA ---"
flutter build ipa --release

echo ""
echo "Done: build/ios/ipa/"

#!/bin/bash
set -e

cd "$(dirname "$0")/.."

echo "--- Cleaning project ---"
flutter clean

echo "--- Getting packages ---"
flutter pub get

echo "--- Generating assets ---"
dart run build_runner build

echo "--- Building release macOS app ---"
flutter build macos --release

echo ""
echo "Done: build/macos/Build/Products/Release/amgad_business_card.app"

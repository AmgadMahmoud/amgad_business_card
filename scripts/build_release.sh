#!/bin/bash
set -e

cd "$(dirname "$0")/.."

echo "--- Cleaning project ---"
flutter clean

echo "--- Getting packages ---"
flutter pub get

echo "--- Generating assets ---"
dart run build_runner build

echo "--- Building release APK ---"
flutter build apk --release

echo ""
echo "Done: build/app/outputs/flutter-apk/app-release.apk"

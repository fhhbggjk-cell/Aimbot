#!/bin/bash

# Build script for Free Fire Max Overlay App

echo "🎮 Building Free Fire Max Overlay App..."
echo ""

# Check if Flutter is installed
if ! command -v flutter &> /dev/null
then
    echo "❌ Flutter is not installed!"
    echo "📥 Download Flutter from: https://flutter.dev/docs/get-started/install"
    exit 1
fi

echo "✅ Flutter found!"
echo ""

# Get dependencies
echo "📦 Installing dependencies..."
flutter pub get

echo ""
echo "🔨 Building APK for Android..."
flutter build apk --release

echo ""
echo "✅ Build Complete!"
echo ""
echo "📁 APK Location:"
echo "   build/app/outputs/apk/release/app-release.apk"
echo ""
echo "📱 To install on your device:"
echo "   adb install build/app/outputs/apk/release/app-release.apk"
echo ""

# gillian-shortcut-factory

## 🎉 NO MAC REQUIRED!

This shortcut factory works **entirely without a Mac**. Everything runs on GitHub's free Ubuntu runners.

## How It Works

1. **Add shortcuts** to the `unsigned_shortcuts/` folder
2. **Run the GitHub Action** to publish them
3. **Get a direct download link** that works on any iOS/Mac device

## Publishing a Shortcut

1. Go to the **Actions** tab in GitHub
2. Click **"Publish Shortcut"** workflow
3. Click **"Run workflow"**
4. Enter the shortcut name (without .shortcut extension)
5. Wait ~30 seconds
6. Get your download link from the release!

## How to Install Published Shortcuts

When you run the workflow, it creates a GitHub Release with your shortcut attached. Users can:

1. Click the release download link on their iPhone/iPad/Mac
2. Open the downloaded .shortcut file
3. Tap "Add Shortcut" when prompted

**No iCloud account needed. No Mac needed. No signing needed.**

## Why This Works

Apple Shortcuts (.shortcut files) don't need to be "signed" in the cryptographic sense. They just need to be downloaded and opened on an iOS/Mac device. The previous approach used macOS runners to upload to iCloud, but that was unnecessary - direct downloads work perfectly!
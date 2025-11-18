# gillian-shortcut-factory

## 🎉 NO MAC REQUIRED - TRULY WORKS!

This shortcut factory works **entirely without a Mac** and **bypasses iOS "unsigned shortcut" restrictions** using the Shortcuts URL scheme.

## The Problem We Solved

iOS blocks direct .shortcut file downloads with the error:
> "Shortcut cannot be opened. Importing unsigned shortcut files is not supported."

**Our solution:** Use the `shortcuts://import-shortcut` URL scheme via a web page, which bypasses this restriction entirely.

## How It Works

1. **Add shortcuts** to the `unsigned_shortcuts/` folder
2. **Run the GitHub Action** to publish them
3. **Get an installation page URL** that uses the Shortcuts URL scheme
4. **Open on iPhone/iPad/Mac** → automatically imports the shortcut

## Publishing a Shortcut

1. Go to the **Actions** tab in GitHub
2. Click **"Publish Shortcut"** workflow
3. Click **"Run workflow"**
4. Enter the shortcut name (without .shortcut extension)
5. Wait ~30 seconds
6. Get your installation page URL!

## Installing Published Shortcuts

The workflow generates an **installation page** for each shortcut:

```
https://YOUR_USERNAME.github.io/gillian-shortcut-factory/shortcuts/SHORTCUT_NAME.html
```

When you open this link on iPhone/iPad/Mac:
1. Click the "Install Shortcut" button
2. Shortcuts app opens automatically
3. Tap "Add Shortcut" when prompted
4. Done! No errors, no "unsigned shortcut" blocking

## Setup (First Time Only)

**Enable GitHub Pages:**
1. Go to Settings → Pages
2. Source: Deploy from a branch
3. Branch: Select your main branch
4. Folder: `/docs`
5. Save

That's it! Now the workflow will automatically create installation pages.

## Why This Works

**The Technical Details:**
- iOS blocks **direct .shortcut downloads** (the error you were getting)
- iOS **allows** the `shortcuts://import-shortcut?url=` URL scheme
- We generate an HTML page with a link using this URL scheme
- When clicked on iOS, it triggers the Shortcuts app to import directly
- This bypasses the "unsigned shortcut" restriction entirely

**No Mac. No iCloud. No signing. Just works.**

## Testing

Try the test shortcut:
1. Run the workflow with `Valid_Test` as the shortcut name
2. Open the generated installation page on your iPhone
3. Install and run → you'll see "Test Shortcut Works!"
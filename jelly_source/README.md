# Jelly Source Files

This folder contains **Jelly source code** for shortcuts. Jelly is a programming language that compiles to Apple Shortcut files.

## What's Here

Each `.jelly` file is source code that can be compiled into a working `.shortcut` file.

### Example Shortcuts

- **TipCalculator.jelly** - Calculate restaurant tips with preset percentages
- **MilesToKm.jelly** - Convert miles to kilometers

## How to Compile

### Option 1: Install Jelly Locally

**On Mac:**
```bash
brew tap actuallytaylor/formulae
brew install jelly
```

**Compile a shortcut:**
```bash
jelly jelly_source/TipCalculator.jelly --export --out unsigned_shortcuts/TipCalculator.shortcut
```

### Option 2: Use GitHub Action (Coming Soon)

We'll add a workflow that automatically compiles `.jelly` files when you commit them.

## How to Create New Shortcuts

### Method 1: Write Jelly Code Yourself
Learn Jelly syntax at: https://www.jellycuts.com/docs/

### Method 2: Use AI (RECOMMENDED)
Use the Custom GPT prompt from `CUSTOM_GPT_PROMPT.md`:

1. Open ChatGPT or Claude
2. Paste the system prompt from `CUSTOM_GPT_PROMPT.md`
3. Describe your shortcut: "Create a shortcut that..."
4. AI generates valid Jelly code
5. Save to a `.jelly` file here
6. Compile to `.shortcut`
7. Publish using the workflow!

## Text-to-Shortcut Example

**You say:**
> "Create a shortcut that calculates restaurant tips"

**AI generates:**
```jelly
// Tip Calculator
importQuestion("Enter bill amount:", bill)
menu {
    case "15%": calculate(bill * 0.15, tip)
    case "18%": calculate(bill * 0.18, tip)
    case "20%": calculate(bill * 0.20, tip)
}
calculate(bill + tip, total)
showResult("Tip: $\(tip)\nTotal: $\(total)")
```

**You compile:**
```bash
jelly TipCalculator.jelly --export --out TipCalculator.shortcut
```

**Done!** Working shortcut file ready to publish.

## Why This Works

- Jelly compiles to valid `.shortcut` files
- No Mac required (runs on Linux)
- AI understands Jelly syntax perfectly
- You describe what you want, AI writes the code
- **True "text to shortcut" automation**

## Next Steps

1. Install Jelly compiler
2. Test compiling existing examples
3. Use AI to generate new shortcuts
4. Add GitHub Action for automatic compilation
5. Build shortcuts from plain English!

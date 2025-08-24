# Vim C/C++ Config

This repository contains my personal daily drive Vim configuration for **C/C++ development**.


---
## Installation

1. Clone this repository:

```bash
git clone https://github.com/Berry484/VimConfig.git ~/.vim
```

2. Install [`vim-plug`](https://github.com/junegunn/vim-plug) if not already installed:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Open Vim and install plugins

```bash
:PlugInstall
```
---


## Features

- **Color Schemes & Syntax Highlighting**
  - Uses `onedark` color scheme
  - Custom highlights for comments, strings, and standard C library functions
- **Cursor**
  - Distinct cursor shapes for normal and insert modes
  - Visual cues using `vim-cursorword` for better focus
- **Editing Enhancements**
  - Smart indentation for C/C++ (`smartindent`, `autoindent`)
  - `auto-pairs` for automatic closing of brackets and quotes
- **File Navigation**
  - NERDTree file explorer with toggle mappings
  - Easy toggling of NERDTree focus without moving editing cursor
- **Tags Support**
  - Preconfigured tags for C/C++ projects to enable navigation and completion

---

## Key Mappings

| Mode   | Key        | Action |
|--------|-----------|--------|
| Normal | `Ctrl-n`   | Toggle NERDTree |
| Normal | `F9`       | In diff mode: open a new buffer and read `svn diff` |
| Normal | `Alt-Down` | In diff mode: jump to next diff hunk (`]c`) |
| Normal | `Alt-Up`   | In diff mode: jump to previous diff hunk (`[c`) |
| Normal | `Alt-Left` | In diff mode: `do` (get changes from other window) |
| Normal | `Alt-Right`| In diff mode: `dp` (put changes to other window) |
| Normal | `Alt-Down` | In spell mode: jump to next spelling error (`]s`) |
| Normal | `Alt-Up`   | In spell mode: jump to previous spelling error (`[s`) |

---

## Plugins

- [`tpope/vim-commentary`](https://github.com/tpope/vim-commentary) — Easy commenting
- [`jiangmiao/auto-pairs`](https://github.com/jiangmiao/auto-pairs) — Auto-closing brackets and quotes
- [`preservim/nerdtree`](https://github.com/preservim/nerdtree) — File explorer
- [`joshdick/onedark.vim`](https://github.com/joshdick/onedark.vim) — Color scheme
- [`itchyny/vim-cursorword`](https://github.com/itchyny/vim-cursorword) — Highlight the word under cursor

---



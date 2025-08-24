# Vim C/C++ Configuration

This repository contains my personal Vim configuration optimized for **C/C++ development**. It provides a modern, visually friendly setup with efficient editing, navigation, and file management inspired by VS Code.

---

## Features

- **Color Schemes & Syntax Highlighting**
  - Uses `onedark` color scheme
  - Custom highlights for comments, strings, and standard C library functions
  - Light and readable line numbers
- **Cursor**
  - Distinct cursor shapes for normal and insert modes
  - Visual cues using `vim-cursorword` for better focus
- **Editing Enhancements**
  - Smart indentation for C/C++ (`smartindent`, `autoindent`)
  - Tab and shiftwidth configured for 4 spaces
  - Virtual edit beyond line endings for easier visual selection
  - `auto-pairs` for automatic closing of brackets and quotes
- **File Navigation**
  - NERDTree file explorer with toggle mappings
  - Easy toggling of NERDTree focus without moving editing cursor
- **Code Commenting**
  - `vim-commentary` for quick toggling of comments
- **Tags Support**
  - Preconfigured tags for C/C++ projects to enable navigation and completion
- **Spell Checking / Diff Support**
  - Spell checking in normal buffers
  - Diff mode keymaps for merging

---

## Key Mappings

| Mode       | Key              | Action |
|------------|-----------------|--------|
| Normal     | `Ctrl-n`         | Toggle NERDTree |
| Command    | N/A              | Standard command-line completion preserved |

---

## Plugins

- [`tpope/vim-commentary`](https://github.com/tpope/vim-commentary) — Easy commenting
- [`jiangmiao/auto-pairs`](https://github.com/jiangmiao/auto-pairs) — Auto-closing brackets and quotes
- [`preservim/nerdtree`](https://github.com/preservim/nerdtree) — File explorer
- [`morhetz/gruvbox`](https://github.com/morhetz/gruvbox) — Color scheme
- [`joshdick/onedark.vim`](https://github.com/joshdick/onedark.vim) — Color scheme
- [`itchyny/vim-cursorword`](https://github.com/itchyny/vim-cursorword) — Highlight the word under cursor

---

## Installation

1. Clone this repository:

```bash
git clone https://github.com/Berry484/VimConfig.git ~/.vim
```

2. Clone this repository:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Open Vim and install plugins

```bash
:PlugInstall
```

# neovim-config

My Neovim config built around a few useful plugins for IDE usage.

## Requirements

- Neovim 0.11+
- Git
- ripgrep (`rg`) for live grep
- Optional (Recommended): Nerd Font (for icons)


## Install

Clone directly into your Neovim config directory:

- Linux/macOS: `~/.config/nvim`
- Windows: `%LOCALAPPDATA%\nvim`

Then open Neovim and run:

- `:Lazy sync`

## Screenshots

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/830f97fb-3e35-421c-89bd-27bb9497eece" />
<img width="1917" height="1094" alt="image" src="https://github.com/user-attachments/assets/6ae96a52-0241-4139-b6b7-b386af502e23" />
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/53fc2c23-93e7-4b33-8b7c-b626688e8700" />

## Core Plugins

- **lazy.nvim**: plugin manager
- **nvim-tree**: file explorer
- **telescope**: fuzzy finding (files/grep/buffers)
- **treesitter**: syntax highlighting
- **mason + lspconfig**: LSP servers
- **nvim-cmp**: completion
- **conform**: formatting
- **gitsigns + fugitive**: git integration
- **lualine**: statusline
- **bufferline**: buffer tabs

## Main Keybinds

Explorer:
- `<leader>e` toggle file explorer

Find (Telescope):
- `<leader>ff` find files (project root)
- `<leader>fg` grep (project root)
- `<leader>fb` buffers
- `<leader>fr` recent files

Buffers / Tabs:
- `<leader>bb` alternate buffer
- `<leader>bd` delete buffer
- `<leader>tn` new tab
- `<leader>tq` close tab

Git:
- `<leader>gh` preview hunk
- `<leader>gs` stage hunk
- `<leader>gS` stage file
- `:Git` fugitive status

## Notes

- Auto sets the working folder to the project root when you open files (keeping search and the explorer scoped to the project).
- Colorscheme is persisted across restarts.

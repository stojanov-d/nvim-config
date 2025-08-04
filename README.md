# Neovim Configuration

> **Original config from - [hendrikmi/neovim-kickstart-config](https://github.com/hendrikmi/neovim-kickstart-config/) - a major part of this configuration is based on their excellent work!**

## Requirements

- **Neovim 0.9+**
- **Git**
- **Node.js & npm** (for LSP servers)
- **Ripgrep** (for file search)
- **fd** - faster file finding
- **Nerd Font** (for icons) - optional
- **fzf** - additional fuzzy finding capabilities - optional

## Features

- **Plugin Manager**: [Lazy.nvim](https://github.com/folke/lazy.nvim) for fast plugin loading  
- **LSP Support**: Full language server protocol support with [Mason](https://github.com/mason-org/mason.nvim) for automatic installation  
- **Autocompletion**: Intelligent code completion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) and [LuaSnip](https://github.com/L3MON4D3/LuaSnip)  
- **File Explorer**: [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for project navigation  
- **Fuzzy Finder**: [Telescope](https://github.com/nvim-telescope/telescope.nvim) for quick file and text searching  
- **Git Integration**: [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) for git status in the gutter, [vim-fugitive](https://github.com/tpope/vim-fugitive) for git commands  
- **Syntax Highlighting**: [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter) for advanced syntax highlighting  
- **Auto-formatting**: Automatic code formatting with [none-ls](https://github.com/nvimtools/none-ls.nvim)  
- **Theme**: [Kanso](https://github.com/webhooked/kanso.nvim) colorscheme with transparency toggle

## Language Support

- **Web Development**: TypeScript, JavaScript, HTML, CSS, Tailwind CSS
- **Python**: With Ruff linting and formatting
- **Lua**: Optimized for Neovim configuration
- **DevOps**: Docker, Terraform, YAML, JSON
- **Database**: SQL support
- **Markup**: Markdown with inline support

## Key Bindings

| Key          | Mode   | Action               |
| ------------ | ------ | -------------------- |
| `<Space>`    | Normal | Leader key           |
| `<leader>e`  | Normal | Toggle file explorer |
| `<leader>sf` | Normal | Find files           |
| `<leader>sg` | Normal | Live grep            |
| `<leader>bg` | Normal | Toggle transparency  |
| `<C-s>`      | Normal | Save file            |
| `<Tab>`      | Normal | Next buffer          |
| `<S-Tab>`    | Normal | Previous buffer      |

## Installation

1. Backup your existing Neovim configuration
2. Clone this config to your Neovim directory:
   ```bash
   git clone <your-repo> ~/.config/nvim  # Linux/Mac
   git clone <your-repo> ~/AppData/Local/nvim  # Windows
   ```
3. Start Neovim - plugins will install automatically
4. Run `:checkhealth` to verify everything is working

## Structure

```
├── init.lua              # Main configuration entry point
├── core/
│   ├── options.lua       # Neovim options and settings
│   └── keymaps.lua       # Key mappings
└── plugins/              # Plugin configurations
    ├── lsp.lua           # Language server setup
    ├── telescope.lua     # Fuzzy finder
    ├── neotree.lua       # File explorer
    └── ...               # Other plugin configs
```

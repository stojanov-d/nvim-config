require 'core.options' -- Load core options
require 'core.keymaps' -- Load core keymaps

-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require('lazy').setup {
    require 'plugins.colortheme',       -- Color theme plugin
    require 'plugins.neotree',          -- File explorer plugin
    require 'plugins.bufferline',       -- Buffer line plugin
    require 'plugins.lualine',          -- Status line plugin
    require 'plugins.treesitter',       -- Treesitter plugin for syntax highlighting and more
    require 'plugins.telescope',        -- Fuzzy finder plugin
    require 'plugins.autocompletion',   -- Autocompletion engine
    require 'plugins.lsp',              -- LSPs configuration
    require 'plugins.autoformatting',   -- LSP-based formatting and diagnostics
    require 'plugins.gitsigns',         -- Git signs in the gutter
    require 'plugins.greeting',         -- Custom greeting screen
    require 'plugins.indent-blankline', -- Indentation guides
    require 'plugins.misc',             -- Miscellaneous plugins
    require 'plugins.comment',          -- Commenting plugin
}

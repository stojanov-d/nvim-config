return {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require('kanso').setup({
            bold = true,                      -- enable bold fonts
            italics = true,                   -- enable italics
            compile = false,                  -- enable compiling the colorscheme
            undercurl = true,                 -- enable undercurls
            commentStyle = { italic = true }, -- set comment style
            functionStyle = {},
            keywordStyle = { italic = true }, -- set keyword style
            statementStyle = {},
            typeStyle = {},
            transparent = true,    -- do not set background color
            dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {             -- add/modify theme and palette colors
                palette = {},
                theme = { zen = {}, pearl = {}, ink = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                return {}
            end,
            background = {           -- map the value of 'background' option to a theme
                dark = "ink",        -- try "zen", "mist" or "pearl" !
                light = "ink"        -- try "zen", "mist" or "pearl" !
            },
            foreground = "default",  -- "default" or "saturated" (can also be a table like background)
        })
        vim.cmd("colorscheme kanso") -- set colorscheme (this function is called after setup)

        local bg_transparent = true
        local toggle_transparency = function()
            bg_transparent = not bg_transparent
            require('kanso').setup({
                bold = true,
                italics = true,
                compile = false,
                undercurl = true,
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = {},
                typeStyle = {},
                transparent = bg_transparent,
                dimInactive = false,
                terminalColors = true,
                colors = {
                    palette = {},
                    theme = { zen = {}, pearl = {}, ink = {}, all = {} },
                },
                overrides = function(colors)
                    return {}
                end,
                background = {
                    dark = "ink",
                    light = "ink"
                },
                foreground = "default",
            })
            vim.cmd("colorscheme kanso")
        end

        -- Create a command to toggle transparency
        vim.api.nvim_create_user_command('ToggleTransparency', toggle_transparency, {})

        -- Optional: Add a keymap to toggle transparency (uncomment if you want it)
        vim.keymap.set('n', '<leader>bg', toggle_transparency, { desc = 'Toggle background transparency' })
    end,
}

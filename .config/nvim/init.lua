-- View
vim.opt.wrap = true
vim.opt.laststatus = 2
vim.opt.colorcolumn = '80'
vim.opt.scrolloff = 5
-- vim.opt.number = true

-- Indent
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- Temp files
vim.opt.backup = false
vim.opt.undofile = false
vim.opt.swapfile = false
vim.opt.hidden = true

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.scriptencoding = 'utf-8'

-- Keymap
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', ':w<Return>')
vim.keymap.set('n', '<leader>h', ':noh<Return>')
vim.keymap.set('n', '<leader>v', ':e $MYVIMRC<Return>')
vim.keymap.set('n', '<leader>vv', ':source $MYVIMRC<Return>')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'Y', 'y$')
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
vim.keymap.set('i', 'jj', '<Esc>')

-- Commands
vim.api.nvim_create_user_command(
    'Vimrc',
    function()
        vim.cmd('edit $MYVIMRC')
    end,
    {}
)

vim.api.nvim_create_user_command(
    'Svimrc',
    function()
        vim.cmd('source $MYVIMRC')
    end,
    {}
)

-- Plugin
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- add your plugins here
        {
            'zbirenbaum/copilot.lua',
            cmd = 'Copilot',
            event = 'InsertEnter',
            config = function()
                require('copilot').setup({
                    suggestions = { enable = false },
                    panels = { enable = false },
                    server_opts_overrides = {
                        trace = 'verbose',
                        cmd = {
                            vim.fn.expand("~/.local/share/nvim/mason/bin/copilot-language-server"),
                            "--stdio"
                        },
                    },
                    filetypes = { ["*"] = true },
                })
            end
        },
        -- { "github/copilot.vim" },
        {
            "CopilotC-Nvim/CopilotChat.nvim",
            dependencies = {
                { "zbirenbaum/copilot.lua" },               -- or zbirenbaum/copilot.lua
                { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
            },
            build = "make tiktoken",                        -- Only on MacOS or Linux
            opts = {
                -- See Configuration section for options
            },

            -- See Commands section for default commands if you want to lazy load on them
            config = function()
                require('CopilotChat').setup({
                    prompts = {
                        Explain = {
                            prompt = '選択したコードの説明を日本語で書いてください',
                            mapping = '<leader>ce',
                        },
                        Review = {
                            prompt = 'コードを日本語でレビューしてください',
                            mapping = '<leader>cr',
                        },
                        Fix = {
                            prompt = 'このコードには問題があります。バグを修正したコードを表示してください。説明は日本語でお願いします',
                            mapping = '<leader>cf',
                        },
                        Optimize = {
                            prompt = '選択したコードを最適化し、パフォーマンスと可読性を向上させてください。説明は日本語でお願いします',
                            mapping = '<leader>co',
                        },
                        Docs = {
                            prompt = '選択したコードに関するドキュメントコメントを日本語で生成してください',
                            mapping = '<leader>cd',
                        },
                        Tests = {
                            prompt = '選択したコードの詳細なユニットテストを書いてください。説明は日本語でお願いします',
                            mapping = '<leader>ct',
                        },
                        Commit = {
                            prompt = require('CopilotChat.config.prompts').Commit.prompt,
                            mapping = '<leader>cco',
                            selection = require('CopilotChat.select').gitdiff,
                        },
                    },
                })
            end,
            keys = {
                {
                    '<leader>cc',
                    function()
                        require('CopilotChat').toggle()
                    end,
                    desc = 'CopilotChat - Toggle',
                },
                {
                    '<leader>cch',
                    function()
                        local actions = require('CopilotChat.actions')
                        require('CopilotChat.integrations.telescope').pick(actions.help_actions())
                    end,
                    desc = 'CopilotChat - Help actions',
                },
                {
                    '<leader>ccp',
                    function()
                        local actions = require('CopilotChat.actions')
                        require('CopilotChat.integrations.telescope').pick(actions.prompt_actions())
                    end,
                    desc = 'CopilotChat - Prompt actions',
                },
            },
        },
        { "nvim-treesitter/nvim-treesitter",    build = ":TSUpdate" },
        { 'justinmk/vim-dirvish' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-nvim-lsp-signature-help' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-cmdline' },
        {
            'zbirenbaum/copilot-cmp',
            config = function()
                require('copilot_cmp').setup()
            end
        },
        {
            'hrsh7th/nvim-cmp',
            config = function()
                local cmp = require('cmp')
                cmp.setup {
                    sources = cmp.config.sources({
                        { name = 'nvim_lsp' },
                        { name = 'nvim_lsp_signature_help' },
                        { name = 'buffer' },
                        { name = 'path' },
                        { name = 'cmdline' },
                        { name = 'copilot' },
                    }),
                    mapping = {
                        ['<CR>'] = cmp.mapping(function(fallback)
                            if cmp.visible() and cmp.get_selected_entry() then
                                cmp.confirm({ select = false })
                            else
                                fallback()
                            end
                        end, { 'i', 's' }),
                        ['<C-k>'] = cmp.mapping.select_prev_item(),
                        ['<C-p>'] = cmp.mapping.select_prev_item(),
                        ['<C-j>'] = cmp.mapping.select_next_item(),
                        ['<C-n>'] = cmp.mapping.select_next_item(),
                    },
                }

                cmp.setup.cmdline('/', {
                    mapping = cmp.mapping.preset.cmdline(),
                    sources = {
                        { name = 'buffer' }
                    }
                })

                cmp.setup.cmdline(':', {
                    mapping = cmp.mapping.preset.cmdline(),
                    sources = cmp.config.sources({
                        { name = 'path' }
                    }, {
                        { name = 'cmdline' }
                    })
                })
            end
        },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },
        { 'neovim/nvim-lspconfig' },
        { 'L3MON4D3/LuaSnip' },
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            config = function()
                local lsp_zero = require('lsp-zero')
                lsp_zero.extend_lspconfig()
                lsp_zero.on_attach(function(client, bufnr)
                    -- see :help lsp-zero-keybindings
                    -- to learn the available actions
                    lsp_zero.default_keymaps({ buffer = bufnr })
                    vim.keymap.set('n', '<leader>f', function()
                        vim.lsp.buf.format { async = true }
                    end, opts)
                end)

                -- to learn how to use mason.nvim
                -- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
                require('mason').setup({})
                require('mason-lspconfig').setup({
                    ensure_installed = {},
                    handlers = {
                        function(server_name)
                            require('lspconfig')[server_name].setup({})
                        end,
                    },
                })
            end
        },
        {
            'tomotargz/kuro.vim',
            config = function()
                vim.cmd.colorscheme 'kuro'
            end,
        },
        {
            'nvim-telescope/telescope.nvim',
            keys = {
                { '<C-p>', '<cmd>Telescope find_files<cr>', mode = 'n' },
                { '<C-g>', '<cmd>Telescope live_grep<cr>',  mode = 'n' },
            },
            dependencies = { 'nvim-lua/plenary.nvim' },
            config = function()
                require("telescope").setup {
                    defaults = {
                        file_ignore_patterns = {
                            ".git/"
                        },
                    },
                    pickers = {
                        find_files = {
                            hidden = true
                        },
                        live_grep = {
                            additional_args = { "--hidden" }
                        },
                    },
                }
            end
        },
        { 'glidenote/memolist.vim' },
        { 'numToStr/Comment.nvim' },
        {
            'previm/previm',
            dependencies = { 'tyru/open-browser.vim' },
        },
        {
            "j-hui/fidget.nvim",
            opts = {
                -- options
            },
        },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "kuro" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})

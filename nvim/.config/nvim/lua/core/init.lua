-- view
vim.opt.winborder = 'rounded'
vim.opt.signcolumn = 'yes'
vim.opt.wrap = false
vim.opt.number = true
vim.opt.laststatus = 2
vim.opt.colorcolumn = '80'
vim.opt.scrolloff = 5
vim.opt.termguicolors = true

-- indent
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- search
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- temp files
vim.opt.swapfile = false

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- Keymap
vim.g.mapleader = ' '
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'Y', 'y$')
vim.keymap.set('n', '<leader>w', ':w<Return>')
vim.keymap.set('n', '<leader>h', ':noh<Return>')
vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format { async = true }
end)

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

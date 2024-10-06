-- BUFFERS
vim.api.nvim_set_keymap('n', '<leader>h', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', ':bp | bd#<CR>', { noremap = true, silent = true })

-- SPELLING
vim.api.nvim_set_keymap('n', '<leader>se', ':setlocal spell spelllang=en_us<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sr', ':setlocal spell spelllang=ro<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ss', ':setlocal spell spelllang=es<CR>', { noremap = true, silent = true })

-- NEO-TREE
vim.keymap.set('n', '<C-n>', ':Neotree toggle left<CR>')

-- CMP
local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
})

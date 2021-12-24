local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true}
  )
end

key_mapper('', '<leader>p', ':bprev<CR>')
key_mapper('', '<leader>n', ':bnext<CR>')
key_mapper('', '<leader>bd', ':bd<CR>')
key_mapper('', '<leader>q', ':wq<CR>')
key_mapper('', '<leader>w', ':w<CR>')
key_mapper('', '<leader>e', ':e<CR>')
key_mapper('', '<leader>r', ':LspRestart<CR>')
-- key_mapper('', '<leader>ss', ':lua GoImports()<CR>')

-- Try to use your arrows keys KEKW
key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')

-- GET THE HELL OUT OF INSERTMODE RIGHT NOW
key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'JK', '<ESC>')
key_mapper('i', 'jK', '<ESC>')

-- Manage your windows like a boss
key_mapper('n', '<leader>sv', ':vsplit<CR>')
key_mapper('n', '<leader>sh', ':split<CR>')
key_mapper('n', '<up>',    ':resize +2<CR>')
key_mapper('n', '<down>',  ':resize -2<CR>')
key_mapper('n', '<left>',  ':vertical resize -2<CR>')
key_mapper('n', '<right>', ':vertical resize +2<CR>')
key_mapper('n', '<leader>rr', '<C-w>r')
key_mapper('n', '<leader>=', '<C-w>=')
key_mapper('n', '<leader>l', ':wincmd l<CR>')
key_mapper('n', '<leader>k', ':wincmd k<CR>')
key_mapper('n', '<leader>j', ':wincmd j<CR>')
key_mapper('n', '<leader>h', ':wincmd h<CR')

-- coc
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif check_back_space() then
        return t "<Tab>"
    else
        vim.fn["coc#refresh"]()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    else
        return t "<C-h>"
    end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})


-- wijilers binds
key_mapper('n','wf', ':w')
key_mapper('i','wf', ':w')
key_mapper('n','qq',':q')

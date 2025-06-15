-- Set <Space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- telescope buffer overview
vim.keymap.set("n", "<leader>bs", "<cmd>Telescope buffers<cr>", { desc = "Telescope: Show buffers" })
-- close current buffer
vim.keymap.set("n", "<leader>bx", "<cmd>bd<cr>", {desc="Buffer: Closer"})

-- quick save
vim.keymap.set({'n', 'i'}, "<C-s>", "<cmd>w<cr>", {desc='Buffer: Save'})

-- Open file explorer (netrw) in the current directory
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc='Go back to filebrowser'})

-- Move selected lines down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc='Move selectetion down'})
-- Move selected lines up in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc='Move selection up'})

-- Run tests in the current file using plenary.nvim
vim.api.nvim_set_keymap("n", "<leader>tf", "<Plug>PlenaryTestFile", {
    noremap = false, silent = false, desc='Plenary: Run tests in current file' })

-- Join current and next line without moving the cursor
vim.keymap.set("n", "J", "mzJ`z", {desc='join current and next line without moving the cursor'})

-- Half-page scroll down and center the cursor
--vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc='Half page down'})
-- Half-page scroll up and center the cursor
--vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc='Half page up'})

-- Jump to next search result and center it with unfolded context
vim.keymap.set("n", "n", "nzzzv", {desc='Jump to next result and unfold'})
-- Jump to previous search result and center it with unfolded context
vim.keymap.set("n", "N", "Nzzzv", {desc='Jump to previous result and unfold'})

-- Re-indent around a paragraph text object and restore cursor position
vim.keymap.set("n", "=ap", "ma=ap'a", {desc='Re-indet around a paragraph text object and restore cursor'})

-- Restart LSP server (useful if it crashes or gets stuck)
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>", {desc='Restart lsp'})

-- Paste over selection without overwriting the default register
vim.keymap.set("x", "<leader>p", [["_dP]], {desc='Paste over selection'})

-- Yank into system clipboard (normal + visual modes)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], {desc='Yank to clipboard'})
-- Yank line into system clipboard (normal mode)
vim.keymap.set("n", "<leader>Y", [["+Y]], {desc='Yank line to clipboard'})

-- Delete without copying into default register (normal + visual modes)
vim.keymap.set({ "n", "v" }, "<leader>D", "\"_d", {desc='Delete without yank'})

-- Map <C-c> in insert mode to act like <Esc> (quicker escape)
vim.keymap.set("i", "<C-c>", "<Esc>", {desc='Exit'})

-- Disable Q (which normally enters Ex mode)
vim.keymap.set("n", "Q", "<nop>")

-- Open tmux-sessionizer script in a new tmux window
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Open specific binary or script in a new tmux window
--vim.keymap.set("n", "<M-o>", function()
--    vim.cmd [[ silent !tmux new-window /home/theprimeagen/.local/bin/opencode-client ]]
--end)

-- Format the current buffer using "conform.nvim"
vim.keymap.set("n", "<leader>f", function()
    require("conform").format({ bufnr = 0 })
end, {desc='Conform: Format buffer'})

-- Quickfix list navigation with centering
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", {desc='Quickfix list: Next'})
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", {desc='Quickfix list: Previous'})
-- Location list navigation with centering
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", {desc='Location list: Next'})
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", {desc='Location list: Previous'})

-- Search and replace word under cursor across the file, with case-insensitive global replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    {desc='Search and Replace word under cursor accros file'})

-- Make the current file executable
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true, desc='Make executable' })


-- Source (reload) the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, {desc='Reload file'})


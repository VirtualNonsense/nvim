-- Disable GUI cursor styles; use the default block cursor
vim.opt.guicursor = ""

-- Enable absolute line numbers
vim.opt.nu = true
-- Enable relative line numbers (relative to the current cursor line)
vim.opt.relativenumber = true

-- Set number of spaces a <Tab> character counts for
vim.opt.tabstop = 4
-- Number of spaces inserted when pressing <Tab> in insert mode
vim.opt.softtabstop = 4
-- Number of spaces used for each step of (auto)indent
vim.opt.shiftwidth = 4
-- Use spaces instead of tab characters
vim.opt.expandtab = true

-- Enable smart indentation based on syntax/context
vim.opt.smartindent = true

-- Disable line wrapping (long lines will not wrap to the next line)
vim.opt.wrap = false

-- Disable swap files (no .swp files)
vim.opt.swapfile = false
-- Disable backup files
vim.opt.backup = false
-- Set custom undo directory (persistent undo history)
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Enable persistent undo
vim.opt.undofile = true

-- Do not highlight all search matches
vim.opt.hlsearch = false
-- Highlight matches while typing a search query
vim.opt.incsearch = true

-- Enable true color support in terminal
vim.opt.termguicolors = true

-- Keep 8 lines visible above and below the cursor when scrolling
vim.opt.scrolloff = 8
-- Always show the sign column (e.g., for GitGutter, diagnostics)
vim.opt.signcolumn = "yes"
-- Treat '@' characters as part of file names (e.g., in imports)
vim.opt.isfname:append("@-@")

-- Lower the delay (in ms) before triggering events like CursorHold
vim.opt.updatetime = 50

-- Show a vertical guideline at column 80 (useful for code style)
vim.opt.colorcolumn = "120"


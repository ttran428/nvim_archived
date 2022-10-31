local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = false,                         -- highlight all matches on previous search pattern if true
  incsearch = true,  -- highlights search strings. maybe use https://github.com/haya14busa/incsearch.vim?
  ignorecase = true,                       -- ignore case in search patterns
  pumheight = 10,                          -- pop up menu height
  showmode = true,                         -- see things like -- INSERT -- anymore
  showtabline = 4,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 4 spaces for a tab
  softtabstop=4,
  expandtab = true,
  cursorline = true,                       -- highlight the current line
  nu = true,  -- show current line number
  relativenumber = true,                  -- set relative numbered lines
  -- numberwidth = 4,                         -- set number column width to 4

  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = true,                            -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
  -- sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  hidden = true,
  errorbells = false,
}

vim.opt.shortmess:append "c" -- removes nonsense text. see more https://stackoverflow.com/questions/19580157/to-hide-user-defined-completion-message-at-vim

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l" -- wraps to the next line. might break plugs? https://stackoverflow.com/questions/2574027/automatically-go-to-next-line-in-vim
vim.cmd [[set iskeyword+=-]]



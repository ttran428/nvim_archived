# nvim
I'm learning vim.

# Installation
- run `git clone https://github.com/ttran428/nvim.git ~/.config/nvim`
- open up nvim to download all of the plugins
- run `:TSUpdate` in nvim to get rid of treesitter issues
- figure out how to install dev icons
## Commands

### Pure vim commands
Ted commands.
- jump back: `<c-o>`
- jump forward: `<c-i>`
- insert line below; i-mode: `o`
- insert line above; i-mode: `O`
- insert line below; n-mode: `<leader>o`
- insert line above, n-mode: `<leader>O`
- page down: <c-f>
- page up: <c-b>
- page half down: `<c-d>`
- page half up: `<c-u>`
- indent a block: highlight in visual mode (shift+v), then `>`
- split screen vertically: `<c-w>v`
- split screen horizontally `<c-w>S`

Basic Vim Movements https://www.youtube.com/watch?v=H3o4l4GVLW0
- left/down/up/right: `hjkl`
- word forward: `w`
- word back: `b`
- last letter of current word: `e`
- end of line: `$`
- beginning of line: `^`
- yank: `y`
	- yank line: `yy`
	- yank word: `yw`
	- yank word backward: `yb`
    - yank the current word: `yiw`
    - yank the current WORD: `yiW`
        - WORDs are only separated by whitespace, whereas words can be separated by punctuation
- paste one line below: `p`
- undo: `u`
- delete: `d`
	- delete line: `dd`
	- delete word: `dw`
	- delete word backward: `db`
	- delete current line and one line down: `dj`

Change Modes
- visual line mode: `shift-v`
	- can use arrow keys to highlight lines
- visual mode: `v`
	- same as visual line, but with individual text
- insert mode: before letter `i`
	- lets you edit text
- insert mode: before letter `a`
- normal mode: `<c-c>`
- exit insert mode: `<esc>`

Normal Mode
- save file: `:w`
- exit file: `:q`

### Telescope
Fuzzy finder to look for files and grep.
- find_files: `<leader>f`
- live_grep:  `<c-t>`
- lsp_references: TODO
- close telescope: `<c-c>`

### nvim-tree
- toggle file explorer: `<leader>e`
- change between file explorer and text: `<c-h/l>`
	- these are normal ways to go between buffers
- add file: `a`
- rename file: `r`
- delete file: `d`
- open directory: `<cr>`
- close directory: `backspace`

### leap
- goto search: `s<char><char>`

### vim-surround (TODO)
how to put in brackets.

### LSP
- goto definition: TODO



## Resources
- config heavily inspired by https://github.com/LunarVim/Neovim-from-scratch/tree/master
- to actually learn vim https://www.youtube.com/watch?v=H3o4l4GVLW0 (series is now unlisted)
- see [awesome neovim](https://github.com/rockerBOO/awesome-neovim) for good neovim plugins
- see [vim awesome](https://vimawesome.com/) for good vim plugins. Most have a version written in lua for neovim though.
- see  [how to do 90% of what plugihns do with just vim](https://www.youtube.com/watch?v=XA2WjJbmmoM) for vim basics as well

## Todo
- add icons
  - lsp setup icons: 1732, 2117 https://www.youtube.com/watch?v=6F3ONwrCxMg&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&index=8
- fix lsp
- nvim spectre? search and replace https://github.com/nvim-pack/nvim-spectre
- bufferline? https://github.com/akinsho/bufferline.nvim or https://github.com/romgrk/barbar.nvim
- comment? https://github.com/numToStr/Comment.nvim

## Things you need to install
- `brew install ripgrep`




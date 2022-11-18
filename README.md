# nvim
I'm learning vim.

# Installation
- run `git clone https://github.com/ttran428/nvim.git ~/.config/nvim`
- open up nvim to download all of the plugins
- run `:TSUpdate` in nvim to get rid of treesitter issues
- figure out how to install dev icons

## Videos to learn vim
Basic Vim Movements https://www.youtube.com/watch?v=H3o4l4GVLW0
Vim as your Editor pt 2 https://www.youtube.com/watch?v=5JGVtttuDQA
Foundation for Speed https://www.youtube.com/watch?v=gSHf_b6AWKc

## Commands

### Change Mode
- visual line mode: `shift-v`
	- can use arrow keys to highlight lines
- visual mode: `v`
	- same as visual line, but with individual text
- normal mode: `<c-c>`
- exit insert mode: `<esc>`

#### Normal Mode
- save file: `:w`
- exit file: `:q`

#### Insert Mode
- `o`: insert line below
- `O`: insert line above 
- `i`: insert before cursor
- `a`: insert after cursor
- `I`: insert beginning of line
- `A`: insert end of line

- insert line below; n-mode: `<leader>o`
- insert line above, n-mode: `<leader>O`

### Motions
- left/down/up/right: `hjkl`
- word forward: `w`
- word back: `b`
- last letter of current word: `e`
- end of line: `$`
- beginning of first character in line: `_` or `^`
- beginning of line: `0`

### Objects
- `W`: WORDs are only separated by whitespace 
- `w`words can be separated by punctuation


### Commands
- yank: `y`
	- yank line: `yy`
	- yank word: `yw`
	- yank word backward: `yb`
    - yank the current word: `yiw`
    - yank the current WORD: `yiW`
    - yank to the next <char>: `yf<char>`
        - WORDs are only separated by whitespace, whereas words can be separated by punctuation
- paste one line below: `p`
- paste one line above: `P`
- undo: `u`
- delete: `d`
	- delete line: `dd`
	- delete word: `dw`
	- delete word backward: `db`
	- delete current line and one line down: `dj`
    - delete from character to end of line a: `d$`
    - delete to the next <char>: `df<char>`
- replace in file all instances of `foo` with `bar`: `:%s/foo/bar/g` or `:%s/foo/bar/cg` to confirm every change
- `r<char>`: replace current character with <char>
- jump to
    - jump to next occurence of word you are on: `*`
    - jump to previous occurence of word you are on: `#`
    - jump to next <char>: `f<char>`
    - jump to but not on next <char>: `t<char>`
        - go back with `,`, forward with `;` (note that `;` is disabled on my version of nvim)
    - jump to previous <char>: `F<char>`
    - jump to but not on previous <char>: `T<char>`
    - jump back: `<c-o>`
    - jump forward: `<c-i>`


### Miscellaneous 
- page down: <c-f>
- page up: <c-b>
- page half down: `<c-d>`
- page half up: `<c-u>`
- indent a block: highlight in visual mode (shift+v), then `>`
    - unindent a block: `<`
- split screen vertically: `<c-w>v`
- split screen horizontally `<c-w>S`
- copy to clipboard with `*`
 search: `/<text>` to search for text
    - `n` to go to next, `N` to go back


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

### comment 
- add comments: `[count]gcc`
### LSP
- goto definition: TODO



## Resources
- config heavily inspired by https://github.com/LunarVim/Neovim-from-scratch/tree/master
- to actually learn vim https://www.youtube.com/watch?v=H3o4l4GVLW0 (series is now unlisted)
- see [awesome neovim](https://github.com/rockerBOO/awesome-neovim) for good neovim plugins
- see [vim awesome](https://vimawesome.com/) for good vim plugins. Most have a version written in lua for neovim though.
- see  [how to do 90% of what plugins do with just vim](https://www.youtube.com/watch?v=XA2WjJbmmoM) for vim basics as well

## Todo
- nvim spectre? search and replace https://github.com/nvim-pack/nvim-spectre
- bufferline? https://github.com/akinsho/bufferline.nvim or https://github.com/romgrk/barbar.nvim
- configure lsp to not show errors on imports
- configure lsp to have good defaults for lsp keymaps https://github.com/neovim/nvim-lspconfig#suggested-configuration

## Things you need to install
- `brew install ripgrep`
- install nodejs (needed for some lsp servers like pyright) https://nodejs.org/en/download/




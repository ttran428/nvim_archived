-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup { 
      disable_netrw = true,
    } 


-- autocloses if buffer is the last window open https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeClose", {clear = true}),
  pattern = "NvimTree_*",
  callback = function()
    local layout = vim.api.nvim_call_function("winlayout", {})
    if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then vim.cmd("confirm quit") end
  end
})

-- opens tree ALWAYS on startup https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup. This is modified to use both open for files and open for directories.

local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
      -- buffer is a real file on the disk
      local real_file = vim.fn.filereadable(data.file) == 1
      -- buffer is a [No Name]
      local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

      if not real_file and not no_name then
        return
      end
      -- open the tree, find the file but don't focus it
      require("nvim-tree.api").tree.toggle({ focus = false, find_file = true, })
    return
  end

  -- create a new, empty buffer
  vim.cmd.enew()

  -- wipe the directory buffer
  vim.cmd.bw(data.buf)

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.toggle({ focus = false })
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })



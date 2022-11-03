-- taken from https://github.com/Alexis12119/nvim-config/blob/master/lua/user/core/utils.lua#L3-L21 which should reload the config supposedly
function _G.recompile()
  if vim.bo.buftype == "" then
    if vim.fn.exists ":LspStop" ~= 0 then
      vim.cmd "LspStop"
    end

    for name, _ in pairs(package.loaded) do
      if name:match "^user" then
        package.loaded[name] = nil
      end
    end

    dofile(vim.env.MYVIMRC)
    vim.cmd "PackerCompile"
    vim.notify("Wait for Compile Done", vim.log.levels.INFO)
  else
    vim.notify("Not available in this window/buffer", vim.log.levels.INFO)
  end
end

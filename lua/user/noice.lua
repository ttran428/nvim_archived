local status_ok, noice = pcall(require, "noice")
if not status_ok then
    vim.notify("noice is not installed.")
    return
end

noice.setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  messages = {
      view = "mini"
  },
  errors = {
      view = "mini"
  },
  notify = {
      view = "mini"
  },
  message = {
      view = "mini"
  }
})

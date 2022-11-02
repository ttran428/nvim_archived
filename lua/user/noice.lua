local status_ok, noice = pcall(require, "noice")
if not status_ok then
    vim.notify("noice is not installed.")
    return
end

noice.setup()

local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
	vim.notify("neoscroll is not installed.")
    return
end

neoscroll.setup({
    performance = true
})

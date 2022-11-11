
local status_ok, Comment = pcall(require, "Comment")
if not status_ok then
    vim.notify("comment is not installed.")
    return
end

Comment.setup()

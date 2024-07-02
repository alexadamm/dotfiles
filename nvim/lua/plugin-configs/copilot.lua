local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup {
  panel = {
    keymap = {
      jump_next = "<c-j>",
      jump_prev = "<c-k>",
      accept = "<c-l>",
      refresh = "r",
      open = "<M-CR>",
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = "<c-l>",
      next = "<c-j>",
      prev = "<c-k>",
      dismiss = "<c-h>",
    },
  },
  filetypes = {
    yaml = true,
    markdown = true,
    help = true,
    gitcommit = true,
    gitrebase = true,
    hgcommit = true,
    svn = true,
    cvs = true,
    ["."] = true,
  },
}

local opts = { noremap = true, silent = true }

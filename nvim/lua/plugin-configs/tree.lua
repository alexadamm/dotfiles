-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'H', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))

  vim.api.nvim_buf_del_keymap(bufnr, 'n', '<C-e>')

  vim.api.nvim_set_keymap('n', '<C-e>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close Directory")
  vim.keymap.set("n", "v", api.node.open.vertical, opts "Open: Vertical Split")

  local function git_action(action)
    return function()
      local node = api.tree.get_node_under_cursor()
      local path = node and node.absolute_path or nil
      if path then
        vim.cmd("silent !git " .. action .. " " .. path)
        api.git.reload()
      end
    end
  end

  vim.keymap.set("n", "s", function()
    git_action("add")()
  end, opts "Git Stage")

  vim.keymap.set("n", "S", function()
    git_action("reset")()
  end, opts "Git Unstage")

end


require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  on_attach = my_on_attach,
})

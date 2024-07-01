local function requireAll()
  -- get the absolute path of the current file's directory
  local config_dir = vim.fn.fnamemodify(debug.getinfo(1, 'S').source:sub(2), ':p:h')

  -- find all Lua files in the directory
  local files = vim.fn.globpath(config_dir, '*.lua', false, true)

  for _, file in ipairs(files) do
    if not file:match('init%.lua$') then
      -- convert file path to module path
      local module = file:sub(#config_dir + 2, -5)
      local status_ok, _ = pcall(require, 'plugin-configs.' .. module)
      if not status_ok then
        vim.api.nvim_echo({{"Failed to load: " .. 'plugin-configs.' .. module, "WarningMsg"}}, true, {})
      end
    end
  end
end

requireAll()

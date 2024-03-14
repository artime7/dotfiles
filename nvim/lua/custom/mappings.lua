---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
  },
}

-- more keybinds!

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader><Tab>"] = {"<cmd> NvimTreeToggle <CR>", "Toggle nvimtree"},
  },
}

return M

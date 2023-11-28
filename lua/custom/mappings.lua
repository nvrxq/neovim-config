---@type MappingsTable
local M = {}

M.general = {
  i = {
    -- save
    ["<C-s>"] = { "<ESC><cmd> w <CR>", "Save file" },
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>de"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate the debugger",
    },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap_python").test_method()
      end,
    },
  },
}

M.tabufline = {

  i = {

    ["<C-x>"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
  n = {

    ["<C-x>"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

M.nvimtree = {

  n = {
    -- toggle
    ["<F1>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}
-- more keybinds!

return M

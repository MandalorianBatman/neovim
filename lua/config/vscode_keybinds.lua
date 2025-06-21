-- Only load when in VSCode
if not vim.g.vscode then return end

local keymap = vim.keymap.set
local vscode = require("vscode")

-- Helpers
local function vs_cmd(id)
  return "<cmd>lua require('vscode').call('"..id.."')<CR>"
end

-- Telescope-like mappings (VSCode Quick Open & Search)
keymap("n", "<leader>tf", vs_cmd("workbench.action.quickOpen"), { desc="Find Files" })
keymap("n", "<leader>tg", vs_cmd("workbench.action.findInFiles"), { desc="Live Grep" })
-- Telescope buffers/workspace symbols aren’t directly supported:
-- keymap("n", "<leader>tb", ..., { desc="Buffers" })
-- keymap("n", "<leader>th", ..., { desc="Help Tags" })

-- Snacks.picker mappings → use VSCode Quick Pick or other commands
-- keymap("n", "<leader><space>", vs_cmd("workbench.action.quickOpen"), { desc="Smart Find Files" })
-- keymap("n", "<leader>/", vs_cmd("workbench.action.findInFiles"), { desc="Grep" })
-- Many specialized snacks.picker views don’t have a VSCode equivalent:
-- keymap("n", "<leader>:", ...)
-- keymap("n", "<leader>n", ...)
-- keymap("n", "<leader>e", ...)
-- keymap("n", "<leader>fc", ...)
-- keymap("n", "<leader>fg", ...)
-- keymap("n", "<leader>fp", ...)
-- keymap("n", "<leader>fr", ...)
-- keymap("n", "<leader>gb", ...)
-- keymap("n", "<leader>gl", ...)
-- keymap("n", "<leader>gL", ...)
-- keymap("n", "<leader>gs", vs_cmd("git.showAll"), { desc="Git Status" })
-- keymap("n", "<leader>gS", ...)
-- keymap("n", "<leader>gd", ...)
-- keymap("n", "<leader>gf", ...)
-- keymap("n", "<leader>sb", vs_cmd("editor.action.quickOpenPreviousEditor"), { desc="Buffer Lines" })
-- keymap("n", "<leader>sg", vs_cmd("workbench.action.findInFiles"), { desc="Grep" })
-- keymap("n", "<leader>sw", ...)
-- keymap("n", '<leader>s"', ...)
-- keymap("n", '<leader>s/', ...)
-- keymap("n", "<leader>sa", ...)
-- keymap("n", "<leader>sc", ...)
keymap("n", "<leader>sC", vs_cmd("workbench.action.showCommands"), { desc="Commands" })
keymap("n", "<leader>sd", vs_cmd("workbench.actions.view.problems"), { desc="Diagnostics" })
-- keymap("n", "<leader>sD", ...)
-- keymap("n", "<leader>sh", vs_cmd("workbench.action.showCommands"), { desc="Help Pages" })
-- keymap("n", "<leader>sH", ...)
-- keymap("n", "<leader>sk", ...)
-- keymap("n", "<leader>sl", ...)
-- keymap("n", "<leader>sm", ...)
-- keymap("n", "<leader>sM", ...)
-- keymap("n", "<leader>sp", ...)
-- keymap("n", "<leader>sq", ...)
-- keymap("n", "<leader>sR", vs_cmd("workbench.action.quickOpenPreviousEditor"), { desc="Resume" })
-- keymap("n", "<leader>su", ...)
-- keymap("n", "<leader>uC", vs_cmd("workbench.action.selectTheme"), { desc="Choose Color Theme" })

-- LSP pickers → use built‑in go to commands
keymap("n", "gd", vs_cmd("editor.action.revealDefinition"), { desc="Goto Definition" })
keymap("n", "gD", vs_cmd("editor.action.goToDeclaration"), { desc="Goto Declaration" })
keymap("n", "gr", vs_cmd("editor.action.goToReferences"), { desc="References" })
keymap("n", "gI", vs_cmd("editor.action.goToImplementation"), { desc="Goto Implementation" })
keymap("n", "gy", vs_cmd("editor.action.goToTypeDefinition"), { desc="Goto Type Definition" })
keymap("n", "<leader>ss", vs_cmd("workbench.action.gotoSymbol"), { desc="LSP Symbols" })
keymap("n", "<leader>sS", vs_cmd("workbench.action.showAllSymbols"), { desc="Workspace Symbols" })

-- Other snacks features mapped to VSCode
keymap("n", "<leader>z", vs_cmd("workbench.action.toggleZenMode"), { desc="Toggle Zen Mode" })
-- Zoom not in VSCode by default
-- keymap("n", "<leader>Z", ...)
-- keymap("n", "<leader>.", vs_cmd("workbench.action.openEditorAtIndex1"), { desc="Toggle Scratch Buffer" })
-- Selecting scratch not supported
-- keymap("n", "<leader>S", ...)
keymap("n", "<leader>n", vs_cmd("notifications.showList"), { desc="Notification History" })
keymap("n", "<leader>bd", vs_cmd("workbench.action.closeActiveEditor"), { desc="Delete Buffer" })
keymap("n", "<leader>cR", vs_cmd("renameFile"), { desc="Rename File" })
-- gitbrowse & lazygit unsupported
-- keymap("n", "<leader>gB", ...)
-- keymap("n", "<leader>gg", ...)
keymap("n", "<leader>un", vs_cmd("notifications.clearAll"), { desc="Dismiss All Notifications" })
-- Terminal toggle
keymap("n", "<c-j>", vs_cmd("workbench.action.terminal.toggleTerminal"), { desc="Toggle Terminal" })
-- Which-key ignore
keymap("n", "<c-_>", vs_cmd("workbench.action.terminal.toggleTerminal"), { desc="which_key_ignore" })
-- Word jumps unsupported
-- keymap({"n","t"}, "]]", ...)
-- keymap({"n","t"}, "[[", ...)

-- Neotree mapping to explorer reveal
keymap("n", "\\", vs_cmd("workbench.files.action.showActiveFileInExplorer"), { desc="Explorer reveal", silent=true })

-- Window mapping like close via \
-- not directly needed in VSCode

-- Filtered items/hide by name handled by explorer settings


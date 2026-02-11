if not vim.g.vscode then return end

local vscode = require("vscode")
local function action(cmd)
  return function() vscode.action(cmd) end
end

-- File operations (<leader>f)
vim.keymap.set("n", "<leader>ff", action("workbench.action.quickOpen"), { desc = "Find Files" })
vim.keymap.set("n", "<leader>fr", action("workbench.action.openRecent"), { desc = "Recent" })
vim.keymap.set("n", "<leader>fe", action("workbench.view.explorer"), { desc = "Explorer" })
vim.keymap.set("n", "<leader>ft", action("workbench.action.terminal.toggleTerminal"), { desc = "Terminal" })

-- Search (<leader>s)
vim.keymap.set("n", "<leader>/", action("workbench.action.findInFiles"), { desc = "Grep" })
vim.keymap.set("n", "<leader>sg", action("workbench.action.findInFiles"), { desc = "Grep" })
vim.keymap.set("n", "<leader>ss", action("workbench.action.gotoSymbol"), { desc = "Symbol" })
vim.keymap.set("n", "<leader>sS", action("workbench.action.showAllSymbols"), { desc = "Workspace Symbols" })

-- Code actions (<leader>c)
vim.keymap.set("n", "<leader>ca", action("editor.action.quickFix"), { desc = "Code Actions" })
vim.keymap.set("n", "<leader>cf", action("editor.action.formatDocument"), { desc = "Format" })
vim.keymap.set("n", "<leader>cr", action("editor.action.rename"), { desc = "Rename" })
vim.keymap.set("n", "<leader>co", action("editor.action.organizeImports"), { desc = "Organize Imports" })

-- Git (<leader>g)
vim.keymap.set("n", "<leader>gg", action("workbench.view.scm"), { desc = "Git Status" })
vim.keymap.set("n", "<leader>gb", action("gitlens.toggleLineBlame"), { desc = "Blame" })
vim.keymap.set("n", "<leader>gd", action("git.openChange"), { desc = "Diff" })
vim.keymap.set("n", "]h", action("workbench.action.editor.nextChange"), { desc = "Next Hunk" })
vim.keymap.set("n", "[h", action("workbench.action.editor.previousChange"), { desc = "Prev Hunk" })
vim.keymap.set("n", "<leader>ghs", action("git.stageSelectedRanges"), { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>ghr", action("git.revertSelectedRanges"), { desc = "Reset Hunk" })

-- Buffer navigation
vim.keymap.set("n", "<S-h>", action("workbench.action.previousEditor"), { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", action("workbench.action.nextEditor"), { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bd", action("workbench.action.closeActiveEditor"), { desc = "Close" })
vim.keymap.set("n", "<leader>bo", action("workbench.action.closeOtherEditors"), { desc = "Close Others" })
vim.keymap.set("n", "<leader>bb", action("workbench.action.showAllEditorsByMostRecentlyUsed"), { desc = "Switch Buffer" })
vim.keymap.set("n", "<leader>,", action("workbench.action.showAllEditorsByMostRecentlyUsed"), { desc = "Switch Buffer" })
vim.keymap.set("n", "<leader>fb", action("workbench.action.showAllEditorsByMostRecentlyUsed"), { desc = "Buffers" })

-- Window navigation
vim.keymap.set("n", "<C-h>", action("workbench.action.focusLeftGroup"), { desc = "Left" })
vim.keymap.set("n", "<C-j>", action("workbench.action.focusBelowGroup"), { desc = "Below" })
vim.keymap.set("n", "<C-k>", action("workbench.action.focusAboveGroup"), { desc = "Above" })
vim.keymap.set("n", "<C-l>", action("workbench.action.focusRightGroup"), { desc = "Right" })
vim.keymap.set("n", "<leader>-", action("workbench.action.splitEditorDown"), { desc = "Split Below" })
vim.keymap.set("n", "<leader>|", action("workbench.action.splitEditorRight"), { desc = "Split Right" })

-- Diagnostics
vim.keymap.set("n", "<leader>xx", action("workbench.actions.view.problems"), { desc = "Problems" })
vim.keymap.set("n", "]d", action("editor.action.marker.next"), { desc = "Next Diagnostic" })
vim.keymap.set("n", "[d", action("editor.action.marker.prev"), { desc = "Prev Diagnostic" })

-- Tests (<leader>t) - Your custom keybindings
vim.keymap.set("n", "<leader>tt", action("testing.runAtCursor"), { desc = "Run Test" })
vim.keymap.set("n", "<leader>tf", action("testing.runCurrentFile"), { desc = "Run File" })
vim.keymap.set("n", "<leader>tl", action("testing.reRunLastRun"), { desc = "Run Last" })
vim.keymap.set("n", "<leader>tL", action("testing.debugLastRun"), { desc = "Debug Last" })
vim.keymap.set("n", "<leader>tw", action("testing.toggleWatching"), { desc = "Watch" })
vim.keymap.set("n", "<leader>to", action("testing.showMostRecentOutput"), { desc = "Output" })

-- Debug (<leader>d) - DAP equivalents
vim.keymap.set("n", "<leader>db", action("editor.debug.action.toggleBreakpoint"), { desc = "Breakpoint" })
vim.keymap.set("n", "<leader>dc", action("workbench.action.debug.continue"), { desc = "Continue" })
vim.keymap.set("n", "<leader>di", action("workbench.action.debug.stepInto"), { desc = "Step Into" })
vim.keymap.set("n", "<leader>do", action("workbench.action.debug.stepOut"), { desc = "Step Out" })
vim.keymap.set("n", "<leader>dn", action("workbench.action.debug.stepOver"), { desc = "Step Over" })

-- UI toggles
vim.keymap.set("n", "<leader>ub", action("workbench.action.toggleSidebarVisibility"), { desc = "Sidebar" })
vim.keymap.set("n", "<leader>uz", action("workbench.action.toggleZenMode"), { desc = "Zen" })

-- Terminal
vim.keymap.set("n", "<C-/>", action("workbench.action.terminal.toggleTerminal"), { desc = "Terminal" })

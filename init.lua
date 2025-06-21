require("config.lazy")
require("config.option")
if not vim.g.vscode then 
    require("config.keybinds")
else 
    require("config.vscode_keybinds")
end


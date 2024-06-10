local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

config.hyperlink_rules = wezterm.default_hyperlink_rules()
config.font = wezterm.font("GoMono Nerd Font Mono")
config.keys = {
        {
                key = "t",
                mods = "CTRL",
                action = act.SpawnTab("CurrentPaneDomain"),
        },
        { 
                key = "w",
                mods = "CTRL",
                action = wezterm.action.CloseCurrentTab({ confirm = true }),
        },
}

for i = 1, 8 do
        -- CTRL+ALT + number to activate that tab
        table.insert(config.keys, {
                key = tostring(i),
                mods = "CTRL",
                action = act.ActivateTab(i - 1),
        })
        -- F1 through F8 to activate that tab
        table.insert(config.keys, {
                key = "F" .. tostring(i),
                action = act.ActivateTab(i - 1),
        })
end

config.mouse_bindings = {
        {
                event = { Down = { streak = 1, button = "Right" } },
                mods = "NONE",
                action = wezterm.action_callback(function(window, pane)
                        local has_selection = window:get_selection_text_for_pane(pane) ~= ""
                        if has_selection then
                                window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
                                window:perform_action(act.ClearSelection, pane)
                        else
                                window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
                        end
                end),
        },
}

return config




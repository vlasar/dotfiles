local wezterm = require("wezterm")
local font = wezterm.font_with_fallback({
        { family = "Victor Mono", weight = "DemiBold", scale = 1 },
        { family = "Symbols Nerd Font Mono", scale = 0.75 },
})

function scheme_for_appearance(appearance)
        if appearance:find("Dark") then
                return "Catppuccin Mocha"
        else
                return "Catppuccin Latte"
        end
end

return {
        color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
        cursor_thickness = "300%",
        enable_scroll_bar = false,
        font = font,
        font_size = 18,
        hide_tab_bar_if_only_one_tab = true,
        window_background_opacity = 1,
        window_decorations = "RESIZE",
        window_padding = {
                top = 0,
                bottom = 0,
        },
  -- window_background_opacity = 1,
  -- macos_window_background_blur = 20
}

local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.automatically_reload_config = true

-- config.font = wezterm.font("CaskaydiaMono Nerd Font")
-- config.font = wezterm.font("PlemolJP Console NF")
-- config.font = wezterm.font("JetBrains Mono")
config.font = wezterm.font {
  family = "JetBrains Mono Nerd Font",
  harfbuzz_features = { "liga=0", "clig=0", "calt=0" },
}
config.font_size = 10.0

-- config.color_scheme = "Solarized Dark Higher Contrast"
config.color_scheme = "Solarized Dark (Gogh)"

config.keys = {
  { key = "h", mods = "ALT", action = wezterm.action.ActivateTabRelative(-1) },
  { key = "l", mods = "ALT", action = wezterm.action.ActivateTabRelative(1) },
}

config.bold_brightens_ansi_colors = true

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.colors = {
  tab_bar = {
    background = "none",
  },
}
config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false

config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'

config.set_environment_variables = {
  LANG = "en_US.UTF-8",
  LC_ALL = "en_US.UTF-8",
}

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false

local SOLID_LEFT_ARROW  = wezterm.nerdfonts.pl_left_hard_divider  -- 
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_right_hard_divider -- 

local BG = "#002b36"
local INACTIVE_BG = "#073642"
local ACTIVE_BG = "#586e75"
local HOVER_BG = "#0a4f5a"
local ACTIVE_FG = "#fdf6e3"
local INACTIVE_FG = "#93a1a1"

wezterm.on("format-tab-title", function(tab, tabs, panes, cfg, hover, max_width)
  local pane = tab.active_pane
  local title = pane.title or ""
  title = wezterm.truncate_right(title, max_width - 6)

  local bg = INACTIVE_BG
  local fg = INACTIVE_FG
  if tab.is_active then
    bg = ACTIVE_BG
    fg = ACTIVE_FG
  elseif hover then
    bg = HOVER_BG
    fg = ACTIVE_FG
  end

  local left = "  "
  local right = "  "

  return {
    { Background = { Color = bg } },
    { Foreground = { Color = fg } },
    { Attribute = { Intensity = tab.is_active and "Bold" or "Normal" } },
    { Text = left .. title .. right },

    { Background = { Color = BG } },
    { Foreground = { Color = bg } },
    { Text = SOLID_LEFT_ARROW },
  }
end)

config.colors = config.colors or {}
config.colors.tab_bar = {
  background = BG,
}

return config


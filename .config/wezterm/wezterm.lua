local wezterm = require 'wezterm';

return {
  font = wezterm.font("HackGen"),
  font_size = 13.0,
  color_scheme = "nord",
  adjust_window_size_when_changing_font_size = false,
  use_ime = true,
  tab_bar_at_bottom = true,
  colors = {
    tab_bar = {

      active_tab = {
        bg_color = "#88C0D0",
        fg_color = "#2E3440",
        intensity = "Normal",
        underline = "None",
        italic = false,
        strikethrough = false,
      },

      inactive_tab = {
        bg_color = "#3B4252",
        fg_color = "#c6c8d1",
        intensity = "Normal",
        underline = "None",
        italic = false,
        strikethrough = false,
      },

      inactive_tab_hover = {
        bg_color = "#3B4252",
        fg_color = "#c6c8d1",
        intensity = "Normal",
        underline = "None",
        italic = true,
        strikethrough = false,
      },
    },
  },

  keys = {
    {key="c", mods="ALT", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
    {key="h", mods="ALT", action=wezterm.action({ActivateTabRelative=-1})},
  	{key="l", mods="ALT", action=wezterm.action({ActivateTabRelative=1})},
    {key="v", mods="ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="s", mods="ALT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="h", mods="CTRL", action=wezterm.action({ActivatePaneDirection="Left"})},
  	{key="l", mods="CTRL", action=wezterm.action({ActivatePaneDirection="Right"})},
  	{key="k", mods="CTRL", action=wezterm.action({ActivatePaneDirection="Up"})},
  	{key="j", mods="CTRL", action=wezterm.action({ActivatePaneDirection="Down"})},
    {key="s", mods="CTRL", action="ShowTabNavigator"},
  }
} 

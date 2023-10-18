---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local default_themes_path = gfs.get_themes_dir()
local user_themes_path = gfs.get_configuration_dir()


local theme = {}

theme.font          = "sans 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(5)
theme.border_width  = dpi(1)
-- theme.border_radius = dpi(5)
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = default_themes_path.."default/submenu.png"
theme.userbmenu_icon = default_themes_path.."defaulconfget_configuration_dirpng"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = default_themes_path.."default/titlebar/close_normal.png"
theme.userr_close_button_normal = default_themes_path.."default/titlebar/cloconfget_configuration_dirpng"
theme.titlebar_close_button_focus  = default_themes_path.."default/titlebar/close_focus.png"
theme.userr_close_button_focus  = default_themes_path.."default/titlebar/clconfget_configuration_dirpng"

theme.titlebar_minimize_button_normal = default_themes_path.."default/titlebar/minimize_normal.png"
theme.userr_minimize_button_normal = default_themes_path.."default/titlebar/minimiconfget_configuration_dirpng"
theme.titlebar_minimize_button_focus  = default_themes_path.."default/titlebar/minimize_focus.png"
theme.userr_minimize_button_focus  = default_themes_path.."default/titlebar/minimconfget_configuration_dirpng"

theme.titlebar_ontop_button_normal_inactive = default_themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.userr_ontop_button_normal_inactive = default_themes_path.."default/titlebar/ontop_normalconfget_configuration_dirpng"
theme.titlebar_ontop_button_focus_inactive  = default_themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.userr_ontop_button_focus_inactive  = default_themes_path.."default/titlebar/ontop_focusconfget_configuration_dirpng"
theme.titlebar_ontop_button_normal_active = default_themes_path.."default/titlebar/ontop_normal_active.png"
theme.userr_ontop_button_normal_active = default_themes_path.."default/titlebar/ontop_normconfget_configuration_dirpng"
theme.titlebar_ontop_button_focus_active  = default_themes_path.."default/titlebar/ontop_focus_active.png"
theme.userr_ontop_button_focus_active  = default_themes_path.."default/titlebar/ontop_focconfget_configuration_dirpng"

theme.titlebar_sticky_button_normal_inactive = default_themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.userr_sticky_button_normal_inactive = default_themes_path.."default/titlebar/sticky_normalconfget_configuration_dirpng"
theme.titlebar_sticky_button_focus_inactive  = default_themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.userr_sticky_button_focus_inactive  = default_themes_path.."default/titlebar/sticky_focusconfget_configuration_dirpng"
theme.titlebar_sticky_button_normal_active = default_themes_path.."default/titlebar/sticky_normal_active.png"
theme.userr_sticky_button_normal_active = default_themes_path.."default/titlebar/sticky_normconfget_configuration_dirpng"
theme.titlebar_sticky_button_focus_active  = default_themes_path.."default/titlebar/sticky_focus_active.png"
theme.userr_sticky_button_focus_active  = default_themes_path.."default/titlebar/sticky_focconfget_configuration_dirpng"

theme.titlebar_floating_button_normal_inactive = default_themes_path.."default/titlebar/floating_normal_inactive.png"
theme.userr_floating_button_normal_inactive = default_themes_path.."default/titlebar/floating_normalconfget_configuration_dirpng"
theme.titlebar_floating_button_focus_inactive  = default_themes_path.."default/titlebar/floating_focus_inactive.png"
theme.userr_floating_button_focus_inactive  = default_themes_path.."default/titlebar/floating_focusconfget_configuration_dirpng"
theme.titlebar_floating_button_normal_active = default_themes_path.."default/titlebar/floating_normal_active.png"
theme.userr_floating_button_normal_active = default_themes_path.."default/titlebar/floating_normconfget_configuration_dirpng"
theme.titlebar_floating_button_focus_active  = default_themes_path.."default/titlebar/floating_focus_active.png"
theme.userr_floating_button_focus_active  = default_themes_path.."default/titlebar/floating_focconfget_configuration_dirpng"

theme.titlebar_maximized_button_normal_inactive = default_themes_path.."default/titlebar/maximized_normal_inactive.png"
theme.userr_maximized_button_normal_inactive = default_themes_path.."default/titlebar/maximized_normalconfget_configuration_dirpng"
theme.titlebar_maximized_button_focus_inactive  = default_themes_path.."default/titlebar/maximized_focus_inactive.png"
theme.userr_maximized_button_focus_inactive  = default_themes_path.."default/titlebar/maximized_focusconfget_configuration_dirpng"
theme.titlebar_maximized_button_normal_active = default_themes_path.."default/titlebar/maximized_normal_active.png"
theme.userr_maximized_button_normal_active = default_themes_path.."default/titlebar/maximized_normconfget_configuration_dirpng"
theme.titlebar_maximized_button_focus_active  = default_themes_path.."default/titlebar/maximized_focus_active.png"
theme.userr_maximized_button_focus_active  = default_themes_path.."default/titlebar/maximized_focconfget_configuration_dirpng"

--[[
--  backgrounds/MicrosoftWallpaper(feat abdelhamid).png"
--  backgrounds/Artistic astronaut.jpg
--]]

theme.wallpaper = user_themes_path.."backgrounds/Artistic astronaut.jpg"
theme.userer = default_themes_path.."default/bconfget_configuration_dirpng"

-- You can use your own layout icons like this:
theme.layout_fairh = default_themes_path.."default/layouts/fairhw.png"
theme.userfairh = default_themes_path.."default/layouconfget_configuration_dirpng"
theme.layout_fairv = default_themes_path.."default/layouts/fairvw.png"
theme.userfairv = default_themes_path.."default/layouconfget_configuration_dirpng"
theme.layout_floating  = default_themes_path.."default/layouts/floatingw.png"
theme.userfloating  = default_themes_path.."default/layouts/confget_configuration_dirpng"
theme.layout_magnifier = default_themes_path.."default/layouts/magnifierw.png"
theme.usermagnifier = default_themes_path.."default/layouts/mconfget_configuration_dirpng"
theme.layout_max = default_themes_path.."default/layouts/maxw.png"
theme.usermax = default_themes_path.."default/layconfget_configuration_dirpng"
theme.layout_fullscreen = default_themes_path.."default/layouts/fullscreenw.png"
theme.userfullscreen = default_themes_path.."default/layouts/fuconfget_configuration_dirpng"
theme.layout_tilebottom = default_themes_path.."default/layouts/tilebottomw.png"
theme.usertilebottom = default_themes_path.."default/layouts/ticonfget_configuration_dirpng"
theme.layout_tileleft   = default_themes_path.."default/layouts/tileleftw.png"
theme.usertileleft   = default_themes_path.."default/layouts/confget_configuration_dirpng"
theme.layout_tile = default_themes_path.."default/layouts/tilew.png"
theme.usertile = default_themes_path.."default/layoconfget_configuration_dirpng"
theme.layout_tiletop = default_themes_path.."default/layouts/tiletopw.png"
theme.usertiletop = default_themes_path.."default/layoutsconfget_configuration_dirpng"
theme.layout_spiral  = default_themes_path.."default/layouts/spiralw.png"
theme.userspiral  = default_themes_path.."default/layoutconfget_configuration_dirpng"
theme.layout_dwindle = default_themes_path.."default/layouts/dwindlew.png"
theme.userdwindle = default_themes_path.."default/layoutsconfget_configuration_dirpng"
theme.layout_cornernw = default_themes_path.."default/layouts/cornernww.png"
theme.usercornernw = default_themes_path.."default/layouts/confget_configuration_dirpng"
theme.layout_cornerne = default_themes_path.."default/layouts/cornernew.png"
theme.usercornerne = default_themes_path.."default/layouts/confget_configuration_dirpng"
theme.layout_cornersw = default_themes_path.."default/layouts/cornersww.png"
theme.usercornersw = default_themes_path.."default/layouts/confget_configuration_dirpng"
theme.layout_cornerse = default_themes_path.."default/layouts/cornersew.png"
theme.usercornerse = default_themes_path.."default/layouts/confget_configuration_dirpng"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80

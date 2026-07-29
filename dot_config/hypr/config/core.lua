-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function () 
    hl.exec_cmd("noctalia")
end)

--------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
  output = "eDP-1",
  mode = "1920x1080@144",
  position = "0x0",
  scale = 1,
})

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 9,
        border_size = 2,

        col = {
            active_border = {colors = {"rgba(739ab0ee)"}, },
            inactive_border = "rgba(00000000)",
        },
        resize_on_border = false,
        allow_tearing = true,
        layout = dwindle,
    },

    decoration = {
        rounding = 13,
        active_opacity = 1,
        inactive_opacity = 0.8,
        dim_special = 0.2,

        shadow = {
            enabled = false,
            range = 3,
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 3,
            ignore_opacity = false,
            xray = true,
        },
    },
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

hl.layer_rule({
  name = "noctalia",
  match = { namespace = "noctalia-background" },
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

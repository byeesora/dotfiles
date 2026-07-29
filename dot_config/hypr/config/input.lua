hl.config({
    input = {
        kb_layout  = "pt",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
        follow_mouse = 1,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        accel_profile = "flat",

        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.device({
    name        = "foca0001:00-2808:0106-touchpad",
    sensitivity = 0.7,
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

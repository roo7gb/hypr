-- hypr/modules/settings/env.lua

-- nvidia setup
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- hyprcursor (wayland cursor)
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "phinger-cursors-dark")

-- xcursor (x11(xwayland) cursor)
hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "phinger-cursors-dark")


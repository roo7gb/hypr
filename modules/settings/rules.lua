-- hypr/modules/settings/rules.lua

-- layer rules
hl.layer_rule({ match = { namespace = "quickshell-bar" }, blur = false })
hl.layer_rule({ match = { namespace = "quickshell-launcher" }, blur = false })
hl.layer_rule({ match = { namespace = "quickshell-notifications" }, blur = false })
hl.layer_rule({ match = { namespace = "quickshell-osd" }, blur = false })

hl.layer_rule({ match = { namespace = "quickshell-bar" }, blur_popups = false })
hl.layer_rule({ match = { namespace = "quickshell-launcher" }, blur_popups = false })
hl.layer_rule({ match = { namespace = "quickshell-notifications" }, blur_popups = false })
hl.layer_rule({ match = { namespace = "quickshell-osd" }, blur_popups = false })

hl.layer_rule({ match = { namespace = "quickshell-bar" }, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "quickshell-launcher" }, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "quickshell-notifications" }, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "quickshell-osd" }, ignore_alpha = 0.1 })

hl.layer_rule({ match = { namespace = "selection" }, no_anim = true })

-- window rules
hl.window_rule({ match = { class = "^(hyprpolkitagent)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol)$" }, float = true })
hl.window_rule({ match = { class = "^(nwg-look|qt5ct|mpv|zoom|Rofi|feh)$" }, float = true })
hl.window_rule({ match = { class = "^(Rofi|pavucontrol|blueman-manager)$" }, pin = true })


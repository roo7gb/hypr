-- hypr/modules/settings/rules.lua

-- layer rules
hl.layer_rule({ match = { namespace = "quickshell-bar" }, blur = true })
hl.layer_rule({ match = { namespace = "quickshell-launcher" }, blur = true })
hl.layer_rule({ match = { namespace = "quickshell-notifications" }, blur = true })
hl.layer_rule({ match = { namespace = "quickshell-osd" }, blur = true })

hl.layer_rule({ match = { namespace = "quickshell-bar" }, blur_popups = true })
hl.layer_rule({ match = { namespace = "quickshell-launcher" }, blur_popups = true })
hl.layer_rule({ match = { namespace = "quickshell-notifications" }, blur_popups = true })
hl.layer_rule({ match = { namespace = "quickshell-osd" }, blur_popups = true })

-- window rules
hl.window_rule({ match = { class = "^(hyprpolkitagent)$" }, float = true })
hl.window_rule({ match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol)$" }, float = true })
hl.window_rule({ match = { class = "^(nwg-look|qt5ct|mpv|zoom|Rofi|feh)$" }, float = true })
hl.window_rule({ match = { class = "^(Rofi|pavucontrol|blueman-manager)$" }, pin = true })


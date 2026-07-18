-- hypr/modules/startup.lua

hl.on("hyprland.start", function()
  -- bar, notif daemon, app launcher
  hl.exec_cmd("quickshell")
  -- start polkit
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  -- start wallpapers
  hl.exec_cmd("awww-daemon")
  -- lock on startup
  hl.exec_cmd("hyprlock")
end)


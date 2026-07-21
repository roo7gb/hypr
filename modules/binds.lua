-- hypr/modules/binds.lua

hl.config({
  binds = {
    workspace_back_and_forth = 1,
    allow_workspace_cycles = 1,
    pass_mouse_when_bound = 0,
  },
})

local mainMod = "SUPER"

-- WINDOW MANAGEMENT
--- fullscreen active window
hl.bind(
  mainMod .. " + F",
  hl.dsp.window.fullscreen({ action = "toggle" }),
  { description = "Toggle fullscreen for active window" }
)
--- close active window
hl.bind(
  mainMod .. " + Q",
  hl.dsp.window.close(),
  { description = "Close active window" }
)
--- kill active window
hl.bind(
  mainMod .. "+ SHIFT + Q",
  hl.dsp.window.kill(),
  { description = "Kill active window" }
)
--- float active window
hl.bind(
  mainMod .. " + Space",
  hl.dsp.window.float({ action = "toggle" }),
  { description = "Toggle float for active window" }
)
--- pin active WINDOW
hl.bind(
  mainMod .. " + CTRL + Space",
  hl.dsp.window.pin(),
  { description = "Pin active window" }
)

-- open apps
--- open terminal
hl.bind(
  mainMod .. " + RETURN",
  hl.dsp.exec_cmd("wezterm"),
  { description = "Open wezterm terminal emulator" }
)
--- open floating terminal
hl.bind(
  mainMod .. "+ CTRL + RETURN",
  hl.dsp.exec_cmd("[float] wezterm"),
  { description = "Open wezterm terminal emulator (floating)" }
)
--- open btop
hl.bind(
  mainMod .. " + P",
  hl.dsp.exec_cmd("wezterm start -- btop"),
  { description = "Open btop" }
)

-- bar / panels
--- open app launcher
hl.bind(
  mainMod .. " + SUPER_L",
  hl.dsp.exec_cmd("qs ipc call launcher toggle"),
  { description = "Open application launcher" }
)

-- screenshots
--- screenshot active window
hl.bind(
  mainMod .. " + SHIFT + S",
  hl.dsp.exec_cmd("hyprshot -m window active --clipboard-only"),
  { description = "Screenshot active window to clipboard" }
)
--- screenshot area
hl.bind(
  mainMod .. " + CTRL + SHIFT + S",
  hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"),
  { description = "Select an area to screenshot to clipboard" }
)

-- special workspace
--- move to special workspace
hl.bind(
  mainMod .. " + CTRL + S",
  hl.dsp.window.move({ workspace = "special" }),
  { description = "Move active window to special workspace" }
)
--- toggle special workspace
hl.bind(
  mainMod .. " + S",
  hl.dsp.workspace.toggle_special(),
  { description = "Toggle special workspace" }
)

-- volume
--- volume up
hl.bind(
  "ALT + F12",
  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"),
  {
    locked = true,
    repeating = true,
    description = "Increase volume by 5%"
  }
)
--- volume down
hl.bind(
  "ALT + F11",
  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
  {
    locked = true,
    repeating = true,
    description = "Decrease volume by 5%"
  }
)
--- volume up (audio keys)
hl.bind(
  "XF86AudioRaiseVolume",
  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"),
  {
    locked = true,
    repeating = true,
    description = "Increase volume by 5%"
  }
)
--- volume down (audio keys)
hl.bind(
  "XF86AudioRaiseVolume",
  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
  {
    locked = true,
    repeating = true,
    description = "Decrease volume by 5%"
  }
)
--- toggle mute (audio keys)
hl.bind(
  "XF86AudioMute",
  hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
  {
    locked = true,
    description = "Mute volume"
  }
)

-- system controls
--- lock screen
hl.bind(
  mainMod .. " + SHIFT + Escape",
  hl.dsp.exec_cmd("hyprlock"),
  { description = "Lock screen" }
)
--- suspend
hl.bind(
  mainMod .. " + CTRL + Escape",
  hl.dsp.exec_cmd("systemctl suspend"),
  { description = "Suspend" }
)
--- shutdown
hl.bind(
  mainMod .. " + CTRL + SHIFT + Escape",
  hl.dsp.exec_cmd("systemctl poweroff"),
  { description = "Shutdown" }
)

-- window resize
--- expand left
hl.bind(
  mainMod .. " + SHIFT + left",
  hl.dsp.window.resize({ x = -25, y = 0, relative = true }),
  {
    repeating = true,
    description = "Expand window left"
  }
)
--- expand right
hl.bind(
  mainMod .. " + SHIFT + right",
  hl.dsp.window.resize({ x = 25, y = 0, relative = true }),
  {
    repeating = true,
    description = "Expand window right"
  }
)
--- expand up
hl.bind(
  mainMod .. " + SHIFT + up",
  hl.dsp.window.resize({ x = 0, y = -25, relative = true }),
  {
    repeating = true,
    description = "Expand window up"
  }
)
--- expand window down
hl.bind(
  mainMod .. " + SHIFT + down",
  hl.dsp.window.resize({ x = 0, y = 25, relative = true }),
  {
    repeating = true,
    description = "Expand window down"
  }
)

-- window move
--- move left
hl.bind(
  mainMod .. " + CTRL + left",
  hl.dsp.window.move({ direction = "l" }),
  { description = "Move window left" }
)
--- move right
hl.bind(
  mainMod .. " + CTRL + right",
  hl.dsp.window.move({ direction = "r" }),
  { description = "Move window right" }
)
--- move up
hl.bind(
  mainMod .. " + CTRL + up",
  hl.dsp.window.move({ direction = "u" }),
  { description = "Move window up" }
)
--- move down
hl.bind(
  mainMod .. " + CTRL + down",
  hl.dsp.window.move({ direction = "d" }),
  { description = "Move window down" }
)

-- window focus
--- focus left
hl.bind(
  mainMod .. " + left",
  hl.dsp.focus({ direction = "left" }),
  { description = "Move focus left" }
)
--- focus right
hl.bind(
  mainMod .. " + right",
  hl.dsp.focus({ direction = "right" }),
  { description = "Move focus right" }
)
--- focus up
hl.bind(
  mainMod .. " + up",
  hl.dsp.focus({ direction = "up" }),
  { description = "Move focus up" }
)
--- focus down
hl.bind(
  mainMod .. " + down",
  hl.dsp.focus({ direction = "down" }),
  { description = "Move focus down" }
)

-- workspaces
for i = 1, 10 do
  local key = i % 10
  --- switch ws
  hl.bind(
    mainMod .. " + " .. key,
    hl.dsp.focus({ workspace = i }),
    { description = "Move to workspace " .. i }
  )
  --- move ws
  hl.bind(
    mainMod .. " + CTRL + " .. key,
    hl.dsp.window.move({ workspace = i }),
    { description = "Move active window to workspace " .. i }
  )
  --- silent move ws
  hl.bind(
    mainMod .. " + SHIFT + " .. key,
    hl.dsp.focus({ workspace = i, follow = false }),
    { description = "Silently move window to workspace " .. i }
  )
end

--- previous ws
hl.bind(
  mainMod .. " + TAB",
  hl.dsp.focus({ workspace = "prev" }),
  { description = "Move to previously accessed workspace" }
)

-- mouse controls
--- next ws
hl.bind(
  mainMod .. "mouse_down",
  hl.dsp.focus({ workspace = "e+1" }),
  { description = "Move to next workspace" }
)
--- prev ws
hl.bind(
  mainMod .. "mouse_up",
  hl.dsp.focus({ workspace = "e-1" }),
  { description = "Move to previous workspace" }
)
--- drag window
hl.bind(
  mainMod .. "mouse:272",
  hl.dsp.window.drag(),
  { description = "Drag window" }
)
--- resize window
hl.bind(
  mainMod .. "mouse:273",
  hl.dsp.window.resize(),
  { description = "Resize window" }
)


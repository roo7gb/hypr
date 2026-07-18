-- hypr/hyprland.lua

hl.env("PATH", "/run/hypr-runtime-env/bin:" .. os.getenv("PATH"))

-- get hostname
local handle = io.popen("hostname")
Hostname = "unknown" -- fallback

-- if hostname
if handle then
  local result = handle:read("*l") -- read first line
  handle:close()
  if result then
    Hostname = result:gsub("%s+", "") -- drop whitespace
  end
end

-- import config
require("init")


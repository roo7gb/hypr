-- hypr/modules/monitors.lua

-- monitor config
hl.monitor({
  output = "DP-1",
  mode = "highres",
  position = "auto", --"1080x840",
  scale = 1,
})

hl.monitor({
  output = "HDMI-A-1",
  mode = "highres",
  position = "1080x840",
  transform = 3,
})

-- hl.monitor({
--   output = "HDMI-A-2",
--   mode = "1920x1080@59.94",
--   bitdepth = 8,
--   position = "auto",
--   scale = 1,
-- })


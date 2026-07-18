-- hypr/init.lua

-- search path
local modules

if os.getenv("MODULES_ROOT") then
  modules = os.getenv("MODULES_ROOT")
else
  modules = os.getenv("HOME") .. "/.config/hypr/modules"
end

-- get files in modules dir
local p = io.popen('find -L "' .. modules .. '" -name "*.lua" -type f | sort')
if not p then
  return
end

-- recursively search-return modules
for path in p:lines() do
  local ok, err = pcall(dofile, path)
  -- oopsie detection
  if not ok then
    hl.notification.create({
      text = "init: " .. path .. "\n" .. tostring(err),
      timeout = 8000,
      icon = "warning",
    })
  end
end

p:close()


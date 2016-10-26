-- Window Fullscreen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

-- Window with borders
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 350
  f.y = max.y
  f.w = max.w - (max.w / 6 * 2)
  f.h = max.h
  win:setFrame(f)
end)

-- Window 50% left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Window 50% right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)


-- Remap HJKL to arrow keys
function arrow_left()
  hs.eventtap.keyStroke({}, "left")
end

function arrow_down()
  hs.eventtap.keyStroke({}, "down")
end

function arrow_up()
  hs.eventtap.keyStroke({}, "up")
end

function arrow_right()
  hs.eventtap.keyStroke({}, "right")
end

-- Call arrow_* on press and repeat!
hs.hotkey.bind({"ctrl", "cmd"}, "H", arrow_left,  nil, arrow_left)
hs.hotkey.bind({"ctrl", "cmd"}, "J", arrow_down,  nil, arrow_down)
hs.hotkey.bind({"ctrl", "cmd"}, "K", arrow_up,    nil, arrow_up)
hs.hotkey.bind({"ctrl", "cmd"}, "L", arrow_right, nil, arrow_right)


-- Second Display, Split between Apps
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
--   local leftScreen = "<display name>"
--   local windowLayout = {
--       {"Safari", nil, leftScreen, {x=0, y=0, w=0.6, h=1}, nil, nil},
--       {"Terminal", nil, leftScreen, {x=0, y=0, w=0.6, h=1}, nil, nil},
--       {"Skype", nil, leftScreen, {x=0.6, y=0, w=0.4, h=1}, nil, nil},
--   }
--   hs.layout.apply(windowLayout)
-- end)

-- Second Display, Split between Apps, Setting 2
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
--   local leftScreen = "<display name>"
--   local windowLayout = {
--       {"Safari", nil, leftScreen, {x=0.4, y=0, w=0.6, h=1}, nil, nil},
--       {"Terminal", nil, leftScreen, {x=0.4, y=0, w=0.6, h=1}, nil, nil},
--       {"Skype", nil, leftScreen, {x=0, y=0, w=0.4, h=1}, nil, nil},
--   }
--   hs.layout.apply(windowLayout)
-- end)


-- Reload config via mapping
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

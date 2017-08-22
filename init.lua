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

  f.x = max.x + (max.w / 6)
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


-- Screen Brightness
hs.hotkey.bind({"shift"}, "pageup", function()
  cur_brightness = hs.brightness.get()
  hs.brightness.set(cur_brightness + 10)
end)

hs.hotkey.bind({"shift"}, "pagedown", function()
  cur_brightness = hs.brightness.get()
  hs.brightness.set(cur_brightness - 10)
end)


-- Spotify Controls
hs.hotkey.bind({"shift"}, "f12", function()
  hs.spotify.playpause()
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

hs.alert.show("Config loaded")

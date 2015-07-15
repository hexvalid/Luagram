#!/bin/lua


function terminal (bash_komutu)
  local handle = io.popen((bash_komutu))
  local result = handle:read("*a")
  handle:close()
  return result
end

function bekle (beklenecek_saniye)
  terminal("sleep ".. (beklenecek_saniye))
end

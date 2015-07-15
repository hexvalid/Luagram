#!/bin/lua

function k(konusulacak_kelime_tablosu)
  rastgele_tablo=math.random(tablo_boyu((konusulacak_kelime_tablosu)))
  return (konusulacak_kelime_tablosu)[rastgele_tablo]
end

function b(bas_harfi_buyutulecek_kelime)
  return (bas_harfi_buyutulecek_kelime:gsub("^%l", string.upper))
end

function tablo_boyu(T)
  local boy = 0
  for _ in pairs(T) do boy = boy+ 1 end
  return boy
end

if string.find("ne durumdasın", "durum") then
  print("vaay")
end

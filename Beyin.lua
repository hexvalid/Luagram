#!/bin/lua
---Gerekli modüller
require("Modul-OS");
require("Dil");
require("KelimeDagarcigi");

---TANIMLAMALAR
bot_adi="[bot@Erkan ~]"
versiyon="v0.0.4"
on_ek='!'

durum=versiyon.." ile çalışıyor durumdayım.\nIP Adresim: "..terminal("curl -s http://ipecho.net/plain").."\nÜzerinde çalıştığım makine'nin adı: "..terminal("cat /etc/hostname")


---Mesaj alındı fonksiyonu
function on_msg_receive (msg)
  gelen_mesaj=string.lower(msg.text)
  gelen_mesaj_on_eki=string.sub(gelen_mesaj, 1,1)
  gonderen=msg.from.print_name
  if msg.out then
    return
  end
  --------------------------------------------
  if (gelen_mesaj_on_eki==on_ek) then
    ---Buradan itibaren konuşma fonksiyonları başlıyor

    if string.find(gelen_mesaj, "durum") and string.find(gelen_mesaj, "ne")  then
      mesaj_at (gonderen, durum)
      --fonksiyon sonu

    elseif (gelen_mesaj=='!wtf') then
      mesaj_at (gonderen, "3")
      terminalx ("sleep 2")
      mesaj_at (gonderen, "2")
      terminalx ("sleep 2")
      mesaj_at (gonderen, "1")
      terminalx ("sleep 2")
      terminalx ("systemctl stop bot && sleep 2 && systemctl start bot")

      --fonksiyon sonu

    elseif (gelen_mesaj=='!güncelle') then
      mesaj_at (gonderen, terminal("git pull"))
      --fonksiyon sonu

    elseif string.find(gelen_mesaj, "yeniden") and string.find(gelen_mesaj, "başla")  then
      mesaj_at (gonderen, "Ortalama 5 saniye sonra yeniden başlayacağım...")
      bekle(1)
      terminal("systemctl restart bot")
      --fonksiyon sonu

    elseif (gelen_mesaj=='!selam') then
      mesaj_at (gonderen, b(k(_merhaba)))
      --fonksiyon sonu

    else
      mesaj_at(gonderen,  b(k(_anlamadim)))
      --tüm fonksiyonların sonu
    end
    ----------------------BURDA SUS
  end
end

----------------------ÖZEL FONKSİYONLAR----------------------
function mesaj_at (numara, mesaj)
  send_msg ((numara), bot_adi..": "..(mesaj), ok_cb, false)
end

----------------------KÖK FONKSİYONLAR----------------------
function on_our_id (id)
end

function on_secret_chat_created (peer)
end

function on_user_update (user)
end

function on_chat_update (user)
end

function on_get_difference_end ()
end

function on_binlog_replay_end ()
end
----------------------ÖLÜ KODLAR----------------------
--       send_msg (msg.from.print_name, merhaba, ok_cb, false)

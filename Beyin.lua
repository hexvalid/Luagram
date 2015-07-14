#!/bin/lua

require("Modul-OS");


----------------------TANIMLAMALAR----------------------
bot_adi="BOT"
versiyon="v0.0.2"
on_ek='!'
merhaba="Merhaba! \nBen Erkan'ın Bot'uyum. Şuanki versiyonum: "..versiyon.." \n"

durum="IP Adresim: "..terminal("curl -s http://ipecho.net/plain").."\nÜzerinde çalıştığım makine'nin adı: "..terminal("cat /etc/hostname")



function on_msg_receive (msg)
      gelen_mesaj=msg.text
      gelen_mesaj_on_eki=string.sub(gelen_mesaj, 1,1)
      gonderen=msg.from.print_name
      
      if msg.out then
          return
      end

      if (gelen_mesaj_on_eki==on_ek) then
          if (gelen_mesaj=='!durum') then 
              mesaj_at (gonderen, durum)
           elseif (gelen_mesaj=='!alfa') then 
              mesaj_at (gonderen, "Tabi")
          else
              mesaj_at(gonderen, "Anlamadım." )
          end
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

  
  
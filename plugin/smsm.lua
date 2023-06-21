function smsm(msg)
text = nil
if msg and msg.content and msg.content.text then
xname =  (Redis:get(Fast.."Name:Bot") or "افاتار") 
text = msg.content.text.text
if text:match("^"..xname.." (.*)$") then
text = text:match("^"..xname.." (.*)$")
end
end
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text) or Redis:get(Fast.."All:Get:Reides:Commands:Group"..text)
if neww then
text = neww or text
end
end

if text == "تفعيل سمسمي عام" then
if not msg.Asasy then 
return send(msg.chat_id,msg.id,'\n*• هذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
Redis:del(Fast.."smsme")
send(msg.chat_id,msg.id,"• تم تفعيل سمسمي عام")
end
if text == "تعطيل سمسمي عام" then
if not msg.Asasy then 
return send(msg.chat_id,msg.id,'\n*• هذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
Redis:set(Fast.."smsme",true)
send(msg.chat_id,msg.id,"• تم تعطيل سمسمي عام")
end

if text == "تفعيل سمسمي" then
if not msg.Manger then
return send(msg_chat_id,msg_id,'\n*𖠷 هذا الامر يخص  '..Controller_Num(6)..' * ',"md",true)  
end
Redis:del(Fast.."smsme"..msg.chat_id)
send(msg.chat_id,msg.id,"𖠷 تم تفعيل سمسمي")
end
if text == "تعطيل سمسمي" then
if not msg.Manger then
return send(msg_chat_id,msg_id,'\n*𖠷 هذا الامر يخص  '..Controller_Num(6)..' * ',"md",true)  
end
Redis:set(Fast.."smsme"..msg.chat_id,true)
send(msg.chat_id,msg.id,"𖠷 تم تعطيل سمسمي")
end
if not Redis:get(Fast.."smsme"..msg.chat_id) then
if text and msg.reply_to_message_id ~= 0 then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if Message_Reply and Message_Reply.sender and tonumber(Message_Reply.sender.user_id) == tonumber(Fast) then
ai_api = https.request("https://www.ava-tar.online/api/s/s.php?text="..URL.escape(text).."&lc=ar&cf=false")
ai_decode = JSON.decode(ai_api)
ai_text = ai_decode['success']
if ai_text:match("(.*)سناب(.*)") or ai_text:match("(.*)واتس(.*)") or ai_text:match("(.*)انستا(.*)") or ai_text:match("(.*)رقمي(.*)") or ai_text:match("(%d+)") or ai_text:match("(.*)متابعه(.*)") or ai_text:match("(.*)تابعني(.*)") or ai_text:match("(.*)قناتي(.*)") or ai_text:match("(.*)قناه(.*)") or ai_text:match("(.*)يوتيوب(.*)") then
txx = "لا افهمك"
else
txx = ai_text
end
send(msg_chat_id,msg_id,txx,"md")
end
end
end

end

return {Fast = smsm}
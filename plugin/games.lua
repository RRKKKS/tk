function games(msg)
text = nil
if msg and msg.content and msg.content.text then
xname =  (Redis:get(Fast.."Name:Bot") or "افتار") 
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
if Redis:get(Fast.."Game:Smile"..msg.chat_id) then
if text == Redis:get(Fast.."Game:Smile"..msg.chat_id) then
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(Fast.."Game:Smile"..msg.chat_id)
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - سمايل او سمايلات","md",true)  
end
end 
if Redis:get(Fast..msg.chat_id.."answers:photo") then
if text == Redis:get(Fast..msg.chat_id.."answers:photo") then
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(Fast..msg.chat_id.."answers:photo")
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - صور","md",true)  
end
end 
if Redis:get(Fast.."Game:Monotonous"..msg.chat_id) then
if text == Redis:get(Fast.."Game:Monotonous"..msg.chat_id) then
Redis:del(Fast.."Game:Monotonous"..msg.chat_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - الاسرع او ترتيب","md",true)  
end
end 
if Redis:get(Fast.."Game:tekib"..msg.chat_id) then
if text == Redis:get(Fast.."Game:tekib"..msg.chat_id) then
Redis:del(Fast.."Game:tekib"..msg.chat_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - تركيب أو ركب","md",true)  
end
end
 if Redis:get(Fast.."Game:ausm"..msg.chat_id) then
if text == Redis:get(Fast.."Game:ausm"..msg.chat_id) then
Redis:del(Fast.."Game:ausm"..msg.chat_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - تركيب أو ركب","md",true)  
end
end
if Redis:get(Fast.."Game:klmaa"..msg.chat_id) then
if text == Redis:get(Fast.."Game:klmaa"..msg.chat_id) then
Redis:del(Fast.."Game:klmaa"..msg.chat_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - تركيب أو ركب","md",true)  
end
end
if Redis:get(Fast.."fakok:game"..msg.chat_id) then
if text == Redis:get(Fast.."fakok:game"..msg.chat_id) then
Redis:del(Fast.."fakok:game"..msg.chat_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - تفكيك أو فك","md",true)  
end
end 
if Redis:get(Fast.."Game:Riddles"..msg.chat_id) then
if text == Redis:get(Fast.."Game:Riddles"..msg.chat_id) then
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(Fast.."Game:Riddles"..msg.chat_id)
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - حزوره","md",true)  
end
end
if Redis:get(Fast.."Game:Meaningof"..msg.chat_id) then
if text == Redis:get(Fast.."Game:Meaningof"..msg.chat_id) then
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(Fast.."Game:Meaningof"..msg.chat_id)
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - معاني","md",true)  
end
end
if Redis:get(Fast.."Game:Reflection"..msg.chat_id) then
if text == Redis:get(Fast.."Game:Reflection"..msg.chat_id) then
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(Fast.."Game:Reflection"..msg.chat_id)
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - العكس","md",true)  
end
end
if Redis:get(Fast.."Game:Alam"..msg.chat_id) then
if text == Redis:get(Fast.."Game:Alam"..msg.chat_id) then
Redis:del(Fast.."Game:Alam"..msg.chat_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return bot.sendText(msg_chat_id,msg_id,"\n ✶⁞⸽ لقد فزت في اللعبه \n ✶⁞⸽ اللعب مره اخره وارسل - اعلام او الاعلام","md",true)  
else
Redis:del(Fast.."Game:Alam"..msg.chat_id)
return bot.sendText(msg_chat_id,msg_id,"\n ✶⁞⸽ لقد خسرت حضا اوفر في المره القادمه\n ✶⁞⸽ اللعب مره اخره وارسل - اعلام او الاعلام","md",true)  
end
end 
if Redis:get(Fast.."Game:Estimate"..msg.chat_id..msg.sender_id.user_id) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
return send(msg.chat_id,msg.id,"• عذرآ لا يمكنك تخمين عدد اكبر من ال { 20 } خمن رقم ما بين ال{ 1 و 20 }\n","md",true)  
end 
local GETNUM = Redis:get(Fast.."Game:Estimate"..msg.chat_id..msg.sender_id.user_id)
if tonumber(NUM) == tonumber(GETNUM) then
Redis:del(Fast.."SADD:NUM"..msg.chat_id..msg.sender_id.user_id)
Redis:del(Fast.."Game:Estimate"..msg.chat_id..msg.sender_id.user_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id,5)  
return send(msg.chat_id,msg.id,"• مبروك فزت ويانه وخمنت الرقم الصحيح\n🚸︙تم اضافة { 5 } من النقاط \n","md",true)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
Redis:incrby(Fast.."SADD:NUM"..msg.chat_id..msg.sender_id.user_id,1)
if tonumber(Redis:get(Fast.."SADD:NUM"..msg.chat_id..msg.sender_id.user_id)) >= 3 then
Redis:del(Fast.."SADD:NUM"..msg.chat_id..msg.sender_id.user_id)
Redis:del(Fast.."Game:Estimate"..msg.chat_id..msg.sender_id.user_id)
return send(msg.chat_id,msg.id,"• اوبس لقد خسرت في اللعبه \n• حظآ اوفر في المره القادمه \n• كان الرقم الذي تم تخمينه { "..GETNUM.." }","md",true)  
else
return send(msg.chat_id,msg.id,"• اوبس تخمينك غلط \n• ارسل رقم تخمنه مره اخرى ","md",true)  
end
end
end
end
if Redis:get(Fast.."Game:Difference"..msg.chat_id) then
if text == Redis:get(Fast.."Game:Difference"..msg.chat_id) then 
Redis:del(Fast.."Game:Difference"..msg.chat_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - المختلف","md",true)  
end
end
if Redis:get(Fast.."Game:Example"..msg.chat_id) then
if text == Redis:get(Fast.."Game:Example"..msg.chat_id) then 
Redis:del(Fast.."Game:Example"..msg.chat_id)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return send(msg.chat_id,msg.id,"\n• لقد فزت في اللعبه \n• اللعب مره اخره وارسل - امثله","md",true)  
end
end
if text == 'العاب السورس' then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'http://t.me/'..chsource..''}, 
},
}
}
local TextHelp = [[*
• قائمــه العــاب البــوت
⋖━━❲𖣂❳━━𖠙ᥲ️᥎ᥲ️ƚᥲ️ᖇ𖠙━━❲𖣂❳━━⋗
• لعبة المختلف » المختلف
• لعبة الامثله » امثله
• لعبة العكس » العكس
• لعبة الحزوره » حزوره
• لعبة المعاني » معاني
• لعبة البات » بات
• لعبة التخمين » خمن
• لعبه الاسرع » الاسرع، ترتيب
• لعبة السمايلات » سمايلات
• اسئله » اسئله منوعه
• اسالني » اسئله عامه متجدده
• لغز  » الغاز الذكاء متجدده
• روليت » الروليت بالمعرفات 
• الروليت » الروليت بالانضمام
• رياضيات » مسائل رياضيه 
• انكليزي » معاني الكلمات 
• كت تويت ،كت » اسئله ترفيهيه
⋖━━❲𖣂❳━━𖠙ᥲ️᥎ᥲ️ƚᥲ️ᖇ𖠙━━❲𖣂❳━━⋗
• نقاطي ← لعرض عدد النقاط 
• بيع نقاطي + { العدد } 
لبيع كل نقطه مقابل {50} رساله
*]]
return send(msg_chat_id,msg_id,TextHelp,"md",false, false, false, false, reply_markup)
end
if text and Redis:get(Fast.."photo:test"..msg.sender_id.user_id) then
local phid = Redis:get(Fast.."photo:test"..msg.sender_id.user_id)
Redis:set(Fast.."get:photo:answer"..phid,text)
send(msg.chat_id,msg.id,"• تم حفظ جواب الصوره بنجاح")
Redis:del(Fast.."photo:test"..msg.sender_id.user_id)
end
if Redis:get(Fast.."add:photo"..msg.sender_id.user_id..":"..msg.chat_id) then
if msg.content.photo then
if msg.content.photo.sizes[1].photo.remote.id then
idPhoto = msg.content.photo.sizes[1].photo.remote.id
phid = msg.content.photo.sizes[1].photo.id
elseif msg.content.photo.sizes[2].photo.remote.id then
idPhoto = msg.content.photo.sizes[2].photo.remote.id
phid = msg.content.photo.sizes[2].photo.id
elseif msg.content.photo.sizes[3].photo.remote.id then
idPhoto = msg.content.photo.sizes[3].photo.remote.id
phid = msg.content.photo.sizes[3].photo.id
end
Redis:del(Fast.."add:photo"..msg.sender_id.user_id..":"..msg.chat_id)
Redis:sadd(Fast.."photos:game",phid)
Redis:set(Fast.."get:photo"..phid,idPhoto)
Redis:set(Fast.."photo:test"..msg.sender_id.user_id,phid)
send(msg.chat_id,msg.id,"• تم حفظ الصوره ارسل الان جواب الصوره")
end
end

if text == "سمايلات" or text == "سمايل" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
Random = {"🍎","🍐","??","🍋","🍉","??","🍓","🍈","🍒","🍑","🍍","🥥","🥝","🍅","🍆","🥑","🥦","🥒","🌶","🌽","🥕","🥔","🥖","🥐","🍞","🥨","🍟","??","🥚","🍳","🥓","🥩","🍗","🍖","🌭","🍔","🍠","🍕","🥪","🥙","☕️","🥤","🍶","🍺","🍻","🏀","⚽️","🏈","⚾️","🎾","🏐","🏉","🎱","🏓","🏸","🥅","🎰","🎮","🎳","🎯","🎲","🎻","🎸","🎺","🥁","🎹","🎼","🎧","🎤","🎬","🎨","🎭","🎪","🎟","🎫","🎗","🏵","🎖","🏆","🥌","🛷","🚗","🚌","🏎","🚓","🚑","🚚","🚛","🚜","⚔","🛡","🔮","🌡","💣","• ","📍","📓","📗","📂","📅","📪","??","• ","📭","⏰","??","🎚","☎️","📡"}
SM = Random[math.random(#Random)]
Redis:set(Fast.."Game:Smile"..msg.chat_id,SM)
return send(msg.chat_id,msg.id,"• اسرع واحد يدز هذا السمايل ? ~ {`"..SM.."`}","md",true)  
end
end

if text == "تركيب" or text == "ركب" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
KlamSpeed = {"احبك","ذئب","بعير","طير","ورده","جميل","حلو","بطريق","طماطم","موز","سيارة","تحريك","فلوس","بوت","ثقة","حلزون","مكيف","مروحه",};
name = KlamSpeed[math.random(#KlamSpeed)]
Redis:set(Fast.."Game:tekib"..msg.chat_id,name)
name = string.gsub(name,'احبك','ا ح ب ك')
name = string.gsub(name,'ذئب','ذ ئ ب')
name = string.gsub(name,'بعير','ب ع ي ر')
name = string.gsub(name,'طير','ط ي ر')
name = string.gsub(name,'ورده','و ر د ه')
name = string.gsub(name,'جميل','ج م ي ل')
name = string.gsub(name,'حلو','ح ل و')
name = string.gsub(name,'بطريق','ب ط ر ي ق')
name = string.gsub(name,'طماطم','ط م ا ط م')
name = string.gsub(name,'موز','م و ز')
name = string.gsub(name,'سيارة','س ي ا ر ة')
name = string.gsub(name,'تحريك','ت ح ر ي ك')
name = string.gsub(name,'فلوس','ف ل و س')
name = string.gsub(name,'بوت','ب و ت')
name = string.gsub(name,'ثقة','ث ق ة')
name = string.gsub(name,'حلزون','ح ل ز و ن')
name = string.gsub(name,'مكيف','م ك ي ف')
name = string.gsub(name,'مروحه','م ر و ح ه')
return send(msg.chat_id,msg.id,"• آسرع واحد يركب كلمه 🤔 ~ {"..name.."}","md",true)  
end
end
if text == "تفكيك" or text == "فك" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
KlamSpeed = {"ا ح ب ك","ذ ئ ب","ب ع ي ر","ط ي ر","و ر د ه","ج م ي ل","ح ل و","ب ط ر ي ق","ط م ا ط م","م و ز","س ي ا ر ة","ت ح ر ي ك","ف ل و س","ب و ت","ث ق ة","ح ل ز و ن","م ك ي ف","م ر و ح ه",};
name = KlamSpeed[math.random(#KlamSpeed)]
Redis:set(Fast.."fakok:game"..msg.chat_id,name)
name = string.gsub(name,'ا ح ب ك','احبك')
  name = string.gsub(name,'ا ك ر ه ك','اكرهك')
  name = string.gsub(name,'ذ ئ ب','ذئب')
  name = string.gsub(name,'ب ع ي ر','بعير')
  name = string.gsub(name,'ط ي ر','طير')
  name = string.gsub(name,'و ر د ه','ورده')
  name = string.gsub(name,'ج م ي ل','جميل')
  name = string.gsub(name,'ح ل و','حلو')
  name = string.gsub(name,'ب ط ر ي ق','بطريق')
  name = string.gsub(name,'ط م ا ط م','طماطم')
  name = string.gsub(name,'م و ز','موز')
  name = string.gsub(name,'س ي ا ر ة','سيارة')
  name = string.gsub(name,'ت ح ر ي ك','تحريك')
  name = string.gsub(name,'ف ل و س','فلوس')
  name = string.gsub(name,'ب و ت','بوت')
  name = string.gsub(name,'ث ق ة','ثقة')
  name = string.gsub(name,'ح ل ز و ن','حلزون')
  name = string.gsub(name,'م ك ي ف','مكيف')
  name = string.gsub(name,'م ر و ح ه','مروحه')
return send(msg.chat_id,msg.id,"• آسرع واحد يفكك كلمه 🤔 ~ {"..name.."}","md",true)  
end
end
if text == "الاسرع" or text == "ترتيب" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
KlamSpeed = {"سحور","سياره","استقبال","قنفه","ايفون","بزونه","مطبخ","كرستيانو","دجاجه","مدرسه","الوان","غرفه","ثلاجه","كهوه","سفينه","العراق","محطه","طياره","رادار","منزل","مستشفى","كهرباء","تفاحه","اخطبوط","سلمون","فرنسا","برتقاله","تفاح","مطرقه","بتيته","لهانه","شباك","باص","سمكه","ذباب","تلفاز","حاسوب","انترنيت","ساحه","جسر"};
name = KlamSpeed[math.random(#KlamSpeed)]
Redis:set(Fast.."Game:Monotonous"..msg.chat_id,name)
name = string.gsub(name,"سحور","س ر و ح")
name = string.gsub(name,"سياره","ه ر س ي ا")
name = string.gsub(name,"استقبال","ل ب ا ت ق س ا")
name = string.gsub(name,"قنفه","ه ق ن ف")
name = string.gsub(name,"ايفون","و ن ف ا")
name = string.gsub(name,"بزونه","ز و ه ن")
name = string.gsub(name,"مطبخ","خ ب ط م")
name = string.gsub(name,"كرستيانو","س ت ا ن و ك ر ي")
name = string.gsub(name,"دجاجه","ج ج ا د ه")
name = string.gsub(name,"مدرسه","ه م د ر س")
name = string.gsub(name,"الوان","ن ا و ا ل")
name = string.gsub(name,"غرفه","غ ه ر ف")
name = string.gsub(name,"ثلاجه","ج ه ت ل ا")
name = string.gsub(name,"كهوه","ه ك ه و")
name = string.gsub(name,"سفينه","ه ن ف ي س")
name = string.gsub(name,"العراق","ق ع ا ل ر ا")
name = string.gsub(name,"محطه","ه ط م ح")
name = string.gsub(name,"طياره","ر ا ط ي ه")
name = string.gsub(name,"رادار","ر ا ر ا د")
name = string.gsub(name,"منزل","ن ز م ل")
name = string.gsub(name,"مستشفى","ى ش س ف ت م")
name = string.gsub(name,"كهرباء","ر ب ك ه ا ء")
name = string.gsub(name,"تفاحه","ح ه ا ت ف")
name = string.gsub(name,"اخطبوط","ط ب و ا خ ط")
name = string.gsub(name,"سلمون","ن م و ل س")
name = string.gsub(name,"فرنسا","ن ف ر س ا")
name = string.gsub(name,"برتقاله","ر ت ق ب ا ه ل")
name = string.gsub(name,"تفاح","ح ف ا ت")
name = string.gsub(name,"مطرقه","ه ط م ر ق")
name = string.gsub(name,"بتيته","ب ت ت ي ه")
name = string.gsub(name,"لهانه","ه ن ل ه ل")
name = string.gsub(name,"شباك","ب ش ا ك")
name = string.gsub(name,"باص","ص ا ب")
name = string.gsub(name,"سمكه","ك س م ه")
name = string.gsub(name,"ذباب","ب ا ب ذ")
name = string.gsub(name,"تلفاز","ت ف ل ز ا")
name = string.gsub(name,"حاسوب","س ا ح و ب")
name = string.gsub(name,"انترنيت","ا ت ن ر ن ي ت")
name = string.gsub(name,"ساحه","ح ا ه س")
name = string.gsub(name,"جسر","ر ج س")
return send(msg.chat_id,msg.id,"• اسرع واحد يرتبها ~ {"..name.."}","md",true)  
end
end
if text == "حزوره" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
Hzora = {"الجرس","عقرب الساعه","السمك","المطر","5","الكتاب","البسمار","7","الكعبه","بيت الشعر","لهانه","انا","امي","الابره","الساعه","22","غلط","كم الساعه","البيتنجان","البيض","المرايه","الضوء","الهواء","الضل","العمر","القلم","المشط","الحفره","البحر","الثلج","الاسفنج","الصوت","بلم"};
name = Hzora[math.random(#Hzora)]
Redis:set(Fast.."Game:Riddles"..msg.chat_id,name)
name = string.gsub(name,"الجرس","شيئ اذا لمسته صرخ ما هوه ؟")
name = string.gsub(name,"عقرب الساعه","اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟")
name = string.gsub(name,"السمك","ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟")
name = string.gsub(name,"المطر","شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟")
name = string.gsub(name,"5","ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ")
name = string.gsub(name,"الكتاب","ما الشيئ الذي له اوراق وليس له جذور ؟")
name = string.gsub(name,"البسمار","ما هو الشيئ الذي لا يمشي الا بالضرب ؟")
name = string.gsub(name,"7","عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ")
name = string.gsub(name,"الكعبه","ما هو الشيئ الموجود وسط مكة ؟")
name = string.gsub(name,"بيت الشعر","ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ")
name = string.gsub(name,"لهانه","وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ")
name = string.gsub(name,"انا","ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟")
name = string.gsub(name,"امي","اخت خالك وليست خالتك من تكون ؟ ")
name = string.gsub(name,"الابره","ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ")
name = string.gsub(name,"الساعه","ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟")
name = string.gsub(name,"22","كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ")
name = string.gsub(name,"غلط","ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ")
name = string.gsub(name,"كم الساعه","ما هو السؤال الذي تختلف اجابته دائما ؟")
name = string.gsub(name,"البيتنجان","جسم اسود وقلب ابيض وراس اخظر فما هو ؟")
name = string.gsub(name,"البيض","ماهو الشيئ الذي اسمه على لونه ؟")
name = string.gsub(name,"المرايه","ارى كل شيئ من دون عيون من اكون ؟ ")
name = string.gsub(name,"الضوء","ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟")
name = string.gsub(name,"الهواء","ما هو الشيئ الذي يسير امامك ولا تراه ؟")
name = string.gsub(name,"الضل","ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ")
name = string.gsub(name,"العمر","ما هو الشيء الذي كلما طال قصر ؟ ")
name = string.gsub(name,"القلم","ما هو الشيئ الذي يكتب ولا يقرأ ؟")
name = string.gsub(name,"المشط","له أسنان ولا يعض ما هو ؟ ")
name = string.gsub(name,"الحفره","ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟")
name = string.gsub(name,"البحر","ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟")
name = string.gsub(name,"الثلج","انا ابن الماء فان تركوني في الماء مت فمن انا ؟")
name = string.gsub(name,"الاسفنج","كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟")
name = string.gsub(name,"الصوت","اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟")
name = string.gsub(name,"بلم","حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ")
return send(msg.chat_id,msg.id,"• اسرع واحد يحل الحزوره ↓\n {"..name.."}","md",true)  
end
end
if text == "اشياء" or text == "جماد" then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
KlamSpeeddd = {"ديل","زيتون","بن تن","ون بيس","نمله","توت","دكتور","باونتي","عسل","سابق ولاحق","دماغ","خروف","ميكي ماوس","كرسي","كيا","عين","بي ام دبليو","بشت","لاما","ببجي","سيمبا","سبونج بوب","شاي","طبله","كابتن ماجد","اليابان","بزر","ديك رومي","لاكوست","نوكيا","بطه","غوريلا","باب","كراش","لوتس","فرشه","اسعاف","تركيا","تشيلسي","طرزان","ال جي","نوتيلا","طفايه","عدنان ولينا","فتيات القوه","دمعه","قراند","قطط","سله","فلاش","يد","كبد","الصين","مكسرات","فيمتو","باباي","كالويس","مسجد","برايه","بطوط","باندا","كيندر","طياره","سنافر","الصين","سالي","بطريق","قرد","شاورما","ثريه","ميداليه","ماعز","سرير","هدى","بطاريه","احلام","نيسان","لابتوب","نسر","مسدس","مسواك","بير","قوقل","ملعب","دبابه","مغسله","سلم","دبور","كودو","بيانو","كهف","مشط","نقار الخشب","تفاح","طاوله","عنكبوت"};
name = KlamSpeeddd[math.random(#KlamSpeeddd)]
Redis:set(Fast.."photohzr"..msg.chat_id,name)
name = string.gsub(name,"ديل","https://t.me/hsjwjwhs82819/2")
name = string.gsub(name,"زيتون","https://t.me/hsjwjwhs82819/3")
name = string.gsub(name,"بن تن","https://t.me/hsjwjwhs82819/4")
name = string.gsub(name,"ون بيس","https://t.me/hsjwjwhs82819/5")
name = string.gsub(name,"نمله","https://t.me/hsjwjwhs82819/6")
name = string.gsub(name,"توت","https://t.me/hsjwjwhs82819/7")
name = string.gsub(name,"دكتور","https://t.me/hsjwjwhs82819/8")
name = string.gsub(name,"باونتي","https://t.me/hsjwjwhs82819/9")
name = string.gsub(name,"عسل","https://t.me/hsjwjwhs82819/10")
name = string.gsub(name,"سابق ولاحق","https://t.me/hsjwjwhs82819/11")
name = string.gsub(name,"دماغ","https://t.me/hsjwjwhs82819/12")
name = string.gsub(name,"خروف","https://t.me/hsjwjwhs82819/13")
name = string.gsub(name,"ميكي ماوس","https://t.me/hsjwjwhs82819/14")
name = string.gsub(name,"كرسي","https://t.me/hsjwjwhs82819/15")
name = string.gsub(name,"كيا","https://t.me/hsjwjwhs82819/16")
name = string.gsub(name,"عين","https://t.me/hsjwjwhs82819/17")
name = string.gsub(name,"بي ام دبليو","https://t.me/hsjwjwhs82819/18")
name = string.gsub(name,"بشت","https://t.me/hsjwjwhs82819/19")
name = string.gsub(name,"لاما","https://t.me/hsjwjwhs82819/20")
name = string.gsub(name,"ببجي","https://t.me/hsjwjwhs82819/21")
name = string.gsub(name,"سيمبا","https://t.me/hsjwjwhs82819/22")
name = string.gsub(name,"سبونج بوب","https://t.me/hsjwjwhs82819/23")
name = string.gsub(name,"شاي","https://t.me/hsjwjwhs82819/24")
name = string.gsub(name,"طبله","https://t.me/hsjwjwhs82819/25")
name = string.gsub(name,"كابتن ماجد","https://t.me/hsjwjwhs82819/26")
name = string.gsub(name,"اليابان","https://t.me/hsjwjwhs82819/27")
name = string.gsub(name,"بزر","https://t.me/hsjwjwhs82819/28")
name = string.gsub(name,"ديك رومي","https://t.me/hsjwjwhs82819/29")
name = string.gsub(name,"لاكوست","https://t.me/hsjwjwhs82819/30")
name = string.gsub(name,"نوكيا","https://t.me/hsjwjwhs82819/31")
name = string.gsub(name,"بطه","https://t.me/hsjwjwhs82819/32")
name = string.gsub(name,"غوريلا","https://t.me/hsjwjwhs82819/33")
name = string.gsub(name,"باب","https://t.me/hsjwjwhs82819/34")
name = string.gsub(name,"كراش","https://t.me/hsjwjwhs82819/35")
name = string.gsub(name,"لوتس","https://t.me/hsjwjwhs82819/36")
name = string.gsub(name,"فرشه","https://t.me/hsjwjwhs82819/37")
name = string.gsub(name,"اسعاف","https://t.me/hsjwjwhs82819/38")
name = string.gsub(name,"تركيا","https://t.me/hsjwjwhs82819/39")
name = string.gsub(name,"تشيلسي","https://t.me/hsjwjwhs82819/40")
name = string.gsub(name,"طرزان","https://t.me/hsjwjwhs82819/41")
name = string.gsub(name,"ال جي","https://t.me/hsjwjwhs82819/42")
name = string.gsub(name,"نوتيلا","https://t.me/hsjwjwhs82819/43")
name = string.gsub(name,"طفايه","https://t.me/hsjwjwhs82819/44")
name = string.gsub(name,"عدنان ولينا","https://t.me/hsjwjwhs82819/45")
name = string.gsub(name,"فتيات القوه","https://t.me/hsjwjwhs82819/46")
name = string.gsub(name,"دمعه","https://t.me/hsjwjwhs82819/47")
name = string.gsub(name,"قراند","https://t.me/hsjwjwhs82819/48")
name = string.gsub(name,"قطط","https://t.me/hsjwjwhs82819/49")
name = string.gsub(name,"سله","https://t.me/hsjwjwhs82819/50")
name = string.gsub(name,"فلاش","https://t.me/hsjwjwhs82819/51")
name = string.gsub(name,"يد","https://t.me/hsjwjwhs82819/52")
name = string.gsub(name,"كبد","https://t.me/hsjwjwhs82819/53")
name = string.gsub(name,"الصين","https://t.me/hsjwjwhs82819/54")
name = string.gsub(name,"مكسرات","https://t.me/hsjwjwhs82819/55")
name = string.gsub(name,"فيمتو","https://t.me/hsjwjwhs82819/56")
name = string.gsub(name,"باباي","https://t.me/hsjwjwhs82819/57")
name = string.gsub(name,"كالميرا","https://t.me/hsjwjwhs82819/58")
name = string.gsub(name,"مسجد","https://t.me/hsjwjwhs82819/59")
name = string.gsub(name,"برايه","https://t.me/hsjwjwhs82819/60")
name = string.gsub(name,"بطوط","https://t.me/hsjwjwhs82819/61")
name = string.gsub(name,"باندا","https://t.me/hsjwjwhs82819/62")
name = string.gsub(name,"كيندر","https://t.me/hsjwjwhs82819/63")
name = string.gsub(name,"طياره","https://t.me/hsjwjwhs82819/64")
name = string.gsub(name,"سنافر","https://t.me/hsjwjwhs82819/65")
name = string.gsub(name,"الصين","https://t.me/hsjwjwhs82819/66")
name = string.gsub(name,"سالي","https://t.me/hsjwjwhs82819/67")
name = string.gsub(name,"بطريق","https://t.me/hsjwjwhs82819/68")
name = string.gsub(name,"قرد","https://t.me/hsjwjwhs82819/69")
name = string.gsub(name,"شاورما","https://t.me/hsjwjwhs82819/70")
name = string.gsub(name,"ثريه","https://t.me/hsjwjwhs82819/71")
name = string.gsub(name,"ميداليه","https://t.me/hsjwjwhs82819/72")
name = string.gsub(name,"ماعز","https://t.me/hsjwjwhs82819/73")
name = string.gsub(name,"سرير","https://t.me/hsjwjwhs82819/74")
name = string.gsub(name,"هدى","https://t.me/hsjwjwhs82819/75")
name = string.gsub(name,"بطاريه","https://t.me/hsjwjwhs82819/76")
name = string.gsub(name,"احلام","https://t.me/hsjwjwhs82819/77")
name = string.gsub(name,"نيسان","https://t.me/hsjwjwhs82819/78")
name = string.gsub(name,"لابتوب","https://t.me/hsjwjwhs82819/79")
name = string.gsub(name,"نسر","https://t.me/hsjwjwhs82819/80")
name = string.gsub(name,"مسدس","https://t.me/hsjwjwhs82819/81")
name = string.gsub(name,"مسواك","https://t.me/hsjwjwhs82819/82")
name = string.gsub(name,"بير","https://t.me/hsjwjwhs82819/83")
name = string.gsub(name,"قوقل","https://t.me/hsjwjwhs82819/84")
name = string.gsub(name,"ملعب","https://t.me/hsjwjwhs82819/85")
name = string.gsub(name,"دبابه","https://t.me/hsjwjwhs82819/86")
name = string.gsub(name,"مغسله","https://t.me/hsjwjwhs82819/87")
name = string.gsub(name,"سلم","https://t.me/hsjwjwhs82819/88")
name = string.gsub(name,"دبور","https://t.me/hsjwjwhs82819/89")
name = string.gsub(name,"كودو","https://t.me/hsjwjwhs82819/90")
name = string.gsub(name,"بيانو","https://t.me/hsjwjwhs82819/91")
name = string.gsub(name,"كهف","https://t.me/hsjwjwhs82819/92")
name = string.gsub(name,"مشط","https://t.me/hsjwjwhs82819/93")
name = string.gsub(name,"نقار الخشب","https://t.me/hsjwjwhs82819/94")
name = string.gsub(name,"تفاح","https://t.me/hsjwjwhs82819/95")
name = string.gsub(name,"طاوله","https://t.me/hsjwjwhs82819/96")
name = string.gsub(name,"عنكبوت","https://t.me/hsjwjwhs82819/97")
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg.chat_id.."&photo="..name.."&caption="..URL.escape("اسرع واحد يعرف الصورة").."&reply_to_message_id="..(msg.id/2097152/0.5))
end
end
if text == "زوم" or text == "زووم" then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
KlamSpeeddd = {"فراوله","غيوم","قط","عشب","بطه","الماس","شمس","حاسبه","فطر","موقد","ساعه","حذاء","مفتاح","كرز","جبن","سلحفاه","شعر","نظاره","حمار وحشي","سلطه","بطيخ","كتاب","طماطم","ديك","كرسي","حجاب","بوصله"};
name = KlamSpeeddd[math.random(#KlamSpeeddd)]
Redis:set(Fast.."mshaherrr"..msg.chat_id,name)
name = string.gsub(name,"فراوله","https://t.me/zzommm/2")
name = string.gsub(name,"غيوم","https://t.me/zzommm/3")
name = string.gsub(name,"قط","https://t.me/zzommm/4")
name = string.gsub(name,"عشب","https://t.me/zzommm/5")
name = string.gsub(name,"بطه","https://t.me/zzommm/6")
name = string.gsub(name,"الماس","https://t.me/zzommm/7")
name = string.gsub(name,"شمس","https://t.me/zzommm/8")
name = string.gsub(name,"حاسبه","https://t.me/zzommm/9")
name = string.gsub(name,"فطر","https://t.me/zzommm/10")
name = string.gsub(name,"موقد","https://t.me/zzommm/11")
name = string.gsub(name,"ساعه","https://t.me/zzommm/12")
name = string.gsub(name,"حذاء","https://t.me/zzommm/13")
name = string.gsub(name,"مفتاح","https://t.me/zzommm/14")
name = string.gsub(name,"كرز","https://t.me/zzommm/15")
name = string.gsub(name,"جبن","https://t.me/zzommm/16")
name = string.gsub(name,"سلحفاه","https://t.me/zzommm/17")
name = string.gsub(name,"شعر","https://t.me/zzommm/18")
name = string.gsub(name,"نظاره","https://t.me/zzommm/19")
name = string.gsub(name,"حمار وحشي","https://t.me/zzommm/20")
name = string.gsub(name,"سلطه","https://t.me/zzommm/21")
name = string.gsub(name,"بطيخ","https://t.me/zzommm/22")
name = string.gsub(name,"كتاب","https://t.me/zzommm/23")
name = string.gsub(name,"طماطم","https://t.me/zzommm/24")
name = string.gsub(name,"ديك","https://t.me/zzommm/25")
name = string.gsub(name,"كرسي","https://t.me/zzommm/26")
name = string.gsub(name,"حجاب","https://t.me/zzommm/27")
name = string.gsub(name,"بوصله","https://t.me/zzommm/28")
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg.chat_id.."&photo="..name.."&caption="..URL.escape("اسرع واحد يعرف الصوره").."&reply_to_message_id="..(msg.id/2097152/0.5))
end
end
if text == "صور" then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
KlamSpeeddd = {"ديل","زيتون","بن تن","ون بيس","نمله","توت","دكتور","باونتي","عسل","سابق ولاحق","دماغ","خروف","ميكي ماوس","كرسي","كيا","عين","بي ام دبليو","بشت","لاما","ببجي","سيمبا","سبونج بوب","شاي","طبله","كابتن ماجد","اليابان","بزر","ديك رومي","لاكوست","نوكيا","بطه","غوريلا","باب","كراش","لوتس","فرشه","اسعاف","تركيا","تشيلسي","طرزان","ال جي","نوتيلا","طفايه","عدنان ولينا","فتيات القوه","دمعه","قراند","قطط","سله","فلاش","يد","كبد","الصين","مكسرات","فيمتو","باباي","كالويس","مسجد","برايه","بطوط","باندا","كيندر","طياره","سنافر","الصين","سالي","بطريق","قرد","شاورما","ثريه","ميداليه","ماعز","سرير","هدى","بطاريه","احلام","نيسان","لابتوب","نسر","مسدس","مسواك","بير","قوقل","ملعب","دبابه","مغسله","سلم","دبور","كودو","بيانو","كهف","مشط","نقار الخشب","تفاح","طاوله","عنكبوت"};
name = KlamSpeeddd[math.random(#KlamSpeeddd)]
Redis:set(Fast.."photohzr"..msg.chat_id,name)
name = string.gsub(name,"ديل","https://t.me/hsjwjwhs82819/2")
name = string.gsub(name,"زيتون","https://t.me/hsjwjwhs82819/3")
name = string.gsub(name,"بن تن","https://t.me/hsjwjwhs82819/4")
name = string.gsub(name,"ون بيس","https://t.me/hsjwjwhs82819/5")
name = string.gsub(name,"نمله","https://t.me/hsjwjwhs82819/6")
name = string.gsub(name,"توت","https://t.me/hsjwjwhs82819/7")
name = string.gsub(name,"دكتور","https://t.me/hsjwjwhs82819/8")
name = string.gsub(name,"باونتي","https://t.me/hsjwjwhs82819/9")
name = string.gsub(name,"عسل","https://t.me/hsjwjwhs82819/10")
name = string.gsub(name,"سابق ولاحق","https://t.me/hsjwjwhs82819/11")
name = string.gsub(name,"دماغ","https://t.me/hsjwjwhs82819/12")
name = string.gsub(name,"خروف","https://t.me/hsjwjwhs82819/13")
name = string.gsub(name,"ميكي ماوس","https://t.me/hsjwjwhs82819/14")
name = string.gsub(name,"كرسي","https://t.me/hsjwjwhs82819/15")
name = string.gsub(name,"كيا","https://t.me/hsjwjwhs82819/16")
name = string.gsub(name,"عين","https://t.me/hsjwjwhs82819/17")
name = string.gsub(name,"بي ام دبليو","https://t.me/hsjwjwhs82819/18")
name = string.gsub(name,"بشت","https://t.me/hsjwjwhs82819/19")
name = string.gsub(name,"لاما","https://t.me/hsjwjwhs82819/20")
name = string.gsub(name,"ببجي","https://t.me/hsjwjwhs82819/21")
name = string.gsub(name,"سيمبا","https://t.me/hsjwjwhs82819/22")
name = string.gsub(name,"سبونج بوب","https://t.me/hsjwjwhs82819/23")
name = string.gsub(name,"شاي","https://t.me/hsjwjwhs82819/24")
name = string.gsub(name,"طبله","https://t.me/hsjwjwhs82819/25")
name = string.gsub(name,"كابتن ماجد","https://t.me/hsjwjwhs82819/26")
name = string.gsub(name,"اليابان","https://t.me/hsjwjwhs82819/27")
name = string.gsub(name,"بزر","https://t.me/hsjwjwhs82819/28")
name = string.gsub(name,"ديك رومي","https://t.me/hsjwjwhs82819/29")
name = string.gsub(name,"لاكوست","https://t.me/hsjwjwhs82819/30")
name = string.gsub(name,"نوكيا","https://t.me/hsjwjwhs82819/31")
name = string.gsub(name,"بطه","https://t.me/hsjwjwhs82819/32")
name = string.gsub(name,"غوريلا","https://t.me/hsjwjwhs82819/33")
name = string.gsub(name,"باب","https://t.me/hsjwjwhs82819/34")
name = string.gsub(name,"كراش","https://t.me/hsjwjwhs82819/35")
name = string.gsub(name,"لوتس","https://t.me/hsjwjwhs82819/36")
name = string.gsub(name,"فرشه","https://t.me/hsjwjwhs82819/37")
name = string.gsub(name,"اسعاف","https://t.me/hsjwjwhs82819/38")
name = string.gsub(name,"تركيا","https://t.me/hsjwjwhs82819/39")
name = string.gsub(name,"تشيلسي","https://t.me/hsjwjwhs82819/40")
name = string.gsub(name,"طرزان","https://t.me/hsjwjwhs82819/41")
name = string.gsub(name,"ال جي","https://t.me/hsjwjwhs82819/42")
name = string.gsub(name,"نوتيلا","https://t.me/hsjwjwhs82819/43")
name = string.gsub(name,"طفايه","https://t.me/hsjwjwhs82819/44")
name = string.gsub(name,"عدنان ولينا","https://t.me/hsjwjwhs82819/45")
name = string.gsub(name,"فتيات القوه","https://t.me/hsjwjwhs82819/46")
name = string.gsub(name,"دمعه","https://t.me/hsjwjwhs82819/47")
name = string.gsub(name,"قراند","https://t.me/hsjwjwhs82819/48")
name = string.gsub(name,"قطط","https://t.me/hsjwjwhs82819/49")
name = string.gsub(name,"سله","https://t.me/hsjwjwhs82819/50")
name = string.gsub(name,"فلاش","https://t.me/hsjwjwhs82819/51")
name = string.gsub(name,"يد","https://t.me/hsjwjwhs82819/52")
name = string.gsub(name,"كبد","https://t.me/hsjwjwhs82819/53")
name = string.gsub(name,"الصين","https://t.me/hsjwjwhs82819/54")
name = string.gsub(name,"مكسرات","https://t.me/hsjwjwhs82819/55")
name = string.gsub(name,"فيمتو","https://t.me/hsjwjwhs82819/56")
name = string.gsub(name,"باباي","https://t.me/hsjwjwhs82819/57")
name = string.gsub(name,"كالميرا","https://t.me/hsjwjwhs82819/58")
name = string.gsub(name,"مسجد","https://t.me/hsjwjwhs82819/59")
name = string.gsub(name,"برايه","https://t.me/hsjwjwhs82819/60")
name = string.gsub(name,"بطوط","https://t.me/hsjwjwhs82819/61")
name = string.gsub(name,"باندا","https://t.me/hsjwjwhs82819/62")
name = string.gsub(name,"كيندر","https://t.me/hsjwjwhs82819/63")
name = string.gsub(name,"طياره","https://t.me/hsjwjwhs82819/64")
name = string.gsub(name,"سنافر","https://t.me/hsjwjwhs82819/65")
name = string.gsub(name,"الصين","https://t.me/hsjwjwhs82819/66")
name = string.gsub(name,"سالي","https://t.me/hsjwjwhs82819/67")
name = string.gsub(name,"بطريق","https://t.me/hsjwjwhs82819/68")
name = string.gsub(name,"قرد","https://t.me/hsjwjwhs82819/69")
name = string.gsub(name,"شاورما","https://t.me/hsjwjwhs82819/70")
name = string.gsub(name,"ثريه","https://t.me/hsjwjwhs82819/71")
name = string.gsub(name,"ميداليه","https://t.me/hsjwjwhs82819/72")
name = string.gsub(name,"ماعز","https://t.me/hsjwjwhs82819/73")
name = string.gsub(name,"سرير","https://t.me/hsjwjwhs82819/74")
name = string.gsub(name,"هدى","https://t.me/hsjwjwhs82819/75")
name = string.gsub(name,"بطاريه","https://t.me/hsjwjwhs82819/76")
name = string.gsub(name,"احلام","https://t.me/hsjwjwhs82819/77")
name = string.gsub(name,"نيسان","https://t.me/hsjwjwhs82819/78")
name = string.gsub(name,"لابتوب","https://t.me/hsjwjwhs82819/79")
name = string.gsub(name,"نسر","https://t.me/hsjwjwhs82819/80")
name = string.gsub(name,"مسدس","https://t.me/hsjwjwhs82819/81")
name = string.gsub(name,"مسواك","https://t.me/hsjwjwhs82819/82")
name = string.gsub(name,"بير","https://t.me/hsjwjwhs82819/83")
name = string.gsub(name,"قوقل","https://t.me/hsjwjwhs82819/84")
name = string.gsub(name,"ملعب","https://t.me/hsjwjwhs82819/85")
name = string.gsub(name,"دبابه","https://t.me/hsjwjwhs82819/86")
name = string.gsub(name,"مغسله","https://t.me/hsjwjwhs82819/87")
name = string.gsub(name,"سلم","https://t.me/hsjwjwhs82819/88")
name = string.gsub(name,"دبور","https://t.me/hsjwjwhs82819/89")
name = string.gsub(name,"كودو","https://t.me/hsjwjwhs82819/90")
name = string.gsub(name,"بيانو","https://t.me/hsjwjwhs82819/91")
name = string.gsub(name,"كهف","https://t.me/hsjwjwhs82819/92")
name = string.gsub(name,"مشط","https://t.me/hsjwjwhs82819/93")
name = string.gsub(name,"نقار الخشب","https://t.me/hsjwjwhs82819/94")
name = string.gsub(name,"تفاح","https://t.me/hsjwjwhs82819/95")
name = string.gsub(name,"طاوله","https://t.me/hsjwjwhs82819/96")
name = string.gsub(name,"عنكبوت","https://t.me/hsjwjwhs82819/97")
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg.chat_id.."&photo="..name.."&caption="..URL.escape("اسرع واحد يعرف الصورة").."&reply_to_message_id="..(msg.id/2097152/0.5))
end
end
if text == "جملة" or text == "جمل" then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local list = {
"الممكن/والمستطاع*يقيم في/أحلام العاجز",
"الكلمة اللينة*تصريح/بالدخول*إلى القلوب",
" حاسبوا/أنفسكم*أولاً ثم/غيركم",
"زمان/أطفالكم*غير/زمانكم",
" من السهل*أن تصبح/عاقل بعد فوات*الأوان",
" فانظر*إليها بقلبك/وليس*بعينيك",
"خاف/الله*أينما/كنت",
"أحسن/لقول ما*نطق بالعدل/والحق",
"أن تحافظ على/رجولتك خير من*حفاظك على أموالك",
"أكثروا*الرزق/بالصدقة",
"غالبا*ماتصبح/البيضة/سلاحا",
"كن*عادلاً/قبل أن*تكون*كريماً",
"كلما أحب/الشخص*نفسه كلما*كره الناس",
"من يسخر/من المرض*هو من لا يشعر/بالألم.",
"يظن*الرجل أنه*حكيم/إذا قلت*حكمته.",
 "اللسان/ليس سلاح*لكنه/يقتل*القلب",
"أسد مفترس*أمام عينيك/خير من*ثعلب خائن وراء/ظهرك",
"لسان*لعاقل وراء قلبه*وقلب الأحمق/وراء لسانه",
"أحقر الناس*من لا يقدر*على/كتمان السر",
" جميع/لصفات*الحميدة*تتلخص/في العدل",
" أفضل/عناصر*العدل هي/محاسبة*النفس",
"لم يعرف*الناس العدل/إلا بوجود*الظلم",
"العدل*ميزان/الملك",
"سيف*العدالة*لا ينام/ولا*يسهو",
"لا تلجأ*إلى ظالم*لكي ينصرك/على ظالم، فتكون*فريسة/هما",
"تحدثوا مع*الناس/على حسب*عقولهم",
" لو أنصت*الجاهل/ما اختلف*الناس",
"إذا تم*العقل قل/الكلام",
" لا تعد/ما لا تستطيع*الوفاء*به",
" القليل من*الطعام*يجلب/النوم*المريح",
"كرم المفسد*رشوة/لجلب*المنفعة",
"يدوم*الحال/بالرضا*والصبر",
" تتفاقم*المحن/عندما تكثر*الفتن",
"ربما*انفرج/الامر إذا/ضاق",
"سامح*الناس/قبل أن*تسامح/نفسك",
"شر الناس*من*خاف/الناس/من شره",
"قلب*العاقل/صندوق*أسراره",
"ضربة*اللسان أسوأ/من طعنة*السيف",
"من/سار على*الدرب/وصل",
"الدهر*يومان*يوم لك/ويوم*عليك",
" لا تدع/عاطفتك*تخسرك/نفسك",
"كن*قويا/لأجل/نفسك",
"ما يستهلك*عقلك/يسيطر على/حياتك"
}
if #list ~= 0 then
quschen = list[math.random(#list)]
quschen1 = string.gsub(quschen,"-"," ")
quschen1 = string.gsub(quschen1,"*"," ")
quschen1 = string.gsub(quschen1,"•"," ")
quschen1 = string.gsub(quschen1,"_"," ")
quschen1 = string.gsub(quschen1,","," ")
quschen1 = string.gsub(quschen1,"/"," ")
print(quschen1)
send(msg_chat_id,msg_id,'⇜ اسرع واحد يكتبها بدون اشارات :\n\n['..quschen..'] \n✧',"md")
Redis:set(Fast.."makal:bots:qus"..msg.chat_id,quschen1)
Redis:setex(Fast.."mkal:setex:" .. msg.chat_id .. ":" .. msg.sender_id.user_id, 60, true) 
end
end
end
if text == ""..(Redis:get(Fast.."makal:bots:qus"..msg.chat_id) or '').."" then
local timemkall = Redis:ttl(Fast.."mkal:setex:" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
local timemkal = (60 - timemkall)
if tonumber(timemkal) == 1 then
send(msg_chat_id,msg_id,'  استمر ي وحش ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 2 then
send(msg_chat_id,msg_id,'  اكيد محد ينافسك ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 3 then
send(msg_chat_id,msg_id,'  اتوقع محد ينافسك ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 4 then
send(msg_chat_id,msg_id,'  مركب تيربو !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 5 then
send(msg_chat_id,msg_id, '  صح عليك !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 6 then
send(msg_chat_id,msg_id,'   صحيح !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 7 then
send(msg_chat_id,msg_id,'   شد حيلك ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 8 then
send(msg_chat_id,msg_id, '  عندك اسرع ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 9 then
send(msg_chat_id,msg_id,'   يجي ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 10 then
send(msg_chat_id,msg_id,'   كفو ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 11 then
send(msg_chat_id,msg_id,'   ماش !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 12 then
send(msg_chat_id,msg_id,'   مستوى مستوى !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 13 then
send(msg_chat_id,msg_id,'   تدرب ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 14 then
send(msg_chat_id,msg_id,'   مدري وش اقول ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 15 then
send(msg_chat_id,msg_id,'   بطه ! \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 16 then
send(msg_chat_id,msg_id,'   ي بطوط !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 17 then
send(msg_chat_id,msg_id,'   مافي اسرع  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 18 then
send(msg_chat_id,msg_id,'   بكير  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 19 then
send(msg_chat_id,msg_id,'   وش هذا !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 20 then
send(msg_chat_id,msg_id,'   الله يعينك !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 21 then
send(msg_chat_id,msg_id,'   كيبوردك يعلق ههههه  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 22 then
send(msg_chat_id,msg_id,'   يبي لك تدريب  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 23 then
send(msg_chat_id,msg_id,'   انت اخر واحد رسلت وش ذا !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 24 then
send(msg_chat_id,msg_id,'   ههههه بطى !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 25 then
send(msg_chat_id,msg_id,'   ابك وش العلم !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 26 then
send(msg_chat_id,msg_id,'  اخر مرا تلعب !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 27 then
send(msg_chat_id,msg_id,'   ي بطيء !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 28 then
send(msg_chat_id,msg_id,'   ليه انت بطيء يخوي !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 29 then
send(msg_chat_id,msg_id,'   تدبر زين بس  !  \n عدد الثواني ( '..timemkal..' )\n✧')
elseif tonumber(timemkal) == 30 then
send(msg_chat_id,msg_id,'  مستوى بس !  \n عدد الثواني ( '..timemkal..' )\n✧')
end
Redis:del(Fast.."makal:bots:qus"..msg.sender_id.user_id..":"..msg.chat_id)
Redis:del(Fast.."mkal:setex:" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
end
if text == "صراحه" or text == "جرأه" then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local texting = {
"هل تعرضت لغدر في حياتك؟",
"هل تعرف عيوبك؟",
"هل أنت مُسامح أم لا تستطيع أن تُسامح؟",
"إذا قمت بالسفر إلى نُزهة خارج بلدك فمن هو الشخص الذي تُحب أن يُرافقك؟هل تتدخل إذا وجدت شخص يتعرض لحادثة سير أم تتركه وترحل؟",
"ما هو الشخص الذي لا تستطيع أن ترفض له أي طلب؟",
"إذا أعجبت بشخصٍ ما، كيف تُظهر له هذا الإعجاب أو ما هي الطريقة التي ستتبعها لتظهر إعجابك به؟",
"هل ترى نفسك مُتناقضً؟",
"ما هو الموقف الذي تعرضت فيه إلى الاحراج المُبرح؟",
"ما هو الموقف الذي جعلك تبكي أمام مجموعة من الناس رغمًا عنك؟",
"إذا جاء شريك حياتك وطلب الانفصال، فماذا يكون ردك وقته؟",
"إذا كان والد يعمل بعملٍ فقير هل تقبل به أو تستعر منه؟",
"ما الذي يجعلك تُصاب بالغضب الشديد؟",
"هإذا وجدت الشخص الذي أحببتهُ في يومٍ ما يمسك بطفله، هل هذا سيشعرك بالألم؟",
"علاقتك مع اهلك",
"ثلاثة أشياء تحبها"
}
return send(msg_chat_id,msg_id,texting[math.random(#texting)],'md')
end
end
if text == "كت" or text == "تويت" then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local texting = {
"*- مسلسل يستحق المشاهدة؟*",
"*- أفضل نوع عطر بالنسبة لك؟*",
"*- مدينة تود زيارتها لقضاء فترة الشتاء ❄️؟*",
"*- لقب تُعرف به عند صديقك المقرّب ؟*",
"*- هل تفضّل نوع معين من السيارات أم المهم سيارة جيدة وتقود؟*",
"*- أسوأ تطبيق بعد تيك توك؟*",
"*- أسوأ ظاهرة منتشرة في مواقع التواصل الاجتماعي؟*",
"*- تصوّرك لشكل 2022 وأحداثها؟*",
"*- أكلة يُحبها جميع أفراد المنزل ما عدا انت؟*",
"*- معروف عنك انك فنان في …؟*",
"‏*- بلد تود أن تزورها وتعيش فيها لفترة من الزمن؟✈️*",
"*- هل عندك صديق نادر مختلف عن كل الأشخاص الذين تعرّفت عليهم؟*",
"*- شخص يقول لك تصرفاتك لا تعجبني غيّرها، لكن أنت ترى أن تصرفاتك عادية، ماذا تفعل؟*",
"*- اكتشفت أن الشخص الذي أحببته يتسلى بك لملئ فراغه، موقفك؟*",
"*- اكتشفت أن الشخص المقرّب أخبر أصدقائك بِسر مهم عنك، ردة فعلك؟👀*",
"*- محظوظ لأني تعرفت على ....؟*",
"*- هل تُظهِر حزنك واستيائك من شخص للآخرين أم تفضّل مواجهته في وقتٍ لاحق؟*",
"*- أقوى عقاب لشخص مقرّب يتجاهلك؟*",
"*- تاريخ جميل لا تنساه؟*",
"*- مسلسل كرتوني عالق في ذاكرتك من أيام الطفولة؟*",
"*- كيف تتعامل مع الشخص المُتطفل ( الفضولي ) ؟*",
"*- آخر غلطات عمرك؟*",
"*- انت حزين اول شخص تتصل عليه؟*",
"*- قد تخيلت شي في بالك وصار ؟*",
"*- من طلاسم لهجتكم ؟*",
"*- كلمة معينة لا يفهمها إلا أصحابك؟*",
"*- سوي تاك واحد يقول نكته؟😅*",
"*- ما معنَى الحُرية في قامُوسك ؟*",
"*- تحب النقاش الطويل ولا تختصر الكلام ؟*",
"*- تكلم عن شخص تحبه بدون ماتحط اسمه*",
"*- كم تاخذ عشان تثق بأحد؟ و تثق بكثرة المواقف او السنين؟*",
"*- من اللي يجب ان يبادر بالحب اول البنت او الولد؟*",
"‏*- شاركنا مقولة أو بيت شعبي يُعجبك؟*",
"‏*- كم تحتاج من وقت لتثق بشخص؟*",
"‏*- شعورك الحالي في جملة؟*",
"‏*- تصوّرك لشكل 2021 وأحداثها؟*",
"‏*- أكلة يُحبها جميع أفراد المنزل ما عدا انت؟*",
"‏*- تحافظ على الرياضة اليومية أم الكسل يسيطر عليك؟*",
"‏*- مبدأ في الحياة تعتمد عليه دائما؟*",
"‏*- نسبة رضاك عن تصرفات مَن تعرفهم في الفترة الأخيرة؟*",
"‏*- كتاب تقرأه هذه الأيام؟*",
"‏*- نسبة رضاك عن تصرفات مَن تعرفهم في الفترة الأخيرة؟*",
"‏*- اكتشفت أن الشخص المقرّب أخبر أصدقائك بِسر مهم عنك، ردة فعلك؟👀*",
"‏*- شخص يقول لك تصرفاتك لا تعجبني غيّرها، لكن أنت ترى أن تصرفاتك عادية، ماذا تفعل؟*",
"*- حالياً الاغنية المترأسة قلبك هي؟*",
"‏*- أقوى عقاب بتسويه لشخص مقرّب اتجاهك؟*",
"‏*- هل تُظهِر حزنك واستيائك من شخص للآخرين أم تفضّل مواجهته في وقتٍ لاحق؟*",
"‏*- أكلة يُحبها جميع أفراد المنزل ما عدا انت؟*",
"* ‏- اكتشفت أن الشخص الذي أحببته يتسلى بك لملئ فراغه، موقفك؟*",
"‏*- تاريخ جميل لا تنساه؟*",
"*- لو اتيحت لك فرصة لمسح ذكرى من ذاكرتك ماهي هذه الذكرى؟*",
"*- من علامات الجمال وتعجبك بقوة؟*",
"*- يومي ضاع على ....؟*",
"*- أكثر شيء تقدِّره في الصـداقات؟*",
"*- صفة تُجمّل الشخـص برأيك؟*",
"*- كلمة غريبة من لهجتك ومعناها؟*",
"*- شيء تتميز فيه عن الآخرين؟*",
"*- صريح كيف سيكون العالم لو كنا جميعا مثلك؟🌚*",
"*- المدمّر الصغير في بيتكم، ما اسمه؟👶🏻😅*",
"*- فاقِد العقل يُسمى بالمجنون، ماذا عن فاقد القلب؟*",
"*- لو كان السفر مجانًا، أين ستكون الآن؟✈️*",
"*- تتخيل/ي نفسك مستعد لتحمّل مسؤولية تكوين أسرة وأطفال؟🏃🏻‍♂️*",
"*- هل مر فى حياتك شخص كنت تعتبره محل ثقة، ثم اكتشفت أنه محل أحذية؟*",
"*- يقولون، السهرانين للآن أجمل ناس، تتفق؟😴↗️*",
"*- مشروبك الساخن المفضّل؟☕️*",
"*- تعرف ترد بسرعة على الكلام الحلو، أم تصمت لوهلة؟😅❤️*",
"*- حكمة لا تغيب عن بالك؟*",
"*- هل يفسد البلوك للود قضية؟*",
"*- صفة فيك ترفع ضغط اللي حوليك؟🌚*",
"*- ماهـو أول جهاز جوال اشتريته ؟؟*",
"*- ماهـو اول برنامج تفتحه لما تصحى من النوم وتمسك جوالك ؟*",
"*- ‏كلما ازدادت ثقافة المرء ازداد بؤسه, تتفق؟*",
"*- ‏برايك من أهم مخترع المكيف ولا مخترع النت ؟*",
"*- ماهـو رايك بالزواج المبكر ؟*",
"*- ماهـو أكثر صفه ماتحبها بشخصيتك  ؟*",
"*- ‏من اللي يجب ان يبادر بالحب اول البنت لو الولد؟*",
"*- ‏هل تعايشت مع الوضع الى الان او لا؟*",
"*- ‏كيفك مع العناد؟*",
"*- ‏هل ممكن الكره يتبدل؟*",
"*- ‏بشنو راح ترد اذا شخص استفزك؟*",
"*- ‏كم زدت او نقصت وزن في الفتره ذي؟*",
"*- ‏تشوف في فرق بين الجرأة والوقاحة؟*",
"*- ‏اكثر مدة م نمت فيها؟*",
"*- ‏اغلب قراراتك الصح تكون من قلبك وله عقلك؟*",
"*- ‏كم تريد يكون طول شريكك؟*",
"*- ‏لو فونك بيد احد اكثر برنامج م تبيه يدخله هو؟*",
"*- ‏اعظم نعمة من نعم الله عندك؟*",
"*- ‏اغلب فلوسك تروح على وش؟*",
"*- ‏رايك بالناس اللي تحكم ع الشخص من قبيلته؟*",
"*- ‏اكثر اسم تحب ينادوك فيه؟*",
"*- كم من مية تحب تشوف مباريات؟*",
"*- ‏صراحةً شكل الشخص يهم اذا انت بتحب شخص؟*",
"*- ‏فراق الصديق ام فراق الحبيب ايهم اسوء؟*",
"*- مين أعظم وأفخم صديق الك في التيلي؟*",
"*- كم لغة تتقن؟*",
"*- ماهـو اجمل لغة برأيك؟*",
"*- تحب الكيبوب؟*",
"*- فالتواصل مع الناس تفضل الدردشه كتابياً ولا المكالمات الصوتيه؟*",
"*- في أي سنة بديت تستخدم تطبيقات التواصل الإجتماعي؟*",
"*- شاركنا أغنية غريبة تسمعها دايم؟*",
"*- عن ماذا تبحث؟*",
"*- روحك تنتمي لمكان غير المكان اللي انت عايش فيه؟*",
"*- كيف تتصرف لو تغيّر عليك أقرب شخص؟*",
"*- ‏أغبى نصيحة وصلتك؟*",
"*- هل اقتربت من تحقيق أحد أهدافك؟*",
"*- رأيك بمن يستمر في علاقة حب مع شخص وهو يعلم أنه على علاقة حب مع غيره؟*",
"‏*-  شخصية تاريخية تُحبها؟*",
"*- ‏كم ساعة نمت؟*",
"*- أكثر شخصية ممكن تستفزك؟*",
"*- ‏كلمة لمتابعينك؟*",
"*- أجمل شعــور؟*",
"*- أسوأ شعور؟*",
"*- أقبح العادات المجتمعية في بلدك؟*",
"*- أحب مُدن بلادك إلى قلبك؟*",
"*- أصعب أنواع الانتظار؟*",
"*- ‏ ماذا لو لم يتم اختراع الانترنت؟*",
"*- هل تعتقد أن امتلاكك لأكثر من صديق أفضل من امتلاكك لصديق واحد؟*",
"*- ‏ردة فعلك على شخص يقول لك: ما حد درى عنك؟*",
"*- كتاب تقرأه هذه الأيام؟*",
"*- ‏هل صحيح الشوق ياخذ من العافية ؟*",
"*- ‏لماذا الانسان يحب التغيير ؟ حتى وان كان سعيدا ؟!*",
"*- الاحباط متى ينال منك ؟*",
"*- ‏بعد مرور اكثر من عام هل مازال هناك من يعتقد ان كورونا كذبة  ؟*",
"*- هل  تشمت بعدوك وتفرح لضرره مهما كان الضرر قاسيا  ؟*",
"*- ‏ان كانت الصراحة ستبعد عنك من تحب هل تمتلك الشجاعة للمصارحة  ام لا ؟*",
"*- ‏ماهو حلك اذا اصابك الارق ؟*",
"*- ‏ماهو الامر  الذي لايمكن ان تسمح به ؟*",
"*- هل تلتزم بمبادئك وان كان ثمنها غاليا ؟*",
"*- ‏ماهو اولى اولوياتك في الحياة ؟*",
"*- لو خيرت بين ان تعيش وحيدا برفاه  او بين الاحباب بشقاء ماذا ستختار ؟*",
"*- هل تلجأ الى شخص ينتظر سقوطك وهو الوحيد الذي بامكانه مساعدتك ؟*",
"*- ‏اكثر شيء تحب امتلاكه ؟*",
"*- معنى الراحة بالنسبة لك ؟*",
"*- عرف نفسك بكلمة ؟*",
"*- لماذا لا ننتبه إلا حينما تسقُط الأشياء ؟*",
"*- ‏هل شعرت يومًا أنَّك تحتاج لطرح سؤال ما، لكنَّك تعرف في قلبك أنَّك لن تكون قادرًا على التعامل مع الإجابة؟*",
"*- ‏هل تبحث عن الحقيقة وهناك احتمال بانها ستكون قاسية عليك ؟*",
"*- ‏هل ظننت أن الأمر الذي أجلتهُ مرارًا لن تواجهه لاحقًا ؟*",
"*- قهوتك المفضلة وفي اي وقت تفضلها ؟*",
"*- ‏تطبيق مستحيل تحذفه؟*",
"*- ‏تسلك كثير ولا صريح؟*",
"*- ‏كلمة دايم تقولها؟*",
"*- كيف تعرف ان هالشخص يحبك ؟*",
"*- ‏ايش الشي الي يغير جوك ويخليك سعيد؟*",
"*- تقدر تتقبل رأي الكل حتى لو كان غلط؟*",
"*- أكثر شيء تحبه في نفسك؟*",
"*- يا ليت كل الحياة بدايات.. مع أو ضد؟*",
"*- ما هي العناصر التي تؤمن النجاح في الحياة بنظرك؟*",
"*- هل تعاتِب من يُخطئ بحقك أم تتبع مبدأ التجاهل؟*",
"*- كم لعبة في هاتفك؟*",
"*- أجمل مرحلة دراسية مرت بحياتك؟*",
"*- ما هو مفتاح القلوب؟ الكلمة الطيبة أم الجمال؟*",
"*- الخصام لا يعني الكُره.. تتفقون؟*",
"*- مِن مواصفات الرجل المثالي؟*",
"*- ما رأيك بمقولة: الناس معك على قد ما معك؟*",
"*- كلمة لمن يتصفح حسابك بشكل يومي؟*",
"*- خُرافة كنت تصدقها في طفولتك؟*",
"*- ‏ إنما الناس لطفاء بحجم المصلحة.. مع أو ضد؟*",
"*- ‏ حلم تفكر به دائمًا لكن تعلم دائما أن نسبة تحقيقه ضئيلة؟💔*",
"*- لو كان الأمر بيدك، ما أول قاعدة ستقوم بتطبيقها؟*",
"*- يزيد احترامي لك، لمّا ....؟*",
"*- هل سبق وأُعجبت بشخص من أسلوبه؟*",
"*- كل شيء يتعوّض إلا .. ؟*",
"*- ما النشاط الذي لن تمل يوماً من فعله؟*",
"*- ‏ لَون تتفاءل فيه؟*",
"*- تعتبر نفسك من النوع الصريح؟ أم تجامل بين الحين والآخر؟*",
"*- أكثر سؤال يثير غضبك؟*",
"*- أكثر شيء يضيع منك؟😅*",
"*- شيء سلبي في شخصيتك وتود التخلص منه؟*",
"*- ‏هل تتذكر نوع أول هاتف محمول حصلت عليه؟*",
"*- اكثر مكان تحب تروح له ف الصيف ؟*",
"*- كم وجبه تاكل ف اليوم ؟*",
"*- سوي تاك شخص فاهمك ف كل شيء ؟*",
"*- من علامات روقانك ؟*",
"*- تشوف انو التواصل بشكل يومي من اساسيات الحب ؟*",
"*- كيف تتصرف مع شخص تكلمه في سالفه مهمه ويصرفك ؟*",
"*- هل برأيك أن عبارة محد لأحد صحيحه ام تعقتد عكس ذلك؟*",
"*- شي مشتهر فيه عند عايلتك؟*",
"*- اكثر مكان تكتب فيه  وتفضفض ؟*",
"*- وقفة إحترام للي إخترع ؟*",
"*- أقدم شيء محتفظ فيه من صغرك؟*",
"*- أمنيه تمنيتها وتحققت؟*",
"*- شي ما تستغني عنه ف الطلعات ؟*",
"*- لغة تود تعلمها ؟*",
"*- اكثر شي مضيع عليه فلوسك ؟*",
"*- هل انت من الناس اللي تخطط وتفكر كثير قبل ماتتكلم؟*",
"*- اهم نصيحه للنجاح بشكل عام ؟*",
"*- كيف تتعامل مع شخص كنت طيب معه و تمادى صار يحس كل شئ منك مفروض و واجب بالغصب؟!*",
"*- شي نفسك تجربه ؟*",
"*- أشياء توترك ؟*",
"*- لعبة تشوف نفسك فنان فيها ؟*",
"*- اكثر مبلغ ضيعته ؟*",
"*- تعتمد على غيرك كثير ؟*",
"*- ردة فعلك اذا احد قام يهاوشك بدون سبب ؟*",
"*- لو خيروك، سفرة عمل أو إجازة في البيت؟*",
"*- اكثر شي يعتمدون عليك فيه ؟*",
"*- موقفك من شخص أخفى عنك حقيقة ما، تخوفًا من خسارتك؟*",
"*- الوضع مع ابوك فله ولا رسمي؟*",
"*- ما الذي يرضي المرأه الغاضبه ؟*",
"*- كيف تتعامل مع الاشخاص السلبيين ؟*",
"*- تتكلم عن الشخص اللي تحبه قدام الناس ؟*",
}
return send(msg_chat_id,msg_id,texting[math.random(#texting)],'md')
end
end
if text == "اذييتار" or text == "ازكتار" or text == "الاينذكار" then 
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local texting = {"اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ , وَشُكْرِكَ , وَحُسْنِ عِبَادَتِكَ🎈💞", 
"االلَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ , وَشُكْرِكَ , وَحُسْنِ عِبَادَتِكَ🎈💞 ",
"من الأدعية النبوية المأثورة:اللهمَّ زَيِّنا بزينة الإيمان",
"اااللهم يا من رويت الأرض مطرا أمطر قلوبنا فرحا 🍂 ",
"اا‏اللَّهُـمَّ لَڪَ الحَمْـدُ مِنْ قَـا؏ِ الفُـؤَادِ إلىٰ ؏َـرشِڪَ المُقـدَّس حَمْـدَاً يُوَافِي نِـ؏ـمَڪ 💙🌸",
"﴿وَاذْكُرِ اسْمَ رَبِّكَ وَتَبَتَّلْ إِلَيْهِ تَبْتِيلًا﴾🌿✨",
"﴿وَمَن يَتَّقِ اللهَ يُكَفِّرْ عَنْهُ سَيِّئَاتِهِ وَيُعْظِمْ لَهُ أَجْرًا﴾",
"«سُبْحَانَ اللهِ ، وَالحَمْدُ للهِ ، وَلَا إلَهَ إلَّا اللهُ ، وَاللهُ أكْبَرُ ، وَلَا حَوْلَ وَلَا قُوَّةَ إلَّا بِاللهِ»🍃",
"وذُنُوبًا شوَّهتْ طُهْرَ قُلوبِنا؛ اغفِرها يا ربّ واعفُ عنَّا ❤️",
"«اللَّهُمَّ اتِ نُفُوسَنَا تَقْوَاهَا ، وَزَكِّهَا أنْتَ خَيْرُ مَنْ زَكَّاهَا ، أنْتَ وَلِيُّهَا وَمَوْلَاهَا»🌹",
"۝‏﷽إن اللَّه وملائكته يُصلُّون على النبي ياأيُّها الذين امنوا صلُّوا عليه وسلِّموا تسليما۝",
"فُسِبًحً بًحًمًدٍ ربًکْ وٌکْنِ مًنِ الَسِاجّدٍيَنِ 🌿✨",
"اأقُمً الَصّلَاةّ لَدٍلَوٌکْ الَشُمًسِ إلَيَ غُسِقُ الَلَيَلَ🥀🌺",
"نِسِتٌغُفُرکْ ربًيَ حًيَتٌ تٌلَهّيَنِا الَدٍنِيَا عٌنِ ذِکْرکْ🥺😢",
"وٌمًنِ أعٌرض عٌنِ ذِکْريَ فُإنِ لَهّ مًعٌيَشُةّ ضنِکْا 😢",
"وٌقُرأنِ الَفُجّر إنِ قُرانِ الَفُجّر کْانِ مًشُهّوٌدٍا🎀🌲",
"اأّذّأّ أّلَدِنِيِّأّ نَِّستّګوِ أّصٌلَګوِ زِّوِروِ أّلَمَقِأّبِر💔",
"حًتٌيَ لَوٌ لَمًتٌتٌقُنِ الَخِفُظُ فُمًصّاحًبًتٌ لَلَقُرانِ تٌجّعٌلَکْ مًنِ اهّلَ الَلَهّ وٌخِاصّتٌهّ❤🌱",
"وٌإذِا رضيَتٌ وٌصّبًرتٌ فُهّوٌ إرتٌقُاء وٌنِعٌمًةّ✨??",
"«ربً اجّعٌلَنِيَ مًقُيَمً الَصّلَاةّ وٌمًنِ ذِريَتٌيَ ربًنِا وٌتٌقُبًلَ دٍعٌاء 🤲",
"ااعٌلَمً انِ رحًلَةّ صّبًرکْ لَهّا نِهّايَهّ عٌظُيَمًهّ مًحًمًلَهّ بًجّوٌائزٍ ربًانِيَهّ مًدٍهّشُهّ🌚☺️",
"اإيَاکْ وٌدٍعٌوٌةّ الَمًظُلَوٌمً فُ إنِهّا تٌصّعٌدٍ الَيَ الَلَهّ کْأنِهّا شُرارهّ مًنِ نِار 🔥🥺",
"االَلَهّمً انِقُذِ صّدٍوٌرنِا مًنِ هّيَمًنِهّ الَقُلَقُ وٌصّبً عٌلَيَهّا فُيَضا مًنِ الَطِمًأنِيَنِهّ✨🌺",
"يَابًنِيَ إنِ صّلَاح الَحًيَاةّ فُ أتٌجّاهّ الَقُبًلَهّ 🥀🌿",
"الَلَهّمً ردٍنِا إلَيَکْ ردٍا جّمًيَلَا💔🥺",
} 
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = '🔻• أذكار أخري •🔺️', data = msg.sender_id.user_id..'/Haiw5'}, },}}
return bot.sendText(msg_chat_id,msg_id, texting[math.random(#texting)],'md', false, false, false, false, reply_markup)
end
end
if text == "عاصمه" or text == "عواصم" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
KlamSpeed = {
"الولايات المتحدة",
"روسيا",
"الصين",
"المانيا",
"إيطاليا",
"فرنسا",
"بريطانيا",
"اليابان",
"كوريا الجنوبية",
"إندونيسيا",
"المانيا",
"مصر",
"إيران",
"كولومبيا",
"تايلاند",
"بنغلادش",
"السعودية",
"العراق",
"فيتنام",
"إسبانيا",
"كوريا الشمالية",
"أفغانستان",
"إثيوبيا",
"أوكرانيا",
"تايوان",
"أوزبكستان",
"أذربيجان",
"رومانيا",
"فنزويلا",
"السودان",
"المغرب",
"بولندا",
"لبنان",
"قطر",
"الاردن",
"البحرين",
"النمسا",
"الجزائر",
"اليمن",
"ماليزيا",
"ليبيا",
"التشيك",
"بلغاريا",
"أرمينا",
"السنغال",
"السويد",
"هولندا",
"اليونان",
"موريتانيا",
"كازاخستان",
"كرواتيا",
"الإمارات",
"أستراليا",
"الهند",
"سويسرا",
"فلسطين",
"تركيا"
};
name = KlamSpeed[math.random(#KlamSpeed)]
Redis:set(Fast.."Game:ausm"..msg.chat_id,name)
name = string.gsub(name,"الولايات المتحدة","واشنطن")
name = string.gsub(name,"روسيا","موسكو")
name = string.gsub(name,"الصين","بكين")
name = string.gsub(name,"المانيا","برلين")
name = string.gsub(name,"إيطاليا","روما")
name = string.gsub(name,"فرنسا","باريس")
name = string.gsub(name,"بريطانيا","لندن")
name = string.gsub(name,"اليابان","طوكيو")
name = string.gsub(name,"كوريا الجنوبية","سيؤول")
name = string.gsub(name,"إندونيسيا","جاكارتا")
name = string.gsub(name,"المانيا","برلين")
name = string.gsub(name,"مصر","القاهرة")
name = string.gsub(name,"إيران","طهران")
name = string.gsub(name,"كولومبيا","بوغوتا")
name = string.gsub(name,"تايلاند","بانكوك")
name = string.gsub(name,"بنغلادش","دكا")
name = string.gsub(name,"السعودية","الرياض")
name = string.gsub(name,"العراق","بغداد")
name = string.gsub(name,"فيتنام","هانوي")
name = string.gsub(name,"إسبانيا","مدريد")
name = string.gsub(name,"كوريا الشمالية","بيونغ يانغ")
name = string.gsub(name,"أفغانستان","كابول")
name = string.gsub(name,"إثيوبيا","اديس ابابا")
name = string.gsub(name,"أوكرانيا","كييف")
name = string.gsub(name,"تايوان","تايبيه")
name = string.gsub(name,"أوزبكستان","طشقند")
name = string.gsub(name,"أذربيجان","باكو")
name = string.gsub(name,"رومانيا","بوخاريست")
name = string.gsub(name,"فنزويلا","كاراكاس")
name = string.gsub(name,"السودان","الخرطوم")
name = string.gsub(name,"المغرب","الرباط")
name = string.gsub(name,"بولندا","وارسو")
name = string.gsub(name,"لبنان","بيروت")
name = string.gsub(name,"قطر","الدوحة")
name = string.gsub(name,"الاردن","عمان")
name = string.gsub(name,"البحرين","المنامة")
name = string.gsub(name,"النمسا","فيينا")
name = string.gsub(name,"الجزائر","الجزائر")
name = string.gsub(name,"اليمن","صنعاء")
name = string.gsub(name,"ماليزيا","كوالالمبور")
name = string.gsub(name,"ليبيا","طرابلس")
name = string.gsub(name,"التشيك","براغ")
name = string.gsub(name,"بلغاريا","صوفيا")
name = string.gsub(name,"أرمينا","يريفان")
name = string.gsub(name,"السنغال","داكار")
name = string.gsub(name,"السويد","ستوكهولم")
name = string.gsub(name,"هولندا","امستردام")
name = string.gsub(name,"اليونان","اثينا")
name = string.gsub(name,"موريتانيا","نواكشوط")
name = string.gsub(name,"كازاخستان","استاتا")
name = string.gsub(name,"كرواتيا","زغرب")
name = string.gsub(name,"الإمارات","ابو ظبي")
name = string.gsub(name,"أستراليا","كانبرا")
name = string.gsub(name,"الهند","نيودلهي")
name = string.gsub(name,"سويسرا","برن")
name = string.gsub(name,"فلسطين","القدس")
name = string.gsub(name,"تركيا","انقره")
return send(msg.chat_id,msg.id,"• آسرع واحد يبعت عاصمه 🤔 ~ {"..name.."}","md",true)  
end
end

if text == "كلمات" or text == "كلمه" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
KlamSpeed = {
"مقاتل",
"سائق",
"غرفة",
"بطانية",
"طامس",
"شجاع",
"هاتف",
"تلكرام",
"مسافر",
"نعسان",
"بطيخ",
"عصبي",
"هادئ",
"عصير",
"دولمه",
"قدح",
"صباغ",
"كارتون",
"مدرسة",
"منزل",
"عاشق",
"فطور",
"مجموعة",
"اصدقاء",
"طلاب",
"فتيات",
"جميل",
"ذكي",
"فنان",
"نائم",
"دراجة",
"طائرة",
"صاروخ",
"الارض",
"الحلم",
"نبات",
"حيوان",
"انسان",
"دولة",
"حزين",
"سعيد",
"موظف",
"شركة",
"اتصال",
"حديقة",
"شارع",
"مستشفى",
"سيارة"
};
name = KlamSpeed[math.random(#KlamSpeed)]
send(msg_chat_id,msg_id,"⇜ اسرع واحد يكتب ( "..name.." )","md",true)  
Redis:set(Fast.."Game:klmaa"..msg.chat_id,name)
return false
end
end
if text == 'عقاب' then
Redis:del(Fast..'List_Ahkamm'..msg.chat_id)
Redis:del(Fast..'members_Ahkamm'..msg.chat_id) 
Redis:set(Fast.."raeahkamm"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(Fast..'List_Ahkamm'..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(Fast..'members_Ahkamm'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(Fast.."Start_Ahkamm"..msg.chat_id,3600,true)
local AkZilzal = '⇜ بدينا لعبة عقاب واضفت اسمك للعبة\n\n⇜ اللي يبي يلعب يرسل كلمة انا او يضغط الزر\n⇜ للانتهاء يرسل نعم اللي بدء العبة'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'اضغط للانضمام', callback_data = '/Akab'},},}
local rep = msg.id/2097152/0.5
return https.request("https://api.telegram.org/bot"..Token..'/sendMessage?chat_id=' ..msg_chat_id.. '&text=' .. URL.escape(AkZilzal).."&reply_to_message_id="..rep..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))
end
if text == 'لاعبين عقاب' then
local list = Redis:smembers(Fast..'List_Ahkamm'..msg.chat_id) 
local Text = 'قائمة لاعبين عقاب\nـــــــــــــــــــــــــــــــــــــــــــــــ\n\n' 
if #list == 0 then 
return bot.sendText(msg_chat_id,msg_id, '⇜ لا يوجد لاعبين بعد',"md")
end 
for k,v in pairs(list) do
local user_info = bot.getUser(v)
local name = user_info.first_name
Text = Text..k.." *- اللاعـب »* ["..name.."](tg://user?id="..v..")\n"
end
return bot.sendText(msg_chat_id,msg_id,Text,"md")
end
if text == 'نعم' and Redis:get(Fast.."Witting_StartGamehh"..msg.chat_id) then
rarahkam = Redis:get(Fast.."raeahkamm"..msg.chat_id)
if tonumber(rarahkam) == msg.sender_id.user_id then
local list = Redis:smembers(Fast..'List_Ahkamm'..msg.chat_id) 
if #list == 1 then 
return bot.sendText(msg.chat_id,msg.id,"⇜ لا استطيع بدء اللعبة بلاعب واحد فقط","md",true)
end 
local UserName = list[math.random(#list)]

local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '@['..UserId_Info.username..']'
else
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
end
Redis:sadd(Fast.."kk_Akab"..msg.chat_id,UserId_Info.id)
Redis:srem(Fast..'members_Ahkamm'..msg_chat_id,UserId_Info.id) 
local GetLike = Redis:incrby(Fast.."Num:Add:Akab"..msg.chat_id..UserId_Info.id, 1) 
Redis:hset(Fast..':GroupUserCountAkab:'..msg.chat_id,UserId_Info.id,GetLike)
local UserrrInfo = bot.getUser(UserName) 
if UserrrInfo.first_name then
NameLUser = UserrrInfo.first_name
else
NameLUser = UserrrInfo.first_name
end
NameLUser = NameLUser
NameLUser = NameLUser:gsub("]","")
NameLUser = NameLUser:gsub("[[]","")
Redis:hset(Fast..':GroupAkabNameUser:'..msg.chat_id,UserId_Info.id,NameLUser)
Redis:del(Fast..'raeahkamm'..msg.chat_id) 
Redis:del(Fast..'List_Ahkamm'..msg.chat_id) 
Redis:del(Fast.."Witting_StartGamehh"..msg.chat_id)
Redis:del(Fast.."Start_Ahkamm"..msg.chat_id)
katu = {
"*روح الى اي قروب عندك واكتب اي شيء يطلبه منك اللاعبين الحد الاقصى 3 رسائل*.",
"*قول نكتة ولازم احد الاعبين يضحك اذا ماضحك يعطونك كتم الى ان يجي دورك مرة ثانية*.",
"*سمعنا صوتك و غن اي اغنية من اختيار الاعبين الي معك*.",
"*ذي المرة لك لا تعيدها*.",
"*صور اي شيء يطلبه منك الاعبين*.",
"*سكر خشمك و قول كلمة من اختيار الاعبين الي معك*.",
"*روح عند اي احد بالخاص و قول له انك تحبه و الخ*.",
"*اكتب في الشات اي شيء يطلبه منك الاعبين في الخاص*.",
"*قول نكتة اذا و لازم احد الاعبين يضحك اذا محد ضحك يعطونك ميوت الى ان يجي دورك مرة ثانية*.",
"*سامحتك خلاص مافيه عقاب لك *.",
"*غير اسمك الى اسم من اختيار الاعبين الي معك*.",
"*منشن الجميع وقل انا اكرهكم*.",
"*قول لاي بنت موجود في المجموعـة كلمة حلوه*.",
"*قول قصيدة *.",
"*سامحتك خلاص مافيه عقاب لك *.",
"*تاخذ عقابين*.",
"*اذا انت ولد اكسر اغلى او احسن عطور عندك اذا انتي بنت اكسري الروج حقك او الميك اب حقك*.",
"*اذهب الى واحد ماتعرفه وقل له انا كيوت وابي بوسه*.",
"* تروح عند شخص وقول له احبك*."
}
name = katu[math.random(#katu)]
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{{text = 'كتم الخاسر', data = '/akabmute'},},}}
return bot.sendText(msg_chat_id,msg_id,'⇜ تم اختيار : '..ls..' لمعاقبته\n\n⇜ العقوبة هي : ( '..name..' ) \n⇜ تستطيع كتم الخاسر اذا لم ينفذ الحكم', 'md', true, false, reply_markup)
end
end
if text == 'احكام' then
if Redis:get(Fast.."Fast:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(Fast.."Fast:Status:Games"..msg.chat_id) then
return false
end
local zzllzz = '⇜ بدينا لعبة احكام واضفت اسمك\n\n⇜ اللي يبي يلعب يضغط الزر بالاسفل'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/joineahkam'},
},
}
}
Redis:del(Fast..'List_Ahkkam'..msg.chat_id)
Redis:set(Fast.."raeahkkam"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(Fast..'List_Ahkkam'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(Fast.."Start_Ahkkam"..msg.chat_id,3600,true)
bot.sendText(msg_chat_id,msg_id,zzllzz,"md",false, false, false, false, reply_markup)
end
-------------------------------------------
if text == 'كرسي' or text == 'كرسي الاعتراف' then
local Quuiz = Redis:get(Fast.."Quiz:Add:Koorsy"..msg.chat_id) or 0
if tonumber(Quuiz) < tonumber(10) and Quuiz ~= 0 then 
return bot.sendText(msg.chat_id,msg.id, "⇜ هنالك لعبة كرسي جارية حاليا\n⇜ ارسل (تصفير كرسي) للبدء من جديد","md",true)  
end
local zzllzz = '⇜ بدينا لعبة كرسي الاعتراف واضفت اسمك\n\n⇜ اللي يبي يلعب يرسل كلمة (انا) او يضغط الزر\n⇜ للانتهاء يرسل (نعم) اللي بدأ اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/Koorsy'},
},
}
}
Redis:del(Fast..'List_Koorsi'..msg.chat_id)
Redis:del(Fast.."Quiz:Add:Koorsy"..msg.chat_id)
Redis:set(Fast.."raekoorsi"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(Fast..'List_Koorsi'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(Fast.."Start_Koorsi"..msg.chat_id,3600,true)
bot.sendText(msg_chat_id,msg_id,zzllzz,"md",false, false, false, false, reply_markup)
end
----------------------------------------
if text == 'صراحه' or text == 'صراحة' or text == 'صارحني' then
local Qiuiz = Redis:get(Fast.."Quiz:Add:Saraha"..msg.chat_id) or 0
if tonumber(Qiuiz) < tonumber(5) and Qiuiz ~= 0 then 
return bot.sendText(msg.chat_id,msg.id, "⇜ هنالك لعبة صراحة جارية حاليا\n⇜ ارسل (تصفير صراحه) للبدء من جديد","md",true)  
end
local zzllzz = '⇜ بدينا لعبة المصارحه واضفت اسمك\n\n⇜ اللي يبي يلعب يرسل كلمة (انا) او يضغط الزر\n⇜ للانتهاء يرسل (نعم) اللي بدأ اللعبة'
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'اضغط للانضمام', data = '/Sarraha'},
},
}
}
Redis:del(Fast..'List_Saraha'..msg.chat_id)
Redis:del(Fast.."Quiz:Add:Saraha"..msg.chat_id)
Redis:set(Fast.."raesaraha"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(Fast..'List_Saraha'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(Fast.."Start_Saraha"..msg.chat_id,3600,true)
bot.sendText(msg_chat_id,msg_id,zzllzz,"md",false, false, false, false, reply_markup)
end
----------------------------------
if text == "تصفير كرسي" then 
Redis:del(Fast.."Quiz:Add:Koorsy"..msg.chat_id)
return bot.sendText(msg_chat_id,msg_id, "*✦┊تم تصفيـر لعبـة كرسـي الاعتـراف .. بنجـاح ✓\n✦┊ارسـل الان ⇜ (كرسي) لـ بـدء اللعبـه*","md",true)  
end
if text == "تصفير صراحه" then 
Redis:del(Fast.."Quiz:Add:Saraha"..msg.chat_id)
return bot.sendText(msg_chat_id,msg_id, "*✦┊تم تصفيـر لعبـة صـارحني بسـريـه .. بنجـاح ✓\n✦┊ارسـل الان ⇜ (صراحه) لـ بـدء اللعبـه*","md",true)  
end
if text == "كتبات" or text == "حكمه" or text == "قصيده" then 
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local texting = {"‏من ترك أمرهُ لله، أعطاه الله فوق ما يتمنَّاه💙 ", 
"‏من علامات جمال المرأة .. بختها المايل ! ",
"‏ انك الجميع و كل من احتل قلبي🫀🤍",
"‏ ‏ لقد تْعَمقتُ بكَ كَثيراً والمِيمُ لام .♥️",
"‏ ‏ممكن اكون اختارت غلط بس والله حبيت بجد🖇️",
"‏ علينا إحياء زَمن الرّسائل الورقيّة وسط هذه الفوضى الالكترونية العَارمة. ℘︙ 💜",
"‏ يجي اي الصاروخ الصيني ده جمب الصاروخ المصري لما بيلبس العبايه السوده.🤩♥️",
"‏ كُنت أرقّ من أن أتحمّل كُل تلك القَسوة من عَينيك .🍍",
"‏أَكَان عَلَيَّ أَنْ أغْرَس انيابي فِي قَلْبِك لتشعر بِي ؟.",
"‏ : كُلما أتبع قلبي يدلني إليك .",
"‏ : أيا ليت من تَهواه العينُ تلقاهُ .",
"‏ ‏: رغبتي في مُعانقتك عميقة جداً .??",
"ويُرهقني أنّي مليء بما لا أستطيع قوله.✨",
"‏ من مراتب التعاسه إطالة الندم ع شيء إنتهى. ℘︙ ",
"‏ ‏كل العالم يهون بس الدنيا بينا تصفي 💙",
"‏ بعض الاِعتذارات يجب أن تُرفَضّ.",
"‏ ‏تبدأ حياتك محاولاً فهم كل شيء، وتنهيها محاولاً النجاة من كل ما فهمت.",
"‏ إن الأمر ينتهي بِنا إلى أعتياد أي شيء.",
"‏ هل كانت كل الطرق تؤدي إليكِ، أم أنني كنتُ أجعلها كذلك.",
"‏ ‏هَتفضل تواسيهُم واحد ورا التاني لكن أنتَ هتتنسي ومحدِش هَيواسيك.",
"‏ جَبَرَ الله قلوبِكُم ، وقَلبِي .🍫",
"‏ بس لما أنا ببقى فايق، ببقى أبكم له ودان.💖",
"‏ ‏مقدرش عالنسيان ولو طال الزمن 🖤",
"‏ أنا لستُ لأحد ولا احد لي ، أنا إنسان غريب أساعد من يحتاجني واختفي.",
"‏ ‏أحببتك وأنا منطفئ، فما بالك وأنا في كامل توهجي ؟",
"‏ لا تعودني على دفء شمسك، إذا كان في نيتك الغروب .َ",
"‏ وانتهت صداقة الخمس سنوات بموقف.",
"‏ ‏لا تحب أحداً لِدرجة أن تتقبّل أذاه.",
"‏ إنعدام الرّغبة أمام الشّيء الّذي أدمنته ، انتصار.",
"‏مش جايز , ده اكيد التأخير وارهاق القلب ده وراه عوضاً عظيماً !?? ",
" مش جايز , ده اكيد التأخير وارهاق القلب ده وراه عوضاً عظيماً !💙",
"فـ بالله صبر  وبالله يسر وبالله عون وبالله كل شيئ ♥️. ",
"أنا بعتز بنفسي جداً كصاحب وشايف اللي بيخسرني ، بيخسر أنضف وأجدع شخص ممكن يشوفه . ",
"فجأه جاتلى قافله ‏خلتنى مستعد أخسر أي حد من غير ما أندم عليه . ",
"‏اللهُم قوني بك حين يقِل صبري... ",
"‏يارب سهِل لنا كُل حاجة شايلين هَمها 💙‏ ",
"انا محتاج ايام حلوه بقي عشان مش نافع كدا ! ",
"المشكله مش اني باخد قررات غلط المشكله اني بفكر كويس فيها قبل ما اخدها .. ",
"تخيل وانت قاعد مخنوق كدا بتفكر فالمزاكره اللي مزكرتهاش تلاقي قرار الغاء الدراسه .. ",
" مكانوش يستحقوا المعافرة بأمانه.",
"‏جمل فترة في حياتي، كانت مع اكثر الناس الذين أذتني نفسيًا. ",
" ‏إحنا ليه مبنتحبش يعني فينا اي وحش!",
"أيام مُمله ومستقبل مجهول ونومٌ غير منتظموالأيامُ تمرُ ولا شيَ يتغير ", 
"عندما تهب ريح المصلحه سوف ياتي الجميع رتكدون تحت قدمك ❤️. ",
"عادي مهما تعادي اختك قد الدنيا ف عادي ❤. ",
"بقيت لوحدي بمعنا اي انا اصلا من زمان لوحدي.❤️ ",
"- ‏تجري حياتنا بما لاتشتهي أحلامنا ! ",
"تحملين كل هذا الجمال، ‏ألا تتعبين؟",
"البدايات للكل ، والثبات للصادقين ",
"مُؤخرًا اقتنعت بالجملة دي جدا : Private life always wins. ",
" الافراط في التسامح بيخللي الناس تستهين بيك🍍",
"مهما كنت كويس فـَ إنت معرض لـِ الاستبدال.. ",
"فخوره بنفسي جدًا رغم اني معملتش حاجه فـ حياتي تستحق الذكر والله . ",
"‏إسمها ليلة القدر لأنها تُغير الأقدار ,اللهُمَّ غير قدري لحالٍ تُحبه وعوضني خير .. ",
"فى احتمال كبير انها ليلة القدر ادعوا لنفسكم كتير وأدعو ربنا يشفى كل مريض. 💙 ",
"أنِر ظُلمتي، وامحُ خطيئتي، واقبل توبتي وأعتِق رقبتي يا اللّٰه. إنكَ عفوٌّ تُحِبُّ العفوَ؛ فاعفُ عني 💛 ",
} 
return bot.sendText(msg_chat_id,msg_id,texting[math.random(#texting)],'md')
end
end
if text == "خيروك" or text == "لو خيروك" then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local texting = {
"لو خيروك |  بين شراء منزل صغير أو استئجار فيلا كبيرة بمبلغ معقول؟ ",
"لو خيروك |  أن تعيش قصة فيلم هل تختار الأكشن أو الكوميديا؟ ",
"لو خيروك |  بين تناول البيتزا وبين الايس كريم وذلك بشكل دائم؟ ",
"لو خيروك |  بين إمكانية تواجدك في الفضاء وبين إمكانية تواجدك في البحر؟ ",
"لو خيروك |  بين تغيير وظيفتك كل سنة أو البقاء بوظيفة واحدة طوال حياتك؟ ",
"لو خيروك |  أسئلة محرجة أسئلة صراحة ماذا ستختار؟ ",
"لو خيروك |  بين الذهاب إلى الماضي والعيش مع جدك أو بين الذهاب إلى المستقبل والعيش مع أحفادك؟ ",
"لو كنت شخص اخر هل تفضل البقاء معك أم أنك ستبتعد عن نفسك؟ ",
"لو خيروك |  بين الحصول على الأموال في عيد ميلادك أو على الهدايا؟ ",
"لو خيروك |  بين القفز بمظلة من طائرة أو الغوص في أعماق البحر؟ ",
"لو خيروك |  بين الاستماع إلى الأخبار الجيدة أولًا أو الاستماع إلى الأخبار السيئة أولًا؟ ",
"لو خيروك |  بين أن تكون رئيس لشركة فاشلة أو أن تكون موظف في شركة ناجحة؟ ",
"لو خيروك |  بين أن يكون لديك جيران صاخبون أو أن يكون لديك جيران فضوليون؟ ",
"لو خيروك |  بين أن تكون شخص مشغول دائمًا أو أن تكون شخص يشعر بالملل دائمًا؟ ",
"لو خيروك |  بين قضاء يوم كامل مع الرياضي الذي تشجعه أو نجم السينما الذي تحبه؟ ",
"لو خيروك |  بين استمرار فصل الشتاء دائمًا أو بقاء فصل الصيف؟ ",
"لو خيروك |  بين العيش في القارة القطبية أو العيش في الصحراء؟ ",
"لو خيروك |  بين أن تكون لديك القدرة على حفظ كل ما تسمع أو تقوله وبين القدرة على حفظ كل ما تراه أمامك؟ ",
"لو خيروك |  بين أن يكون طولك 150 سنتي متر أو أن يكون 190 سنتي متر؟ ",
"لو خيروك |  بين إلغاء رحلتك تمامًا أو بقائها ولكن فقدان الأمتعة والأشياء الخاص بك خلالها؟ ",
"لو خيروك |  بين أن تكون اللاعب الأفضل في فريق كرة فاشل أو أن تكون لاعب عادي في فريق كرة ناجح؟ ",
"لو خيروك |  بين ارتداء ملابس البيت لمدة أسبوع كامل أو ارتداء البدلة الرسمية لنفس المدة؟ ",
"لو خيروك |  بين امتلاك أفضل وأجمل منزل ولكن في حي سيء أو امتلاك أسوأ منزل ولكن في حي جيد وجميل؟ ",
"لو خيروك |  بين أن تكون غني وتعيش قبل 500 سنة، أو أن تكون فقير وتعيش في عصرنا الحالي؟ ",
"لو خيروك |  بين ارتداء ملابس الغوص ليوم كامل والذهاب إلى العمل أو ارتداء ملابس جدك/جدتك؟ ",
"لو خيروك |  بين قص شعرك بشكل قصير جدًا أو صبغه باللون الوردي؟ ",
"لو خيروك |  بين أن تضع الكثير من الملح على كل الطعام بدون علم أحد، أو أن تقوم بتناول شطيرة معجون أسنان؟ ",
"لو خيروك |  بين قول الحقيقة والصراحة الكاملة مدة 24 ساعة أو الكذب بشكل كامل مدة 3 أيام؟ ",
"لو خيروك |  بين تناول الشوكولا التي تفضلها لكن مع إضافة رشة من الملح والقليل من عصير الليمون إليها أو تناول ليمونة كاملة كبيرة الحجم؟ ",
"لو خيروك |  بين وضع أحمر الشفاه على وجهك ما عدا شفتين أو وضع ماسكارا على شفتين فقط؟ ",
"لو خيروك |  بين الرقص على سطح منزلك أو الغناء على نافذتك؟ ",
"لو خيروك |  بين تلوين شعرك كل خصلة بلون وبين ارتداء ملابس غير متناسقة لمدة أسبوع؟ ",
"لو خيروك |  بين تناول مياه غازية مجمدة وبين تناولها ساخنة؟ ",
"لو خيروك |  بين تنظيف شعرك بسائل غسيل الأطباق وبين استخدام كريم الأساس لغسيل الأطباق؟ ",
"لو خيروك |  بين تزيين طبق السلطة بالبرتقال وبين إضافة البطاطا لطبق الفاكهة؟ ",
"لو خيروك |  بين اللعب مع الأطفال لمدة 7 ساعات أو الجلوس دون فعل أي شيء لمدة 24 ساعة؟ ",
"لو خيروك |  بين شرب كوب من الحليب أو شرب كوب من شراب عرق السوس؟ ",
"لو خيروك |  بين الشخص الذي تحبه وصديق الطفولة؟ ",
"لو خيروك |  بين أمك وأبيك؟ ",
"لو خيروك |  بين أختك وأخيك؟ ",
"لو خيروك |  بين نفسك وأمك؟ ",
"لو خيروك |  بين صديق قام بغدرك وعدوك؟ ",
"لو خيروك |  بين خسارة حبيبك/حبيبتك أو خسارة أخيك/أختك؟ ",
"لو خيروك |  بإنقاذ شخص واحد مع نفسك بين أمك أو ابنك؟ ",
"لو خيروك |  بين ابنك وابنتك؟ ",
"لو خيروك |  بين زوجتك وابنك/ابنتك؟ ",
"لو خيروك |  بين جدك أو جدتك؟ ",
"لو خيروك |  بين زميل ناجح وحده أو زميل يعمل كفريق؟ ",
"لو خيروك |  بين لاعب كرة قدم مشهور أو موسيقي مفضل بالنسبة لك؟ ",
"لو خيروك |  بين مصور فوتوغرافي جيد وبين مصور سيء ولكنه عبقري فوتوشوب؟ ",
"لو خيروك |  بين سائق سيارة يقودها ببطء وبين سائق يقودها بسرعة كبيرة؟ ",
"لو خيروك |  بين أستاذ اللغة العربية أو أستاذ الرياضيات؟ ",
"لو خيروك |  بين أخيك البعيد أو جارك القريب؟ ",
"لو خيروك |  يبن صديقك البعيد وبين زميلك القريب؟ ",
"لو خيروك |  بين رجل أعمال أو أمير؟ ",
"لو خيروك |  بين نجار أو حداد؟ ",
"لو خيروك |  بين طباخ أو خياط؟ ",
"لو خيروك |  بين أن تكون كل ملابس بمقاس واحد كبير الحجم أو أن تكون جميعها باللون الأصفر؟ ",
"لو خيروك |  بين أن تتكلم بالهمس فقط طوال الوقت أو أن تصرخ فقط طوال الوقت؟ ",
"لو خيروك |  بين أن تمتلك زر إيقاف موقت للوقت أو أن تمتلك أزرار للعودة والذهاب عبر الوقت؟ ",
"لو خيروك |  بين أن تعيش بدون موسيقى أبدًا أو أن تعيش بدون تلفاز أبدًا؟ ",
"لو خيروك |  بين أن تعرف متى سوف تموت أو أن تعرف كيف سوف تموت؟ ",
"لو خيروك |  بين العمل الذي تحلم به أو بين إيجاد شريك حياتك وحبك الحقيقي؟ ",
"لو خيروك |  بين معاركة دب أو بين مصارعة تمساح؟ ",
"لو خيروك |  بين إما الحصول على المال أو على المزيد من الوقت؟ ",
"لو خيروك |  بين امتلاك قدرة التحدث بكل لغات العالم أو التحدث إلى الحيوانات؟ ",
"لو خيروك |  بين أن تفوز في اليانصيب وبين أن تعيش مرة ثانية؟ ",
"لو خيروك |  بأن لا يحضر أحد إما لحفل زفافك أو إلى جنازتك؟ ",
"لو خيروك |  بين البقاء بدون هاتف لمدة شهر أو بدون إنترنت لمدة أسبوع؟ ",
"لو خيروك |  بين العمل لأيام أقل في الأسبوع مع زيادة ساعات العمل أو العمل لساعات أقل في اليوم مع أيام أكثر؟ ",
"لو خيروك |  بين مشاهدة الدراما في أيام السبعينيات أو مشاهدة الأعمال الدرامية للوقت الحالي؟ ",
"لو خيروك |  بين التحدث عن كل شيء يدور في عقلك وبين عدم التحدث إطلاقًا؟ ",
"لو خيروك |  بين مشاهدة فيلم بمفردك أو الذهاب إلى مطعم وتناول العشاء بمفردك؟ ",
"لو خيروك |  بين قراءة رواية مميزة فقط أو مشاهدتها بشكل فيلم بدون القدرة على قراءتها؟ ",
"لو خيروك |  بين أن تكون الشخص الأكثر شعبية في العمل أو المدرسة وبين أن تكون الشخص الأكثر ذكاءً؟ ",
"لو خيروك |  بين إجراء المكالمات الهاتفية فقط أو إرسال الرسائل النصية فقط؟ ",
"لو خيروك |  بين إنهاء الحروب في العالم أو إنهاء الجوع في العالم؟ ",
"لو خيروك |  بين تغيير لون عينيك أو لون شعرك؟ ",
"لو خيروك |  بين امتلاك كل عين لون وبين امتلاك نمش على خديك؟ ",
"لو خيروك |  بين الخروج بالمكياج بشكل مستمر وبين الحصول على بشرة صحية ولكن لا يمكن لك تطبيق أي نوع من المكياج؟ ",
"لو خيروك |  بين أن تصبحي عارضة أزياء وبين ميك اب أرتيست؟ ",
"لو خيروك |  بين مشاهدة كرة القدم أو متابعة الأخبار؟ ",
"لو خيروك |  بين موت شخصية بطل الدراما التي تتابعينها أو أن يبقى ولكن يكون العمل الدرامي سيء جدًا؟ ",
"لو خيروك |  بين العيش في دراما قد سبق وشاهدتها ماذا تختارين بين الكوميديا والتاريخي؟ ",
"لو خيروك |  بين امتلاك القدرة على تغيير لون شعرك متى تريدين وبين الحصول على مكياج من قبل خبير تجميل وذلك بشكل يومي؟ ",
"لو خيروك |  بين نشر تفاصيل حياتك المالية وبين نشر تفاصيل حياتك العاطفية؟ ",
"لو خيروك |  بين البكاء والحزن وبين اكتساب الوزن؟ ",
"لو خيروك |  بين تنظيف الأطباق كل يوم وبين تحضير الطعام؟ ",
"لو خيروك |  بين أن تتعطل سيارتك في نصف الطريق أو ألا تتمكنين من ركنها بطريقة صحيحة؟ ",
"لو خيروك |  بين إعادة كل الحقائب التي تملكينها أو إعادة الأحذية الجميلة الخاصة بك؟ ",
"لو خيروك |  بين قتل حشرة أو متابعة فيلم رعب؟ ",
"لو خيروك |  بين امتلاك قطة أو كلب؟ ",
"لو خيروك |  بين الصداقة والحب ",
"لو خيروك |  بين تناول الشوكولا التي تحبين طوال حياتك ولكن لا يمكنك الاستماع إلى الموسيقى وبين الاستماع إلى الموسيقى ولكن لا يمكن لك تناول الشوكولا أبدًا؟ ",
"لو خيروك |  بين مشاركة المنزل مع عائلة من الفئران أو عائلة من الأشخاص المزعجين الفضوليين الذين يتدخلون في كل كبيرة وصغيرة؟ ",
}
return send(msg_chat_id,msg_id,texting[math.random(#texting)],'md')
end
end
if text == "حروف" or text == "حرف" or text == "الحروف" then 
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local texting = {" جماد بحرف ⇦ ر  ", 
" مدينة بحرف ⇦ ع  ",
" حيوان ونبات بحرف ⇦ خ  ", 
" اسم بحرف ⇦ ح  ", 
" اسم ونبات بحرف ⇦ م  ", 
" دولة عربية بحرف ⇦ ق  ", 
" جماد بحرف ⇦ ي  ", 
" نبات بحرف ⇦ ج  ", 
" اسم بنت بحرف ⇦ ع  ", 
" اسم ولد بحرف ⇦ ع  ", 
" اسم بنت وولد بحرف ⇦ ث  ", 
" جماد بحرف ⇦ ج  ",
" حيوان بحرف ⇦ ص  ",
" دولة بحرف ⇦ س  ",
" نبات بحرف ⇦ ج  ",
" مدينة بحرف ⇦ ب  ",
" نبات بحرف ⇦ ر  ",
" اسم بحرف ⇦ ك  ",
" حيوان بحرف ⇦ ظ  ",
" جماد بحرف ⇦ ذ  ",
" مدينة بحرف ⇦ و  ",
" اسم بحرف ⇦ م  ",
" اسم بنت بحرف ⇦ خ  ",
" اسم و نبات بحرف ⇦ ر  ",
" نبات بحرف ⇦ و  ",
" حيوان بحرف ⇦ س  ",
" مدينة بحرف ⇦ ك  ",
" اسم بنت بحرف ⇦ ص  ",
" اسم ولد بحرف ⇦ ق  ",
" نبات بحرف ⇦ ز  ",
"  جماد بحرف ⇦ ز  ",
"  مدينة بحرف ⇦ ط  ",
"  جماد بحرف ⇦ ن  ",
"  مدينة بحرف ⇦ ف  ",
"  حيوان بحرف ⇦ ض  ",
"  اسم بحرف ⇦ ك  ",
"  نبات و حيوان و مدينة بحرف ⇦ س  ", 
"  اسم بنت بحرف ⇦ ج  ", 
"  مدينة بحرف ⇦ ت  ", 
"  جماد بحرف ⇦ ه  ", 
"  اسم بنت بحرف ⇦ ر  ", 
" اسم ولد بحرف ⇦ خ  ", 
" جماد بحرف ⇦ ع  ",
" حيوان بحرف ⇦ ح  ",
" نبات بحرف ⇦ ف  ",
" اسم بنت بحرف ⇦ غ  ",
" اسم ولد بحرف ⇦ و  ",
" نبات بحرف ⇦ ل  ",
"مدينة بحرف ⇦ ع  ",
"دولة واسم بحرف ⇦ ب  ",
} 
return bot.sendText(msg_chat_id,msg_id,texting[math.random(#texting)],'md')
end
end
if text == "انصحني" or text == "انصحنى" or text == "انصح" then 
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local vBandav_Msg = { 
"عامل الناس بأخلاقك ولا بأخلاقهم", 
"الجمال يلفت الأنظار لكن الطيبه تلفت القلوب ", 
"الاعتذار عن الأخطاء لا يجرح كرامتك بل يجعلك كبير في نظر الناس ",
"لا ترجي السماحه من بخيل.. فما في البار لظمان ماء",
"لا تحقرون صغيره إن الجبال من الحصي",
"لا تستحي من إعطاء فإن الحرمان أقل منه ", 
"لا تظلم حتى لا تتظلم ",
"لا تقف قصاد الريح ولا تمشي معها ",
"لا تكسب موده التحكم الا بالتعقل",
"لا تمد عينك في يد غيرك ",
"لا تملح الا لمن يستحقاها ويحافظ عليها",
"لا حياه للإنسان بلا نبات",
"لا حياه في الرزق.. ولا شفاعه في الموت",
"كما تدين تدان",
"لا دين لمن لا عهد له ",
"لا سلطان على الدوق فيما يحب أو بكره",
"لا مروه لمن لادين له ",
"لا يدخل الجنه من لايأمن من جازه بوائقه",
"يسروا ولا تعسروا... ويشورا ولا تنفروا",
"يدهم الصدر ما يبني العقل الواسع ",
"أثقل ما يوضع في الميزان يوم القيامة حسن الخلق ",
"أجهل الناس من ترك يقين ما عنده لظن ما عند الناس ",
"أحياناً.. ويصبح الوهم حقيقه ",
"مينفعش تعاتب حد مبيعملش حساب لزعلك عشان متزعلش مرتين . ",
"السفر ومشاهده اماكن مختلفه وجديده ",
"عدم تضيع الفرص واسثمارها لحظه مجبئها ",
" اعطاء الاخرين اكثر من ما يتوقعون",
"معامله الناس بلطف ولكن عدم السماح لاحد بستغالال ذالك ",
"تكوين صدقات جديده مع الحفظ بلاصدقاء القودامي ",
"تعلم اصول المهنه بدلا من تضيع الوقت ف تعلم حيل المهنه ",
"مدح ع الاقل ثلاث اشخاص يوميا ",
"النظر ف عيون الشخاص عند مخاطبتهم ",
"التحلي بلسماح مع الاخرين او النفس ",
"الاكثار من قول كلمه شكرا ",
" مصافحه الاخرين بثبات وقوة ",
"الابتعاد عن المناطق السيئه السمعه لتجنب الاحداث السئه ",
" ادخار 10٪ع الاقل من الدخل",
" تجنب المخاوف من خلال التعلم من تجارب مختلفه",
" الحفاظ ع السمعه لانها اغلي ما يملك الانسان",
" تحويل الاعداء الي اصدقاء من خلال القيام بعمل جيد",
"لا تصدق كل ما تسمعع. ولا تنفق كل ما تمتلك . ولا تنم قدر ما ترغب ",
" اعتني بسمعتك جيدا فستثبت للك الايام انها اغلي ما تملك",
"حين تقول والدتك ستندم ع فعل ذالك ستندم عليه غالبا.. ",
" لا تخش العقبات الكبيره فخلفها تقع الفرص العظيمه",
"قد لا يتطلب الامر اكثر من شخص واحد لقلب حياتك رأس ع عقب ",
"اختر رفيقه حياتك بحرص فهو قرار سيشكل 90٪من سعادتك او بؤسك ",
" اقلب اداءك الاصدقاء بفعل شي جميل ومفجائ لهم",
"حين تدق الفرصه ع باباك ادعوها للبيت ",
"تعلم القواعد جيدا ثن اكسر بعدها ",
"احكم ع نجاحك من خلال قدرتك ع العطاء وليس الاخذ ",
" لا تتجاهل الشيطان مهما بدل ثيابه",
"ركز ع جعل الاشياء افضل وليس اكبر او اعظم ",
"كن سعيد  بما تمتلك واعمل لامتلاك ما تريد ",
"اعط الناس اكثر من ما يتوقعون ",
" لا تكن منشغل لدرجه عدم التعرف ع اصدقاء جدد",
"استحمه يوم العيد يمعفن🤓",
"مش تحب اي حد يقرب منك ",
" خليك مع البت راجل خليك تقيل🥥",
" انصح نفسك بنفسك بمت😆",
" كنت نصحت نفسي ياخويا😹", 
} 
return bot.sendText(msg_chat_id,msg_id,vBandav_Msg[math.random(#vBandav_Msg)],'md')
end
end
if text == "نكته" or text == "قولي نكته" or text == "عايز اضحك" then 
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
local texting = {" مرة واحد مصري دخل سوبر ماركت في الكويت عشان يشتري ولاعة راح عشان يحاسب بيقوله الولاعة ديه بكام قاله دينار قاله منا عارف ان هي نار بس بكام 😂",
"بنت حبت تشتغل مع رئيس عصابة شغلها في غسيل الأموال 😂",
"واحد بيشتكي لصاحبه بيقوله أنا مافيش حد بيحبني ولا يفتكرني أبدًا، ومش عارف أعمل إيه قاله سهلة استلف من الناس فلوس هيسألوا عليك كل يوم 😂",
"ﻣﺮه واﺣﺪ ﻣﺴﻄﻮل ﻣﺎﺷﻰ ﻓﻰ اﻟﺸﺎرع ﻟﻘﻰ مذﻳﻌﻪ ﺑﺘﻘﻮﻟﻪ ﻟﻮ ﺳﻤﺤﺖ ﻓﻴﻦ اﻟﻘﻤﺮ؟ ﻗﺎﻟﻬﺎ اﻫﻮه ﻗﺎﻟﺘﻠﻮ ﻣﺒﺮوك ﻛﺴﺒﺖ ﻋﺸﺮﻳﻦ ﺟﻨﻴﻪ ﻗﺎﻟﻬﺎ ﻓﻰ واﺣﺪ ﺗﺎﻧﻰ ﻫﻨﺎك اﻫﻮه 😂",
"واحده ست سايقه على الجي بي اي قالها انحرفي قليلًا قلعت الطرحة 😂",
"مرة واحد غبي معاه عربية قديمة جدًا وبيحاول يبيعها وماحدش راضي يشتريها.. راح لصاحبه حكاله المشكلة صاحبه قاله عندي لك فكرة جهنمية هاتخليها تتباع الصبح أنت تجيب علامة مرسيدس وتحطها عليها. بعد أسبوعين صاحبه شافه صدفة قاله بعت العربية ولا لاء؟ قاله انت  مجنون حد يبيع مرسيدس ??",
"مره واحد بلديتنا كان بيدق مسمار فى الحائط فالمسمار وقع منه فقال له :تعالى ف مجاش, فقال له: تعالي ف مجاش. فراح بلديتنا رامي على المسمار شوية مسمامير وقال: هاتوه 😂",
"واحدة عملت حساب وهمي ودخلت تكلم جوزها منه ومبسوطة أوي وبتضحك سألوها بتضحكي على إيه قالت لهم أول مرة يقول لي كلام حلو من ساعة ما اتجوزنا 😂",
"بنت حبت تشتغل مع رئيس عصابة شغلها في غسيل الأموال 😂",
"مره واحد اشترى فراخ علشان يربيها فى قفص صدره 😂",
"مرة واحد من الفيوم مات اهله صوصوا عليه 😂",
"ﻣﺮه واﺣﺪ ﻣﺴﻄﻮل ﻣﺎﺷﻰ ﻓﻰ اﻟﺸﺎرع ﻟﻘﻰ مذﻳﻌﻪ ﺑﺘﻘﻮﻟﻪ ﻟﻮ ﺳﻤﺤﺖ ﻓﻴﻦ اﻟﻘﻤﺮ ﻗﺎﻟﻬﺎ اﻫﻮه ﻗﺎﻟﺘﻠﻮ ﻣﺒﺮوك ﻛﺴﺒﺖ ﻋﺸﺮﻳﻦ ﺟﻨﻴﻪ ﻗﺎﻟﻬﺎ ﻓﻰ واﺣﺪ ﺗﺎﻧﻰ ﻫﻨﺎك اﻫﻮه 😂",
"مره واحد شاط كرة فى المقص اتخرمت. 😂",
"مرة واحد رايح لواحد صاحبهفا البواب وقفه بيقول له انت طالع لمين قاله طالع أسمر شوية لبابايا قاله يا أستاذ طالع لمين في العماره 😂",
} 
return bot.sendText(msg_chat_id,msg_id,texting[math.random(#texting)],'md')
end
end
if text == "معاني" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
Redis:del(Fast.."Set:Maany"..msg.chat_id)
Maany_Rand = {"قرد","دجاجه","بطريق","ضفدع","بومه","نحله","ديك","جمل","بقره","دولفين","تمساح","قرش","نمر","اخطبوط","سمكه","خفاش","اسد","فأر","ذئب","فراشه","عقرب","زرافه","قنفذ","تفاحه","باذنجان"}
name = Maany_Rand[math.random(#Maany_Rand)]
Redis:set(Fast.."Game:Meaningof"..msg.chat_id,name)
name = string.gsub(name,"قرد","🐒")
name = string.gsub(name,"دجاجه","🐔")
name = string.gsub(name,"بطريق","🐧")
name = string.gsub(name,"ضفدع","🐸")
name = string.gsub(name,"بومه","🦉")
name = string.gsub(name,"نحله","🐝")
name = string.gsub(name,"ديك","🐓")
name = string.gsub(name,"جمل","🐫")
name = string.gsub(name,"بقره","🐄")
name = string.gsub(name,"دولفين","🐬")
name = string.gsub(name,"تمساح","🐊")
name = string.gsub(name,"قرش","🦈")
name = string.gsub(name,"نمر","🐅")
name = string.gsub(name,"اخطبوط","🐙")
name = string.gsub(name,"سمكه","🐟")
name = string.gsub(name,"خفاش","🦇")
name = string.gsub(name,"اسد","🦁")
name = string.gsub(name,"فأر","🐭")
name = string.gsub(name,"ذئب","🐺")
name = string.gsub(name,"فراشه","🦋")
name = string.gsub(name,"عقرب","🦂")
name = string.gsub(name,"زرافه","🦒")
name = string.gsub(name,"قنفذ","🦔")
name = string.gsub(name,"تفاحه","🍎")
name = string.gsub(name,"باذنجان","🍆")
return send(msg.chat_id,msg.id,"• اسرع واحد يدز معنى السمايل ~ {"..name.."}","md",true)  
end
end
if text == "اعلام" or tect == "الاعلام" then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
AlamSpeed = {"انجلترا","البرازيل","مصر","كندا","فرنسا","اسبانيا","الارجنتين","اليمن","تونس","العراق","فلسطين","امريكا","Barlo","روسيا","البحرين","قطر","الاردن","الصين","ليبيا","السعوديه","الجزائر","لبنان","كوريا","ايطاليا","تركيا","البرتغال","المكسيك","سويسرا","نيجيريا","كرواتيا","السودان","الكاميرون","النيجر","المغرب"};
name = AlamSpeed[math.random(#AlamSpeed)]
Redis:set(Fast.."Game:Alam"..msg.chat_id,name)
name = string.gsub(name,"انجلترا","🇦🇺")
name = string.gsub(name,"البرازيل","🇧🇷")
name = string.gsub(name,"مصر","🇪🇬")
name = string.gsub(name,"كندا","🇨🇦")
name = string.gsub(name,"فرنسا","🏴‍☠️")
name = string.gsub(name,"اسبانيا","🇪🇦")
name = string.gsub(name,"الارجنتين","🇦🇷")
name = string.gsub(name,"اليمن","🇾🇪")
name = string.gsub(name,"تونس","🇹🇳")
name = string.gsub(name,"العراق","🇮🇶")
name = string.gsub(name,"فلسطين","🇵🇸")
name = string.gsub(name,"امريكا","🇺🇸")
name = string.gsub(name,"سوريا","🇸🇾")
name = string.gsub(name,"روسيا","🇷🇺")
name = string.gsub(name,"البحرين","🇧🇭")
name = string.gsub(name,"قطر","🇶🇦")
name = string.gsub(name,"الاردن","🇯🇴")
name = string.gsub(name,"الصين","🇨🇳")
name = string.gsub(name,"ليبيا","🇱🇾")
name = string.gsub(name,"السعوديه","🇸🇦")
name = string.gsub(name,"الجزائر","🇩🇿")
name = string.gsub(name,"لبنان","🇱🇧")
name = string.gsub(name,"كوريا","🇰🇷")
name = string.gsub(name,"ايطاليا","🇮🇹")
name = string.gsub(name,"تركيا","🇹🇷")
name = string.gsub(name,"البرتغال","🇵🇹")
name = string.gsub(name,"المكسيك","🇲🇽")
name = string.gsub(name,"سويسرا","🇨🇭")
name = string.gsub(name,"كرواتيا","🇭🇷")
name = string.gsub(name,"السودان","🇸🇩")
name = string.gsub(name,"الكاميرون","🇨🇲")
name = string.gsub(name,"النيجر","🇳🇪")
name = string.gsub(name,"المغرب","🇲🇦")
return bot.sendText(msg_chat_id,msg_id," ✶⁞⸽ اسرع واحد يكتب اسم العلم ~ ⟦ "..name.." ⟧","md",true)  
end
end
if text == "العكس" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
Redis:del(Fast.."Set:Aks"..msg.chat_id)
katu = {"باي","فهمت","موزين","اسمعك","احبك","موحلو","نضيف","حاره","ناصي","جوه","سريع","ونسه","طويل","سمين","ضعيف","قصير","شجاع","رحت","عدل","نشيط","شبعان","موعطشان","خوش ولد","اني","هادئ"}
name = katu[math.random(#katu)]
Redis:set(Fast.."Game:Reflection"..msg.chat_id,name)
name = string.gsub(name,"باي","هلو")
name = string.gsub(name,"فهمت","مافهمت")
name = string.gsub(name,"موزين","زين")
name = string.gsub(name,"اسمعك","ماسمعك")
name = string.gsub(name,"احبك","ماحبك")
name = string.gsub(name,"موحلو","حلو")
name = string.gsub(name,"نضيف","وصخ")
name = string.gsub(name,"حاره","بارده")
name = string.gsub(name,"ناصي","عالي")
name = string.gsub(name,"جوه","فوك")
name = string.gsub(name,"سريع","بطيء")
name = string.gsub(name,"ونسه","ضوجه")
name = string.gsub(name,"طويل","قزم")
name = string.gsub(name,"سمين","ضعيف")
name = string.gsub(name,"ضعيف","قوي")
name = string.gsub(name,"قصير","طويل")
name = string.gsub(name,"شجاع","جبان")
name = string.gsub(name,"رحت","اجيت")
name = string.gsub(name,"عدل","ميت")
name = string.gsub(name,"نشيط","كسول")
name = string.gsub(name,"شبعان","جوعان")
name = string.gsub(name,"موعطشان","عطشان")
name = string.gsub(name,"خوش ولد","موخوش ولد")
name = string.gsub(name,"اني","مطي")
name = string.gsub(name,"هادئ","عصبي")
return send(msg.chat_id,msg.id,"• اسرع واحد يدز العكس ~ {"..name.."}","md",true)  
end
end
if text == "بات" or text == "محيبس" then   
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '➀ » { 👊 }', data = '/Mahibes1'}, {text = '➁ » { 👊 }', data = '/Mahibes2'}, 
},
{
{text = '➂ » { 👊 }', data = '/Mahibes3'}, {text = '➃ » { 👊 }', data = '/Mahibes4'}, 
},
{
{text = '➄ » { 👊 }', data = '/Mahibes5'}, {text = '➅ » { 👊 }', data = '/Mahibes6'}, 
},
}
}
return send(msg.chat_id,msg.id, [[*
• لعبه المحيبس هي لعبة الحظ 
• جرب حظك ويه البوت واتونس 
• كل ما عليك هوا الضغط على اليد في الازرار
*]],"md",false, false, false, false, reply_markup)
end
end
if text == "بات" or text == "محيبس" then   
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then 
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '➀ » { 👊 }', data = '/Mahibes1'}, {text = '➁ » { 👊 }', data = '/Mahibes2'}, 
},
{
{text = '➂ » { 👊 }', data = '/Mahibes3'}, {text = '➃ » { 👊 }', data = '/Mahibes4'}, 
},
{
{text = '➄ » { 👊 }', data = '/Mahibes5'}, {text = '➅ » { 👊 }', data = '/Mahibes6'}, 
},
}
}
return send(msg.chat_id,msg.id, [[*
• لعبه المحيبس هي لعبة الحظ 
• جرب حظك ويه البوت واتونس 
• كل ما عليك هوا الضغط على اليد في الازرار
*]],"md",false, false, false, false, reply_markup)
end
end
if text == "حجره" then
if Redis:get(Fast.."Fast:Status:Games:malk"..msg.chat_id) then
return false 
end
if not Redis:get(Fast.."Fast:Status:Games"..msg.chat_id) then
return false
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '🪨', data = '/Hgr'}, {text = '📃', data = '/Warka'}, 
},
{
{text = '✂', data = '/Mukas'}, 
},
}
}
return send(msg.chat_id,msg.id,[[
⇜ اختر احد الازرار ( حجره ، ورقه ، مقص )
]],"md",false, false, false, false, reply_markup)
end

if text == 'اسالنى' or text == 'اختبار الذكاء' or text == 'الذكاء' then
photo = "https://t.me/hjatwklas/8"
local Name = '⍆ هل انت جهاز للعب ⍆'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'ابدا العب', callback_data = msg.sender_id.user_id..'/guitar'}
},
{
{text = '✈ • أضف البوت إلي مجموعتك • ✈', url = 't.me/'..UserBot..'?startgroup=new'}, 
},
}
local msgg = msg_id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id=" .. msg_chat_id .. "&photo="..photo.."&caption=".. URL.escape(Name).."&photo="..msgg.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == 'مريم' or text == 'لعبة مريم' or text == 'marim' then
photo = "https://t.me/hjatwklas/7"
local Name = '🥀اطفي النور واستمتع بلعبه🧟‍♀️'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'حسنا', callback_data = msg.sender_id.user_id..'/marim1'}
},
{
{text = '✈ • أضف البوت إلي مجموعتك • ✈', url = 't.me/'..UserBot..'?startgroup=new'}, 
},
}
local msgg = msg_id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id=" .. msg_chat_id .. "&photo="..photo.."&caption=".. URL.escape(Name).."&photo="..msgg.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == "غنيلي (1)" or text == "غني" then 
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:get(Fast.."knele"..msg.chat_id) then
Abs = math.random(2,140); 
local Text ='*• تم اختيار الاغنيه لك*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = '- قناه السورس .',url='http://t.me/'..chsource..''}},
}
local MsgId = msg.id/2097152/0.5
local MSGID = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendVoice?chat_id=' .. msg.chat_id .. '&voice=https://t.me/TEAMSUL/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MSGID.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end
end
if text == "غنيلي (2)" then
local t = "اليك اغنيه عشوائيه من البوت"
Num = math.random(8,83)
Mhm = math.random(108,143)
Mhhm = math.random(166,179)
Mmhm = math.random(198,216)
Mhmm = math.random(257,626)
local Texting = {Num,Mhm,Mhhm,Mmhm,Mhmm}
local Rrr = Texting[math.random(#Texting)]
local m = "https://t.me/mmsst13/"..Rrr..""
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'اغنيه اخري', callback_data=msg.sender_id.user_id.."/songg"},
},
}
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendaudio?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&audio="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown&reply_markup="..JSON.encode(keyboard))
end

if text == "⌖ متحركه ⌖" then
Abs = math.random(2,1075); 
local Text ='*• تم اختيار المتحركه لك*'
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendanimation?chat_id=' .. msg.chat_id .. '&animation=https://t.me/GifWaTaN/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown") 
end

if text == "⌖ خلفيات ⌖" then
Abs = math.random(4,1120); 
local Text ='*• تم اختيار الصوره لك*'
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/PhotosWaTaN/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown") 
end

if text == "⌖ استوري ⌖" then
Rrr = math.random(4,50)
local m = "https://t.me/Qapplu/"..Rrr..""
local t = "آحلي استوري ليك يبنلقمرر • 🌝🥳"
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendaudio?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&audio="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "⌖ غنيلي فيديو ⌖" then
Rrr = math.random(1,31)
local m = "https://t.me/ghanilyParis/"..Rrr..""
local t = "🎥 تم اختيار اغنيه بفيديو لك يبنلقمر •"
local rep = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendaudio?chat_id="..msg_chat_id.."&caption="..URL.escape(t).."&audio="..m.."&reply_to_message_id="..rep.."&parse_mode=Markdown")
end
if text == "⌖ قرآن ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار قران'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'قناة السورس',url="t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendVoice?chat_id=' .. msg.chat_id .. '&voice=https://t.me/djsjdjdd/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ جداريات ⌖" then 
Abs = math.random(2,140); 
local Text ='• تم اختيار جداريات'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/usjeijw/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات شباب ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار افتار عيال'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/LoreBots3/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ هيدرات ⌖" then 
Abs = math.random(2,140); 
local Text ='• تم اختيار هيدرات'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/flflfldld/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات بنات ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار افتار بنات'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/LoreBots2/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات رسم ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار افتار رسم'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/LoreBots5/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات فكتوري ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار افتار فكتوري'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/LoreBots6/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات سينمائيه ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار افتار السينمائي'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/LoreBots1/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات اقتباس ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار اقتباس'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/LoreBots8/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات كرتون ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار افتار انمي'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/LoreBots7/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات عبارات ⌖" then 
Abs = math.random(2,140); 
local Text ='• تم اختيار عباره'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/LoreBots9/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "⌖ رمزيات فنانين عرب ⌖" then
Abs = math.random(2,140); 
local Text ='• تم اختيار افتار فنانين'
keyboardd = {} 
keyboardd.inline_keyboard = {
{
{text = 'قناة السورس', url = "https://t.me/source_av"}
},
}
local msg_id = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/FPPPH/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard)) 
end

if text == "خمن" or text == "تخمين" then   
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
Num = math.random(1,20)
Redis:set(Fast.."Game:Estimate"..msg.chat_id..msg.sender_id.user_id,Num)  
return send(msg.chat_id,msg.id,"\n• اهلا بك عزيزي في لعبة التخمين :\nٴ━━━━━━━━━━\n".."• ملاحظه لديك { 3 } محاولات فقط فكر قبل ارسال تخمينك \n\n".."• سيتم تخمين عدد ما بين ال {1 و 20} اذا تعتقد انك تستطيع الفوز جرب واللعب الان ؟ ","md",true)  
end
end
if text == 'اسئله' then   
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
t1 = [[
ماهو اطول نهر في العالم 
1- النيل  
2- الفرات 
3- نهر الكونغو

• ارسل  الجواب الصحيح فقط
]]
t2 = [[
ماعدد عظام الوجه؟
1- 15
2- 13
3- 14 

• ارسل  الجواب الصحيح فقط
]]
t3 =[[
كراسي بيضاء وجدران ورديه اذا اغلقته اصبح ظلام  فمن اكون؟

1- الفم 
2- الاذن
3- الثلاجه

• ارسل  الجواب الصحيح فقط
]]
t4 =[[
كم جزء تحتوي مسلسل وادي الذئاب؟

1- 7
2- 15
3- 11

• ارسل  الجواب الصحيح فقط
]]
t5 =[[
كم جزء يحتوي القران الكريم؟

1- 60
2- 70
3- 30 

• ارسل  الجواب الصحيح فقط
]]
t6 =[[
من هوه اغنى رئيس في العالم؟

1- ترامب
2- اوباما
3- بوتين  

• ارسل  الجواب الصحيح فقط
]]

t7 =[[
من هوه مؤسس شركه ابل العالميه 

1-لاري بايج 
2- بيا غايتز
3- ستيف جوبر

• ارسل  الجواب الصحيح فقط
]]
t8 =[[
ماهي عاصمه فرنسا؟

1- باريس 
2- لوين 
3- موسكو 

• ارسل  الجواب الصحيح فقط
]]
t9 =[[
ماعدد دول العربيه التي توجد في افريقيا 

1- 10 
2- 17
3- 9

• ارسل  الجواب الصحيح فقط
]]
t11 =[[
ماهو الحيوان الذي يحمل 50 فوق وزنه؟
1-الفيل
2- النمل  
3- الثور

• ارسل  الجواب الصحيح فقط
]]
t12 =[[
ماذا يوجد بيني وبينك؟  
1- الضل
2- الاخلاق
3-حرف الواو  

• ارسل  الجواب الصحيح فقط
]]
t13 =[[
ماهو الشيء النبات ينبت للانسان بلا بذر؟
1-الاضافر 
2- الاسنان
3- الشعر

• ارسل  الجواب الصحيح فقط
]]
t14 =[[
م̷ـــِْن هو اول الرسول الى الارض؟
1- ادم
2- نوح
3-ابراهيم 

• ارسل  الجواب الصحيح فقط
]]
t15 =[[
ما هو الشّيء الذي يستطيع المشي بدون أرجل والبكاء بدون أعين؟
1- سحاب
2- بئر
3- نهر

• ارسل  الجواب الصحيح فقط
]]
t16 =[[
ما الشيء الذي نمتلكه , لكنّ غيرنا يستعمله أكثر منّا؟
1- العمر
2- ساعه
3- الاسم

• ارسل  الجواب الصحيح فقط
]]
t17 =[[
اصفر اللون سارق عقول اهل الكون وحارمهم لذيذ النوم
1- نحاس
2- الماس
3- ذهب

• ارسل  الجواب الصحيح فقط
]]
t18 =[[
في الليل ثلاثة لكنه في النهار واحده فما هو
 1- حرف الباء
 2- حرف الام 
3- حرف الراء

• ارسل  الجواب الصحيح فقط
]]
t19 =[[
على قدر اصل العزم تأتي؟
1- العزائم 
2- المكارم
3- المبائب

• ارسل  الجواب الصحيح فقط
]]

t20 =[[
ماهي جمع كلمه انسه ؟
1- سيدات
2- انسات 
3- قوانص

• ارسل  الجواب الصحيح فقط
]]
t21 =[[
اله اتسعلمت قديما في الحروب؟
1- الصاروخ
2- المسدس
3- المنجنيق 

• ارسل  الجواب الصحيح فقط
]]
t22 =[[
تقع لبنان في قاره؟
1- افريقيا 
2- اسيا  
3- امركيا الشماليه

• ارسل  الجواب الصحيح فقط
]]

t23 =[[
1- ماهو الحيوان الذي يلقب بملك الغابه؟
1-الفيل
2- الاسد 
3- النمر

• ارسل  الجواب الصحيح فقط
]]
t24 =[[
كم صفرا للمليون ؟
1- 4 
2- 3
3-6

• ارسل  الجواب الصحيح فقط
]]
t25 =[[
ما اسم صغير الحصان؟
1- مهر  
2- جرو
3- عجل

• ارسل  الجواب الصحيح فقط
]]
t26 =[[
ما الحيوان الذي ينام واحدى عينه مفتوحه؟

1- القرش
2- الدلفين 
3- الثعلب

• ارسل  الجواب الصحيح فقط
]]
t27 =[[
ماهي القاره التي تلقب بالقاره العجوز؟

1- امريكا الشماليه 
2- امريكا الجنوبيه
3- افريقيا 

• ارسل  الجواب الصحيح فقط
]]
t28 =[[
ما اسم المعدن الموجود فيي الحاله السائله 

1- النحاس 
2- الحديد
3- الزئبق 
 
• ارسل  الجواب الصحيح فقط
]]
t29 =[[
ماهي عاصمه انجلترا؟
1- لندن  
2- لفرسول
3- تركيا

• ارسل  الجواب الصحيح فقط
]]
t30 =[[
ماهو الشئ الذي برأسه سبع فتحات

1- الهاتف
2- التلفاز
3- الانسان 

• ارسل  الجواب الصحيح فقط
]]
t31 =[[
ماهي عاصمه اليابان ؟
1- بانقول
2- نيو دلهي
3- طوكيو 

• ارسل  الجواب الصحيح فقط
]]
t32 =[[
من هي زوجه الرسول الاكبر منه سنآ؟

1- حفضه
2- زينب 
3- خديجه 

• ارسل  الجواب الصحيح فقط
]]
TAHA = {t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31,t32,t1,t2,t3,t4,t5,t6,t7,t8,t9,t11,t12,t13,t14,t15}
local SENDTEXT = TAHA[math.random(#TAHA)]
if SENDTEXT:find('النيل') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'النيل') 
elseif SENDTEXT:find('14') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'14') 
elseif SENDTEXT:find('الفم') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'الفم') 
elseif SENDTEXT:find('11') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'11') 
elseif SENDTEXT:find('30') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'30') 
elseif SENDTEXT:find('بوتين') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'بوتين') 
elseif SENDTEXT:find('ستيف جوبر') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'ستيف جوبر') 
elseif SENDTEXT:find('باريس') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'باريس') 
elseif SENDTEXT:find('10') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'10') 
elseif SENDTEXT:find('النمل') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'النمل') 
elseif SENDTEXT:find('حرف الواو') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'حرف الواو') 
elseif SENDTEXT:find('الشعر') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'الشعر') 
elseif SENDTEXT:find('ابراهيم') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'ابراهيم') 
elseif SENDTEXT:find('سحاب') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'سحاب') 
elseif SENDTEXT:find('الاسم') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'الاسم') 
elseif SENDTEXT:find('ذهب') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'ذهب') 
elseif SENDTEXT:find('حرف الام') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'حرف الام') 
elseif SENDTEXT:find('العزائم') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'العزائم') 
elseif SENDTEXT:find('انسات') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'انسات') 
elseif SENDTEXT:find('المنجنيق') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'المنجنيق') 
elseif SENDTEXT:find('اسيا') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'اسيا') 
elseif SENDTEXT:find('الاسد') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'الاسد') 
elseif SENDTEXT:find('6') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'6') 
elseif SENDTEXT:find('مهر') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'مهر') 
elseif SENDTEXT:find('الدلفين') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'الدلفين') 
elseif SENDTEXT:find('اوروبا') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'اوروبا') 
elseif SENDTEXT:find('الزئبق') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'الزئبق') 
elseif SENDTEXT:find('لندن') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'لندن') 
elseif SENDTEXT:find('الانسان') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'الانسان') 
elseif SENDTEXT:find('طوكيو') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'طوكيو') 
elseif SENDTEXT:find('خديجه') then
Redis:set(Fast.."GAME:CHER"..msg.chat_id,'خديجه') 
end
send(msg.chat_id,msg.id,SENDTEXT)     
return false  
end
end
if Redis:get(Fast.."GAME:CHER"..msg.chat_id) and (text == Redis:get(Fast.."GAME:CHER"..msg.chat_id)) then  
if text then
send(msg.chat_id,msg.id,'*• احسنت اجابتك صحيحه ✓*',"md")     
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
Redis:del(Fast.."GAME:CHER"..msg.chat_id)
elseif text == 'الفيل' or text == 'الثور' or text == 'الحصان' or text == '7' or text == '9' or text == '8' or text == 'لوين' or text == 'موسكو' or text == 'مانكو' or text == '20' or text == '30' or text == '28' or text == 'ترامب' or text == 'اوباما' or text == 'كيم جونغ' or text == '50' or text == '70' or text == '40' or text == '7' or text == '3' or text == '10' or text == '4' or text == 'الاذن' or text == 'الثلاجه' or text == 'الغرفه' or text == '15' or text == '17' or text == '25' or text == 'الفرات' or text == 'نهر الكونغو' or text == 'المسيبي' or text == 'بيا بايج' or text == 'لاري بيج' or text == 'بيا مارك زوكيربرج' or text == 'الفيل' or text == 'النمر' or text == 'الفهد' or text == 'بانقول' or text == 'نيو دلهي' or text == 'بيكن' or text == 'الهاتف' or text == 'التلفاز' or text == 'المذياع' or text == 'لفرسول' or text == 'تركيا' or text == 'بغداد' or text == 'النحاس' or text == 'الحديد' or text == 'الفضه' or text == 'امريكا الشماليه' or text == 'امريكا الجنوبيه' or text == 'افريقيا' or text == 'القرش' or text == 'الثعلب' or text == 'الكلب' or text == 'للجرو' or text == 'العجل' or text == 'الحمار' or text == '3' or text == '5' or text == '6' or text == 'اوربا' or text == 'افريقيا' or text == 'امريكا الجنوبيه' or text == 'افريقيا' or text == 'امريكا الشماليه' or text == 'اوربا' or text == 'الصاروخ' or text == 'المسدس' or text == 'الطائرات' or text == 'سيدات' or text == 'قوانص' or text == 'عوانس' or text == 'المكارم' or text == 'المبائم' or text == 'المعازم' or text == 'حرف الغاء' or text == 'حرف الواو' or text == 'حرف النون' or text == 'نحاس' or text == 'الماس' or text == 'حديد' or text == 'العمر' or text == 'ساعه' or text == 'الحذاء' or text == 'بئر' or text == 'نهر' or text == 'شلال' or text == 'ادم' or text == 'نوح' or text == 'عيسئ' or text == 'الاضافر' or text == 'الاسنان' or text == 'الدموع' or text == 'الاخلاق' or text == 'الضل' or text == 'حرف النون'  then
local list = {'10' , 'براسي' , 'النمل' , '32' , 'بوتين' , '30' , '11' , 'الفم' , '14' , 'النيل' , 'ستيف جوبر' , 'خديجه' , 'الاسد' , 'طوكيو' , 'الانسان' , 'لندن' , 'الزئبق' , 'اورباالدولفين' , 'المهر' , '4' , 'اسيا' , 'اسيا' , 'المنجنيق' , 'انسات' , 'العزائم' , 'حرف الام' , 'ذهب' , 'الاسم' , 'سحاب' , 'ابراهيم' , 'الشعر' , 'حرف الواو'}
for k, v in pairs(list) do 
if text ~= v then
Redis:del(Fast.."GAME:CHER"..msg.chat_id)
send(msg.chat_id,msg.id,'• اجابتك خاطئه للاسف ,')     
return false  
end
end
end
end
if text == 'رياضيات' then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
xxx = {'9','46','2','9','5','4','25','10','17','15','39','5','16',};
name = xxx[math.random(#xxx)]

Redis:set(Fast..'bot:bkbk6'..msg.chat_id,name)
name = string.gsub(name,'9','7 + 2 = ?') name = string.gsub(name,'46','41 + 5 = ?')
name = string.gsub(name,'2','5 - 3 = ?') name = string.gsub(name,'9','5 + 2 + 2 = ?')
name = string.gsub(name,'5','8 - 3 = ?') name = string.gsub(name,'4','40 ÷ 10 = ?')
name = string.gsub(name,'25','30 - 5 = ?') name = string.gsub(name,'10','100 ÷ 10 = ?')
name = string.gsub(name,'17','10 + 5 + 2 = ?') name = string.gsub(name,'15','25 - 10 = ?')
name = string.gsub(name,'39','44 - 5 = ?') name = string.gsub(name,'5','12 + 1 - 8 = ?') name = string.gsub(name,'16','16 + 16 - 16 = ?')
send(msg.chat_id,msg.id,'• اكمل المعادله ،\n - {'..name..'} .')     
end 
end
if text == 'انكليزي' then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
yyy = {'معلومات','قنوات','مجموعات','كتاب','تفاحه','سدني','نقود','اعلم','ذئب','تمساح','ذكي','شاطئ','غبي',};
name = yyy[math.random(#yyy)]
Redis:set(Fast..'bot:bkbk7'..msg.chat_id,name)
name = string.gsub(name,'ذئب','Wolf') name = string.gsub(name,'معلومات','Information')
name = string.gsub(name,'قنوات','Channels') name = string.gsub(name,'مجموعات','Groups')
name = string.gsub(name,'كتاب','Book') name = string.gsub(name,'تفاحه','Apple')
name = string.gsub(name,'نقود','money') name = string.gsub(name,'اعلم','I know')
name = string.gsub(name,'تمساح','crocodile') name = string.gsub(name,'شاطئ','Beach')
name = string.gsub(name,'غبي','Stupid') name = string.gsub(name,'صداقه','Friendchip')
name = string.gsub(name,'ذكي','Smart') 
send(msg.chat_id,msg.id,' •ما معنى كلمه {'..name..'} ، ')     
end
end
if text == 'روليت' then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
Redis:del(Fast..":Number_Add:"..msg.chat_id..msg.sender_id.user_id) 
Redis:del(Fast..':List_Rolet:'..msg.chat_id)  
Redis:setex(Fast..":Start_Rolet:"..msg.chat_id..msg.sender_id.user_id,3600,true)  
return send(msg.chat_id,msg.id, '*• * حسننا لنلعب , ارسل عدد اللاعبين للروليت .',"md")
end
end
if text == 'نعم' and Redis:get(Fast..":Witting_StartGame:"..msg.chat_id..msg.sender_id.user_id) then
local list = Redis:smembers(Fast..':List_Rolet:'..msg.chat_id) 
if #list == 1 then 
return send(msg.chat_id,msg.id,"• لم يكتمل العدد الكلي للاعبين .!؟" )
elseif #list == 0 then 
return send(msg.chat_id,msg.id,"• عذرا لم تقوم باضافه اي لاعب .؟!" )
end 
local UserName = list[math.random(#list)]
local data = bot.searchPublicChat(UserName)
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 5)  
Redis:del(Fast..':List_Rolet:'..msg.chat_id) 
Redis:del(Fast..":Witting_StartGame:"..msg.chat_id..msg.sender_id.user_id)
return send(msg.chat_id,msg.id,'• تم اختيار الشخص الاتي\n• صاحب الحظ {'..UserName..'}\n• ربحت معنا 5 نقاط' )
end
if text == 'الاعبين' then
local list = Redis:smembers(Fast..':List_Rolet:'..msg.chat_id) 
local Text = '\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' 
if #list == 0 then 
return send(msg.chat_id,msg.id, '*• * لا يوجد لاعبين هنا ' )
end 
for k, v in pairs(list) do 
Text = Text..k.."• » [" ..v.."] »\n"  
end 
return Text
end
if text and text:match("^(%d+)$") and Redis:get(Fast..":Start_Rolet:"..msg.chat_id..msg.sender_id.user_id) then  --// استقبال اللعبه الدمبله
if text == "1" then
Text = "*• * لا استطيع بدء اللعبه بلاعب واحد فقط\n"
else
Redis:set(Fast..":Number_Add:"..msg.chat_id..msg.sender_id.user_id,text)  
Text = '• تم بدء تسجيل اللسته \n• يرجى ارسال المعرفات \n• الفائز يحصل على (5) مجوهره\n• عدد الاعبين المطلوبه { *'..text..'* } لاعب \n 🏹'
end
Redis:del(Fast..":Start_Rolet:"..msg.chat_id..msg.sender_id.user_id)  
return send(msg.chat_id,msg.id,Text)    
end
if text and text:match('^(@[%a%d_]+)$') and Redis:get(Fast..":Number_Add:"..msg.chat_id..msg.sender_id.user_id) then    --// استقبال الاسماء
if Redis:sismember(Fast..':List_Rolet:'..msg.chat_id,text) then
return send(msg.chat_id,msg.id,'*• * المعرف {['..text..']} موجود اساسا' ,"md")
end
Redis:sadd(Fast..':List_Rolet:'..msg.chat_id,text)
local CountAdd = Redis:get(Fast..":Number_Add:"..msg.chat_id..msg.sender_id.user_id)
local CountAll = Redis:scard(Fast..':List_Rolet:'..msg.chat_id)
local CountUser = CountAdd - CountAll
if tonumber(CountAll) == tonumber(CountAdd) then 
Redis:del(Fast..":Number_Add:"..msg.chat_id..msg.sender_id.user_id) 
Redis:setex(Fast..":Witting_StartGame:"..msg.chat_id..msg.sender_id.user_id,1400,true)  
return send(msg.chat_id,msg.id,"*• *تم ادخال المعرف { ["..text.."] } \n• **وتم اكتمال العدد الكلي \n• هل انت مستعد ؟ اجب بـ {* نعم *}","md")
end 
return send(msg.chat_id,msg.id,"*• * تم ادخال المعرف { ["..text.."] } \n• تبقى { *"..CountUser.."* } لاعبين ليكتمل العدد\n• ارسل المعرف التالي ",'md')
end
if text == 'احكام' then
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
Redis:del(Fast..":add_arqm:"..msg.chat_id..msg.sender_id.user_id) 
Redis:del(Fast..':mando:'..msg.chat_id)  
Redis:setex(Fast..":play_hokm:"..msg.chat_id..msg.sender_id.user_id,3600,true)  
return send(msg.chat_id,msg.id, '*• * يلا بينا نلعب احكام ✌\n , قم بأدخال عدد الأشخاص المشاركين في اللعبه الأن 🔻 .',"md")
end
end
if text == 'يلا بينا' and Redis:get(Fast..":wit_playgame:"..msg.chat_id..msg.sender_id.user_id) then
local list = Redis:smembers(Fast..':mando:'..msg.chat_id) 
if #list == 1 then 
return send(msg.chat_id,msg.id,"• لم يكتمل العدد الكآمل المطلوب ! ؟" )
elseif #list == 0 then 
return send(msg.chat_id,msg.id,"• للأسف انت مضفتش أي لآعب لحد الأن!" )
end 
local UserName = list[math.random(#list)]
local data = bot.searchPublicChat(UserName)
Redis:incrby(Fast.."arqam:add:hokm"..msg.chat_id..msg.sender_id.user_id, 5)  
Redis:del(Fast..':mando:'..msg.chat_id) 
Redis:del(Fast..":wit_playgame:"..msg.chat_id..msg.sender_id.user_id)
return send(msg.chat_id,msg.id,'• تم آختيآر المعرف ده 👇 \n• المحكوم عليه - {'..UserName..'} 🤔😂 \n• يلآ ظبطوه حكم نآر 😂🤪 ' )
end
if text == 'الاعبين' then
local list = Redis:smembers(Fast..':mando:'..msg.chat_id) 
local Text = '\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' 
if #list == 0 then 
return send(msg.chat_id,msg.id, '*• * مآفيش ولا لاعب هنآ ينقم 🤔 ' )
end 
for k, v in pairs(list) do 
Text = Text..k.."• » [" ..v.."] »\n"  
end 
return Text
end
if text and text:match("^(%d+)$") and Redis:get(Fast..":play_hokm:"..msg.chat_id..msg.sender_id.user_id) then  --// استقبال اللعبه الدمبله
if text == "1" then
Text = "• آحا ينقم اقل واجب ٢ لآعبين انا بوت تنك 🤔\n"
else
Redis:set(Fast..":add_arqm:"..msg.chat_id..msg.sender_id.user_id,text)  
Text = '• تم فتح وضعيه تسجيل المعرفآت 🔻 \n• رجآء ارسلهم إلي معرف تلو الآخر 🔺️\n• سيتم آختيآر شخص عشوائي للحكم عليه 〄 \n• عدد اللاعبين المطلوب الأن { '..text..' } لاعب \n 🌝'
end
Redis:del(Fast..":play_hokm:"..msg.chat_id..msg.sender_id.user_id)  
return send(msg.chat_id,msg.id,Text)    
end
if text and text:match('^(@[%a%d_]+)$') and Redis:get(Fast..":add_arqm:"..msg.chat_id..msg.sender_id.user_id) then    --// استقبال الاسماء
if Redis:sismember(Fast..':mando:'..msg.chat_id,text) then
return send(msg.chat_id,msg.id,'*• * اليوزر ده{['..text..']} تم تسجيله من قبل' ,"md")
end
Redis:sadd(Fast..':mando:'..msg.chat_id,text)
local CountAdd = Redis:get(Fast..":add_arqm:"..msg.chat_id..msg.sender_id.user_id)
local CountAll = Redis:scard(Fast..':mando:'..msg.chat_id)
local CountUser = CountAdd - CountAll
if tonumber(CountAll) == tonumber(CountAdd) then 
Redis:del(Fast..":add_arqm:"..msg.chat_id..msg.sender_id.user_id) 
Redis:setex(Fast..":wit_playgame:"..msg.chat_id..msg.sender_id.user_id,1400,true)  
return send(msg.chat_id,msg.id,"*• *تم حفظ المعرف الأخير يرآيق 👍 { ["..text.."] } \n• **وتم آكتمآل عدد اللاعبين المطلوب 👥 \n• لو جآهز آرسل 👈 {* يلا بينا *}","md")
end 
return send(msg.chat_id,msg.id,"*• * تم ادخال المعرف { ["..text.."] } \n• تبقى { *"..CountUser.."* } لاعبين ليكتمل العدد\n• ارسل المعرف التالي ",'md')
end
if text == ''..(Redis:get(Fast..'bot:bkbk6'..msg.chat_id) or 'لفاتع')..'' then
send(msg.chat_id,msg.id,'• مبروك لقد ربحت ،\nللعب مره اخرى ارسل رياضيات . ',"md")   
Redis:del(Fast..'bot:bkbk6'..msg.chat_id)  
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
end 
if text == ''..(Redis:get(Fast..'bot:bkbk7'..msg.chat_id) or 'لفاتع')..'' then
send(msg.chat_id,msg.id,'• مبروك لقد ربحت ،\nللعب مره اخرى ارسل انكليزي . ')     
Redis:del(Fast..'bot:bkbk7'..msg.chat_id)  
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
end

if text == "المختلف" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
mktlf = {"??","☠","🐼","🐇","🌑","🌚","⭐️","✨","⛈","🌥","⛄️","👨‍🔬","👨‍💻","??‍🔧","??‍♀","??‍♂","🧝‍♂","🙍‍♂","🧖‍♂","👬","🕒","🕤","⌛️","📅",};
name = mktlf[math.random(#mktlf)]
Redis:set(Fast.."Game:Difference"..msg.chat_id,name)
name = string.gsub(name,"😸","😹??????😹😹😹😹😸😹😹😹😹")
name = string.gsub(name,"☠","💀💀💀💀💀💀💀☠??💀💀💀💀")
name = string.gsub(name,"🐼","👻👻👻🐼👻👻??👻👻👻👻")
name = string.gsub(name,"🐇","🕊🕊🕊🕊🕊??🕊🕊🕊🕊")
name = string.gsub(name,"🌑","🌚🌚🌚🌚🌚🌑🌚🌚🌚")
name = string.gsub(name,"🌚","🌑🌑🌑🌑🌑??🌑🌑🌑")
name = string.gsub(name,"⭐️","🌟🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟")
name = string.gsub(name,"✨","💫💫💫??💫✨💫💫💫💫")
name = string.gsub(name,"⛈","🌨🌨🌨??🌨⛈🌨🌨🌨🌨")
name = string.gsub(name,"🌥","⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️")
name = string.gsub(name,"⛄️","☃☃☃☃☃☃⛄️☃☃☃☃")
name = string.gsub(name,"👨‍🔬","👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬")
name = string.gsub(name,"👨‍??","👩‍💻👩‍??👩‍‍💻👩‍‍??👩‍‍💻👨‍💻??‍💻👩‍💻👩‍💻")
name = string.gsub(name,"👨‍🔧","👩‍🔧👩‍🔧??‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧")
name = string.gsub(name,"👩‍??","👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳??‍🍳")
name = string.gsub(name,"🧚‍♀","🧚‍♂🧚‍♂🧚‍♂??‍♂🧚‍♀🧚‍♂🧚‍♂")
name = string.gsub(name,"🧜‍♂","🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀")
name = string.gsub(name,"🧝‍♂","🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀")
name = string.gsub(name,"🙍‍♂️","🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️")
name = string.gsub(name,"🧖‍♂️","🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️??‍♀️")
name = string.gsub(name,"👬","👭👭👭👭👭👬👭👭👭")
name = string.gsub(name,"👨‍👨‍👧","👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦")
name = string.gsub(name,"🕒","🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒")
name = string.gsub(name,"🕤","🕥🕥🕥🕥🕥🕤🕥🕥🕥")
name = string.gsub(name,"⌛️","⏳⏳⏳⏳⏳⏳⌛️⏳⏳")
name = string.gsub(name,"📅","📆📆📆📆📆📆📅????")
return send(msg.chat_id,msg.id,"• اسرع واحد يدز الاختلاف ~ {"..name.."}","md",true)  
end
end
if text == "امثله" then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(Fast.."Status:Games"..msg.chat_id) then
mthal = {"جوز","ضراطه","الحبل","الحافي","شقره","بيدك","سلايه","النخله","الخيل","حداد","المبلل","يركص","قرد","العنب","العمه","الخبز","بالحصاد","شهر","شكه","يكحله",};
name = mthal[math.random(#mthal)]
Redis:set(Fast.."Game:Example"..msg.chat_id,name)
name = string.gsub(name,"جوز","ينطي____للماعده سنون")
name = string.gsub(name,"ضراطه","الي يسوق المطي يتحمل___")
name = string.gsub(name,"بيدك","اكل___محد يفيدك")
name = string.gsub(name,"الحافي","تجدي من___نعال")
name = string.gsub(name,"شقره","مع الخيل يا___")
name = string.gsub(name,"النخله","الطول طول___والعقل عقل الصخلة")
name = string.gsub(name,"سلايه","بالوجه امراية وبالظهر___")
name = string.gsub(name,"الخيل","من قلة___شدو على الچلاب سروج")
name = string.gsub(name,"حداد","موكل من صخم وجهه كال آني___")
name = string.gsub(name,"المبلل","___ما يخاف من المطر")
name = string.gsub(name,"الحبل","اللي تلدغة الحية يخاف من جرة___")
name = string.gsub(name,"يركص","المايعرف___يقول الكاع عوجه")
name = string.gsub(name,"العنب","المايلوح___يقول حامض")
name = string.gsub(name,"العمه","___إذا حبت الچنة ابليس يدخل الجنة")
name = string.gsub(name,"الخبز","انطي___للخباز حتى لو ياكل نصه")
name = string.gsub(name,"باحصاد","اسمة___ومنجله مكسور")
name = string.gsub(name,"شهر","امشي__ولا تعبر نهر")
name = string.gsub(name,"شكه","يامن تعب يامن__يا من على الحاضر لكة")
name = string.gsub(name,"القرد","__بعين امه غزال")
name = string.gsub(name,"يكحله","اجه___عماها")
return send(msg.chat_id,msg.id,"• اسرع واحد يكمل المثل ~ {"..name.."}","md",true)  
end
end
if text == 'مسح رسائله' and msg.reply_to_message_id ~= 0 then
if not msg.SuperCreator then
return send(msg.chat_id,msg.id,'\n*• هذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:del(Fast..'Num:Message:User'..msg.chat_id..':'..rep_idd) 
return send(msg.chat_id,msg.id,"• تم مسح رسائله ", "md")
end
if text == 'مسح نقاطه' and msg.reply_to_message_id ~= 0 then
if not msg.SuperCreator then
return send(msg.chat_id,msg.id,'\n*• هذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:del(Fast.."Num:Add:Games"..msg.chat_id..rep_idd)
return send(msg.chat_id,msg.id,"• تم مسح نقاطه ", "md")
end
if text == 'مسح تعديلاته' and msg.reply_to_message_id ~= 0 then
if not msg.SuperCreator then
return send(msg.chat_id,msg.id,'\n*• هذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
Redis:del(Fast..'Num:Message:Edit'..msg.chat_id..rep_idd)
return send(msg.chat_id,msg.id,"• تم مسح تعديلاته ", "md")
end

if text and text:match("^بيع نقاطي (%d+)$") then
local NumGame = text:match("^بيع نقاطي (%d+)$") 
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if tonumber(NumGame) == tonumber(0) then
return send(msg.chat_id,msg.id,"\n*• لا استطيع البيع اقل من 1 *","md",true)  
end
local NumberGame = Redis:get(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id)
if tonumber(NumberGame) == tonumber(0) then
return send(msg.chat_id,msg.id,"• ليس لديك جواهر من الالعاب \n• اذا كنت تريد ربح النقاط \n• ارسل الالعاب وابدأ اللعب ! ","md",true)  
end
if tonumber(NumGame) > tonumber(NumberGame) then
return send(msg.chat_id,msg.id,"\n• ليس لديك جواهر بهذا العدد \n• لزيادة نقاطك في اللعبه \n• ارسل الالعاب وابدأ اللعب !","md",true)   
end
local NumberGet = (tonumber(NumGame) * 50)
Redis:decrby(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id,NumGame)  
Redis:incrby(Fast.."Num:Message:User"..msg.chat_id..":"..msg.sender_id.user_id,NumberGet)  
return send(msg.chat_id,msg.id,"• تم خصم *~ { "..NumGame.." }* من نقاطك \n• وتم اضافة* ~ { "..NumberGet.." } رساله الى رسائلك *","md",true)  
end 
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id ~= 0 and Redis:get(Fast.."Status:Games"..msg.chat_id) then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*• هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo.message == "Invalid user ID" then
return send(msg.chat_id,msg.id,"\n• عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.Fastbots == "userTypeBot" then
return send(msg.chat_id,msg.id,"\n• عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
Redis:incrby(Fast.."Num:Add:Games"..msg.chat_id..rep_idd, text:match("^اضف نقاط (%d+)$"))  
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,"• تم اضافه له { "..text:match("^اضف نقاط (%d+)$").." } من النقاط").Reply,"md",true)  
end
if text and text:match("^اضف تعديلات (%d+)$") and msg.reply_to_message_id ~= 0 and Redis:get(Fast.."Status:Games"..msg.chat_id) then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*• هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo.message == "Invalid user ID" then
return send(msg.chat_id,msg.id,"\n• عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.Fastbots == "userTypeBot" then
return send(msg.chat_id,msg.id,"\n• عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
Redis:incrby(Fast..'Num:Message:Edit'..msg.chat_id..rep_idd, text:match("^اضف تعديلات (%d+)$"))  
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,"• تم اضافه له { "..text:match("^اضف تعديلات (%d+)$").." } من التعديلات").Reply,"md",true)  
end
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id ~= 0 and Redis:get(Fast.."Status:Games"..msg.chat_id) then
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*• هذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo.message == "Invalid user ID" then
return send(msg.chat_id,msg.id,"\n• عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.Fastbots == "userTypeBot" then
return send(msg.chat_id,msg.id,"\n• عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
Redis:incrby(Fast.."Num:Message:User"..msg.chat_id..":"..rep_idd, text:match("^اضف رسائل (%d+)$"))  
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,"• تم اضافه له { "..text:match("^اضف رسائل (%d+)$").." } من الرسائل").Reply,"md",true)  
end
if text == "المكـتومين عام" then
if not msg.Devss then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end

local Info_Members = Redis:smembers(Fast.."KtmAll:Groups") 
if #Info_Members == 0 then
return send(msg_chat_id,msg_id," •لا يوجد مكتومين عام حاليا , ","md",true)  
end
ListMembers = '\n*• قائمه المكتومين عام  \n ⋖━━❲𖣂❳━━𖠙ᥲ️᥎ᥲ️ƚᥲ️ᖇ𖠙━━❲𖣂❳━━⋗*\n'
for k, v in pairs(Info_Members) do
local UserInfo = bot.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المكتومين عام', data = senderr..'/KtmAll'},},}}
return send(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == "قسم حذف ( الرتب ) اون لاين" then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="المطورين الاساسيين",data=senderr..'/redis:Devall'},
},
{
{text="المكتومين عام",data=senderr..'/KtmAll'},{text="المحظورين عام",data=senderr..'/BanAll'},
},
{
{text="المطورين الثانويين",data=senderr..'/Devss'},{text="المطورين",data=senderr..'/Dev'},
},
{
{text="المالكين",data=senderr..'/Ownerss'},{text="المنشئين الاساسيين",data=senderr..'/SuperCreator'},
},
{
{text="المنشئين",data=senderr..'/Creator'},{text="المدراء",data=senderr..'/Manger'},
},
{
{text="الادمنيه",data=senderr..'/Admin'},{text="المميزين",data=senderr..'/DelSpecial'},
},
{
{text="المكتومين",data=senderr..'/SilentGroupGroup'},{text="المحظورين",data=senderr..'/BanGroup'},
},
{
{text = "- اخفاء الامر ", data =senderr.."/delAmr"}
},
}
}
return send(msg_chat_id,msg_id,"*⌯︙اختر احدى القوائم لمسحها*", "md", false, false, false, false, reply_markup)
end 
if text == "قسم حذف ( كتم + حظر ) اون لاين" then
if not msg.Admin then
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
local reply_markup = bot.replyMarkup{
type = "inline",
data = {
{
{text="المكتومين عام",data=senderr..'/KtmAll'},{text="المحظورين عام",data=senderr..'/BanAll'},
},
{
{text="المكتومين",data=senderr..'/SilentGroupGroup'},{text="المحظورين",data=senderr..'/BanGroup'},
},
{
{text = "- اخفاء الامر ", data =senderr.."/delAmr"}
},
}
}
return send(msg_chat_id,msg_id,"*⌯︙اختر احدى القوائم لمسحها*", "md", false, false, false, false, reply_markup)
end 
if text == "مجموعات" then 
if not msg.Asasy then 
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
send(msg_chat_id,msg_id,'*• عدد جروبات بوتك القامد 🌝 \n⋖━━❲𖣂❳━━𖠙ᥲ️᥎ᥲ️ƚᥲ️ᖇ𖠙━━❲𖣂❳━━⋗\n• عدد المجموعات : '..(Redis:scard(Fast..'ChekBotAdd') or 0)..'*',"md",true)  
end
if text == "المشتركين" then 
if not msg.Asasy then 
return send(msg_chat_id,msg_id,'\n*• هذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
send(msg_chat_id,msg_id,'*• عدد مشتركين بوتك ينقم 🌝 \n⋖━━❲𖣂❳━━𖠙ᥲ️᥎ᥲ️ƚᥲ️ᖇ𖠙━━❲𖣂❳━━⋗\n• عدد المشتركين : '..(Redis:scard(Fast..'Num:User:Pv') or 0)..'*',"md",true)  
end
if text == "نقاطي" then 
if ChannelJoinch(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Chat:Channel:Join:Name'..msg.chat_id), url = 't.me/'..Redis:get(Fast..'Chat:Channel:Join'..msg.chat_id)}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
if ChannelJoin(msg) == false then
local reply_markup = bot.replyMarkup{type = 'inline',data = {{{text = Redis:get(Fast..'Channel:Join:Name'), url = 't.me/'..Redis:get(Fast..'Channel:Join')}, },}}
return send(msg.chat_id,msg.id,'*\n• عليك الاشتراك في قناة البوت لأستخدام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Num = Redis:get(Fast.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id) or 0
if Num == 0 then 
return send(msg.chat_id,msg.id, "• ليس لديك نقاط ارسل الالعاب وابدأ اللعب ","md",true)  
else
return send(msg.chat_id,msg.id, "• عدد النقاط التي ربحتها *← "..Num.." *","md",true)  
end
end

end

return {Fast = games}
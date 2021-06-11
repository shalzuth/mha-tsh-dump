-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
API = {
["Gτ¡ëσ╛àΦ┐¢σàÑτè╢µ\128\129"] = {Api = function(self, Args, Callback)
  -- function num : 0_0
  drama:WaitFighterStatus(Args[1], Callback, Args[-1])
end
, Name = "Gτ¡ëσ╛àΦ┐¢σàÑτè╢µ\128\129", 
ParamDesc = {"ΦíîΣ╕║τè╢µ\128\129"}
, 
ParamType = {"string"}
, Type = "σèƒΦâ╜"}
, 
["GΘöüµîëΘÆ\174"] = {Api = function(self, Args, Callback)
  -- function num : 0_1
  drama:LockBtn(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "GΘöüµîëΘÆ\174", 
ParamDesc = {"µÄºΣ╗╢σÉ\141", "µÿ»σÉªΘö\129", "ΘöüΦ╡äµ║ÉσÉì", "τë╣µòêId"}
, 
ParamType = {"string", "boolean", "string", "number"}
, Type = "σèƒΦâ╜"}
, 
["opΦâ╜ΘçÅµ¥íµÿ╛τñ║ΘÜÉΦù\143"] = {Api = function(self, Args, Callback)
  -- function num : 0_2
  drama:SetOpCompVisible(Args[1])
end
, Name = "opΦâ╜ΘçÅµ¥íµÿ╛τñ║ΘÜÉΦù\143", 
ParamDesc = {"σ╝\128σà\179"}
, 
ParamTips = {"σ╝\128σà\179"}
, 
ParamType = {"boolean"}
, Type = "Φ╡äµ║É"}
, 
["Σ╕╗σƒÄσü£µ¡óσ»╗Φ╖»"] = {Api = function(self, Args, Callback)
  -- function num : 0_3
  drama:StopMoveTo(Callback, Args[-1])
end
, Name = "Σ╕╗σƒÄσü£µ¡óσ»╗Φ╖»", Type = "ΦºÆΦë▓"}
, 
["Σ╕╗σƒÄσÉîµ¡ÑΣ╕╗ΦºÆσ¥Éµáçτ╗Öµ£ìσèíσÖ¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_4
  drama:SyncHeroPos(Args[1], Callback, Args[-1])
end
, Name = "Σ╕╗σƒÄσÉîµ¡ÑΣ╕╗ΦºÆσ¥Éµáçτ╗Öµ£ìσèíσÖ¿", 
ParamDesc = {"σ╗╢Φ┐ƒ(τº\146)"}
, 
ParamTips = {"σ╗╢Φ┐ƒσê░σëºµâàσÉÄΣ╣ƒτöƒµòê∩╝êΣ╕ìσí½τ½ïσì│τöƒµòê∩╝\137"}
, 
ParamType = {"number"}
, Type = "ΦºÆΦë▓"}
, 
["Σ╕╗σƒÄµëïµ£║σè¿Σ╜£σÆîΘò£σñ\180"] = {Api = function(self, Args, Callback)
  -- function num : 0_5
  drama:ShowPhoneCamera(Args[1], Callback, Args[-1])
end
, Name = "Σ╕╗σƒÄµëïµ£║σè¿Σ╜£σÆîΘò£σñ\180", 
ParamDesc = {"µÿ»σÉªΣ╜┐τö¿"}
, 
ParamType = {"boolean"}
, Type = "Θò£σñ┤"}
, 
["Σ╕╗τ║┐σà│σìíµê¬σ¢╛"] = {Api = function(self, Args, Callback)
  -- function num : 0_6
  axon_extools:StageSnapshot(Callback, Args[-1])
end
, Name = "Σ╕╗τ║┐σà│σìíµê¬σ¢╛", 
ParamDesc = {"µù\160"}
, Type = "σèƒΦâ╜"}
, 
["Σ╕╗ΦºÆµÆ¡µö╛Idleσè¿Σ╜£"] = {Api = function(self, Args, Callback)
  -- function num : 0_7
  drama:StopHeroAction(Callback, Args[-1])
end
, Name = "Σ╕╗ΦºÆµÆ¡µö╛Idleσè¿Σ╜£", 
ParamDesc = {"µù\160"}
, Type = "ΦºÆΦë▓"}
, 
["Σ╗àUIσìòµîëΘö«µ£ëµò\136"] = {Api = function(self, Args, Callback)
  -- function num : 0_8
  drama:OnlyOneUIBtn(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Args[10], Args[11], Callback, Args[-1])
end
, Name = "Σ╗àUIσìòµîëΘö«µ£ëµò\136", 
ParamDesc = {"τë╣µòêId", "σ╖ªΣ╕èΦº\146", "σÅ│Σ╕ïΦº\146", "[σñ┤σâÅΦ╡äµ║É]", "[σÉìσ¡ùId]", "[σ»╣Φ»¥Id]", "[ΘÇéΘàì]", "[σ¥Éµáç]", "σ░Åτ▓╛τü╡σ»╣Φ»¥µíå", "τë╣µòêΘÇéΘàì", "σ╝╣Φ╡╖τöƒµòê"}
, 
ParamType = {"number", "number2", "number2", "string", "number", "number", "number", "number2", "boolean", "number", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["Σ╗àσàüΦ«╕µ╗æσè¿σ▒Åσ╣\149"] = {Api = function(self, Args, Callback)
  -- function num : 0_9
  drama:OnlySlideScreen(Callback, Args[-1])
end
, Name = "Σ╗àσàüΦ«╕µ╗æσè¿σ▒Åσ╣\149", Type = "σèƒΦâ╜"}
, 
["Σ╗àσìòµîëΘö«µ£ëµòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_10
  drama:OnlyOneBtn(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Args[10], Args[11], Args[12], Callback, Args[-1])
end
, Name = "Σ╗àσìòµîëΘö«µ£ëµòê", 
ParamDesc = {"µÄºΣ╗╢σÉ\141", "τë╣µòêId", "[σñ┤σâÅΦ╡äµ║É]", "[σÉìσ¡ùId]", "[σ»╣Φ»¥Id]", "[ΘÇéΘàì]", "[σ¥Éµáç]", "[µîëΘö«µù╢Θù┤]", "σ░Åτ▓╛τü╡σ»╣Φ»¥µíå", "[µîëΘö«ΘÖÉσê╢µù╢Θù┤]", "[Θçèµö╛µè\128Φâ╜]", "[σñÜτé╣σç╗Φ╖│Φ┐ç]"}
, 
ParamType = {"string", "number", "string", "number", "number", "number", "number2", "number", "boolean", "number", "number", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["Σ╗àσìòµîëΘö«µ╗æσè¿µ£ëµòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_11
  drama:OnlyOneSideBtn(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Args[10], Args[11], Args[12], Args[13], Args[14], Callback, Args[-1])
end
, Name = "Σ╗àσìòµîëΘö«µ╗æσè¿µ£ëµòê", 
ParamDesc = {"µÄºΣ╗╢σÉ\141", "τë╣µòêId", "[σñ┤σâÅΦ╡äµ║É]", "[σÉìσ¡ùId]", "[σ»╣Φ»¥Id]", "[ΘÇéΘàì]", "[σ¥Éµáç]", "σ░Åτ▓╛τü╡σ»╣Φ»¥µíå", "[σñÜτé╣σç╗Φ╖│Φ┐ç]", "[µ╗æσè¿µ£\128σ░ÅΦ╖¥τª╗]", "[µ╗æσè¿µ£\128Θò┐Φ╖¥τª╗]", "[τé╣σç╗µíåσñºσ░Å]", "[\"σüÅτº╗σ¥Éµáç\"]", "[σ╝║σê╢Σ╜┐τö¿]"}
, 
ParamType = {"string", "number", "string", "number", "number", "number", "number2", "boolean", "boolean", "number", "number", "number2", "number2", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["Σ┐¥σ¡ÿτ¢╕µ£║σÅéµò░"] = {Api = function(self, Args, Callback)
  -- function num : 0_12
  drama:SaveCameraParams(Args[1], Callback, Args[-1])
end
, Name = "Σ┐¥σ¡ÿτ¢╕µ£║σÅéµò░", 
ParamDesc = {"σÅéµò░σÉ\141"}
, 
ParamTips = {"τö¿Σ║ÄΣ┐¥σ¡ÿσ╜ôσëìτ¢╕µ£║σÅéµò░πÇéτ╗ÖσÉÄΘ¥óτÜäΘò£σñ┤τö¿"}
, 
ParamType = {"string"}
, Type = "σ╕╕τö¿"}
, 
["σü£µ¡óΣ╜┐τö¿σëºµâàΘò£σñ┤"] = {Api = function(self, Args, Callback)
  -- function num : 0_13
  (cameraMgr:Instance()):EndDrama()
end
, Name = "σü£µ¡óΣ╜┐τö¿σëºµâàΘò£σñ┤", Type = "Θò£σñ┤"}
, 
["σü£µ¡óσÄƒτö╗Θ£çσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_14
  drama:StopTotalOriginalVibrat(Callback, Args[-1])
end
, Name = "σü£µ¡óσÄƒτö╗Θ£çσè¿", 
ParamDesc = {"µù\160"}
, Type = "Φ╡äµ║É"}
, 
["σü£µ¡óµÆ¡µö╛Flash"] = {Api = function(self, Args, Callback)
  -- function num : 0_15
  drama:StopFlash(Args[1], Callback, Args[-1])
end
, Name = "σü£µ¡óµÆ¡µö╛Flash", 
ParamDesc = {"FlashσÉìτº░"}
, 
ParamType = {"string"}
, Type = "Φ╡äµ║É"}
, 
["σü£µ¡óτë╣µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_16
  drama:StopEffect(Args[1], Callback, Args[-1])
end
, Name = "σü£µ¡óτë╣µòê", 
ParamDesc = {"τë╣µòêσÉìτº░"}
, 
ParamType = {"string"}
, Type = "Φ╡äµ║É"}
, 
["σü£µ¡óτ¢╕µ£║σÅÿµìóσê\176"] = {Api = function(self, Args, Callback)
  -- function num : 0_17
  (cameraMgr:Instance()):CameraStopTranslate()
end
, Name = "σü£µ¡óτ¢╕µ£║σÅÿµìóσê\176", Type = "Θò£σñ┤"}
, 
["σü£µ¡óτº╗σè¿τ╗äΣ╗╢"] = {Api = function(self, Args, Callback)
  -- function num : 0_18
  drama:StopeHeroMoveComp(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "σü£µ¡óτº╗σè¿τ╗äΣ╗╢", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░", "σü£µ¡ó", "σêçµìóσ╛àµ£║"}
, 
ParamType = {"string", "boolean", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["σü£µ¡óΦâîµÖ»Θƒ│Σ╣É"] = {Api = function(self, Args, Callback)
  -- function num : 0_19
  drama:StopBgMusic(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σü£µ¡óΦâîµÖ»Θƒ│Σ╣É", 
ParamDesc = {"τªüµ¡óΘƒ│Σ╣É", "µ╖íσç║µù╢Θù┤"}
, 
ParamTips = {"Σ╕ìµüóσñìσ£║µÖ»ΦâîµÖ»Θƒ│Σ╣\144", "µ╖íσç║µù╢Θù┤"}
, 
ParamType = {"boolean", "number"}
, Type = "Φ╡äµ║É"}
, 
["σü£µ¡óΦç¬σè¿µêÿµûù"] = {Api = function(self, Args, Callback)
  -- function num : 0_20
  drama:StopAutoFight()
end
, Name = "σü£µ¡óΦç¬σè¿µêÿµûù", 
ParamDesc = {"µù\160"}
, Type = "σèƒΦâ╜"}
, 
["σü£µ¡óΦºåΘóæ"] = {Api = function(self, Args, Callback)
  -- function num : 0_21
  drama:StopVideo(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "σü£µ¡óΦºåΘóæ", 
ParamDesc = {"µ╕ÉσÅÿµ╢êσñ▒", "τÖ╜Θü«τ╜⌐µ╕ÉσÅ\152", "µ╕ÉσÅÿµù╢Θù┤", "Θƒ│µòêµ╖íσç║"}
, 
ParamType = {"boolean", "boolean", "number", "number"}
, Type = "Φ╡äµ║É"}
, 
["σü£µ¡óΦºÆΦë▓τº╗σè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_22
  drama:EntityStopMove(Args[1], Callback, Args[-1])
end
, Name = "σü£µ¡óΦºÆΦë▓τº╗σè¿", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░"}
, 
ParamTips = {"ΦºÆΦë▓τÜäσëºµâàσÉìτº\176"}
, 
ParamType = {"string"}
, Type = "ΦºÆΦë▓"}
, 
["σü£µ¡óΘƒ│µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_23
  drama:StopSound(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σü£µ¡óΘƒ│µòê", 
ParamDesc = {"Θƒ│µòêσÉìτº░", "µ╖íσç║µù╢Θù┤"}
, 
ParamTips = {"Θƒ│µòêσ£¿σëºµâàΣ╕¡τÜäσÉìσ¡\151"}
, 
ParamType = {"string", "number"}
, Type = "Φ╡äµ║É"}
, 
["σàüΦ«╕/τªüµ¡óτé╣σç╗"] = {Api = function(self, Args, Callback)
  -- function num : 0_24
  drama:EnableTouch(Args[1], Callback, Args[-1])
  if Args[1] then
    drama:ClearShade(Callback, Args[-1])
  else
    drama:CreateShade(Callback, Args[-1])
  end
end
, Name = "σàüΦ«╕/τªüµ¡óτé╣σç╗", 
ParamDesc = {"σàüΦ«╕"}
, 
ParamType = {"boolean"}
, Type = "σ╕╕τö¿"}
, 
["σàüΦ«╕/τªüµ¡óτé╣σç╗σ£║µÖ»σ»╣Φ▒í"] = {Api = function(self, Args, Callback)
  -- function num : 0_25
  drama:EnableSelect(Args[1], Callback, Args[-1])
end
, Name = "σàüΦ«╕/τªüµ¡óτé╣σç╗σ£║µÖ»σ»╣Φ▒í", 
ParamDesc = {"σàüΦ«╕"}
, 
ParamType = {"boolean"}
, Type = "σ╕╕τö¿"}
, 
["σàüΦ«╕σè¿Σ╜£Θò£σñ┤"] = {Api = function(self, Args, Callback)
  -- function num : 0_26
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R3 in 'UnsetPending'

  drama.s_AllowBindCamera = true
end
, Name = "σàüΦ«╕σè¿Σ╜£Θò£σñ┤", Type = "Θò£σñ┤"}
, 
["σà│σìíµù╢Θù┤µÜéσü£"] = {Api = function(self, Args, Callback)
  -- function num : 0_27
  drama:StopStageTime(Args[1], Callback, Args[-1])
end
, Name = "σà│σìíµù╢Θù┤µÜéσü£", 
ParamDesc = {"σ╝\128σà\179"}
, 
ParamTips = {"σ╝\128σà\179:trueµÿ»σ╝ÇσÉ\175", "falseµÿ»σà│Θù¡µüóσñìµù╢Θù\180"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["σåÆµ│íµ╢êµü»"] = {Api = function(self, Args, Callback)
  -- function num : 0_28
  drama:ShowChat(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "σåÆµ│íµ╢êµü»", 
ParamDesc = {"σëºµâàΣ╕¡σÉìσ¡\151", "µ╢êµü»Id", "µù╢Θù┤(σ╕\167)"}
, 
ParamType = {"string", "number", "number"}
, Type = "ΦºÆΦë▓"}
, 
["σçÅσ░æµè\128Φâ╜CD"] = {Api = function(self, Args, Callback)
  -- function num : 0_29
  drama:RemoveSkillCD(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σçÅσ░æµè\128Φâ╜CD", 
ParamDesc = {"µè\128Φâ╜ID", "µù╢Θù┤"}
, 
ParamType = {"number", "number"}
, Type = "σèƒΦâ╜"}
, 
["σêçµìóσü£σ╕ºτè╢µ\128\129"] = {Api = function(self, Args, Callback)
  -- function num : 0_30
  drama:StopUpdate(Args[1], Callback, Args[-1], Callback, Args[-1])
end
, Name = "σêçµìóσü£σ╕ºτè╢µ\128\129", 
ParamDesc = {"µÿ»σÉªσü£σ╕º"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["σêçµìóσ╜ôσëìΣ╜┐τö¿ΦºÆΦë▓"] = {Api = function(self, Args, Callback)
  -- function num : 0_31
  drama:SwitchCurHero(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "σêçµìóσ╜ôσëìΣ╜┐τö¿ΦºÆΦë▓", 
ParamDesc = {"Φï▒Θ¢äID", "ΘÇ\128σ£║σè¿Σ╜\156", "σç║σ£║σè¿Σ╜£"}
, 
ParamTips = {"Φï▒Θ¢äΘàìτ╜«Φí¿σÅ»µƒÑτ£ï∩╝êσ£¿Φï▒Θ¢äΦí¿σêåΘí╡∩╝ë"}
, 
ParamType = {"number", "string", "string"}
, Type = "ΦºÆΦë▓"}
, 
["σêçµìóΦºåΦºÆΘò£σñ┤"] = {Api = function(self, Args, Callback)
  -- function num : 0_32
  drama:SetCameraNotFree(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σêçµìóΦºåΦºÆΘò£σñ┤", 
ParamDesc = {"σ╝\128σÉ\1753D", "σ╝\128σÉ\1752D"}
, 
ParamType = {"boolean", "boolean"}
, Type = "Θò£σñ┤"}
, 
["σê¢σ╗║Npc"] = {Api = function(self, Args, Callback)
  -- function num : 0_33
  drama:CreateNpc(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "σê¢σ╗║Npc", 
ParamDesc = {"ΦºÆΦë▓Id", "Xσ¥Éµáç", "Yσ¥Éµáç", "µ£¥σÉæ", "ΦºÆΦë▓σÉìτº░", "σÅ»Θ\128ëσè¿Σ╜\156"}
, 
ParamTips = {"npcId", "npcσç║τöƒΣ╜ìτ╜«", "npcσç║τöƒΣ╜ìτ╜«", "npcσç║τöƒΘ¥óσÉæ", "npcτÜäσÉìσ¡\151", "npcσç║τöƒσè¿Σ╜£"}
, 
ParamType = {"number", "number", "number", "number", "string", "string"}
, Type = "σ╕╕τö¿"}
, 
["σê¢σ╗║QTE"] = {Api = function(self, Args, Callback)
  -- function num : 0_34
  drama:CreateQte(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Args[10], Args[11], Args[12], Args[13], Callback, Args[-1])
end
, Name = "σê¢σ╗║QTE", 
ParamDesc = {"σÇÆΦ«íµù\182(τº\146)", "µêÉσèƒΦºªσÅæσÖ\168", "σñ▒Φ┤ÑΦºªσÅæσÖ\168", "ΘÇéΘàìτ▒╗σ₧ï", "µîëΘÆ«Σ╜ìτ╜«X", "µîëΘÆ«Σ╜ìτ╜«Y", "µêÉσèƒΦ╖│Φ┐çµù\182", "σñ▒Φ┤ÑΦ╖│Φ┐çµù\182", "QTEτ▒╗σ₧ï", "σà╢Σ╗ûσÅéµò░", "σçÅτ╝ôΘÇƒτÄç", "ΦºªσÅæσÉÄσ╗╢Φ┐\159", "σëºµâàτ╗ôµ¥ƒΦç¬τä╢Θö\128µ»\129"}
, 
ParamTips = {"QTEσ¡ÿσ£¿µù╢Θò┐", "QTEµêÉσèƒµù╢ΦºªσÅæτÜäΦºªσÅæσÖ¿ID", "QTEσñ▒Φ┤Ñµù╢ΦºªσÅæτÜäΦºªσÅæσÖ¿ID", "Θ╗ÿΦ«ñσí\1715", "QTEσ¥ÉµáçXΦ╜\180", "QTEσ¥ÉµáçYΦ╜\180", "µêÉσèƒΦ╖│Φ┐çµù╢Θù┤∩╝Üσí½-1σêÖτ¡ëσ╛àσÉÄτ╗¡µîçΣ╗ñµÆ¡µö╛σ«îµ»òσÉ»σè¿ΦºªσÅæσÖ¿σí\1710σêÖΘ⌐¼Σ╕èσÉ»σè¿ΦºªσÅæσÖ¿σí\171>0σêÖσ╗╢Φ┐ƒσÉ»σè¿ΦºªσÅæσÖ¿∩╝êΣ╕ÇΦê¼σí½-1∩╝\137", "σñ▒Φ┤ÑΦ╖│Φ┐çµù╢Θù┤∩╝ÜσÉîΣ╕\138", "1Σ╕║σñÜµ¼íτé╣σç╗ΦºªσÅæσÖ¿2Σ╕║σìòµ¼íτé╣σç╗ΦºªσÅæσÖ¿3Σ╕║σ░Åσ₧ïΦºªσÅæσÖ¿", "σ╜ôΦºªσÅæσÖ¿τ▒╗σ₧ïΣ╕\1861µù╢σí½Θ£\128Φªüτé╣σç╗τÜäµ¼íµò░", "σçÅτ╝ôΘÇƒτÄç", "ΦºªσÅæΦºªσÅæσÖ¿σÉÄσ╗╢Φ┐ƒτÜäµù╢Θò┐∩╝êσ╕º∩╝ëσëºµâàτ╗ôµ¥ƒσÉÄµÿ»σÉªΘöÇµ»ü∩╝êΣ╕\128Φê¼σï╛Σ╕è∩╝ë"}
, 
ParamType = {"number", "number", "number", "number", "number", "number", "number", "number", "number", "string", "number", "number2", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["σê¢σ╗║σàëµƒ▒"] = {Api = function(self, Args, Callback)
  -- function num : 0_35
  drama:CreateBeam(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "σê¢σ╗║σàëµƒ▒", 
ParamDesc = {"ΦºÆΦë▓Id", "τ¢«µáçτé\185", "µ£¥σÉæ", "σëºµâà", "σÅ»Θ\128ëσè¿Σ╜\156", "Σ╗╗σèíId"}
, 
ParamTips = {"σàëµƒ▒Id", "τ¢«µáçτé\185", "µ£¥σÉæ", "σëºµâà", "σç║τöƒσè¿Σ╜£", "Σ╗╗σèíId"}
, 
ParamType = {"number", "number3", "number", "string", "string", "number"}
, Type = "Φ╡äµ║É"}
, 
["σê¢σ╗║µÇ¬τë⌐"] = {Api = function(self, Args, Callback)
  -- function num : 0_36
  drama:CreateMonster(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "σê¢σ╗║µÇ¬τë⌐", 
ParamDesc = {"µÇ¬τë⌐Id", "Xσ¥Éµáç", "Yσ¥Éµáç", "µ£¥σÉæ", "σëºµâà", "σÅ»Θ\128ëσè¿Σ╜\156"}
, 
ParamTips = {"µÇ¬τë⌐Id", "µÇ¬τë⌐σç║τöƒΣ╜ìτ╜«", "µÇ¬τë⌐σç║τöƒΣ╜ìτ╜«", "µÇ¬τë⌐σç║τöƒΘ¥óσÉæ", "µÇ¬τë⌐τÜäσÉìσ¡\151", "µÇ¬τë⌐σç║τöƒσè¿Σ╜£"}
, 
ParamType = {"number", "number", "number", "number", "string", "string"}
, Type = "σèƒΦâ╜"}
, 
["σê¢σ╗║Φí¿µâà"] = {Api = function(self, Args, Callback)
  -- function num : 0_37
  drama:CreateFace(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Callback, Args[-1])
end
, Name = "σê¢σ╗║Φí¿µâà", 
ParamDesc = {"σ¢╛τëçσÉìτº░", "ΘÇéτö¿τ▒╗σ₧ï", "Id", "σÇìτÄç", "µèûσè¿", "µ▓íµ£ëσè¿µòê", "µëïσè¿σêáΘÖñ"}
, 
ParamType = {"string", "string", "number", "number", "boolean", "boolean", "boolean"}
, Type = "Φ╡äµ║É"}
, 
["σê¢σ╗║ΦºªσÅæσÖ\168"] = {Api = function(self, Args, Callback)
  -- function num : 0_38
  drama:CreateTrigger(Args[1], Callback, Args[-1])
end
, Name = "σê¢σ╗║ΦºªσÅæσÖ\168", 
ParamDesc = {"ΦºªσÅæσÖ¿ID"}
, 
ParamTips = {"ΦºªσÅæσÖ¿σ£¿σ£║µÖ»Σ╕¡τÜäID∩╝êσ╕âµÇ¬τ╝ûΦ╛æσÖ¿Θçîτ£ï∩╝\137"}
, 
ParamType = {"number"}
, Type = "σèƒΦâ╜"}
, 
["σêáΘÖñBUFF"] = {Api = function(self, Args, Callback)
  -- function num : 0_39
  drama:DelBuff(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σêáΘÖñBUFF", 
ParamDesc = {"BuffId", "σ»╣Φ▒íσÉìτº░"}
, 
ParamType = {"number", "string"}
, Type = "σèƒΦâ╜"}
, 
["σêáΘÖñNpc"] = {Api = function(self, Args, Callback)
  -- function num : 0_40
  drama:CleanNpc(Args[1], Callback, Args[-1])
end
, Name = "σêáΘÖñNpc", 
ParamDesc = {"NpcId"}
, 
ParamType = {"number"}
, Type = "σ╕╕τö¿"}
, 
["σêáΘÖñσàëµƒ▒"] = {Api = function(self, Args, Callback)
  -- function num : 0_41
  drama:CleanBeam(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σêáΘÖñσàëµƒ▒", 
ParamDesc = {"σàëµƒ▒Id", "σêáΘÖñσè¿Σ╜£"}
, 
ParamType = {"number", "string"}
, Type = "Φ╡äµ║É"}
, 
["σêáΘÖñσ¢╛τëç"] = {Api = function(self, Args, Callback)
  -- function num : 0_42
  drama:DelSprite(Args[1], Callback, Args[-1])
end
, Name = "σêáΘÖñσ¢╛τëç", 
ParamDesc = {"Key"}
, 
ParamType = {"string"}
, Type = "Φ╡äµ║É"}
, 
["σêáΘÖñµÇ¬τë⌐"] = {Api = function(self, Args, Callback)
  -- function num : 0_43
  drama:CleanMonster(Args[1], Callback, Args[-1])
end
, Name = "σêáΘÖñµÇ¬τë⌐", 
ParamDesc = {"µÇ¬τë⌐Id"}
, 
ParamType = {"number"}
, Type = "σèƒΦâ╜"}
, 
["σêáΘÖñτòîΘ¥óτë╣µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_44
  drama:DeleteUIFlash(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σêáΘÖñτòîΘ¥óτë╣µòê", 
ParamDesc = {"FlashσÉìτº░", "µ╕ÉσÅÿµù╢Θù┤"}
, 
ParamType = {"string", "number"}
, Type = "Φ╡äµ║É"}
, 
["σêáΘÖñΦí¿µâà"] = {Api = function(self, Args, Callback)
  -- function num : 0_45
  drama:RemoveFace(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σêáΘÖñΦí¿µâà", 
ParamDesc = {"Type", "Id"}
, 
ParamType = {"string", "number"}
, Type = "Φ╡äµ║É"}
, 
["σêáΘÖñΦºªσÅæσÖ\168"] = {Api = function(self, Args, Callback)
  -- function num : 0_46
  drama:DelTrigger(Args[1], Callback, Args[-1])
end
, Name = "σêáΘÖñΦºªσÅæσÖ\168", 
ParamDesc = {"ΦºªσÅæσÖ¿ID"}
, 
ParamTips = {"ΦºªσÅæσÖ¿σ£¿σ£║µÖ»Σ╕¡τÜäID∩╝êσ╕âµÇ¬τ╝ûΦ╛æσÖ¿Θçîτ£ï∩╝\137"}
, 
ParamType = {"number"}
, Type = "σèƒΦâ╜"}
, 
["σêáΘÖñΘÇÜΦ«»σ»╣Φ»¥µí\134"] = {Api = function(self, Args, Callback)
  -- function num : 0_47
  drama:ClosePhoneChatView(Callback, Args[-1])
end
, Name = "σêáΘÖñΘÇÜΦ«»σ»╣Φ»¥µí\134", Type = "ΦºÆΦë▓"}
, 
["σêáΘÖñΘò£σñ┤τ╗æσ«Ü"] = {Api = function(self, Args, Callback)
  -- function num : 0_48
  drama:DelCameraBindSceneObj(Callback, Args[-1])
end
, Name = "σêáΘÖñΘò£σñ┤τ╗æσ«Ü", Type = "Θò£σñ┤"}
, 
["σëºµâàσÉÄΣ╕ìµüóσñìΘò£σñ┤τ╗æσ«ÜΣ╕╗ΦºÆ"] = {Api = function(self, Args, Callback)
  -- function num : 0_49
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R3 in 'UnsetPending'

  drama.NotResumeCamera = true
  if Callback then
    Callback()
  end
end
, Name = "σëºµâàσÉÄΣ╕ìµüóσñìΘò£σñ┤τ╗æσ«ÜΣ╕╗ΦºÆ", Type = "σèƒΦâ╜"}
, 
["σëºµâàΦ╖│Φ┐çσ╝\128σà\179"] = {Api = function(self, Args, Callback)
  -- function num : 0_50
  -- DECOMPILER ERROR at PC2: Confused about usage of register: R3 in 'UnsetPending'

  drama.s_IsNotAllowSkip = Args[1]
  -- DECOMPILER ERROR at PC5: Confused about usage of register: R3 in 'UnsetPending'

  drama.s_IsCurStagePassSkip = Args[2]
  -- DECOMPILER ERROR at PC15: Confused about usage of register: R3 in 'UnsetPending'

  if drama.s_IsCurStagePassSkip and not drama.s_IsCurStagePass then
    drama.s_IsNotAllowSkip = true
  end
end
, Name = "σëºµâàΦ╖│Φ┐çσ╝\128σà\179", 
ParamDesc = {"Σ╕ìσàüΦ«\184", "ΘÇÜσà│σëìΣ╕ìσàüΦ«╕"}
, 
ParamType = {"boolean", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["σè¿Σ╜£µù╢Θù┤σçÅτ╝ô"] = {Api = function(self, Args, Callback)
  -- function num : 0_51
  drama:SetActionTimeScale(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σè¿Σ╜£µù╢Θù┤σçÅτ╝ô", 
ParamDesc = {"σçÅτ╝ôΘÇƒτÄç", "σçÅτ╝ôσ╕ºµò░"}
, 
ParamType = {"number", "number"}
, Type = "σèƒΦâ╜"}
, 
["σî║σƒƒσê╖µ\128\170"] = {Api = function(self, Args, Callback)
  -- function num : 0_52
  drama:RefreshMonsterByAreaId(Args[1], Callback, Args[-1])
end
, Name = "σî║σƒƒσê╖µ\128\170", 
ParamDesc = {"σî║σƒƒId"}
, 
ParamType = {"number"}
, Type = "σèƒΦâ╜"}
, 
["σÄïµÜùΦâîµÖ»Θƒ│Σ╣É"] = {Api = function(self, Args, Callback)
  -- function num : 0_53
  if Args[1] then
    (audio:Instance()):ChangeBgMusicVolume(((ALLSETTING.CONST_CFG).OTHER_CONST).AUDIO_VOL_6 / 100)
  else
    ;
    (audio:Instance()):ChangeBgMusicVolume(1)
  end
  if Callback then
    Callback()
  end
end
, Name = "σÄïµÜùΦâîµÖ»Θƒ│Σ╣É", 
ParamDesc = {"σÄïµÜù"}
, 
ParamTips = {"σ╝\128σÉ»σÄïµÜùσà│Θù¡µüóσñ\141"}
, 
ParamType = {"boolean"}
, Type = "Φ╡äµ║É"}
, 
["σÅûµ╢êσà│σìíΘò£σñ┤σÇìτÄç"] = {Api = function(self, Args, Callback)
  -- function num : 0_54
  drama:CancelForceCameraPer(Callback, Args[-1])
end
, Name = "σÅûµ╢êσà│σìíΘò£σñ┤σÇìτÄç", Type = "Θò£σñ┤"}
, 
["σÅûµ╢êσè¿Σ╜£Θò£σñ┤"] = {Api = function(self, Args, Callback)
  -- function num : 0_55
  -- DECOMPILER ERROR at PC1: Confused about usage of register: R3 in 'UnsetPending'

  drama.s_AllowBindCamera = false
end
, Name = "σÅûµ╢êσè¿Σ╜£Θò£σñ┤", Type = "Θò£σñ┤"}
, 
["σÅûµ╢êσìòµîëΘö«µ£ëµò\136"] = {Api = function(self, Args, Callback)
  -- function num : 0_56
  drama:CancelOnlyOneBtn(Callback, Args[-1])
end
, Name = "σÅûµ╢êσìòµîëΘö«µ£ëµò\136", Type = "σèƒΦâ╜"}
, 
["σÅûµ╢êΘò£σñ┤µîüτ╗¡τ╗æσ«Üσ»╣Φ▒íΘ¬¿Θ¬╝"] = {Api = function(self, Args, Callback)
  -- function num : 0_57
  drama:CancelCameraFollowToObj(Callback, Args[-1])
end
, Name = "σÅûµ╢êΘò£σñ┤µîüτ╗¡τ╗æσ«Üσ»╣Φ▒íΘ¬¿Θ¬╝", Type = "Θò£σñ┤"}
, 
["σ£║µÖ»σÄïµÜù∩╝êΣ║║τë⌐Σ╕ìσ╜▒σôì∩╝\137"] = {Api = function(self, Args, Callback)
  -- function num : 0_58
  drama:SetChangeSceneColor(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "σ£║µÖ»σÄïµÜù∩╝êΣ║║τë⌐Σ╕ìσ╜▒σôì∩╝\137", 
ParamDesc = {"µÿ»σÉªσ╝\128σÉ\175", "RGB(0-1)", "µ╕ÉσÅÿµù╢Θù┤", "Φ╡╖σºïRGB"}
, 
ParamType = {"boolean", "number3", "number", "number3"}
, Type = "Θò£σñ┤"}
, 
["σ«îµêÉτ½₧µèÇσ£║σ╜ôσëìσ╝òσ»\188"] = {Api = function(self, Args, Callback)
  -- function num : 0_59
  drama:FinishPVPGuideTeach(Args[1], Callback, Args[-1])
end
, Name = "σ«îµêÉτ½₧µèÇσ£║σ╜ôσëìσ╝òσ»\188", 
ParamDesc = {"µÿ╛τñ║Ready"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["σ»╣σ║öσê¢σ╗║τÄ⌐σ«╢npc"] = {Api = function(self, Args, Callback)
  -- function num : 0_60
  drama:ChangePlayerNpc(Args[1], Args[2], Args[3], Args[4])
end
, Name = "σ»╣σ║öσê¢σ╗║τÄ⌐σ«╢npc", 
ParamDesc = {"Σ╜┐τö¿µù╢Φúà", "τÄ⌐σ«╢µò░µì«1", "τÄ⌐σ«╢µò░µì«2", "τÄ⌐σ«╢µò░µì«3"}
, 
ParamTips = {"µÿ»σÉªΣ╜┐τö¿µù╢Φúà", "σí½σåÖ[σ¥Éµáçx|σ¥ÉµáçY|Θ¥óσÉæ]NPCΘ╗ÿΦ«ñσÉìσ¡ùΣ╕\186\"τÄ⌐σ«╢1\"", "σí½σåÖ[σ¥Éµáçx|σ¥ÉµáçY|Θ¥óσÉæ]NPCΘ╗ÿΦ«ñσÉìσ¡ùΣ╕\186\"τÄ⌐σ«╢2\"", "σí½σåÖ[σ¥Éµáçx|σ¥ÉµáçY|Θ¥óσÉæ]NPCΘ╗ÿΦ«ñσÉìσ¡ùΣ╕\186\"τÄ⌐σ«╢3\""}
, 
ParamType = {"boolean", "string", "string", "string"}
, Type = "ΦºÆΦë▓"}
, 
["σ»╣σ║öσêáΘÖñτÄ⌐σ«╢npc"] = {Api = function(self, Args, Callback)
  -- function num : 0_61
  drama:ClearPlayerNpc()
end
, Name = "σ»╣σ║öσêáΘÖñτÄ⌐σ«╢npc", Type = "ΦºÆΦë▓"}
, 
["σ▒Åσ╣òµ¿íτ│èµòêµ₧£"] = {Api = function(self, Args, Callback)
  -- function num : 0_62
  drama:SetScreenBlur(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "σ▒Åσ╣òµ¿íτ│èµòêµ₧£", 
ParamDesc = {"µÿ»σÉªσ╝\128σÉ\175", "µ¿íτ│èτ¡ëτ║º", "µ╕ÉσÅÿµù╢Θù┤", "NpcIdσ║Åσêù"}
, 
ParamTips = {"µÿ»σÉªσ╝\128σÉ\175", ">0", "µ╕ÉσÅÿµù╢Θù┤", "Σ╕ìµ¿íτ│èNPCτÜäIDσ║Åσêù∩╝êΦï▒µûçΘ\128ùσÅ╖ΘÜöσ╝Ç∩╝\137"}
, 
ParamType = {"boolean", "number", "number", "string"}
, Type = "Θò£σñ┤"}
, 
["σ▒Åσ╣òµ╕ÉσÅÿτÖ\189/Θ╗\145"] = {Api = function(self, Args, Callback)
  -- function num : 0_63
  drama:SetScreenColor(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "σ▒Åσ╣òµ╕ÉσÅÿτÖ\189/Θ╗\145", 
ParamDesc = {"µÿ»σÉªσ╝\128σÉ\175", "τÖ╜µòêµ₧\156", "µ╕ÉσÅÿµù╢Θù┤"}
, 
ParamType = {"boolean", "boolean", "number"}
, Type = "Θò£σñ┤"}
, 
["σ▒Åσ╣òµ╕ÉσÅÿΘ╗\145"] = {Api = function(self, Args, Callback)
  -- function num : 0_64
  drama:ScreenBlack(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "σ▒Åσ╣òµ╕ÉσÅÿΘ╗\145", 
ParamDesc = {"µ╕ÉσàÑµù╢Θù┤", "Σ┐¥µîüµù╢Θù┤", "µ╕Éσç║µù╢Θù┤", "σëºµâàσÉÄΣ┐¥τò\153"}
, 
ParamType = {"number", "number", "number", "boolean"}
, Type = "σ╕╕τö¿"}
, 
["σ╗╢Φ┐ƒ"] = {Api = function(self, Args, Callback)
  -- function num : 0_65
  drama:DramaDelay(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, DefaultIsBlock = true, Name = "σ╗╢Φ┐ƒ", 
ParamDesc = {"µù╢Θù┤(σ╕\167)", "ΦºÆΦë▓σÉ\141", "σè¿Σ╜£σÉ\141"}
, 
ParamTips = {"µù╢Θù┤:σ╕\167", "ΦºÆΦë▓σÉ\141:ΦºÆΦë▓σÉìσ¡ù", "σè¿Σ╜£σÉ\141:ΦºÆΦë▓µÆ¡µö╛σ«îΦ┐ÖΣ╕¬σè¿Σ╜£µîçΣ╗ñσ░▒τ╗ôµ¥ƒ"}
, 
ParamType = {"number", "string", "string"}
, Type = "σ╕╕τö¿"}
, 
["σ╝\128σà│µ¿íσ₧ïΦÖÜσî\150"] = {Api = function(self, Args, Callback)
  -- function num : 0_66
  drama:NeedTransparent(Args[1], Callback, Args[-1])
end
, Name = "σ╝\128σà│µ¿íσ₧ïΦÖÜσî\150", 
ParamDesc = {"µÿ»σÉªσ╝\128σÉ\175"}
, 
ParamType = {"boolean"}
, Type = "ΦºÆΦë▓"}
, 
["σ╝\128σà│ΦºÆΦë▓σ╜▒σ¡\144"] = {Api = function(self, Args, Callback)
  -- function num : 0_67
  drama:ShowSceneObjShadow(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σ╝\128σà│ΦºÆΦë▓σ╜▒σ¡\144", 
ParamDesc = {"ΦºÆΦë▓Id", "µÿ╛τñ║"}
, 
ParamType = {"number", "boolean"}
, Type = "ΦºÆΦë▓"}
, 
["σ╝\128σà│ΦºÆΦë▓Θÿ╗µî\161"] = {Api = function(self, Args, Callback)
  -- function num : 0_68
  drama:SetObjBodyBlock(Args[1], Args[2], Callback, Args[-1])
end
, Name = "σ╝\128σà│ΦºÆΦë▓Θÿ╗µî\161", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░", "µÿ»σÉªσ╝\128σÉ\175"}
, 
ParamTips = {"ΦºÆΦë▓σÉìτº░", "µÿ»σÉªσ╝\128σÉ»ΦºÆΦë▓Θÿ╗µî\161"}
, 
ParamType = {"string", "boolean"}
, Type = "ΦºÆΦë▓"}
, 
["σ╝\128σÉ\175/σà│Θù¡3dµ╕▓µƒô"] = {Api = function(self, Args, Callback)
  -- function num : 0_69
  renderMgr:EnableMainStage(Args[1])
  if Callback then
    Callback()
  end
end
, Name = "σ╝\128σÉ\175/σà│Θù¡3dµ╕▓µƒô", 
ParamDesc = {"σ╝\128σÉ\175"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["σ╝\128σÉ\175/σà│Θù¡µ╗ñΘò£"] = {Api = function(self, Args, Callback)
  -- function num : 0_70
  drama:EnableColorgrading(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "σ╝\128σÉ\175/σà│Θù¡µ╗ñΘò£", 
ParamDesc = {"µëôσ╝Ç", "µ╗ñΘò£Φ┤┤σ¢╛1", "σ╕ºµò░", "µ╗ñΘò£Φ┤┤σ¢╛2"}
, 
ParamType = {"boolean", "string", "number", "string"}
, Type = "Θò£σñ┤"}
, 
["σ╝\128σÉ»σÄƒτö╗µ¿íσ╝\143"] = {Api = function(self, Args, Callback)
  -- function num : 0_71
  drama:OpenOriginalModel(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "σ╝\128σÉ»σÄƒτö╗µ¿íσ╝\143", 
ParamDesc = {"µîüτ╗¡µù╢Θù┤", "Φ┐¢σ£║µòêµ₧£", "τªüµ¡óσà│Θù¡3dµ╕▓µƒô"}
, 
ParamTips = {"σ╝\128σÉ»τÜäµù╢Θò┐"}
, 
ParamType = {"number", "number", "boolean"}
, Type = "Φ╡äµ║É"}
, 
["σ╝\128σÉ»σÉîµ¡ÑσèáΦ╜\189"] = {Api = function(self, Args, Callback)
  -- function num : 0_72
  drama:SetIsNotSyns(Args[1], Callback, Args[-1])
end
, Name = "σ╝\128σÉ»σÉîµ¡ÑσèáΦ╜\189", 
ParamDesc = {"σ╝\128σà\179"}
, 
ParamTips = {"σ╝\128σà\179:trueµÿ»σ╝ÇσÉ\175", "falseµÿ»σà│Θù¡µüóσñìµù╢Θù\180"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["σ╝\128σÉ»Φç¬σè¿ΘöüµÇ\170"] = {Api = function(self, Args, Callback)
  -- function num : 0_73
  drama:SetAutoLock(Args[1], Callback, Args[-1])
end
, Name = "σ╝\128σÉ»Φç¬σè¿ΘöüµÇ\170", 
ParamDesc = {"σ╝\128σÉ\175"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["σ╝\128σºïΣ╜┐τö¿σëºµâàΘò£σñ\180"] = {Api = function(self, Args, Callback)
  -- function num : 0_74
  (cameraMgr:Instance()):BeginDrama(Callback, Args[-1])
end
, Name = "σ╝\128σºïΣ╜┐τö¿σëºµâàΘò£σñ\180", Type = "Θò£σñ┤"}
, 
["σ╝║σê╢σ╝\128σÉ»Φâ╜σè¢µèÇ"] = {Api = function(self, Args, Callback)
  -- function num : 0_75
  drama:OpenHeroAbility()
end
, Name = "σ╝║σê╢σ╝\128σÉ»Φâ╜σè¢µèÇ", Type = "σèƒΦâ╜"}
, 
["σ╝║σê╢µÆ¡µö╛σëºµâà"] = {Api = function(self, Args, Callback)
  -- function num : 0_76
end
, Name = "σ╝║σê╢µÆ¡µö╛σëºµâà", 
ParamDesc = {"σ╝║σê╢"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["µüóσñìAI"] = {Api = function(self, Args, Callback)
  -- function num : 0_77
  drama:EnableAi(true, Callback, Args[-1])
end
, Name = "µüóσñìAI", Type = "σ╕╕τö¿"}
, 
["µüóσñìσ£║µÖ»Bloom"] = {Api = function(self, Args, Callback)
  -- function num : 0_78
  drama:RecoveryBloom(Callback, Args[-1])
end
, Name = "µüóσñìσ£║µÖ»Bloom", Type = "σèƒΦâ╜"}
, 
["µüóσñìµ¿íσ₧ïσàëµ║É"] = {Api = function(self, Args, Callback)
  -- function num : 0_79
  drama:RecoveryAllSunDir(Args[1], Callback, Args[-1])
end
, Name = "µüóσñìµ¿íσ₧ïσàëµ║É", 
ParamDesc = {"ΦºÆΦë▓Id"}
, 
ParamTips = {"Σ╕ìσí½Φí¿τñ║µüóσñìµë\128µ£ëΦ«╛τ╜«Φ┐çτÜäµ¿íσ₧ïτÜäσàëµ║É"}
, 
ParamType = {"number"}
, Type = "ΦºÆΦë▓"}
, 
["µüóσñìµ╕╕µêÅ"] = {Api = function(self, Args, Callback)
  -- function num : 0_80
  drama:ResumeGame(Callback, Args[-1])
end
, Name = "µüóσñìµ╕╕µêÅ", Type = "σèƒΦâ╜"}
, 
["µëôσ╝ÇΣ║║τë⌐µö╗τòÑτòîΘ¥ó"] = {Api = function(self, Args, Callback)
  -- function num : 0_81
  drama:OpenShowRoleIntroduceFrame(Args[1], Callback, Args[-1])
end
, Name = "µëôσ╝ÇΣ║║τë⌐µö╗τòÑτòîΘ¥ó", 
ParamDesc = {"Θí╡µò░"}
, 
ParamType = {"number"}
, Type = "σèƒΦâ╜"}
, 
["µëôσ╝ÇΦüîσ£║ΦºüΣ╣áτö│Φ»╖Σ╣\166"] = {Api = function(self, Args, Callback)
  -- function num : 0_82
  drama:ShowChangeNameView(Callback, Args[-1])
end
, Name = "µëôσ╝ÇΦüîσ£║ΦºüΣ╣áτö│Φ»╖Σ╣\166", Type = "σèƒΦâ╜"}
, 
["µëôσ╝ÇΦ╜╗σ║ªτ╗äΘÿƒµ£¼σ«¥τ«▒τòîΘ¥\162"] = {Api = function(self, Args, Callback)
  -- function num : 0_83
  drama:ShowTeamRelaxBoxView(Args[1], Callback, Args[-1])
end
, Name = "µëôσ╝ÇΦ╜╗σ║ªτ╗äΘÿƒµ£¼σ«¥τ«▒τòîΘ¥\162", 
ParamDesc = {"σà│σìíσ«¥τ«▒τé\185"}
, 
ParamType = {"number"}
, Type = "σèƒΦâ╜"}
, 
["µëºΦíîσ╕ºΣ║ïΣ╗\182"] = {Api = function(self, Args, Callback)
  -- function num : 0_84
  drama:CallModelEvent(Callback, Args[-1])
end
, Name = "µëºΦíîσ╕ºΣ║ïΣ╗\182", Type = "σèƒΦâ╜"}
, 
["µëºΦíîµêÿσ╜╣σ£░σ¢╛µîçΣ╗ñ"] = {Api = function(self, Args, Callback)
  -- function num : 0_85
  drama:ExecuteCampaignMapCmd(Args[1], Callback, Args[-1])
end
, Name = "µëºΦíîµêÿσ╜╣σ£░σ¢╛µîçΣ╗ñ", 
ParamDesc = {"µîçΣ╗ñ"}
, 
ParamTips = {"µîçΣ╗ñσåÖµ│ò∩╝ÜLockBossπÇéσ░åσ£░σ¢╛Σ╕¡σ┐âτº╗σè¿σê░BOSSπÇéσ╣╢Σ╕öµÿ╛τñ║Θöüσ«ÜBOSSFLASHπÇ\130"}
, 
ParamType = {"string"}
, Type = "σèƒΦâ╜"}
, 
["µîçσ«Üσ»╣Φ▒íµÄëΦÉ╜Buff"] = {Api = function(self, Args, Callback)
  -- function num : 0_86
  local MonsterId = Args[1]
  local BuffList = Args[2]
  drama:DesignationTargetDropBuff(Args[1], Args[2], Callback, Args[-1])
end
, Name = "µîçσ«Üσ»╣Φ▒íµÄëΦÉ╜Buff", 
ParamDesc = {"µÇ¬τë⌐ID", "µÄëΦÉ╜buffID"}
, 
ParamTips = {"MonsterId:µÇ¬τë⌐IDBuffList:BuffσêùΦí¿"}
, 
ParamType = {"number", "string"}
, Type = "σèƒΦâ╜"}
, 
["µîçσ«Üµè\128Φâ╜µîëΘÆ«σ╝╣Φ╡\183"] = {Api = function(self, Args, Callback)
  -- function num : 0_87
  drama:UpSkillBtnByName(Args[1])
end
, Name = "µîçσ«Üµè\128Φâ╜µîëΘÆ«σ╝╣Φ╡\183", 
ParamDesc = {"µîëΘÆ«σÉìσ¡ù"}
, 
ParamType = {"string"}
, Type = "σèƒΦâ╜"}
, 
["µÄºΣ╗╢Θ½ÿΣ║«"] = {Api = function(self, Args, Callback)
  -- function num : 0_88
  drama:HighlightObj(Args[1], Args[2], Callback, Args[-1])
end
, Name = "µÄºΣ╗╢Θ½ÿΣ║«", 
ParamDesc = {"µÄºΣ╗╢σÉ\141", "Θ½ÿΣ║«σ╝\128σà\179"}
, 
ParamType = {"string", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["µÄºσê╢µÅÉτñ║µÿ╛ΘÜÉ"] = {Api = function(self, Args, Callback)
  -- function num : 0_89
  drama:HandleShowPromptView(Args[1], Callback, Args[-1])
end
, Name = "µÄºσê╢µÅÉτñ║µÿ╛ΘÜÉ", 
ParamDesc = {"µÿ»σÉªµÿ╛τñ║"}
, 
ParamTips = {"σ╝\128σà\179:true"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["µÅÆσàÑΘ╗æσ£║"] = {Api = function(self, Args, Callback)
  -- function num : 0_90
  drama:ShowBlackFullLabel(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "µÅÆσàÑΘ╗æσ£║", 
ParamDesc = {"σ»╣Φ»¥Id", "ΘÇƒσ║ª", "σàüΦ«╕Φ╖│Φ┐ç"}
, 
ParamType = {"number", "number", "boolean"}
, Type = "Θò£σñ┤"}
, 
["µÆ¡µö╛Flash"] = {Api = function(self, Args, Callback)
  -- function num : 0_91
  drama:PlayFlash(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "µÆ¡µö╛Flash", 
ParamDesc = {"FlashσÉìτº░", "τë╣µòêId", "σ╛¬τÄ»", "σ¥Éµáç", "σü£σ£¿µ£\128σÉÄσ╕º", "ΘÇéΘàì"}
, 
ParamTips = {"flashσ£¿σëºµâàΣ╕¡τÜäσÉìτº\176", "τë╣µòêID", "σ¥Éµáç", "σü£σ£¿µ£\128σÉÄΣ╕Çσ╕\167", "Σ╕ìσí½µêûΦ\128àσí½5"}
, 
ParamType = {"string", "number", "boolean", "number2", "boolean", "number"}
, Type = "Φ╡äµ║É"}
, 
["µÆ¡µö╛Σ╕ïΣ╕ÇΣ╕¬τ½₧µè\128σ£║σëºµâ\133"] = {Api = function(self, Args, Callback)
  -- function num : 0_92
  drama:PlayNextPVPGuideTeach(Callback, Args[-1])
end
, Name = "µÆ¡µö╛Σ╕ïΣ╕ÇΣ╕¬τ½₧µè\128σ£║σëºµâ\133", 
ParamDesc = {"µù\160"}
, Type = "σèƒΦâ╜"}
, 
["µÆ¡µö╛Σ┐íσÅ╖σíöσ╝ÇσÉ»σëºµâ\133"] = {Api = function(self, Args, Callback)
  -- function num : 0_93
  (drama.ShowOpenTower)(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "µÆ¡µö╛Σ┐íσÅ╖σíöσ╝ÇσÉ»σëºµâ\133", 
ParamDesc = {"NPCID", "σ╝\128σÉ»Σ╗╗σèíID", "µö»τ║┐Σ╗╗σèíID"}
, 
ParamTips = {"σà│ΦüöτÜäNPCID", "σà│ΦüöτÜäΣ┐íσÅ╖σíöσ╝\128σÉ»Σ╗╗σèíID", "σà│ΦüöτÜäσ╝ÇσÉ»µö»τ║┐Σ╗╗σèíID"}
, 
ParamType = {"number", "number", "number"}
, Type = "σèƒΦâ╜"}
, 
["µÆ¡µö╛σà│σìíτÄ⌐µ│òσè¿τö╗"] = {Api = function(self, Args, Callback)
  -- function num : 0_94
  drama:ShowStagePlayType(Args[1], Callback, Args[-1])
end
, DefaultIsBlock = true, Name = "µÆ¡µö╛σà│σìíτÄ⌐µ│òσè¿τö╗", 
ParamDesc = {"Σ╕ìτ╗æσ«ÜΘò£σñ┤σ¢₧Σ╕╗ΦºÆΦ║½Σ╕è∩╝êσà│τÜäµù╢σÇÖµÿ»τ╗æσ«Üσ¢₧Σ╕╗ΦºÆΦ║½Σ╕èτÜä∩╝\137"}
, 
ParamTips = {"Σ╕ìτ╗æΘò£σñ┤"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["µÆ¡µö╛σ£║µÖ»ΦºÆΦë▓σ»╣Φ»¥"] = {Api = function(self, Args, Callback)
  -- function num : 0_95
  drama:ShowCombatRoleDialog(Args[1], Callback, Args[-1])
end
, Name = "µÆ¡µö╛σ£║µÖ»ΦºÆΦë▓σ»╣Φ»¥", 
ParamDesc = {"σ»╣Φ»¥ID"}
, 
ParamTips = {"σ»╣Φ»¥ID:σÅéΦ\128âµêÿµû\151/Cσ£║µÖ»ΦºÆΦë▓σ»╣Φ»¥Φí¿ID|Θ¬ÜΦ»¥ΦºªσÅæσÖ¿σëºµâàAPIτëêµ£¼πÇéΘ¥₧µêÿµûùσ£║µÖ»τ¢«σëìΣ╕ìσÅ»τö¿|Θÿ╗σí₧µùáµòêπÇüΘ£ÇΦªüΘÿ╗σí₧Φç¬σ╖▒σèáσ╗╢Φ┐ƒ"}
, 
ParamType = {"number"}
, Type = "ΦºÆΦë▓"}
, 
["µÆ¡µö╛τë╣µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_96
  drama:PlayEffect(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "µÆ¡µö╛τë╣µòê", 
ParamDesc = {"τë╣µòêσÉìτº░", "τë╣µòêId", "σ╛¬τÄ»", "σ¥Éµáç", "ΦºÆσ║ª"}
, 
ParamType = {"string", "number", "boolean", "number3", "number"}
, Type = "Φ╡äµ║É"}
, 
["µÆ¡µö╛τòîΘ¥óτë╣µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_97
  drama:CreateUIFlash(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Callback, Args[-1])
end
, Name = "µÆ¡µö╛τòîΘ¥óτë╣µòê", 
ParamDesc = {"FlashσÉìτº░", "τë╣µòêId", "σ╛¬τÄ»", "σ¥Éµáç", "ΘÇéΘàìτ▒╗σ₧ï", "σëºµâàσÉÄµ╕àτÉ\134", "ΘÇéΘàìσñºσ░Å", "µ╕ÉσÅÿµù╢Θù┤"}
, 
ParamType = {"string", "number", "boolean", "number2", "number", "boolean", "boolean", "number"}
, Type = "Φ╡äµ║É"}
, 
["µÆ¡µö╛ΦâîµÖ»Θƒ│Σ╣É"] = {Api = function(self, Args, Callback)
  -- function num : 0_98
  drama:PlayBgMusic(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "µÆ¡µö╛ΦâîµÖ»Θƒ│Σ╣É", 
ParamDesc = {"Θƒ│µòêID", "σÅéµò░σÉ\141", "σÅéµò░σÇ\188", "µ╖íσàÑµù╢Θù┤"}
, 
ParamTips = {"Θƒ│µòêID", "FmodµùïΘÆ«σÅéµò░σÉ\141", "FmodµùïΘÆ«σÅéµò░σÇ\188", "µ╖íσàÑµù╢Θù┤"}
, 
ParamType = {"number", "string", "number", "number"}
, Type = "Φ╡äµ║É"}
, 
["µÆ¡µö╛ΦºåΘóæ"] = {Api = function(self, Args, Callback)
  -- function num : 0_99
  drama:PlayVideoFile(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Args[10], Args[11], Args[12], Callback, Args[-1])
end
, Name = "µÆ¡µö╛ΦºåΘóæ", 
ParamDesc = {"ΦºåΘóæµûçΣ╗╢σÉ\141", "σ¥Éµáç", "σñºσ░Å", "σêåΦ╛¿τÄ\135", "µÿ»σÉªσ╛¬τÄ»", "µ╕ÉσÅÿσç║τÄ░", "τÖ╜Θü«τ╜⌐µ╕ÉσÅ\152", "µ╕ÉσÅÿµù╢Θù┤", "Θƒ│µòêID", "Θƒ│µòêµ╖íσàÑ", "µÿ╛τñ║σ£║µÖ»", "µùïΦ╜¼ΦºÆσ║ª"}
, 
ParamType = {"string", "number2", "number2", "number2", "boolean", "boolean", "boolean", "number", "number", "number", "boolean", "number3"}
, Type = "Φ╡äµ║É"}
, 
["µÆ¡µö╛Θƒ│µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_100
  drama:PlaySound(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "µÆ¡µö╛Θƒ│µòê", 
ParamDesc = {"Θƒ│µòêId", "Θƒ│µòêσÉìτº░", "Θƒ│µòêσ¥Éµáç", "σ╛¬τÄ»", "µ╖íσàÑµù╢Θù┤"}
, 
ParamTips = {"Θƒ│µòêID", "Θƒ│µòêσ£¿σëºµâàΣ╕¡τÜäσÉìσ¡\151", "3DΘƒ│µòêµëìτö¿σ╛ùΣ╕è(Σ╕\128Φê¼Σ╕ìτö¿τ«í)", "µÿ»σÉªσ╛¬τÄ»µÆ¡µö╛", "Θƒ│µòêµ╖íσàÑµù╢Θù┤∩╝êσ╕º∩╝\137"}
, 
ParamType = {"number", "string", "number3", "boolean", "number"}
, Type = "Φ╡äµ║É"}
, 
["µû░τ¢╕µ£║σÅÿµìóσê░"] = {Api = function(self, Args, Callback)
  -- function num : 0_101
  drama:NewCameraTranslateTo(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Callback, Args[-1])
end
, Name = "µû░τ¢╕µ£║σÅÿµìóσê░", 
ParamDesc = {"µ║Éτé╣", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "FOV", "τ¢╕µ£║σÅéµò░", "τ╝ôσè¿µû╣σ╝Å", "µù╢Θù┤(σ╕\167)"}
, 
ParamTips = {"σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "Σ┐¥σ¡ÿτ¢╕µ£║σÅéµò░τÜäσÅéµò░σÉì", "Θ╗ÿΦ«ñµÿ»Linearσ¥çσîÇσÅÿµìó", "τ¢╕µ£║τº╗σè¿σê░µ£Çτ╗êΘò£σñ┤τÜäµù╢Θò┐"}
, 
ParamType = {"number3", "number", "number", "number", "number", "string", "string", "number"}
, Type = "σ╕╕τö¿"}
, 
["µû░Θò£σñ┤σêçµìóσê░"] = {Api = function(self, Args, Callback)
  -- function num : 0_102
  drama:NewCameraUpdateTo(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Callback, Args[-1])
end
, Name = "µû░Θò£σñ┤σêçµìóσê░", 
ParamDesc = {"µ║Éτé╣", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "FOV", "σêçµìóσê░σÅéµò\176"}
, 
ParamTips = {"σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "Σ┐¥σ¡ÿτ¢╕µ£║σÅéµò░τÜäσÅéµò░σÉì"}
, 
ParamType = {"number3", "number", "number", "number", "number", "number", "string"}
, Type = "σ╕╕τö¿"}
, 
["µùáΦºåΘÿ╗µîíσ╝\128σà\179"] = {Api = function(self, Args, Callback)
  -- function num : 0_103
  drama:OpenDramaFixPos(Args[1], Callback, Args[-1])
end
, Name = "µùáΦºåΘÿ╗µîíσ╝\128σà\179", 
ParamDesc = {"µÿ»σÉªσ╝\128σÉ\175"}
, 
ParamType = {"boolean"}
, Type = "ΦºÆΦë▓"}
, 
["µÿ»σÉªσàüΦ«╕µïûσè¿σ▒Åσ╣ò"] = {Api = function(self, Args, Callback)
  -- function num : 0_104
  drama:EnableDragScreen(Args[1], Callback, Args[-1])
end
, Name = "µÿ»σÉªσàüΦ«╕µïûσè¿σ▒Åσ╣ò", 
ParamDesc = {"σàüΦ«╕"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["µÿ╛τñ║/σà│Θù¡µêÿσ╜╣σ£░σ¢╛"] = {Api = function(self, Args, Callback)
  -- function num : 0_105
  drama:ShowCampaignMapView(Args[1], Callback, Args[-1])
end
, Name = "µÿ╛τñ║/σà│Θù¡µêÿσ╜╣σ£░σ¢╛", 
ParamDesc = {"µÿ»σÉªµÿ╛τñ║"}
, 
ParamType = {"boolean", "number", "number", "number", "number"}
, Type = "σèƒΦâ╜"}
, 
["µÿ╛τñ║/σà│Θù¡µêÿσ╜╣τ¢«µáçΘ¥óµ¥┐"] = {Api = function(self, Args, Callback)
  -- function num : 0_106
  drama:ShowCampaignTargetInfo(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "µÿ╛τñ║/σà│Θù¡µêÿσ╜╣τ¢«µáçΘ¥óµ¥┐", 
ParamDesc = {"µÿ»σÉªµÿ╛τñ║", "µêÿσ╜╣Id", "X", "Y", "ΘÇéΘàì"}
, 
ParamTips = {"µêÿσ╜╣IdΘ╗ÿΦ«ñµÿ»σ╜ôσëìµêÿσ╜╣π\128éσë⌐Σ╕ïτÜäµá╣µì«Θ£\128ΦªüΘàìτ╜\174"}
, 
ParamType = {"boolean", "number", "number", "number", "number"}
, Type = "σèƒΦâ╜"}
, 
["µÿ╛τñ║/ΘÜÉΦùÅBossΦí\128µ¥\161"] = {Api = function(self, Args, Callback)
  -- function num : 0_107
  drama:SetBossHpVisible(Args[1], Args[2], Callback, Args[-1])
end
, Name = "µÿ╛τñ║/ΘÜÉΦùÅBossΦí\128µ¥\161", 
ParamDesc = {"µÿ╛τñ║", "µîçσ«ÜµÇ¬τë⌐ID"}
, 
ParamType = {"boolean", "number"}
, Type = "σèƒΦâ╜"}
, 
["µÿ╛τñ║/ΘÜÉΦùÅσà│σìíσ╝òσ»╝τë╣µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_108
  drama:ShowShowArrowEff(Args[1], Args[2], Callback, Args[-1])
end
, Name = "µÿ╛τñ║/ΘÜÉΦùÅσà│σìíσ╝òσ»╝τë╣µòê", 
ParamDesc = {"µÿ╛τñ║", "σ╜ôσëìτ╗ôµ¥ƒτÜäσ╝òσ»╝Id"}
, 
ParamType = {"boolean", "number"}
, Type = "σèƒΦâ╜"}
, 
["µÿ╛τñ║/ΘÜÉΦùÅσ»╣Φ▒íσêùΦí¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_109
  drama:SetAllObjVisible(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "µÿ╛τñ║/ΘÜÉΦùÅσ»╣Φ▒íσêùΦí¿", 
ParamDesc = {"µÿ╛τñ║", "Npc", "σà╢Σ╗ûτÄ⌐σ«╢", "ΦºªσÅæσÖ\168", "µÇ¬τë⌐"}
, 
ParamType = {"boolean", "boolean", "boolean", "boolean", "boolean"}
, Type = "ΦºÆΦë▓"}
, 
["µÿ╛τñ║/ΘÜÉΦùÅΦºÆΦë▓"] = {Api = function(self, Args, Callback)
  -- function num : 0_110
  drama:ShowObject(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "µÿ╛τñ║/ΘÜÉΦùÅΦºÆΦë▓", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░", "µÿ╛τñ║", "µù╢Θù┤∩╝êσ╕º∩╝\137", "Σ╜┐τö¿Id"}
, 
ParamTips = {"µù╢Θù┤(σ╕\167):µ╖íσàÑµ╖íσç║µù╢Θù┤πÇéσí½Σ║åσ░▒µ╖íσàÑµ╖íσç║µû╣σ╝Åµÿ╛τñ║ΦºÆΦë▓"}
, 
ParamType = {"string", "boolean", "number", "boolean"}
, Type = "σ╕╕τö¿"}
, 
["µÿ╛τñ║UIτòîΘ¥ó"] = {Api = function(self, Args, Callback)
  -- function num : 0_111
  drama:ShowUIView(true, Callback, Args[-1])
end
, Name = "µÿ╛τñ║UIτòîΘ¥ó", Type = "Θò£σñ┤"}
, 
["µÿ╛τñ║σÇÆΦ«íµù╢µ╢êσñ▒σ░Åτ▓╛τü╡σ»╣Φ»¥µí\134"] = {Api = function(self, Args, Callback)
  -- function num : 0_112
  drama:ShowChatDialogueHideByTime(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "µÿ╛τñ║σÇÆΦ«íµù╢µ╢êσñ▒σ░Åτ▓╛τü╡σ»╣Φ»¥µí\134", 
ParamDesc = {"σ»╣Φ»¥Id", "σÉæσÅ│µá╖σ╝Å", "σ¥Éµáç", "µ╢êσñ▒µù╢Θù┤"}
, 
ParamType = {"number", "boolean", "number2", "number"}
, Type = "ΦºÆΦë▓"}
, 
["µÿ╛τñ║σÄƒτö╗Σ╕ìΦºäσêÖΘ£çσè\168"] = {Api = function(self, Args, Callback)
  -- function num : 0_113
  drama:ShowAnomalyVibrat(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Callback, Args[-1])
end
, Name = "µÿ╛τñ║σÄƒτö╗Σ╕ìΦºäσêÖΘ£çσè\168", 
ParamDesc = {"σê¥σºïσ¥Éµáç", "ΘÜÅµ£║XΦ╜\1801", "ΘÜÅµ£║YΦ╜\1801", "ΘÜÅµ£║XΦ╜\1802", "ΘÜÅµ£║YΦ╜\1802", "σìòµ¼íµù╢Θò┐", "Θù┤ΘÜöµù╢Θù┤", "µÿ»σÉªΘçìσñì", "σÄƒτö╗σ▒éτ║º"}
, 
ParamTips = {"ΦºäσêÖσñ¬σñìµ¥éΣ║åτ¢┤µÄÑσñìσê╢Σ╕\128Σ╕¬µ¿íµ¥┐µö╣σÅéµò░σÉ\167"}
, 
ParamType = {"number2", "number2", "number2", "number2", "number2", "number", "number", "boolean", "number"}
, Type = "Φ╡äµ║É"}
, 
["µÿ╛τñ║σÄƒτö╗Θ£çσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_114
  drama:ShowTotalOriginalVibrat(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "µÿ╛τñ║σÄƒτö╗Θ£çσè¿", 
ParamDesc = {"Θ£çσè¿σ╣àσ║ª", "Θ£çσè¿ΦºÆσ║ª", "σìòµ¼íµù╢Θò┐", "Θù┤ΘÜöµù╢Θù┤", "µÿ»σÉªΘçìσñì", "σÄƒτö╗σ▒éτ║º"}
, 
ParamType = {"number", "number", "number", "number", "boolean", "number"}
, Type = "Φ╡äµ║É"}
, 
["µÿ╛τñ║σ¢╛τëç"] = {Api = function(self, Args, Callback)
  -- function num : 0_115
  drama:ViewSprite(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "µÿ╛τñ║σ¢╛τëç", 
ParamDesc = {"Key", "Φ╡äµ║ÉσÉ\141", "σ¥Éµáç"}
, 
ParamType = {"string", "string", "number2"}
, Type = "Φ╡äµ║É"}
, 
["µÿ╛τñ║σ¡ùσ╣ò"] = {Api = function(self, Args, Callback)
  -- function num : 0_116
  drama:ShowSubtitles(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Callback, Args[-1])
end
, Name = "µÿ╛τñ║σ¡ùσ╣ò", 
ParamDesc = {"σ¡ùΣ╜ô", "σ¡ùΣ╜ôσñºσ░Å", "σ¡ùΣ╜ôΘó£Φë▓", "σ¡ùσ╣òId", "Θƒ│µòêId", "µîüτ╗¡µù╢Θù┤", "σ¥Éµáç", "µ╖íσàÑµù╢Θù┤", "µ╖íσç║µù╢Θù┤"}
, 
ParamTips = {"σ¡ùΣ╜ô", "σ¡ùΣ╜ôσñºσ░Å", "σ¡ùΣ╜ôΘó£Φë▓"}
, 
ParamType = {"string", "number", "string", "number", "number", "number", "number2", "number", "number"}
, Type = "ΦºÆΦë▓"}
, 
["µÿ╛τñ║σ»╣Φ»¥µí\134"] = {Api = function(self, Args, Callback)
  -- function num : 0_117
  drama:ShowChatDialogue(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Args[10], Args[11], Args[12], Args[13], Args[14], Args[15], Callback, Args[-1])
end
, DefaultIsBlock = true, Name = "µÿ╛τñ║σ»╣Φ»¥µí\134", 
ParamDesc = {"τ▒╗σ₧ï", "σÉìσ¡ùId", "σ»╣Φ»¥Id", "µëôσ¡ùΘƒ│µòê", "ΦºÆΦë▓Id", "σÅ»Θ\128ëσè¿Σ╜\156", "ΘÜÉΦùÅΣ╕ïΣ╕Çµ¡\165", "σ╗╢Φ┐ƒτé╣σç╗µù\182", "Φç¬σè¿Σ╕ïΣ╕Çµ¡\165", "σ╝\128σÉ»σè¿µò\136", "σêçµìóσè¿µòê", "τ╗ôµ¥ƒσè¿µòê", "τ⌐\186", "τ⌐\186", "Θ╗ÿΦ«ñτé╣σç╗"}
, 
ParamTips = {"σ»╣Φ»¥µíåτ▒╗σ₧ï∩╝ê1µÖ«Θ\128Üσ»╣Φ»\1572µòîΣ║║σ»╣Φ»¥3µùáσÉìσ¡ùµíåτÜäΣ╕ÇΦê¼σÅÖΦ┐░Θ╗ÿΦ«ñµÿ»1∩╝\137", "σñ┤σâÅσÉìσ¡ùId", "σ»╣Φ»¥Id", "µëôσ¡ùΘƒ│µòêµù╢Θù┤Θù┤ΘÜö∩╝êσ╕º∩╝\137", "npcIdσÆîΦä╕τÜäµ¿íσ₧ïId", "npcτÜäσ»╣Φ»¥σè¿Σ╜£σÆîΦä╕τÜäσ»╣Φ»¥σè¿Σ╜£", "ΘÜÉΦùÅΣ╕ïΣ╕Çµ¡Ñσ¢╛µáçσÆîτë╣µòê", "σ╗╢Φ┐ƒτé╣σç╗µù╢Θù┤"}
, 
ParamType = {"number", "number", "number", "number", "number2", "string2", "boolean", "number", "boolean", "boolean", "boolean", "boolean", "number", "number", "boolean"}
, Type = "σ╕╕τö¿"}
, 
["µÿ╛τñ║σ░Åτ▓╛τü╡σ»╣Φ»¥µíå"] = {Api = function(self, Args, Callback)
  -- function num : 0_118
  drama:CreateGuideChatView(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "µÿ╛τñ║σ░Åτ▓╛τü╡σ»╣Φ»¥µíå", 
ParamDesc = {"σ»╣Φ»¥Id", "σÉìσ¡ùId", "σ¥Éµáç", "ΘÇéΘàìτ▒╗σ₧ï", "σñ┤σâÅ"}
, 
ParamType = {"number", "number", "number2", "number", "string"}
, Type = "ΦºÆΦë▓"}
, 
["µÿ╛τñ║τö╗Φ┤¿ΘÇëµï⌐τ¬ùσÅú"] = {Api = function(self, Args, Callback)
  -- function num : 0_119
  drama:ShowVisionChangeFrame(Callback, Args[-1])
end
, Name = "µÿ╛τñ║τö╗Φ┤¿ΘÇëµï⌐τ¬ùσÅú", Type = "σèƒΦâ╜"}
, 
["µÿ╛τñ║τ½₧µèÇσ£║τÜäµ£║σÖ¿Σ║\186"] = {Api = function(self, Args, Callback)
  -- function num : 0_120
  drama:ShowPVPRobot(Callback, Args[-1])
end
, Name = "µÿ╛τñ║τ½₧µèÇσ£║τÜäµ£║σÖ¿Σ║\186", 
ParamDesc = {"µù\160"}
, Type = "σèƒΦâ╜"}
, 
["µÿ╛τñ║τ▒╗Σ╝╝Σ╕╗τòîσ»╣Φ»¥µí\134"] = {Api = function(self, Args, Callback)
  -- function num : 0_121
  drama:ShowOtherChatDialogue(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "µÿ╛τñ║τ▒╗Σ╝╝Σ╕╗τòîσ»╣Φ»¥µí\134", 
ParamDesc = {"τ▒╗σ₧ï", "σ»╣Φ»¥Id", "σÉæσÅ│µá╖σ╝Å", "σ¥Éµáç", "σ╗╢Φ┐ƒτé╣σç╗µù\182", "Φç¬σè¿Σ╕ïΣ╕Çµ¡\165"}
, 
ParamTips = {"τ▒╗σ₧ï", "σ»╣Φ»¥Id", "σÉæσÅ│µá╖σ╝Å", "σ¥Éµáç", "σ╗╢Φ┐ƒτé╣σç╗µù╢Θù┤"}
, 
ParamType = {"number", "number", "boolean", "number2", "number", "boolean"}
, Type = "ΦºÆΦë▓"}
, 
["µÿ╛τñ║ΘÇÜΦ«»σ»╣Φ»¥µí\134"] = {Api = function(self, Args, Callback)
  -- function num : 0_122
  if not Args[7] or Args[7] then
    local PhoneUIInfo = {ResName = Args[1], MsgId = Args[2], DelayTime = Args[3], AutoNext = Args[4], AllowClick = Args[5], NpcFaceId = Args[6], NpcAnimation = (Args[7])[1], FaceAnimation = (Args[7])[2], OpType = Args[9], IsDetachHero = Args[10], Pos = Args[11], Adapt = Args[12], Scale = Args[13], Angel = Args[14], SkipDrama = Args[15]}
    drama:ShowPhoneChatView(PhoneUIInfo, Callback, Args[-1])
  end
end
, DefaultIsBlock = true, Name = "µÿ╛τñ║ΘÇÜΦ«»σ»╣Φ»¥µí\134", 
ParamDesc = {"σÉìσ¡ùId", "σ»╣Φ»¥Id", "σ╗╢Φ┐ƒτé╣σç╗µù\182", "Φç¬σè¿Σ╕ïΣ╕Çµ¡\165", "Θ╗ÿΦ«ñτé╣σç╗", "ΦºÆΦë▓Id", "σÅ»Θ\128ëσè¿Σ╜\156", "τ⌐\186", "µôìΣ╜£τ▒╗σ₧ï", "Φ┐üτº╗Σ╕╗ΦºÆ", "σ¥Éµáç", "ΘÇéΘàìτ▒╗σ₧ï", "τ╝⌐µö╛", "ΦºÆσ║ª", "µîéµû¡σëºµâà"}
, 
ParamTips = {"µôìΣ╜£τ▒╗σ₧ï:|0:σà│Θù¡σè¿µòê|1:µëôσ╝Çσè¿µòê|2:µîéµû¡τö╡Φ»¥σ╝║σê╢µ▓íµ£ëσè¿µòê|3:σ╝║σê╢µ▓íµ£ëµëôσ╝Çσè¿µòê", "σ»╣Φ»¥Id", "σ╗╢Φ┐ƒτé╣σç╗µù╢Θù┤", "Φç¬σè¿Σ╕ïΣ╕Çµ¡\165", "Θ╗ÿΦ«ñτé╣σç╗", "npcIdσÆîΦä╕τÜäµ¿íσ₧ïId", "npcσè¿Σ╜£σÆîΦä╕τÜäσè¿Σ╜\156", "τ⌐\186", "0:σà│Θù¡σè¿µòê|1:µëôσ╝Çσè¿µòê|2:µîéµû¡τö╡Φ»¥σ╝║σê╢µ▓íµ£ëσè¿µòê|3:σ╝║σê╢µ▓íµ£ëµëôσ╝Çσè¿µòê"}
, 
ParamType = {"number", "number", "number", "boolean", "boolean", "number2", "string2", "string", "number", "boolean", "number2", "number", "number", "number3", "string"}
, Type = "ΦºÆΦë▓"}
, 
["µÜéσü£/µüóσñìΦºåΘóæ"] = {Api = function(self, Args, Callback)
  -- function num : 0_123
  drama:PauseVideo(Args[1], Callback, Args[-1])
end
, Name = "µÜéσü£/µüóσñìΦºåΘóæ", 
ParamDesc = {"µÜéσü£"}
, 
ParamType = {"boolean"}
, Type = "Φ╡äµ║É"}
, 
["µÜéσü£/µüóσñìΘƒ│µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_124
  drama:PauseSound(Args[1], Args[2], Callback, Args[-1])
end
, Name = "µÜéσü£/µüóσñìΘƒ│µòê", 
ParamDesc = {"µÜéσü£", "µ╕ÉσÅÿσ╕ºµò░"}
, 
ParamType = {"boolean", "number"}
, Type = "Φ╡äµ║É"}
, 
["µÜéσü£AI"] = {Api = function(self, Args, Callback)
  -- function num : 0_125
  drama:EnableAi(false, Callback, Args[-1])
end
, Name = "µÜéσü£AI", Type = "σ╕╕τö¿"}
, 
["µÜéσü£µ╕╕µêÅ"] = {Api = function(self, Args, Callback)
  -- function num : 0_126
  drama:PauseGame(Callback, Args[-1])
end
, Name = "µÜéσü£µ╕╕µêÅ", Type = "σèƒΦâ╜"}
, 
["µÜéσü£ΦâîµÖ»Θƒ│Σ╣É"] = {Api = function(self, Args, Callback)
  -- function num : 0_127
  (audio:Instance()):PauseBgmSound(true)
end
, Name = "µÜéσü£ΦâîµÖ»Θƒ│Σ╣É", Type = "Φ╡äµ║É"}
, 
["µ¢┐µìóσ»╣Φ▒íΘàìΣ╗╢"] = {Api = function(self, Args, Callback)
  -- function num : 0_128
  drama:ChangeAttachObj(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "µ¢┐µìóσ»╣Φ▒íΘàìΣ╗╢", 
ParamDesc = {"σ»╣Φ▒íσÉìτº░", "ΘàìΣ╗╢σÉìτº░", "ΘàìΣ╗╢ID"}
, 
ParamTips = {"NPCτÜäσëºµâàσÉìτº░∩╝êΣ╕╗ΦºÆτÜäΦ»¥σí½Γ\128£zhujueΓÇ¥∩╝ë", "socketτÜäσÉìτº░∩╝êσÅ»σ£¿σè¿Σ╜£τ╝ûΦ╛æσÖ¿µƒÑτ£ï∩╝ë", "ΘàìΣ╗╢σ£¿Θ\128áσ₧ïΦí¿Σ╕¡τÜäID"}
, 
ParamType = {"string", "string", "number"}
, Type = "ΦºÆΦë▓"}
, 
["µ╡ïΦ»òΘƒ│µòêΘƒ│ΘçÅ"] = {Api = function(self, Args, Callback)
  -- function num : 0_129
  local AudioId = Args[1]
  local VolumeSize = Args[2]
  local Success, _, FilePath, EventName = (audio:Instance()):GetSoundPath(AudioId)
  if Success then
    local Uid = nil
    if EventName then
      if Pos then
        do
          Uid = g_AudioManager:PlaySound(FilePath, EventName, CreateVector3f(Pos[1], Pos[2], Pos[3]), Callback)
          Uid = g_AudioManager:Play2DSound(FilePath, Loop, Async ~= false, Callback)
          if Uid ~= 0 and VolumeSize then
            (audio:Instance()):SetVolume(VolumeSize, nil, Uid)
          end
          -- DECOMPILER ERROR: 3 unprocessed JMP targets
        end
      end
    end
  end
end
, Name = "µ╡ïΦ»òΘƒ│µòêΘƒ│ΘçÅ", 
ParamDesc = {"Θƒ│µòêId", "Θƒ│ΘçÅ"}
, 
ParamType = {"number", "number"}
, Type = "µ╡ïΦ»ò"}
, 
["µ╖╗σèáBUFF"] = {Api = function(self, Args, Callback)
  -- function num : 0_130
  drama:AddBuff(Args[1], Args[2], Callback, Args[-1])
end
, Name = "µ╖╗σèáBUFF", 
ParamDesc = {"BuffId", "σ»╣Φ▒íσÉìτº░"}
, 
ParamType = {"number", "string"}
, Type = "σèƒΦâ╜"}
, 
["µ╖╗σèáσÄƒτö╗σ▒éτ║º"] = {Api = function(self, Args, Callback)
  -- function num : 0_131
  drama:AddOriginal(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Args[10], Args[11], Args[12], Callback, Args[-1])
end
, Name = "µ╖╗σèáσÄƒτö╗σ▒éτ║º", 
ParamDesc = {"σ▒éτ║º", "τë╣µòêId", "τë╣µòêσ╛¬τÄ»", "σ¢╛τëçσÉ\141", "ΦºÆσ║ª", "σ¥Éµáç", "µÿ»σÉªµ¢┐µìó", "µ¢┐µìóµù╢Θù┤", "σê¥σºïτ╝⌐µö╛σÇ\188", "τë╣µòêσ╝éµ¡Ñ", "σ░║σ»╕", "σñºσ░ÅΦç¬Θ\128éσ║ö"}
, 
ParamTips = {"1-5σ▒\130", "τë╣µòêId", "τë╣µòêσ╛¬τÄ»", "σ¢╛τëçσÉ\141", "ΦºÆσ║ª", "σ¥Éµáç", "µÿ»σÉªµ¢┐µìó", "µ¢┐µìóµîüτ╗¡µù╢Θù┤"}
, 
ParamType = {"number", "number", "boolean", "string", "number", "number2", "boolean", "number", "number", "boolean", "number2", "boolean"}
, Type = "Φ╡äµ║É"}
, 
["µ╖╗σèáσÄƒτö╗σ▒éτ║ºσè¿Σ╜£"] = {Api = function(self, Args, Callback)
  -- function num : 0_132
  drama:ShowOriginalAction(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "µ╖╗σèáσÄƒτö╗σ▒éτ║ºσè¿Σ╜£", 
ParamDesc = {"σ▒éτ║º", "σè¿Σ╜£", "σ¥Éµáç", "τº╗σè¿Φîâσ¢┤", "σè¿Σ╜£ΦºÆσ║ª", "σè¿Σ╜£µù╢Θù┤"}
, 
ParamTips = {"1-5σ▒\130", "µùïΦ╜¼πÇüΘ£çσè¿π\128üτº╗σè¿π\128üτ╝⌐µö\190"}
, 
ParamType = {"number", "string", "number2", "number", "number", "number"}
, Type = "Φ╡äµ║É"}
, 
["µ╖╗σèáσÄƒτö╗τº╗σè¿σê░µîëΘÆ\174"] = {Api = function(self, Args, Callback)
  -- function num : 0_133
  drama:MoveOriginalActionToBtn(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "µ╖╗σèáσÄƒτö╗τº╗σè¿σê░µîëΘÆ\174", 
ParamDesc = {"σ▒éτ║º", "µîëΘÆ«σÉ\141", "σ¥Éµáçxy/ΘÇéΘàì", "τº╗σè¿µù╢Θù┤", "τ╝⌐µö╛σñºσ░Å/µù╢Θù┤/µ╢êσñ▒"}
, 
ParamType = {"number", "string", "number3", "number", "number3"}
, Type = "Φ╡äµ║É"}
, 
["µ╖╗σèáσÄƒτö╗τ╗äσÉêσè¿Σ╜£"] = {Api = function(self, Args, Callback)
  -- function num : 0_134
  drama:ShowOriginalCombiAction(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Callback, Args[-1])
end
, Name = "µ╖╗σèáσÄƒτö╗τ╗äσÉêσè¿Σ╜£", 
ParamDesc = {"σ▒éτ║º", "σè¿Σ╜£", "σ¥Éµáç", "σê¥σºïΦºÆσ║ª", "τº╗σè¿Φîâσ¢┤", "σè¿Σ╜£ΦºÆσ║ª", "σè¿Σ╜£µù╢Θù┤"}
, 
ParamType = {"number", "string2", "number2", "number", "number2", "number2", "number2"}
, Type = "Φ╡äµ║É"}
, 
["µ╖╗σèáµ╗ñΘò£"] = {Api = function(self, Args, Callback)
  -- function num : 0_135
  drama:AddFilter(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "µ╖╗σèáµ╗ñΘò£", 
ParamDesc = {"σ¢╛τëçσÉ\141", "ΘÇÅµÿÄσ║\166", "σ¥Éµáç", "σ¢╛τëçσñºσ░Å"}
, 
ParamType = {"string", "number", "number2", "number2"}
, Type = "Θò£σñ┤"}
, 
["µ╕àΘÖñ/σê¢σ╗║σà¿σ▒ÅΘÿ╗µîíµîëΘÆ«"] = {Api = function(self, Args, Callback)
  -- function num : 0_136
  if Args[1] then
    drama:CreateShade(Callback, Args[-1])
  else
    drama:ClearShade(Callback, Args[-1])
  end
end
, Name = "µ╕àΘÖñ/σê¢σ╗║σà¿σ▒ÅΘÿ╗µîíµîëΘÆ«", 
ParamDesc = {"σê¢σ╗║"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["µ╕àΘÖñσà¿Θâ¿Θƒ│µòê"] = {Api = function(self, Args, Callback)
  -- function num : 0_137
  drama:ClearAllSound(Callback, Args[-1])
end
, Name = "µ╕àΘÖñσà¿Θâ¿Θƒ│µòê", Type = "Φ╡äµ║É"}
, 
["µ╕àΘÖñσÄƒτö╗µ¿íσ╝Å"] = {Api = function(self, Args, Callback)
  -- function num : 0_138
  drama:ClearOriginalModel(Args[1], Callback, Args[-1])
end
, Name = "µ╕àΘÖñσÄƒτö╗µ¿íσ╝Å", 
ParamDesc = {"µîüτ╗¡µù╢Θù┤"}
, 
ParamTips = {"µ╕àΘÖñσÄƒτö╗τÜäµù╢Θò\191"}
, 
ParamType = {"number"}
, Type = "Φ╡äµ║É"}
, 
["µ╕àΘÖñσ¡ùσ╣ò"] = {Api = function(self, Args, Callback)
  -- function num : 0_139
  drama:ClearSubtitle(Callback, Args[-1])
end
, Name = "µ╕àΘÖñσ¡ùσ╣ò", Type = "ΦºÆΦë▓"}
, 
["µ╕àΘÖñµ╗ñΘò£"] = {Api = function(self, Args, Callback)
  -- function num : 0_140
  drama:DelFilter(Callback, Args[-1])
end
, Name = "µ╕àΘÖñµ╗ñΘò£", 
ParamDesc = {"µù\160"}
, Type = "Θò£σñ┤"}
, 
["µ╕àΘÖñτ½₧µèÇσ£║µìóΣ║║cd"] = {Api = function(self, Args, Callback)
  -- function num : 0_141
  drama:ResetSwitchMerCD()
end
, Name = "µ╕àΘÖñτ½₧µèÇσ£║µìóΣ║║cd", Type = "σèƒΦâ╜"}
, 
["µ╕àΘÖñτ╝ôσ¡ÿ"] = {Api = function(self, Args, Callback)
  -- function num : 0_142
  poolMgr:ClearCharacter()
end
, Name = "µ╕àΘÖñτ╝ôσ¡ÿ", Type = "σèƒΦâ╜"}
, 
["µ╕àΘÖñΘù¬Θü┐QTEσå╖σì┤"] = {Api = function(self, Args, Callback)
  -- function num : 0_143
  drama:ClearBlinkQteCd(Callback)
end
, Name = "µ╕àΘÖñΘù¬Θü┐QTEσå╖σì┤", 
ParamDesc = {"µù\160"}
, 
ParamType = {"µù\160"}
, Type = "σèƒΦâ╜"}
, 
["µ╕╕µêÅµù╢Θù┤σçÅτ╝ô"] = {Api = function(self, Args, Callback)
  -- function num : 0_144
  drama:SetTimeScale(Args[1], Args[2], Callback, Args[-1])
end
, Name = "µ╕╕µêÅµù╢Θù┤σçÅτ╝ô", 
ParamDesc = {"σçÅτ╝ôΘÇƒτÄç", "σçÅτ╝ôσ╕ºµò░"}
, 
ParamType = {"number", "number"}
, Type = "σèƒΦâ╜"}
, 
["µ╕╕µêÅΘò£σñ┤µùïΦ╜¼"] = {Api = function(self, Args, Callback)
  -- function num : 0_145
  drama:GameCameraRot(Args[1], Args[2], Callback, Args[-1])
end
, Name = "µ╕╕µêÅΘò£σñ┤µùïΦ╜¼", 
ParamDesc = {"µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤Θ½ÿσ║ª"}
, 
ParamType = {"number", "number"}
, Type = "Θò£σñ┤"}
, 
["µ╝öτñ║σà│Θ\128Üσà│σëºµâà"] = {Api = function(self, Args, Callback)
  -- function num : 0_146
  drama:DramaStageFinish(Args[1], Callback, Args[-1])
end
, Name = "µ╝öτñ║σà│Θ\128Üσà│σëºµâà", 
ParamDesc = {"σà│σìíID"}
, 
ParamType = {"number"}
, Type = "σèƒΦâ╜"}
, 
["τé╣σç╗Φ╖│Φ┐ç"] = {Api = function(self, Args, Callback)
  -- function num : 0_147
  drama:ClickToSkip(Callback, Args[-1])
end
, Name = "τé╣σç╗Φ╖│Φ┐ç", 
ParamDesc = {"µù\160"}
, Type = "σèƒΦâ╜"}
, 
["τÄ⌐σ«╢µîçΣ╗ñµëºΦíîσü£µ¡óσ╝\128σà\179"] = {Api = function(self, Args, Callback)
  -- function num : 0_148
  drama:EnablePlayStopLogicCmd(Args[1])
end
, Name = "τÄ⌐σ«╢µîçΣ╗ñµëºΦíîσü£µ¡óσ╝\128σà\179", 
ParamDesc = {"σ╝\128σà\179"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["τ¢╕µ£║σÅÿµìóσê\176"] = {Api = function(self, Args, Callback)
  -- function num : 0_149
  drama:CameraTranslateTo(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "τ¢╕µ£║σÅÿµìóσê\176", 
ParamDesc = {"µ║Éτé╣", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "µù╢Θù┤(σ╕\167)"}
, 
ParamTips = {"µ£\128τ╗êµè╡Φ╛╛τÜäΘò£σñ┤", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "τ¢╕µ£║τº╗σè¿σê░µ£Çτ╗êΘò£σñ┤τÜäµù╢Θò┐"}
, 
ParamType = {"number3", "number", "number", "number", "number"}
, Type = "Θò£σñ┤"}
, 
["τ¢╕µ£║σÅÿµìóσê\176(σ╕ªµÖâσè\168)"] = {Api = function(self, Args, Callback)
  -- function num : 0_150
  drama:CameraTranslateToWithNoise(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Callback, Args[-1])
end
, Name = "τ¢╕µ£║σÅÿµìóσê\176(σ╕ªµÖâσè\168)", 
ParamDesc = {"µ║Éτé╣", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "FOV", "τ╝ôσè¿µû╣σ╝Å", "µù╢Θù┤(σ╕\167)", "µÖâσè¿σÅéµò░", "µÖâσè¿µû╣σ╝Å"}
, 
ParamTips = {"µ£\128τ╗êµè╡Φ╛╛τÜäΘò£σñ┤", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "Θ╗ÿΦ«ñµÿ»Linearσ¥çσîÇσÅÿµìó", "τ¢╕µ£║τº╗σè¿σê░µ£Çτ╗êΘò£σñ┤τÜäµù╢Θò┐", "σÅéµò░1µÿ»µÖâσè¿σ╣àσ║ªτ│╗µò\176(σÅ»Σ╗Ñσ░Åµò░)πÇéσÅéµò\1762µÿ»µÖâσè¿µ¼íµò░π\128éσÅéµò\1763µÿ»µÖâσè¿ΘÖÉσê╢Φîâσ¢\180", "Θ╗ÿΦ«ñµÿ»QuadEaseInOutµÖâσè¿µû╣σ╝Å"}
, 
ParamType = {"number3", "number", "number", "number", "number", "string", "number", "number3", "string"}
, Type = "Θò£σñ┤"}
, 
["τ¢╕µ£║σ╣┐ΦºÆσÅÿσîû"] = {Api = function(self, Args, Callback)
  -- function num : 0_151
  drama:ChangeCameraFov(Args[1], Callback, Args[-1])
end
, Name = "τ¢╕µ£║σ╣┐ΦºÆσÅÿσîû", 
ParamDesc = {"τ¢╕µ£║σ╣┐ΦºÆ"}
, 
ParamType = {"number"}
, Type = "Θò£σñ┤"}
, 
["τ¢╕µ£║µ║Éτé╣µÖâσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_152
  drama:ShakeCamera(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "τ¢╕µ£║µ║Éτé╣µÖâσè¿", 
ParamDesc = {"µÖâσè¿σ╣àσ║ª", "µÖâσè¿µ¼íµò░", "ΘÖÉσê╢Φîâσ¢┤", "τ╝ôσè¿µû╣σ╝Å", "µù╢Θù┤∩╝êσ╕º∩╝\137"}
, 
ParamTips = {"µÖâσè¿1µ¼íτÜäσ╣àσ║ª", "µá╣µì«µÖâσè¿µ¼íµò░σÆîµ\128╗µù╢Θù┤Σ╝ÜΦ«íτ«ùσç║µÖâσè\1681µ¼íΘ£ÇΦªüτÜäµù╢Θù┤", "ΘÖÉσê╢Σ║åµÖâσè¿τÜäµ£\128Φ┐£Σ╜ìτ╜«∩╝êσ┐àΘí╗σñºΣ║ÄµÖâσè¿σ╣àσ║ª∩╝\137", "µÖâσè¿1µ¼íτÜäσÅÿµìó∩╝êΘ╗ÿΦ«ñµÿ»QuadEaseInOut∩╝\137", "µÖâσè¿τÜäµ\128╗µù╢Θù┤∩╝êµ£\128σÉÄΣ╕Çµ¼íµÖâσè¿µÿ»σ¢₧σê░σÄƒµ¥ÑτÜäΣ╜ìτ╜«∩╝ë"}
, 
ParamType = {"number", "number", "number", "string", "number"}
, Type = "Θò£σñ┤"}
, 
["τ¢╕µ£║ΦºåΦ╖¥µÖâσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_153
  drama:ShakeCameraDis(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "τ¢╕µ£║ΦºåΦ╖¥µÖâσè¿", 
ParamDesc = {"µÖâσè¿σ╣àσ║ª", "µÖâσè¿µ¼íµò░", "Φí░σçÅτ│╗µò░", "τ╝ôσè¿µû╣σ╝Å", "µù╢Θù┤∩╝êσ╕º∩╝\137"}
, 
ParamTips = {"µÖâσè¿µ£\128σñºµî»σ╣\133", "µá╣µì«µÖâσè¿µ¼íµò░σÆîµ\128╗µù╢Θù┤Σ╝ÜΦ«íτ«ùσç║µÖâσè\1681µ¼íΘ£ÇΦªüτÜäµù╢Θù┤", "Φí░σçÅτ│╗µò░∩╝êσ┐àΘí╗σ░ÅΣ║\1421Θ╗ÿΦ«ñµÿ\1751∩╝\137", "Θ╗ÿΦ«ñµÿ»QuadEaseInOut", "µÖâσè¿τÜäµ\128╗µù╢Θù┤∩╝êµ£\128σÉÄΣ╕Çµ¼íµÖâσè¿µÿ»σ¢₧σê░σÄƒµ¥ÑτÜäΣ╜ìτ╜«∩╝ë"}
, 
ParamType = {"number", "number", "number", "string", "number"}
, Type = "Θò£σñ┤"}
, 
["τ¢╕µ£║Θ£çσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_154
  drama:CameraShake(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "τ¢╕µ£║Θ£çσè¿", 
ParamDesc = {"µîüτ╗¡µù╢Θù┤(τº\146)", "µèûσè¿µ¼íµò░(µÇ\187)", "σ╣┐ΦºÆµ£\128σ░Åσ\128\188", "σ╣┐ΦºÆµ£\128σñºσ\128\188", "µæçµæåΦ╖¥τª╗", "µèûσè¿σ║Åσêù"}
, 
ParamTips = {"µîüτ╗¡µù╢Θù┤(τº\146)", "µèûσè¿µ¼íµò░(µÇ╗∩╝ë∩╝êΣ╕ÇτºÆµ£ÇσñÜσÅ¬Φâ╜µèû30µ¼í∩╝ë", "σ╣┐ΦºÆµ£\128σ░Åσ\128\188", "σ╣┐ΦºÆµ£\128σñºσ\128\188", "Θ£çσè¿µù╢µæçµæåΦ╖¥τª\187", "σ╣┐ΦºÆσ║Åσêù∩╝êτö¿Φï▒µûçΘÇùσÅ╖ΘÜöσ╝Ç∩╝\137"}
, 
ParamType = {"number", "number", "number", "number", "number", "string"}
, Type = "Θò£σñ┤"}
, 
["τ¡ëσ╛àσëºµâàΣ║ïΣ╗╢"] = {Api = function(self, Args, Callback)
  -- function num : 0_155
  drama:WaitDramaEvent(Args[1], Callback, Args[-1])
end
, Name = "τ¡ëσ╛àσëºµâàΣ║ïΣ╗╢", 
ParamDesc = {"Σ║ïΣ╗╢σÉ\141"}
, 
ParamType = {"string"}
, Type = "σèƒΦâ╜"}
, 
["τ¡ëσ╛àσÉÄµæçΣ║ïΣ╗╢"] = {Api = function(self, Args, Callback)
  -- function num : 0_156
  drama:WaitBackwave(Callback, Args[-1])
end
, Name = "τ¡ëσ╛àσÉÄµæçΣ║ïΣ╗╢", Type = "σèƒΦâ╜"}
, 
["τ¡ëσ╛àµæçµ¥åσè¿Σ╜£"] = {Api = function(self, Args, Callback)
  -- function num : 0_157
  drama:Wait2DJoystickCmd(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Callback, Args[-1])
end
, Name = "τ¡ëσ╛àµæçµ¥åσè¿Σ╜£", 
ParamDesc = {"µæçµ¥åµôìΣ╜£(Γå\145)", "µæçµ¥åµôìΣ╜£(Γå\147)", "µæçµ¥åµôìΣ╜£(Γå\144)", "µæçµ¥åµôìΣ╜£(Γå\146)", "µû╣σÉæσìèΦºÆ", "µ£\128σ░Åσ╗╢µù\182(τº\146)", "µ£\128σñºσ╗╢µù\182(τº\146)"}
, 
ParamTips = {"(Γå\145)", "(Γå\147)", "(Γå\144)", "(Γå\146)", "µû╣σÉæσêñσ«ÜσìèΦºÆ"}
, 
ParamType = {"boolean", "boolean", "boolean", "boolean", "number", "number", "number"}
, Type = "σèƒΦâ╜"}
, 
["τ╗ôµ¥ƒσëºµâàΣ┐¥µîüΘò£σñ┤"] = {Api = function(self, Args, Callback)
  -- function num : 0_158
  drama:EndingDramaRemainCamera(Callback, Args[-1])
end
, Name = "τ╗ôµ¥ƒσëºµâàΣ┐¥µîüΘò£σñ┤", Type = "Θò£σñ┤"}
, 
["τ╗ºτ╗¡ΦâîµÖ»Θƒ│Σ╣É"] = {Api = function(self, Args, Callback)
  -- function num : 0_159
  (audio:Instance()):PauseBgmSound(false)
end
, Name = "τ╗ºτ╗¡ΦâîµÖ»Θƒ│Σ╣É", Type = "Φ╡äµ║É"}
, 
["ΦºÆΦë▓µÅÅΦ╛╣τ╝⌐µö╛"] = {Api = function(self, Args, Callback)
  -- function num : 0_160
  drama:EntityOutlineScale(Args[1], Args[2], Callback, Args[-1])
end
, Name = "ΦºÆΦë▓µÅÅΦ╛╣τ╝⌐µö╛", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░", "τ╝⌐µö╛"}
, 
ParamType = {"string", "number"}
, Type = "ΦºÆΦë▓"}
, 
["ΦºÆΦë▓µÆ¡µö╛σè¿Σ╜£"] = {Api = function(self, Args, Callback)
  -- function num : 0_161
  drama:EntityPlayAnimation(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Callback, Args[-1])
end
, Name = "ΦºÆΦë▓µÆ¡µö╛σè¿Σ╜£", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░", "σÅ»Θ\128ëσè¿Σ╜\156", "σ╛¬τÄ»", "σÅ»Θ\128ëσè¿Σ╜\156", "Σ┐¥µîüτè╢µ\128\129", "σ╝\128σºïσ╕º", "σü£σ£¿µ£\128σÉ\142"}
, 
ParamTips = {"ΦºÆΦë▓σÉìτº░", "ΦºÆΦë▓σ╝\128σºïµÆ¡µö╛τÜäσè¿Σ╜£∩╝êσÅ»σ╛¬τÄ»∩╝\137", "σè¿Σ╜£σ╛¬τÄ»", "ΦºÆΦë▓τ╗ôµ¥ƒµÆ¡µö╛τÜäσ╛¬τÄ»σè¿Σ╜£∩╝êΘ╗ÿΦ«ñµÿ»idle_city∩╝\137"}
, 
ParamType = {"string", "string", "boolean", "string", "boolean", "number", "boolean"}
, Type = "σ╕╕τö¿"}
, 
["ΦºÆΦë▓τº╗σè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_162
  drama:MoveTo(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "ΦºÆΦë▓τº╗σè¿", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░", "σÅ»Θ\128ëσè¿Σ╜\156", "τ¢«µáçτé\185", "ΘÇƒσ║ª", "σÅ»Θ\128ëσè¿Σ╜\156", "σÅ»Θ\128ëσè¿Σ╜\156"}
, 
ParamTips = {"ΦºÆΦë▓σÉìτº░", "ΦºÆΦë▓τº╗σè¿τÜäσè¿Σ╜\156", "τ¢«µáçτé\185", "ΘÇƒσ║ª", "τº╗σè¿τ╗ôµ¥ƒσÉÄσè¿Σ╜\156", "µ£\128τ╗êµîüτ╗¡σè¿Σ╜\156"}
, 
ParamType = {"string", "string", "number3", "number", "string", "string"}
, Type = "σ╕╕τö¿"}
, 
["ΦºÆΦë▓Φä╕Θâ¿µÆ¡µö╛σè¿Σ╜£"] = {Api = function(self, Args, Callback)
  -- function num : 0_163
  if Args[2] then
    local NpcAnimation = (Args[2])[1]
  end
  if Args[2] then
    local FaceAnimation = (Args[2])[2]
  end
  drama:PlayFaceAnimation(Args[1], NpcAnimation, FaceAnimation, Callback, Args[-1])
end
, Name = "ΦºÆΦë▓Φä╕Θâ¿µÆ¡µö╛σè¿Σ╜£", 
ParamDesc = {"ΦºÆΦë▓Id", "σÅ»Θ\128ëσè¿Σ╜\156"}
, 
ParamTips = {"npcIdσÆîΦä╕τÜäµ¿íσ₧ïId", "npcτÜäσè¿Σ╜£σ║ÅσêùσÆîΦä╕τÜäσè¿Σ╜£σ║Åσêù∩╝¢µ£ÇσÉÄΣ╕ÇΣ╕¬σè¿Σ╜£σ╛¬τÄ\175"}
, 
ParamType = {"number2", "string2"}
, Type = "ΦºÆΦë▓"}
, 
["Φºúτ╗æΦºÆΦë▓τÜäσè¿Σ╜£Θò£σñ\180"] = {Api = function(self, Args, Callback)
  -- function num : 0_164
  drama:ResetObjCamera(Args[1], Callback, Args[-1])
end
, Name = "Φºúτ╗æΦºÆΦë▓τÜäσè¿Σ╜£Θò£σñ\180", 
ParamDesc = {"ΦºÆΦë▓σÉìσ¡ù"}
, 
ParamType = {"string"}
, Type = "Θò£σñ┤"}
, 
["Φ«╛τ╜«OP"] = {Api = function(self, Args, Callback)
  -- function num : 0_165
  drama:SetFighterOp(Args[1], Args[2], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«OP", 
ParamDesc = {"Σ╜úσà╡ID", "Φâ╜ΘçÅσÇ\188"}
, 
ParamType = {"number", "number"}
, Type = "Φ╡äµ║É"}
, 
["Φ«╛τ╜«pvpΘÇ\128σç║µîëΘÆ«τè╢µÇ\129"] = {Api = function(self, Args, Callback)
  -- function num : 0_166
  drama:SetPvpExitBtnStatus(Args[1], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«pvpΘÇ\128σç║µîëΘÆ«τè╢µÇ\129", 
ParamDesc = {"µÿ»σÉªσÅ»τé╣"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["Φ«╛τ╜«Σ╜ìτ╜«"] = {Api = function(self, Args, Callback)
  -- function num : 0_167
  drama:SetPos(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«Σ╜ìτ╜«", 
ParamDesc = {"Xσ¥Éµáç", "Yσ¥Éµáç", "µ£¥σÉæ", "σÉîµ¡Ñτ¢«µáç"}
, 
ParamTips = {"Xσ¥Éµáç", "Yσ¥Éµáç", "Σ╕╗ΦºÆΣ╜ìτ╜«Θ¥óσÉæ", "µÿ»σÉªσÉîµ¡Ñσê░µ£ìσèíτ½»(σà│σìíΣ╕¡Σ╕ìσàüΦ«╕τö\168)"}
, 
ParamType = {"number", "number", "number", "boolean"}
, Type = "σ╕╕τö¿"}
, 
["Φ«╛τ╜«σà│σìíΘò£σñ┤σÇìτÄç"] = {Api = function(self, Args, Callback)
  -- function num : 0_168
  drama:SetCameraForcePer(Args[1], Args[2], Args[3], Args[4], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«σà│σìíΘò£σñ┤σÇìτÄç", 
ParamDesc = {"ΦºåΦ╖¥σÇìτÄç", "Θ½ÿσ║ªσÇìτÄç", "σ╝ºσ║ª", "µëºΦíîσ╕ºτÄç"}
, 
ParamType = {"number", "number", "number", "number"}
, Type = "Θò£σñ┤"}
, 
["Φ«╛τ╜«σëºµâàσÉÄσ£║µÖ»Θò£σñ\180"] = {Api = function(self, Args, Callback)
  -- function num : 0_169
  drama:SetSceneCameraAfterDrama(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«σëºµâàσÉÄσ£║µÖ»Θò£σñ\180", 
ParamDesc = {"Θò£σñ┤Φ╖¥τª╗", "Θò£σñ┤Θ½ÿσ║ª", "Θò£σñ┤ΦºÆσ║ª"}
, 
ParamType = {"number", "number", "number"}
, Type = "Θò£σñ┤"}
, 
["Φ«╛τ╜«σ£║µÖ»Bloom"] = {Api = function(self, Args, Callback)
  -- function num : 0_170
  drama:SetBloomStatus(Args[1], Args[2], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«σ£║µÖ»Bloom", 
ParamDesc = {"σ╝\128σÉ\175", "τ▒╗σ₧ï"}
, 
ParamTips = {"σÅ¬µ£ëσ╝\128σÉ»Bloomµù╢µëìΣ╝ÜτöƒµòêΦ«╛τ╜«σÅéµò\176", "σ£║µÖ»Bloomτ▒╗σ₧ïBloomParamsXΘàìτ╜«σ£¿σëºµâàΦí¿τÜäσ╕╕ΘçÅσêåΘí╡Θçî"}
, 
ParamType = {"boolean", "number"}
, Type = "σèƒΦâ╜"}
, 
["Φ«╛τ╜«σ£║µÖ»µÿ»σÉªµÿ╛τñ║"] = {Api = function(self, Args, Callback)
  -- function num : 0_171
  drama:SetSceneVisible(Args[1], Args[2], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«σ£║µÖ»µÿ»σÉªµÿ╛τñ║", 
ParamDesc = {"µÿ»σÉªµÿ╛τñ║", "σ£║µÖ»Θó£Φë▓"}
, 
ParamTips = {"µÿ╛τñ║µù╢Σ╝Üσ╝║σê╢µüóσñìσ£║µÖ»Θó£Φë▓Σ╕║Θ╗æΦë\178", "σí½σåÖµá╝σ╝Åµÿ\1750xRGBA∩╝êAσåÖFFσ░▒σÑ╜Σ╕ìσî║σêåσñºσ░ÅσåÖ∩╝\137"}
, 
ParamType = {"boolean", "string"}
, Type = "σèƒΦâ╜"}
, 
["Φ«╛τ╜«σ»╣Φ▒íΣ╜ìτ╜«"] = {Api = function(self, Args, Callback)
  -- function num : 0_172
  drama:SetObjPos(Args[1], Args[2], Args[3], Args[4], Args[5], Args[-1])
end
, Name = "Φ«╛τ╜«σ»╣Φ▒íΣ╜ìτ╜«", 
ParamDesc = {"NpcId", "Xσ¥Éµáç", "Θ½ÿσ║ª", "Yσ¥Éµáç", "µ£¥σÉæ"}
, 
ParamType = {"string", "number", "number", "number", "number"}
, Type = "ΦºÆΦë▓"}
, 
["Φ«╛τ╜«σ░ÅΣ╕╗σƒÄµ░öµ│\161"] = {Api = function(self, Args, Callback)
  -- function num : 0_173
  drama:OnlyClickByFightId(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«σ░ÅΣ╕╗σƒÄµ░öµ│\161", 
ParamDesc = {"npcId", "τë╣µòêId", "σ»╣Φ»¥Id", "σÉæσÅ│µ¿íσ╝Å", "σ¥Éµáç"}
, 
ParamType = {"number", "number", "number", "boolean", "number2"}
, Type = "ΦºÆΦë▓"}
, 
["Φ«╛τ╜«µ¿íσ₧ïσàëµ║É"] = {Api = function(self, Args, Callback)
  -- function num : 0_174
  drama:SetSunDir(Args[1], Args[2], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«µ¿íσ₧ïσàëµ║É", 
ParamDesc = {"ΦºÆΦë▓Id", "τ▒╗σ₧ï"}
, 
ParamTips = {"σí\1710µÿ»Σ╕╗Φº\146", "σàëµ║Éτ▒╗σ₧ïSunDirParamsXΘàìτ╜«σ£¿σëºµâàΦí¿τÜäσ╕╕ΘçÅσêåΘí╡Θçî"}
, 
ParamType = {"number", "number"}
, Type = "ΦºÆΦë▓"}
, 
["Φ«╛τ╜«ΦúüσçÅΦ╖¥τª╗σÇìµò░"] = {Api = function(self, Args, Callback)
  -- function num : 0_175
  drama:SetClippingDistanceScale(Args[1], Args[2], Callback, Args[-1])
end
, Name = "Φ«╛τ╜«ΦúüσçÅΦ╖¥τª╗σÇìµò░", 
ParamDesc = {"σÇìµò░", "µüóσñì"}
, 
ParamTips = {"µ£\128Θ½ÿτö╗Φ┤¿τÜäσÇìµò░µÿ\1751∩╝êΦ┐ÖΘçîσí½3Σ╗ÑΣ╕èµùáµòê∩╝\137", "µá╣µì«σ╜ôσëìΦ«╛τ╜«τÜäτö╗Φ┤¿Φ«╛τ╜«ΦúüσçÅΦ╖¥τª\187"}
, 
ParamType = {"number", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["Φ░âµò┤µ¿íσ₧ïΘó£Φë▓"] = {Api = function(self, Args, Callback)
  -- function num : 0_176
  drama:ChangeModelRGBA(Args[1], Args[2], Callback, Args[-1])
end
, Name = "Φ░âµò┤µ¿íσ₧ïΘó£Φë▓", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░", "RGB"}
, 
ParamTips = {"ΦºÆΦë▓σÉìτº░", "RGBµáçσçåΦîâσ¢┤:0-1"}
, 
ParamType = {"string", "number3"}
, Type = "ΦºÆΦë▓"}
, 
["Φ╜¼σÉæ"] = {Api = function(self, Args, Callback)
  -- function num : 0_177
  drama:FaceTo(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Callback, Args[-1])
end
, Name = "Φ╜¼σÉæ", 
ParamDesc = {"Angle", "Type", "ΦºÆΦë▓Id", "Φ╜¼Θ\128\159", "σÅ»Θ\128ëσè¿Σ╜\156", "σ╛¬τÄ»", "Σ┐¥µîüτè╢µ\128\129", "σ╝\128σºïσ╕º", "σü£σ£¿µ£\128σÉ\142"}
, 
ParamTips = {"τ¢«µáçΘ¥óσÉæ", "σí½monsterµêûnpcµêûΣ╕ìσí\171", "ΦºÆΦë▓Id", "ΘÇƒσ║ªσí½σåÖτ╗¥σ»╣σÇ\188", "Φ╜¼σè¿Φ┐çτ¿ïτÜäσè¿Σ╜\156"}
, 
ParamType = {"number", "string", "number", "number", "string", "boolean", "boolean", "number", "boolean"}
, Type = "ΦºÆΦë▓"}
, 
["Φ╜¼µÄÑσëºµâà"] = {Api = function(self, Args, Callback)
  -- function num : 0_178
  drama:AddNextDrama(Args[1], Callback, Args[-1])
end
, Name = "Φ╜¼µÄÑσëºµâà", 
ParamDesc = {"σëºµâàσÉìσ¡ù"}
, 
ParamTips = {"σëºµâàσÉ\141"}
, 
ParamType = {"string"}
, Type = "σèƒΦâ╜"}
, 
["Φ┐ÿσÄƒµ╕╕µêÅµù╢Θù┤σçÅτ╝ô"] = {Api = function(self, Args, Callback)
  -- function num : 0_179
  drama:ResetTimeScale(Callback, Args[-1])
end
, Name = "Φ┐ÿσÄƒµ╕╕µêÅµù╢Θù┤σçÅτ╝ô", Type = "σèƒΦâ╜"}
, 
["Φ┐¢σàÑτé«σÅ░"] = {Api = function(self, Args, Callback)
  -- function num : 0_180
  drama:EnterBattery(Args[1], Callback, Args[-1])
end
, Name = "Φ┐¢σàÑτé«σÅ░", 
ParamDesc = {"ΘÖÉσê╢τª╗σ╝Ç"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["ΘÇ\128σç║σà│σìíσ╝╣τ¬\151"] = {Api = function(self, Args, Callback)
  -- function num : 0_181
  drama:ShowExitStage(Args[1], Args[2], Callback, Args[-1])
end
, Name = "ΘÇ\128σç║σà│σìíσ╝╣τ¬\151", 
ParamDesc = {"σ╝╣τ¬ùσåàσ«╣", "µîëΘÆ«σÉ\141"}
, 
ParamType = {"string", "string"}
, Type = "σèƒΦâ╜"}
, 
["ΘÇ\128σç║τé«σÅ\176"] = {Api = function(self, Args, Callback)
  -- function num : 0_182
  drama:LevelBattery(Callback, Args[-1])
end
, Name = "ΘÇ\128σç║τé«σÅ\176", Type = "σèƒΦâ╜"}
, 
["ΘÇëΘí╣σ»╣Φ»¥µí\134"] = {Api = function(self, Args, Callback)
  -- function num : 0_183
  drama:ShowOptionsView(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "ΘÇëΘí╣σ»╣Φ»¥µí\134", 
ParamDesc = {"ΘÇëΘí╣µáçΘóÿ", "Φ╜¼µÄÑσëºµâà", "σ╗╢Φ┐ƒµù╢Θù┤"}
, 
ParamTips = {"σëºµâàΦí¿σ»╣Φ»¥ID", "Φ╜¼µÄÑτÜäσëºµâàσÉì", "τé╣σç╗σÉÄσ╗╢Φ┐ƒµÆ¡µö╛Σ╕ïΣ╕\128µ¡ÑτÜäµù╢Θò┐∩╝êΣ╕ÇΦê¼σí½0∩╝\137"}
, 
ParamType = {"string", "string", "number"}
, Type = "ΦºÆΦë▓"}
, 
["ΘÇÜσà│σ╜ôσëìσà│σìí"] = {Api = function(self, Args, Callback)
  -- function num : 0_184
  drama:FinishCurStage(Callback, Args[-1])
end
, Name = "ΘÇÜσà│σ╜ôσëìσà│σìí", Type = "σèƒΦâ╜"}
, 
["ΘÇÜσà│τ╗ôµ¥ƒσëºµâà"] = {Api = function(self, Args, Callback)
  -- function num : 0_185
  drama:EndDramaIsStageFinish()
end
, Name = "ΘÇÜσà│τ╗ôµ¥ƒσëºµâà", 
ParamDesc = {"µù\160"}
, Type = "σèƒΦâ╜"}
, 
["Θçèµö╛ΘóäσèáΦ╜╜Θƒ│µò\136"] = {Api = function(self, Args, Callback)
  -- function num : 0_186
  drama:ReleaseAudio(Args[1], Callback, Args[-1])
end
, Name = "Θçèµö╛ΘóäσèáΦ╜╜Θƒ│µò\136", 
ParamDesc = {"Θƒ│µòêId"}
, 
ParamType = {"number"}
, Type = "Φ╡äµ║É"}
, 
["Θçìτ╜«Θ¼╝τ£╝"] = {Api = function(self, Args, Callback)
  -- function num : 0_187
  drama:ResetAttendStatus(Callback, Args[-1])
end
, Name = "Θçìτ╜«Θ¼╝τ£╝", 
ParamDesc = {"µù\160"}
, Type = "σèƒΦâ╜"}
, 
["Θò£σñ┤σêçσê░σ»╣Φ»¥"] = {Api = function(self, Args, Callback)
  -- function num : 0_188
  drama:CameraMoveToObj(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Callback, Args[-1])
end
, Name = "Θò£σñ┤σêçσê░σ»╣Φ»¥", 
ParamDesc = {"ΦºÆΦë▓σÉìτº░", "ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "µ░┤σ╣│σüÅτº╗", "σêçΘò£σñ┤σ╕ºµò\176"}
, 
ParamTips = {"ΦºÆΦë▓σÉìτº░", "ΦºåΦ╖¥:ΦºÆΦë▓µÿ»NPCµù╢Φ»╗Θàìτ╜«", "Θ½ÿσ║ª:σÉîΣ╕è", "ΦºÆσ║ª:σÉîΣ╕è", "µ░┤σ╣│σüÅτº╗:Σ╕ìσí½µù╢Φºëσ╛ùΦºÆΦë▓µ▓íσ£¿Σ╕¡σ┐âπ\128üΦ░âΣ╕\128Σ╕ïΦ┐ÖΣ╕\170", "Σ╕ìσí½τ₧¼σêç"}
, 
ParamType = {"string", "number", "number", "number", "number", "number"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤σêçσê░τ¢«µáç"] = {Api = function(self, Args, Callback)
  -- function num : 0_189
  (cameraMgr:Instance()):CameraUpdateToTarget(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7])
  if Callback then
    Callback()
  end
end
, Name = "Θò£σñ┤σêçσê░τ¢«µáç", 
ParamDesc = {"µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "σÅéΦ\128âτ¢«µáçσÉì", "τ¢«µáçµîéτé╣", "τ¢«µáçτé\185"}
, 
ParamTips = {"µ░┤σ╣│ΦºÆσ║ª:µ£ëσÅéΦÇâτ¢«µáçµù╢πÇüΣ╗ÑσÅéΦ\128âτ¢«µáçΘ¥óσÉæΣ╕║Φ╡╖σºïΦ«íτ«ù", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "σÅéΦ\128âτ¢«µáçσÉìτº\176", "τ¢«µáçµîéτé╣:σÅéΦ\128âτ¢«µáçΦ┐ÿµ£¬σèáΦ╜╜σ«îµù╢µëºΦíîµîçΣ╗ñπ\128üsocketµùáµòê", "τ¢«µáçτé\185:µ£ëσÅéΦÇâτ¢«µáçµù╢Σ╜£Σ╕║σüÅτº╗σÇ╝π\128üµ▓íµ£ëσ░▒µÿ»σ£║µÖ»σ¥Éµá\135"}
, 
ParamType = {"number", "number", "number", "number", "string", "string", "number3"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤σêçµìóσê\1762"] = {Api = function(self, Args, Callback)
  -- function num : 0_190
  (cameraMgr:Instance()):CameraUpdateTo2(Args[1], Args[2], Args[3], Args[4])
  if Callback then
    Callback()
  end
end
, Name = "Θò£σñ┤σêçµìóσê\1762", 
ParamDesc = {"µ║Éτé╣", "τ¢«µáçτé\185", "σÅéΦ\128âτ¢«µáçσÉì", "µùïΦ╜¼ΦºÆσ║ª"}
, 
ParamType = {"number3", "number3", "string", "number"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤σêçµìóσê\1763"] = {Api = function(self, Args, Callback)
  -- function num : 0_191
  (cameraMgr:Instance()):CameraUpdateTo3(Args[1], Args[2], Args[3], Args[4], Args[5])
  if Callback then
    Callback()
  end
end
, Name = "Θò£σñ┤σêçµìóσê\1763", 
ParamDesc = {"µ║Éτé╣", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "σñçµ│¿"}
, 
ParamTips = {"σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä"}
, 
ParamType = {"number3", "number", "number", "number", "number", "string"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤σêçµìóσê\1765"] = {Api = function(self, Args, Callback)
  -- function num : 0_192
  -- DECOMPILER ERROR at PC4: Confused about usage of register: R3 in 'UnsetPending'

  if Args[6] then
    drama.s_DramaFinishNotBindHero = true
  end
  ;
  (cameraMgr:Instance()):CameraUpdateTo3(Args[1], Args[2], Args[3], Args[4], Args[5])
  if Callback then
    Callback()
  end
end
, Name = "Θò£σñ┤σêçµìóσê\1765", 
ParamDesc = {"µ║Éτé╣", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "σëºµâàτ╗ôµ¥ƒΣ╕ìµüóσñìµ╕╕µêÅΘò£σñ\180"}
, 
ParamType = {"number3", "number", "number", "number", "number", "boolean"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤σÅÿµìóσê░σ»╣Φ▒\161"] = {Api = function(self, Args, Callback)
  -- function num : 0_193
  drama:CameraTranslateToObj(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Callback, Args[-1])
end
, Name = "Θò£σñ┤σÅÿµìóσê░σ»╣Φ▒\161", 
ParamDesc = {"τ¢«µáçσÉìσ¡ù", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "FOV", "µîéµÄÑΘ¬¿Θ¬╝", "τ╝ôσè¿µû╣σ╝Å", "µù╢Θù┤(σ╕\167)"}
, 
ParamTips = {"τÄ⌐σ«╢Φç¬σ╖▒σí½zhujue", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "Θ¬¿Θ¬╝σÉìτº░σÅ»Σ╕ìσí\171", "Θ╗ÿΦ«ñµÿ»Linearσ¥çσîÇσÅÿµìó", "τ¢╕µ£║τº╗σè¿σê░µ£Çτ╗êΘò£σñ┤τÜäµù╢Θò┐"}
, 
ParamType = {"string", "number", "number", "number", "number", "number", "string", "string", "number"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤σÉîµ¡Ñσ╝\128σà\179"] = {Api = function(self, Args, Callback)
  -- function num : 0_194
  drama:SetRenderTextureCameraUpdate(Args[1], Callback, Args[-1])
end
, Name = "Θò£σñ┤σÉîµ¡Ñσ╝\128σà\179", 
ParamDesc = {"µÿ»σÉªσ╝\128σÉ\175"}
, 
ParamType = {"boolean"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤µîüτ╗¡τ╗æσ«Üσ»╣Φ▒íΘ¬¿Θ¬╝"] = {Api = function(self, Args, Callback)
  -- function num : 0_195
  drama:OnCameraFollowToObj(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Callback, Args[-1])
end
, Name = "Θò£σñ┤µîüτ╗¡τ╗æσ«Üσ»╣Φ▒íΘ¬¿Θ¬╝", 
ParamDesc = {"τ¢«µáçσÉìσ¡ù", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "FOV", "µîéµÄÑΘ¬¿Θ¬╝", "µù╢Θù┤(σ╕\167)"}
, 
ParamTips = {"τÄ⌐σ«╢Φç¬σ╖▒σí½zhujue", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "Θ¬¿Θ¬╝σÉìτº░σÅ»Σ╕ìσí\171", "τ¢╕µ£║Σ┐¥µîüτ╗æσ«ÜτÜäµù╢Θò\191"}
, 
ParamType = {"string", "number", "number", "number", "number", "number", "string", "number"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤µùïΦ╜¼Φ┐Éσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_196
  drama:CameraRotate(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "Θò£σñ┤µùïΦ╜¼Φ┐Éσè¿", 
ParamDesc = {"Φº\146(ΘÇ\159)σ║\166", "σ£åσ┐âσ¥Éµáç", "σ£åσ┐âσÅéΦ\128âσÉì", "τ¢«µáçτé\185", "σÅéΦ\128âτ¢«µáçσÉì"}
, 
ParamType = {"number2", "number3", "string", "number3", "string"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤µá╣µì«σ»╣Φ▒íσÅÿµìóσê\176"] = {Api = function(self, Args, Callback)
  -- function num : 0_197
  drama:CameraTranslateForObj(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Callback, Args[-1])
end
, Name = "Θò£σñ┤µá╣µì«σ»╣Φ▒íσÅÿµìóσê\176", 
ParamDesc = {"τ¢«µáçσÉìσ¡ù", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "FOV", "µîéµÄÑΘ¬¿Θ¬╝", "τ╝ôσè¿µû╣σ╝Å", "µù╢Θù┤(σ╕\167)"}
, 
ParamTips = {"τÄ⌐σ«╢Φç¬σ╖▒σí½zhujue", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "σñìσê╢σÅéµò░Φç¬σè¿σí½τÜä", "Θ¬¿Θ¬╝σÉìτº░σÅ»Σ╕ìσí\171", "Θ╗ÿΦ«ñµÿ»Linearσ¥çσîÇσÅÿµìó", "τ¢╕µ£║Σ┐¥µîüτ╗æσ«ÜτÜäµù╢Θò\191"}
, 
ParamType = {"string", "number2", "number2", "number2", "number2", "number2", "string", "string", "number"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤µ¿íτ│èµòêµ₧£"] = {Api = function(self, Args, Callback)
  -- function num : 0_198
  drama:EnableCameraSpeedup(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Callback, Args[-1])
end
, Name = "Θò£σñ┤µ¿íτ│èµòêµ₧£", 
ParamDesc = {"µÿ»σÉªσ╝\128σÉ\175", "Φ┐çσ║ªµù╢Θù┤", "Φ╡╖σºïσìèσ╛ä", "τ¢«µáçσìèσ╛ä", "Φ╡╖σºïσ╝║σ║ª", "τ¢«µáçσ╝║σ║ª", "Φ╡╖σºïµò░ΘçÅ", "τ¢«µáçµò░ΘçÅ", "τ╝ôσè¿µû╣σ╝Å"}
, 
ParamTips = {"µÿ»σÉªσ╝\128σÉ\175", "Φ┐çσ║ªµù╢Θù┤∩╝êµ£ëσí½µù╢Θù┤π\128éσ╣╢Σ╕öΦ╡╖σºïσÆîτ¢«µáçΘâ╜µ£ëσí½µëìΣ╝Üµ£ëΦ┐çσ║ªµòêµ₧£πÇ\1303τºìµòêµ₧£σÅ»Σ╗Ñσêåσê½σí½πÇéΣ╕ìΘ£\128Φªüσ░▒Σ╕ìσí½πÇéσÅ¬σí½τ¢«µáçΣ╕ìσí½Φ╡╖σºïσÅ»Σ╗Ñσì│σê╗µö╣σÅÿ∩╝ë", "Φ╡╖σºïσìèσ╛ä", "τ¢«µáçσìèσ╛ä", "Φ╡╖σºïσ╝║σ║ª", "τ¢«µáçσ╝║σ║ª", "Φ╡╖σºïµò░ΘçÅ", "τ¢«µáçµò░ΘçÅ", "τ╝ôσè¿µû╣σ╝Å"}
, 
ParamType = {"boolean", "number", "number", "number", "number", "number", "number", "number", "string"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤µ░┤σ╣│µùïΦ╜¼Φ┐Éσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_199
  drama:CameraRotateForOne(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9], Args[10], Args[11], Args[12], Args[13], Args[14], Callback, Args[-1])
end
, Name = "Θò£σñ┤µ░┤σ╣│µùïΦ╜¼Φ┐Éσè¿", 
ParamDesc = {"ΦºÆσ║ª", "ΘÇƒσ║ª", "σ£åσ┐âσ¥Éµáç", "σ£åσ┐âσÅéΦ\128âσÉì", "µ║Éτé╣", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "ΦºåΦ╖¥σÅÿσîû", "Θ½ÿσ║ªσÅÿσîû", "Σ╕ìΣ┐«µ¡\163", "Φ╖ƒΘÜÅτ¢«µáç", "Φ╖ƒΘÜÅΘ½ÿσ║ª"}
, 
ParamTips = {"Θò£σñ┤µùïΦ╜¼τÜäΦºÆσ║\166", "Θò£σñ┤µùïΦ╜¼τÜäΘ\128ƒσ║ª", "σ£åσ┐âσ¥Éµáç", "σ£åσ┐âτÜäΦºÆΦë▓σÉìτº\176", "µ║Éτé╣", "µ░┤σ╣│ΦºÆσ║ª", "σ₧éτ¢┤ΦºÆσ║ª", "µùïΦ╜¼ΦºÆσ║ª", "ΦºåΦ╖¥", "ΦºåΦ╖¥σÅÿσîû", "Θ½ÿσ║ªσÅÿσîû", "τ╗ôµ¥ƒΣ╕ìΣ┐«µ¡úτ¢╕µ£║Θò£σñ\180", "τ¢╕µ£║µ║Éτé╣Φ╖ƒΘÜÅτ¢«µáçΣ╜ìτ╜«σÅÿσîû", "τ¢╕µ£║τ¢«µáçτé╣Φ╖ƒΘÜÅΘ½ÿσ║ªσÅÿσîûΦ\128îσÅÿσî\150"}
, 
ParamType = {"number", "number", "number3", "string", "number3", "number", "number", "number", "number", "number", "number", "boolean", "boolean", "boolean"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤τ¢┤τ║┐Φ┐Éσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_200
  drama:CameraMove(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Callback, Args[-1])
end
, Name = "Θò£σñ┤τ¢┤τ║┐Φ┐Éσè¿", 
ParamDesc = {"τ╗êτé╣Σ╜ìτ╜«", "ΘÇƒσ║ª", "µ░┤σ╣│Φº\146(ΘÇ\159)σ║\166", "σ₧éτ¢┤Φº\146(ΘÇ\159)σ║\166", "µùïΦ╜¼Φº\146(ΘÇ\159)σ║\166", "τ¢«µáçτé\185", "σÅéΦ\128âτ¢«µáçσÉì"}
, 
ParamType = {"number3", "number", "number2", "number2", "number2", "number3", "string"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤τ╗æσ«Üσ£║µÖ»σ»╣Φ▒í"] = {Api = function(self, Args, Callback)
  -- function num : 0_201
  drama:CameraBindSceneObj(Args[1], Callback, Args[-1])
end
, Name = "Θò£σñ┤τ╗æσ«Üσ£║µÖ»σ»╣Φ▒í", 
ParamDesc = {"σ»╣Φ▒íσÉìτº░"}
, 
ParamType = {"string", "number"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤ΦºåΦºÆΦ╜¼σè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_202
  drama:CameraViewRotate(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "Θò£σñ┤ΦºåΦºÆΦ╜¼σè¿", 
ParamDesc = {"µ░┤σ╣│Φº\146(ΘÇ\159)σ║\166", "σ₧éτ¢┤Φº\146(ΘÇ\159)σ║\166", "µùïΦ╜¼Φº\146(ΘÇ\159)σ║\166"}
, 
ParamType = {"number2", "number2", "number2"}
, Type = "Θò£σñ┤"}
, 
["Θò£σñ┤Φ╖ƒΘÜÅΣ╕╗ΦºÆµ░┤σ╣│µùïΦ╜¼Φ┐Éσè¿"] = {Api = function(self, Args, Callback)
  -- function num : 0_203
  drama:CameraRotateForHero(Args[1], Args[2], Args[3], Args[4], Args[5], Callback, Args[-1])
end
, Name = "Θò£σñ┤Φ╖ƒΘÜÅΣ╕╗ΦºÆµ░┤σ╣│µùïΦ╜¼Φ┐Éσè¿", 
ParamDesc = {"σê¥σºïτ¢╕µ£║", "σÅÿσîûτ¢╕µ£║", "µù╢Θù┤(σ╕\167)", "Σ┐¥µîüΘò£σñ┤", "µÖâσè¿ΦºåΦ╖¥"}
, 
ParamTips = {"τ¢╕µ£║Φ╖¥τª╗πÇüτ¢╕µ£║Θ½ÿσ║ªπ\128üτ¢╕µ£║ΦºÆσ║ª∩╝êσÅ»Σ╕ìσí½∩╝ë", "τ¢╕µ£║τ¢╕σ»╣Φ╖¥τª╗πÇüτ¢╕µ£║Θ½ÿσ║ªπ\128üτ¢╕µ£║ΦºÆσ║\166", "σÅÿσîûµù╢Θù┤∩╝êσ╕º∩╝\137", "σëºµâàτ╗ôµ¥ƒσÉÄΣ╕ìΣ┐«µ¡úΘò£σñ┤", "µÖâσè¿σ╣àσ║ªπÇéµÖâσè¿µ¼íµò░π\128éΦí░σçÅτ│╗µò\176"}
, 
ParamType = {"number3", "number3", "number", "boolean", "number3"}
, Type = "Θò£σñ┤"}
, 
["Θù¬Θü┐QteµÄºσê╢∩╝êσìòΣ║║∩╝ë"] = {Api = function(self, Args, Callback)
  -- function num : 0_204
  drama:TrainingBlinkQte(Args[1], Callback, Args[-1])
end
, Name = "Θù¬Θü┐QteµÄºσê╢∩╝êσìòΣ║║∩╝ë", 
ParamDesc = {"σ╝\128σà\179"}
, 
ParamType = {"boolean"}
, Type = "σèƒΦâ╜"}
, 
["ΘÜÉΦùÅ/µÿ╛τñ║µÄºΣ╗╢"] = {Api = function(self, Args, Callback)
  -- function num : 0_205
  drama:SetCompObjVisible(Args[1], Args[2], Callback, Args[-1])
end
, Name = "ΘÜÉΦùÅ/µÿ╛τñ║µÄºΣ╗╢", 
ParamDesc = {"µÄºΣ╗╢σÉ\141", "µÿ╛τñ║σ╝\128σà\179"}
, 
ParamType = {"string", "boolean"}
, Type = "σèƒΦâ╜"}
, 
["ΘÜÉΦùÅUIτòîΘ¥ó"] = {Api = function(self, Args, Callback)
  -- function num : 0_206
  drama:ShowUIView(false, Callback, Args[-1])
end
, Name = "ΘÜÉΦùÅUIτòîΘ¥ó", Type = "σ╕╕τö¿"}
, 
["ΘÜÉΦùÅσåÆµ│íµ╢êµü»"] = {Api = function(self, Args, Callback)
  -- function num : 0_207
  drama:CleanChat(Args[1], Callback, Args[-1])
end
, Name = "ΘÜÉΦùÅσåÆµ│íµ╢êµü»", 
ParamDesc = {"σëºµâàΣ╕¡σÉìσ¡\151"}
, 
ParamType = {"string"}
, Type = "ΦºÆΦë▓"}
, 
["ΘÜÉΦùÅσ╜ôσëìΣ╕╗ΦºÆ"] = {Api = function(self, Args, Callback)
  -- function num : 0_208
  drama:ShowCurHero(Args[1], Args[2], Callback, Args[-1])
end
, Name = "ΘÜÉΦùÅσ╜ôσëìΣ╕╗ΦºÆ", 
ParamDesc = {"µÿ»σÉªΘÜÉΦùÅ", "σà│ΦüöσÉìσ¡ù"}
, 
ParamType = {"boolean", "boolean"}
, Type = "σ╕╕τö¿"}
, 
["ΘÜÉΦùÅσ╜ôσëìΣ╕╗ΦºÆσÉìσ¡ù"] = {Api = function(self, Args, Callback)
  -- function num : 0_209
  drama:ShowHeroName(Args[1], Callback, Args[-1])
end
, Name = "ΘÜÉΦùÅσ╜ôσëìΣ╕╗ΦºÆσÉìσ¡ù", 
ParamDesc = {"µÿ╛τñ║"}
, 
ParamType = {"boolean"}
, Type = "ΦºÆΦë▓"}
, 
["ΘÜÉΦùÅµè\128Φâ╜µîëΘÆ\174"] = {Api = function(self, Args, Callback)
  -- function num : 0_210
  drama:IsHideSkillBtn(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "ΘÜÉΦùÅµè\128Φâ╜µîëΘÆ\174", 
ParamDesc = {"µÄºΣ╗╢σÉ\141", "µÿ»σÉªΘÜÉΦùÅ", "τë╣µòêId"}
, 
ParamType = {"string", "boolean", "number"}
, Type = "σèƒΦâ╜"}
, 
["ΘóäσèáΦ╜╜Θƒ│µò\136"] = {Api = function(self, Args, Callback)
  -- function num : 0_211
  drama:PreloadAudio(Args[1], Callback, Args[-1])
end
, Name = "ΘóäσèáΦ╜╜Θƒ│µò\136", 
ParamDesc = {"Θƒ│µòêId"}
, 
ParamType = {"number"}
, Type = "Φ╡äµ║É"}
, 
["Θ╗æσ£║µëôσ¡ùµ£\186"] = {Api = function(self, Args, Callback)
  -- function num : 0_212
  drama:ShowBlackTyping(Args[1], Args[2], Args[3], Callback, Args[-1])
end
, Name = "Θ╗æσ£║µëôσ¡ùµ£\186", 
ParamDesc = {"σ»╣Φ»¥Id", "µù╢Θù┤Θù┤ΘÜö", "σàüΦ«╕Φ╖│Φ┐ç"}
, 
ParamTips = {"σ»╣Φ»¥Id", "µëôσ¡ùµù╢Θù┤Θù┤ΘÜö"}
, 
ParamType = {"number", "number", "boolean"}
, Type = "Θò£σñ┤"}
}
, 
ChatDialogue = {[10001011] = "You got it!!! I\'m so jealous!", [10001012] = "You can have it.", [10001013] = "Wow! Thank you so much!", [10001014] = "Let me tell you a little secret! So around here...", [10001015] = "You\'ve received a useful tip! A new city collectible has been unlocked, go check it on the map!", [10001016] = "......", [10001017] = "A common keychain capsule. Try again!", [10001018] = "!!!", [10001019] = "A rare hero toy!", [10002011] = "The birds fly away satisfied.", [10002012] = "A-Are they gone? I\'m saved...", [10002013] = "Did you drive them away? T-Thank you so much!", [100020131] = "I\'m been training to become a hero myself!", [100020132] = "I even shaved off my long hair to make my run faster! But why would those birds attack me out of no where...", [10002014] = "Well, anyways, you got me out of a tight spot, so let me know if you need any help!", [10002015] = "Ask if there has been anything of interest in the area.", [10002016] = "Anything of interest...? Well, there is something, let me point it out to you.", [10002017] = "You\'ve received a useful tip! A new city collectible has been unlocked, go check it on the map!", [10003011] = "Perfect! If any suspicious boats pass by, I\'ll get a clear photo!", [10003012] = "Although my Quirk isn\'t suitable for combat, I still want to help the police and the Pro Hero I really look up to...", [100030121] = "Who would that be?", [100030122] = "The Sea Rescue Hero with the Spotted Seal Quirk, Selkie! My dream is to one day join his crew and set sail with him on the Oki Mariner!", [100030123] = "Selkie isn\'t just strong, he\'s also smart! Plus, don\'t you think his expressions are really cute all the time?", [100030124] = "......", [100030125] = "Well, thanks for helping me, I noticed something interesting earlier while walking along the beach, let me tell you where it is...", [10003013] = "You\'ve received a useful tip! A new city collectible has been unlocked, go check it on the map!", [10004011] = "Phew! That was refreshing!", [10004012] = "Where\'d you get this? I only drank half the bottle and I\'m already fully hydrated!", [100040121] = "Now I can keep working to make this coastline beautiful for the people of this city again!", [10004013] = "Oh right, when I was lugging waste around, I noticed something interesting. It might be of help for you.", [10005011] = "Ha! I feel like I\'m surging with power, now to get this work done!", [10005012] = "Do you need any help?", [10005013] = "Nah, I appreciate the offer, but save your energy for villains! The more they\'re stopped from destroying the city, the less repairs we need to do!", [10005014] = "I saw something curious when I was repairing another building eariler. You should head over there if you\'re interested!", [10006011] = "This stuff\'s pretty good at keeping the energy up, I\'ve got to prepare more next time I\'m cramming!", [10006012] = "Wait, this isn\'t the time for chatter! I need to finish that report on the robbery , otherwise the editor will crew my ass off...", [10006013] = "Thanks again. In return, let me clue you in on a secret. So around here...", [10007011] = "That letter! Is that the one I wrote?", [10007012] = "Thank you so much! Now I can finally express my gratitude! But I wonder if that hero still remembers me...", [10007013] = "Oh, let me tell you about a secret I learned about recently!", [10007021] = "A letter on the ground, the recipient is a Pro Hero.", [10007022] = "There\'s a stamp on the letter, looks like the letter got lost while on its way.", [10008021] = "Wooof woof woof!", [10008022] = "Looks like the dog wants you to follow it!", [1001] = "The police and I have been searching for him. He\'s the suspect for a slew of kidnapping!", [10010011] = "Is this taiyaki? It can totally be a breakfast food!", [10010012] = "But it\'s getting a bit cold, I should go find a microwave to heat up.", [10010013] = "I saw something weird earlier, but I don\'t remember where it is now, so you can go find it yourself.", [10010014] = "You\'ve received a useful tip! A new city collectible has been unlocked, go check it on the map!", [10011011] = "Find out the truth about the sewer legend.", [10011012] = "ZzzzzzzΓÇ\166...", [10011013] = "There\'s a strange figure on the wall, what do you want to do?", [10011014] = "Yell at it", [10011015] = "*Yawn* What\'s that noise...?", [10011016] = "Oh, hi there. Do you need anything from me? If not I\'m going back to sleep while it\'s still day!", [10011017] = "Why am I sleeping here? This place is dark, damp, and not much people come here, so it\'s perfect for napping.", [10011018] = "My apartment is a bit too small for me. I have to be careful when I hang upside down or else my head will hit the floor!", [10011019] = "If there\'s nothing else you need, I\'m going back to sleep. I have a graveyard shift coming up.", [10011020] = "Found out the truth behind the sewer legend.", [10011021] = "What? It\'s just a girl sleeping in the dark?", [10011022] = "That\'s... so boring... Maybe it\'s better that people don\'t learn the truth behind this urban legend...", [10011023] = "But thanks for telling me about it. In return, let me tell you about another secret!", [10011024] = "You\'ve received a useful tip! A new city collectible has been unlocked, go check it on the map!", [10013011] = "A drone with its power off.", [10013012] = "Press the power button", [10013013] = "Beep. Beep.", [10013014] = "The drone starts moving in a certain direction...", [10016011] = "The blueberry jam looks fresh and the pastry is nice and soft. This will go great with a cup of Darjeeling!", [10016012] = "You\'re giving them to me? That\'s so generous of you!", [10016013] = "Thank you so much! You should come join us next time!", [10016014] = "As a token of appreciation, allow me to tell you about something you might be interested in.", [10017011] = "A photo of a stadium, with some sort of marking...", [10017012] = "A photo of a swimming hall, with some sort of marking...", [10017013] = "A photo before the train station square, with some sort of marking...", [10017014] = "A photo from the square in New Town, with some sort of marking...", [10017015] = "The photos have been placed in your bag, you can check them there whenever you want!", [1002] = "We have to move quickly. Let\'s go!", [10021011] = "My ID card! You found it! I\'ll make sure I don\'t lose it!", [10021012] = "I worked so hard to get this job! After graduating from the Department of Support, I\'ve always wanted to work here.", [10021013] = "Maybe one day, I\'ll be able to make Support Gear for my favorite heroes!", [10021014] = "Oh right, I noticed something interesting around here earlier...", [10021015] = "An ID card on the ground with the logo of the Technology Museum...", [10022011] = "Are you looking for your parents?", [10022012] = "Daddy...", [10022013] = "Daddy...! I can\'t find daddy! I can\'t find my home!", [10022014] = "You\'ll help me? Really...? You look like a hero, I\'ll trust you.", [10022015] = "You found him! Thank you so much!", [10022016] = "I\'m sorry daddy... I\'ll never run away again...", [10022017] = "It\'s alright, daddy will be sure to keep his promises in the future! It\'s still not too late, come on, I\'ll take you to the amusement park!", [10022018] = "Thank you! You really are a hero! You want to know something cool?", [1003] = "We have a general idea of where the villains are. Let\'s split up.", [10040101] = "Hey! Let\'s start off today\'s Daily American Fitness Plan with a punch!", [10040102] = "Now give me a second punch!", [10040103] = "Third! Take note, the third attack in the combo will charge the Expert Move meter. Focus and pay attention to the meter below!", [10040104] = "Punch in the three different charge-up stages to release three different Expert Moves! This first one; Texas Smash!", [10040105] = "Every Expert Move used will yield an One For All Amplification. After activating the special Transferred Might, the speed of amplification will multiply!", [10040106] = "Yes! The One For All Amplification is at 7 stacks, this is enough to use the enhanced Q - Detroit Smash. Watch this!", [10040107] = "Tap the Strategy button to check how to use a character anytime!", [10040201] = "Is everything clear now? Tap the Auto Combat button and watch me take them all down!", [10040202] = "Warm up complete, let\'s get it on! Turn off Auto Combat and take control of the battle!", [10042] = "I\'ll go this way, you go that way!", [1005] = "Sorry for asking you for a patrol this late.", [1006] = "We spotted a few villains around the development area.", [1007] = "Please assist the police with the arrest.", [1008] = "We need someone to test the new features in mock combat training. Can we count on you?", [1009] = "About what happened earlier.", [1010] = "Turns out there are some villains hiding at the seaside park. They\'re got gonna get away though.", [10100002] = "I can\'t beat him at all! I can only run away!", [10100201] = "Another dead end?", [10100202] = "I think it\'s more complicated than it appeared...", [101002021] = "Hey! You\'re just in time!", [101002022] = "We could use the extra hands!", [101002023] = "Hm? You want to help us? Thank you so much!", [10100203] = "As you can see, these buildings are pretty old and they\'re pretty close to each other.", [10100204] = "I\'m literally in a tight spot right now, I can\'t use my power or I\'ll make a mess out of this place!", [10100205] = "I have to get a good grasp of the current situation to make snap judgements in an emergency! I can find which roads are passable after becoming a giant!", [10100207] = "I found some tight roads and matching them up with photos right now! Look!", [10100208] = "But I can\'t handle it all by myself. I wonder if someone can help me.", [10100209] = "Take a look at this file. Be a dear and mark all the small roads for me!", [101002091] = "I\'m counting on you!", [10100210] = "This is an Exploration Quest, there is no navigation to guide your way. Please find the destination according to the clues.", [10100401] = "What should I say about this ending...", [10100402] = "Well, that\'s that. Thank you.", [10100403] = "A lot of people are into hero culture huh...", [10100409] = "Damn it, we only stole them because we heard they were very popular now. But nobody wants to buy them!", [10100410] = "There\'s another shop ahead. Let\'s try our luck there for the last time. If it doesn\'t work, we\'ll just have to run away...", [10100411] = "That\'s it!", [1011] = "No time to hesitate, let\'s kick some ass!", [10110101] = "The power of the Hero Killer comes from his vast experience and tactical thinking. W - Dagger Strike is a throwing attack that can bind the opponent in an instant.", [10110102] = "After using W - Dagger Strike, he will switch to his daggers and use Cull to rush to the side of the enemy.", [10110103] = "Using these rushing Culls repeatedly is a piece of cake for the swift Hero Killer.", [10110104] = "Close in on the enemy, I\'m curious to see what will happen.", [10110105] = "A nice chance, now let\'s see how beautifully this E - Blade Dance plays out.", [10110106] = "Still won\'t show any mercy, Hero Killer? Blade Dance brings out both the katana and dagger. Trouble is brewing.", [10110107] = "I see. With both weapons, Cull can instantly rush in to an enemy.", [10110108] = "The combos of Cull have also changed. The speed and attack have both increased.", [10110109] = "Marvelous, absolutely marvelous!", [10110110] = "Those eye simmer like silently burning flames.", [10110111] = "Can you sense that powerful drive as well? Every move, every attack, accrues Vigor, released in a series of Slashes.", [10110112] = "This ends the education session. Figure out the rest with the Strategy button on your own.", [10110201] = "Tap the Auto Combat button to witness how the Hero Killer purges his foes with your own eyes.", [10110202] = "Guidance is useless if I just give the answer. Close the Auto Combat and walk the path of death yourself.", [10110203] = "This is the ultimate skill of the Hero Killer\'s fury: Verdict.", [10110204] = "After Verdict is activated, every Cull is imbued with power, and all targets in a straight line will be purged.", [10110205] = "That\'s all I have to say. Now, go on and savor this moment.", [10120101] = "What do you want?", [10120102] = "I\'ve already told you, hand over all your valuables!", [10120105] = "But I\'ve given you all the cash...", [10120107] = "Don\'t try to fool us! I know you have more! Do you take us for beggars?!", [10120108] = "Hurry up! Otherwise we\'ll just smash up your shop!", [10120109] = "Meowww!!!", [10120116] = "What are you looking at?! You better get out of our way!", [10120117] = "Trying to be a hero? Let me teach you a proper lesson! Get him!", [10120123] = "D-Damn it....! I\'ll be back...!", [10150101] = "The W skill has two forms. When at a distance, you can use Caltrops!", [10150102] = "When you are close to a villain, use the W skill to activate Martial Attack to hit the enemy.", [10150103] = "The E skill also has two forms depending on the distance of the enemy. The first is when the enemy is far.", [10150104] = "Careful of an ambush! When Aizawa is close to a villain, the E skill becomes a sleek slash.", [10150105] = "Aizawa\'s special disables villain\'s attacks. When used with the Skill bar is full, Befall activates to eliminate villains within the center of Aizawa\'s vision.", [10150201] = "Aizawa can switch between three combat styles: Sneak, Counter, and Ambush. Check the meter to know which style is currently active.", [10150202] = "Aizawa will start with #cff6b11Sneak#c000000 active. Every 3 seconds, Aizawa will become invisible for 1 second.", [10150203] = "With #cff6b11Sneak#c000000 active, Aizawa has another ability: The next Normal ATK or W/E skill will teleport Aizawa behind a nearby enemy before attacking.", [10150204] = "When #cff6b11Counter#c000000 is active, Aizawa will automatically back out from attacks. When this happens, tap the Normal ATK button to close in to a enemy to counter.", [10150205] = "Now! Use the E skill!", [10150206] = "When Aizawa uses his E skill to hit an enemy in close combat three times, #cff6b11Ambush#c000000 will automatically activate.", [10150207] = "Aizawa will automatically switch between styles during combo. Additionally, you can use the Q skill to manually switch between them and get extra bonus effects", [10150208] = "When Aizawa triggers teleport and attacks, #cff6b11Counter#c000000 will be automatically activated.", [10150209] = "Normal ATKs will only increase the meter when #cff6b11Ambush#c000000 is active.", [10150210] = "Not enough energy, just one more Normal ATK.", [10150211] = "Now that the energy is fully charged, release Befall to eliminate enemies in the center of your vision!", [10150301] = "Understand Aizawa\'s skills now? Tap the Auto Combat button and watch a full combat demonstration.", [10150302] = "Now try it yourself! Turn off Auto Combat and take control of the battle!", [10190101] = "Preparing for the next League of Villains operation? Use this chance to learn something, Shigaraki.", [10190102] = "Go on, you still have much room for growth.", [10190103] = "Master the basics so you won\'t get defeated by heroes skilled in the martial arts.", [10190104] = "When the time is right, the fourth combo attack will have two methods: A direct attack from a light tap, and a #cff6b11grapple#c000000 by a long hold.", [10190105] = "After successfully #cff6b11grappling and throwing#c000000 a target, use this chance to use Q - Deadly Pursuit.", [10190106] = "The special Breeding Spite will rack up #cff6b11Malice#c000000 quickly for the League of Villains.", [10190107] = "This is the manifestation of #cff6b11Malice#c000000. Now, show them what you\'re made of, and I\'ll be waiting at the top with a present for you.", [10190108] = "Use E - Hand of Destruction to also #cff6b11grapple#c000000 an opponent.", [10190109] = "Remember what I said, #cff6b11grapple and throw#c000000 your enemy to use Q - Deadly Pursuit.", [10190110] = "Your #cff6b11Malice#c000000 is reaching its peak, well done. Fill it up, and your reward will be waiting for you.", [10190111] = "Are you satisfied with this #cff6b11Nomu#c000000? Leave the direct fighting to it, you just need to find chances to stack Decay on your opponents to deal constant damage.", [10190112] = "Feel the power of the #cff6b11Nomu#c000000. Use E - Imminent Disaster to control its attacks.", [10190113] = "Spare no mercy, pursue with your skill again when #cff6b11Nomu#c000000 hits.", [10190114] = "I gave this #cff6b11Nomu#c000000 power comparable to that of All Might. It can easily crush its opponents.", [10190115] = "Follow up and use your skill again to pursue.", [10190116] = "Control #cff6b11Nomu#c000000 and use Q - Destructive Charge to smash them to smithereens.", [10190117] = "Pursuit! When #cff6b11Nomu#c000000 finishes an attack, there will be a chance to pursuit again. Take advantage of your pawn and finish off the opponent.", [10190118] = "Did it end too quickly? That\'s alright, try again with the next enemy, and I\'ll keep assisting you.", [10190119] = "There are many ways to stack up Decay. Enable Breeding Spite to continuously stack Decay on nearby targets.", [10190201] = "Tap the Auto Combat button to see Shigaraki\'s growth.", [10190202] = "Now turn off Auto Combat and feel the power of Decay and the Nomu combined.", [10200101] = "Huh? Don\'t leave so fast, I haven\'t finished speaking yet!", [10200102] = "I... I don\'t know what to do. My friend is still waiting for me...", [10200103] = "Hey! You\'re such a rude girl! My boss is talking to you!", [10200104] = "But...", [10200113] = "That\'s it!", [10200114] = "Who are you? This is none of your business! #rWant to be the hero? Come on, teach him a lesson!", [10200120] = "Am I saved? Thank you so much!", [10200121] = "I heard the noise from here, so I hurried over to take a look. Are you alright?", [10200122] = "Those people wouldn\'t let me go. Thankfully this person was here.", [10200123] = "That\'s great. I\'m lucky I asked you to help!", [10200124] = "Let\'s go, the signing event will start soon!", [10200125] = "Sure, I\'m coming!", [10200301] = "Oh, you came just at the right time! Do you remember the thing I asked you to help with last time?", [10200302] = "I need your help again! I just can\'t find these tiny roads!", [10200303] = "I have marked all the roads in this town. Well, it\'s more like everyone helped me marking them... Anyways!", [10200304] = "I can\'t find this one!", [10200305] = "Whether it is Ms. Inoue who lives in West Alley, or kids in the neighbor can\'t find this road...", [10200306] = "You\'re totally up for it right? Awesome! I\'ve been waiting for you to say that!", [10200307] = "Then without further ado, off you go!", [10200308] = "This is an Exploration Quest, there is no navigation to guide your way. Please find the destination according to the clues.", [10200503] = "Did he just ran over his own man?", [10200504] = "This guy\'s pretty cruel...", [10200505] = "We\'ll question him thoroughly. Thanks everyone!", [10200506] = "That\'s right, you\'re a true Pro Hero now. Keep it up.", [1021] = "Ahahahah! I have been waiting for you!", [10210101] = "Hey! Long time no see, Endeavor! I think the last time we met was...", [10210102] = "Oh, getting right to it, are we? No wonder you\'re the hero with the most cases solved. Haahaha!", [10210103] = "Feeling the heat? Endeavor\'s Crackling Combo ranks up the heat in his body, increasing his Temperature.", [10210104] = "Flaming hot! The Crackling Combo continues!", [10210105] = "He in the air now! When #cff6b11in the air#n, Endeavor can kick approaching enemies flying!", [10210106] = "Consuming Flame can suck in nearby enemies and deal damage while increasing Endeavor\'s Temperature.", [10210107] = "Outstanding! Number two hero... I mean Endeavor! What comes next? Is it the Flashfire Fist that can knock enemies flying?", [10210108] = "No wonder young Shoto\'s flame control is so skillful! Endeavor, can you tell me the secrets to teaching... Wait, are you still in your combo?", [10210109] = "The Temperature is past #cff6b1150%#n! Release your Fire Lance soon, or your body can\'t take it!", [10210110] = "Throwing your lance let\'s your body cool down. You can then pick up the lance and use it as a weapon, too!", [10210111] = "Haahaha! Endeavor, cold as always... Well, you\'ll just have to check out the Strategy guide.", [10210112] = "After Endeavor retrieves his weapon, all moves will be conducted through this fire lance, have at it yourself.", [10210113] = "Perhaps it\'s best to hear how to use the lance from the man himself.... Right, Endeavor?", [10210201] = "Understood Endeavor\'s skills now? Tap the Auto Combat button and let the greatest fire-wielding hero show you how it\'s done!", [10210202] = "The whole place is burning! Now turn off Auto Combat and experience the power of Hellflame yourself!", [1022] = "I am here! All Might has arrived!", [1023] = "Pros are always risking their lives!", [102301011] = "Upgraded the #cff6b11Old Town#c000000 Comm Station. You can receive more commissions in the Old Town now!", [1024] = "That applies to daily trainings too! Are you up for the challenge?", [1025] = "My masterfully designed training program will be perfect for you!", [1026] = "Plus, I\'ve prepare some extra goodies for program participants. How nice of me.", [1027] = "Let\'s kick off the special training program and tear some muscles! Plus Ultra!", [1028] = "The police department received some reports about villains taking over nearby factories.", [1029] = "We have just located their whereabouts.", [1030] = "Please go take down the villains!", [10300601] = "See the photo in my hand? You must know what I want to ask you to do...", [10300602] = "That\'s right! Still the glorious quest of finding a road! But the goal this time is not in this town!", [10300603] = "Remember that business street in the Old Town? You drove away the developer\'s goons before, right? And you also got complimented by that old man...", [10300604] = "You wanna know why I don\'t remember the location of the road, but I remember these things clearly?", [10300605] = "Well, I remember it clearly because you took all the credit! I\'m not jealous!", [10300606] = "Anyway, the road we are looking for this time should be near the business street.", [10300607] = "#cFFE750After going down the ramp on my left hand side, turn left, #cFFFFFFand you should be able to see the entrance of the business street!", [1031] = "The faux villains in the training area are out of control.", [1032] = "They are wrecking havoc in the training area.", [1033] = "We need assist the heavily damaged areas first!", [103301011] = "Upgraded the #cff6b11Old Town#c000000 Comm Station. You can receive more commissions in the Old Town now!", [1034] = "Perfect timing!", [1035] = "The city is currently under attack!", [1036] = "This is the location of the villain\'s boss, please assist the police!", [1037] = "We got some intel from the police.", [1038] = "A cruise ship has been hijacked by villains with multiple civilians on board!", [1039] = "We have located the villains, and it\'s up to you to save those people!", [1040] = "Some of them got away.", [1041] = "We must arrest all of them.", [1042] = "Thank you for your work, stay safe!", [1043] = "Police received multiple reports of villains rampaging downtown!", [1044] = "Civilians in the surrounding areas are in danger.", [1045] = "Please eliminate those villains and protect the city!", [1046] = "Bad news! Villains are trying to invade the nearby chemical plant!", [1047] = "We have surrounded the area, now we just have to apprehend them.", [1048] = "Please go to the chemical plant and take care of the villains!", [1049] = "Good job clearing the obsticles, now let\'s go get them!", [110001] = "Go to Hospital Entrance", [110002] = "Head to City Garden", [110003] = "Head to Subway Station", [110004] = "Don\'t Take the Bus", [110005] = "Choose Station to Travel to", [110301] = "...Missing... Kidnapped... Save... Please... Call... Police...", [110302] = "A distrouted message... But this might be an important case!", [110303] = "It seems like the station can\'t filter out the interference. We can\'t get all of the information.", [110304] = "Now use the Search Mode at the station to search for the origins of signals!", [110305] = "Can anyone hear me?! I need help! My daughter has gone missing! She\'s a high school student. She\'s got a big ponytail...", [110308] = "Automatically searching for signal location...", [110309] = "Signal confirmed!", [110310] = "Error with automatic search, please manually search for the signal location.", [112001] = "So when I came back to the store in the morning, I noticed the door and cabinet were all pried open.", [112002] = "Did you lose anything important, or any distinctive items that would be easy to recognize?", [112003] = "That\'s the strangest thing, the thief didn\'t take anything of value, just the recipes from the store.", [112004] = "Food recipes... Doesn\'t seem like something that would enter the market, so they\'ll be harder for us to track down...", [13900101] = "I just ran into villains! Thank god I can run fast...", [13900102] = "Really? Where?", [13900103] = "In the woods to the north. We\'ve got to call the police!", [13900201] = "A group of faux villains are ready at the special training area.", [13900202] = "Looks like there\'s going to be a new battle training exercise soon.", [13900301] = "Did you notice an unfamiliar face at the training area recently?", [13900302] = "Was there? I didn\'t notice, maybe they\'re students visiting from another school?", [13900303] = "Hm... That doesn\'t seem right, let me tell the teacher.", [14900101] = "Some faux villains are destroying the roads around the square!", [14900102] = "This isn\'t the combat training area, these faux villains must be glitching out.", [14900201] = "To collect a new batch of combat testing data, Mei Hatsume is setting up faux villains at the training area.", [15900101] = "The racing training is starting soon, let\'s hurry!", [15900102] = "Huh? Running again? Erm, can I go see the nurse?", [15900301] = "Seriously, who keeps leaving these obstructions on the track?", [15900302] = "My back is going to give out if I keep cleaning up after them like this...", [16000101] = "Haahaha! What a pleasant surprise! I see you\'ve grown stronger, keep it up!", [16000102] = "Come at me with all you\'ve got! Because I will give it my all too!", [16000103] = "That was just a warm up. Come on now, you are not giving me your all!", [163101] = "Hey you! Your son caused a big scene in our store!", [163102] = "He smashed up our inventory really bad and even hurt some of our staff!", [163103] = "Our boss is real mad. He\'s getting ready to take your son to the police station.", [163104] = "But... I don\'t want to take things that far, so how about this; come meet me outside the city tonight.", [163105] = "We can arrange something, so your son can go home. You get my drift? No tricks, just an honest transaction. Hehehe...", [16800101] = "Any other challengers? Not even Pro Heroes can beat our shooting record!", [16800102] = "If you\'re confident in your shooting, come on down to the amusement park and set a new record!", [16800201] = "Hey! Hey! My voice pierces straight to the heart, yo!", [16800202] = "Come over here! I want the whole world to listen to my voice!", [16800203] = "Why is no one paying attention? Looks like I have to be louder.", [16800301] = "There seems to be some occasionally power outages lately.", [16800302] = "I hear somebody is intentionally sabotaging the power lines.", [16800303] = "Really now? I won\'t let them off that easily if I\'m on duty!", [17700101] = "Hand over all your money!", [17700102] = "Yeah! Hand them over! Listen to the boss and nobody gets hurt!", [17700201] = "Don\'t go down this underground pass, I just saw someone getting robbed in there!", [17700202] = "What? We have to report this to the police!", [18600101] = "We\'re going to get some milk tea. Do you want some?", [18600102] = "Wait! Don\'t go! I just got back from that area, and it\'s really chaotic right now!", [18600103] = "Some rough-looking guys are arguing with the clerk at the store, and they might get into a fight soon!", [18600104] = "Oh my god, that\'s terrifying! Should we call the police...?", [18600201] = "The new Support Gear is almost finished, I need to schedule some testings soon.", [18600202] = "Understood, but there haven\'t been enough volunteers for research recently!", [18600203] = "That\'s a pain, I want to use the data to do some recalibrations soon...", [18600301] = "The new mock battle training area is complete and is ready for use.", [18600302] = "Thank you so much, now we can schedule the next round of combat tests!", [20000101] = "Dodge the villain\'s attack! #rWhen the#cff6b11 circle #c000000overlaps with the outer edge #cff6b11 quickly tap the Fast Reflex button #c000000 to perform a perfect dodge!", [20000102] = "Reflex button can also be used for various actions. Now tap the#cff6b11 Fast Reflex button #c000000to launch a quick attack!", [20000103] = "#cff6b11Special Reaction button#c000000 can be triggered when the #cff6b11halo#c000000 overlaps with the outer edge of the button.#cff6b11 Now try to press and slide#c000000", [20000104] = "Now, #cff6b11press and slide #c000000to perform a perfect action!", [20000201] = "How about winding down on the way home?#rSlide#cff6b11 the analog#c000000 to move freely.", [20000301] = "That young man is in danger!#r I shall #cff6b11beat up those villains #c000000 with my heavy knuckles!", [20000302] = "Pro Heroes always stay vigilant! #rUse#cff6b11 dodge  #c000000during battles will keep you away from villain\'s attacks!", [20000303] = "Dodging right before a villain attacks triggers the#cff6b11 Perfect Dodge#c000000, allowing you to #cff6b11Counter#c000000 and gain the upper hand!", [20000401] = "Going in without a plan often leave you vulnerable to attacks!#r Try using#cff6b11 Q - Shoot Style #c000000to close the gap for a surprise assault!", [20000402] = "What? Villains?#rFear not, I will guide you to fight with #cff6b11Skills#c000000!", [20000501] = "Some strong enemies will use #cff6b11Shields #c000000on themselves to prevent #cff6b11hit stun#c000000 and also #cff6b11reduce damage taken#c000000.", [20000502] = "Dealing enough damage will#cff6b11 break #c000000their shields and #cff6b11Weaken#c000000 them!", [20000503] = "Right now! Attack with all you\'ve got!", [20000504] = "You can\'t defeat powerful villains without #cff6b11dodging #c000000their attacks! ", [20000505] = "Right now! Tap the #cff6b11dodge #c000000button!", [20000506] = "#cff6b11Q - Shoot Style #c000000can quickly close the gap between you and the enemy, and there\'s a second part to it!", [20000507] = "Tap #cff6b11Q - Shoot Style#c000000 again to knock them into the air!", [20000508] = "While the villain is airborne, use #cff6b11Heroic Combo #c000000to attack in the air!", [20000509] = "You can now use the charging skill #cff6b11W - Smash#c000000!#rLanding a hit on the enemy will refresh #cff6b11Q - Shoot Style#c000000\'s cooldown!", [20000510] = "Landing a hit on the enemy with #cff6b11W Smash#c000000 will refresh Q - Shoot Style\'s cooldown!", [20000511] = "Villains getting too strong? #rDon\'t give up!", [20000512] = "You can now use the #cff6b11Special Skill: Inherited Might#c000000! Try defeating villains with the power of One For All!", [20000513] = "Haahaha!#rAnother battle? You\'re doing great!", [20000514] = "Tap #cff6b11Strategy#c000000 to open the guide page for the #cff6b11playstyle of each hero#c000000!", [20000515] = "Haahaha!#rI see a new hero with you, great job! Kirishima can counter villains\' attacks, make sure you get familiar to his fighting style!", [20000516] = "Tap his #cff6b11Q Skill #c000000 to counter #cff6b11villain\'s attack#c000000#r Right now!", [20000601] = "Most skills won\'t do a thing when the villain is #cff6b11defending#c000000. #rUse the #cff6b11DEF Break skill#c000000 to cripple their guard!", [20000701] = "Use your Quirk to extinguish the fire! #r#b#cb415b6Press and hold #n#c000000the skill button to put out the flame!", [20000702] = "When you cast a skill, you can use the #b#cb415b6analog#b#c000000 to move#r#b#cb415b6and slide the#n#c000000 skill button to adjust angle!", [20001001] = "There you are! Now it\'s time to teach you about Arena#b#cb415b6 basics skills!", [20001101] = "The objective is simple; defeating all 3 opponent within the time frame to #b#cb415b6win the game#n#c000000.", [20001102] = "If the time runs out, the team who has #b#cb415b6higher remaining HP#n#c000000 wins!", [20001103] = "This is your hero\'s #b#cb415b6HP value#n#c000000. A hero will be defeated when it drops to zero.", [20001201] = "This is your team\'s #b#cb415b6energy bar #n#c000000. Attacking and being attacked fill up your meter. #rEnergy is a crucial factor in battle!", [20001301] = "You can #b#cb415b6switch teammate #n#c000000in the middle of a battle. Now let\'s switch to Denki Kaminari.", [20001302] = "Great job! You can only switch teammate every #b#cb415b63 seconds#n#c000000, so make sure to plan ahead before making the move.", [20001303] = "Now, let\'s get Midoriya on the field again. ", [20001401] = "Time to try out the #b#cb415b6Exclusive Skills#n#c000000 for  Arena! You need to know how to use it to become a veteran here!", [20001402] = "Most damaging moves can be blocked by defending. #r#b#cb415b6Tap and hold #n#c000000to try it out.", [20001501] = "Sturdy isn\'t it? Meanwhile, you can use #b#cb415b6DEF Break#n#c000000 to punch through enemy\'s defense. Now try it on me, don\'t be shy!", [20001502] = "Awesome! Read opponent\'s move and cripple their defence with DEF Break can be the game changer. #rNow let\'s try again!", [20001601] = "Wow, what a punch! Now it\'s time to learn combo attacks. ", [20001602] = "When you knock an opponent#b#cb415b6 into the air#n#c000000, you can spend energy for Combo Switch to begin a combo attack. Give it a try!", [20001603] = "Now, use #b#cb415b6Combo Switch#n#c000000 to begin a combo attack!", [20001701] = "Great job! Lastly, I\'m going to teach you how to get out of attack. Get ready, here I come!", [20001702] = "When you get hit, you can press #b#cb415b6Adversarial Counter #n#c000000 to get out of opponent\'s attack! However, it can not be used in quick succession.", [20001703] = "Adversarial Counter comes in #cff0000red#c000000 and #c1bbaffblue#c000000; #cff0000red#c000000 can be stopped by defending where#c1bbaffblue#c000000 can ignore defense. You will get a hang of it in battles. ", [20001704] = "Enough for training, now go test your heroes out in the Arena!", [20001801] = "Tap the #cff6b11Auto#c000000 button, and let the heroes fight by themselves!", [20001901] = "The faux villains are in #cff6b11Enhanced Armor Mode#c000000! Damage taken is greatly reduced.#rUse the #cff6b11Shock Disruptor#c000000 to disable the effect!", [20002101] = "Greetings agent! I am Tenya Iida, the class representative of U.A. High Class 1-A!", [20002102] = "I will demonstrate to you the operation of this area. First up, the rules of the arena!", [20002103] = "You win by reducing the opponent\'s #b#cb415b6total HP#n#c000000 to zero before #b#cb415b6time ends#n#c000000.", [20002104] = "Or, when the time ends, the side with the higher remaining #b#cb415b6total HP#n#c000000 wins!", [20002201] = "This is your current #b#cb415b6HP value#n#c000000. Your hero will be defeated when it drops to 0.", [20002202] = "This is the #b#cb415b6energy bar#n#c000000 of the team, attacking and defending will both charge it. This is vital if you want to win!", [20002301] = "You can tap here to #b#cb415b6switch teammates#n#c000000 and change characters.", [20002401] = "Next, I will explain combo attacks.", [20002402] = "When the opponent is knocked back, activate the #b#cb415b6Combo Switch#n#c000000!", [20002403] = "Try tapping the skill and knock the opponent back!", [20002404] = "Now! Use #b#cb415b6Combo Switch#n#c000000 to begin a combo attack.", [20002501] = "Remember to use #b#cb415b6Hyper Dodge#n#c000000 when your characters are about to get pummeled.", [20002502] = "When heroes are in the defending stance, use #b#cb415b6Hyper Dodge#n#c000000 to escape from attacks! Are you ready? Here I go!", [20002503] = "Now! Use #b#cb415b6Hyper Dodge#n#c000000 to avoid my combo attack!", [20002504] = "Well done! You\'ve got it down in no time! But be careful, this can\'t be used repeatedly, so use it at the right moment!", [20002601] = "That\'s it for the tutorial, thanks for listening! Feel free to come again, although it\'ll be for real next time!", [20002602] = "Tap the #b#cb415b6Time#n#c000000 above to end this tutorial.", [20003101] = "The equipped Active Support Card will be displayed here as an additional skill during combat.", [20003102] = "Give it a try.", [20003103] = "Hold and swipe up and select your Active Support Card to have the hero come help you!", [20003104] = "Every Active Support Card matches a corresponding hero, different heroes trigger different combat effects, so plan out your strategy!", [20003105] = "ΘóäτòÖ5", [20100801] = "Y-You must have recognized the wrong person.", [201008011] = "I can\'t go there by myself... I have to ask someone for help.", [201008012] = "You\'ll definitely succeed.", [201008013] = "This is the case. The reporter lady gave me a picture of a wanted scammer.", [201008014] = "Someone saw this guy nearby just now. This is a good opportunity to catch him! However, I\'ve fought him before. I don\'t want him to see me so I ran away, and can\'t show myself.", [201008015] = "I need to find someone to go to the scene to confirm if it really is him first. The police and I will be on standby not far away.", [201008016] = "However, those wanted scammers are all cunning and good at disguising themselves.", [201008017] = "Even if he has disguised himself, some of his characteristics still won\'t change!", [201008018] = "I\'ll leave it to you! Go find #cFFE750this guy in the photo#cFFFFFF, he should be hiding in the crowd by now!", [201008019] = "This is an Exploration Quest, there is no navigation to guide your way. Please find the destination according to the photo.", [20100802] = "(This guy can\'t recognize me, can he?)", [20100803] = "I just remembered that I still have something to do. I gotta go.", [20100804] = "Yoshida?", [20100805] = "Don\'t follow me! I\'m innocent. I\'m not suspicious at all!", [20100806] = "Where are you going?", [20100807] = "Tell us at the police station if you are suspicious or not!", [20100901] = "No one wants to help...", [20100902] = "Do you think the kitten will come back home on its own when it gets tired?", [20100903] = "Grandma... It\'s just a kitty! It doesn\'t know the way home!", [20100904] = "Is there anything I can help with?", [20100905] = "You guys look very troubled. Please let me help you!", [20100906] = "Oh, thank you. Have you seen our kitten? Can you help us get it back?", [20100907] = "What do you mean...?", [20100908] = "Grandma! You need to explain a little bit more!", [20100911] = "Sorry, what my grandma meant to say was about our kitty.", [20100912] = "We left the door opened this morning, and it ran away. My grandma and I are trying to catch it.", [20100913] = "I actually saw a cat just now. It\'s around here.", [20100914] = "I don\'t think that\'s it. It\'s still playing in the square up ahead. I tried several times but I couldn\'t catch it. Now it runs away as soon as it sees me...", [20100915] = "Just leave it to me. The kitten shouldn\'t be so wary of me. I have confidence in my speed!", [20100916] = "Really?", [20100917] = "You must be a hero that fights villains, right? I feel bad taking time away from you...", [20100918] = "Helping others is a hero\'s job! No task is too small!", [20100919] = "Well, that and I\'m not a Pro Hero yet.", [20100920] = "You\'re really kind. I thought you would just walk away like those other people.", [20100921] = "Grandma!", [20100923] = "I brought back all the cats on the square!", [20100924] = "Let me see... huh? Did we have three cats in our house? Help me take out my reading glasses...", [20100925] = "We only have one kitten grandma!", [20100926] = "Nonsense, it\'s just because these kittens look so similar!", [20100927] = "Then brother and I look alike too? You always call us the wrong names...", [20100928] = "Anyway, let me close the door next time, in case it run away again.", [20100929] = "It\'s great to get it back, but I think it might have come here because it was lonely.", [20100930] = "Yeah! Let\'s ask mommy if we can adopt these two stray cats.", [20100931] = "By the way, you haven\'t told me your name yet. A great hero like you must be very famous!", [20100932] = "My hero name is Deku. I\'m still a student at U.A. High...", [20100933] = "Wow! U.A. High! I wanna go to that school in the future, and become someone who helps other people like you do!", [20100934] = "Thank you for your support, but you don\'t have to wait until you go to U.A. High to help others!", [20100935] = "I know! I\'ll be grandma and the kitten\'s hero for now!", [20100936] = "The signal found at the comm station just now seems to have been sent from around here...", [20100937] = "The lady and the child over there seem to be very troubled. Let\'s see if we can help them!", [20100940] = "These should be all the cats on the square. I don\'t know which one is the lost one...", [20100941] = "The lady and the kid also came to the square. Take the cats over so that they can see them!", [20100942] = "I have something for you. This is the dried fish I bought at the convenience store next door!", [20100943] = "Take the dried fish", [20100944] = "This is the kitten\'s favorite food. We only give it for special occasions.", [20100945] = "By the way, I just saw some other stray cats #cFFE750on the square#cFFFFFF. They all seemed to have been very hungry for a long time...", [20100946] = "There should be enough dried fish here, so why don\'t we feed them all!", [20100947] = "This is the square that the kid mentioned. I\'ll look for other cats nearby!", [20110101] = "I\'m Backdraft! A fire broke out in the factory\'s construction area. Heroes near the factory, please come help rescue people!", [20110102] = "Um... Who are you?", [20110103] = "This is an emergency. Whether you\'re a Pro Hero or not, we all need your help!", [20110104] = "Some Pro Heroes entered the factory earlier, but there\'s no news yet!", [20110105] = "According to the police\'s intel, an arsonist group has been active in this area.", [20110106] = "This factory case is probably related to them.", [20110107] = "According to the escaped workers, the villains have several hostages with them.", [20110108] = "The situation is very urgent then. We must act immediately!", [201101081] = "These bandits just lit the place on fire without making any demands!", [20110109] = "I also hope to catch these arsonists myself. But unfortunately, fighting villains is not what I\'m good at...", [20110110] = "I\'ll stay outside the factory to keep the fire under control.", [201101101] = "Do not confront the arsonists head-on if it\'s not necessary. Pay attention to your own safety!", [20110111] = "You... what do you want?", [201101111] = "Hey, give me all the money you have!", [20110112] = "Y-You want money? Here, take this. It\'s all I have...", [20110113] = "Are you messing with us? We know you\'re a greedy!", [20110114] = "Tell me where you hid the money! Or else you can stay here and turn to ashes along with the factory!", [20110115] = "W-Wait! I know! I know where the boss\' safe is hidden!", [20110116] = "Good, take us there now!", [20110117] = "Wait, somebody is here!", [20110118] = "Who are you? This is none of your business, get out of the way! Don\'t stop us from getting the money!", [20110119] = "Don\'t try to fight us. Even the Pro Hero just now couldn\'t stop us.", [20110120] = "Let\'s quickly get rid of him, the fire is coming!", [20110121] = "Is someone there?", [20110122] = "Here! If you can, please help me...", [20110123] = "There\'s a fire, I can\'t get out!", [20110124] = "Smoke is getting worse. Please hurry up...!", [20110125] = "Destroy the collapsed objects and rescue the trapped people.", [20110126] = "Ouch...! That was a hard hit!", [20110127] = "That guy also got out. Isn\'t it a very bad situation for us now?", [20110128] = "By the way, there\'s still a barrel of fuel left here. We can use this to trap them!", [20110129] = "Damn it...", [20110130] = "I didn\'t expect it to be a villain who uses fire...!", [20110131] = "Are you okay?", [20110132] = "I\'m fine.", [20110133] = "But there are more arsonists. Tell the police that some of them have escaped!", [20110134] = "I will. Let\'s get out of here first!", [20110208] = "Don\'t worry, I\'m a Pro Hero. Besides, fires are what I\'m best at. Just leave it to me!", [20110209] = "Operate Backdraft to carry out the quest. Use his Quirk to extinguish the burning objects in the fire.", [20110213] = "Damn! I can\'t get close to him at all!", [20110214] = "The gig\'s up, you\'ve been surrounded! Don\'t try to struggle!", [20110215] = "You losers won\'t be able to catch us!", [20110216] = "Oh no! The police has surrounded us...!", [20110217] = "We can\'t escape... Let\'s go back to the boss!", [20110218] = "Stop! I won\'t let you run away again this time!", [20110305] = "Can we get out yet? The Pro Heroes and the police will rush in when the fire goes out!", [20110306] = "I can\'t do this in such a short time. This place has been tightly blocked, I need more time...", [20110307] = "Boss, someone is here!!!", [20110308] = "That\'s impossible! That wall is too hot for anyone to go through!", [20110309] = "I\'ve been looking for you for a while. You\'re the arsonist behind the recent fire, right?", [201103091] = "The police have surrounded the place, you can\'t escape!", [201103101] = "We have blocked off the roads in this area. The arsonists won\'t be able to escape this time!", [201103102] = "Sir! The fire still shows no signs of abating!", [201103103] = "I\'ve contacted the fire brigade, but it\'ll take at least half an hour for them to arrive!", [201103104] = "Damn, we can\'t get it!", [201103105] = "They\'re still trapped in there, but if the fire goes on like this...", [201103107] = "I\'m the only one who can go in.", [201103108] = "I\'ll find a way to weaken the fire from within. You guys can choose the right time to act.", [201103109] = "Backdraft?", [20110311] = "Damn, it\'s Backdraft...! The fire won\'t hold him back at all!", [201103110] = "Wait, this is too risky! We still don\'t know enough about the villains!", [201103111] = "Also, Sansa is bringing backups. Let\'s at least wait until they arrive...", [201103112] = "We can\'t wait any longer!", [201103113] = "It\'s a residential area around here. Once the fire spreads, it\'ll cause irreversible damage!", [201103114] = "Detective Tsukauchi, please stop Backdraft!", [201103115] = "The villains inside is too dangerous for him!", [201103116] = "Don\'t worry, I\'m a Pro Hero!", [201103117] = "Besides, fires are what I\'m best at. Just leave it to me!", [201103119] = "?", [20110312] = "But he\'s weak by himself. I\'ll deal with him myself. You guys, quickly find another way out!", [201103121] = "The water gun cannot cause damage, but can repel the villains. Complete the fire fighting quest while guarding against the villains.", [20110313] = "Bring it on, hero!", [20110314] = "Never underestimate a Pro Hero!", [20110315] = "Boss, you can do it! We\'ll go find another way to escape!", [20110401] = "Don\'t think this is over!", [20110402] = "One day we\'ll...", [20110403] = "Alright shut it already. We\'ll hear all about it at the station.", [20110404] = "We need backup! We need backup! The villains will soon break through the encirclement!", [20110405] = "We\'re lacking Pro Heroes. It\'s too hard for us to catch these guys...", [20110406] = "Damn it, we can\'t let them escape again...!", [20110408] = "You got here just in time! They almost got away!", [20110409] = "It\'s all up to you now. The police will assist you. We got your back!", [20110701] = "The arsonists have been taken away by Detective Tsukauchi, but what those guys said is still making me worry...", [20110702] = "Detective Tsukauchi also asked me to convey his gratitude to you. The police wouldn\'t be able to catch these villains alone. We would\'ve struggled a lot!", [20110703] = "Oh, by the way, Backdraft seems to want to thank you too. Let me give you a ride.", [20111] = "Oh... what should I do, my kitten is gone!", [20112] = "Calm down, don\'t cry. Grandma\'s going to find your kitty!", [20113] = "But little kitty runs so fast... Grandma will never catch up...", [20210101] = "There are a lot of wooden boxes stacked by the side of the road. If they are placed in the open air and left unattended, they may cause a fire at any time!", [20210102] = "Move these wooden boxes to a cool place, and notify the recycling department so they can be disposed of.", [20210111] = "Boxes with flammable signs are randomly stacked against the wall.", [20210112] = "A rusty oil barrel. Not sure if it still has gasoline in it or not.", [20210113] = "Flammable materials piled up against a freight truck which appears to have been abandoned for a long time.", [20210114] = "A randomly placed oil barrel with warning signs on it.", [20210115] = "This is the construction site where the arsonists took hostages before. A lot of materials are still piled up inside.", [20210116] = "Let\'s check if there are any hidden dangers that can cause a fire here.", [20210401] = "Fire! There are tons of flames in the grass and bushes nearby!", [20210402] = "Extinguish them now while the fire is still relatively weak!", [20210501] = "Where are those fire extinguishers when you need them...!", [20210502] = "Huh? The fires already gone?", [20210503] = "Thank you so much! I thought something really bad would happen...", [20210504] = "H-He didn\'t do it on purpose!", [20210505] = "He accidentally lit up the surrounding bushes when he tried to light the candles on my birthday cake!", [20210506] = "Yeah... I\'m really sorry. I can normally only make small sparks with my fingers...", [20210507] = "But when I tried it just now the spark kind of got out of control, and the bushes were ignited...", [20210513] = "I\'ll contact the police after this and apologize to everyone in the area. Thank you so much!", [202301011] = "Upgraded the #cff6b11Shinkoku District#c000000 Comm Station. You can receive more commissions in the Shinkoku District now!", [203301011] = "Upgraded the #cff6b11Shinkoku District#c000000 Comm Station. You can receive more commissions in the Shinkoku District now!", [287] = "Welcome to Honei City! You must be that new agent who just opened a Hero Agency?", [288] = "I am Death Arms, the Pro Hero operating in this area. We\'re going to be working together a lot in the near future, nice to meet you!", [289] = "Let\'s cut to the chase. I have someone I want you to meet.", [290] = "Now, he\'s just a provisional hero, but he\'s got great potential! Even he was a first year at U.A. High at the time, he played a huge part in the USJ incident!", [292] = "Right on time. There he is!", [295] = "Hello! I\'m Izuku Midoriya, student in Class 1-A at U.A. High! Pleased to meet you!", [296] = "I may not be that strong yet, but I\'m lucky enough to have a lot of people helping me! I got into my dream school U.A. High, and even got the chance to participate in the Provisional Hero License Exam! ", [297] = "I won\'t let down the people who have helped me. I will become a Pro Hero!", [298] = "Oh, sorry! Looks like I was rambling again... This is my Trainee Application. Please sign it and let me study under you!", [299] = "Thank you! I will do my best!", [300] = "Looks like your agency\'s all ready to go. You should get some capable people to work with you next.", [30000101] = "Another big fat F... Mom is going to be so mad...", [30000102] = "Me too... But my family never wanted me to enroll in Department of Heroes anyway... #rMaybe it\'s for my own good...", [30000103] = "But you\'ve always wanted to become a hero!", [30000104] = "Just getting reality check here, we\'re just normal people.", [30000105] = "...Yeah you\'re right, I guess it\'s time to think about my future...", [30000201] = "Meow...", [30000202] = "A kitten is staring at you, looking hungry.", [30000203] = "Meow...", [30000204] = "Feed the kitten", [30000205] = "Meow! Prrrr~", [30000206] = "The kitten feeds on the cat food with joy!", [30000207] = "Do nothing", [30000401] = "Ms. Sakaguchi, a little bird told me your kid scored 1st in class on the assessment test earlier?", [30000402] = "Yes, but he lost 3 points in his math test. Should\'ve been perfect.", [30000403] = "I think my grandkid said little Sakaguchi hit 50cm at long jump, and lil Jiro failed 4 of his tests.", [30000404] = "..................#rOh my, time flies. I better go back and prepare dinner. ", [30000405] = "Oh me too, time for grocery shopping. That meat won\'t get any fresher.", [30000406] = "He must be popular with the principle and teachers, right?#rWhat\'s your parenting secret?", [30000407] = "That wasn\'t it? #rI had better memory when I was younger...", [30000408] = "So Jiro won 7 gold medals in total! He might grow up to be a great hero like All Might!", [30000501] = "Sorry to bother, but have you seen a stray cat on your way here?", [30000502] = "I think that poor thing is starving... I have a can of cat food, can you feed it for me? #rI am allergic so I can\'t get too close...", [30000503] = "Sure thing!", [30000504] = "Awesome, thank you very much!", [30000505] = "Sorry, I\'m a bit busy...", [30000506] = "Oh, okay... I will look for someone else then.", [30000507] = "Can you feed the stray cat with this can of cat food?", [30000601] = "..................", [30000602] = "Evening already? I must have drifted off again...#rAlright, where should I head for a drink tonight...", [30000701] = "Are you interested in this song?", [30000702] = "As you can tell, I have an abrasive voice, most people see that as a fit for metallic music. ", [30000703] = "However my heart goes to soothing, melodic tunes, and I\'m working hard toward that kind of music.", [30000704] = "I won a contest with this song. Amazing right? #rWhat I\'m trying to say is, don\'t give up your dreams easily!", [30000801] = "Hey there, I\'m on patrol around here. If you need any assistance please let me know.", [30000802] = "Can I help you?", [30001301] = "Even though I didnΓÇÖt have a Quirk, I couldnΓÇÖt just give up on my goal.", [30001302] = "There must be a way...#rI want to be just like the most amazing hero in the world...", [30001303] = "All Might, always saving people with a smile on his face. #rMan I wish I can meet him in person...", [30001304] = "It\'s getting late, I should head home.", [30001401] = "This isn\'t the way home.", [30001501] = ".........#rNothing happened.", [30001502] = "Everybody, back to the entrance. And take Aizawa with you. ", [30002001] = "I can\'t just aim for a pass, I am going to become the mightiest hero like All Might!", [30002002] = "Alright, let\'s begin!#rI need extra training apart from All Might\'s guidance!", [30002003] = "I need  to push myself to the limit!", [30002004] = "Young Midoriya, try load this small piece of trash to the truck today!", [30002101] = "I can\'t... I can\'t stop here!", [30002201] = "This is the last piece.", [3000301] = "Crap, crap, crap. IΓÇÖm still at zero points!", [3000302] = "I need to find some faux villain, fast!", [3000303] = "The girl...", [3000304] = "What should I do...!", [3000305] = "Still at zero points...#rCome on!", [30004001] = "Huh? Our physical attacks didnΓÇÖt hurt that guy. CΓÇÖmon. DonΓÇÖt be an idiot, man. ", [30004002] = "Shut up! IΓÇÖm gonna take him down because heΓÇÖs their way in and out. ", [30004003] = "If I cut off their escape route, theyΓÇÖll be stuck here and have to pay for what theyΓÇÖve done.", [30004004] = "Anyway. If all these villains are small fries like these guys were, then our classmates can handle ΓÇÿem.", [30004005] = "I think what youΓÇÖre really saying is that you believe in our classmates.", [30004006] = "And thatΓÇÖs thinkinΓÇ\153 like a man, Bakugo.", [3000401] = "It pains me to be aligned with criminal behavior, even though it\'s training.#rSo this is the weapon we must protect?", [3000402] = "Hey.#Do you think Deku has a Quirk?", [3000403] = "You saw how he threw that ball.#rThough I think his power hurts his body.", [3000404] = "YouΓÇÖve been hiding your true power for years?!", [3000405] = "You damn nerd!", [30040601] = "Repeatedly tap the #cff0000Dash Button#c000000 to speed up, be careful and #cff0000Dodge#c000000 the obstacles.", [30100101] = "Hey! Can you hear me?", [30100102] = "Have you said hi to Officer Tsukauchi?", [30100103] = "Alright, I\'ve handled those faux villains.", [30100104] = "You should help me calibrate them!", [30100105] = "He hung up...", [30100106] = "I\'m not done yet!", [30100107] = "Okay, I\'ve fiddled with your phone a bit.", [30100108] = "Anyways, I wanted to you to help me calibrate the faux villains...", [30100109] = "You won\'t be able to hang up your phone anymore!", [30100501] = "Where are you right now?", [30100502] = "There are villains at the show venue!", [30100503] = "Thankfully the people thought it was just a part of the show...", [30100504] = "Just get over here!", [30101] = "The one who could be a mouse, or a dog, or a bear, though the only important thing is, IΓÇÖm the principal!", [30102] = "I\'ve heard all about what you\'ve been up to lately. You truly are a rising star!", [30103] = "We want to give you all the support we can, so here\'s a small welcoming gift for you!", [30104] = "We\'ve prepared an all-new Faux Villain Training Center!", [30105] = "In the new Training Center, your combat data will be recorded, and we\'ll provide a very accurate rating of your battle abilities!", [30106] = "This ought to be a good chance for you to accumulate some experience. Go give it a shot!", [30107] = "There will be a student from the Department of Support there to record your combat data. Get in contact with her once you arrive.", [30110101] = "Sir, could you describe what happened again?", [30110102] = "The restaurant closed at ten o\'clock last night and I was the last one to leave. But when I came this morning, I found...", [30110103] = "How many times do I need to say it? There must be a thief who entered the store to steal stuff last night when no one was here!", [30110104] = "If you don\'t go after the thief now, will the thief automatically show up here?", [30110105] = "But we haven\'t found any clues related to the suspect, and even the cameras in the store just happened to be broken...", [30110106] = "Welcome. Please wait a moment if you want to order something. We\'re cooperating with the police to investigate a robbery that happened here last night.", [30110107] = "You\'re here to help solve the case? Thank you very much!", [30110108] = "In fact, what we lost was a treasured recipe. My father gave it to me along with this restaurant...", [30110109] = "This recipe was originally kept in my home. Recently, a clerk in our shop said that she wanted to learn the recipe, so I brought it to the shop. I didn\'t expect this would happen...", [30110110] = "That recipe was locked in one the counter drawers. You can start investigating from there.", [30110201] = "This is the counter where the recipe was stored. Look for clues that may have been missed.", [30110202] = "There are signs of the drawer being pried open. This must be the drawer where the recipe was stored.", [301102021] = "Observe the drawer\'s position", [301102022] = "Observe the signs of the drawer being pried open", [30110203] = "The weird thing is, only this drawer shows signs of being pried open, as if the thief knew the target was here from the beginning.", [30110204] = "There are a lot of scratches. There\'s no need for such damage to pry open a lock. This seems to be deliberately emphasizing that the cabinet was pried open.", [30110205] = "There are some traces of liquid being spilled on the floor. Although they\'ve been wiped away, some inconspicuous marks are still on the clean floor.", [301102051] = "Research the composition of the marks", [301102052] = "Research how long the marks have been here", [30110206] = "Even though the liquid was wiped away, there\'s still a faint smell of wine on the floor.", [30110207] = "There\'s a row of wine racks just here. Perhaps a bottle of red wine was smashed and left these marks on the floor.", [30110208] = "I can see some small flying insects attracted by the smell on the floor.", [30110209] = "The owner is a very hygienic person. Obviously the liquid was spilled not long ago, otherwise he would have noticed it already.", [30110210] = "The clerk who works here is wearing perfume that smells really strong, which is quite rare for a person in the catering industry.", [301102101] = "Ask them their whereabouts last night", [30110211] = "I went home after getting off work yesterday! What are you trying to say? Do you suspect it was me?", [30110212] = "I have the key to the cabinet. I can read the recipe whenever I want to. There\'s no reason for me to steal it!", [30110213] = "If you have the time to throw around wild accusations here, then why can\'t you go patrol the streets to catch the thief instead? The recipe was obviously stolen by an outsider!", [30110401] = "Miss, after investigation, we are putting you as the prime suspect of the theft.", [30110402] = "What?! You can\'t be serious!", [30110403] = "Sir, if you suspect her, please at least give me a reason why!", [30110404] = "This is all just speculations! You don\'t have any real evidence at all!", [30110405] = "......", [301104051] = "Speaking of which, why aren\'t you in your uniform today...?", [301104052] = "If it wasn\'t you, take out that uniform and show it to the officer...", [30110406] = "......", [30110407] = "I knew it, unlucky people will always be unlucky...", [30110408] = "Yes, I stole the recipe. If you want to take me back to the police station, do whatever you want.", [301104081] = "Why?! Are you dissatisfied with me or the restaurant? Why did you do this?", [301104082] = "I\'m different from the owner who was born into a family of chefs. I\'d never be able to achieve anything in cooking without help.", [301104083] = "After reading the recipe, I was even more sure about this. All my previous efforts are not worth mentioning! To become a famous chef like Lunch Rush, I had to...", [30110409] = "Don\'t make excuses for your gluttony.", [30110410] = "The reason why the owner\'s cooking is so outstanding is not just the recipe.", [30110411] = "Uwabami...", [30110412] = "I\'m a regular at this restaurant, so I know very well that even if you follow the same recipe, the dishes made by you and the owner taste completely different.", [30110413] = "How is that possible? Why is it like this?", [30110414] = "It\'s difficult to answer this question. All I know is that to make delicious food, you have to put in a lot of effort.", [30110415] = "......", [30110416] = "Let\'s go. You can think about all your questions when you arrive at the police station.", [30200509] = "It\'s just that some of the perpetrators escaped from the scene.", [30200601] = "Who knew that there\'d be this many villains...", [30200602] = "I would like you to take down all of them, but just do what you can!", [30200603] = "There are too many people...", [302301011] = "Upgraded the #cff6b11Cuisine Square#c000000 Comm Station. You can receive more commissions for Cuisine Square now!", [30301] = "Damn! I\'ve been played...", [30302] = "Let us take care of the remaining villains here. Hurry and stop their plans!", [303301011] = "Upgraded the #cff6b11Cuisine Square#c000000 Comm Station. You can receive more commissions for Cuisine Square now!", [30401] = "Just in time! The police have discovered where the villains with the blueprints are.", [30402] = "Well, since you\'re here, you can take this quest! I believe in you!", [30403] = "Let\'s finish this now!", [30404] = "Don\'t worry, I believe in you! Just do it!", [30501] = "Let me tell you something, I\'m sure you\'ll be surprised!", [30502] = "U.A. High has set up an educational mock battle.", [30503] = "The students would like you to demonstrate your abilities. You wouldn\'t refuse them, right?", [30504] = "Everyone looks up to U.A. High, you have to give it your best!", [30601] = "How was the rest? Looks like you\'re ready, I can feel your spirit!", [30602] = "Alright! Let\'s take advantage of the situation and show them your might!", [309] = "We\'ve almost got this cracked!", [31001] = "Heroes? Damn! I\'m exposed!", [31002] = "Damn! Why now?!", [31003] = "Just when I was going to get away with it!", [31004] = "H-hey! C\'mon man! I don\'t want to be arrested!", [315] = "Here\'s some good news, we found the runaway villain!", [316] = "The police have tracked him down, I\'m sending you the information.", [317] = "He hasn\'t gotten far yet! Quick! Don\'t let him get away!", [319] = "You again? Dammit...!", [320] = "Well, even so, I\'ll destroy you! Destroy! Destroy!!!", [325] = "Hi! I\'m Mei Hatsume. I brought a special baby for this operation!", [326] = "τ£ïΦºüΦ┐ÖσÅ░σÅ»τê▒τÜäµùáΣ║║µ£║BabyΣ║åσÉù∩╝ƒσ«âτÜäΦ«╛Φ«íσÄƒτÉåµÿ»ΓÇªΓ\128\166", [327] = "σôª~ΘéúΣ╕¬σ╣▓µë░Φúàτ╜«σÉ¼Φ╡╖µ¥Ñσ╛êµ£ëΦ╢ú∩╝îτ£ƒµâ│µïåσ╝\128τ£ïτ£ï∩╝\129", [32701] = "Φ»¥Φ»┤σ¢₧µ¥ÑµêæτÜäBabyσ╖▓τ╗Åσ░åσ╜òΘƒ│µêÉσèƒΣ╕èΣ╝áΣ║å∩╝îΣ╜áσ┐½σ¢₧σÄ╗µèÑσæèσÉº∩╝\129", [332] = "Our drones have detected a suspect in the city, he\'s currently contacting our wanted target.", [333] = "We just intercepted an important message. Some villains are planning to transfer drones to a temporary hiding spot.", [334] = "I\'ve got the coordinates and I\'ll send them right now.", [335] = "We have to stop their plans and catch them!", [345] = "Stop! You\'re not getting away this time!", [3500115] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500116] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500117] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500118] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500119] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500120] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500121] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500122] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500123] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500124] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500125] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500126] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500127] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500128] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500129] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500130] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500131] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500132] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500133] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500134] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500135] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500136] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500137] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500138] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500139] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500140] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500141] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500142] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500143] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500144] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500145] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500146] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500147] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500148] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500149] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [3500150] = "µ╡╖µ╗¿σà¼σ¢¡σ»╣Φ»¥σìáΣ╜ì", [36040101] = "Catching me won\'t be easy.", [36040102] = "Why don\'t we play a guessing game?", [36040103] = "I\'ll give you a chance to get me if you can answer three questions.", [36040104] = "The correct answer was to use your skill to defeat the strawman saying the correct answer!", [36050101] = "According to the police, this factory has been occupied by villains.", [36050102] = "Some are guarding the entrance, but their boss had already got in.", [36050103] = "The factory is stocked with various resources, if you managed to collect enough we might make them useful to your mission!", [36050104] = "We are counting on you. Police will be working with other Pro Heroes close by.", [36050105] = "Let\'s meet inside later on. Stay vigilant!", [36050106] = "∩╝êΘóäτòÖ∩╝ë", [36050107] = "∩╝êΘóäτòÖ∩╝ë", [36050108] = "∩╝êΘóäτòÖ∩╝ë", [36050109] = "∩╝êΘóäτòÖ∩╝ë", [36050110] = "Hello? Can you hear me? ", [36050111] = "We have reached the second floor and spotted quite a number of villains.", [36050112] = "There\'s one holding a giant hammer by the elevator.", [36050113] = "The safest approach is to take them out one by one.", [36050114] = "That\'s just my two cents, stay vigilant!", [36050115] = "∩╝êΘóäτòÖ∩╝ë", [36050116] = "∩╝êΘóäτòÖ∩╝ë", [36050120] = "Good to see you without a scratch!", [36050121] = "We have taken care of our part, so I\'m here for support.", [36050122] = "This is the logistic and storage area, it\'s practically a maze. Watch your back, they could ambush us anytime.", [36050123] = "Let me know what I can to help.", [36050124] = "Here are some supplies I gathered along the way, I hope they\'ll be useful!", [36050125] = "∩╝êΘóäτòÖ∩╝ë", [36050126] = "∩╝êΘóäτòÖ∩╝ë", [36050130] = "There\'s the boss!", [36050131] = "It looks like he can control electricity. That\'s not good...", [36050132] = "This factory is full of vulnerable electrical equipments.", [36050133] = "It\'s extremely dangerous to fight him around there.", [36050134] = "I recommend taking care of those facilities before going head-on with the boss.", [36050135] = "You can do this!", [36050136] = "∩╝êΘóäτòÖ∩╝ë", [36050137] = "∩╝êΘóäτòÖ∩╝ë", [36050138] = "∩╝êΘóäτòÖ∩╝ë", [36050140] = "Damn you pesky heroes and police...!", [36050141] = "Do you really think you can defeat me?", [36050142] = "This won\'t be a fight... I\'ll be hunting you down!", [36050143] = "∩╝êΘóäτòÖ∩╝ë", [36050144] = "∩╝êΘóäτòÖ∩╝ë", [36050145] = "∩╝êΘóäτòÖ∩╝ë", [36070101] = "Strange, I just saw some tourists that were soaking wet.", [36070102] = "It\'s a sunny day out, there are clouds in the distance.", [36070103] = "Wait, I feel something\'s off. Can you go investigate over there?", [36070104] = "If we don\'t do anything, there won\'t be any beaches to enjoy anymore!", [36070105] = "∩╝êΘóäτòÖ∩╝ë", [36070106] = "∩╝êΘóäτòÖ∩╝ë", [36070107] = "∩╝êΘóäτòÖ∩╝ë", [36070108] = "∩╝êΘóäτòÖ∩╝ë", [36070109] = "∩╝êΘóäτòÖ∩╝ë", [36070201] = "Hey! You\'re just in time!", [36070202] = "We went to where it was raining at the beach, but discovered it was taken over by villains!", [36070203] = "These villains have powerful Quirk, we can\'t do much on our own.", [36070204] = "It\'s up to you! Please be careful!", [36070205] = "∩╝êΘóäτòÖ∩╝ë", [36070206] = "∩╝êΘóäτòÖ∩╝ë", [36080101] = "Damn! We didn\'t detect the infiltration at all!", [36080102] = "It\'s like that villain appeared out of nowhere!", [36080103] = "The plant is secured, but there are a lot of villains surrounding us.", [36080104] = "We suspect the origin of the problem is at the chemical plant.", [36080105] = "Help us get to the chemical plant!", [36080106] = "∩╝êΘóäτòÖ∩╝ë", [36080107] = "∩╝êΘóäτòÖ∩╝ë", [36080108] = "∩╝êΘóäτòÖ∩╝ë", [36080109] = "∩╝êΘóäτòÖ∩╝ë", [36080201] = "Thanks for leading us here and defeating them.", [36080202] = "Our investigations showed that the villains are getting stronger.", [36080203] = "They must have infiltrated the chemical plant somehow...", [36080204] = "We can\'t start the investigation if the villains aren\'t defeated.", [36080205] = "Come on, hero, and help us clean out the chemical plant!", [36080206] = "∩╝êΘóäτòÖ∩╝ë", [40100102] = "Misaki, Sota, and the teacher all came to see me training. I\'m so happy! Well, I\'m so popular that everyone knows me!", [40100103] = "I took the initiative to talk to a guy I\'ve never seen before earlier, but he refused to say what his Quirk was. What a nerd, right?", [40100104] = "I\'m even stronger now. I must break my training record from last year to prove myself!", [40100105] = "I want everyone to know that although my Quirk is just greater strength, I\'ll never lose to anyone in combat!", [40100106] = "Don\'t be nervous... I have to be calm and keep reminding myself that I\'m the same as everyone else. There won\'t be a problem!", [40100107] = "This school uniform is so tight... I can\'t train properly anymore. I\'ve told them to get me something that\'d fit me...", [40100108] = "Why do I feel like someone is staring at me...? I should leave before my cover is blown. I\'ll be back tomorrow...", [40100301] = "What\'s wrong? Won\'t you be exposed if you run around in a panic?", [40100302] = "I don\'t know. Someone has definitely been following me... But that faux villain has been trapped, so it should be fine.", [40100303] = "Not bad, huh? Smarter than we thought! If that\'s the case, then the defensive network of that hero training area can\'t be invincible!", [40100304] = "Kid, we\'ve come up with such a good idea for you. It\'s time for you to do something for us... Destroy the training area\'s security system from the inside...", [40100305] = "What! You must be kidding me! Destroy the security system?! I\'m not doing that!", [40100306] = "Oh yes you are. Don\'t forget that we stole this school uniform for you.", [40100307] = "Shut up! From the very beginning, my goal was to train with heroes! Despite these sneaky tricks... what I truly longed for was to be a hero, not a villain!", [40100308] = "You? Want to be a hero? Quit dreaming! If you don\'t do what we say, then don\'t think about leaving here alive!", [401101] = "Time to stop these villains!", [40110101] = "That was the last of the hostages, boss!", [40110102] = "Well done! Keep an eye on them. We\'ll be filthy rich once we get the ransom! Hahaha! This is too easy!", [40110103] = "Wait, I hear something!", [40110104] = "What? Heroes! They\'re here already?!", [40110105] = "Take them down!", [40110106] = "Just as I thought! A group of villains!", [40110107] = "They must be somewhere close in the city...", [40110108] = "We have to get there quick! You head back first and run through the intel again!", [40110112] = "It\'s impressive that you managed to find this place. But you think you\'ve won? Fools!", [40110113] = "You\'ve ruined everything! I\'m going to make you pay for this! I\'m going to show you the true meaning of despair!", [40110121] = "We finally captured the boss. This case is officially closed!", [40110122] = "LetΓÇÖs hand him over to the police.", [401102] = "Don\'t worry about me, get to the hostages first!", [40110601] = "I\'ll make you regret coming here!", [40110602] = "If you want to save them, you\'ll have to get through me first!", [40110603] = "You\'re not getting past me!", [40110604] = "Daddy, where are you? I\'m scared...", [40110605] = "You\'d better get back. Your father\'s really worried.", [40110606] = "Okay. Thank you so much!", [401201] = "Alright, the villains haven\'t noticed us yet.", [401202] = "We\'ll flank them from both sides and save the hostages!", [401203] = "Let\'s move!", [40120601] = "Dammit! I worked so hard to put this plan together, and this is how it falls apart? I can\'t believe it!", [40120602] = "But you\'re not catching me! I\'ll be back, mark my words!", [401301] = "They\'re not getting away this time!", [401302] = "I\'ll block the exit! They\'re toast!", [401303] = "Go finish them off!", [402] = "There he is! You need to stop him before he destroys the comm station!", [40200901] = "Find all the acid stains on the surface of the building!", [40200902] = "On the right corner of the wall? Okay, I got it!", [40200903] = "On the front wall? Let me see...", [40200904] = "Wow, in such a conspicuous place! If Mr. Aizawa sees this...", [40200905] = "On the wall of the stairwell on the right? I can\'t see it from here...", [40200906] = "Ochaco! Let me down first, let\'s check the other side!", [40200907] = "Next to the sign? Okay...", [40200908] = "Wow! How did I manage to leave a stain at such a high place!", [40201] = "Hey, look who it is! Isn\'t this that little coward with the big mouth?", [40201001] = "Okay! It looks like it\'s all cleaned up, thank you!", [40201002] = "That\'s great, Mina... urgh!", [402010021] = "Wait...", [402010022] = "Man... I\'m a bit... I need to go to the bathroom!!!", [40201003] = "Oh god...", [40201004] = "O-Ochaco?", [40201005] = "I\'m gonna go check on her. I\'ll go apologize to the building\'s manager. Thank you for your help today!", [40202] = "Didn\'t he said he was going to mess with the communications at the police station?", [40203] = "Why are you still here, then? Waiting for the police to come get you?", [40204] = "Do you even need to ask? It\'s because this coward won\'t even dare to get close to the police station!", [40205] = "Ahhaahaha!", [40206] = "Don\'t underestimate me! If it weren\'t for that guy, I would\'ve done it already!", [40207] = "Destroy! I\'ll destroy this whole city! This annoying station! Everything!", [40208] = "Found him!", [402103] = "Some villains appeared at this station.", [40210301] = "I saw it all! Yeah, this is a good opportunity to catch them all!", [40210302] = "Although the communications have been cut off, they should soon work out that someone has broken into their hideout.", [40210303] = "We have to act now to stop them before they move to another location.", [40210304] = "The police are on their way. I\'ll assist you from a distance. Let\'s hold them down.", [402104] = "They took some passengers hostages and is taking control of the tracks.", [402105] = "One of the hostage manage to pass on the situation to us. ", [402106] = "Time to punish the incarnation of evil... Let\'s get to work.", [40210601] = "I\'ll stop the train from getting away, you go secure the hostages!", [402107] = "The villains were trying to transport kind of cargo.", [402108] = "But we\'ve successfully stopped them.", [402109] = "Fortunately no one was harmed today.", [402110] = "Thanks for your help. The police will handle it from here.", [40216101] = "T-These are too heavy for me...", [40216102] = "There\'s more of that--", [40216103] = "Quit moping around! Get the stuff onto the train!", [40216104] = "Damn! We\'ve been made!", [40216105] = "Keep moving the goods! I\'ll deal with this guy!", [40216106] = "We were just responsible for getting the goods to the chemical plant. We have no idea what\'s in there...", [402201] = "The first priority is the hostages!", [402202] = "Let\'s split up, you take care of that area!", [40226101] = "He dodged it! Nice one!", [40226102] = "But what about the next one? Bring it on!", [40226103] = "It\'s over. I\'ve cleaned up this area too, everyone is safe.", [40226104] = "The police will take over now, let\'s go.", [402301] = "This is the base that the secret passageway led to. The objective this time is to capture the leader.", [40230101] = "You\'re finally here. Watch me destroy you with this hammer!", [402301011] = "Upgraded the #cff6b11South Training Area#c000000 Comm Station. You can receive more commissions in the South Training Area now!", [402302] = "Let\'s split up. I\'ll leave this side to you. ", [40236101] = "You\'ve got some guts to come here by yourself!", [40236102] = "Come at me!", [40236105] = "Well done, all villains have been detained.", [40236106] = "That\'s all the heroic work for now, let\'s head back.", [403101] = "Let\'s dive right into the tutorial course!", [40310101] = "First up is Faux Villain ╬▒. It can launch attacks from its arms and, of course, from the machine guns!", [40310102] = "Are you ready? Start!", [40310103] = "The next model is Faux Villain ╬▓. Its tail can shoot lasers!", [40310104] = "It can also hide underground and launch surprise attacks!", [40310105] = "Aren\'t they exquisite? Now, let\'s see how well you do. Start!", [403102] = "Let\'s see how you fare against my babies in battle!", [40310204] = "Next up is the heavy-model Faux Villain ╬│!", [40310205] = "It possesses strong firepower capabilities and a sturdy armor. The cannons are really good at suppressing the enemies!", [40310206] = "This is one of the hardest models to deal with, so be careful!", [40310305] = "Now I\'d like to introduce a special version of the Faux Villain ╬│!", [40310306] = "Although it can\'t move, its amor is almost impenetrable and its attacks are strengthened!", [40310307] = "You won\'t be able to cut through its armor. Hold out for a little while until support arrives!", [40310401] = "You\'re going up against two highly-intelligent faux villains we use for real combat!", [40310402] = "They are super hard to take down, and their firepower is significantly improved.", [40310403] = "They\'re totally different from the faux villains you fought in the tutorial. Don\'t underestimate them!", [40310404] = "Well done! That concludes the first stage of the faux villain tutorial course!", [40310405] = "It\'s going to take some time before we can get the results.", [40310406] = "Come back and find me later if you want to know how well you did!", [403201] = "The faux villain in this stage will simulate real combat situations and deploy its own tactics.", [40320101] = "Oh...? Shooting lasers at the cars to ignite them so they explode?", [40320102] = "You\'ve done it in training before! Time to speed up!", [403202] = "Use the information you learned in the tutorial to defeat them!", [40320201] = "The armored faux villain has entered the battle!", [40320202] = "Try out this shock disruptor! This high-tech baby can weaken the armor of the faux villain!", [40320203] = "As long as they\'re close to the disruptor, its armor will be weakened!", [40320204] = "And then you can unleash any attack you want!", [40320205] = "I\'ll leave this super cute disruptor to you. Use it well!", [40320206] = "You cannot use auto combat in this stage.#rPlease complete this stage on your own!", [40320207] = "Its armor is too thick - normal attacks don\'t do a thing!", [403203] = "By the way, we\'ve arranged a final test for you at the end of the training!", [40320301] = "Huh? There are some signals coming from underground?", [40320302] = "Watch it!", [40320303] = "Looks like they were hiding underground so they could sneak up behind you! You\'re getting attacked from all sides!", [40320304] = "Look at how close they\'re working together! Incredible!", [40320305] = "I want to install this AI system on all my babies!", [403204] = "You\'ll need to face off against one of the students in the Department of Heroes. It\'s... um...", [40320401] = "Why took you so long?! I\'ve been waiting here forever!", [40320402] = "I guess we\'re fighting, and I\'m gonna win for sure! Get ready to get blown away!", [40320403] = "Oh... I\'m sorry, I was so focused on recording the data that I completely forgot about you!", [40320404] = "Data collection is complete. The training is over! Good job!", [40320405] = "What a strange request. Anyway, not important. I get to collect more data!", [40320406] = "The trainings are over. We\'ll chat when you get back!", [403205] = "I forgot their names! But they explode just as easily as my babies!", [403206] = "Anyway! Give it all you\'ve got! Training start!", [403301] = "Thank you for joining this operation.", [40330101] = "This is an urgent broadcast. I repeat, this is an urgent broadcast. Please respond.", [403301011] = "Upgraded the #cff6b11South Training Area#c000000 Comm Station. You can receive more commissions in the South Training Area now!", [40330102] = "This is Detective Tsukauchi. This is a regional emergency broadcast.", [40330103] = "There is a villain in the current region whom just escaped police custody.", [40330104] = "Agents and heroes in the region should stay alert and help the police intercept and capture the fugitive.", [40330105] = "Please note that the fugitive had help with his escape, so look out for a villain group.", [40330106] = "Your top priority is guaranteeing the safety of civilians in danger. Thank you for your cooperation.", [403302] = "As I mentioned over the broadcast, the villain has enlisted the help of their companions to run interference.", [403303] = "Some civilians have gotten caught up in the chaos. Please prioritize saving them.", [40330401] = "Dammit! The caps dispatched so many people! How much harder can this get?", [40330402] = "We won\'t let you catch our boss. You\'ll all die here!", [40330403] = "We may not have found the fugitive yet, but the fact that his companions are here shows that we\'re headed in the right direction.", [40330404] = "We will continue our pursuit in this direction. Thank you for your cooperation.", [403401] = "We\'re not sure which way the Pro Hero went.", [40340101] = "That foolish Pro Hero doesn\'t realize he\'s headed in the opposite direction!", [40340102] = "Look all you want, you\'ll never find my boss! Hahaha!", [40340103] = "Huh?! How did you find this place?!", [40340104] = "Dammit! We can\'t let this guy go, let\'s get him!", [403402] = "Please help the police get a clearer picture of the situation inside, so the situation doesn\'t get worse than it already is.", [403403] = "If you encounter a situation you can\'t handle, just get out of there. Don\'t take unnecessary conflicts.", [40340401] = "You\'re surrounded! Surrender now!", [40340402] = "Surrender? Why would I? You dumb cops!", [40340403] = "Nobody can stop me! Feel the terror of my tentacles!", [40340404] = "We finally caught the fugitive. We\'ve got him under heavy escort, he won\'t be escaping again.", [40340405] = "The Pro Hero we sent in to infiltrate has finally contacted us. Seems like he wasn\'t hurt.", [40340406] = "We\'ll talk about what\'s next when you come back. Good work!", [404101] = "Some strategic resources have been placed in the city. That is tonight\'s objective!", [404102] = "You need to protect these resources and defeat all the villains that show up!", [404103] = "Since it is technically a training, we\'ve arranged some of our strongest Pro Hero instructors to be on standby.", [40410303] = "Note: Once you get within the range of the resources, villains will start attacking.", [404104] = "If the situation gets too dangerous, they\'ll step in right away. You are very safe! Worry not!", [404105] = "With that in mind, please use all of your power. Prove to me you can be heroes!", [404151] = "That was outstanding! The strategic resources are in perfect shape, and you didn\'t even need the help of any instructors, just outstanding! ", [404152] = "Good work. You should go get some rest! We\'ll chat again later!", [404201] = "It sounds all big and mighty, but it\'s actually just cleaning up trash.", [404202] = "But don\'t think such a task is beneath you. Not only will it improve the city\'s environment, but it will also raise your stamina!", [404203] = "This is All Might\'s gold medal training plan!", [404251] = "The trash is all cleaned up. Good work!", [404252] = "You also defeated the villains operating nearby. Well done!", [404253] = "But as you experienced, evil can be everywhere.", [404254] = "A hero cannot let their guard down. Danger can appear at any moment!", [404255] = "You must be tired from all that work. Come back and rest!", [404301] = "τö╡Φºåµ£║Θ¥óσëìτÜäΦºéΣ╝ùσÑ╜∩╝üµêæµÿ»Φ┤ƒΦ┤úµèÑΘüôΦ┐Öµ¼íµû░Θù╗τÜäΦ«░ΦÇà∩╝ü", [404302] = "µÄÑΣ╕ïµ¥Ñσ░åΣ╕║Σ╜áτÄ░σ£║τ¢┤µÆ¡σçáΣ╜ìΦï▒Θ¢äτÜäµ┤╗σè¿Φ┐çτ¿ï∩╝ü", [404303] = "Φ«⌐µêæΣ╗¼µ╖▒σàÑσÄ╗Σ║åΦºúΦï▒Θ¢äσ╣│µù╢σê░σ║òµÿ»µ\128ÄΣ╣êσç╗Φ┤ÑµòîΣ║║τÜäσÉº∩╝\129", [404304] = "ΘéúΣ╣êΦ»╖µôªΣ║«τ£╝τ¥¢∩╝îΦï▒Θ¢äτ¢┤µÆ¡µ¡úσ╝Åσ╝\128σºï∩╝ü", [404351] = "What a great fight!", [404352] = "You did great, go rest now!", [404401] = "This is how this training works; the defender will be the villain who will hold fake hostages.", [404402] = "And the attacker will be the hero who will come save the day! ", [404403] = "The training will consist of two rounds so you can play on both sides.", [404404] = "In the first round, you will play the role of defender, and a student from the Department of Heroes will play the role of the attacker.", [40440401] = "You got lucky last time...  I won\'t hold anything back this time around!", [40440402] = "You\'ll never beat me again!", [404405] = "This student is pretty strong. You\'ll need to be careful!", [404451] = "Ugh, just as I expected... As you can see, Bakugo was less interested in saving the hostages due to his tempermant.", [404452] = "He really just wants to have a re-match with you. But I\'m sure you\'ll do fine against him!", [404453] = "Amazing! You managed to fend off the attacks! Then the winner is--", [404454] = "Come back here! I\'m not done with--", [404455] = "Ahem! Sorry about that. ", [404456] = "You are the  winner of first round! Great job! Talk to you soon! Ta-ta!", [404501] = "Let\'s get started with the second round of the combat training!", [404502] = "The attacker and the defender are going to switch sides this time. You\'ll be playing the attacker.", [404503] = "This time another student of mine will be the defender.", [404504] = "He\'s much \"cooler\" then Bakugo, so it\'s going to be quite a challenge to defeat him and save the hostages!", [40450401] = "I will give it my all.", [40450402] = "You can try, but you\'re not getting through me that easily.", [404551] = "What an incredible showdown! The best way to break through a defensive line is to break through your opponent!", [404552] = "Todoroki\'s performance was cool and calculated. All three of you all deserve praise!", [404553] = "Congratulations again on your victory. This concludes the combat training!", [405201] = "Villains often ambush heroes. That\'s the most logical moves when fighting someone stronger than you.", [405202] = "It\'s a hero\'s job to be prepare for these type of attacks.", [405203] = "Therefore, I don\'t simply expect you to \"complete the objective,\" but to do it \"perfectly.\"", [405204] = "Start!", [405251] = "Your performance was mediocre. You were struggling the whole time.", [405252] = "At your current level you won\'t be enough to deal with more powerful villains.", [405253] = "We\'ll talk more when you get back.", [405301] = "Are you ready? It\'s almost dark out. Let\'s go.", [405302] = "The dark of night will be the villain\'s cover, so you can\'t let your guard down at night.", [405303] = "Start your patrol. I will observe close by. Don\'t let me down.", [405351] = "Overall, you completed the test without any issue.", [405352] = "However, at your current growth rate, it is far from good enough.", [405353] = "We\'ll talk more when you get back.", [405401] = "I\'ve received a request for medical treatment. Escort me to the scene.", [405402] = "You can take care of any villains we run into along the way.", [405403] = "Don\'t worry, I\'ll give you a kiss if you need one.", [405451] = "We have arrived. Now let me tend to them.", [405452] = "Mmmmwah! All right, that was the last one. They will be better soon.", [405453] = "The treatment uses up lots of the their stamina. They\'re not used to it since they don\'t really fight as much as heroes.", [405454] = "Heroes on the other hand, they are always getting injured. Even though I can heal you, you might still die from lack of stamina.", [405455] = "In a way, Aizawa is trying to protect you when he treats newbies so harshly and tells them to give up.", [405456] = "It\'s getting late. All civilians have all been treated. Let\'s head back.", [405501] = "I\'m going to observe you for the entire duel as usual.", [405502] = "But this time, someone who knows your Quirk inside and out will be your opponent.", [405503] = "You\'ll know them when you see them.", [405504] = "I\'ve prepared some faux villains so you can warm up before the duel begins.", [40550401] = "Momo Yaoyorozu of Class 1-A, the Everything Hero. IΓÇÖm Creati!", [40550402] = "I apologize in advance if I seem rude in battle! Let\'s start!", [405505] = "Show me how determined you really are.", [405551] = "Yaoyorozu\'s one of the best student in my class.", [405552] = "She a well-rounded fight who knows strategize in any situation.", [405553] = "It\'ll be hard to best her.", [405554] = "All right. We\'ll save the rest for later. Come on back.", [405601] = "The second duel. This will be the most difficult test yet to date.", [405602] = "I\'ve prepared another faux villain for you to warm up. But it\'ll be stronger this time.", [405603] = "You\'ll need to start at 100% from the start.", [405604] = "Go beyond! Plus Ultra! ", [40560401] = "Haahahaha! You didn\'t expect I would be your opponent, did you?", [40560402] = "I accepted Mr. Aizawa\'s request to be your final test. ", [40560403] = "Be ready! I am here... To fight!", [405651] = "Having you fight All Might would not have been a rational test before.", [405652] = "But given how far you have come, I think it\'s an oppurtunity.", [405653] = "I\'m afraid this battle was too much for you. Go pay the school nurse a visit.", [405654] = "Anyhow... Well done.", [405655] = "Haahahaha! Great job! Your strength has grown considerably!", [405656] = "This battle ends here. I\'m proud to say you\'ve passed the final test!", [406101] = "The challenge you\'re about to face is one no others dare to try - a Faux Villain Challenge!", [40610101] = "...", [40610102] = "Finally back? Not a bad timing I guess.", [40610103] = "It rained just now.", [40610104] = "Let\'s see how you do against water.", [406102] = "What? You\'ve already fought faux villains already? Oh my dear, how foolish...", [406103] = "It\'s not just ANY faux villains you\'ll be fighting...", [406104] = "There will be the giant Faux Villain ╬┤!", [406105] = "Go! Show me how heroic you can be!", [40610501] = "Are you here to save me?", [40610502] = "I was so scared here, all alone...", [40610503] = "PSYCH!", [40610504] = "We\'ve got you surrounded!", [40610505] = "Surrender yourself!", [406151] = "That was amazing! ...Although, the faux villain ended up malfunctioning.", [406152] = "But that didn\'t diminish the excitement of the battle at all. How thrilling!", [406153] = "That was pretty tiring right? Take five!", [406201] = "I\'ll just let you find out who the No. 1 is for yourself. ", [406202] = "You\'ve fought with them before, if you can remember that is.", [406203] = "A good showdown will tell who\'s made more progress. Well then, let\'s do this!", [40620401] = "I didn\'t think we\'d meet again!", [40620402] = "Let\'s not let our growth go to waste. Give me everything you\'ve got!", [406251] = "What an awesome duel! Both of you were very impressive!", [406252] = "You guys did great. Come back, drink some water, and rest up!", [406301] = "The theme of this rescue silumation is a landslide. In a moment, I will simulate the disaster and you job is to rescue people.", [406302] = "Please stop! We\'re just passing by! We don\'t want any trouble!", [406303] = "Look, someone in touble! Let\'s go save them!", [406304] = "What the? What are heroes doing here?", [406305] = "Isn\'t that the Thirteen, the Space Hero? Ha! She\'s a search and rescue hero. She won\'t stand a chance against us in a fight!", [406306] = "I need to ask you to defeat those villains. They\'re getting in the way of our training. ", [406351] = "Well done. I\'ll lead the people away. I\'ll also clear the traps the villains left behind with my Quirk.", [406352] = "We\'re saved! Thank you!", [406401] = "That\'s stronge, the simulated poison gas is already spreading?", [406402] = "Wait, this isn\'t the simulated poison gas! This is real poison gas! Don\'t breathe any in!", [406403] = "We cannot let the poison gas spread to the city! I will suck away the poison gas, you need to go shut off the source!", [40644201] = "The villains got away...", [40644202] = "I found the device that\'s emitting the gas!", [40644205] = "Shut down the defense network and destroy the device!", [406451] = "With that device off, I think we can take a breather.", [40645101] = "Low power, device shut down.", [406452] = "Good work. Let\'s head back.", [406501] = "There\'s a worker here! Are you okay?", [40650101] = "It\'s off! I\'ll leave the rest up to you guys!", [40650102] = "Well done. The air is clearing up as we speak.", [40650103] = "I\'ll get the worker to safety, I\'ll catch up soon! Let me know where you are!", [406502] = "Thank God! You\'re heroes, right? Some villains broke into this place, and we were forced to help them make poison gas...", [406503] = "I think if we can cut off the power, we can shut down the generator. Please help me help my coworkers!", [406504] = "Don\'t worry. We will rescue everyone.", [406505] = "All right. I\'ll take care of the gas. You protect the worker while he shuts off the power. Be safe!", [40650501] = "Once the antenna tower is repaired, you\'ll be able to send your location to Thirteen!", [40650502] = "Note 1: Antenna tower is very fragile. Attacks from both heroes and villains are able to damage it.", [40650503] = "Note 2: Antenna tower will automatically start to repair when you get close to it. Initiate manual repair on the tower to speed up the repair.", [40650506] = "All right, I\'ve received your location. The worker is safe now. I\'m on my way!", [406551] = "How\'d you find me here?! Damn! I should\'ve picked somewhere more remote!", [406552] = "Oh sure I\'ll hand you my hostages. You must be dreaming! You think I\'m going to let you arrest me?!", [406553] = "Wait! The workers have inhaled poison gas and need treatment immediately. We can catch the villains later. Saving the workers our your top priority!", [406601] = "The area has a lot of traffic during this time of the year though, I wonder why he would choose here for a hideout...", [406602] = "I have a bad feeling about this. It would be bad if people run into him, we need to apprehend him before that happens!", [40660201] = "You caught me off guard last time, but this time I\'m ready! And got some new hostages!", [40660202] = "So you\'ve got two options; save the hostages, or capture me. Make your choice! The clock is ticking!", [40660203] = "We won\'t fall for the same trick twice! There\'s no need for us to choose. We\'re taking both you and the hostages!", [40660204] = "I\'m confident you\'ll be able to manage the rescue. I\'ll go after him this time. Good luck!", [40660401] = "That was a close one. I may not be good at fighting, but I do have a way to stop you from getting away! ", [40660402] = "Damn! This suction... I can\'t get away! Ahh! I don\'t want to turn into dust!", [40660403] = "I-I surrender! I won\'t run away! Just put away that thing...!", [40660404] = "Haha! Gotcha! You\'re not taking me easily!", [406651] = "That was a nailbiter. We finally got him at last!", [406652] = "You did a good job. Let\'s escort the civilians back to the city.", [407] = "?!", [407101] = "Please help us! Villains are robbing my bank!", [407102] = "Our security didn\'t stand a chance against them...", [407103] = "Please, you gotta stop them!", [407104] = "Those villains are pretty ballsy. Got the nerve to rob a bank in broad daylight.", [407105] = "Well, what are you standing there for? Come on! Remember to keep every civilian safe!", [407151] = "Dammit! Where did those heroes come from?!", [407152] = "Forget it! Let\'s get out of here! We got what we came for!", [407153] = "Most of the villains have been defeated. How are you doing?", [407154] = "What? Two villains escaped? Slippery bastards!", [407155] = "I\'ll track them down. Stay put until further instructed.", [407201] = "They are up ahead. Let\'s split up and flank them from both sides.", [407202] = "We need to capture these villains and get the money back.", [407251] = "You\'re pretty strong. Good job!", [407252] = "Let\'s hand the money over to the police.", [407253] = "Once they\'ve concluded the investigation, they\'ll take the money back to the bank.", [407254] = "Let\'s head back.", [407301] = "We need to find these kidnappers as soon as possible. You go that way!", [407302] = "Contact me as soon as you find them!", [407303] = "Don\'t forget, the hostage is the priority here!", [407351] = "Good job! The hostage didn\'t get a scratch!", [407352] = "The police are already on their way. We\'ll leave the kidnappers to them.", [407353] = "All right. Let\'s head back.", [407401] = "There\'s a good chance the villains are hiding underground. Follow my lead!", [407402] = "We need to trap them in so they won\'t escape.", [407403] = "Defeat every last one of them. Don\'t let any of them get away!", [407451] = "Great! We\'ve got all of them. It\'s been a while since I\'ve gotten such a good workout!", [407452] = "I\'ve already contacted the police. The rest of this is their job. Let\'s head back.", [407501] = "This is the only passage to the port... Careful, there may be an ambush.", [407502] = "Don\'t forget what we\'re here for! Stop the ship! Avoid combat!", [407551] = "Dammit! We just missed them! They\'ve boarded already!", [407552] = "Contact the police and have them close off these waters immediately. ", [407553] = "Nothing much we can do right now, let\'s head back.", [407601] = "Get all the villains on the ship under control!", [407602] = "Don\'t let any of them escape into the water!", [407603] = "Let\'s do it!", [407651] = "Good job! You didn\'t let me down.", [407652] = "The police will take them back. There\'s nothing left for us to do here.", [407653] = "Now we can finally take a breather.", [408] = "Damn, the villain got away. Let\'s get back to the comm stations frist.", [408101] = "I\'ve surveyed the area. The hostage is very close.", [408102] = "I\'ll draw them out with my charm. I\'ll be irresistible to look at.", [408103] = "But you\'ll need to focus and launch a surprise attack.", [408104] = "The police will also provide support from close by. Stay safe. Let\'s go!", [408151] = "Well done! The civilian is safe!", [408152] = "All the villains have been caught. I think that went super well, don\'t you think?", [408153] = "Let\'s head on back. Thanks for the help, cutie.", [408201] = "Look at this truck... It seems like they got attacked by someone. She was right.", [408202] = "I doubt the villains can get far with a huge haul. I\'ll lead the way!", [408251] = "I searched the surrounding area, but I only found some of the goods. The villains probably took the valuables and abandoned the rest.", [408252] = "Oh, don\'t fret about picking them up. I\'ll contact the police to do the heavy lifting. We got better things to do.", [408301] = "I\'ve spotted the villains up ahead. There aren\'t too many of them.", [408302] = "Let\'s split up. Find the goods first, then defeat the villains!", [408351] = "Looks like the rest of the shipment. Well done!", [408352] = "The police will take care of the rest. Let\'s go back.", [408401] = "See that? That\'s the spot they said they\'ll meet.", [408402] = "Do you see this \"son\" around? I only see an uncultured group of villains.", [408403] = "Looks like a fight is coming up. Hope you\'re ready!", [408404] = "Then off you go! Good luck!", [408451] = "That\'s all of them. Well done!", [408452] = "The police will be here soon. I\'m so thoughtful aren\'t I?", [408453] = "Alright, time to head back! I have a commercial to film.", [408501] = "There\'s a group of villains nearby. Wonder what they\'re up to...", [408502] = "They may have kidnapped the girl who disappeared. Let\'s go see if that\'s really the case.", [408551] = "Wow! So that guy was not kidding about the hide-and-seek. So glad we looked into this.", [408552] = "The girl is safe. Let\'s get back and inform the lonely lovebird.", [408601] = "Wait, I\'m detecting some villains approaching the station. It would be a real disaster if they\'re planning to attack!", [408602] = "Civilians are our top priority. Let\'s split up and evacuate everyone!", [408603] = "Try not to cause any panic when you run into the villains. Just deal with them swiftly and always keep the civilians out of harms way!", [408604] = "And remember, be camera ready!", [408651] = "Let\'s see. All of the villains are down for the count, and no one was injured.", [408652] = "People might be late to meetings or work due to the chaos, but oh well. What can you do, right?", [408653] = "Oh, look at that, my fans are here. Time for the cameras. Talk to you in a bit!", [409101] = "Have you equipped the Support Gear I gave you?", [409102] = "This exercise will test the defensive performance of the gear. Give it your all.", [409103] = "Begin!", [409151] = "...When I said I wanted to test the gear, that didn\'t mean that I wanted you to take a beating on purpose.", [409152] = "It wasn\'t on purpose? Oh... In that case it really does have good defense stats!", [409153] = "All right then, the test is over. Thanks for your help!", [409251] = "According to the data, everything seems normal. Let me check the gear real quick.", [409252] = "That wasn\'t bad. Bet ya the gear helped out!", [409253] = "Inconclusive for now... Thanks for your help!", [409351] = "The data is better than I had imagined!", [409352] = "I know it would seem like this gear was designed specifically for you, but it\'s meant for one-size-fits-all. Good job me!", [409353] = "Thanks for your help as always!", [409451] = "Seems like the gear isn\'t too damaged!", [409452] = "But I still need the gear for the full analysis.", [409453] = "Hurry back, and thanks for your help as always!", [409501] = "There are lots of places to hide around here. I think this is a good place to start the patrol.", [409502] = "Let\'s begin. Keep your eyes peeled for any movement.", [409551] = "Seems like there were some villains here who intended to cause trouble.", [409552] = "There might be more around here. Let\'s patrol that side, too.", [409601] = "When patrolling the city, your main task is to guarantee the safety of the civilians.", [409602] = "When you get into battles, try to avoid causing damage to your surroundings.", [409603] = "Good luck! And keep it up!", [409651] = "This area should be cleared of villains now. Good work!", [409652] = "We\'ve been patrolling all day and it\'s getting late. Let\'s get some rest for today.", [50100705] = "Approach Aizawa and use his Quirk to greatly reduce the power of villains for a short period of time.", [5010201] = "I\'ve been contacted by the site. Looks like the training was completed without a hitch!", [5010202] = "You did well on time, but need to work on your stealth!", [5010203] = "Some of the mock customers noticed that you were clearly searching for bombs.", [5010204] = "Be careful next time. If this were a real scenario, you wouldn\'t want to incite panic!", [5010601] = "Did you find him?", [5010602] = "Near the main street? I\'ll go find him!", [5010603] = "Thank you so much!", [5010701] = "Remember that combat test I had you do? I found something strange when I was looking at the recordings!", [5010702] = "Look at this footage. This is from a camera that was installed in the wrong place.", [5010703] = "I wanted to just delete this footage, but if you look carefully, there\'s something suspicious in it.", [5010704] = "Look, check it out!", [50110315] = "There\'s nothing here. Am I seeing things?", [50110316] = "Woof! Woof!", [50110317] = "Woof... woof!", [50110318] = "The puppy wears a tattered collar with its name written on it.", [50120401] = "(Koda starts to make gestures. You learn what the pigeon is \"saying\" through his narration.)", [50120402] = "(Are you talking about that yellow dog? I saw it when I was looking for food the other day.)", [50120403] = "(He\'s... well, I don\'t know what you humans call that thing, it looks like #cFFE750a curved, long rock in the sky#cFFFFFF.)", [50120404] = "(Meow, meow...)", [50120405] = "(Koda starts to make gestures again. You learn what the cat is \"saying\" through his narration.)", [50120406] = "(Oh, you mean that stupid dog? We fight for food every day. What an annoying guy!)", [50120407] = "(But I haven\'t seen him recently. Must\'ve been taken away by the moving white box. I have to be careful, too.)", [50120408] = "(You wanna know where I saw him last time? Why would I tell you that? I hope that guy doesn\'t come back again.)", [50120409] = "(Meow?! I know that smell!)", [50120410] = "(Deal, I\'ll tell you for the sake of dried fish. That place #cFFE750has red floor, and there are often humans running around#cFFFFFF.)", [50120411] = "(I don\'t know what you humans call that place. Anyway, it\'s nearby.)", [50120412] = "(Woof! Woof?)", [50120413] = "(Koda starts to make gestures again. You learn what the dog is \"saying\" through his narration.)", [50120414] = "(Woof? Nodakemaru? Who\'s that? I don\'t understand the names you humans use, woof.)", [50120415] = "(*Sniff*, this smell! Isn\'t this what the \"round head\" guy has been wearing?)", [50120416] = "(I haven\'t seen him recently when I looked for food in the \"treasure box.\" Was he taken by the guys in the white box?)", [50120417] = "(You also want to look for those white boxes that can move? I know where they are!)", [50120418] = "(They\'ve often stopped around here recently. Come with me, I\'ll take you there, woof!)", [50120901] = "Thank you for your help. We\'ve recently received many reports of missing pets. We didn\'t expect this to be an organized crime on stealing animals.", [50120902] = "Their owners will take their pets home, but what about the remaining strays?", [501209021] = "If there\'s no place for them to go, we can only sent them to the shelter...", [50120903] = "(Koda hurriedly gestures with the shape of a house and points in the direction of the urban area in the distance.)", [50120904] = "Uhhh... Is he trying to say something?", [50120905] = "He\'s saying that there\'s an animal shelter in the urban area that accommodates stray animals", [501209051] = "He\'s saying that he can find new owners and homes for them in the urban area", [501209052] = "He\'s saying that the environment in the urban area is more suitable for them to continue to be strays", [50120906] = "I see. That\'s great! Do you know how to contact them? I\'ll contact them now.", [501209061] = "(Koda hurriedly waves his hands, it seems that this is not what he meant.)", [501209062] = "Hmm... I think he meant to say that there\'s an animal shelter in the urban area that can accommodate stray animals.", [50120907] = "...Okay, thank you very much. Please tell me your address...", [50120908] = "That\'s great, they said they can accept them until new owners come to adopt them. I\'ll contact a truck to send them there.", [50120909] = "Woof! Woooof!", [50120910] = "(Even without Koda\'s translation, you know that Nodakemaru is expressing his gratitude.)", [50120911] = "Woof!", [50120912] = "(Nodakemaru\'s voice becomes sad, as if he knows that he\'s about to be sent to another place.)", [50120913] = "(Koda pats his chest, points to Nodakemaru, and makes a gesture of looking around.)", [50120914] = "(He seems to be saying that he knows the location of the animal shelter, and he can visit them anytime in the future.)", [50120915] = "(Koda bows to you again to thank you for helping him and his animal friends.)", [5020201] = "There\'s only some tattered trash inside, which seems to have been dumped here a long time ago.", [5020202] = "There\'s a classic silver hairpin inside. Judging from the metallic luster on its surface, it must\'ve been used recently.", [5020203] = "There\'s a lovely necklace inlaid with broken gems inside. One man\'s trash is another\'s treasure, I guess...", [5020204] = "There\'s only some tattered trash inside, which seems to have been dumped here a long time ago.", [5020205] = "There\'s a shiny gold watch inside. It fits perfectly with the description from the man who asked you to look for treasure.", [5020401] = "There are some breadcrumbs on the floor. The birds must\'ve been attracted by the food.", [5020402] = "There\'s a shiny glass bead. It\'s very popular among birds, but it can\'t be what he asked you to find.", [5020403] = "Dug out a golden nugget, which looks like a tooth with signs of wear on one side.", [5020404] = "There\'s only a shiny coin. The material looks very cheap, so it can\'t be what he asked you to find.", [5020405] = "There\'s a small grain of gold buried under the sand. You don\'t know what it\'s for.", [5020501] = "An old silver necklac is buried in the soil.", [5020502] = "Nothing was found. Maybe some animals dug this hole.", [5020503] = "Found a pair of finely crafted earrings. Looks very well maintained.", [5020504] = "Nothing was found. It may just be some tracks left by children playing in the sand.", [5020505] = "Gold earrings with red strings on them. A popular style from the last century.", [50210701] = "(Koda has a really big reaction. The missing animals must be the ones locked in the cages.)", [50210702] = "Defeat all the villains and release the animals from the cages!", [502301011] = "Upgraded the #cff6b11North Training Area#c000000 Comm Station. You can receive more commissions in the North Training Area now!", [503301011] = "Upgraded the #cff6b11South Training Area#c000000 Comm Station. You can receive more commissions in the South Training Area now!", [5050201] = "Welcome. What? Are you not here to eat?", [5050202] = "Then can you help me with something important? Take a look at this picture.", [5050203] = "I secretly took photos of all the restaurants in the city to do some market research, trying to figure out how to attract more customers.", [5050204] = "But there are too many photos for me to go through.  Can you look at this picture and give me information about it?", [5050205] = "Pay attention to the #cFFE750customers#cFFFFFF, the #cFFE750ground decor#cFFFFFF, and the #cFFE750recreational facilities#cFFFFFF!", [5050206] = "This quest requires answering questions based on the photographs. These photos can be checked at the quest tracker.", [5110000] = "When you attack enemies, there\'s a chance they\'ll drop Ultimate Energy.#rGet close to collect it and charge up your Ultimate Skill!", [5110011] = "Perfect timing! Kurogiri\'s Warp Gate appeared in the USJ again!", [5110012] = "The villain Nomu slip through before I can take care of Kurogiri.", [5110013] = "Defeat Nomu and save the day!", [5110014] = "Please act quick! We don\'t have much time!", [5110021] = "Monsters are keep coming out of Kurogiri\'s gate. I\'m doing my best to stop them!", [5110022] = "However, Nomu got through, so please take it down if you can!", [5110031] = "The villains have been apprehended! But don\'t feel safe yet until they\'re locked up.", [5110032] = "This villain seems like a big shot, I think his subordinate might try to rescue him.", [5110033] = "Help the police and escort them to the target destination!", [5110034] = "Do you really think you can catch me?", [5110035] = "I see you\'ve arrived at the destination, with some unfortunate losses...", [5110036] = "Keep your guards up before this villain get send to prison!", [5110037] = "As always, you have my thanks! ", [5110038] = "This is not a farewell, we will meet again!", [51100401] = "Heroes? Challenging me?", [51100402] = "Tremble before the mighty Moto Gang!", [5110041] = "Scary! But also interesting!", [5110042] = "Remember the Sludge Villain that was defeated? Some cells of his were leftover at the scene.", [5110043] = "Who knew that the Sludge Villain would reform with just one cell left!", [5110044] = "We have to defeat it completely this time!", [5110045] = "Hruuaaaah!!!!!", [5110046] = "I can revive, but there\'s no second chance for y\'all!", [51100501] = "A suspicious warp gate was found in the city! Many villains are trying to escape through there.", [51100502] = "null", [51100503] = "Here are the location they\'ll be coming from. Heroes, we must put an end to their escape plan!", [51100601] = "Boss, we are coming for you!", [51100603] = "Emergency! Repeat! We have a emergency!", [51100605] = "Useless...! I will take care of this myself!", [51100606] = "As for you guys... time to die!", [51100701] = "No one will hear your call!", [51100702] = "You are surrounded by my mans! ", [51100703] = "Now give me all the money!", [51100704] = "Hurry up! Or I\'ll--", [51100705] = "Nowhere to hide!", [51100706] = "I\'m so bad, I\'m good.", [51100707] = "No funny business!", [51100708] = "Stay where you are!", [5240201] = "What should I do... I can\'t find my kid anywhere! Did you find anything?", [5240202] = "What! You found my kid? By the square?", [5240203] = "That\'s great! I\'ll head over right now! Thank you so much!", [5240301] = "What should I do... I can\'t find my kid anywhere! Did you find anything?", [5240302] = "What! You found my kid? By the square?", [5240303] = "That\'s great! I\'ll head over right now! Thank you so much!", [5250201] = "Did you find it? I\'m very grateful!", [5250202] = "Please hold onto it for a while longer, I\'ll contact you after this mission.", [56110501] = "Damn it, have I been made?", [56110502] = "I originally wanted use these faux villains that invaded U.A. High to practice myself...", [56110503] = "This is all your fault. Stop following me!", [56110504] = "Try this!", [5611061] = "I\'m so tired, I can\'t run anymore...", [5611062] = "It feels so good to have a good sweat!", [5611063] = "Did I come first?", [56110701] = "What! How long have you been there?!", [56110702] = "Then I\'ll kill you first. He\'ll be the next one!", [56110703] = "Wait, over there. Aren\'t you the one who has been following me?", [56122103] = "Let\'s start now. The rules are very simple. See these faux villains for training?", [56122104] = "What you need to do is turn off the power of all faux villains within a specified time.", [56122105] = "So, let\'s learn how to turn off the faux villains first.", [56122106] = "Try to get close to the faux villain in front of you and turn off its power!", [56122111] = "Alright, I\'ve got a very good data record so far!", [561222001] = "Right, let\'s reconfirm the two Faux Villains\' action patterns.", [561222002] = "Faux Villain ╬▒ will move faster at intervals, making it difficult for you to catch up with it.", [561222003] = "Faux Villain ╬│ will use ranged attacks intermittently.", [561222004] = "If you\'re hit by its attack while turning off the power, you\'ll have to try it again.", [561222005] = "By the way, I increased the number of faux villains in this test!", [561222006] = "Choose your targets and timing carefully.", [56122301] = "Great, but no programs have been activated on this faux villain.", [56122302] = "The next opponent won\'t be that easy to deal with!", [56122304] = "Faux Villain ╬│ will use a ranged attack every once in a while.", [56122305] = "If you\'re hit by the attack during the operation, the action will be interrupted!", [56122306] = "And Faux Villain ╬▒ will accelerate intermittently.", [56122307] = "It\'s not easy to catch up with this guy while it\'s running so fast!", [5624011] = "We\'ve received some feedbacks from students that some strange people have appeared in the training area...", [5624012] = "There are students in the training area that exercise every afternoon. It\'s the best time to investigate!", [5624013] = "You can approach suspicious targets and see if you can get useful information from them!", [5624014] = "Suspicious Student A: a girl who likes to ask others about their Quirk.", [5624015] = "Suspicious Student B: a boy who walks around alone and rarely speaks.", [5624016] = "Suspicious Student C: a boy who\'s extremely enthusiastic about fighting.", [56240601] = "What the hell is that guy doing? How come he\'s still not back? Is he in trouble with the police again?", [56240602] = "Should we tell the others to close up shop? We gotta be extra careful. We\'re so close to our goal.", [56240603] = "Don\'t bother, look! He\'s back.", [56240604] = "S-Something terrible happened! We ran into Snipe on the way back. They all got caught!", [56240605] = "What?! You were attacked by a hero, and you came right back to us?! Are you stupid?!", [56240606] = "D-Don\'t worry! I was very careful on the way back. That guy didn\'t follow me...", [56240607] = "Contact the boss immediately! We need to get out of here, right now.", [56240608] = "Ah!!! Ahhh!!! Heeerooooooo!!!!", [56240609] = "Hero!!!", [5624061] = "Keep up the pace everyone, and maintain communications at all times!", [56240610] = "Damn it! How did you find this place! Wait, is that a--?!", [56240611] = "What are you standing there for? Idiot! Get the boss on the line!", [56240612] = "Leave it to me, you go stop that guy!", [5624062] = "I heard someone got caught by a hero... Looks like we\'ve been exposed...", [5624063] = "Wait, who is that? They don\'t seem nice...", [5624064] = "Go inform the boss, I\'ll deal with him!", [5624065] = "How did these guys find this place...?", [5624066] = "It seems this place has been compromised. We\'ll find out a way later!", [5624067] = "Good job! Good thing you shut down the communication device in time, otherwise we would\'ve failed!", [5624068] = "You should evacuate the area first. Remember not to give up your cover!", [5624071] = "How strange, why can\'t I contact those guys...?", [5624072] = "Boss! This isn\'t good! Someone broke in!", [5624073] = "What?! Stop them, I\'ll go contact other people!", [5624077] = "He\'s already here? These guys are useless... This is not a place for you to be! Time for some pain!", [56250201] = "The surface of this trash can is slightly deformed, and it seems to have been damaged by something. Investigating it may present some clues.", [56250202] = "There are messy footprints around the trash can... The footprints point to somewhere else...", [56250203] = "These trash cans have been overturned... Better scan them with the drone...", [56250204] = "...There are some strange footprints, but the culprit doesn\'t seem to be here.", [56250205] = "It\'s tidy and clean here, and it doesn\'t look like anyone has been here.", [56250206] = "Apart from finding out that all the garbage was sorted and put away, there were no valuable gains.", [56250207] = "It doesn\'t look like something has been here. Even if you investigate it, there will probably be no benefit.", [56250208] = "...It seems that my intuition is as accurate as always.", [56250209] = "Don\'t waste any time here.", [56250212] = "Is this the drone that can find hidden clues? It seems like you just need to press its button to activate it.", [56250213] = "Press the button on the drone to turn on the scanning function and see if you can find something.", [56250221] = "I didn\'t expect there to be so many out-of-control robots here. No wonder that \"monster\" hid so far away...", [56250222] = "There shouldn\'t be any problems now.", [56250223] = "Go investigate the last clue", [56250404] = "Damn it, these dogs have already been reserved by buyers. If we let them go, what are we gonna deliver to the buyers?!", [56250405] = "This is none of your business!!! Catch them now, or I\'ll teach you a lesson!", [60200701] = "Hey there! Can I help you with something?", [60200702] = "You want to use my Quirk to measure the cliff\'s height? Sounds easy enough for me.", [60200703] = "The training area is close by, just give me a second...", [60200704] = "There you go! I shot the tape from the top of the cliff, and the length of the tape matches the height of the cliff.", [60200705] = "No worries, it was a piece of cake!", [602301011] = "Upgraded the #cff6b11Stadium Periphery#c000000 Comm Station. You can receive more commissions in the Stadium Periphery now!", [603301011] = "Successfully upgrade the Comm Station of #cff6b11Training Area South#c000000, now you can receive more commissions around the stadium.", [7001101] = "Dammit, I won\'t forgive you...! It all ends here!", [7001102] = "Welcome to my feast of sludge... Come and become one with me!", [7001103] = "A hero! We\'re saved...!", [70110201] = "What should I do?", [70110202] = "What\'s wrong? Maybe I can help.", [70110203] = "That would be great. I\'ve got a big problem.", [70110204] = "The power went out in my store, but there\'s nothing wrong with the circuits in the store itself.", [70110205] = "There are customers in the store, but I\'m the only one working today, so I can\'t leave. Can you go to the electrical room and see what\'s wrong?", [70110206] = "I should still be able to sell these circuits for some money once I remove them.", [70110207] = "Damn, you got here fast... wait, you\'re not the cops? Then mind your own business!", [70110208] = "You\'re in my way! Get lost!", [70110209] = "Hello, can I help you with anything?", [70110210] = "...Understood. We\'ll send help right away. Don\'t do anything that\'ll put you in danger, stay put!", [70110211] = "I-I\'m no match for you... I give I give! I\'ll turn myself in!", [70110212] = "Sure, no problem.", [70110213] = "Thank you! Business at the store is booming. Maybe the circuits are overloaded and the breaker was tripped. Let me show you the way to the breakers.", [70110401] = "What dangerous stuff? You don\'t have to check our bags.", [70110402] = "We\'re just tourists! I just want to take some picture of Uwabami!", [70110403] = "What? She\'s coming today? Where did you heard that? I didn\'t hear about that.", [70110404] = "What do you want from me? I can\'t go on the carousel? Security guard should just stand quietly at the gate. Don\'t be so nosy!", [70110405] = "I\'m sorry. But everyone has to go through a security check, please cooperate with us.", [70110406] = "Why are you still bugging me?! You\'re making me mad!", [70110407] = "Stop!", [70110408] = "You also wanna get in my way? Then I\'ll take care of you too!", [70110501] = "This is the city police broadcast. I\'m Officer Sansa.", [70110502] = "A fugitive is on the run. I repeat, a fugitive is on the run.", [70110503] = "If you see the person in the photo or have any relevant clues, please contact the police immediately.", [70110504] = "Please put your own safety first. Thank you for your cooperation.", [70110601] = "I\'m Sansa. Can I help you with anything?", [70110602] = "You\'ve found where the fugitive\'s is hiding at? I\'ll notify the nearby heroes immediately. ", [70110603] = "Please retreat to a safe place and wait for us!", [70110901] = "Welcome to my liiiiive show!", [70110902] = "CΓÇÖmon. And lemme hear ya shout!", [70110903] = "I can\'t hear you! Haven\'t you woken up yet? Isn\'t my voice enough to wake you?!", [70110904] = "It looks like I need to make a sound that can hit your soul directly! Get ready to feel my energy and passion!!! Are you ready?!", [70110905] = "Yo yo yo!!! I already got fans coming to get my autograph? No problem!", [70110906] = "What? I\'m to loud?! Can\'t you feel my love and passion from the power of my voice?", [70110907] = "I\'ve practiced a lot to become a radio DJ like Present Mic. Even if it makes my voice hoarse, I still won\'t stop! ", [70110908] = "One day, I\'ll be like him, and will shock all the audience with the power of my voice!", [70110909] = "So stop getting in the way! Get out! Otherwise, I may hurt you!", [702301011] = "Upgraded the #cff6b11Station Square#c000000 Comm Station. You can receive more commissions in the Station Square now!", [703301011] = "Upgraded the #cff6b11Station Square#c000000 Comm Station. You can receive more commissions in the Station Square now!", [8] = "Villains are still hiding. Let\'s search for them.", [801101] = "Welcome to the Hero Training Area! This is the All Might Sparring!", [801102] = "Are you up for this? Let us begin!", [801103] = "Just a tradition of U.A. High, you\'ll be facing faux villains! Give your all! Haahaha!", [801201] = "This course is about battle basics.", [801202] = "You will be facing more intelligent faux villains.", [80120201] = "This is none of your business! Get lost!", [80120202] = "Let\'s go! The police are coming!", [80120203] = "Stop, give my stuff back to me!!!", [80120204] = "Thank you so much. If it wasn\'t for you stopping them in time, I\'m afraid they would\'ve emptied the entire shop...", [80120205] = "I didn\'t expect these guys to know which products are the good ones in my shop. They took the most expensive batch of goods!", [80120206] = "If I waited for the police to arrive, these people would\'ve taken my stuff away! Damn, what an unlucky day...", [80120207] = "Is it not too late to catch up now? Then...", [80120208] = "Hey, man! Can you get me a pair of the latest headphones? You know, the brand I love? I\'ve checked several shops, and I heard that only your shop still has them!", [80120209] = "I knew these headphones would be very popular, so I\'ve stocked up on them...", [80120210] = "Nice! That\'s awesome. Lemme have a pair!", [80120211] = "Unfortunately, you came too late. Some guys just robbed the whole box...", [80120212] = "What?! It took ages for me to get here... So unlucky!", [80120213] = "Oh hey! Wacha doing here?", [80120214] = "Told what happened to Denki Kaminari...", [801203] = "Go check out the basics training!", [80120301] = "So strong!", [80120302] = "What should I do now?", [80120303] = "Fall back to the base!", [80120304] = "Damn you! I\'ll remember this!", [80120305] = "Hey! Stop there!", [80120306] = "Running off with the merchandise...", [80120307] = "Are you a hero? Thank you so much!", [80120308] = "Oh... Where could they have gone...", [80120309] = "Where is this hideout of theirs...?", [80120310] = "Wait, is this where the store\'s at...?", [80120311] = "Woah! Hey, you\'re here! Um, I accidentally broke my music player during training again!", [80120312] = "You again...", [80120313] = "How many times have I told you, you have to be careful with your power.", [80120314] = "Well, now is not the time to talk about that.", [80120315] = "Wow! The store\'s a mess! What happened?", [80120316] = "A robbery, what else? Those villains are going to be the end of me!", [80120317] = "Man... That rough for the owner...", [80120318] = "Well! I won\'t stand for it. Let\'s help!", [80120401] = "Hey, man! Let us help!", [80120402] = "I\'m a future Pro Hero after all. Leave it to me!", [80120403] = "I guess it wouldn\'t make things worse...", [80120404] = "Say, did you come from that way?", [80120405] = "I think that\'s the direction the villains ran off to.", [80120406] = "Really? I don\'t think I saw any--", [80120407] = "Wait! I did see three guys hurry pass me!", [80120408] = "That\'s got to be them.", [80120501] = "The messy footprints should have been left by the fleeing enemies, but the footprints stop over there. They can\'t be used to track them.", [80120502] = "You also found some bright colors on the footprints, which must be paint.", [80120503] = "A rusty iron box. Must\'ve been brought by the villains to carry the stolen goods.", [80120504] = "Dude, do you remember the situation when the robbers came to your shop? Was there anything strange going on?", [80120505] = "Well, I remember those guys saying that after making a fortune out of this, they\'ll move to a better place...", [80120506] = "Oh yeah! There seemed to be an unpleasant smell on them.", [80120601] = "Wow, I didn\'t expect to catch these guys so soon. All the stolen goods are back. Thank you so much!", [80120602] = "You\'re welcome! This is our duty!", [80120603] = "Oh yeah, since you got the stuff back, can I get that headphones?", [80120604] = "Oh! Here you go!", [80120605] = "Awesome! I\'ll remember to take them out before I release electricity next time!", [80120606] = "How much are they?", [80120607] = "No need, just take them as a gift from me for your help.", [80120608] = "Huh?! I don\'t think this is right. We just did our duty!", [80120609] = "Hahaha, please take them. You can always come back to buy something else in the future!", [80120610] = "Haha, alright. Thank you then!", [80120701] = "Yee...", [80120702] = "Hey... What\'s up with him...?", [80120703] = "I heard from the police that you guys got them. Thank you.", [80120704] = "The music player\'s broken, right? Have a new one on the house, as a thank you gift.", [80120705] = "And you too, thank you so much! I\'ll give you a discount if you want anything!", [801301] = "Now we have special operation training.", [801302] = "Although this is a training, don\'t take your foes lightly!", [801303] = "Villains often use tactics like ambush or ultilize traps, so keep an eye out for those!", [801401] = "Next, combat training!", [801402] = "Don\'t forget villains have Quirk too, so you better be well prepared.", [801403] = "Keep it up!", [802301011] = "Upgraded the #cff6b11Agency Area#c000000 Comm Station. You can receive more commissions in the Agency Area now!", [803301011] = "Upgraded the #cff6b11Agency Area#c000000 Comm Station. You can receive more commissions in the Agency Area now!", [81] = "Hey, I know you didn\'t just hung up on me! It\'s rude!", [82] = "Anyway, I\'ve sent the info to your phone. You figure it out!", [90100301] = "Hey! Is it my fault that I don\'t want to pay? Your cake is too sweet! Do you want me to get diabetes?", [90100302] = "You finished it with a smile on your face!", [90100303] = "Nonsense! Are you looking down on me?", [90100304] = "I\'m gonna teach you a lesson!", [90100305] = "Stop!", [90100306] = "The police rushed over as soon as they received the report, but it seems that it\'s been solved already.", [90100307] = "You\'re the hero Detective Tsukauchi mentioned, right? You\'re very impressive.", [90100308] = "We\'ll take them back. Miss, you can always contact us if there are any follow-up matters.", [90100401] = "It\'s very accurate at locating, Power Loader.", [90100402] = "That doesn\'t surprise me.", [90100403] = "There is a large crowd here, but there are no obstructions to interfere with the signal transmission.", [90100404] = "Please go to the next test location, $NAME$.", [90100501] = "Excuse me, let me pass!", [90100502] = "Get out of the way, loser!", [90100503] = "Ah! I knew it...", [90100504] = "Hey! This isn\'t where you should be!", [90100505] = "Loser... You\'re brave! You scoundrel!", [90100601] = "At present, the intensity and stability have reached our expectations.", [90100602] = "I saw a few bullies laying over there. Are you okay?", [90100603] = "Yeah, they just made me take a little longer.", [90100604] = "You got injured? Because of those losers?", [90100605] = "Now you say it... I do feel a little dizzy, too.", [90100606] = "Let\'s quit joking around. This kind of fight isn\'t even a warm-up for you, right?", [90100607] = "This isn\'t a suitable place to talk. Let\'s go back to the Technology Museum.", [90100701] = "$NAME$, you came at the right time! Let me show you my new baby!", [90100702] = "What\'s this? A new Support Gear?", [90100703] = "Wow! This is so ugly!", [90100704] = "This shape looks familiar...", [90100705] = "This is a cute baby I just developed!", [90100706] = "That\'s so rude! Isn\'t it cute?!", [90100707] = "Oops, I\'ve been made!", [90100708] = "It\'s actually an airbag. Recently, our enemies have been very active, and there have been a spurt of kidnappings...", [90100709] = "That\'s true.", [90100710] = "Humph, they\'re just a bunch of garbage doing evil things.", [90100711] = "It\'s more fitting to say that there are too many kidnappings!", [90100712] = "So Mr. Power Loader asked me to make gear for civilians.", [90100713] = "That\'s why I invented this portable airbag. Simply click here then throw it out. And ta-da!", [90100714] = "People will be safe inside. This airbag can withstand high temperature and electric current!", [90100715] = "However, exactly how much damage it can actually take requires some test data. So...", [90100716] = "Understood, leave it to me.", [90100717] = "Fine, let\'s get on with it.", [90100718] = "I feel like I\'m being used...", [90100719] = "Let\'s get started then! Use the latest test system!", [90100720] = "Start loading the test environment...", [90100721] = "10%... 30%... 80%...", [90100722] = "100%! #rTest environment loaded! I hope everything goes well.", [90100801] = "Data collection complete! Thank you!", [902301011] = "Upgraded the #cff6b11Technology Museum#c000000 Comm Station. You can receive more commissions in the Technology Museum now!", [903301011] = "Upgraded the #cff6b11Technology Museum#c000000 Comm Station. You can receive more commissions in the Technology Museum now!"}
, 
ConstCfg = {
BloomParams1 = {0.1, 0.75, 0.1, 0.5}
, 
BloomParams2 = {0.1, 0.75, 0.1, 0.4}
, 
BloomParams3 = {0.1, 0.76, 0.1, 0.5}
, 
BloomParams4 = {0.1, 0.76, 0.1, 0.4}
, 
SunDirParams1 = {-1, 1, -1}
, 
SunDirParams2 = {1, -1, 1}
, 
SunDirParams3 = {-1, 1, 1}
}
, 
DialogueNameCfg = {"Arsonist Boss", "Lumini", "White Blade", "Villain\'s Boss", "Granny", "Woman", "Curator", "Giant Villain", "Upset Clerk", "Villain A", "Pet Stealer", "Anxious Worker", "Villain", "Gangster", "Suspicious Person", "Villain", "Bad Guy", "Thug B", "Muscle Moto", "Angry Reporter", "Zealous Schoolgirl", "Cowardly Villain", "Tenya Iida", "Fourth Kind", "Elegant Woman", "Officer", "Thirteen", "Villain", "Thug", "Momo Yaoyorozu", "Sansa Tamagawa", "Familiar Voice", "$NAME$", "Robber\'s Boss", "Frightened Shop Owner", "Villain", "Patrol", "Transport Worker", "Troubled Student", "Kamui Woods", "Worried Boss", "Death Arms", "Mina Ashido", "Officer Sansa", "Izuku Midoriya", "Trapped Worker", "Robbed Shop Owner", "Villain", "Musculant Hero", "Girl with Pink Hair", "Businessman", "Cute Girl", "Police Officer", "Villain", "Disruptive Citizen", "Woman with Wings", "Arsonist\'s Accomplice", "Rose Dancer", "Villain", "Crowd", "Shop Owner\'s Cat", "Gang B", "Cat Officer", "Officer A", "Kind Student", "Waiter-like informant", "Mt. Lady", "Hero-dressed Man", "Gangster", "Clerk", "Masked Villain", "Villain in Purple", "Villain\'s Boss", "Young Mother", "Shop Owner", "Panicking Man", "Injured Villain", "Chaotic Faux Villains", "Male Clerk", "Detective Tsukauchi", "Arson Suspect", "????", "Little Yellow Dog", "Dessert Shop Clerk", "Gang Boss", "Nervous Clerk", "Villain", "Recovery Girl", "Escaped Accomplice", "Rescued Schoolgirl", "Tourist Shota", "Carefree Boy", "Mei Hatsume", "Officer", "Rogue Faux Villain", "Disruptive Citizens", "Shota Aizawa", "Gang Worker", "Skinny Cat", "Ochaco Uraraka", "Woman Getting Hit on", "Witch Doctor", "Katsuki Bakugo", "Girls", "Building Manager", "Momo Yaoyorozu", "Uwabami", "All Might", "Izuku Midoriya", "Missing Arsonist", "Criminal", "Upset Clerk", "Clerk", "Anxious Man", "Nagging Woman", "Captured Villain", "Policeman in Trouble", "Thug-in-training", "Helmet Man", "Arsonist Boss", "Thug", "Officer B", "Strange Voice", "Shop Owner", "Ponytail Schoolgirl", "Hoarse Man", "Cute-looking Clerk", "Tsukauchi\'s Subordinate", "Blurred Signal", "Villain\'s Head", "Arsonist", "Hero-dressed Idol", "Tunnel Digging Villain", "Pretty Woman", "Ridiculous Eyepatch", "Azure Champion", "Factory Owner", "Little Boy", "Girl", "Power Loader", "Thug", "Kamiji Noguchi", "Anxious Student", "Arsonist", "Arsonist", "Unkown Man", "Director\'s Assistant", "Fanatical Arsonist", "Chameleon Villain", "Little Boss", "Worried Granny", "Burly Villain", "Ann Asano", "Escaped Worker", "Familiar Voice", "Underground Merchant", "Arsonist Mastermind", "Suspected Man", "Troublemaker", "Villain\'s Boss", "Store Manager", "Winning Robot", "Empire Robot", "???", "Thug Leader", "Villain\'s Boss", "SWAT Team ", "Angry Clerk", "Naomasa Tsukauchi", "Curious Youth", "Shop Owner", "Gang A", "Villain", "Car", "Angry Young Woman", "Helpless Young Man", "Boy", "Villain", "Villain B", "Police", "Mysterious Man", "Fan", "Unknown Man", "Suzumi Suzumiya", "Giant Villain", "Energetic Grandpa", "Frowning Girl", "Officer", "Escaping Robber", "Backdraft", "Man in Suit", "Troubled Man", "Unknown Voice", "Giant Berserker", "Student", "Koji Koda", "Snobby Man", "Schoolgirl", "Student", "Villain", "Suspicious Person", "Pet Stealer", "Thug A", "Hero Dressed by a Wizard", "Citizen", "Heroes", "Crying Child", "Student?", "Man in Practice", "Worker without Disguise", "Scared Worker", "Miku Takasaki", "Arrogant Thug", "Anxious Father", "Shop Owner", "Noguchi & Suzumiya", "Taketo Takahashi", "Thug in purple", "Real Villain", "Disc Spring", "????", "Nagging Woman", "Suspicious Man", "Suspect", "Manager", "Suspicious Trash Can", "Villain", "Long-haired Villain", "Grandma", "Hero-dressed Fan", "Thug Leader", "Schoolgirl", "Narcissistic Schoolgirl", "Suspicious Person", "Shoto Todoroki", "Strange Man", "Escaped Worker", "Naomasa Tsukauchi", "Death Arms", "Hesitating Arsonist", "Passionate Voice", "Power Loader", "Student", "Principal Nezu", "Taichi Mitsumoto", "Aimi Mitsumoto", "Unknown Signal", "Sansa", "Injured Police", "Witch Doctor\'s Subject", "Midnight", "Hanta Sero", "Reporter", "Bank President", "Snipe", "Tourist", "Female Tourist", "Panicking Student", "Student", "Student", "Student", "Student A", "Student B", "Ground Manager", "Shop Owner", "Noisy Man", "Amusement Park Worker A", "Amusement Park Worker B", "Amusement Park Worker C", "Villain\'s Boss", "Disruptive Villains", "Panicking Woman", "Anxious Man", "Businesswoman", "Businesswoman", "Researcher", "Researcher\'s Assistant", "Power Loader", "Lab Worker", "Crying Child", "Child\'s Mother", "Pigeon", "Stray Cat", "Stray Dog", "Koji Koda", "Electronic Shop\'s Owner", "Denki Kaminari", "Amusement Part Security", "Fake Student", "Loud Person", "Well-trained Opponent", "Upset Child", "Hero Gacha", "Bald Man", "Shutterbug", "Grateful Hero", "Grateful Staff", "News Editor", "Schoolgirl", "Picky Puppy", "Katsuki Bakugo", "Eijiro Kirishima", "Gran Torino", "Girl in the Dark", "Curious Female Student", "Restarted Drone", "Momo Yaoyorozu", "Excited Researcher", "Lost Child", "Father at Ease", "Happy Kid", "ALL FOR ONE", "Worried Hero", "City Bus Station"}
, 
Sort = {["Gτ¡ëσ╛àΦ┐¢σàÑτè╢µ\128\129"] = 155, ["GΘöüµîëΘÆ\174"] = 156, ["opΦâ╜ΘçÅµ¥íµÿ╛τñ║ΘÜÉΦù\143"] = 98, ["Σ╕╗σƒÄσü£µ¡óσ»╗Φ╖»"] = 26, ["Σ╕╗σƒÄσÉîµ¡ÑΣ╕╗ΦºÆσ¥Éµáçτ╗Öµ£ìσèíσÖ¿"] = 25, ["Σ╕╗σƒÄµëïµ£║σè¿Σ╜£σÆîΘò£σñ\180"] = 80, ["Σ╕╗τ║┐σà│σìíµê¬σ¢╛"] = 168, ["Σ╕╗ΦºÆµÆ¡µö╛Idleσè¿Σ╜£"] = 39, ["Σ╗àUIσìòµîëΘö«µ£ëµò\136"] = 162, ["Σ╗àσàüΦ«╕µ╗æσè¿σ▒Åσ╣\149"] = 165, ["Σ╗àσìòµîëΘö«µ£ëµòê"] = 163, ["Σ╗àσìòµîëΘö«µ╗æσè¿µ£ëµòê"] = 167, ["Σ┐¥σ¡ÿτ¢╕µ£║σÅéµò░"] = 8, ["σü£µ¡óΣ╜┐τö¿σëºµâàΘò£σñ┤"] = 77, ["σü£µ¡óσÄƒτö╗Θ£çσè¿"] = 123, ["σü£µ¡óµÆ¡µö╛Flash"] = 130, ["σü£µ¡óτë╣µòê"] = 111, ["σü£µ¡óτ¢╕µ£║σÅÿµìóσê\176"] = 60, ["σü£µ¡óτº╗σè¿τ╗äΣ╗╢"] = 181, ["σü£µ¡óΦâîµÖ»Θƒ│Σ╣É"] = 107, ["σü£µ¡óΦç¬σè¿µêÿµûù"] = 202, ["σü£µ¡óΦºåΘóæ"] = 126, ["σü£µ¡óΦºÆΦë▓τº╗σè¿"] = 43, ["σü£µ¡óΘƒ│µòê"] = 102, ["σàüΦ«╕/τªüµ¡óτé╣σç╗"] = 1, ["σàüΦ«╕/τªüµ¡óτé╣σç╗σ£║µÖ»σ»╣Φ▒í"] = 2, ["σàüΦ«╕σè¿Σ╜£Θò£σñ┤"] = 81, ["σà│σìíµù╢Θù┤µÜéσü£"] = 183, ["σåÆµ│íµ╢êµü»"] = 35, ["σçÅσ░æµè\128Φâ╜CD"] = 161, ["σêçµìóσü£σ╕ºτè╢µ\128\129"] = 169, ["σêçµìóσ╜ôσëìΣ╜┐τö¿ΦºÆΦë▓"] = 48, ["σêçµìóΦºåΦºÆΘò£σñ┤"] = 71, ["σê¢σ╗║Npc"] = 14, ["σê¢σ╗║QTE"] = 137, ["σê¢σ╗║σàëµƒ▒"] = 114, ["σê¢σ╗║µÇ¬τë⌐"] = 143, ["σê¢σ╗║Φí¿µâà"] = 131, ["σê¢σ╗║ΦºªσÅæσÖ\168"] = 135, ["σêáΘÖñBUFF"] = 139, ["σêáΘÖñNpc"] = 15, ["σêáΘÖñσàëµƒ▒"] = 115, ["σêáΘÖñσ¢╛τëç"] = 134, ["σêáΘÖñµÇ¬τë⌐"] = 144, ["σêáΘÖñτòîΘ¥óτë╣µòê"] = 113, ["σêáΘÖñΦí¿µâà"] = 132, ["σêáΘÖñΦºªσÅæσÖ\168"] = 136, ["σêáΘÖñΘÇÜΦ«»σ»╣Φ»¥µí\134"] = 28, ["σêáΘÖñΘò£σñ┤τ╗æσ«Ü"] = 75, ["σëºµâàσÉÄΣ╕ìµüóσñìΘò£σñ┤τ╗æσ«ÜΣ╕╗ΦºÆ"] = 211, ["σëºµâàΦ╖│Φ┐çσ╝\128σà\179"] = 189, ["σè¿Σ╜£µù╢Θù┤σçÅτ╝ô"] = 142, ["σî║σƒƒσê╖µ\128\170"] = 145, ["σÄïµÜùΦâîµÖ»Θƒ│Σ╣É"] = 108, ["σÅûµ╢êσà│σìíΘò£σñ┤σÇìτÄç"] = 97, ["σÅûµ╢êσè¿Σ╜£Θò£σñ┤"] = 82, ["σÅûµ╢êσìòµîëΘö«µ£ëµò\136"] = 166, ["σÅûµ╢êΘò£σñ┤µîüτ╗¡τ╗æσ«Üσ»╣Φ▒íΘ¬¿Θ¬╝"] = 57, ["σ£║µÖ»σÄïµÜù∩╝êΣ║║τë⌐Σ╕ìσ╜▒σôì∩╝\137"] = 89, ["σ«îµêÉτ½₧µèÇσ£║σ╜ôσëìσ╝òσ»\188"] = 191, ["σ»╣σ║öσê¢σ╗║τÄ⌐σ«╢npc"] = 19, ["σ»╣σ║öσêáΘÖñτÄ⌐σ«╢npc"] = 20, ["σ▒Åσ╣òµ¿íτ│èµòêµ₧£"] = 85, ["σ▒Åσ╣òµ╕ÉσÅÿτÖ\189/Θ╗\145"] = 86, ["σ▒Åσ╣òµ╕ÉσÅÿΘ╗\145"] = 9, ["σ╗╢Φ┐ƒ"] = 5, ["σ╝\128σà│µ¿íσ₧ïΦÖÜσî\150"] = 44, ["σ╝\128σà│ΦºÆΦë▓σ╜▒σ¡\144"] = 47, ["σ╝\128σà│ΦºÆΦë▓Θÿ╗µî\161"] = 45, ["σ╝\128σÉ\175/σà│Θù¡3dµ╕▓µƒô"] = 210, ["σ╝\128σÉ\175/σà│Θù¡µ╗ñΘò£"] = 93, ["σ╝\128σÉ»σÄƒτö╗µ¿íσ╝\143"] = 116, ["σ╝\128σÉ»σÉîµ¡ÑσèáΦ╜\189"] = 184, ["σ╝\128σÉ»Φç¬σè¿ΘöüµÇ\170"] = 146, ["σ╝\128σºïΣ╜┐τö¿σëºµâàΘò£σñ\180"] = 76, ["σ╝║σê╢σ╝\128σÉ»Φâ╜σè¢µèÇ"] = 199, ["σ╝║σê╢µÆ¡µö╛σëºµâà"] = 213, ["µüóσñìAI"] = 13, ["µüóσñìσ£║µÖ»Bloom"] = 204, ["µüóσñìµ¿íσ₧ïσàëµ║É"] = 51, ["µüóσñìµ╕╕µêÅ"] = 160, ["µëôσ╝ÇΣ║║τë⌐µö╗τòÑτòîΘ¥ó"] = 178, ["µëôσ╝ÇΦüîσ£║ΦºüΣ╣áτö│Φ»╖Σ╣\166"] = 194, ["µëôσ╝ÇΦ╜╗σ║ªτ╗äΘÿƒµ£¼σ«¥τ«▒τòîΘ¥\162"] = 195, ["µëºΦíîσ╕ºΣ║ïΣ╗\182"] = 180, ["µëºΦíîµêÿσ╜╣σ£░σ¢╛µîçΣ╗ñ"] = 200, ["µîçσ«Üσ»╣Φ▒íµÄëΦÉ╜Buff"] = 188, ["µîçσ«Üµè\128Φâ╜µîëΘÆ«σ╝╣Φ╡\183"] = 164, ["µÄºΣ╗╢Θ½ÿΣ║«"] = 171, ["µÄºσê╢µÅÉτñ║µÿ╛ΘÜÉ"] = 185, ["µÅÆσàÑΘ╗æσ£║"] = 88, ["µÆ¡µö╛Flash"] = 129, ["µÆ¡µö╛Σ╕ïΣ╕ÇΣ╕¬τ½₧µè\128σ£║σëºµâ\133"] = 206, ["µÆ¡µö╛Σ┐íσÅ╖σíöσ╝ÇσÉ»σëºµâ\133"] = 177, ["µÆ¡µö╛σà│σìíτÄ⌐µ│òσè¿τö╗"] = 186, ["µÆ¡µö╛σ£║µÖ»ΦºÆΦë▓σ»╣Φ»¥"] = 37, ["µÆ¡µö╛τë╣µòê"] = 110, ["µÆ¡µö╛τòîΘ¥óτë╣µòê"] = 112, ["µÆ¡µö╛ΦâîµÖ»Θƒ│Σ╣É"] = 104, ["µÆ¡µö╛ΦºåΘóæ"] = 125, ["µÆ¡µö╛Θƒ│µòê"] = 101, ["µû░τ¢╕µ£║σÅÿµìóσê░"] = 7, ["µû░Θò£σñ┤σêçµìóσê░"] = 6, ["µùáΦºåΘÿ╗µîíσ╝\128σà\179"] = 46, ["µÿ»σÉªσàüΦ«╕µïûσè¿σ▒Åσ╣ò"] = 182, ["µÿ╛τñ║/σà│Θù¡µêÿσ╜╣σ£░σ¢╛"] = 198, ["µÿ╛τñ║/σà│Θù¡µêÿσ╜╣τ¢«µáçΘ¥óµ¥┐"] = 197, ["µÿ╛τñ║/ΘÜÉΦùÅBossΦí\128µ¥\161"] = 148, ["µÿ╛τñ║/ΘÜÉΦùÅσà│σìíσ╝òσ»╝τë╣µòê"] = 147, ["µÿ╛τñ║/ΘÜÉΦùÅσ»╣Φ▒íσêùΦí¿"] = 23, ["µÿ╛τñ║/ΘÜÉΦùÅΦºÆΦë▓"] = 16, ["µÿ╛τñ║UIτòîΘ¥ó"] = 59, ["µÿ╛τñ║σÇÆΦ«íµù╢µ╢êσñ▒σ░Åτ▓╛τü╡σ»╣Φ»¥µí\134"] = 31, ["µÿ╛τñ║σÄƒτö╗Σ╕ìΦºäσêÖΘ£çσè\168"] = 124, ["µÿ╛τñ║σÄƒτö╗Θ£çσè¿"] = 122, ["µÿ╛τñ║σ¢╛τëç"] = 133, ["µÿ╛τñ║σ¡ùσ╣ò"] = 32, ["µÿ╛τñ║σ»╣Φ»¥µí\134"] = 10, ["µÿ╛τñ║σ░Åτ▓╛τü╡σ»╣Φ»¥µíå"] = 30, ["µÿ╛τñ║τö╗Φ┤¿ΘÇëµï⌐τ¬ùσÅú"] = 150, ["µÿ╛τñ║τ½₧µèÇσ£║τÜäµ£║σÖ¿Σ║\186"] = 207, ["µÿ╛τñ║τ▒╗Σ╝╝Σ╕╗τòîσ»╣Φ»¥µí\134"] = 29, ["µÿ╛τñ║ΘÇÜΦ«»σ»╣Φ»¥µí\134"] = 27, ["µÜéσü£/µüóσñìΦºåΘóæ"] = 127, ["µÜéσü£/µüóσñìΘƒ│µòê"] = 128, ["µÜéσü£AI"] = 12, ["µÜéσü£µ╕╕µêÅ"] = 159, ["µÜéσü£ΦâîµÖ»Θƒ│Σ╣É"] = 105, ["µ¢┐µìóσ»╣Φ▒íΘàìΣ╗╢"] = 41, ["µ╡ïΦ»òΘƒ│µòêΘƒ│ΘçÅ"] = 205, ["µ╖╗σèáBUFF"] = 138, ["µ╖╗σèáσÄƒτö╗σ▒éτ║º"] = 117, ["µ╖╗σèáσÄƒτö╗σ▒éτ║ºσè¿Σ╜£"] = 118, ["µ╖╗σèáσÄƒτö╗τº╗σè¿σê░µîëΘÆ\174"] = 120, ["µ╖╗σèáσÄƒτö╗τ╗äσÉêσè¿Σ╜£"] = 119, ["µ╖╗σèáµ╗ñΘò£"] = 91, ["µ╕àΘÖñ/σê¢σ╗║σà¿σ▒ÅΘÿ╗µîíµîëΘÆ«"] = 174, ["µ╕àΘÖñσà¿Θâ¿Θƒ│µòê"] = 103, ["µ╕àΘÖñσÄƒτö╗µ¿íσ╝Å"] = 121, ["µ╕àΘÖñσ¡ùσ╣ò"] = 33, ["µ╕àΘÖñµ╗ñΘò£"] = 92, ["µ╕àΘÖñτ½₧µèÇσ£║µìóΣ║║cd"] = 196, ["µ╕àΘÖñτ╝ôσ¡ÿ"] = 153, ["µ╕àΘÖñΘù¬Θü┐QTEσå╖σì┤"] = 209, ["µ╕╕µêÅµù╢Θù┤σçÅτ╝ô"] = 140, ["µ╕╕µêÅΘò£σñ┤µùïΦ╜¼"] = 70, ["µ╝öτñ║σà│Θ\128Üσà│σëºµâà"] = 151, ["τé╣σç╗Φ╖│Φ┐ç"] = 173, ["τÄ⌐σ«╢µîçΣ╗ñµëºΦíîσü£µ¡óσ╝\128σà\179"] = 212, ["τ¢╕µ£║σÅÿµìóσê\176"] = 95, ["τ¢╕µ£║σÅÿµìóσê\176(σ╕ªµÖâσè\168)"] = 54, ["τ¢╕µ£║σ╣┐ΦºÆσÅÿσîû"] = 73, ["τ¢╕µ£║µ║Éτé╣µÖâσè¿"] = 52, ["τ¢╕µ£║ΦºåΦ╖¥µÖâσè¿"] = 53, ["τ¢╕µ£║Θ£çσè¿"] = 72, ["τ¡ëσ╛àσëºµâàΣ║ïΣ╗╢"] = 158, ["τ¡ëσ╛àσÉÄµæçΣ║ïΣ╗╢"] = 157, ["τ¡ëσ╛àµæçµ¥åσè¿Σ╜£"] = 179, ["τ╗ôµ¥ƒσëºµâàΣ┐¥µîüΘò£σñ┤"] = 78, ["τ╗ºτ╗¡ΦâîµÖ»Θƒ│Σ╣É"] = 106, ["ΦºÆΦë▓µÅÅΦ╛╣τ╝⌐µö╛"] = 42, ["ΦºÆΦë▓µÆ¡µö╛σè¿Σ╜£"] = 17, ["ΦºÆΦë▓τº╗σè¿"] = 18, ["ΦºÆΦë▓Φä╕Θâ¿µÆ¡µö╛σè¿Σ╜£"] = 40, ["Φºúτ╗æΦºÆΦë▓τÜäσè¿Σ╜£Θò£σñ\180"] = 83, ["Φ«╛τ╜«OP"] = 109, ["Φ«╛τ╜«pvpΘÇ\128σç║µîëΘÆ«τè╢µÇ\129"] = 208, ["Φ«╛τ╜«Σ╜ìτ╜«"] = 11, ["Φ«╛τ╜«σà│σìíΘò£σñ┤σÇìτÄç"] = 96, ["Φ«╛τ╜«σëºµâàσÉÄσ£║µÖ»Θò£σñ\180"] = 79, ["Φ«╛τ╜«σ£║µÖ»Bloom"] = 203, ["Φ«╛τ╜«σ£║µÖ»µÿ»σÉªµÿ╛τñ║"] = 152, ["Φ«╛τ╜«σ»╣Φ▒íΣ╜ìτ╜«"] = 24, ["Φ«╛τ╜«σ░ÅΣ╕╗σƒÄµ░öµ│\161"] = 34, ["Φ«╛τ╜«µ¿íσ₧ïσàëµ║É"] = 50, ["Φ«╛τ╜«ΦúüσçÅΦ╖¥τª╗σÇìµò░"] = 193, ["Φ░âµò┤µ¿íσ₧ïΘó£Φë▓"] = 49, ["Φ╜¼σÉæ"] = 21, ["Φ╜¼µÄÑσëºµâà"] = 154, ["Φ┐ÿσÄƒµ╕╕µêÅµù╢Θù┤σçÅτ╝ô"] = 141, ["Φ┐¢σàÑτé«σÅ░"] = 175, ["ΘÇ\128σç║σà│σìíσ╝╣τ¬\151"] = 192, ["ΘÇ\128σç║τé«σÅ\176"] = 176, ["ΘÇëΘí╣σ»╣Φ»¥µí\134"] = 38, ["ΘÇÜσà│σ╜ôσëìσà│σìí"] = 149, ["ΘÇÜσà│τ╗ôµ¥ƒσëºµâà"] = 201, ["Θçèµö╛ΘóäσèáΦ╜╜Θƒ│µò\136"] = 100, ["Θçìτ╜«Θ¼╝τ£╝"] = 190, ["Θò£σñ┤σêçσê░σ»╣Φ»¥"] = 61, ["Θò£σñ┤σêçσê░τ¢«µáç"] = 62, ["Θò£σñ┤σêçµìóσê\1762"] = 63, ["Θò£σñ┤σêçµìóσê\1763"] = 94, ["Θò£σñ┤σêçµìóσê\1765"] = 64, ["Θò£σñ┤σÅÿµìóσê░σ»╣Φ▒\161"] = 55, ["Θò£σñ┤σÉîµ¡Ñσ╝\128σà\179"] = 90, ["Θò£σñ┤µîüτ╗¡τ╗æσ«Üσ»╣Φ▒íΘ¬¿Θ¬╝"] = 56, ["Θò£σñ┤µùïΦ╜¼Φ┐Éσè¿"] = 68, ["Θò£σñ┤µá╣µì«σ»╣Φ▒íσÅÿµìóσê\176"] = 58, ["Θò£σñ┤µ¿íτ│èµòêµ₧£"] = 84, ["Θò£σñ┤µ░┤σ╣│µùïΦ╜¼Φ┐Éσè¿"] = 66, ["Θò£σñ┤τ¢┤τ║┐Φ┐Éσè¿"] = 69, ["Θò£σñ┤τ╗æσ«Üσ£║µÖ»σ»╣Φ▒í"] = 74, ["Θò£σñ┤ΦºåΦºÆΦ╜¼σè¿"] = 65, ["Θò£σñ┤Φ╖ƒΘÜÅΣ╕╗ΦºÆµ░┤σ╣│µùïΦ╜¼Φ┐Éσè¿"] = 67, ["Θù¬Θü┐QteµÄºσê╢∩╝êσìòΣ║║∩╝ë"] = 187, ["ΘÜÉΦùÅ/µÿ╛τñ║µÄºΣ╗╢"] = 172, ["ΘÜÉΦùÅUIτòîΘ¥ó"] = 3, ["ΘÜÉΦùÅσåÆµ│íµ╢êµü»"] = 36, ["ΘÜÉΦùÅσ╜ôσëìΣ╕╗ΦºÆ"] = 4, ["ΘÜÉΦùÅσ╜ôσëìΣ╕╗ΦºÆσÉìσ¡ù"] = 22, ["ΘÜÉΦùÅµè\128Φâ╜µîëΘÆ\174"] = 170, ["ΘóäσèáΦ╜╜Θƒ│µò\136"] = 99, ["Θ╗æσ£║µëôσ¡ùµ£\186"] = 87}
, 
SoundDialogue = {}
, 
Subtitles = {
{
{Content = "You can call me Deku, but IΓÇÖm not the same helpless, defenseless kid anymore!", Id = 1, StayTime = 3}
, 
{Content = "You hear me? IΓÇÖve changed.", Id = 1, StayTime = 3}
, 
{Content = "From now on Deku is the name of a hero!", Id = 1, StayTime = 3}
}
, 
{
{Content = "Don\'t give me that look!", Id = 2, StayTime = 3}
}
, 
{
{Content = "Σ╗Äσ░Åµù╢σ\128Öσ╝Çσº\139 σ░▒Σ╕Çτ¢┤Θéúτºìµá╖σ¡\144", Id = 3, StayTime = 3}
, 
{Content = "Did you think you were better than me this entire time?", Id = 3, StayTime = 3}
}
; 
[10] = {
{Content = "Midoriya: No! I\'m falling behind!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 10, StayTime = 2}
}
, 
[100] = {
{Content = "Quest Updated", Id = 100}
}
, 
[101] = {
{Content = "Commission Info Detected", Id = 101}
}
, 
[102] = {
{Content = "Search for Quest Info", Id = 102}
}
, 
[103] = {
{Content = "Maybe there are secrets at the facility, I should ask Naomasa Tsukauchi about it.", Id = 103}
}
, 
[104] = {
{Content = "Search Completed", Id = 104}
}
, 
[105] = {
{Content = "Search for Nearby Commissions", Id = 105}
}
, 
[106] = {
{Content = "Three unknown data source detected", Id = 106}
}
, 
[107] = {
{Content = "The antenna tower\'s prone to attack now! Destroy it as soon as possible!", Id = 107}
}
, 
[108] = {
{Content = "Hunter bots activated...", Id = 108}
}
, 
[109] = {
{Content = "Intruders detected! Intruders detected!", Id = 109}
}
, 
[11] = {
{Content = "Midoriya: Oh! Sorry!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 11, StayTime = 2}
}
, 
[110] = {
{Content = "Dodge any villain and reach the destination in time!", Id = 110}
}
, 
[111] = {
{Content = "S-Starting the training mission!", Id = 111}
}
, 
[112] = {
{Content = "Attempting to fix the error...", Id = 112}
}
, 
[113] = {
{Content = "Data error, attempting to fix...", Id = 113}
}
, 
[114] = {
{Content = "Destroy the signal device and eliminate the Faux Villains ╬┤!", Id = 114}
}
, 
[115] = {
{Content = "*Panting*", Id = 115}
}
, 
[116] = {
{Content = "I... can still...", Id = 116}
}
, 
[117] = {
{Content = "I can\'t stop here.", Id = 117}
}
, 
[118] = {
{Content = "I have to... catch up to him...!", Id = 118}
}
, 
[119] = {
{Content = "I won\'t stop now... Almost there...", Id = 119}
}
, 
[12] = {
{Content = "Midoriya: Sorry! It\'s an emergency!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 12, StayTime = 2}
}
, 
[120] = {
{Content = "I must try even harder...", Id = 120}
}
, 
[121] = {
{Content = "Indeed", Id = 121}
}
, 
[122] = {
{Content = "Did I... push myself too far...?", Id = 122}
}
, 
[123] = {
{Content = "I... I can still do this!", Id = 123}
}
, 
[124] = {
{Content = "Damn! How could this be!", Id = 124}
}
, 
[125] = {
{Content = "Midoriya: Nice! We can do it!", Id = 125}
}
, 
[126] = {
{Content = "Hold up!", Id = 126}
}
, 
[127] = {
{Content = "Masked Man: You don\'t need to know the truth, because you\'re gonna be dead!", Id = 127}
}
, 
[128] = {
{Content = "Midoriya: They got away! I\'m still too weak...!", Id = 128}
}
, 
[129] = {
{Content = "Midoriya: What a crowd! I should try not run into anyone!", Id = 129}
}
, 
[13] = {
{Content = "Midoriya: A shortcut! I should take it!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 13, StayTime = 2}
}
, 
[130] = {
{Content = "Construction in progress...", Id = 130}
}
, 
[131] = {
{Content = "Didn\'t I make up my mind at that time?", Id = 131}
}
, 
[132] = {
{Content = "No matter what anyone else thinks, I have to believe in myself.", Id = 132}
}
, 
[133] = {
{Content = "My body. Getting. Weak.", Id = 133}
}
, 
[134] = {
{Content = "Have  no fear, you are safe.", Id = 134}
}
, 
[135] = {
{Content = "Texas  Smash", Id = 135}
}
, 
[136] = {
{Content = "The black cat starts eating happily.", Id = 136}
}
, 
[137] = {
{Content = "Bruce starts eating happily.", Id = 137}
}
, 
[138] = {
{Content = "Gary starts eating happily", Id = 138}
}
, 
[139] = {
{Content = "Mikan starts eating happily.", Id = 139}
}
, 
[14] = {
{Content = "Midoriya: Stop! You can\'t get away now!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 14, StayTime = 2}
}
, 
[140] = {
{Content = "Sophia starts eating happily.", Id = 140}
}
, 
[141] = {
{Content = "Blossom starts eating happily.", Id = 141}
}
, 
[142] = {
{Content = "ThatΓÇÖs one huge supervillain!", Id = 142}
}
, 
[145] = {
{Content = "Kamui Woods", Id = 145}
}
, 
[146] = {
{Content = "He may be new, but heΓÇÖs making a big name for himself! ", Id = 146}
}
, 
[147] = {
{Content = "You are the incarnation of evil.", Id = 147}
}
, 
[148] = {
{Content = "Canyon Cannon!", Id = 148}
}
, 
[149] = {
{Content = "Wait, sheΓÇÖs getting all the credit?", Id = 149}
}
, 
[15] = {
{Content = "Midoriya: Just dash over!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 15, StayTime = 2}
}
, 
[150] = {
{Content = "Well sheΓÇÖs definitely got the looks and attitude to be a crowd favorite, and her Quirk is really showy", Id = 150}
}
, 
[151] = {
{Content = "σ£¿Σ╕èτÅ¡Θ½ÿτ¡ëµù╢Θù┤Φ┐¥µ│òΣ╜┐τö¿Φâ╜σè\155 Σ╗ÑσÅèµèóσè½Σ╝ñΣ║║", Id = 151}
}
, 
[152] = {
{Content = "Lacquered Chain Prison!", Id = 152}
}
, 
[153] = {
{Content = "Piece of cake for the worldΓÇÖs next hottest hero. Hi there, everyone, IΓÇÖm Mt. Lady.", Id = 153}
}
, 
[154] = {
{Content = "Gigantification, huh?", Id = 154}
}
, 
[16] = {
{Content = "Midoriya: I have to dodge everyone!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 16, StayTime = 2}
}
, 
[160] = {
{Content = "My dream didn\'t die!", Id = 160}
}
, 
[161] = {
{Content = "Is it possible to become a hero, even if I donΓÇÖt have a Quirk?", Id = 161}
}
, 
[162] = {
{Content = "IΓÇÖm a normal kid without any powers. ", Id = 162}
}
, 
[163] = {
{Content = "ItΓÇÖs not bad to have a dream, young man.", Id = 163}
}
, 
[164] = {
{Content = "I got this in a big fight five years back. ", Id = 164}
}
, 
[165] = {
{Content = "Which is a good things, because sometimes in this world, unexpected things happen.", Id = 165}
}
, 
[166] = {
{Content = "That\'s why meeting All Might", Id = 166}
}
, 
[167] = {
{Content = "the number one hero, changed my fate.", Id = 167}
}
, 
[168] = {
{Content = "Wait, not yet. One second.", Id = 168}
}
, 
[169] = {
{Content = "Could I ever hope to be someone like you?", Id = 169}
}
, 
[17] = {
{Content = "Σ╗ûΘâ╜σìçσê░σê¥Σ╕ëΣ║\134 τ╗ôµ₧£Σ╛¥µùºµ▓íµ£ëΦ«ñµ╕àτÄ░σ«₧σò\138", Font = "σ╛«Θ¢à", FontSize = 30, Id = 17, StayTime = 2}
}
, 
[170] = {
{Content = "Right now I can only do hero work for about three hours a day. ", Id = 170}
}
, 
[171] = {
{Content = "Pros are always risking their lives. That\'s the true test of a hero!", Id = 171}
}
, 
[172] = {
{Content = "Just make sure your dreams are attainable. Realistic. Understand?", Id = 172}
}
, 
[173] = {
{Content = "Not good.", Id = 173}
}
, 
[174] = {
{Content = "Same time, shopping district", Id = 174}
}
, 
[175] = {
{Content = "ItΓÇÖs a monster!", Id = 175}
}
, 
[176] = {
{Content = "Stay back or IΓÇÖll snap his neck", Id = 176}
}
, 
[177] = {
{Content = "You picked the wrong guy to mess with! I\'m gonna send you back to whatever sewer you crawled out of!", Id = 177}
}
, 
[178] = {
{Content = "ThatΓÇÖs strange. Is the fight from earlier still going on?", Id = 178}
}
, 
[179] = {
{Content = "Deep down, you knew this all along.", Id = 179}
}
, 
[18] = {
{Content = "As third-year students, itΓÇÖs time to start thinking seriously about your futures and what you want to do with your lives. ", Font = "σ╛«Θ¢à", FontSize = 30, Id = 18, StayTime = 2}
}
, 
[180] = {
{Content = "YouΓÇÖve just been avoiding reality.That\'s why you were trying so desperately to prove yourself wrong. ", Id = 180}
}
, 
[181] = {
{Content = "What am I doing?", Id = 181}
}
, 
[182] = {
{Content = "What do I do? What would a hero do right now?", Id = 182}
}
, 
[183] = {
{Content = "Page 25! Right!", Id = 183}
}
, 
[184] = {
{Content = "ThatΓÇÖs the guy who attacked me!", Id = 184}
}
, 
[185] = {
{Content = "No, you idiot! Stop!", Id = 185}
}
, 
[186] = {
{Content = "Why am I running? Why can\'t I stop?", Id = 186}
}
, 
[187] = {
{Content = "That means... It\'s my fault.", Id = 187}
}
, 
[188] = {
{Content = "But the bottle. If he dropped it.", Id = 188}
}
, 
[189] = {
{Content = "That canΓÇÖt be right. All Might captured him.", Id = 189}
}
, 
[19] = {
{Content = "Make sure your dreams are attainable.", Font = "σ╛«Θ¢à", FontSize = 30, Id = 19, SoundId = 9092, StayTime = 2}
}
, 
[190] = {
{Content = "Maybe it was the look on his face", Id = 190}
}
, 
[191] = {
{Content = "I told you the traits that make a great. champion, But I see now I wasnΓÇÖt living up to my own ideal.", Id = 191}
}
, 
[192] = {
{Content = "Kacchan!", Id = 192}
}
, 
[193] = {
{Content = "What the hell? Why are you here?", Id = 193}
}
, 
[194] = {
{Content = "I couldnΓÇÖt just stand there and watch you die!", Id = 194}
}
, 
[195] = {
{Content = "So when I saw this timid Quirkless boy try to save a life, it inspired me to act too.", Id = 195}
}
, 
[196] = {
{Content = "There are stories about every hero. How they became great. ", Id = 196}
}
, 
[197] = {
{Content = "Most have one thing in common. ", Id = 197}
}
, 
[198] = {
{Content = "Their bodies moved before they had a chance to think.", Id = 198}
}
, 
[199] = {
{Content = "The Sludge Villain left a big mess in the streets, but the heroes quickly cleaned everything up. Anything they gathered was turned over to the police.", Id = 199}
}
, 
[20] = {
{Content = "Even All Might said itΓÇ\166", Font = "σ╛«Θ¢à", FontSize = 30, Id = 20, SoundId = 9093, StayTime = 2}
}
, 
[200] = {
{Content = "Then on my way back home... something happened.", Id = 200}
}
, 
[201] = {
{Content = "And today. ThatΓÇÖs what happened to you. ", Id = 201}
}
, 
[202] = {
{Content = "Young man. You, too, can become a hero. ", Id = 202}
}
, 
[203] = {
{Content = "Young man. I came here to thank you. And also to discuss your question from earlier. ", Id = 203}
}
, 
[204] = {
{Content = "You told me you didn\'t have a power.", Id = 204}
}
, 
[207] = {
{Content = "Heroes", Id = 207}
}
, 
[208] = {
{Content = "But...", Id = 208}
}
, 
[209] = {
{Content = "Just give up...", Id = 209}
}
, 
[21] = {
{Content = "Yeah, I can do it!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 21, StayTime = 2}
}
, 
[210] = {
{Content = "the courageous people who keep our cities safe. They serve as peacekeepers.", Id = 210}
}
, 
[211] = {
{Content = "It\'s their duty to protect us by fighting against villains who abuse their powers for evil.", Id = 211}
}
, 
[212] = {
{Content = "I\'ve been wanting to be a hero, ever since I was little.", Id = 212}
}
, 
[213] = {
{Content = "After seeing that hero\'s silhouette from that video,", Id = 213}
}
, 
[214] = {
{Content = "YouΓÇÖre even worse than the rest of these damn rejects, you Quirkless wannabe", Id = 214}
}
, 
[215] = {
{Content = "I couldnΓÇÖt just give up on my goal.", Id = 215}
}
, 
[216] = {
{Content = "You really think theyΓÇÖd let someone like you in when they could have me?", Id = 216}
}
, 
[217] = {
{Content = "I should head back for now.", Id = 217}
}
, 
[218] = {
{Content = "Listen up Deku.", Id = 218}
}
, 
[219] = {
{Content = "Antenna tower activated, transmitting data...", Id = 219}
}
, 
[22] = {
{Content = "Is it... raining?", Font = "σ╛«Θ¢à", FontSize = 30, Id = 22, StayTime = 2}
}
, 
[220] = {
{Content = "Tap to activate the ability.", Id = 220}
}
, 
[221] = {
{Content = "Tap to use normal attack.", Id = 221}
}
, 
[222] = {
{Content = "Assault, robbery, and the illegal use of powers during rush hour traffic. ", Id = 222}
}
, 
[223] = {
{Content = "The world became a superhuman society", Id = 223}
}
, 
[224] = {
{Content = "With about eighty percent of the population possessing some uncanny ability. ", Id = 224}
}
, 
[225] = {
{Content = "As cities swirled with chaos and confusion, a new profession dominated our collective consciousness.  ", Id = 225}
}
, 
[226] = {
{Content = "Our streets looked like scenes from comic books. ", Id = 226}
}
, 
[227] = {
{Content = "All Might, the symbol of peace, a hero among heroes!", Id = 227}
}
, 
[228] = {
{Content = "I wanted to be just like him, saving citizens with a huge smile on my face.", Id = 228}
}
, 
[229] = {
{Content = "Among them, I\'ve idolized one person my whole life. ", Id = 229}
}
, 
[23] = {
{Content = "That\'s right, keep up the pace!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 23, StayTime = 2}
}
, 
[230] = {
{Content = "Here\'s the sad truth of the world. ", Id = 230}
}
, 
[231] = {
{Content = "It turns out that all men are not created equal.", Id = 231}
}
, 
[232] = {
{Content = "When I was four years old, I learned that some kids have more power than others.", Id = 232}
}
, 
[24] = {
{Content = "I can still do it!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 24, StayTime = 2}
}
, 
[25] = {
{Content = "Keep it up!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 25, StayTime = 2}
}
, 
[26] = {
{Content = "When the villains are far, use abilities to close the gap.", Id = 26}
}
, 
[27] = {
{Content = "Tap the attack button to approach the villains.", Id = 27}
}
, 
[28] = {
{Content = "Old Town - Business Street", Id = 28}
}
, 
[29] = {
{Content = "Old Town - Residential Area", Id = 29}
}
, 
[30] = {
{Content = "Just give up on this dream...", Id = 30}
}
, 
[31] = {
{Content = "I\'m sorry. So sorry...", Id = 31}
}
, 
[32] = {
{Content = "σ»╣Σ╕ìΦ╡\183 σç║Σ╣à", Id = 32}
}
, 
[33] = {
{Content = "At the same time...", Id = 33}
}
, 
[34] = {
{Content = "I am here!", Id = 34}
}
, 
[35] = {
{Content = "The world became a superhuman society, with about eighty percent of the population possessing some uncanny ability. ", Id = 35}
}
, 
[36] = {
{Content = "A Super Society populated by people with superhuman abilities", Id = 36}
}
, 
[37] = {
{Content = "With the appearance of the abnormality", Id = 37}
}
, 
[38] = {
{Content = "The crime rate has also exploded.", Id = 38}
}
, 
[39] = {
{Content = "It was an age of heroes. ", Id = 39}
}
, 
[390] = {
{Content = "Alright, leave it to me!", Id = 390}
}
, 
[391] = {
{Content = "Same time, business street...", Id = 391}
}
, 
[392] = {
{Content = "Don\'t worry, backup has arrived!", Id = 392}
}
, 
[40] = {
{Content = "As cities swirled with chaos and confusion, a new profession dominated our collective consciousness.  ", Id = 40}
}
, 
[41] = {
{Content = "Have no fear, students.", Id = 41}
}
, 
[415] = {
{Content = "even my sleep time was scheduled.", Id = 415}
}
, 
[416] = {
{Content = "No way can I slack off.", Id = 416}
}
, 
[417] = {
{Content = " I have to keep this up even if All Might\'s not watching.", Id = 417}
}
, 
[418] = {
{Content = "His plan was so comprehensive", Id = 418}
}
, 
[419] = {
{Content = "I have to work harder... Or I wonΓÇÖt stand a chance against the other applicants.", Id = 419}
}
, 
[42] = {
{Content = "If you can really withstand me firing at one hundred percent of my power.", Id = 42}
}
, 
[420] = {
{Content = "I persevered, kept training.", Id = 420}
}
, 
[421] = {
{Content = "YouΓÇÖre overworked....", Id = 421}
}
, 
[422] = {
{Content = "YouΓÇÖre overdoing things... ThatΓÇÖs gonna have the opposite effect of what we want!", Id = 422}
}
, 
[423] = {
{Content = "I want.... To be like you. I want.... To be the greatest hero in the world!", Id = 423}
}
, 
[424] = {
{Content = "And seeing my progress, All Might adjusted his special regimen.", Id = 424}
}
, 
[425] = {
{Content = "I hadn\'t exactly had a chance to test out my new power yet.", Id = 425}
}
, 
[426] = {
{Content = "My next step toward becoming a hero!", Id = 426}
}
, 
[43] = {
{Content = "Then I\'ll use greater power to knock you out.", Id = 43}
}
, 
[44] = {
{Content = "Keep heading forward", Id = 44}
}
, 
[45] = {
{Content = "Plus Ultra", Id = 45}
}
, 
[452] = {
{Content = "I just... did what I thought was the right thing.", Id = 452}
}
, 
[453] = {
{Content = "Recovery Girl, the school nurse, healed me", Id = 453}
}
, 
[454] = {
{Content = "Fortunately, UA was prepared for that. ", Id = 454}
}
, 
[455] = {
{Content = "but still... I ended up with a big fat ZERO on the exam.", Id = 455}
}
, 
[456] = {
{Content = "After all, that is what makes a hero. And thatΓÇÖs what my alma mater is all about.", Id = 456}
}
, 
[457] = {
{Content = "I was still walking around in a daze. That\'s when the letter from UA finally arrived.", Id = 457}
}
, 
[458] = {
{Content = "I tried to do my best.", Id = 458}
}
, 
[459] = {
{Content = "During the exam, I jumped out in front of one of the robotic fake villains. I helped someone who was trapped.", Id = 459}
}
, 
[46] = {
{Content = "SMASH!", Id = 46}
}
, 
[460] = {
{Content = "But even though I got to her in time, it didn\'t change the fact that I hadn\'t managed to rack up a single point.", Id = 460}
}
, 
[461] = {
{Content = "You have made it. YouΓÇÖre now a part of the hero academia. ", Id = 461}
}
, 
[462] = {
{Content = "How could a hero course reject someone who is committed to saving others no matter the consequences to himself?", Id = 462}
}
, 
[463] = {
{Content = "A week after the exams ended,", Id = 463}
}
, 
[464] = {
{Content = "the practical exam was not graded on combat alone. ", Id = 464}
}
, 
[465] = {
{Content = "Thanks to the support of many people. My life continued to evolve.", Id = 465}
}
, 
[466] = {
{Content = "After All Might was done with his speech, we all headed to change into our new costumes. ", Id = 466}
}
, 
[47] = {
{Content = "Now see the true might of a Pro Hero.", Id = 47}
}
, 
[48] = {
{Content = "possess some kind of superpower, aka Quirk.", Id = 48}
}
, 
[483] = {
{Content = "Oh well.", Id = 483}
}
, 
[484] = {
{Content = "Show the owner the evidence", Id = 484}
}
, 
[485] = {
{Content = "Unfamiliar voice: Don\'t make excuses for your desires.", Id = 485}
}
, 
[486] = {
{Content = "It\'s my turn!", Id = 486}
}
, 
[487] = {
{Content = "Data received, alert, alert...", Id = 487}
}
, 
[488] = {
{Content = "Communications shut down...", Id = 488}
}
, 
[489] = {
{Content = "Then, we were split off into pairs. Two teams of two would be pitted against each other for indoor combat training.", Id = 489}
}
, 
[49] = {
{Content = "But all this time...", Id = 49}
}
, 
[490] = {
{Content = "In each match-up, one pair of classmates would play the heroes while the other would step into the role of villains.", Id = 490}
}
, 
[491] = {
{Content = "The good guys would have a time limit during which they had to either capture a fake weapon or apprehend their opponents. ", Id = 491}
}
, 
[492] = {
{Content = "The roles and groups were decided by a lottery drawing.", Id = 492}
}
, 
[493] = {
{Content = "Uraraka and I got paired up together, as heroes!", Id = 493}
}
, 
[494] = {
{Content = "This was it, the class I\'d been looking forward to was finally here!", Id = 494}
}
, 
[495] = {
{Content = "Meanwhile, the fake villains we\'d be taking on...", Id = 495}
}
, 
[496] = {
{Content = "Were Iida...", Id = 496}
}
, 
[497] = {
{Content = "and KACCHAN!?", Id = 497}
}
, 
[498] = {
{Content = "Hero basic training, with the number one pro!", Id = 498}
}
, 
[499] = {
{Content = "LetΓÇÖs get into it. TodayΓÇÖs lesson will pull no punches!", Id = 499}
}
, 
[50] = {
{Content = "µêæΣ╗¼Σ╗Äµ£¬σ»╣σ╜╝µ¡ñΦ»┤σç║τ£ƒσ┐âΦ»¥...", Id = 50}
}
, 
[500] = {
{Content = "our homeroom teacher of our class 1-A is Mr. Aizawa, out of nowhere,he announced will have a Quirk assessment test.", Id = 500}
}
, 
[501] = {
{Content = "No entrance ceremony nor orientation... Just challenge right off the bat.", Id = 501}
}
, 
[502] = {
{Content = "Σ╕\141 ΘéúΣ╕¬ΓÇªσ¢áΣ╕║σ»╣µëïµÿ»σ░ÅΦâ£", Id = 502}
}
, 
[503] = {
{Content = "I got it right!", Id = 503}
}
, 
[504] = {
{Content = "Ballsy move. Think you can take me alone?", Id = 504}
}
, 
[505] = {
{Content = "Σ╜åµÿ» µ¡úσ¢áΣ╕║Φ┐Öµá\183 µêæτÄ░σ£¿Γ\128ªΣ╕ìµâ│σåìΦ╛ôτ╗ÖΣ╗ûΣ║åΓÇ\166", Id = 505}
}
, 
[506] = {
{Content = "WhatΓÇÖll Kacchan do now? Knowing him, heΓÇÖll be impatient and try another big punch!", Id = 506}
}
, 
[507] = {
{Content = "Hey, stop right there, Deku!", Id = 507}
}
, 
[508] = {
{Content = "In every single aspect,#rhe\'s several times better than I am.", Id = 508}
}
, 
[509] = {
{Content = "I activated One for All just at the tip of my finger. ", Id = 509}
}
, 
[51] = {
{Content = "Quirk or no, youΓÇÖll never beat me, Deku!", Id = 51}
}
, 
[511] = {
{Content = "I got it!", Id = 511}
}
, 
[512] = {
{Content = "This is it! Sorry Iida!", Id = 512}
}
, 
[513] = {
{Content = "No! The weapon!", Id = 513}
}
, 
[514] = {
{Content = "The hero team.", Id = 514}
}
, 
[515] = {
{Content = "Wins!", Id = 515}
}
, 
[516] = {
{Content = "After some quick thinking, Uraraka and I pulled through.", Id = 516}
}
, 
[517] = {
{Content = "We defeated Iida and Kacchan.", Id = 517}
}
, 
[518] = {
{Content = "Of course it felt good, but even those teams who lost got good experience.", Id = 518}
}
, 
[519] = {
{Content = "Σ╜åσ£¿µêæΣ╗¼σÉäΦç¬σç¥ΦºåτÜäΘéúΣ╕¬µ£¬µ¥ÑΣ╕¡∩╝îΦ┐ÖΣ╕\128σ«Üµÿ»Σ╕ìσÅ»µêûτ╝║τÜäΣ╕ÇΦ»╛σÉº", Id = 519}
}
, 
[52] = {
{Content = "µêæΣ╗¼τí«σ«₧σ╖▓τ╗ÅΦ«ñΦ»åσ╛êΣ╣àΣ║\134", Id = 52}
}
, 
[520] = {
{Content = "We were growing stronger every day.", Id = 520}
}
, 
[521] = {
{Content = "Improvised special move: the Comet Home Run!", Id = 521}
}
, 
[522] = {
{Content = "And even though I didn\'t know it yet, soon...", Id = 522}
}
, 
[523] = {
{Content = "I was going to learn how terrifying villains could be... the hard way.", Id = 523}
}
, 
[524] = {
{Content = "That is the first step on your path, young man. Towards being a hero.", Id = 524}
}
, 
[525] = {
{Content = "Um.... All this?", Id = 525}
}
, 
[526] = {
{Content = "Young Midoriya. You wanna go to U.A., right?", Id = 526}
}
, 
[527] = {
{Content = "ItΓÇÖs a long shot. But still. IΓÇÖm gonna shoot for the moon.", Id = 527}
}
, 
[528] = {
{Content = "But,Hero-ing isnΓÇÖt easy to do without a Quirk. ", Id = 528}
}
, 
[529] = {
{Content = "That I have to prepare my body for your Quirk really fast. U.A.ΓÇÖs exam is in ten months!", Id = 529}
}
, 
[53] = {
{Content = "τ£ƒτ╛íµàòσ░ÅΦâ£σòè", Id = 53}
}
, 
[530] = {
{Content = "Not to worry, kid. IΓÇÖve got you covered.", Id = 530}
}
, 
[531] = {
{Content = "With the help of my handy ΓÇ£Aim to Pass: American Dream Plan!ΓÇ\157", Id = 531}
}
, 
[532] = {
{Content = "Then he made me an offer.", Id = 532}
}
, 
[533] = {
{Content = "Even my sleep is scheduled.", Id = 533}
}
, 
[534] = {
{Content = "If IΓÇÖm being honest, this is gonna be super hard. Think youΓÇÖre up to it?", Id = 534}
}
, 
[535] = {
{Content = "Yeah, sure I am. ", Id = 535}
}
, 
[536] = {
{Content = "I have to work way harder than anyone else to get in.... So what choice do I have, right?", Id = 536}
}
, 
[537] = {
{Content = "He gave me the chance to inherit One for All, his quirk.", Id = 537}
}
, 
[538] = {
{Content = "But in order to wield it, I had serious work to do.", Id = 538}
}
, 
[539] = {
{Content = "Hey, hey, hey. ItΓÇÖs pretty comfy up on this fridge, how are you doing down there?", Id = 539}
}
, 
[54] = {
{Content = "Explosion Burning Wheel", Id = 54}
}
, 
[540] = {
{Content = "Great much better, why do you have me dragging trash across the beach anyway?", Id = 540}
}
, 
[541] = {
{Content = "Heroes these days are all about showing off and capturing flashy villains. ", Id = 541}
}
, 
[542] = {
{Content = "You will restore the coastline for this entire section of the beach.", Id = 542}
}
, 
[543] = {
{Content = "Things were different before Quirks. Service was what mattered.", Id = 543}
}
, 
[544] = {
{Content = "The combined physical abilities of everyone whoΓÇÖs ever used it creates a hurricane of pure force. ", Id = 544}
}
, 
[545] = {
{Content = "So... that means I\'m here to clean up the trash... in order to improve my physical abilities?", Id = 545}
}
, 
[546] = {
{Content = "My Quirk, One For All, is a whole lot to handle.", Id = 546}
}
, 
[547] = {
{Content = "Come find me again when you are ready!", Id = 547}
}
, 
[548] = {
{Content = "Why do you have me dragging trash across the beach, anyway?", Id = 548}
}
, 
[549] = {
{Content = "An unprepared body canΓÇÖt fully inherit it. ", Id = 549}
}
, 
[55] = {
{Content = "Σ╕ìτ«íΣ╜áΦºëΘåÆσç║Σ╗\128Σ╣êΣ╕¬µÇ\167 Θâ╜τ╗¥σ»╣µ»öΣ╕ìΣ╕èµêæτÜäσò\166", Id = 55}
}
, 
[550] = {
{Content = "The UA entrance exam is tomorrow! I gotta clear up the rest of this trash before then!", Id = 550}
}
, 
[551] = {
{Content = "Got to take up the challenge with high spirits!", Id = 551}
}
, 
[552] = {
{Content = "And now I\'m starting at the starting line", Id = 552}
}
, 
[553] = {
{Content = "I finally made it this far.", Id = 553}
}
, 
[554] = {
{Content = "After I finished everything he asked me to do, All Might decided, I was ready.", Id = 554}
}
, 
[555] = {
{Content = "Huh?", Id = 555}
}
, 
[556] = {
{Content = "Someone told me this once. ThereΓÇÖs a difference between being lucky and being deserving..  ", Id = 556}
}
, 
[557] = {
{Content = "OneΓÇÖs an accident, the other a reward.. Never get the two confused.", Id = 557}
}
, 
[558] = {
{Content = "Take that to heart, young man. This gift. You earned it with your own valiant efforts. ", Id = 558}
}
, 
[559] = {
{Content = "I held out my weak, Quirkless hands.", Id = 559}
}
, 
[56] = {
{Content = "When the enemies are far, use abilities to close the gap.", Id = 56}
}
, 
[560] = {
{Content = "And grabbed the future.", Id = 560}
}
, 
[561] = {
{Content = "Eat this.", Id = 561}
}
, 
[562] = {
{Content = "And so, he passed the torch of One for All onto me.", Id = 562}
}
, 
[563] = {
{Content = "Under All Might\'s guidance, my training to get into UA High officially began. A new journey!", Id = 563}
}
, 
[564] = {
{Content = "But to just live on according to plan, I can\'t do that yet", Id = 564}
}
, 
[565] = {
{Content = "I have to use the time when All Might isn\'t watching too!", Id = 565}
}
, 
[566] = {
{Content = "The Voice Hero, Present Mic, gave us a rundown of the rules for the practical exam.", Id = 566}
}
, 
[567] = {
{Content = "After his short explanation we all headed toward our specified battle centers.", Id = 567}
}
, 
[568] = {
{Content = "The problem was, even though I\'d done so much training, and All Might had passed his quirk onto me...", Id = 568}
}
, 
[569] = {
{Content = "The prestigious U.A. High entrance exam is beginning soon", Id = 569}
}
, 
[57] = {
{Content = "Use your Ultimate Skill to defeat the villain!", Id = 57}
}
, 
[570] = {
{Content = "Merci beaucoup! We make a great team with you as my decoy.", Id = 570}
}
, 
[571] = {
{Content = "Although I doubt IΓÇÖll be seeing too much of you in the future. ", Id = 571}
}
, 
[572] = {
{Content = "Got him!", Id = 572}
}
, 
[573] = {
{Content = "It hurts so much.", Id = 573}
}
, 
[574] = {
{Content = "I barely have a handle on this inherited power...", Id = 574}
}
, 
[575] = {
{Content = "IΓÇÖm acting like a pro. When I donΓÇÖt even have enough skill to be a sidekick.", Id = 575}
}
, 
[576] = {
{Content = "No! This isnΓÇÖt over. ThereΓÇÖs gotta be something I can do.", Id = 576}
}
, 
[577] = {
{Content = "My legs and my right arm are broken. So just one option.", Id = 577}
}
, 
[578] = {
{Content = "And if I break my left arm too.", Id = 578}
}
, 
[579] = {
{Content = "IsnΓÇÖt this a little extreme?", Id = 579}
}
, 
[58] = {
{Content = "Use your third skill for a follow up attack!", Id = 58}
}
, 
[580] = {
{Content = "This is a disaster. IΓÇÖve gotta run and find some smaller villains. ", Id = 580}
}
, 
[581] = {
{Content = "Ow!", Id = 581}
}
, 
[582] = {
{Content = "And, release.", Id = 582}
}
, 
[583] = {
{Content = "Smash...!", Id = 583}
}
, 
[584] = {
{Content = "ThereΓÇÖs no way IΓÇÖm gonna pass the exam.", Id = 584}
}
, 
[585] = {
{Content = "That canΓÇÖt be right. All Might captured him.", Id = 585}
}
, 
[586] = {
{Content = "But the bottle. If he dropped it.", Id = 586}
}
, 
[59] = {
{Content = "The third skill has 3-hit follow-up.", Id = 59}
}
, 
[598] = {
{Content = "All I had to do was pass the exam.", Id = 598}
}
, 
[599] = {
{Content = "It\'s all my fault.", Id = 599}
}
, 
[60] = {
{Content = "The second skill can quickly replenish Midoriya\'s energy.", Id = 60}
}
, 
[600] = {
{Content = " You really think theyΓÇÖd let someone like you in when they could have me? ", Id = 600}
}
, 
[601] = {
{Content = "I managed to make it through the first day, but I\'m starting at the bottom... ", Id = 601}
}
, 
[602] = {
{Content = "What gives, I was trying to use it just now.", Id = 602}
}
, 
[603] = {
{Content = "Were you planning to break your bones again? Counting on someone else to save your useless body?", Id = 603}
}
, 
[604] = {
{Content = " I have to try something. No matter what the consequences.", Id = 604}
}
, 
[605] = {
{Content = "I was ready to pack my bags and head home in shame. ", Id = 605}
}
, 
[606] = {
{Content = "I ended up where I expected... Last place.", Id = 606}
}
, 
[607] = {
{Content = "The very next day, we started hero basic training, led by All Might himself!", Id = 607}
}
, 
[608] = {
{Content = "I erased your Quirk.", Id = 608}
}
, 
[609] = {
{Content = "It hurts, but I\'m still standing. After that, we finished up the rest of our tests.", Id = 609}
}
, 
[61] = {
{Content = "Now! Use Smash to hit the villains!", Id = 61}
}
, 
[610] = {
{Content = "My first day of school at U.A. High. ", Id = 610}
}
, 
[611] = {
{Content = "Worst of all, he said the person who came in last on the test... would be expelled immediately!", Id = 611}
}
, 
[612] = {
{Content = "We made our way through the trials. Everyone used their quirks to stellar results. It was incredible to see!", Id = 612}
}
, 
[613] = {
{Content = "But... not me. I barely had any sort of control over One for All... my numbers were mediocre at best.", Id = 613}
}
, 
[614] = {
{Content = "And this is just the beginning. I still have so much work to do, but I WON\'T give up on my dream of being a hero.", Id = 614}
}
, 
[615] = {
{Content = "46 meters.", Id = 615}
}
, 
[616] = {
{Content = "YouΓÇÖre not ready. You donΓÇÖt have control over your power. ", Id = 616}
}
, 
[617] = {
{Content = "There\'s only one throw left, what should I do...", Id = 617}
}
, 
[618] = {
{Content = "Mister Aizawa was right about what he said.If I canΓÇÖt control my Quirk, thereΓÇÖs no way IΓÇÖll ever become a hero. ", Id = 618}
}
, 
[619] = {
{Content = "Even if I have a lot to learn, IΓÇÖll focus on what I can do right now.", Id = 619}
}
, 
[62] = {
{Content = "Use the last hit to defeat the villain!", Id = 62}
}
, 
[620] = {
{Content = "That\'s when Mr. Aizawa spoke up. He told us the expulsion threat was a lie!", Id = 620}
}
, 
[621] = {
{Content = "Sorry, Midoriya. With your power, thereΓÇÖs no way you can become a hero.", Id = 621}
}
, 
[622] = {
{Content = "Mr. Aizawa. You see? IΓÇÖm still standing.", Id = 622}
}
, 
[623] = {
{Content = "There\'s not much test to go... It\'s now or never. I have to bet it all on the ball throw!", Id = 623}
}
, 
[624] = {
{Content = "ItΓÇÖs now or never. ", Id = 624}
}
, 
[625] = {
{Content = "After the media frenzy died down a bit, Iida ended up taking on the role of our class representative.", Id = 625}
}
, 
[626] = {
{Content = "Hello, everyone, IΓÇÖve been waiting for you!", Id = 626}
}
, 
[627] = {
{Content = "Eventually, we arrived at our destination. It was a huge compound called the Unforeseen Simulation Joint.", Id = 627}
}
, 
[628] = {
{Content = "We were ready for another round of hero basic training!", Id = 628}
}
, 
[629] = {
{Content = "Disaster training, in a place designed by the hero, Thirteen!", Id = 629}
}
, 
[63] = {
{Content = "Dodge and avoid villain\'s attacks!", Id = 63}
}
, 
[630] = {
{Content = "And then...", Id = 630}
}
, 
[631] = {
{Content = "The bad news was, All Might was unable to make it.", Id = 631}
}
, 
[632] = {
{Content = "Before we begin, let me just say one thing. Well, maybe two things. Possibly three, four, or five.", Id = 632}
}
, 
[633] = {
{Content = "Carry those lessons over to this class. Today, youΓÇÖre going to learn how to use your Quirks to save peopleΓÇÖs lives. ", Id = 633}
}
, 
[634] = {
{Content = "And this time, we were focusing on rescuing people.", Id = 634}
}
, 
[635] = {
{Content = "thatΓÇÖs what being a hero is all about. Ensuring the safety of others.", Id = 635}
}
, 
[636] = {
{Content = "Mr. Aizawa, All Might, and another teacher would be running it. All of us were excited.", Id = 636}
}
, 
[637] = {
{Content = "On the bus, my classmates and I got to know each other better. The training facility was pretty far away.", Id = 637}
}
, 
[638] = {
{Content = "You wonΓÇÖt be using your powers to attack enemies or each other, only to help.", Id = 638}
}
, 
[639] = {
{Content = "I know itΓÇÖs impolite, but we decided to invite ourselves in to this haven of justice to say hello. ", Id = 639}
}
, 
[64] = {
{Content = "Perfect Dodge triggered, attack as much as you can!", Id = 64}
}
, 
[640] = {
{Content = "And besides, isnΓÇÖt this a fitting place for All Might, the Symbol of Peace, to take his last breath?", Id = 640}
}
, 
[641] = {
{Content = "Same time, USJ Front Door", Id = 641}
}
, 
[642] = {
{Content = "IΓÇÖll scatter you across this facility", Id = 642}
}
, 
[643] = {
{Content = "Whoa. HeΓÇÖs holding them off. I guess I shouldnΓÇÖt have underestimated him.", Id = 643}
}
, 
[644] = {
{Content = "to meet my comrades. and your deaths! ", Id = 644}
}
, 
[645] = {
{Content = "The villain had a warp quirk. We were separated throughout the USJ!", Id = 645}
}
, 
[646] = {
{Content = "He said they were going to kill All Might? Holy... whoa what is going on?!", Id = 646}
}
, 
[647] = {
{Content = "This is no time to be analyzing. We have to go!", Id = 647}
}
, 
[648] = {
{Content = "ItΓÇÖs a pleasure to meet you. We are the League of Villains", Id = 648}
}
, 
[649] = {
{Content = "We came to the Unforeseen Simulation Joint for rescue training, that\'s IT.", Id = 649}
}
, 
[65] = {
{Content = "Now! Dodge the villain\'s attack!", Id = 65}
}
, 
[650] = {
{Content = "Before we could react a villain made of black fog engulfed us, and we were warped!", Id = 650}
}
, 
[651] = {
{Content = "Asui was able to get us out of the water and onto the ship.", Id = 651}
}
, 
[652] = {
{Content = "Unfortunately, things looked bad. We were already surrounded by villains.", Id = 652}
}
, 
[653] = {
{Content = "I ended up in the shipwreck zone. There, I found Asui and Mineta.", Id = 653}
}
, 
[654] = {
{Content = "If we want to get out of this alive, we\'re going to have to fight these guys ourselves!", Id = 654}
}
, 
[655] = {
{Content = "There\'s no time to lose.", Id = 655}
}
, 
[656] = {
{Content = "If I want to win...", Id = 656}
}
, 
[657] = {
{Content = "This is the only way.", Id = 657}
}
, 
[658] = {
{Content = "The villains attacked us.", Id = 658}
}
, 
[659] = {
{Content = "Tsu! Mineta, now!", Id = 659}
}
, 
[66] = {
{Content = "Kacchan. IΓÇÖm not scared of you anymore. ", Id = 66}
}
, 
[660] = {
{Content = "Now die!", Id = 660}
}
, 
[661] = {
{Content = "IΓÇÖm getting dragged in!", Id = 661}
}
, 
[662] = {
{Content = "I canΓÇÖt get ΓÇÿem offa me!", Id = 662}
}
, 
[663] = {
{Content = "Delaware", Id = 663}
}
, 
[664] = {
{Content = "By working together as a team, we managed to take down the villains in the shipwreck zone.", Id = 664}
}
, 
[665] = {
{Content = "We were overconfident, though. We may have beaten some of our enemies, but we were no match for what was to come.", Id = 665}
}
, 
[666] = {
{Content = "Smash!", Id = 666}
}
, 
[667] = {
{Content = "We rounded them all up.", Id = 667}
}
, 
[668] = {
{Content = "we\'re facing off against a group calling themselves the League of Villains.", Id = 668}
}
, 
[669] = {
{Content = "But first, we needed to know what each other\'s quirks were capable of, so we could plan.", Id = 669}
}
, 
[67] = {
{Content = "Deku...", Id = 67}
}
, 
[670] = {
{Content = "With the villains in the shipwreck zone taken care of,we planned our next moves and how we could help our classmates.", Id = 670}
}
, 
[671] = {
{Content = "That\'s when we saw it. Mr. Aizawa had drawn a large number of villains to the main courtyard.", Id = 671}
}
, 
[672] = {
{Content = "If he doesnΓÇÖt get some backup, then heΓÇÖs just going to overexert himself. HeΓÇÖll end up defeated by those villains ΓÇÿcause he was trying to keep us safe.", Id = 672}
}
, 
[673] = {
{Content = "WeΓÇÖll get outta here the second it seems dangerous.", Id = 673}
}
, 
[674] = {
{Content = "First it was 23 seconds.", Id = 674}
}
, 
[675] = {
{Content = "The final boss.", Id = 675}
}
, 
[676] = {
{Content = "Kurogiri, did you manage to kill Thirteen?", Id = 676}
}
, 
[677] = {
{Content = "The rescue hero is out of commission. But there were students I was unable to disperse and one of them got outside of the facility. ", Id = 677}
}
, 
[678] = {
{Content = "ThereΓÇÖs no way we can win if dozens of pros show up to stop us. ItΓÇÖs game over.", Id = 678}
}
, 
[679] = {
{Content = "Oh, before we leave,", Id = 679}
}
, 
[68] = {
{Content = "Cowering and blabbering...", Id = 68}
}
, 
[680] = {
{Content = " letΓÇÖs make sure the Symbol of Peace is broken.", Id = 680}
}
, 
[681] = {
{Content = "LetΓÇÖs wreck his pride.", Id = 681}
}
, 
[682] = {
{Content = "You really are so cool.", Id = 682}
}
, 
[683] = {
{Content = "Eraser Head.", Id = 683}
}
, 
[684] = {
{Content = "You! Let her go!", Id = 684}
}
, 
[685] = {
{Content = "Smash!", Id = 685}
}
, 
[686] = {
{Content = "Wait, hold on. It didnΓÇÖt hurt him?", Id = 686}
}
, 
[687] = {
{Content = "Back at the plaza, we saw a gravely injured Mr. Aizawa, and what only could be described as evil incarnate.", Id = 687}
}
, 
[688] = {
{Content = "We only tasted a tiny portion of villains, and caught a glimpse of Pro Hero.", Id = 688}
}
, 
[689] = {
{Content = "Is there anything we can do to turn this around...?", Id = 689}
}
, 
[69] = {
{Content = "YouΓÇÖre shaking in your boots, youΓÇÖre so scared. ", Id = 69}
}
, 
[690] = {
{Content = "ItΓÇÖs now or never. This is my best chance to use One For All.", Id = 690}
}
, 
[691] = {
{Content = "46 meters.", Id = 691}
}
, 
[692] = {
{Content = "What gives, I was trying to use it just now.", Id = 692}
}
, 
[693] = {
{Content = "I erased your Quirk.", Id = 693}
}
, 
[694] = {
{Content = "The judges for this exam were not rational enough.", Id = 694}
}
, 
[695] = {
{Content = "Someone like you should never be allowed to enroll at this school.", Id = 695}
}
, 
[696] = {
{Content = "YouΓÇÖre not ready. You donΓÇÖt have control over your power. ", Id = 696}
}
, 
[697] = {
{Content = "Were you planning to break your bones again? ", Id = 697}
}
, 
[698] = {
{Content = "Counting on someone else to save your useless body?", Id = 698}
}
, 
[699] = {
{Content = "No, thatΓÇÖs not what I was trying to do!", Id = 699}
}
, 
[7] = {
{Content = "Midoriya: Nice! We can do it!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 7, StayTime = 2}
}
, 
[70] = {
{Content = "Deku!", Id = 70}
}
, 
[700] = {
{Content = "No matter what your intentions are, you would be nothing more than a liability in battle.", Id = 700}
}
, 
[701] = {
{Content = "Sorry, Midoriya. With your power, thereΓÇÖs no way you can become a hero.", Id = 701}
}
, 
[702] = {
{Content = "IΓÇÖve returned your impractical Quirk. Take your final throw. Hurry and get it over with.", Id = 702}
}
, 
[703] = {
{Content = "IΓÇÖve only got one shot at nailing this, so what am I gonna do?", Id = 703}
}
, 
[704] = {
{Content = " I have to try something. No matter what the consequences.", Id = 704}
}
, 
[705] = {
{Content = "If I canΓÇÖt control my Quirk, thereΓÇÖs no way IΓÇÖll ever become a hero. ", Id = 705}
}
, 
[706] = {
{Content = "I have to work way harder than everyone else here if I wanna succeed. ", Id = 706}
}
, 
[707] = {
{Content = "Even if I have a lot to learn, IΓÇÖll focus on what I can do right now.", Id = 707}
}
, 
[708] = {
{Content = "Mr. Aizawa. You see? IΓÇÖm still standing.", Id = 708}
}
, 
[709] = {
{Content = "You can call me Deku. But IΓÇÖm not the same helpless, defenseless kid anymore!", Id = 709}
}
, 
[71] = {
{Content = "But you want to fight me anyway. ThatΓÇÖs why I hate you!", Id = 71}
}
, 
[710] = {
{Content = "From now on Deku is the name of a hero!", Id = 710}
}
, 
[711] = {
{Content = "YouΓÇÖre shaking in your boots, youΓÇÖre so scared. ", Id = 711}
}
, 
[712] = {
{Content = "But you want to fight me anyway. ThatΓÇÖs why I hate you!", Id = 712}
}
, 
[713] = {
{Content = "IΓÇÖm all loaded up.", Id = 713}
}
, 
[714] = {
{Content = "Why arenΓÇÖt you using your fancy Quirk?", Id = 714}
}
, 
[715] = {
{Content = "Kacchan. IΓÇÖm not scared of you anymore. ", Id = 715}
}
, 
[716] = {
{Content = "Go ahead. Use your stupid Quirk on me, Deku.", Id = 716}
}
, 
[717] = {
{Content = "Analyzing signal...", Id = 717}
}
, 
[718] = {
{Content = "Even if you give me everything youΓÇÖve got. YouΓÇÖll never beat me.", Id = 718}
}
, 
[719] = {
{Content = "ΓÇªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128ªΓ\128\166", Id = 719}
}
, 
[72] = {
{Content = "Although the incident is over, the threat of \"villains\" that use their Quirk for evil still looms over the city...", Id = 72}
}
, 
[720] = {
{Content = "YouΓÇÖre much better at working stealthily.", Id = 720}
}
, 
[721] = {
{Content = "But despite knowing that, you didnΓÇÖt hesitate to jump into the middle of this fight. ", Id = 721}
}
, 
[722] = {
{Content = "To put your students at ease.", Id = 722}
}
, 
[723] = {
{Content = "Oh, by the way, hero.", Id = 723}
}
, 
[724] = {
{Content = "I am not the final boss.", Id = 724}
}
, 
[725] = {
{Content = "After that, Principal Nezu and other faculty members came and wiped out the remaining villains.", Id = 725}
}
, 
[726] = {
{Content = "However, Shigaraki and Kurogiri managed to escape.", Id = 726}
}
, 
[727] = {
{Content = "Thanks to All MightΓÇÖs help, and the bravery of my teachers and classmates", Id = 727}
}
, 
[728] = {
{Content = "we were able to escape.", Id = 728}
}
, 
[729] = {
{Content = "The whole experience made us more resolved than ever to become powerful, fearless heroes.", Id = 729}
}
, 
[73] = {
{Content = "U. A. High welcomed in a new semester. And yet the students of the Department of Heroes were met with an invasion by the League of Villains at USJ.", Id = 73}
}
, 
[730] = {
{Content = "So we can stop evil. So we can protect the world.", Id = 730}
}
, 
[731] = {
{Content = "And now, a life-changing event is about to take place. The U.A. Sports Festival!", Id = 731}
}
, 
[732] = {
{Content = "After surviving a fight with real villains. ", Id = 732}
}
, 
[733] = {
{Content = "IΓÇÖm sure everyone will be even more focused than before. ", Id = 733}
}
, 
[734] = {
{Content = "Two unknown data source detected", Id = 734}
}
, 
[735] = {
{Content = "Three unknown data source detected", Id = 735}
}
, 
[736] = {
{Content = "Some time later...", Id = 736}
}
, 
[737] = {
{Content = "But that canΓÇÖt possibly be their master plan. Most these villains are low-level thugs. Just pawns.", Id = 737}
}
, 
[738] = {
{Content = "If thatΓÇÖs the case, then what we need right now is more information. ", Id = 738}
}
, 
[739] = {
{Content = "How do they plan to kill All Might?", Id = 739}
}
, 
[74] = {
{Content = "\"Heroes\" step in to ensure the safety of the people.", Id = 74}
}
, 
[740] = {
{Content = "I didn\'t know until after the battle.", Id = 740}
}
, 
[741] = {
{Content = "Now die!", Id = 741}
}
, 
[742] = {
{Content = "After getting warped to the collapse zone,", Id = 742}
}
, 
[743] = {
{Content = "Kacchan and Kirishima easily took the villains out", Id = 743}
}
, 
[744] = {
{Content = "They argued about if they should take care of Kurogiri or save others first.", Id = 744}
}
, 
[745] = {
{Content = "Run to the school and tell the faculty whatΓÇÖs going on here.", Id = 745}
}
, 
[746] = {
{Content = "Use your Quirk to save others. Be a real hero!", Id = 746}
}
, 
[747] = {
{Content = "USJ Front Door", Id = 747}
}
, 
[748] = {
{Content = "Collapse Zone", Id = 748}
}
, 
[749] = {
{Content = "After the incident with the sludge villain, things changed. Suddenly All Might appeared before me.", Id = 749}
}
, 
[75] = {
{Content = "The incident with the League of Villains in U.A. High has put everyone on high alert.", Id = 75}
}
, 
[750] = {
{Content = "He said that I too could BE A HERO.", Id = 750}
}
, 
[751] = {
{Content = " Somehow... I was enrolling in the high school of my dreams!", Id = 751}
}
, 
[752] = {
{Content = "in a place designed by the hero, Thirteen!", Id = 752}
}
, 
[753] = {
{Content = "You are about to play a story-based stage.", Id = 753}
}
, 
[754] = {
{Content = "In the society where many have superpowers known as Quirk, a noble occupation arised to defeat those that use Quirk for crime. Heroes.#r#h#rDespite being born without a Quirk, Izuku Midoriya dreamed of becoming a hero, but had his hopes crushed after meeting his favorite hero, All Might.#r#h#r\"Just make sure your dreams are attainable. Realistic. Understand?\"#r#h#rAfter witnessing Izuku rush into danger despite being Quirkless, All Might decided to pass on his power, One For All, to Izuku...#r#h#r\"Young man. You, too, can become a hero. \"#r#h#rIzuku\'s fate was altered from that point forward...#r#h#r ", Id = 754}
}
, 
[755] = {
{Content = "The U.A. High entrance exam is coming up.", Id = 755}
}
, 
[756] = {
{Content = " ", Id = 756}
}
, 
[757] = {
{Content = "Landslide Zone", Id = 757}
}
, 
[758] = {
{Content = "Area scanned, no anomalies detected...", Id = 758}
}
, 
[759] = {
{Content = "The U.A. High Sports Festival is one of the largest events in Japan", Id = 759}
}
, 
[76] = {
{Content = "The chaos that\'s brewing underneath the seemingly peaceful Tatooin Station are beginning to bubble to the surface...", Id = 76}
}
, 
[760] = {
{Content = "Top Heroes from around the country have gathered to find talents", Id = 760}
}
, 
[761] = {
{Content = "For a hero looking to make their mark, this is an event that cannot be missed", Id = 761}
}
, 
[762] = {
{Content = "After Aizawa Sensei announced the Sports Festival", Id = 762}
}
, 
[763] = {
{Content = "The students are all passionate", Id = 763}
}
, 
[764] = {
{Content = "But...", Id = 764}
}
, 
[765] = {
{Content = "At noon, All Might found me for a talk.", Id = 765}
}
, 
[766] = {
{Content = "I only came to talk to you about one thing", Id = 766}
}
, 
[767] = {
{Content = "I hope the next generation\'s All Might... that the Symbol of Peace may continue to flourish...", Id = 767}
}
, 
[768] = {
{Content = "Izuku Midoriya, you", Id = 768}
}
, 
[769] = {
{Content = "Tell the world that you\'re up and coming", Id = 769}
}
, 
[77] = {
{Content = "More hero agencies are needed to uphold the law...", Id = 77}
}
, 
[770] = {
{Content = "The long-awaited U.A. High Sports Festival is here.", Id = 770}
}
, 
[771] = {
{Content = "After much preparation, they take on the challenge under the watchful eyes of the audience", Id = 771}
}
, 
[772] = {
{Content = "As the successor to All Might and the next Symbol of Peace", Id = 772}
}
, 
[773] = {
{Content = "During the Sports Festival", Id = 773}
}
, 
[774] = {
{Content = "Letting the world see my debut...", Id = 774}
}
, 
[775] = {
{Content = "After the classes have entered", Id = 775}
}
, 
[776] = {
{Content = "As the main judge of the freshman classes, Midnight announced the first stage of the competition", Id = 776}
}
, 
[777] = {
{Content = "Obstacle Race", Id = 777}
}
, 
[778] = {
{Content = "U.A. High sells itself on its freedom", Id = 778}
}
, 
[779] = {
{Content = "As long as it stays within the bounds, anything is allowed", Id = 779}
}
, 
[78] = {
{Content = "A world where the abnormal is the norm", Id = 78}
}
, 
[780] = {
{Content = "And so, the first challenge", Id = 780}
}
, 
[781] = {
{Content = "It\'s starting", Id = 781}
}
, 
[782] = {
{Content = "START", Id = 782}
}
, 
[783] = {
{Content = "The starting gate is too narrow", Id = 783}
}
, 
[784] = {
{Content = "So the starting point is...", Id = 784}
}
, 
[785] = {
{Content = "The first round of eliminations", Id = 785}
}
, 
[786] = {
{Content = "Sorry", Id = 786}
}
, 
[787] = {
{Content = "Many... targets", Id = 787}
}
, 
[788] = {
{Content = "The Faux Villains from the entrance examination...", Id = 788}
}
, 
[789] = {
{Content = "Alright, a lot of obstacles right at the start", Id = 789}
}
, 
[79] = {
{Content = "A sinister wave of evil threatens to overrun the daily life.", Id = 79}
}
, 
[790] = {
{Content = "Coming up is the first challenge", Id = 790}
}
, 
[791] = {
{Content = "Robot Hell", Id = 791}
}
, 
[792] = {
{Content = "It\'s a rare chance, I hope you could prepare stronger obstacles", Id = 792}
}
, 
[793] = {
{Content = "My bastard father was watching, after all", Id = 793}
}
, 
[794] = {
{Content = "Shoto from Class 1-A is eliminating foes while hindering his opponents.", Id = 794}
}
, 
[795] = {
{Content = "Widened the gap in an instant", Id = 795}
}
, 
[796] = {
{Content = "I have to be wary of disruptions while taking out the robots", Id = 796}
}
, 
[797] = {
{Content = "Alright, time to think", Id = 797}
}
, 
[798] = {
{Content = "What should I do!", Id = 798}
}
, 
[799] = {
{Content = "Then, what about the second part!", Id = 799}
}
, 
[8] = {
{Content = "Midoriya: Damn! How could this happen!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 8, StayTime = 2}
}
, 
[80] = {
{Content = "Is the nature of humanity evil...", Id = 80}
}
, 
[800] = {
{Content = "Once you fall, you\'re out.", Id = 800}
}
, 
[801] = {
{Content = "The┬╖Fall", Id = 801}
}
, 
[802] = {
{Content = "Here comes my chance to stand out", Id = 802}
}
, 
[803] = {
{Content = "It\'s time for my Support Gear to shine", Id = 803}
}
, 
[804] = {
{Content = "Alright, open your eyes and look, audience and companies before the screen", Id = 804}
}
, 
[805] = {
{Content = "Look at my cute baby", Id = 805}
}
, 
[806] = {
{Content = "The school didn\'t reveal how many people can get qualified", Id = 806}
}
, 
[807] = {
{Content = "So just keep marching on with your apprehension", Id = 807}
}
, 
[808] = {
{Content = "At the Obstacle Course", Id = 808}
}
, 
[809] = {
{Content = "I got first place after reaching the endpoint first", Id = 809}
}
, 
[81] = {
{Content = "Or maybe it\'s justice?", Id = 81}
}
, 
[810] = {
{Content = "42 students including me have qualified", Id = 810}
}
, 
[811] = {
{Content = "The next challenge is...", Id = 811}
}
, 
[812] = {
{Content = "Uraraka, Tokoyami, Mei Hatsume, and I are in one team", Id = 812}
}
, 
[813] = {
{Content = "As first place I was given 10 million points", Id = 813}
}
, 
[814] = {
{Content = "What\'s coming next is...", Id = 814}
}
, 
[815] = {
{Content = "A battle of life and death", Id = 815}
}
, 
[816] = {
{Content = "After a series of clashes, the battle is heating up ", Id = 816}
}
, 
[817] = {
{Content = "Class B has also displayed their talents.", Id = 817}
}
, 
[818] = {
{Content = "Yet my 10-million-point headband was taken by Shoto\'s team", Id = 818}
}
, 
[819] = {
{Content = "Meanwhile, Bakugo has set his eyes on the 10 million points.", Id = 819}
}
, 
[82] = {
{Content = "Memories are like fragmented pieces of a jigsaw puzzle.", Id = 82}
}
, 
[820] = {
{Content = "With the wills of three others, I will-", Id = 820}
}
, 
[821] = {
{Content = "Time is almost up, the couUSDown is starting", Id = 821}
}
, 
[822] = {
{Content = "TIME UP!", Id = 822}
}
, 
[823] = {
{Content = "The second round, the Cavalry Battle, has ended", Id = 823}
}
, 
[824] = {
{Content = "I still couldn\'t get the 10 million points back in the end", Id = 824}
}
, 
[825] = {
{Content = "Luckily, Tokoyami\'s Dark Shadow snatched a headband while they were distracted", Id = 825}
}
, 
[826] = {
{Content = "In fourth place, Deku\'s team!", Id = 826}
}
, 
[827] = {
{Content = "We qualified for the next round", Id = 827}
}
, 
[828] = {
{Content = "I\'ll do my best in the last round", Id = 828}
}
, 
[829] = {
{Content = "I won\'t let down mom and All Might!", Id = 829}
}
, 
[83] = {
{Content = "Maybe the answer is all here...", Id = 83}
}
, 
[830] = {
{Content = "Does Shoto have something to tell me?", Id = 830}
}
, 
[831] = {
{Content = "Thanks to Tokoyami\'s Dark Shadow", Id = 831}
}
, 
[832] = {
{Content = "We passed in the Cavalry Battle", Id = 832}
}
, 
[833] = {
{Content = "After the competition, Shoto found me...", Id = 833}
}
, 
[834] = {
{Content = "If you really are somehow connected to the No. 1 hero, then I...", Id = 834}
}
, 
[835] = {
{Content = "More reasons to defeat you", Id = 835}
}
, 
[836] = {
{Content = "My father is Endeavor, the forever second place", Id = 836}
}
, 
[837] = {
{Content = "Father recognized he would never surpass All Might", Id = 837}
}
, 
[838] = {
{Content = "Got to find another way", Id = 838}
}
, 
[839] = {
{Content = "\"Quirk Marriage\"", Id = 839}
}
, 
[84] = {
{Content = "YouΓÇÖre even worse than the rest of these damn rejects, you Quirkless wannabe.", Id = 84}
}
, 
[840] = {
{Content = "Choosing a mate only to have a child with a stronger \"Quirk\"", Id = 840}
}
, 
[841] = {
{Content = "Forcing the other person to marry", Id = 841}
}
, 
[842] = {
{Content = "He tried to rope in my mother\'s relatives", Id = 842}
}
, 
[843] = {
{Content = "And so I gained my mother\'s \"Quirk\"", Id = 843}
}
, 
[844] = {
{Content = "He wanted to make me a hero greater than All Might", Id = 844}
}
, 
[845] = {
{Content = "To realize my original desires", Id = 845}
}
, 
[846] = {
{Content = "In my memory, my mother was always crying", Id = 846}
}
, 
[847] = {
{Content = "Your left half is too ugly", Id = 847}
}
, 
[848] = {
{Content = "She said that while pouring boiling water on my face", Id = 848}
}
, 
[849] = {
{Content = "Simply put, I compete with you to prove myself", Id = 849}
}
, 
[85] = {
{Content = "Have no fear, you are safe.", Id = 85}
}
, 
[850] = {
{Content = "Even without my dad\'s \"Quirk\", I...", Id = 850}
}
, 
[851] = {
{Content = "No, even without his \"Quirk\", I\'ll still be number one.", Id = 851}
}
, 
[852] = {
{Content = "I\'ll deny him completely with this", Id = 852}
}
, 
[853] = {
{Content = "Compared to what you carry, my motive is nothing", Id = 853}
}
, 
[854] = {
{Content = "But, I want to be strong enough so no one will worry about me", Id = 854}
}
, 
[855] = {
{Content = "I\'ll defeat you", Id = 855}
}
, 
[856] = {
{Content = "The first team has made it to the final stage", Id = 856}
}
, 
[857] = {
{Content = "But the truth is", Id = 857}
}
, 
[858] = {
{Content = "A large mine zone!", Id = 858}
}
, 
[859] = {
{Content = "Hey you, don\'t get the wrong target", Id = 859}
}
, 
[86] = {
{Content = "I canΓÇÖt. Breathe!", Id = 86}
}
, 
[860] = {
{Content = "So... so far...", Id = 860}
}
, 
[861] = {
{Content = "There\'s still a way", Id = 861}
}
, 
[862] = {
{Content = "No problem, don\'t rush in a moment like this", Id = 862}
}
, 
[863] = {
{Content = "I just borrowed, Bakugo", Id = 863}
}
, 
[864] = {
{Content = "Recipro Turbo!", Id = 864}
}
, 
[865] = {
{Content = "Flying just as I expected, but still frighteningly fast", Id = 865}
}
, 
[866] = {
{Content = "Deku, I won\'t let you get ahead", Id = 866}
}
, 
[867] = {
{Content = "Damn... losing speed...", Id = 867}
}
, 
[868] = {
{Content = "No, dammit, I won\'t let it go", Id = 868}
}
, 
[869] = {
{Content = "I have to take advantage of this temporary lead", Id = 869}
}
, 
[87] = {
{Content = "I made a decision that day.", Id = 87}
}
, 
[870] = {
{Content = "Even if I can\'t surpass them again", Id = 870}
}
, 
[871] = {
{Content = "Then I can\'t let them overtake me", Id = 871}
}
, 
[872] = {
{Content = "The first man to return to the stadium...", Id = 872}
}
, 
[873] = {
{Content = "It was Izuku Midoriya!", Id = 873}
}
, 
[874] = {
{Content = "Pro heroes are always having to risk their lives.", Id = 874}
}
, 
[88] = {
{Content = "No matter what anyone else thinks, I have to believe in myself. ", Id = 88}
}
, 
[89] = {
{Content = "And I\'ll keep smiling, just like him.", Id = 89}
}
, 
[9] = {
{Content = "Midoriya: I got you now!", Font = "σ╛«Θ¢à", FontSize = 30, Id = 9, StayTime = 2}
}
, 
[90] = {
{Content = "This was the harsh reality I had to face when I was only four years old.", Id = 90}
}
, 
[91] = {
{Content = "A villain?", Id = 91}
}
, 
[92] = {
{Content = "YouΓÇÖll make a perfect skin suit for me to hide in, kid. ", Id = 92}
}
, 
[93] = {
{Content = "DonΓÇÖt worry, IΓÇÖm just taking over your body.", Id = 93}
}
, 
[94] = {
{Content = "I was Quirkless. My goals of becoming a hero were dashed.", Id = 94}
}
, 
[95] = {
{Content = "My body. Getting. Weak.", Id = 95}
}
, 
[96] = {
{Content = "Now that I am here, that is.", Id = 96}
}
, 
[97] = {
{Content = "Texas. Smash!", Id = 97}
}
, 
[98] = {
{Content = "Enable Search Mode", Id = 98}
}
, 
[99] = {
{Content = "One unknown data source detected", Id = 99}
}
}
}


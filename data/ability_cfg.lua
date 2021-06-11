-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
AbilityData = {
[101] = {AbilityIcon = "τ╗┐Φ░╖Φâ╜σè¢σ¢╛µáç", ApRecovery = 15, 
AudioList = {[12438] = false, [12439] = false}
, CDEffect = 1, Desc = "µ┐\128µ┤╗σÉÄµÖ«µö╗Φâ╜σñƒτ₧¼τº╗Φç│τ¢«µáçΦ║½Φ╛╣Φ┐¢Φíîµö╗σç\187#rΘÇáµêÉ400%µö╗σç╗σè¢σñûσè\160#c4876FFd%#nτé╣σ¢║σ«Üτë⌐τÉåΣ╝ñσ«\179", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_0
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100101)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 101, MinOpenTime = 1000, PVPApRecovery = 15, PVPCDEffect = 1, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_1
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100101)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_2
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100101)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  if (SkillFuncs["Θöüσ«Üτ¢«µáçΦ╖¥τª╗"])(Attacker, Hitter, SkillInfo, HitInfo) >= 200 then
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 100001)
  end
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_3
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_4
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100101)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  if (SkillFuncs["Θöüσ«Üτ¢«µáçΦ╖¥τª╗"])(Attacker, Hitter, SkillInfo, HitInfo) >= 200 then
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 100001)
  end
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_5
  local Args = {}
end
}
, 
[102] = {AbilityIcon = "τêåΦ▒¬Φâ╜σè¢σ¢╛µáç", ApRecovery = 10, 
AudioList = {[12438] = false, [12439] = false, [8727] = false}
, Desc = "µ┐\128µ┤╗σÉÄσ░åτêåΘúÄΦ╜¼σîûΣ╕║µÄ¿Φ┐¢σè¢µ¥Ñσ«₧τÄ░Θ½ÿΘ\128ƒτº╗σè¿∩╝îµ£ƒΘù┤σÅ»τé╣σç╗µÖ«µö╗τ¢┤µÄÑΘçèµö╛σå▓σê║µö╗σç\187", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_6
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100212)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100226)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100229)
  ;
  (SkillFuncs["σà│Θù¡τº╗σè¿µ¿íσ╝Åµ¢┤µö╣"])(Attacker, Hitter, SkillInfo, HitInfo)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 102, MinOpenTime = 1000, PVPApRecovery = 10, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_7
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100212)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100226)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100229)
  ;
  (SkillFuncs["σà│Θù¡τº╗σè¿µ¿íσ╝Åµ¢┤µö╣"])(Attacker, Hitter, SkillInfo, HitInfo)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_8
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 2)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100202, "hand_l", false)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100202, "hand_r", false)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100207, "base", false)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100226)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100229)
  ;
  (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 100233)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_9
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_10
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 2)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100202, "hand_l", false)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100202, "hand_r", false)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100207, "base", false)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100226)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100229)
  ;
  (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 100233)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_11
  local Args = {}
end
}
, 
[103] = {AbilityIcon = "µ¼ºσ░öΘ║ªτë╣Φâ╜σè¢σ¢╛µáç", ApRecovery = 5, Desc = "µ¼ºσ░öΘ║ªτë╣µùáΦºåΣ╗╗Σ╜òµëôσç╗µòêµ₧£", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_12
  local Args = {}
  ;
  (SkillFuncs["µû╜µö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100400)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 103, MinOpenTime = 3000, PVPApRecovery = 5, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_13
  local Args = {}
  ;
  (SkillFuncs["µû╜µö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100400)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 3000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_14
  local Args = {}
  ;
  (SkillFuncs["µû╜µö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100400)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_15
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_16
  local Args = {}
  ;
  (SkillFuncs["µû╜µö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100400)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_17
  local Args = {}
end
}
, 
[104] = {AbilityIcon = "µ¼ºσ░öΘ║ªτë╣Φâ╜σè¢σ¢╛µáç", ApRecovery = 14, 
AudioList = {[12438] = false, [12439] = false, [8768] = false}
, Desc = "µ¼ºσ░öΘ║ªτë╣µùáΦºåΣ╗╗Σ╜òµëôσç╗µòêµ₧£", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_18
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 104, MinOpenTime = 3000, PVPApRecovery = 14, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_19
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 3000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_20
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 12.5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_21
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_22
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 12.5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_23
  local Args = {}
end
}
, 
[106] = {AbilityIcon = "ΘÑ¡τö░Φâ╜σè¢", ApRecovery = 5.6, 
AudioList = {[12438] = false, [12439] = false, [80283] = false}
, Desc = "µ┐\128σàëτé«", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_24
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100605)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["Φ┐₧σç╗µò░σü£µ¡\162"])(Attacker, Hitter, SkillInfo, HitInfo, false, 1015006)
end
, MerId = 106, MinOpenTime = 2000, PVPApRecovery = 5.6, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_25
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100605)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["Φ┐₧σç╗µò░σü£µ¡\162"])(Attacker, Hitter, SkillInfo, HitInfo, false, 1015006)
end
, PVPMinOpenTime = 2000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_26
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 13.4)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100605)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["Φ┐₧σç╗µò░σü£µ¡\162"])(Attacker, Hitter, SkillInfo, HitInfo, true, 1015006)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_27
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_28
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 13.4)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100605)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["Φ┐₧σç╗µò░σü£µ¡\162"])(Attacker, Hitter, SkillInfo, HitInfo, true, 1015006)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_29
  local Args = {}
end
}
, 
[107] = {AbilityIcon = "σ╛íΦî╢σ¡ÉΦâ╜σè¢µ╡«τ⌐\186", ApRecovery = 7, 
AudioList = {[12438] = false, [12439] = false}
, CDEffect = 2, Desc = "Θò┐µîëΣ╕èσìç µ¥╛σ╝Çµ╡«τ⌐║ σåìµ¼íτé╣σç╗µêûΦ\128àΦâ╜σè¢Σ╕║τ⌐║ΘÖìΦÉ\189", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_30
  local Args = {}
  if not (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100707) and (not (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100732) or (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100701)) then
    (SkillFuncs["Σ╕ïΘÖì"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  end
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100706)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100707)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100728)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100729)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100730)
  ;
  (SkillFuncs["σà│Θù¡τº╗σè¿µ¿íσ╝Åµ¢┤µö╣"])(Attacker, Hitter, SkillInfo, HitInfo)
  ;
  (SkillFuncs["Φ«╛τ╜«Σ╕║τ⌐║Σ╕¡τè╢µÇ\129"])(Attacker, Hitter, SkillInfo, HitInfo, false)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100701, 0)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100707, 0)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100706, 0)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100705, 0)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 107, MinOpenTime = 1000, PVPApRecovery = 7, PVPCDEffect = 2, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_31
  local Args = {}
  if not (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100707) and (not (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100732) or (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100701)) then
    (SkillFuncs["Σ╕ïΘÖì"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  end
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100706)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100707)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100728)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100729)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100730)
  ;
  (SkillFuncs["σà│Θù¡τº╗σè¿µ¿íσ╝Åµ¢┤µö╣"])(Attacker, Hitter, SkillInfo, HitInfo)
  ;
  (SkillFuncs["Φ«╛τ╜«Σ╕║τ⌐║Σ╕¡τè╢µÇ\129"])(Attacker, Hitter, SkillInfo, HitInfo, false)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100701, 0)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100707, 0)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100706, 0)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100705, 0)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_32
  local Args = {}
  if (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) == 20 then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100734)
  else
    if (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) == 50 then
      (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100735)
    else
      if (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) == 100 then
        (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100736)
      end
    end
  end
  if (SkillFuncs["σ╜ôσëìΦâ╜σè¢σÇ\188"])(Attacker, Hitter, SkillInfo, HitInfo) > 20 then
    (SkillFuncs["Φ«╛τ╜«Σ╕║τ⌐║Σ╕¡τè╢µÇ\129"])(Attacker, Hitter, SkillInfo, HitInfo, true)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100701)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100708)
    ;
    (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100701, 100722)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100707, 100708)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100706, 100709)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100705, 100710)
    ;
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 100732)
    if (SkillFuncs["σñ⌐Φ╡ïσèáσ\128\188"])(Attacker, Hitter, SkillInfo, HitInfo, 10713) > 0 then
      (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 4)
    else
      ;
      (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 5)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100719) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100719)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100720) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100720)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100721) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100721)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100722) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100722)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100723) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100723)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100724) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100724)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100725) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100725)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100726) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100726)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100727) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100727)
    end
    ;
    (SkillFuncs["σÅÿµ¢┤τº╗σè¿µ¿íσ╝Å"])(Attacker, Hitter, SkillInfo, HitInfo, 35, 1, {idle = "fly_idle", run = "fly_run", dash = "fly_run"}, 1)
  else
    ;
    (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 15)
  end
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_33
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_34
  local Args = {}
  if (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) == 20 then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100734)
  else
    if (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) == 50 then
      (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100735)
    else
      if (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) == 100 then
        (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100736)
      end
    end
  end
  if (SkillFuncs["σ╜ôσëìΦâ╜σè¢σÇ\188"])(Attacker, Hitter, SkillInfo, HitInfo) > 20 then
    (SkillFuncs["Φ«╛τ╜«Σ╕║τ⌐║Σ╕¡τè╢µÇ\129"])(Attacker, Hitter, SkillInfo, HitInfo, true)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100701)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100708)
    ;
    (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100701, 100722)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100707, 100708)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100706, 100709)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 100705, 100710)
    ;
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 100732)
    if (SkillFuncs["σñ⌐Φ╡ïσèáσ\128\188"])(Attacker, Hitter, SkillInfo, HitInfo, 10713) > 0 then
      (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 4)
    else
      ;
      (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 5)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100719) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100719)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100720) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100720)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100721) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100721)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100722) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100722)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100723) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100723)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100724) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100724)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100725) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100725)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100726) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100726)
    end
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100727) then
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100727)
    end
    ;
    (SkillFuncs["σÅÿµ¢┤τº╗σè¿µ¿íσ╝Å"])(Attacker, Hitter, SkillInfo, HitInfo, 35, 1, {idle = "fly_idle", run = "fly_run", dash = "fly_run"}, 1)
  else
    ;
    (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 15)
  end
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_35
  local Args = {}
end
}
, 
[108] = {AbilityIcon = "Φ╜░Φâ╜σè¢µèÇ", ApRecovery = 30, 
AudioList = {[12438] = false, [12439] = false, [8747] = false}
, Desc = "Φ╜░τü½τä░Φâ╜σè¢σèáσ┐½µö╗ΘÇƒ∩╝¢ Φ╜░σ»Æσå░Φâ╜σè¢σçÅΣ╝ñΘó¥σñûµèÇΦâ╜Θ£╕Σ╜ôσÉÄµÆ\164", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_36
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100201)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100203)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100101)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100103)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100508)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100506)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 108, MinOpenTime = 1000, PVPApRecovery = 30, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_37
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100201)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100203)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100101)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100103)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100508)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100506)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_38
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100502) then
    (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100521, "base", false)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100508)
  else
    ;
    (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100522, "base", false)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100506)
  end
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_39
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_40
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100502) then
    (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100521, "base", false)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100508)
  else
    ;
    (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100522, "base", false)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100506)
  end
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_41
  local Args = {}
end
}
, 
[109] = {AbilityIcon = "µ┐\128σàëτé«", ApRecovery = 5, 
AudioList = {[12438] = false, [12439] = false, [8714] = false}
, Desc = "µ┐\128σàëτé«", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_42
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100935)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 109, MinOpenTime = 2000, PVPApRecovery = 5, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_43
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100935)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 2000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_44
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100935) then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100935)
    ;
    (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  end
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_45
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_46
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100935) then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100935)
    ;
    (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  end
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_47
  local Args = {}
end
}
, 
[110] = {AbilityIcon = "τö╡τö╖Φâ╜σè¢", ApRecovery = 7, 
AudioList = {[12438] = false, [12439] = false, [8804] = false}
, Desc = "τö╡τö╖Φâ╜σè¢", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_48
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101042)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 1010063, "center", false)
  ;
  (SkillFuncs["Θö\128µ»üµîçσ«ÜΘú₧ΦíîΘüôσà\183"])(Attacker, Hitter, SkillInfo, HitInfo, 101025)
  ;
  (SkillFuncs["Θö\128µ»üµîçσ«ÜΘú₧ΦíîΘüôσà\183"])(Attacker, Hitter, SkillInfo, HitInfo, 101026)
  ;
  (SkillFuncs["Θö\128µ»üµîçσ«ÜΘú₧ΦíîΘüôσà\183"])(Attacker, Hitter, SkillInfo, HitInfo, 101027)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 110, MinOpenTime = 1000, PVPApRecovery = 7, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_49
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101042)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 1010063, "center", false)
  ;
  (SkillFuncs["Θö\128µ»üµîçσ«ÜΘú₧ΦíîΘüôσà\183"])(Attacker, Hitter, SkillInfo, HitInfo, 101025)
  ;
  (SkillFuncs["Θö\128µ»üµîçσ«ÜΘú₧ΦíîΘüôσà\183"])(Attacker, Hitter, SkillInfo, HitInfo, 101026)
  ;
  (SkillFuncs["Θö\128µ»üµîçσ«ÜΘú₧ΦíîΘüôσà\183"])(Attacker, Hitter, SkillInfo, HitInfo, 101027)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_50
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 2)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 1010063, "center", false)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101042)
  ;
  (SkillFuncs["σê¢σ╗║σ¡Éσ╝╣"])(Attacker, Hitter, SkillInfo, HitInfo, 101025, 101023, 0, false)
  ;
  (SkillFuncs["σê¢σ╗║σ¡Éσ╝╣"])(Attacker, Hitter, SkillInfo, HitInfo, 101026, 101023, 0, false)
  ;
  (SkillFuncs["σê¢σ╗║σ¡Éσ╝╣"])(Attacker, Hitter, SkillInfo, HitInfo, 101027, 101023, 0, false)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_51
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_52
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 2)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 1010063, "center", false)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101042)
  ;
  (SkillFuncs["σê¢σ╗║σ¡Éσ╝╣"])(Attacker, Hitter, SkillInfo, HitInfo, 101025, 101023, 0, false)
  ;
  (SkillFuncs["σê¢σ╗║σ¡Éσ╝╣"])(Attacker, Hitter, SkillInfo, HitInfo, 101026, 101023, 0, false)
  ;
  (SkillFuncs["σê¢σ╗║σ¡Éσ╝╣"])(Attacker, Hitter, SkillInfo, HitInfo, 101027, 101023, 0, false)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_53
  local Args = {}
end
}
, 
[111] = {AbilityIcon = "µû»σ¥ªσ¢áσç¥Φí\128", ApRecovery = 2, 
AudioList = {[12438] = false, [12439] = false, [8815] = false}
, Desc = "µ┐\128µ┤╗σÉÄµòîΣ║║σÅùσç╗τí¼τ¢┤σ╗╢Θò┐x%σ╣╢ΘÖäσèáµ╡üΦí\128µòêµ₧£µ»ÅτºÆµìƒσñ▒xτé╣τöƒσæ\189(PS∩╝Üx=µû»σ¥ªσ¢áµö╗σç\187*1%∩╝ë∩╝îσ╣╢Σ╜┐Θù¬Θü┐ΘÖäσ╕ªµö╗σç╗µòêµ₧£∩╝îσæ╜Σ╕¡σÉÄσñºσ╣àµÅÉΘ½ÿτïéΣ╣▒σÇ╝∩╝¢", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_54
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 111000)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 111, MinOpenTime = 1000, PVPApRecovery = 2, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_55
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 111000)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_56
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 5)
  Args[1] = Attacker:GetAtk() * 1
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 111000, {DamagePercent = Args[1]})
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_57
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_58
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 5)
  Args[1] = Attacker:GetAtk() * 1
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 111000, {DamagePercent = Args[1]})
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_59
  local Args = {}
end
}
, 
[112] = {AbilityIcon = "Φì╝µ»ÿΦâ╜σè¢", ApRecovery = 10, 
AudioList = {[12438] = false, [12439] = false}
, Desc = "Φì╝µ»ÿΦâ╜σè¢", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_60
  local Args = {}
  if not (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101219) then
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101203) then
      (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101237)
      ;
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101212)
    else
      if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101221) then
        (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101235)
      else
        ;
        (SkillFuncs["Θö\128µ»üµîçσ«ÜΘú₧ΦíîΘüôσà\183"])(Attacker, Hitter, SkillInfo, HitInfo, 101204)
        ;
        (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 1002)
        ;
        (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 1012021, "base", false)
        ;
        (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101211)
      end
    end
  end
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101208)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101209)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101221)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 112, MinOpenTime = 1500, PVPApRecovery = 10, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_61
  local Args = {}
  if not (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101219) then
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101203) then
      (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101237)
      ;
      (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101212)
    else
      if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101221) then
        (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101235)
      else
        ;
        (SkillFuncs["Θö\128µ»üµîçσ«ÜΘú₧ΦíîΘüôσà\183"])(Attacker, Hitter, SkillInfo, HitInfo, 101204)
        ;
        (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 1002)
        ;
        (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 1012021, "base", false)
        ;
        (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101211)
      end
    end
  end
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101208)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101209)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101221)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1500, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_62
  local Args = {}
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101203) then
    (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 35)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101212)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101208)
  else
    ;
    (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 25)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101211)
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101202) then
      (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101209)
    else
      ;
      (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101208)
    end
  end
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101221)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.6)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_63
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_64
  local Args = {}
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101203) then
    (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 35)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101212)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101208)
  else
    ;
    (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 25)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101211)
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101202) then
      (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101209)
    else
      ;
      (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101208)
    end
  end
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101221)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.6)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_65
  local Args = {}
end
}
, 
[113] = {AbilityIcon = "σêçσ▓¢Φâ╜σè¢", ApRecovery = 10, 
AudioList = {[12438] = false, [12439] = false, [8790] = false}
, Desc = "µ┐\128µ┤╗µ£ƒΘù┤Σ╜┐σà¿Φ║½τí¼σîû,µè╡µ╢êσÅùσê░τÜäΣ╝ñσ«\179", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_66
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102512)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102513)
end
, MerId = 113, MinOpenTime = 1000, PVPApRecovery = 10, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_67
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102512)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102513)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_68
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102512)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102513)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_69
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_70
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102512)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102513)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_71
  local Args = {}
end
}
, 
[114] = {AbilityIcon = "Φ¢ÖσÉ╣Φâ╜σè¢", ApRecovery = 4, 
AudioList = {[12438] = false, [12439] = false, [80309] = false}
, Desc = "Φ¢ÖσÉ╣Φâ╜σè¢", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_72
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101401, 0, nil, false)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101409)
end
, MerId = 114, MinOpenTime = 8000, PVPApRecovery = 4, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_73
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101401, 0, nil, false)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101409)
end
, PVPMinOpenTime = 8000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_74
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 25)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101409, {Life = 4})
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_75
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_76
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 12.5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101409)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_77
  local Args = {}
end
}
, 
[115] = {AbilityIcon = "τ¢╕µ│╜Φâ╜σè¢", ApRecovery = 5, 
AudioList = {[12438] = false, [12439] = false}
, Desc = "τ¢╕µ│╜Φâ╜σè¢", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_78
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 115, MinOpenTime = 1000, PVPApRecovery = 5, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_79
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_80
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 100)
  if (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) >= 100 then
    (SkillFuncs["µö╗σç╗σñ▒µòê"])(Attacker, Hitter, SkillInfo, HitInfo, 500, 3, 0)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101503)
    ;
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101513)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101507)
  else
    ;
    (SkillFuncs["µö╗σç╗σñ▒µòê"])(Attacker, Hitter, SkillInfo, HitInfo, 500, 3, 0)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101506)
  end
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_81
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_82
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 100)
  if (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) >= 100 then
    (SkillFuncs["µö╗σç╗σñ▒µòê"])(Attacker, Hitter, SkillInfo, HitInfo, 500, 3, 0)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101503)
    ;
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101513)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101507)
  else
    ;
    (SkillFuncs["µö╗σç╗σñ▒µòê"])(Attacker, Hitter, SkillInfo, HitInfo, 500, 3, 0)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101506)
  end
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_83
  local Args = {}
end
}
, 
[116] = {AbilityIcon = "σ░╛τÖ╜Φâ╜σè¢", ApRecovery = 1, 
AudioList = {[80319] = false}
, Desc = "τ¢╕µ│╜Φâ╜σè¢", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_84
  local Args = {}
  if ((SkillFuncs["µÿ»σÉªσ£¿Φ»Ñτè╢µ\128\129"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, "σ╛àµ£║") or (SkillFuncs["µÿ»σÉªσ£¿Φ»Ñτè╢µ\128\129"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, "τº╗σè¿")) and (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101601) then
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101632)
  end
  ;
  (SkillFuncs["σà│Θù¡τº╗σè¿µ¿íσ╝Åµ¢┤µö╣"])(Attacker, Hitter, SkillInfo, HitInfo)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101605, 101605, true)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101606, 101606, true)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101607, 101607, true)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101611)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101601)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["Φ«╛τ╜«µè\128Φâ╜µáçΦ«\176"])(Attacker, Hitter, SkillInfo, HitInfo, false, "101600_σ░╛τÖ╜")
end
, MerId = 116, MinOpenTime = 10000, PVPApRecovery = 1, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_85
  local Args = {}
  if ((SkillFuncs["µÿ»σÉªσ£¿Φ»Ñτè╢µ\128\129"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, "σ╛àµ£║") or (SkillFuncs["µÿ»σÉªσ£¿Φ»Ñτè╢µ\128\129"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, "τº╗σè¿")) and (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101601) then
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101632)
  end
  ;
  (SkillFuncs["σà│Θù¡τº╗σè¿µ¿íσ╝Åµ¢┤µö╣"])(Attacker, Hitter, SkillInfo, HitInfo)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101605, 0, true)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101606, 0, true)
  ;
  (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101607, 0, true)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101601)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["Φ«╛τ╜«µè\128Φâ╜µáçΦ«\176"])(Attacker, Hitter, SkillInfo, HitInfo, false, "101600_σ░╛τÖ╜")
end
, PVPMinOpenTime = 10000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_86
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 0.5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101601)
  if (SkillFuncs["µÿ»σÉªσ£¿Φ»Ñτè╢µ\128\129"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, "σ╛àµ£║") or (SkillFuncs["µÿ»σÉªσ£¿Φ»Ñτè╢µ\128\129"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, "τº╗σè¿") then
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101631)
  else
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101605, 101608, true)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101606, 101609, true)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101607, 101610, true)
    ;
    (SkillFuncs["σÅÿµ¢┤τº╗σè¿µ¿íσ╝Å"])(Attacker, Hitter, SkillInfo, HitInfo, 99999, 1, {idle = "idle_sp"}, 1.3, true)
  end
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["Φ«╛τ╜«µè\128Φâ╜µáçΦ«\176"])(Attacker, Hitter, SkillInfo, HitInfo, false, "101600_σ░╛τÖ╜")
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_87
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_88
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 0.5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101601)
  if (SkillFuncs["µÿ»σÉªσ£¿Φ»Ñτè╢µ\128\129"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, "σ╛àµ£║") or (SkillFuncs["µÿ»σÉªσ£¿Φ»Ñτè╢µ\128\129"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, "τº╗σè¿") then
    (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 101631)
  else
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101605, 101608, true)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101606, 101609, true)
    ;
    (SkillFuncs["µ¢┐µìóµè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, 101607, 101610, true)
    ;
    (SkillFuncs["σÅÿµ¢┤τº╗σè¿µ¿íσ╝Å"])(Attacker, Hitter, SkillInfo, HitInfo, 99999, 1, {idle = "idle_sp"}, 1.3, true)
  end
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["Φ«╛τ╜«µè\128Φâ╜µáçΦ«\176"])(Attacker, Hitter, SkillInfo, HitInfo, false, "101600_σ░╛τÖ╜")
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_89
  local Args = {}
end
}
, 
[118] = {AbilityIcon = "τö╡τö╖Φâ╜σè¢", ApRecovery = 7, 
AudioList = {[12438] = false, [12439] = false}
, Desc = "τö╡τö╖Φâ╜σè¢", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_90
  local Args = {}
end
, MerId = 118, MinOpenTime = 1000, PVPApRecovery = 7, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_91
  local Args = {}
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_92
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_93
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_94
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_95
  local Args = {}
end
}
, 
[119] = {AbilityIcon = "µ¡╗µƒäµ£¿Φâ╜σè\155", ApRecovery = 20, 
AudioList = {[12438] = false, [12439] = false, [80296] = false}
, Desc = "p1σèáΘ\128ƒΦâ╜ΘçÅµ¥íτº»µöÆ p2Φîâσ¢┤τº»Φôäσ┤⌐σ¥ÅσÇ\188", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_96
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101908)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 119, MinOpenTime = 1000, PVPApRecovery = 20, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_97
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101908)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_98
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101908)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_99
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_100
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 101908)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_101
  local Args = {}
end
}
, 
[120] = {AbilityIcon = "ΦæíΦÉäΦâ╜σè¢", ApRecovery = 10, 
AudioList = {[12438] = false, [12439] = false, [8779] = false}
, Desc = "Σ║îµ¼íCDΘÖìΣ╜Äτ╗┤σ║ª ΦæíΦÉäτÉâΘÜÉΦù\143 µö╗σç╗σè¢µÅÉΘ½\152", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_102
  local Args = {}
  ;
  (SkillFuncs["µÄºσê╢ΦæíΦÉäτÉ\131"])(Attacker, Hitter, SkillInfo, HitInfo, true)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102024)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 120, MinOpenTime = 0, PVPApRecovery = 10, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_103
  local Args = {}
  ;
  (SkillFuncs["µÄºσê╢ΦæíΦÉäτÉ\131"])(Attacker, Hitter, SkillInfo, HitInfo, true)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102024)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 0, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_104
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
  Args[1] = (SkillFuncs["ΦÄ╖σÅûΣ║îµ¼íCDσ╖▓µëºΦíîµù╢Θù\180"])(Attacker, Hitter, SkillInfo, HitInfo, "SecondSkillBtn")
  Args[3] = (SkillFuncs["ΦÄ╖σÅûΣ║îµ¼íCDσ╖▓µëºΦíîµù╢Θù\180"])(Attacker, Hitter, SkillInfo, HitInfo, "ThirdSkillBtn")
  if not Args[2] and not (SkillFuncs["µÿ»σÉªσ£¿σå╖σì┤Σ╕¡"])(Attacker, Hitter, SkillInfo, HitInfo, 102020) then
    (SkillFuncs["Φ«╛τ╜«Σ║îµ¼íCDΣ┐íµü»"])(Attacker, Hitter, SkillInfo, HitInfo, {"SecondSkillBtn"}, {8}, {102021})
  end
  ;
  (SkillFuncs["Φ«╛τ╜«Σ║îµ¼íCDΣ┐íµü»"])(Attacker, Hitter, SkillInfo, HitInfo, {"SecondSkillBtn"}, {8}, {102021})
  if not Args[4] and not (SkillFuncs["µÿ»σÉªσ£¿σå╖σì┤Σ╕¡"])(Attacker, Hitter, SkillInfo, HitInfo, 102022) then
    (SkillFuncs["Φ«╛τ╜«Σ║îµ¼íCDΣ┐íµü»"])(Attacker, Hitter, SkillInfo, HitInfo, {"ThirdSkillBtn"}, {8}, {102023})
  end
  ;
  (SkillFuncs["Φ«╛τ╜«Σ║îµ¼íCDΣ┐íµü»"])(Attacker, Hitter, SkillInfo, HitInfo, {"ThirdSkillBtn"}, {8}, {102023})
  ;
  (SkillFuncs["µÄºσê╢ΦæíΦÉäτÉ\131"])(Attacker, Hitter, SkillInfo, HitInfo, false)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102024)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_105
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_106
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
  Args[1] = (SkillFuncs["ΦÄ╖σÅûΣ║îµ¼íCDσ╖▓µëºΦíîµù╢Θù\180"])(Attacker, Hitter, SkillInfo, HitInfo, "SecondSkillBtn")
  Args[3] = (SkillFuncs["ΦÄ╖σÅûΣ║îµ¼íCDσ╖▓µëºΦíîµù╢Θù\180"])(Attacker, Hitter, SkillInfo, HitInfo, "ThirdSkillBtn")
  if not Args[2] and not (SkillFuncs["µÿ»σÉªσ£¿σå╖σì┤Σ╕¡"])(Attacker, Hitter, SkillInfo, HitInfo, 102020) then
    (SkillFuncs["Φ«╛τ╜«Σ║îµ¼íCDΣ┐íµü»"])(Attacker, Hitter, SkillInfo, HitInfo, {"SecondSkillBtn"}, {8}, {102021})
  end
  ;
  (SkillFuncs["Φ«╛τ╜«Σ║îµ¼íCDΣ┐íµü»"])(Attacker, Hitter, SkillInfo, HitInfo, {"SecondSkillBtn"}, {8}, {102021})
  if not Args[4] and not (SkillFuncs["µÿ»σÉªσ£¿σå╖σì┤Σ╕¡"])(Attacker, Hitter, SkillInfo, HitInfo, 102022) then
    (SkillFuncs["Φ«╛τ╜«Σ║îµ¼íCDΣ┐íµü»"])(Attacker, Hitter, SkillInfo, HitInfo, {"ThirdSkillBtn"}, {8}, {102023})
  end
  ;
  (SkillFuncs["Φ«╛τ╜«Σ║îµ¼íCDΣ┐íµü»"])(Attacker, Hitter, SkillInfo, HitInfo, {"ThirdSkillBtn"}, {8}, {102023})
  ;
  (SkillFuncs["µÄºσê╢ΦæíΦÉäτÉ\131"])(Attacker, Hitter, SkillInfo, HitInfo, false)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102024)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_107
  local Args = {}
end
}
, 
[121] = {AbilityIcon = "σ«ëσ╛╖τôªΦâ╜σè\155", ApRecovery = 5, 
AudioList = {[12438] = false, [12439] = false, [8704] = false}
, EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_108
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.6)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102112)
end
, MerId = 121, MinOpenTime = 8000, PVPApRecovery = 5, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_109
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.6)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102112)
end
, PVPMinOpenTime = 8000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_110
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 15)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.6)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102112)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_111
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_112
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 15)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.6)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102112)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_113
  local Args = {}
end
}
, 
[122] = {AbilityIcon = "σ╕╕µÜù8", ApRecovery = 2, 
AudioList = {[12438] = false, [12439] = false, [8736] = false}
, Desc = "µ┐\128µ┤╗σÉÄσ╕╕µÜùσ┐½Θ\128ƒµüóσñìµÜùσ╜▒σ\128╝σ╣╢µüóσñìτöƒσæ╜∩╝îσÅÿΦ║½σÉÄµÅÉΣ╛¢σñºΘçÅµö╗Θ\128ƒτº╗ΘÇ\159", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_114
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122002)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122001)
end
, MerId = 122, MinOpenTime = 1000, PVPApRecovery = 2, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_115
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122002)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122001)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_116
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
  print("σÉ┤ΦÉîΦÇüτïù = µ▓ÖΘ¢ò")
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122003) then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122002)
  else
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122001)
  end
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_117
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_118
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
  print("σÉ┤ΦÉîΦÇüτïù = µ▓ÖΘ¢ò")
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122003) then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122002)
  else
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 122001)
  end
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_119
  local Args = {}
end
}
, 
[123] = {AbilityIcon = "σ╕╕µÜù8", ApRecovery = 3, 
AudioList = {[12438] = false, [12439] = false, [8736] = false}
, Desc = "µ┐\128µ┤╗σÉÄσ╕╕µÜùσ┐½Θ\128ƒµüóσñìµÜùσ╜▒σ\128╝σ╣╢µüóσñìτöƒσæ╜∩╝îσÅÿΦ║½σÉÄµÅÉΣ╛¢σñºΘçÅµö╗Θ\128ƒτº╗ΘÇ\159", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_120
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123002)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123001)
end
, MerId = 123, MinOpenTime = 1000, PVPApRecovery = 3, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_121
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123002)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123001)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_122
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 17)
  print("σÉ┤ΦÉîΦÇüτïù = µ▓ÖΘ¢ò")
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123003) then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123002)
  else
  end
  if (SkillFuncs["µÿ»σÉªσ£¿τ½₧µè\128σ£\186"])(Attacker, Hitter, SkillInfo, HitInfo) == 1 then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123001)
  end
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_123
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_124
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 17)
  print("σÉ┤ΦÉîΦÇüτïù = µ▓ÖΘ¢ò")
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123003) then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123002)
  else
  end
  if (SkillFuncs["µÿ»σÉªσ£¿τ½₧µè\128σ£\186"])(Attacker, Hitter, SkillInfo, HitInfo) == 1 then
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 123001)
  end
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_125
  local Args = {}
end
}
, 
[124] = {AbilityIcon = "µû░τ╗┐Φ░╖Φâ╜σè\155", ApRecovery = 20, 
AudioList = {[12438] = false, [12439] = false, [12443] = false}
, EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_126
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102401)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4, 1)
  ;
  (SkillFuncs["µëúΘÖñΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo, 100)
end
, MerId = 124, MinOpenTime = 1000, PVPApRecovery = 20, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_127
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102401)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4, 1)
  ;
  (SkillFuncs["µëúΘÖñΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo, 100)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_128
  local Args = {}
  Args[1] = (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) / 100
  Args[2] = 20 - Args[1] * 10
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102423) then
    Args[2] = 0
  end
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, Args[2])
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102401)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.8, 0.8, 0.8}, 0.4, 1)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_129
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_130
  local Args = {}
  Args[1] = (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) / 100
  Args[2] = 20 - Args[1] * 10
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102423) then
    Args[2] = 0
  end
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, Args[2])
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102401)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.8, 0.8, 0.8}, 0.4, 1)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_131
  local Args = {}
end
}
, 
[125] = {AbilityIcon = "σêçσ▓¢Φâ╜σè¢", ApRecovery = 10, 
AudioList = {[12438] = false, [12439] = false, [8790] = false}
, Desc = "µ┐\128µ┤╗µ£ƒΘù┤Σ╜┐σà¿Φ║½τí¼σîû,µè╡µ╢êσÅùσê░τÜäΣ╝ñσ«\179", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_132
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102512)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102513)
end
, MerId = 125, MinOpenTime = 5000, PVPApRecovery = 10, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_133
  local Args = {}
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102512)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102513)
end
, PVPMinOpenTime = 5000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_134
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102512)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102513)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_135
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_136
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 20)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102512)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102513)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_137
  local Args = {}
end
}
, 
[186] = {AbilityIcon = "Φ╜░Φâ╜σè¢µèÇ", ApRecovery = 30, 
AudioList = {[12438] = false, [12439] = false}
, Desc = "Φ╜░τü½τä░Φâ╜σè¢σèáσ┐½µö╗ΘÇƒ∩╝¢ Φ╜░σ»Æσå░Φâ╜σè¢σçÅΣ╝ñΘó¥σñûµèÇΦâ╜Θ£╕Σ╜ôσÉÄµÆ\164", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_138
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100201)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100203)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100101)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100103)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100508)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100506)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 186, MinOpenTime = 1000, PVPApRecovery = 30, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_139
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100201)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100203)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100101)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100103)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100508)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100506)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_140
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100502) then
    (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100521, "base", false)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100508)
  else
    ;
    (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100522, "base", false)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100506)
  end
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_141
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_142
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 10)
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100502) then
    (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100521, "base", false)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100508)
  else
    ;
    (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100522, "base", false)
    ;
    (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100506)
  end
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_143
  local Args = {}
end
}
, 
[187] = {AbilityIcon = "µ¼ºσ░öΘ║ªτë╣Φâ╜σè¢σ¢╛µáç", ApRecovery = 14, 
AudioList = {[12438] = false, [12439] = false, [8768] = false}
, Desc = "µ¼ºσ░öΘ║ªτë╣µùáΦºåΣ╗╗Σ╜òµëôσç╗µòêµ₧£", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_144
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 187, MinOpenTime = 3000, PVPApRecovery = 14, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_145
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 3000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_146
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 12.5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_147
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_148
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 12.5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_149
  local Args = {}
end
}
, 
[188] = {AbilityIcon = "µû░τ╗┐Φ░╖Φâ╜σè\155", ApRecovery = 20, 
AudioList = {[12438] = false, [12439] = false, [12443] = false}
, EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_150
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102401)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4, 1)
  ;
  (SkillFuncs["µëúΘÖñΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo, 100)
end
, MerId = 188, MinOpenTime = 1000, PVPApRecovery = 20, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_151
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102401)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4, 1)
  ;
  (SkillFuncs["µëúΘÖñΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo, 100)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_152
  local Args = {}
  Args[1] = (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) / 100
  Args[2] = 20 - Args[1] * 10
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102423) then
    Args[2] = 0
  end
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, Args[2])
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102401)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.8, 0.8, 0.8}, 0.4, 1)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_153
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_154
  local Args = {}
  Args[1] = (SkillFuncs["σ╜ôσëìΦâ╜ΘçÅ"])(Attacker, Hitter, SkillInfo, HitInfo) / 100
  Args[2] = 20 - Args[1] * 10
  if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102423) then
    Args[2] = 0
  end
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, Args[2])
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 102401)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.8, 0.8, 0.8}, 0.4, 1)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_155
  local Args = {}
end
}
, 
[199] = {AbilityIcon = "µ¼ºσ░öΘ║ªτë╣Φâ╜σè¢σ¢╛µáç", ApRecovery = 30, Desc = "µ¼ºσ░öΘ║ªτë╣µùáΦºåΣ╗╗Σ╜òµëôσç╗µòêµ₧£", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_156
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 199, MinOpenTime = 3000, PVPApRecovery = 30, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_157
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 3000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_158
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_159
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_160
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 5)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100302)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_161
  local Args = {}
end
}
, 
[202] = {AbilityIcon = "τêåΦ▒¬Φâ╜σè¢σ¢╛µáç", ApRecovery = 10, 
AudioList = {[12438] = false, [12439] = false, [8727] = false}
, Desc = "µ┐\128µ┤╗σÉÄσ░åτêåΘúÄΦ╜¼σîûΣ╕║µÄ¿Φ┐¢σè¢µ¥Ñσ«₧τÄ░Θ½ÿΘ\128ƒτº╗σè¿∩╝îµ£ƒΘù┤σÅ»τé╣σç╗µÖ«µö╗τ¢┤µÄÑΘçèµö╛σå▓σê║µö╗σç\187", EndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_162
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100212)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100226)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100229)
  ;
  (SkillFuncs["σà│Θù¡τº╗σè¿µ¿íσ╝Åµ¢┤µö╣"])(Attacker, Hitter, SkillInfo, HitInfo)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, MerId = 202, MinOpenTime = 1000, PVPApRecovery = 10, PVPEndAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_163
  local Args = {}
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100212)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100226)
  ;
  (SkillFuncs["σêábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100229)
  ;
  (SkillFuncs["σà│Θù¡τº╗σè¿µ¿íσ╝Åµ¢┤µö╣"])(Attacker, Hitter, SkillInfo, HitInfo)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, false, {0.5, 0.5, 0.5}, 0.4)
end
, PVPMinOpenTime = 1000, PVPStartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_164
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 2)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100202, "hand_l", false)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100202, "hand_r", false)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100207, "base", false)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100226)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100229)
  ;
  (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 100233)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, PVPUpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_165
  local Args = {}
end
, StartAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_166
  local Args = {}
  ;
  (SkillFuncs["Φ«╛τ╜«Φâ╜σè¢µ╢êΦ\128\151"])(Attacker, Hitter, SkillInfo, HitInfo, 2)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100202, "hand_l", false)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100202, "hand_r", false)
  ;
  (SkillFuncs["µÆ¡µö╛τë╣µòê"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100207, "base", false)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100226)
  ;
  (SkillFuncs["σèábuff"])(Attacker, Hitter, SkillInfo, HitInfo, Attacker, 100229)
  ;
  (SkillFuncs["σ╝║σê╢Θçèµö╛µè\128Φâ\189"])(Attacker, Hitter, SkillInfo, HitInfo, nil, 100233)
  ;
  (SkillFuncs["µö╣σÅÿσ£║µÖ»σÄïµÜù"])(Attacker, Hitter, SkillInfo, HitInfo, true, {0.5, 0.5, 0.5}, 0.4)
end
, UpAbilityEffect = function(Attacker, Hitter, SkillInfo, HitInfo)
  -- function num : 0_167
  local Args = {}
end
}
}
, 
CnToEn = {["PVPσà│Θù¡Φâ╜σè¢µòêµ₧£"] = "PVPEndAbilityEffect", ["PVPσå╖σì┤µòêµ₧£"] = "PVPCDEffect", ["PVPσ╝\128σÉ»Φâ╜σè¢µòêµ₧\156"] = "PVPStartAbilityEffect", ["PVPµîëΘÆ«σ╝╣Φ╡╖ΦºªσÅæµòêµ₧£"] = "PVPUpAbilityEffect", ["PVPµ£\128σ░Åσ╝ÇσÉ»µù╢Θò\191"] = "PVPMinOpenTime", ["PVPµ»ÅτºÆµüóσñìΘç\143"] = "PVPApRecovery", ["σà│Θù¡Φâ╜σè¢µòêµ₧£"] = "EndAbilityEffect", ["σå╖σì┤µòêµ₧£"] = "CDEffect", ["σñ┤σâÅτë╣µòêId"] = "HeadEffectId", ["σ╝\128σÉ»Φâ╜σè¢µòêµ₧\156"] = "StartAbilityEffect", ["µîëΘÆ«σ╝╣Φ╡╖ΦºªσÅæµòêµ₧£"] = "UpAbilityEffect", ["µ£\128σ░Åσ╝ÇσÉ»µù╢Θò\191"] = "MinOpenTime", ["µ¿íσ₧ïτë╣µòêId"] = "ModelEffectId", ["µ»ÅτºÆµüóσñìΘç\143"] = "ApRecovery", ["µ╢êΦ\128ùτ▒╗σ₧\139"] = "ConsumeType", ["Φâ╜σè¢ICON"] = "AbilityIcon", ["Φâ╜σè¢µÅÅΦ┐░"] = "Desc", ["Φâ╜σè¢τ▒╗σ₧ï"] = "AbilityType", ["Φï▒Θ¢äτ▒╗ID"] = "MerId", ["Θƒ│ΘóæµÆ¡µö╛σêùΦí¿"] = "AudioList"}
}


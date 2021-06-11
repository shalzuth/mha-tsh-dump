-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    AttendData = {
        {
            LeaveAni = "die",
            OffsetPos = { 180, 0, 0 },
            Scan = 12000,
            ScanCycle = 500,
            ScanRange = 2000,
            SceneColour = { 0.3, 0.68, 1, 11, 0.2, 0.75 },
            TriCD = 3000,
            TriSkillId = 371401,
        },
    },
    CnToEn = {
        ["Σ║Æσè¿µè\128Φâ\189"] = "TriSkillId",
        ["Σ║Æσè¿µè\128Φâ╜CD"] = "TriCD",
        ["σüÅτº╗σ¥Éµáç"] = "OffsetPos",
        ["σ£║µÖ»σÄïµÜù"] = "SceneColour",
        ["τª╗σ╝Çσè¿Σ╜£"] = "LeaveAni",
        ["Θ¼╝τ£╝µë½µÅÅµù╢Θù┤"] = "Scan",
        ["Θ¼╝τ£╝µë½µÅÅΦîâσ¢┤"] = "ScanRange",
        ["Θ¼╝τ£╝µë½µÅÅΘù┤ΘÜö"] = "ScanCycle",
    },
}

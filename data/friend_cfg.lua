-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    CloseCfg = {
        {
            CloseNum = { 0, 29 },
            Desc = "σå╖µ╖í",
            Font = "Tgr2",
            Icon = "σÑ╜σÅïΣ║▓σ»åσ║\1661",
            Id = 1,
        },
        {
            CloseNum = { 30, 59 },
            Desc = "σÑ╜σÅï",
            Font = "Tss1",
            Icon = "σÑ╜σÅïΣ║▓σ»åσ║\1662",
            Id = 2,
        },
        {
            CloseNum = { 60, 89 },
            Desc = "Σ║▓σ»å",
            Font = "To",
            Icon = "σÑ╜σÅïΣ║▓σ»åσ║\1663",
            Id = 3,
        },
        {
            CloseNum = { 90 },
            Desc = "µîÜσÅï",
            Font = "Tr",
            Icon = "σÑ╜σÅïΣ║▓σ»åσ║\1664",
            Id = 4,
        },
    },
    ConstCfg = {
        APPLY_EFFECT_TIME = 86400,
        BLACK_LIMIT = 20,
        CHOOSE_REFRESH_CD = 10,
        FRIEND_LIMIT = 50,
        QINMI_LIMIT = 90,
        RECIVE_APPLY_LIMIT = 20,
        SEND_APPLY_LIMIT = 50,
        SOON_CHAT_LIMIT = 20,
        SOON_LINK_LIMIT = 20,
        STRENGTH_AMOUNT = 5,
        STRENGTH_RECIVE_LIMIT = 10,
        STRENGTH_SEND_LIMIT = 50,
    },
    FriendKey = {
        { CKey = "GiveStrone", Id = 1, Name = "Stamina gifting attempts.", SKey = "iStrengthSendCount" },
        { CKey = "ReceiveStrone", Id = 2, Name = "Stamina receiving attempts.", SKey = "iStrengthReciveCount" },
        { CKey = "OnLine", Id = 3, Name = "Online Status", SKey = "IsOnline" },
        { CKey = "LeaveTime", Id = 4, Name = "Offline Time", SKey = "DisconnectTime" },
        { CKey = "Level", Id = 5, Name = "Level", SKey = "Level" },
        { CKey = "TopLevel", Id = 6, Name = "Summit Level", SKey = "TopLevel" },
        { CKey = "AvatarId", Id = 7, Name = "Avatar", SKey = "FaceIcon" },
        { CKey = "AvatarFrameId", Id = 8, Name = "Avatar Frame", SKey = "FaceFrame" },
        { CKey = "Name", Id = 9, Name = "Name", SKey = "Name" },
    },
    PageCfg = {
        { Index = 1, PageName = "Friends", Type = "FRIEND" },
        { Index = 2, PageName = "Add", Type = "ADD" },
        { Index = 3, PageName = "Apply", Type = "APPLY" },
        { Index = 4, PageName = "Latest", Type = "RECENT" },
        { Index = 5, PageName = "Blacklist", Type = "BLACK" },
    },
    QinMiCfg = {
        { ID = 1, Inc = 1 },
    },
}

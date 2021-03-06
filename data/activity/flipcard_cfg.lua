-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    Config = {
        {
            Content = {
                { 1, 2 },
                { 2, 2 },
                { 3, 2 },
                { 4, 2 },
            },
            Cycle = 1,
            Id = 1,
            Reward = {
                { 2, 1001001, 10000 },
                { 4, 1025001, 1 },
            },
            Size = { 2, 4 },
            Version = 1,
        },
        {
            Content = {
                { 1, 2 },
                { 2, 2 },
                { 3, 2 },
                { 4, 2 },
                { 5, 2 },
            },
            Cycle = 2,
            Id = 2,
            Reward = {
                { 3, 1001001, 10000 },
                { 5, 1025001, 1 },
            },
            Size = { 2, 5 },
            Version = 1,
        },
        {
            Content = {
                { 1, 4 },
                { 2, 2 },
                { 3, 2 },
                { 4, 2 },
                { 5, 2 },
            },
            Cycle = 3,
            Id = 3,
            Reward = {
                { 3, 1001001, 10000 },
                { 6, 1025001, 2 },
            },
            Size = { 2, 6 },
            Version = 1,
        },
        {
            Content = {
                { 1, 2 },
                { 2, 2 },
                { 3, 2 },
                { 4, 2 },
                { 5, 2 },
                { 6, 2 },
            },
            Cycle = 4,
            Id = 4,
            Reward = {
                { 3, 1001001, 10000 },
                { 6, 1025001, 2 },
            },
            Size = { 3, 4 },
            Version = 1,
        },
        {
            Content = {
                { 1, 2 },
                { 2, 4 },
                { 3, 4 },
                { 4, 2 },
                { 5, 2 },
                { 6, 2 },
            },
            Cycle = 5,
            Id = 5,
            Reward = {
                { 3, 1001001, 10000 },
                { 6, 1025001, 3 },
                { 8, 1013107, 1 },
            },
            Size = { 2, 8 },
            Version = 1,
        },
        {
            Content = {
                { 1, 2 },
                { 2, 2 },
                { 3, 2 },
                { 4, 4 },
                { 5, 2 },
                { 6, 2 },
                { 7, 2 },
            },
            Cycle = 6,
            Id = 6,
            Reward = {
                { 3, 1001001, 10000 },
                { 6, 1025001, 3 },
                { 8, 1013107, 2 },
            },
            Size = { 2, 8 },
            Version = 1,
        },
        {
            Content = {
                { 1, 2 },
                { 2, 2 },
                { 3, 2 },
                { 4, 4 },
                { 5, 4 },
                { 6, 2 },
                { 9, 2 },
            },
            Cycle = 7,
            Id = 7,
            Reward = {
                { 3, 1001001, 10000 },
                { 6, 1021005, 2 },
                { 9, 1001013, 1 },
            },
            Size = { 3, 6 },
            Version = 1,
        },
        {
            Content = {
                { 1, 2 },
                { 2, 2 },
                { 3, 2 },
                { 4, 2 },
                { 5, 2 },
                { 6, 4 },
                { 7, 2 },
                { 8, 2 },
            },
            Cycle = 8,
            Id = 8,
            Reward = {
                { 3, 1001001, 10000 },
                { 6, 1021005, 3 },
                { 9, 1001013, 1 },
            },
            Size = { 3, 6 },
            Version = 1,
        },
    },
    ConstCfg = {
        DailyCount = { Name = "DailyCount", Value = "20" },
        RuleIntro = {
            Name = "RuleIntro",
            Value = "#s181.????????????????????????????#r#w36??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\130#r#s182.??????????????????????????#r#w36????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\130#r#s183.??????????????????????????#r#w36???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\128???????????????????????????????????????????\128?????????????????????????????????????????????\130#r#s184.??????????????#r#w36????????????????????????????????\128??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\130",
        },
    },
    GetCountCfg = {
        {
            Desc = "Spend 300 Hero Coins.",
            GetCount = 10,
            GoTo = "????????????",
            Id = 1,
            Name = "Spend Hero Coins",
            ServerApiName = "?????????\128?????????????\179",
            Value = 300,
        },
        {
            Desc = "Complete Peacekeeping quests 1 times",
            GetCount = 10,
            GoTo = "????????????????????????????|0",
            Id = 2,
            Name = "Peacekeeping",
            ServerApiName = "??????????????????????????????????????????",
            Value = 1,
        },
        {
            Desc = "Complete 1 Night Ops",
            GetCount = 10,
            GoTo = "????????????????????????????????????????|0",
            Id = 3,
            Name = "Night Ops",
            ServerApiName = "???????????????????????????????????????",
            Value = 1,
        },
        {
            Desc = "Complete Emergency Incidents 1 times",
            GetCount = 10,
            GoTo = "?????????\128??????????????\182",
            Id = 4,
            Name = "Emergency Incidents",
            Param = { 8 },
            ServerApiName = "?????????????????????????????????????????",
            Value = 1,
        },
        {
            Desc = "Complete 1 Supply Stage",
            GetCount = 10,
            GoTo = "?????????????",
            Id = 5,
            Name = "Supply Stage",
            Param = { 20 },
            ServerApiName = "?????????????????????????????????????????",
            Value = 1,
        },
        {
            Desc = "Complete 1 Shard Stage",
            GetCount = 10,
            GoTo = "????????????????\172",
            Id = 6,
            Name = "Shard Stage",
            Param = { 37 },
            ServerApiName = "?????????????????????????????????????????",
            Value = 1,
        },
        {
            Desc = "Complete Agency Assessments 1 time(s)",
            GetCount = 10,
            GoTo = "?????????????????\128?????????????",
            Id = 7,
            Name = "Agency Assessment",
            Param = { 2 },
            ServerApiName = "?????????????????????????????????????????\176",
            Value = 1,
        },
    },
    ResourceCfg = {
        { Icon = 1, Resource = "????????????????????????????_?????????????1" },
        { Icon = 2, Resource = "????????????????????????????_?????????????2" },
        { Icon = 3, Resource = "????????????????????????????_?????????????3" },
        { Icon = 4, Resource = "????????????????????????????_?????????????4" },
        { Icon = 5, Resource = "????????????????????????????_?????????????5" },
        { Icon = 6, Resource = "????????????????????????????_?????????????6" },
        { Icon = 7, Resource = "????????????????????????????_?????????????7" },
        { Icon = 8, Resource = "????????????????????????????_?????????????8" },
        { Icon = 9, Resource = "????????????????????????????_?????????????9" },
    },
    SrcMap = {
        { 1, 1, 2, 2, 3, 3, 4, 4 },
        { 1, 1, 2, 2, 3, 3, 4, 4, 5, 5 },
        { 1, 1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5 },
        { 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6 },
        { 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 6, 6 },
        { 1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 6, 6, 7, 7 },
        { 1, 1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 9, 9 },
        { 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 8, 8 },
    },
    Version2Id = {
        { 1, 2, 3, 4, 5, 6, 7, 8 },
    },
    VersionRewardCfg = {
        {
            Rewards = {
                { 1001002, 100 },
            },
            Version = 1,
        },
        {
            Rewards = {
                { 1001002, 100 },
            },
            Version = 2,
        },
    },
}

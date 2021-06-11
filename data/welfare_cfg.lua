-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    CONST_INFO = {
        ACT_EXCHANGE_TYPE_ID = 7,
        DAY_LOGIN_RED_DOT_LIST = {},
        DAY_SIGN_TYPE_ID = 2,
        GROWTH_FUND_TYPE_ID = 6,
        KEY_EXCHANGE_TYPE_ID = 12,
        LEVEL_REWARD_TYPE_ID = 3,
        LOGIN_WELFARE_TYPE_ID = 1,
        MONTHLY_CARD_TYPE_ID = 8,
        NOTICE_TYPE_ID = 5,
        PHYSICAL_TYPE_ID = 4,
        SHARE_INVITE_TYPE_ID = 11,
        SIGN_SUPPLEMENTARY_CONSUME = 10,
        SIGN_SUPPLEMENTARY_TIMES = 31,
        TOTAL_SIGN_IN_TYPE_ID = 9,
        WEEKLY_CARD_TYPE_ID = 13,
        WEEK_SIGN_IN_TYPE_ID = 10,
        ZHANLING_AREA_EVENT_TYPE_ID = 14,
        ZHANLING_BOSSCHALLENGE_TYPE_ID = 18,
        ZHANLING_CAMPAIGN_TYPE_ID = 15,
        ZHANLING_PCHALLENGE_TYPE_ID = 17,
        ZHANLING_USJ_TYPE_ID = 16,
    },
    ExchangeMoney = {
        { Cost = 10, Count = { 0, 1 }, CritProb = {
            { 2, 15 },
        }, Id = 1, Reward = 10000 },
        { Cost = 10, Count = { 2, 5 }, CritProb = {
            { 2, 15 },
        }, Id = 2, Reward = 10000 },
        { Cost = 10, Count = { 6, 10 }, CritProb = {
            { 2, 15 },
        }, Id = 3, Reward = 10000 },
        { Cost = 10, Count = { 11, 20 }, CritProb = {
            { 2, 20 },
        }, Id = 4, Reward = 10000 },
        { Cost = 10, Count = { 21, 40 }, CritProb = {
            { 2, 20 },
        }, Id = 5, Reward = 10000 },
        { Cost = 10, Count = { 41, 65 }, CritProb = {
            { 2, 20 },
        }, Id = 6, Reward = 10000 },
        { Cost = 10, Count = { 66, 100 }, CritProb = {
            { 2, 20 },
        }, Id = 7, Reward = 10000 },
    },
    LevelRewards = {
        {
            Id = 1,
            Level = 5,
            RewardList = {
                { Count = 200, ItemId = 1001002 },
                { Count = 3, ItemId = 1025001 },
                { Count = 6, ItemId = 1013110 },
            },
        },
        {
            Id = 2,
            Level = 10,
            RewardList = {
                { Count = 200, ItemId = 1001002 },
                { Count = 4, ItemId = 1025001 },
                { Count = 20000, ItemId = 1001001 },
            },
        },
        {
            Id = 3,
            Level = 15,
            RewardList = {
                { Count = 300, ItemId = 1001002 },
                { Count = 5, ItemId = 1025001 },
                { Count = 25000, ItemId = 1001001 },
            },
        },
        {
            Id = 4,
            Level = 20,
            RewardList = {
                { Count = 300, ItemId = 1001002 },
                { Count = 6, ItemId = 1025001 },
                { Count = 30000, ItemId = 1001001 },
            },
        },
        {
            Id = 5,
            Level = 25,
            RewardList = {
                { Count = 300, ItemId = 1001002 },
                { Count = 4, ItemId = 1021005 },
                { Count = 35000, ItemId = 1001001 },
            },
        },
        {
            Id = 6,
            Level = 30,
            RewardList = {
                { Count = 300, ItemId = 1001002 },
                { Count = 4, ItemId = 1021005 },
                { Count = 40000, ItemId = 1001001 },
            },
        },
        {
            Id = 7,
            Level = 35,
            RewardList = {
                { Count = 300, ItemId = 1001002 },
                { Count = 3, ItemId = 1022211 },
                { Count = 3, ItemId = 1022213 },
            },
        },
        {
            Id = 8,
            Level = 40,
            RewardList = {
                { Count = 300, ItemId = 1001002 },
                { Count = 7, ItemId = 1025001 },
                { Count = 60000, ItemId = 1001001 },
            },
        },
    },
    Sign = {
        {
            { Count = 5000, Day = 1, ItemId = 1001001, Month = 1, VipLevel = 1 },
            { Count = 2, Day = 2, ItemId = 1013103, Month = 1 },
            { Count = 2, Day = 3, ItemId = 1025001, Month = 1, VipLevel = 2 },
            { Count = 5000, Day = 4, ItemId = 1001001, Month = 1 },
            { Count = 1, Day = 5, ItemId = 1021002, Month = 1, VipLevel = 3 },
            { Count = 3, Day = 6, ItemId = 1025001, Month = 1 },
            { Count = 50, Day = 7, ItemId = 1001002, Month = 1, VipLevel = 4 },
            { Count = 1, Day = 8, ItemId = 1029994, Month = 1 },
            { Count = 6000, Day = 9, ItemId = 1001001, Month = 1, VipLevel = 5 },
            { Count = 3, Day = 10, ItemId = 1013103, Month = 1 },
            { Count = 3, Day = 11, ItemId = 1025001, Month = 1, VipLevel = 6 },
            { Count = 1, Day = 12, ItemId = 1021002, Month = 1 },
            { Count = 3, Day = 13, ItemId = 1013105, Month = 1, VipLevel = 7 },
            { Count = 50, Day = 14, ItemId = 1001002, Month = 1 },
            { Count = 1, Day = 15, ItemId = 1022002, Month = 1, VipLevel = 8 },
            { Count = 1, Day = 16, ItemId = 1029994, Month = 1 },
            { Count = 7000, Day = 17, ItemId = 1001001, Month = 1, VipLevel = 9 },
            { Count = 3, Day = 18, ItemId = 1013105, Month = 1 },
            { Count = 1, Day = 19, ItemId = 1021002, Month = 1, VipLevel = 9 },
            { Count = 7000, Day = 20, ItemId = 1001001, Month = 1 },
            { Count = 1, Day = 21, ItemId = 1001013, Month = 1, VipLevel = 10 },
            { Count = 1, Day = 22, ItemId = 1001021, Month = 1 },
            { Count = 1, Day = 23, ItemId = 1022002, Month = 1, VipLevel = 10 },
            { Count = 1, Day = 24, ItemId = 1029994, Month = 1 },
            { Count = 8000, Day = 25, ItemId = 1001001, Month = 1, VipLevel = 11 },
            { Count = 1, Day = 26, ItemId = 1021002, Month = 1 },
            { Count = 5, Day = 27, ItemId = 1025001, Month = 1, VipLevel = 11 },
            { Count = 1, Day = 28, ItemId = 1001031, Month = 1 },
            { Count = 9000, Day = 29, ItemId = 1001001, Month = 1, VipLevel = 11 },
            { Count = 3, Day = 30, ItemId = 1013107, Month = 1 },
            { Count = 5, Day = 31, ItemId = 1025001, Month = 1, VipLevel = 11 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 2 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 2, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 2 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 2, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 3 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 3, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 3 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 3, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 4 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 4, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 4 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 4, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 5 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 5, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 5 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 5, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 6 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 6, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 6 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 6, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 7 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 7, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 7 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 7, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 8 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 8, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 8 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 8, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 9 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 9, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 9 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 9, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 10 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 10, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 10 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 10, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 11 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 11, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 11 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 11, VipLevel = 4 },
        },
        {
            [14] = { Count = 50, Day = 14, ItemId = 1001002, Month = 12 },
            [21] = { Count = 1, Day = 21, ItemId = 1001013, Month = 12, VipLevel = 10 },
            [28] = { Count = 1, Day = 28, ItemId = 1001031, Month = 12 },
            [7] = { Count = 50, Day = 7, ItemId = 1001002, Month = 12, VipLevel = 4 },
        },
    },
    StrengthSupply = {
        {
            Cost = 20,
            Desc = "Claim Lunch Stamina Reward (12:00-14:00)",
            Icon = "σ¢╛µáç1",
            Id = 1,
            Name = "Lunch",
            Reward = 50,
            Time = { 12, 14 },
            TimeDesc = "12:00-14:00",
        },
        {
            Cost = 20,
            Desc = "Claim Dinner Stamina Reward (18:00-20:00)",
            Icon = "σ¢╛µáç2",
            Id = 2,
            Name = "Dinner",
            Reward = 50,
            Time = { 18, 20 },
            TimeDesc = "18:00-20:00",
        },
        {
            Cost = 20,
            Desc = "Claim Dinner Stamina Reward (20:00-22:00)",
            Icon = "σ¢╛µáç3",
            Id = 3,
            Name = "Midnight Snack",
            Reward = 50,
            Time = { 20, 22 },
            TimeDesc = "20:00-22:00",
        },
    },
    TotalLogin = {
        {
            Day = 1,
            Reward = {
                { Count = 1, ItemId = 1001031 },
                { Count = 3, ItemId = 1021002 },
                { Count = 5, ItemId = 1025001 },
            },
        },
        {
            Day = 2,
            Reward = {
                { Count = 1, ItemId = 6021014 },
                { Count = 200, ItemId = 1001002 },
                { Count = 20000, ItemId = 1001001 },
            },
        },
        {
            Day = 3,
            Reward = {
                { Count = 1, ItemId = 1001031 },
                { Count = 3, ItemId = 1022214 },
                { Count = 25000, ItemId = 1001001 },
            },
        },
        {
            Day = 4,
            Reward = {
                { Count = 1, ItemId = 1001013 },
                { Count = 10, ItemId = 1025001 },
                { Count = 4, ItemId = 1021005 },
            },
        },
        {
            Day = 5,
            Reward = {
                { Count = 1, ItemId = 1001031 },
                { Count = 10, ItemId = 1025001 },
                { Count = 4, ItemId = 1021005 },
            },
        },
        {
            Day = 6,
            Reward = {
                { Count = 1, ItemId = 1001013 },
                { Count = 240, ItemId = 1001002 },
                { Count = 30000, ItemId = 1001001 },
            },
        },
        {
            Day = 7,
            Reward = {
                { Count = 5, ItemId = 1001031 },
                { Count = 300, ItemId = 1001002 },
                { Count = 50000, ItemId = 1001001 },
            },
        },
        {
            Day = 8,
            Reward = {
                { Count = 5, ItemId = 1001013 },
                { Count = 360, ItemId = 1001002 },
                { Count = 80000, ItemId = 1001001 },
            },
        },
        MaxDay = 8,
    },
    TypeNameList = {
        { Id = 1, Name = "Attendance Rewards", NameDesc = "ATTENDANCE AWARD", Type = 9 },
        { Id = 2, Name = "Weekend Carnival", NameDesc = "WEEKEND CARNIVAL", Type = 10 },
        { Id = 3, Name = "Login Rewards", NameDesc = "LOGIN BENEFITS", Type = 1 },
        { Id = 4, Name = "Daily Sign-in", NameDesc = "SIGN BOARD", Type = 2 },
        { Id = 5, Name = "Hero Supply", NameDesc = "HEROIC SUPPLIES", Type = 4 },
        { Id = 6, Name = "Sponsorship", NameDesc = "SPONSORSHIP FUND", Type = 6 },
        { Id = 7, Name = "Monthly Card Benefits", NameDesc = "MONTH CARD", Type = 8 },
        { Id = 8, Name = "Weekly Card Benefits", NameDesc = "WEEK CARD", Type = 13 },
        { Id = 9, Name = "Battle Recruit Token", NameDesc = "ZZZJL", Type = 14 },
        { Id = 10, Name = "Special Recruit Token", NameDesc = "TBZJL", Type = 15 },
        { Id = 11, Name = "Mock Contest Recruit Token", NameDesc = "MNZSZJL", Type = 16 },
        { Id = 12, Name = "Virtual Battleground Recruit Token", NameDesc = "XNZCZJL", Type = 17 },
        { Id = 13, Name = "Boss Raid Challenge Recruit Token", NameDesc = "QDTZZJL", Type = 18 },
        { Id = 14, Name = "Redemption Event", NameDesc = "ITEM REDEMPTION", Type = 7 },
        { Id = 15, Name = "Event Notice", NameDesc = "BULLETIN", Type = 5 },
        { Id = 16, Name = "Gift Pack Exchange", NameDesc = "KEY_EXCHANGE", Type = 12 },
    },
}

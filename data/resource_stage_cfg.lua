-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    ConstCfg = {
        CHALLENGE_TIMES = { 5 },
        FIGHTING_COLOR = { "#cff0000", "#cff6b11", "#cff6b11", "#c00ffb4", "#c00ffb4", "#c00ffb4" },
        FIGHTING_LV = { "[Dangerous]", "[Difficult]", "[Hard]", "[Average]", "[Easy]", "[Effortless]" },
        FIGHTING_RECOM = 2,
        FUNC_ID = 75,
        FightingUpWay = { "Θö╗τé╝", "µö»µÅ┤Φúàσñç", "σë»σìí", "Φè»τëç" },
        FightingUpWay2 = { "Φï▒Θ¢ä", "µö»µÅ┤Φúàσñç", "σë»σìí", "Φè»τëç" },
        FightingUpWayRedDot1 = { 1001, 2011, 3011, 4011, 1003, 1004, 1018, 63 },
        FightingUpWayRedDot2 = { 4001 },
        FightingUpWayRedDot3 = { 1018 },
        FightingUpWayRedDot4 = { 1002 },
        ITEM_INFO = { "Gold", "Money", "Strength" },
        RULE_DESC = "#c000000Resource Stage Rules#n#r#r#r#r#r#c000000[Overview]: #n#r#r#c5c5c5cPlayers can use acquire resources in these stages. #r#r#r#r#c000000[Types]: #r#r#c5c5c5cCafeteria: You can get food from these challenge stages. #n#r#r#c5c5c5cBounty: You can get cash from these challenge stages.#r#r#r#r#c000000[Other Rules]:#n#r#r#c5c5c5cChallenge Attempts: Resource Stages have a daily challenge limit. The higher level of the stage, the more rewards you will get!#r#r#c5c5c5cConsecutive Challenges: Players can choose to challenge #n#c5c5c5c5 stages in a row.#r#r",
    },
    StageCfg = {
        {
            ConsumeStrength = 10,
            Fighting1 = 680,
            Fighting2 = 860,
            Fighting3 = 1040,
            Fighting4 = 1240,
            Fighting5 = 1480,
            FirstPassReward = 100000121,
            FirstPassShowReward = {
                { 1001001, 30000 },
            },
            Id = 1,
            Level = 1,
            Name = "Bounty I",
            OpenLevel = 10,
            Reward = 100000021,
            ShowReward = { 1001001 },
            StageDesc = "Complete Daily Patrols to earn some cash.",
            StageIdList = { 200101 },
            Type = 2,
        },
        {
            ConsumeStrength = 15,
            Fighting1 = 2900,
            Fighting2 = 3620,
            Fighting3 = 4340,
            Fighting4 = 5200,
            Fighting5 = 6240,
            FirstPassReward = 100000122,
            FirstPassShowReward = {
                { 1001001, 50000 },
            },
            Id = 2,
            Level = 2,
            Name = "Bounty II",
            OpenLevel = 22,
            PrePoolId = 1,
            Reward = 100000022,
            ShowReward = { 1001001 },
            StageDesc = "Complete Daily Patrols to earn a big deal of cash.",
            StageIdList = { 200102 },
            Type = 2,
        },
        {
            ConsumeStrength = 20,
            Fighting1 = 4920,
            Fighting2 = 6140,
            Fighting3 = 7360,
            Fighting4 = 8840,
            Fighting5 = 10600,
            FirstPassReward = 100000123,
            FirstPassShowReward = {
                { 1001001, 80000 },
            },
            Id = 3,
            Level = 3,
            Name = "Bounty III",
            OpenLevel = 27,
            PrePoolId = 2,
            Reward = 100000023,
            ShowReward = { 1001001 },
            StageDesc = "Complete Daily Patrols to earn lots of cash.",
            StageIdList = { 200103 },
            Type = 2,
        },
        {
            ConsumeStrength = 25,
            Fighting1 = 7300,
            Fighting2 = 9120,
            Fighting3 = 10940,
            Fighting4 = 13120,
            Fighting5 = 15740,
            FirstPassReward = 100000124,
            FirstPassShowReward = {
                { 1001001, 110000 },
            },
            Id = 4,
            Level = 4,
            Name = "Bounty IV",
            OpenLevel = 32,
            PrePoolId = 3,
            Reward = 100000024,
            ShowReward = { 1001001 },
            StageDesc = "Complete Daily Patrols to earn a huge amount of cash.",
            StageIdList = { 200104 },
            Type = 2,
        },
        [11] = {
            ConsumeStrength = 10,
            Fighting1 = 680,
            Fighting2 = 860,
            Fighting3 = 1040,
            Fighting4 = 1240,
            Fighting5 = 1480,
            FirstPassReward = 100000131,
            FirstPassShowReward = {
                { 1013110, 10 },
                { 1013103, 10 },
            },
            Id = 11,
            Level = 1,
            Name = "Cafeteria I",
            OpenLevel = 10,
            Reward = 100000031,
            ShowReward = { 1013110, 1013103 },
            StageDesc = "Become a gourmet and get some good food!",
            StageIdList = { 200201, 200202, 200203 },
            Type = 1,
        },
        [12] = {
            ConsumeStrength = 15,
            Fighting1 = 2920,
            Fighting2 = 3660,
            Fighting3 = 4400,
            Fighting4 = 5280,
            Fighting5 = 6340,
            FirstPassReward = 100000132,
            FirstPassShowReward = {
                { 1013112, 8 },
                { 1013107, 8 },
                { 1013105, 10 },
            },
            Id = 12,
            Level = 2,
            Name = "Cafeteria II",
            OpenLevel = 23,
            PrePoolId = 11,
            Reward = 100000032,
            ShowReward = { 1013112, 1013107, 1013105 },
            StageDesc = "Become a gourmet and get some good food!",
            StageIdList = { 200204, 200205, 200206 },
            Type = 1,
        },
        [13] = {
            ConsumeStrength = 20,
            Fighting1 = 6920,
            Fighting2 = 8640,
            Fighting3 = 10360,
            Fighting4 = 12440,
            Fighting5 = 14920,
            FirstPassReward = 100000133,
            FirstPassShowReward = {
                { 1013113, 6 },
                { 1013112, 8 },
                { 1013110, 10 },
            },
            Id = 13,
            Level = 3,
            Name = "Cafeteria III",
            OpenLevel = 30,
            PrePoolId = 12,
            Reward = 100000033,
            ShowReward = { 1013113, 1013112, 1013110 },
            StageDesc = "Become a gourmet and get some good food!",
            StageIdList = { 200207, 200208, 200209 },
            Type = 1,
        },
        [14] = {
            ConsumeStrength = 25,
            Fighting1 = 8880,
            Fighting2 = 11100,
            Fighting3 = 13320,
            Fighting4 = 15980,
            Fighting5 = 19180,
            FirstPassReward = 100000134,
            FirstPassShowReward = {
                { 1013114, 6 },
                { 1013113, 6 },
                { 1013112, 8 },
            },
            Id = 14,
            Level = 4,
            Name = "Cafeteria IV",
            OpenLevel = 35,
            PrePoolId = 13,
            Reward = 100000034,
            ShowReward = { 1013114, 1013113, 1013112 },
            StageDesc = "Become a gourmet and get some good food!",
            StageIdList = { 200210, 200211, 200212 },
            Type = 1,
        },
        [31] = {
            ConsumeStrength = 15,
            Fighting1 = 1320,
            Fighting2 = 1660,
            Fighting3 = 2000,
            Fighting4 = 2400,
            Fighting5 = 2880,
            FirstPassReward = 100000151,
            FirstPassShowReward = {
                { 1025001, 2 },
            },
            Id = 31,
            Level = 1,
            Name = "Data Collection I",
            OpenLevel = 15,
            Reward = 100000011,
            ShowReward = { 1025001 },
            StageDesc = "Collect Combat Data to get Enhancement Materials.",
            StageIdList = { 200701 },
            Type = 3,
        },
        [32] = {
            ConsumeStrength = 25,
            Fighting1 = 2920,
            Fighting2 = 3660,
            Fighting3 = 4400,
            Fighting4 = 5280,
            Fighting5 = 6340,
            FirstPassReward = 100000152,
            FirstPassShowReward = {
                { 1025001, 4 },
            },
            Id = 32,
            Level = 2,
            Name = "Data Collection II",
            OpenLevel = 23,
            PrePoolId = 31,
            Reward = 100000012,
            ShowReward = { 1025001 },
            StageDesc = "Collect Combat Data to get Enhancement Materials.",
            StageIdList = { 200702 },
            Type = 3,
        },
        [33] = {
            ConsumeStrength = 35,
            Fighting1 = 6920,
            Fighting2 = 8640,
            Fighting3 = 10360,
            Fighting4 = 12440,
            Fighting5 = 14920,
            FirstPassReward = 100000113,
            FirstPassShowReward = {
                { 1025001, 8 },
            },
            Id = 33,
            Level = 3,
            Name = "Data Collection III",
            OpenLevel = 30,
            Reward = 100000013,
            ShowReward = { 1025001, 1025002, 1025003 },
            StageDesc = "Collect Combat Data to get Enhancement Materials.",
            StageIdList = { 200703 },
            Type = 3,
        },
        [34] = {
            ConsumeStrength = 50,
            Fighting1 = 8880,
            Fighting2 = 11100,
            Fighting3 = 13320,
            Fighting4 = 15980,
            Fighting5 = 19180,
            FirstPassReward = 100000114,
            FirstPassShowReward = {
                { 1025001, 10 },
            },
            Id = 34,
            Level = 4,
            Name = "Data Collection IV",
            OpenLevel = 35,
            Reward = 100000014,
            ShowReward = { 1025001, 1025002, 1025003 },
            StageDesc = "Collect Combat Data to get Enhancement Materials.",
            StageIdList = { 200704 },
            Type = 3,
        },
        [41] = {
            ConsumeStrength = 10,
            Fighting1 = 1320,
            Fighting2 = 1660,
            Fighting3 = 2000,
            Fighting4 = 2400,
            Fighting5 = 2880,
            FirstPassReward = 100000141,
            FirstPassShowReward = {
                { 1021025, 2 },
                { 1021026, 2 },
            },
            Id = 41,
            Level = 1,
            Name = "On-Site Reinforcement I",
            OpenLevel = 15,
            Reward = 100000041,
            ShowReward = { 1021025, 1021026 },
            StageDesc = "Go to the site for reinforcements, and clear stages to get Reinforcement Cards which can be used to level up Support Cards.",
            StageIdList = { 200601 },
            Type = 4,
        },
        [42] = {
            ConsumeStrength = 15,
            Fighting1 = 2920,
            Fighting2 = 3660,
            Fighting3 = 4400,
            Fighting4 = 5280,
            Fighting5 = 6340,
            FirstPassReward = 100000142,
            FirstPassShowReward = {
                { 1021025, 4 },
                { 1021027, 2 },
            },
            Id = 42,
            Level = 2,
            Name = "On-Site Reinforcement II",
            OpenLevel = 23,
            PrePoolId = 41,
            Reward = 100000042,
            ShowReward = { 1021025, 1021027 },
            StageDesc = "Go to the site for reinforcements, and clear stages to get Reinforcement Cards which can be used to level up Support Cards.",
            StageIdList = { 200602 },
            Type = 4,
        },
        [43] = {
            ConsumeStrength = 20,
            Fighting1 = 6920,
            Fighting2 = 8640,
            Fighting3 = 10360,
            Fighting4 = 12440,
            Fighting5 = 14920,
            FirstPassReward = 100000143,
            FirstPassShowReward = {
                { 1021025, 4 },
                { 1021027, 4 },
            },
            Id = 43,
            Level = 3,
            Name = "On-Site Reinforcement III",
            OpenLevel = 30,
            PrePoolId = 42,
            Reward = 100000043,
            ShowReward = { 1021025, 1021027 },
            StageDesc = "Go to the site for reinforcements, and clear stages to get Reinforcement Cards which can be used to level up Support Cards.",
            StageIdList = { 200603 },
            Type = 4,
        },
        [44] = {
            ConsumeStrength = 25,
            Fighting1 = 8880,
            Fighting2 = 11100,
            Fighting3 = 13320,
            Fighting4 = 15980,
            Fighting5 = 19180,
            FirstPassReward = 100000144,
            FirstPassShowReward = {
                { 1021026, 2 },
                { 1021027, 2 },
                { 1021028, 2 },
            },
            Id = 44,
            Level = 4,
            Name = "On-Site Reinforcement IV",
            OpenLevel = 35,
            PrePoolId = 43,
            Reward = 100000044,
            ShowReward = { 1021026, 1021027, 1021028 },
            StageDesc = "Go to the site for reinforcements, and clear stages to get Reinforcement Cards which can be used to level up Support Cards.",
            StageIdList = { 200604 },
            Type = 4,
        },
    },
    StageToPoolCfg = {
        [200101] = 1,
        [200102] = 2,
        [200103] = 3,
        [200104] = 4,
        [200201] = 11,
        [200202] = 11,
        [200203] = 11,
        [200204] = 12,
        [200205] = 12,
        [200206] = 12,
        [200207] = 13,
        [200208] = 13,
        [200209] = 13,
        [200210] = 14,
        [200211] = 14,
        [200212] = 14,
        [200601] = 41,
        [200602] = 42,
        [200603] = 43,
        [200604] = 44,
        [200701] = 31,
        [200702] = 32,
        [200703] = 33,
        [200704] = 34,
    },
    TypeCfg = {
        {
            BtnName = "Φ╡äµ║Éµ£¼σêåτ▒╗µîëΘÆ\1742",
            Desc = "Energy for Training!",
            FuncId = 78,
            ItemInfo = { "Gold", "Strength" },
            Limit = 20,
            Name = "Θúƒτë⌐",
            OpenTime = "Open All-Day",
            Pool = { 11, 12, 13, 14 },
            Reward = 1013112,
            ShowName = "Cafeteria",
            StageBg = "resStage/resStageBgUI2",
            StageIcon = "Φ╡äµ║Éµ£¼_Θúƒτë⌐σà│σìíσ¢╛µáç",
            TitleIcon = "Φ╡äµ║Éµ£¼σêåτ▒╗σÉìτº\1762",
            Type = 1,
        },
        {
            BtnName = "Φ╡äµ║Éµ£¼σêåτ▒╗µîëΘÆ\1741",
            Desc = "Credits for Spending!",
            FuncId = 77,
            ItemInfo = { "Strength", "Money" },
            Limit = 20,
            Name = "Θçæσ╕ü",
            OpenTime = "Open All-Day",
            Pool = { 1, 2, 3, 4 },
            Reward = 1001001,
            ShowName = "Bounty",
            StageBg = "resStage/resStageBgUI1",
            StageIcon = "Φ╡äµ║Éµ£¼_Θçæσ╕üσà│σìíσ¢╛µáç",
            TitleIcon = "Φ╡äµ║Éµ£¼σêåτ▒╗σÉìτº\1763",
            Type = 2,
        },
        {
            BtnName = "Φ╡äµ║Éµ£¼σêåτ▒╗µîëΘÆ\1743",
            Desc = "Enhance your gears!",
            FuncId = 79,
            ItemInfo = { "Gold", "Strength" },
            Limit = 20,
            Name = "Φúàσñçσ╝║σîûµ¥ÉµûÖ",
            OpenTime = "Open All-Day",
            Pool = { 31, 32 },
            Reward = 1025001,
            ShowName = "Data Collection",
            StageBg = "resStage/resStageBgUI3",
            StageIcon = "Φ╡äµ║Éµ£¼_σ╝║σîûτƒ│σà│σìíσ¢╛µá\135",
            TitleIcon = "Φ╡äµ║Éµ£¼σêåτ▒╗σÉìτº\1764",
            Type = 3,
        },
        {
            BtnName = "Φ╡äµ║Éµ£¼σêåτ▒╗µîëΘÆ\1745",
            Desc = "Upgrade your Cards!",
            FuncId = 80,
            ItemInfo = { "Gold", "Strength" },
            Limit = 20,
            Name = "σó₧µÅ┤σì\161",
            OpenTime = "Open All-Day",
            Pool = { 41, 42, 43, 44 },
            Reward = 1021027,
            ShowName = "Reinforcement",
            StageBg = "resStage/resStageBgUI5",
            StageIcon = "Φ╡äµ║Éµ£¼_µö»µÅ┤σìíσà│σìíσ¢╛µá\135",
            TitleIcon = "Φ╡äµ║Éµ£¼σêåτ▒╗σÉìτº\1765",
            Type = 4,
        },
    },
}

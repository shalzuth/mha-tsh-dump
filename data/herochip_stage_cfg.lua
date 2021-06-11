-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    ConstCfg = {
        FIGHTING_COLOR = { "#cff0000", "#cff6b11", "#cff6b11", "#c00ffb4", "#c00ffb4", "#c00ffb4" },
        FIGHTING_LV = { "[Dangerous]", "[Difficult]", "[Hard]", "[Average]", "[Easy]", "[Effortless]" },
        FUNC_ID = 86,
        FightingUpWay = { "Θö╗τé╝", "µö»µÅ┤Φúàσñç", "σë»σìí", "Φè»τëç" },
        FightingUpWay2 = { "Φï▒Θ¢ä", "µö»µÅ┤Φúàσñç", "σë»σìí", "Φè»τëç" },
        ITEM_INFO = { "Gold", "Strength" },
        RULE_DESC = "#c000000Hero Trial Rules #n#r#r#r#r#r#c000000[Hero Trials]: #r#r#c5c5c5cHero Trials are available everyday. Spend Stamina to challenge these trials and get different character shards! #r#r#r#r#c000000[Activation Requirements]: #r#r#c5c5c5cYou will gradually open different hero's trials as you complete Peacekeeping stages. #r#r#r#r#c000000[Challenge Times]: #r#r#c5c5c5c1. Each trial has a daily challenge attempt limit. #r#r#c5c5c5c2. Daily challenge attempts are refreshed every day at 05:00. #r#r#c5c5c5c3. If you fail a challenge, that attempt will not be deducted. There's no harm in trying! So go Plus Ultra!!!#r#r",
    },
    StageCfg = {
        {
            ConsumeStrength = 25,
            Count = 1,
            DayTimes = 2,
            Desc = "Complete Peacekeeping 1-3",
            EngTitle = "To be a hero",
            Fighting1 = 2240,
            Fighting2 = 2810,
            Fighting3 = 3380,
            Fighting4 = 4060,
            Fighting5 = 4880,
            FirstPassReward = { 1012124, 5 },
            Id = 1,
            OpenLevel = 17,
            Reward = 7001,
            RewardNum = 1,
            ShowReward = { 1012124 },
            StageDesc = "Challenge the stage to get Izuku Midoriya Shards.",
            StageId = 370101,
            StageImage = "τóÄτëçµ£¼_σà│σìíσ¢╛_124",
            Title = "Hero's Aspiration",
            Type = "µ▓╗σ«ëΣ║ïΣ╗╢ΘÇÜσà│",
            Values = { 280103 },
            class = "124",
            subTitle = "τóÄτëçµ£¼_1",
        },
        {
            ConsumeStrength = 25,
            Count = 1,
            DayTimes = 2,
            Desc = "Complete Peacekeeping 2-3",
            EngTitle = "Blazing Thunder",
            Fighting1 = 2960,
            Fighting2 = 3710,
            Fighting3 = 4460,
            Fighting4 = 5360,
            Fighting5 = 6440,
            FirstPassReward = { 1012110, 5 },
            Id = 2,
            OpenLevel = 21,
            Reward = 7002,
            RewardNum = 1,
            ShowReward = { 1012110 },
            StageDesc = "Challenge the stage to get Denki Kaminari Shards.",
            StageId = 370102,
            StageImage = "τóÄτëçµ£¼_σà│σìíσ¢╛_110",
            Title = "Flash of Lightning",
            Type = "µ▓╗σ«ëΣ║ïΣ╗╢ΘÇÜσà│",
            Values = { 280203 },
            class = "110",
            subTitle = "τóÄτëçµ£¼_2",
        },
        {
            ConsumeStrength = 25,
            Count = 1,
            DayTimes = 2,
            Desc = "Complete Peacekeeping 3-4",
            EngTitle = "Man's faith",
            Fighting1 = 4180,
            Fighting2 = 5230,
            Fighting3 = 6280,
            Fighting4 = 7540,
            Fighting5 = 9040,
            FirstPassReward = { 1012113, 5 },
            Id = 3,
            OpenLevel = 23,
            Reward = 7003,
            RewardNum = 1,
            ShowReward = { 1012113 },
            StageDesc = "Challenge the stage to get Eijiro Kirishima Shards.",
            StageId = 370103,
            StageImage = "τóÄτëçµ£¼_σà│σìíσ¢╛_113",
            Title = "Manly Resolution",
            Type = "µ▓╗σ«ëΣ║ïΣ╗╢ΘÇÜσà│",
            Values = { 280304 },
            class = "113",
            subTitle = "τóÄτëçµ£¼_3",
        },
        {
            ConsumeStrength = 25,
            Count = 1,
            DayTimes = 2,
            Desc = "Complete Peacekeeping 4-5",
            EngTitle = "Engine Overdriving",
            Fighting1 = 5520,
            Fighting2 = 6890,
            Fighting3 = 8260,
            Fighting4 = 9920,
            Fighting5 = 11900,
            FirstPassReward = { 1012106, 5 },
            Id = 4,
            OpenLevel = 25,
            Reward = 7006,
            RewardNum = 1,
            ShowReward = { 1012106 },
            StageDesc = "Challenge the stage to get Tenya Iida Shards.",
            StageId = 370106,
            StageImage = "τóÄτëçµ£¼_σà│σìíσ¢╛_106",
            Title = "Efficient Execution",
            Type = "µ▓╗σ«ëΣ║ïΣ╗╢ΘÇÜσà│",
            Values = { 280405 },
            class = "106",
            subTitle = "τóÄτëçµ£¼_6",
        },
        {
            ConsumeStrength = 25,
            Count = 1,
            DayTimes = 2,
            Desc = "Complete Peacekeeping 5-6",
            EngTitle = "Smile Like Sunshine",
            Fighting1 = 5900,
            Fighting2 = 7380,
            Fighting3 = 8860,
            Fighting4 = 10640,
            Fighting5 = 12760,
            FirstPassReward = { 1012107, 5 },
            Id = 5,
            OpenLevel = 27,
            Reward = 7005,
            RewardNum = 1,
            ShowReward = { 1012107 },
            StageDesc = "Challenge the stage to get Ochaco Uraraka Shards.",
            StageId = 370105,
            StageImage = "τóÄτëçµ£¼_σà│σìíσ¢╛_107",
            Title = "Pure Kindness",
            Type = "µ▓╗σ«ëΣ║ïΣ╗╢ΘÇÜσà│",
            Values = { 280506 },
            class = "107",
            subTitle = "τóÄτëçµ£¼_5",
        },
        {
            ConsumeStrength = 25,
            Count = 1,
            DayTimes = 2,
            Desc = "Complete Peacekeeping 6-6",
            EngTitle = "Potencial Unlimited",
            Fighting1 = 7940,
            Fighting2 = 9920,
            Fighting3 = 11900,
            Fighting4 = 14280,
            Fighting5 = 17140,
            FirstPassReward = { 1012120, 5 },
            Id = 6,
            OpenLevel = 29,
            Reward = 7004,
            RewardNum = 1,
            ShowReward = { 1012120 },
            StageDesc = "Challenge the stage to get Minoru Mineta Shards.",
            StageId = 370104,
            StageImage = "τóÄτëçµ£¼_σà│σìíσ¢╛_120",
            Title = "Unexpected Surprise",
            Type = "µ▓╗σ«ëΣ║ïΣ╗╢ΘÇÜσà│",
            Values = { 280606 },
            class = "120",
            subTitle = "τóÄτëçµ£¼_4",
        },
        {
            ConsumeStrength = 25,
            Count = 1,
            DayTimes = 2,
            Desc = "Complete Peacekeeping 7-6",
            EngTitle = "Rhythm Spirit",
            Fighting1 = 12340,
            Fighting2 = 15430,
            Fighting3 = 18520,
            Fighting4 = 22220,
            Fighting5 = 26660,
            FirstPassReward = { 1012114, 5 },
            Id = 7,
            OpenLevel = 33,
            Reward = 7007,
            RewardNum = 1,
            ShowReward = { 1012114 },
            StageDesc = "Challenge a stage to get Tsuyu shards.",
            StageId = 370107,
            StageImage = "τóÄτëçµ£¼_σà│σìíσ¢╛_114",
            Title = "Spirit Pillar",
            Type = "µ▓╗σ«ëΣ║ïΣ╗╢ΘÇÜσà│",
            Values = { 280706 },
            class = "114",
            subTitle = "τóÄτëçµ£¼_13",
        },
    },
    StageId2Id = { [370101] = 1, [370102] = 2, [370103] = 3, [370104] = 6, [370105] = 5, [370106] = 4, [370107] = 7 },
}
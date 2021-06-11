-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    ConstInfo = {
        BOX_COUNT_TIME = 5,
        BOX_COUNT_TXT = "Choose a chest in %ds",
        DAILY_BOX_TIMES = 1,
        DAILY_BOX_TIMES_OVER_TXT = "Reached today's obtaining chests limit. Unable to claim the rewards repeatedly.",
        DAILY_REWARD_TIMES = 1,
        DAILY_REWARD_TIMES_OVER_TXT = "Reached today's reward limit. Unable to claim the rewards repeatedly.",
        DIFFICULTY_NAME_LIST = { "Easy", "Elite", "Hard" },
        EXTRA_REWARD_COST = {
            { 1001021, 1 },
        },
        FIGHTING_COLOR_LIST = { "#cff0000", "#cff6b11", "#cff6b11", "#c00ffb4", "#c00ffb4", "#c00ffb4" },
        FLOP_TIMES = { 1, 2, 3 },
        NO_OPEN_TIP = "Joint Operations not available yet",
        OPEN_FUNC_ID = 31,
        TIPS = "#c000000Joint Operations Rules#n#r#r  #r#r#r#c000000[Joint Operations]:#r#r#c5c5c5cJoint Operations is available all day long and players need to team up to participate. The more players, the greater the rewards. #r#r#r#r#c000000[Reward Chances]:#r#r#c5c5c5c1. Refresh at 05:00 daily.#r#r#c5c5c5c2. Event rewards can be obtained 1 time(s) daily.#r#r#c5c5c5c3. Reward Drops: Gears, Support Cards, Chips, Enhancement Material, Food, etc.#n#r#r",
        TOTAL_BOX_TIMES = 3,
        TOTAL_BOX_TIMES_OVER_TXT = "You've reached the limit for this round, and the rewards are unable to be claimed repeatedly.",
        TOTAL_REWARD_TIMES = 3,
        TOTAL_REWARD_TIMES_OVER_TXT = "You've reached the limit for this round, and the rewards are unable to be claimed repeatedly.",
        ["µÿéτ£ƒτÜ\132"] = { "[Dangerous]", "[Difficult]", "[Hard]", "[Average]", "[Easy]", "[Effortless]" },
    },
    RoundCond = {},
    StageGroupInfo = {
        {
            Group = 1,
            Icon = "Φ╜╗σ║ªτ╗äΘÿƒ_σêåΘí╡µ¼ºσÅö",
            LvTips = "(Recommended: Lv. 20)",
            Name = "01 Trial of the Strongest",
            OpenLv = 20,
            StageList = {
                {
                    BoxBestReward = 8191,
                    BoxReward = 8161,
                    Difficulty = 1,
                    Fighting1 = 2640,
                    Fighting2 = 2940,
                    Fighting3 = 3080,
                    Fighting4 = 3240,
                    Fighting5 = 3520,
                    FlopBestReward = 8101,
                    FlopReward = 8131,
                    OpenLv = 20,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛µ¼ºσÅ\148",
                    ShowReward = { 1021005, 1029040, 1021025, 1021026, 1029034 },
                    StageId = 400301,
                    Tips = "Challenge from the No.1 Hero, All Might. Detroit Smash: Stay within the green circles to avoid damage.",
                },
                {
                    BoxBestReward = 8192,
                    BoxReward = 8162,
                    Difficulty = 2,
                    Fighting1 = 4700,
                    Fighting2 = 5220,
                    Fighting3 = 5480,
                    Fighting4 = 5740,
                    Fighting5 = 6260,
                    FlopBestReward = 8102,
                    FlopReward = 8132,
                    OpenLv = 20,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛µ¼ºσÅ\148",
                    ShowReward = { 1021005, 1029040, 1029001, 1021026, 1029034, 1029035 },
                    StageId = 400302,
                    Tips = "Challenge from the No.1 Hero, All Might. Tornado: Stay outside the yellow circle to mitigate the pulling effect.",
                },
                {
                    BoxBestReward = 8193,
                    BoxReward = 8163,
                    Difficulty = 3,
                    Fighting1 = 7480,
                    Fighting2 = 8300,
                    Fighting3 = 8720,
                    Fighting4 = 9140,
                    Fighting5 = 9960,
                    FlopBestReward = 8103,
                    FlopReward = 8133,
                    OpenLv = 20,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛µ¼ºσÅ\148",
                    ShowReward = { 1021005, 1029040, 1029001, 1021026, 1021027, 1029034, 1029035 },
                    StageId = 400303,
                    Tips = "Challenge from the No.1 Hero, All Might. When the shield is broken, All Might will be weakened, giving you a chance to deal damage.",
                },
            },
        },
        {
            Group = 2,
            Icon = "Φ╜╗σ║ªτ╗äΘÿƒ_σêåΘí╡Φ╜\176",
            LvTips = "(Recommended: Lv. 30)",
            Name = "02 Glacier and Flames",
            OpenLv = 30,
            StageList = {
                {
                    BoxBestReward = 8291,
                    BoxReward = 8261,
                    Difficulty = 1,
                    Fighting1 = 6220,
                    Fighting2 = 6900,
                    Fighting3 = 7240,
                    Fighting4 = 7600,
                    Fighting5 = 8280,
                    FlopBestReward = 8201,
                    FlopReward = 8231,
                    OpenLv = 30,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛Φ╜░",
                    ShowReward = { 1021005, 1029001, 1021026, 1021027, 1029034, 1029035, 1029036 },
                    StageId = 400304,
                    Tips = "Challenge from Todoroki, it's dangerous to get close, be careful with the Fire Fist Charge!",
                },
                {
                    BoxBestReward = 8292,
                    BoxReward = 8262,
                    Difficulty = 2,
                    Fighting1 = 12340,
                    Fighting2 = 13700,
                    Fighting3 = 14380,
                    Fighting4 = 15080,
                    Fighting5 = 16440,
                    FlopBestReward = 8202,
                    FlopReward = 8232,
                    OpenLv = 30,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛Φ╜░",
                    ShowReward = { 1021005, 1029001, 1029002, 1021027, 1029034, 1029035, 1029036 },
                    StageId = 400305,
                    Tips = "Challenge from Todoroki, it's dangerous to get close, be careful with the Fire Fist Charge!",
                },
                {
                    BoxBestReward = 8293,
                    BoxReward = 8263,
                    Difficulty = 3,
                    Fighting1 = 16480,
                    Fighting2 = 18300,
                    Fighting3 = 19220,
                    Fighting4 = 20140,
                    Fighting5 = 21960,
                    FlopBestReward = 8203,
                    FlopReward = 8233,
                    OpenLv = 30,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛Φ╜░",
                    ShowReward = { 1021005, 1029001, 1029002, 1021027, 1029034, 1029035, 1029036 },
                    StageId = 400306,
                    Tips = "Challenge from Todoroki, it's dangerous to get close, be careful with the Fire Fist Charge!",
                },
            },
        },
        {
            Group = 3,
            Icon = "Φ╜╗σ║ªτ╗äΘÿƒ_σêåΘí╡σà½τÖ╛Σ╕\135",
            LvTips = "(Recommended: Lv. 40)",
            Name = "03 Dawn of Creation",
            OpenLv = 40,
            StageList = {
                {
                    BoxBestReward = 8391,
                    BoxReward = 8361,
                    Difficulty = 1,
                    Fighting1 = 16240,
                    Fighting2 = 18040,
                    Fighting3 = 18940,
                    Fighting4 = 19840,
                    Fighting5 = 21640,
                    FlopBestReward = 8301,
                    FlopReward = 8331,
                    OpenLv = 40,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛σà½τÖ╛Σ╕ç",
                    ShowReward = { 1021005, 1029002, 1021027, 1029035, 1029036 },
                    StageId = 400307,
                    Tips = "Spear: The fixated player needs to stay away from teammates, and the traps must be properly unarmed.",
                },
                {
                    BoxBestReward = 8392,
                    BoxReward = 8362,
                    Difficulty = 2,
                    Fighting1 = 21220,
                    Fighting2 = 23580,
                    Fighting3 = 24760,
                    Fighting4 = 25940,
                    Fighting5 = 28300,
                    FlopBestReward = 8302,
                    FlopReward = 8332,
                    OpenLv = 40,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛σà½τÖ╛Σ╕ç",
                    ShowReward = { 1021005, 1029002, 1029003, 1021027, 1029035, 1029036 },
                    StageId = 400308,
                    Tips = "Scythe: Use the slow effect of Tape to counter the absorbing effect of the Scythe.",
                },
                {
                    BoxBestReward = 8393,
                    BoxReward = 8363,
                    Difficulty = 3,
                    Fighting1 = 30400,
                    Fighting2 = 33780,
                    Fighting3 = 35460,
                    Fighting4 = 37160,
                    Fighting5 = 40540,
                    FlopBestReward = 8303,
                    FlopReward = 8333,
                    OpenLv = 40,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛σà½τÖ╛Σ╕ç",
                    ShowReward = { 1021005, 1029002, 1029003, 1021027, 1029035, 1029036 },
                    StageId = 400309,
                    Tips = "Creation Stance: The targeted player needs to lure the cannon barrage's attacks to break Momo Yaoyorozu's shield to cancel out Creation Stance.",
                },
            },
        },
        {
            Group = 4,
            Icon = "Φ╜╗σ║ªτ╗äΘÿƒ_σêåΘí╡τêåΦ▒¬",
            LvTips = "(Recommended: Lv. 50)",
            Name = "04 Explosive Crisis",
            OpenLv = 50,
            StageList = {
                {
                    BoxBestReward = 8491,
                    BoxReward = 8461,
                    Difficulty = 1,
                    Fighting1 = 19080,
                    Fighting2 = 21200,
                    Fighting3 = 22260,
                    Fighting4 = 23320,
                    Fighting5 = 25440,
                    FlopBestReward = 8401,
                    FlopReward = 8431,
                    OpenLv = 50,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛τêåΦ▒\170",
                    ShowReward = { 1021005, 1029003, 1021027, 1029035, 1029036, 1029037 },
                    StageId = 400310,
                    Tips = "Challenge from Bakugo. Watch out for his Stun Grenade. When he goes on a rampage, dodge his combos carefully.",
                },
                {
                    BoxBestReward = 8492,
                    BoxReward = 8462,
                    Difficulty = 2,
                    Fighting1 = 30780,
                    Fighting2 = 34200,
                    Fighting3 = 35920,
                    Fighting4 = 37620,
                    Fighting5 = 41040,
                    FlopBestReward = 8402,
                    FlopReward = 8432,
                    OpenLv = 50,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛τêåΦ▒\170",
                    ShowReward = { 1021005, 1029003, 1029004, 1021027, 1029035, 1029036, 1029037 },
                    StageId = 400311,
                    Tips = "Challenge from Bakugo. Watch out for his Stun Grenade. When he goes on a rampage, dodge his combos carefully.",
                },
                {
                    BoxBestReward = 8493,
                    BoxReward = 8463,
                    Difficulty = 3,
                    Fighting1 = 40560,
                    Fighting2 = 45060,
                    Fighting3 = 47320,
                    Fighting4 = 49560,
                    Fighting5 = 54080,
                    FlopBestReward = 8403,
                    FlopReward = 8433,
                    OpenLv = 50,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛τêåΦ▒\170",
                    ShowReward = { 1021005, 1029003, 1029004, 1021027, 1029035, 1029036, 1029037 },
                    StageId = 400312,
                    Tips = "Challenge from Bakugo. Watch out for his Stun Grenade. When he goes on a rampage, dodge his combos carefully.",
                },
            },
        },
        {
            Group = 5,
            Icon = "Φ╜╗σ║ªτ╗äΘÿƒ_σêåΘí╡µû»σ¥ªσ¢\160",
            LvTips = "(Recommended: Lv. 60)",
            Name = "05 Night of Eradication",
            OpenLv = 60,
            StageList = {
                {
                    BoxBestReward = 8591,
                    BoxReward = 8561,
                    Difficulty = 1,
                    Fighting1 = 27940,
                    Fighting2 = 31040,
                    Fighting3 = 32600,
                    Fighting4 = 34140,
                    Fighting5 = 37240,
                    FlopBestReward = 8501,
                    FlopReward = 8531,
                    OpenLv = 60,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛µû»σ¥ªσ¢á",
                    ShowReward = { 1021005, 1029004, 1021027, 1029036, 1029037 },
                    StageId = 400313,
                    Tips = "Being hit by Stain will trigger his Vigor. Keep attacking him and remember to dodge his damage",
                },
                {
                    BoxBestReward = 8592,
                    BoxReward = 8562,
                    Difficulty = 2,
                    Fighting1 = 37520,
                    Fighting2 = 41680,
                    Fighting3 = 43760,
                    Fighting4 = 45840,
                    Fighting5 = 50020,
                    FlopBestReward = 8502,
                    FlopReward = 8532,
                    OpenLv = 60,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛µû»σ¥ªσ¢á",
                    ShowReward = { 1021005, 1029004, 1029005, 1021027, 1029036, 1029037 },
                    StageId = 400314,
                    Tips = "Being hit by Stain will trigger his Vigor. Keep attacking him and remember to dodge his damage",
                },
                {
                    BoxBestReward = 8593,
                    BoxReward = 8563,
                    Difficulty = 3,
                    Fighting1 = 49600,
                    Fighting2 = 55100,
                    Fighting3 = 57860,
                    Fighting4 = 60620,
                    Fighting5 = 66120,
                    FlopBestReward = 8503,
                    FlopReward = 8533,
                    OpenLv = 60,
                    Pic = "Φ╜╗σ║ªτ╗äΘÿƒ_τ½áΦèéσ¢╛µû»σ¥ªσ¢á",
                    ShowReward = { 1021005, 1021006, 1029004, 1029005, 1021027, 1021028, 1029036, 1029031 },
                    StageId = 400315,
                    Tips = "Being hit by Stain will trigger his Vigor. Keep attacking him and remember to dodge his damage",
                },
            },
        },
    },
    StageId2Difficulty = {
        [400301] = 1,
        [400302] = 2,
        [400303] = 3,
        [400304] = 1,
        [400305] = 2,
        [400306] = 3,
        [400307] = 1,
        [400308] = 2,
        [400309] = 3,
        [400310] = 1,
        [400311] = 2,
        [400312] = 3,
        [400313] = 1,
        [400314] = 2,
        [400315] = 3,
    },
    StageId2Group = {
        [400301] = 1,
        [400302] = 1,
        [400303] = 1,
        [400304] = 2,
        [400305] = 2,
        [400306] = 2,
        [400307] = 3,
        [400308] = 3,
        [400309] = 3,
        [400310] = 4,
        [400311] = 4,
        [400312] = 4,
        [400313] = 5,
        [400314] = 5,
        [400315] = 5,
    },
    StepsCond = {
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400301] = 1, [400302] = 1, [400303] = 1 },
            Desc = "Complete [Trial of the Strongest] Easy Stage 1 time(s)",
            ID = 1,
            Reward = {
                { 1001002, 30 },
                { 1001001, 3000 },
            },
            Title = "Topic: Physical Fitness",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400302] = 1, [400303] = 1 },
            Desc = "Complete [Trial of the Strongest] Normal Stage 1 time(s)",
            ID = 2,
            Reward = {
                { 1001002, 30 },
                { 1001001, 3000 },
            },
            Title = "Topic: Quirk",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400303] = 1 },
            Desc = "Complete [Trial of the Strongest] Hard Stage 1 time(s)",
            ID = 3,
            Reward = {
                { 1001002, 30 },
                { 1001001, 5000 },
            },
            Title = "Topic: Challenge",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400304] = 1, [400305] = 1, [400306] = 1 },
            Desc = "Complete [Glacier Blast] Easy Stage 1 time(s)",
            ID = 4,
            Reward = {
                { 1001002, 30 },
                { 1021025, 1 },
            },
            Title = "Ice & Fire - Beginning",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400305] = 1, [400306] = 1 },
            Desc = "Complete [Glacier Blast] Normal Stage 1 time(s)",
            ID = 5,
            Reward = {
                { 1001002, 30 },
                { 1021025, 1 },
            },
            Title = "Ice & Fire - Hard",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400306] = 1 },
            Desc = "Complete [Glacier Blast] Hard Stage 1 time(s)",
            ID = 6,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Ice & Fire - Ultimate",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400307] = 1, [400308] = 1, [400309] = 1 },
            Desc = "Complete [Genesis Girl] Easy Stage 1 time(s)",
            ID = 7,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Creation - New Life",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400308] = 1, [400309] = 1 },
            Desc = "Complete [Genesis Girl] Normal Stage 1 time(s)",
            ID = 8,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Creation - Growth",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400309] = 1 },
            Desc = "Complete [Genesis Girl] Hard Stage 1 time(s)",
            ID = 9,
            Reward = {
                { 1001002, 30 },
                { 1021027, 1 },
            },
            Title = "Creation - The End",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400310] = 1, [400311] = 1, [400312] = 1 },
            Desc = "Complete [Explosive Crisis] Easy Stage 1 time(s)",
            ID = 10,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Blasting Sound",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400311] = 1, [400312] = 1 },
            Desc = "Complete [Explosive Crisis] Normal Stage 1 time(s)",
            ID = 11,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Bombardment",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400312] = 1 },
            Desc = "Complete [Explosive Crisis] Hard Stage 1 time(s)",
            ID = 12,
            Reward = {
                { 1001002, 30 },
                { 1021027, 1 },
            },
            Title = "Unlimited Power",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400313] = 1, [400314] = 1, [400315] = 1 },
            Desc = "Complete [Night of Eradication] Easy Stage 1 time(s)",
            ID = 13,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Fake",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400314] = 1, [400315] = 1 },
            Desc = "Complete [Night of Eradication] Normal Stage 1 time(s)",
            ID = 14,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Vanity",
        },
        {
            API = "ΘÇÜσà│Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 1,
            Condition = { [400315] = 1 },
            Desc = "Complete [Night of Eradication] Hard Stage 1 time(s)",
            ID = 15,
            Reward = {
                { 1001002, 30 },
                { 1021027, 1 },
            },
            Title = "Obsession",
        },
        {
            API = "ΘÇÜσà│σôüΦ┤¿Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 5,
            Condition = { 1, 1, 1 },
            Desc = "Complete [Easy] Stage 5 times in total",
            ID = 16,
            Reward = {
                { 1001002, 30 },
                { 1001001, 5000 },
            },
            Title = "Journey Starts",
        },
        {
            API = "ΘÇÜσà│σôüΦ┤¿Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 5,
            Condition = { [2] = 1, [3] = 1 },
            Desc = "Complete [Normal] Stage 5 times in total",
            ID = 17,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Cooperation",
        },
        {
            API = "ΘÇÜσà│σôüΦ┤¿Φ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 5,
            Condition = { [3] = 1 },
            Desc = "Complete [Hard] Stage 5 times in total",
            ID = 18,
            Reward = {
                { 1001002, 30 },
                { 1021027, 1 },
            },
            Title = "Fearless Challenge",
        },
        {
            API = "ΘÇÜσà│Σ╗╗µäÅΦ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 10,
            Desc = "Complete any Stage 10 times in total",
            ID = 19,
            Reward = {
                { 1001002, 30 },
                { 1013102, 5 },
            },
            Title = "Novice",
        },
        {
            API = "ΘÇÜσà│Σ╗╗µäÅΦ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 20,
            Desc = "Complete any Stage 20 times in total",
            ID = 20,
            Reward = {
                { 1001002, 30 },
                { 1013102, 5 },
            },
            Title = "Trainee Team",
        },
        {
            API = "ΘÇÜσà│Σ╗╗µäÅΦ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 30,
            Desc = "Complete any Stage 30 times in total",
            ID = 21,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Official Team",
        },
        {
            API = "ΘÇÜσà│Σ╗╗µäÅΦ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 40,
            Desc = "Complete any Stage 40 times in total",
            ID = 22,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Elite Team",
        },
        {
            API = "ΘÇÜσà│Σ╗╗µäÅΦ╜╗σ║ªτ╗äΘÿƒ",
            CompCount = 50,
            Desc = "Complete any Stage 50 times in total",
            ID = 23,
            Reward = {
                { 1001002, 30 },
                { 1021026, 1 },
            },
            Title = "Pro Team",
        },
    },
}

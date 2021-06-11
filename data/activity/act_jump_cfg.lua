-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    {
        CondList = {
            {
                API = "σÅéΣ╕Äσñ⌐µò░",
                CompCount = 1,
                Desc = "Play Bakugo's Challenge for 1 days.",
                Id = 1,
                Rewards = {
                    { 1001001, 10000 },
                    { 1013107, 1 },
                    { 1001008, 1000 },
                },
                Title = "First-Timer",
            },
            {
                API = "σÅéΣ╕Äσñ⌐µò░",
                CompCount = 3,
                Desc = "Play Bakugo's Challenge for 3 days.",
                Id = 2,
                Rewards = {
                    { 1001001, 20000 },
                    { 1013107, 2 },
                    { 1001009, 1000 },
                },
                Title = "Persistent Jumper",
            },
            {
                API = "σÅéΣ╕Äσñ⌐µò░",
                CompCount = 5,
                Desc = "Play Bakugo's Challenge for 5 days.",
                Id = 3,
                Rewards = {
                    { 1001001, 30000 },
                    { 1001013, 1 },
                    { 1001010, 1000 },
                },
                Title = "Pro Jumper",
            },
            {
                API = "τ┤»Φ«íµƒ▒σ¡É",
                CompCount = 50,
                Desc = "Jump over a total of 50 pillars.",
                Id = 4,
                Rewards = {
                    { 1001001, 10000 },
                    { 1025001, 1 },
                    { 1001008, 1000 },
                },
                Title = "Rookie Jumper",
            },
            {
                API = "τ┤»Φ«íµƒ▒σ¡É",
                CompCount = 100,
                Desc = "Jump over a total of 100 pillars.",
                Id = 5,
                Rewards = {
                    { 1001001, 20000 },
                    { 1025001, 2 },
                    { 1001009, 1000 },
                },
                Title = "Adept Jumper",
            },
            {
                API = "τ┤»Φ«íµƒ▒σ¡É",
                CompCount = 200,
                Desc = "Jump over a total of 200 pillars.",
                Id = 6,
                Rewards = {
                    { 1001001, 30000 },
                    { 1025001, 3 },
                    { 1001010, 1000 },
                },
                Title = "Like a Sparrow",
            },
            {
                API = "τ┤»Φ«íµƒ▒σ¡É",
                CompCount = 300,
                Desc = "Jump over a total of 300 pillars.",
                Id = 7,
                Rewards = {
                    { 1001001, 40000 },
                    { 1001013, 1 },
                    { 1001008, 1000 },
                },
                Title = "Master Jumper",
            },
        },
        DailyRewards = {
            { 1001002, 20 },
        },
        EggRewards = {
            { 1001013, 1 },
        },
        ID = 1,
        ScoreRewards = {
            {
                Rewards = {
                    { 1001001, 5000 },
                },
                Score = 50,
            },
            {
                Rewards = {
                    { 1025001, 1 },
                },
                Score = 100,
            },
            {
                Rewards = {
                    { 1021005, 1 },
                },
                Score = 200,
            },
        },
        Sort = 36,
        __maketime = 1618578319,
        __md5 = "1e2fa2dbe15a2218f97c41a1a9290f0b",
        __version = 2,
    },
    ConstInfo = {
        ActIntro = "Participate in Bakugo's Jumping Challenge to earn handsome rewards.",
        BounsFloorAmount = 10,
        BounsScore = 20,
        DayTimes = 3,
        DefineRemainTime = 300,
        EggRange = { 10, 20 },
        FristFloorLength = 340,
        GSpeed = 1200,
        IsShowJudgeLine = false,
        JudgeSizeOffset = -10,
        LengthProgTime = 1.5,
        MaxLength = 600,
        MaxNextX = 600,
        MaxWidth = 300,
        MinLength = 100,
        MinNextX = 260,
        MinWidth = 100,
        NormalScore = 1,
        PerfectComboBouns = 1,
        PerfectComboBounsLimit = 4,
        PerfectRange = 20,
        PerfectScore = 3,
        RuleIntro = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5cOnce the mini-game starts, tap the screen to make Bakugo jump.#r#w10#h40The more pillars he jumps over, the better rewards you get.#n#r[Scoring]: #c5c5c5c#r#w10Normal Jump +1pt#r#w10Perfect Jump +3pts#r#w10Perfect Jump Combo +1 Extra (Up to 4 times)#r#w10#h40Every 10 pillars jumped over +20 pts#r#s20#n[Easter Egg Rewards]:#r#c5c5c5c#w10A special pillar has a chance to appear after you jump over 10 pillars in a single game.#r#w10Jump over the special pillar to get an easter egg reward (Valid only once during each event).#r#w10#h40#r#s20#nScore Rewards:#r#w10#c5c5c5cYou can get these daily rewards by reaching the target score.",
        TimeSpeedList = {
            { 11, 110 },
            { 27, 120 },
            { 50, 130 },
            { 68, 140 },
            { 107, 150 },
        },
        VSpeed = -600,
    },
}

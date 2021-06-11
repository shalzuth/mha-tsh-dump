-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    {
        CurrencyList = { [1001033] = true, [1001034] = true, [1001035] = true, [1001036] = true },
        ExchangeCfg = {
            {
                CountLimit = 5,
                Index = 1,
                NeedItem = {
                    { 1001034, 10 },
                    { 1001035, 10 },
                    { 1001036, 10 },
                },
                ReturnItem = {
                    { 1012107, 1 },
                },
            },
            {
                CountLimit = 3,
                Index = 2,
                NeedItem = {
                    { 1001034, 8 },
                    { 1001035, 8 },
                    { 1001036, 8 },
                },
                ReturnItem = {
                    { 1001031, 1 },
                },
            },
            {
                CountLimit = 5,
                Index = 3,
                NeedItem = {
                    { 1001034, 3 },
                    { 1001035, 3 },
                    { 1001036, 3 },
                },
                ReturnItem = {
                    { 1021005, 2 },
                },
            },
            {
                CountLimit = 5,
                Index = 4,
                NeedItem = {
                    { 1001034, 1 },
                    { 1001035, 1 },
                    { 1001036, 1 },
                },
                ReturnItem = {
                    { 1001001, 20000 },
                },
            },
            { CountLimit = 999, Index = 5, NeedItem = {
                { 1001034, 1 },
            }, ReturnItem = {
                { 1001009, 100 },
            } },
            { CountLimit = 999, Index = 6, NeedItem = {
                { 1001035, 1 },
            }, ReturnItem = {
                { 1001010, 100 },
            } },
            { CountLimit = 999, Index = 7, NeedItem = {
                { 1001036, 1 },
            }, ReturnItem = {
                { 1001008, 100 },
            } },
        },
        ID = 1,
        ReturnCfg = {
            {
                FixedReturn = {
                    { 1001034, 1 },
                },
                HeroId = 1,
                RandomPrize = {
                    { 1001001, 2000, 10 },
                    { 1001002, 10, 5 },
                    { 1013102, 1, 10 },
                },
                RandomPrizeProb = 0.08,
                SendPrize = {
                    { 1001033, 1 },
                },
            },
            {
                FixedReturn = {
                    { 1001035, 1 },
                },
                HeroId = 2,
                RandomPrize = {
                    { 1001001, 2000, 10 },
                    { 1001002, 10, 5 },
                    { 1013102, 1, 10 },
                },
                RandomPrizeProb = 0.08,
                SendPrize = {
                    { 1001033, 1 },
                },
            },
            {
                FixedReturn = {
                    { 1001036, 1 },
                },
                HeroId = 3,
                RandomPrize = {
                    { 1001001, 2000, 10 },
                    { 1001002, 10, 5 },
                    { 1013102, 1, 10 },
                },
                RandomPrizeProb = 0.08,
                SendPrize = {
                    { 1001033, 1 },
                },
            },
        },
        Sort = 39,
        __maketime = 1620636704,
        __md5 = "7f54ff960fb91ba5fca7497b16b5d971",
        __version = 8,
    },
}

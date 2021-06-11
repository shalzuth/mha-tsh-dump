-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    {
        CurrencyList = {
            [1001037] = true,
            [1001038] = true,
            [1001039] = true,
            [1001040] = true,
            [1001041] = true,
            [1001042] = true,
            [1001045] = true,
            [1001046] = true,
            [1001047] = true,
            [1001048] = true,
        },
        ExchangeCfg = {
            {
                CountLimit = 5,
                Index = 1,
                NeedItem = {
                    { 1001045, 1 },
                    { 1001046, 1 },
                    { 1001048, 2 },
                },
                ReturnItem = {
                    { 1012120, 1 },
                },
            },
            {
                CountLimit = 3,
                Index = 2,
                NeedItem = {
                    { 1001042, 2 },
                    { 1001048, 2 },
                },
                ReturnItem = {
                    { 1001031, 1 },
                },
            },
            {
                CountLimit = 3,
                Index = 3,
                NeedItem = {
                    { 1001042, 2 },
                    { 1001046, 1 },
                    { 1001047, 1 },
                },
                ReturnItem = {
                    { 1001001, 80000 },
                },
            },
            {
                CountLimit = 5,
                Index = 4,
                NeedItem = {
                    { 1001045, 1 },
                    { 1001046, 1 },
                },
                ReturnItem = {
                    { 1021005, 2 },
                },
            },
            { CountLimit = 999, Index = 5, NeedItem = {
                { 1001045, 1 },
            }, ReturnItem = {
                { 1001008, 500 },
            } },
            { CountLimit = 999, Index = 6, NeedItem = {
                { 1001046, 1 },
            }, ReturnItem = {
                { 1001009, 500 },
            } },
            { CountLimit = 999, Index = 7, NeedItem = {
                { 1001047, 1 },
            }, ReturnItem = {
                { 1001010, 500 },
            } },
        },
        ID = 1,
        MenuCfg = {
            {
                CountLimit = 200,
                Food = {
                    { 1001042, 1 },
                },
                MenuId = 1,
                NeedItem = {
                    { 1001037, 2 },
                    { 1001038, 1 },
                },
                Prob = 1,
            },
            {
                CountLimit = 200,
                Food = {
                    { 1001045, 1 },
                },
                MenuId = 2,
                NeedItem = {
                    { 1001037, 2 },
                    { 1001038, 1 },
                    { 1001039, 1 },
                },
                Prob = 1,
            },
            {
                CountLimit = 200,
                Food = {
                    { 1001046, 1 },
                },
                MenuId = 3,
                NeedItem = {
                    { 1001037, 2 },
                    { 1001038, 1 },
                    { 1001040, 1 },
                },
                Prob = 1,
            },
            {
                CountLimit = 200,
                Food = {
                    { 1001047, 1 },
                },
                MenuId = 4,
                NeedItem = {
                    { 1001037, 2 },
                    { 1001038, 1 },
                    { 1001041, 1 },
                },
                Prob = 1,
            },
            {
                CountLimit = 50,
                Food = {
                    { 1001048, 1 },
                },
                MenuId = 5,
                NeedItem = {
                    { 1001037, 6 },
                    { 1001038, 3 },
                    { 1001039, 1 },
                    { 1001040, 1 },
                    { 1001041, 1 },
                },
                Prob = 1,
            },
        },
        Sort = 42,
        __maketime = 1620650661,
        __md5 = "dcf3ecfb73d2d915918e10ed8d2823ff",
        __version = 7,
    },
    Const = {
        Material = { 1001037, 1001038, 1001039, 1001040, 1001041 },
        Product = { 1001042, 1001045, 1001046, 1001047, 1001048 },
    },
}

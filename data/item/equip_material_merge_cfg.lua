-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    MergeCfg = {
        [1025002] = {
            [1025001] = { FromItem = 1025001, PlayerLevel = 10, Rate = 3, ToItem = 1025002 },
        },
        [1025003] = {
            [1025001] = { FromItem = 1025001, PlayerLevel = 20, Rate = 9, ToItem = 1025003 },
            [1025002] = { FromItem = 1025002, PlayerLevel = 20, Rate = 3, ToItem = 1025003 },
        },
        [1025004] = {
            [1025001] = { FromItem = 1025001, PlayerLevel = 30, Rate = 27, ToItem = 1025004 },
            [1025002] = { FromItem = 1025002, PlayerLevel = 30, Rate = 9, ToItem = 1025004 },
            [1025003] = { FromItem = 1025003, PlayerLevel = 30, Rate = 3, ToItem = 1025004 },
        },
        [1025005] = {
            [1025001] = { FromItem = 1025001, PlayerLevel = 40, Rate = 81, ToItem = 1025005 },
            [1025002] = { FromItem = 1025002, PlayerLevel = 40, Rate = 27, ToItem = 1025005 },
            [1025003] = { FromItem = 1025003, PlayerLevel = 40, Rate = 9, ToItem = 1025005 },
            [1025004] = { FromItem = 1025004, PlayerLevel = 40, Rate = 3, ToItem = 1025005 },
        },
        [1025006] = {
            [1025001] = { FromItem = 1025001, PlayerLevel = 50, Rate = 243, ToItem = 1025006 },
            [1025002] = { FromItem = 1025002, PlayerLevel = 50, Rate = 81, ToItem = 1025006 },
            [1025003] = { FromItem = 1025003, PlayerLevel = 50, Rate = 27, ToItem = 1025006 },
            [1025004] = { FromItem = 1025004, PlayerLevel = 50, Rate = 9, ToItem = 1025006 },
            [1025005] = { FromItem = 1025005, PlayerLevel = 50, Rate = 3, ToItem = 1025006 },
        },
        [1025007] = {
            [1025001] = { FromItem = 1025001, PlayerLevel = 60, Rate = 729, ToItem = 1025007 },
            [1025002] = { FromItem = 1025002, PlayerLevel = 60, Rate = 243, ToItem = 1025007 },
            [1025003] = { FromItem = 1025003, PlayerLevel = 60, Rate = 81, ToItem = 1025007 },
            [1025004] = { FromItem = 1025004, PlayerLevel = 60, Rate = 27, ToItem = 1025007 },
            [1025005] = { FromItem = 1025005, PlayerLevel = 60, Rate = 9, ToItem = 1025007 },
            [1025006] = { FromItem = 1025006, PlayerLevel = 60, Rate = 3, ToItem = 1025007 },
        },
    },
    PageCfg = {
        [1025001] = { Page = "Enhancement Material", ToItem = 1025001 },
        [1025002] = { DefaultFromItem = 1025001, Page = "Enhancement Material", ShowSort = { 1025001 }, ToItem = 1025002 },
        [1025003] = {
            DefaultFromItem = 1025002,
            Page = "Enhancement Material",
            ShowSort = { 1025001, 1025002 },
            ToItem = 1025003,
        },
        [1025004] = {
            DefaultFromItem = 1025003,
            Page = "Enhancement Material",
            ShowSort = { 1025001, 1025002, 1025003 },
            ToItem = 1025004,
        },
        [1025005] = {
            DefaultFromItem = 1025004,
            Page = "Enhancement Material",
            ShowSort = { 1025001, 1025002, 1025003, 1025004 },
            ToItem = 1025005,
        },
        [1025006] = {
            DefaultFromItem = 1025005,
            Page = "Enhancement Material",
            ShowSort = { 1025001, 1025002, 1025003, 1025004, 1025005 },
            ToItem = 1025006,
        },
        [1025007] = {
            DefaultFromItem = 1025006,
            Page = "Enhancement Material",
            ShowSort = { 1025001, 1025002, 1025003, 1025004, 1025005, 1025006 },
            ToItem = 1025007,
        },
    },
}

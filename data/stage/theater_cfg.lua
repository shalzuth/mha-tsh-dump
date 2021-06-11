-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    ChapterAPI = {
        function(API, User, ...)
            -- function num : 0_0
            local Args = { ... }
            assert(Args[1], "τ╝║σñ▒σÅéµò░")
            do
                local Contri = Args[1]
                do
                    return Contri <= User:GetTheaterContri()
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, User, ...)
            -- function num : 0_1
            local Args = { ... }
            assert(Args[1], "τ╝║σñ▒σÅéµò░")
            do
                local Level = Args[1]
                do
                    return Level <= User:GetLevel()
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, User, ...)
            -- function num : 0_2
            local Args = { ... }
            assert(Args[1], "τ╝║σñ▒σÅéµò░")
            local ItemId = Args[1]
            do
                if ITEM_MGR:CheckItemIdValid(ItemId) then
                    local Amount = ITEM_MGR:GetItemAmountById(User, ItemId)
                    if Amount > 0 then
                        return true
                    end
                end
                do
                    local CollectData = User:GetCollectData()
                    do
                        return not CollectData
                            or not CollectData.State
                            or not (CollectData.State)[ItemId]
                            or (CollectData.State)[ItemId] == 2
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end
        end,
    },
    ChapterBonus = {
        {
            [10] = {
                BonusList = {
                    { 52004, 1 },
                },
                BonusView = {
                    { 1001002, 50 },
                },
                Desc = "10-star Rewards",
            },
            [4] = {
                BonusList = {
                    { 52004, 1 },
                },
                BonusView = {
                    { 1001002, 50 },
                },
                Desc = "4-star Rewards",
            },
            [7] = {
                BonusList = {
                    { 52004, 1 },
                },
                BonusView = {
                    { 1001002, 50 },
                },
                Desc = "7-star Rewards",
            },
            [9] = {
                BonusList = {
                    { 52004, 1 },
                },
                BonusView = {
                    { 1001002, 50 },
                },
                Desc = "9-star Rewards",
            },
        },
        {
            [2] = {
                BonusList = {
                    { 52004, 1 },
                },
                BonusView = {
                    { 1001002, 50 },
                },
                Desc = "2-star Rewards",
            },
        },
        {
            [3] = {
                BonusList = {
                    { 52004, 1 },
                },
                BonusView = {
                    { 1001002, 50 },
                },
                Desc = "3-star Rewards",
            },
            [5] = {
                BonusList = {
                    { 52004, 1 },
                },
                BonusView = {
                    { 1001002, 50 },
                },
                Desc = "5-star Rewards",
            },
        },
    },
    ChapterCfg = {
        {
            ChapterBackPic = "µíúµíêσ║ô_ΦâîµÖ»1",
            ChapterHeroPic = "Φï▒Θ¢ä_µ¡úΘ¥óσìèΦ║½σâÅ_104",
            ChapterId = 1,
            ChapterName = "Chapter 1",
            ChapterNum = "01",
            Desc = "Hero's Starting Point",
            IsInit = true,
            IsMainLine = true,
            StageIds = { 300102, 300201, 300202, 300203, 300204, 300206 },
        },
        {
            ChapterBackPic = "µíúµíêσ║ô_ΦâîµÖ»2",
            ChapterHeroPic = "Φï▒Θ¢ä_µ¡úΘ¥óσìèΦ║½σâÅ_101",
            ChapterId = 2,
            ChapterName = "Chapter 2",
            ChapterNum = "02",
            ClearUnlock = { 2 },
            Desc = "Life in U.A. High",
            IsInit = false,
            IsMainLine = true,
            StageIds = { 300301, 300302 },
            UnlockCond = {
                function(API, User, ...)
                    -- function num : 0_3
                    local Args = { ... }
                    return (API[2])(API, User, 33, unpack(Args))
                end,
            },
            UnlockDesc = "Unlock at Lv. 33 after clearing prerequisites.",
            UnlockEvent = {
                {
                    CondParam = { "33" },
                    EventName = "τÄ⌐σ«╢τ¡ëτ║º",
                },
            },
        },
        {
            ChapterBackPic = "µíúµíêσ║ô_ΦâîµÖ»3",
            ChapterHeroPic = "Φï▒Θ¢ä_µ¡úΘ¥óσìèΦ║½σâÅ_102",
            ChapterId = 3,
            ChapterName = "Chapter 3",
            ChapterNum = "03",
            Desc = "An Unknown Encounter",
            IsInit = false,
            IsMainLine = true,
            StageIds = { 300401, 300402, 300403, 300404, 300405, 300406 },
            UnlockCond = {
                function(API, User, ...)
                    -- function num : 0_4
                    local Args = { ... }
                    return (API[2])(API, User, 39, unpack(Args))
                end,
            },
            UnlockDesc = "Unlock at Lv. 39 after clearing prerequisites.",
            UnlockEvent = {
                {
                    CondParam = { "39" },
                    EventName = "τÄ⌐σ«╢τ¡ëτ║º",
                },
            },
        },
    },
    Const = {
        COMMENT_THUMB_LIMIT_TIMES = { FValue = 10, Id = "COMMENT_THUMB_LIMIT_TIMES" },
        MAIN_SPEED_SCALE = { FValue = 0.5, Id = "MAIN_SPEED_SCALE" },
        NEW_TAG_POS_Y = { FValue = 250, Id = "NEW_TAG_POS_Y" },
        RIGHT_BG = { Id = "RIGHT_BG", SValue = "µíúµíêσ║ô_ΦâîµÖ»4" },
        VIDEO_SKIP_HIDE_TIMEOUT = { FValue = 2, Id = "VIDEO_SKIP_HIDE_TIMEOUT" },
        VIDEO_SKIP_SHOW_TIMEOUT = { FValue = 1, Id = "VIDEO_SKIP_SHOW_TIMEOUT" },
    },
    GlobalContriBonus = {
        [1000] = {
            Desc = {
                { 1001001, 500 },
            },
            Reward = {
                { 52001, 1 },
            },
        },
        [10000] = {
            Desc = {
                { 1001001, 503 },
            },
            Reward = {
                { 52001, 1 },
            },
        },
        [15000] = {
            Desc = {
                { 1001001, 504 },
            },
            Reward = {
                { 52001, 1 },
            },
        },
        [2000] = {
            Desc = {
                { 1001001, 501 },
            },
            Reward = {
                { 52001, 1 },
            },
        },
        [20000] = {
            Desc = {
                { 1001001, 505 },
            },
            Reward = {
                { 52001, 1 },
            },
        },
        [5000] = {
            Desc = {
                { 1001001, 502 },
            },
            Reward = {
                { 52001, 1 },
            },
        },
    },
    LevelTap = {
        ["QTEΦºåΘóæ"] = {
            PageBtnDes = { "µíúµíêµƒÑτ£ï", "µíúµíêσ¢₧Θí╛" },
            TapDesc = { "ΦºåΘóæΦ╡äµûÖ", "Σ║Æσè¿Φ»äτ║º" },
            TapEnum = { 5, 4 },
        },
        ["σç╗Φ┤ÑµòîΣ║║"] = {
            PageBtnDes = { "µíúµíêΣ┐«σñì", "µíúµíêσ¢₧Θí╛" },
            TapDesc = { "µíúµíêΦ»ªµâà", "Σ┐«σñìΦ»äτ║º" },
            TapEnum = { 1, 2 },
        },
        ["σëºµâàσè¿τö╗"] = {
            PageBtnDes = { "µíúµíêΣ┐«σñì", "µíúµíêσ¢₧Θí╛" },
            TapDesc = { "µíúµíêΦ»ªµâà", "Σ┐«σñìΦ»äτ║º" },
            TapEnum = { 1, 2 },
        },
        ["Φ┐çµ╕íσëºµâà"] = {
            TapDesc = { "µíúµíêΦ»ªµâà" },
            TapEnum = { 1 },
        },
    },
    PicCfg = {
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_Σ╕èΘ╕úτö╡µ░ö"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_σà½τÖ╛Σ╕\135"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_σêçσ▓¢"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_σ╕╕µÜù"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_σ╛íΦî╢σ¡\144"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_µû»σ¥ªσ¢\160"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_µ¼ºσ░öΘ║ªτë╣"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_µ¡╗µƒäµ£\168"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_µ╕íµêæΦó½Φ║½σ¡\144"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_τêåΦ▒¬"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_τ¢╕µ│╜"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_τ╗┐Φ░╖"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_ΦÇ│ΘâÄσôìΘªÖ"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_Φì╝µ»ÿ"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_ΦæíΦÉä"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_Φ¢ÖσÉ╣"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_Φ╜\176"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_Θ¥Æσ▒▒Σ╝ÿΘ¢à"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_ΘÑ¡τö░"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
        ["Φï▒Θ¢äΘüôσà╖σ¢╛µáç_Θ║ªσàï"] = {
            Pos = { 0, 0 },
            Scale = 1,
        },
    },
    PosCfg = {
        { LeftMovePosX = 0, MoveRegion = { -750, -1515 }, RightMovePosX = -1783 },
        { LeftMovePosX = -1783, MoveRegion = { -2357, -3284 }, RightMovePosX = -3574 },
    },
    PsnlContriBonus = {
        [10] = {
            Desc = {
                { 1001013, 3 },
            },
            Reward = {
                { 52003, 3 },
            },
        },
        [15] = {
            Desc = {
                { 1001031, 3 },
            },
            Reward = {
                { 52004, 3 },
            },
        },
    },
    StageId2ChapterId = {
        [300102] = 1,
        [300201] = 1,
        [300202] = 1,
        [300203] = 1,
        [300204] = 1,
        [300206] = 1,
        [300301] = 2,
        [300302] = 2,
        [300401] = 3,
        [300402] = 3,
        [300403] = 3,
        [300404] = 3,
        [300405] = 3,
        [300406] = 3,
    },
    UIActionCfg = {
        ["archive/archiveItemPanel2ViewUI"] = {
            Img01 = {
                LPos = { -711, 0 },
                LRAlpha = 0,
                NodeName = "Img01",
                RPos = { -359, 0 },
                RangeList = { 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 },
                ResetAlpha = 255,
                ResetPos = { -159, 0 },
                ResetScale = 1,
                SmoothTime = 0.02,
            },
            Img02 = {
                LAlpha = 255,
                LPos = { -571, -152 },
                NodeName = "Img02",
                RAlpha = 0,
                RPos = { -521, -152 },
                RangeList = { 53, 54, 55, 56, 57, 58, 59, 60, 61 },
                ResetAlpha = 255,
                ResetPos = { -571, -152 },
                SmoothTime = 0.01,
            },
            Img03 = {
                LRPos = { -196, -80 },
                NodeName = "Img03",
                RangeList = { 24, 25 },
                ResetPos = { -480, -110 },
                SmoothTime = 0.02,
            },
            Img04 = {
                LRPos = { 105, -604 },
                NodeName = "Img04",
                RangeList = { 22, 23 },
                ResetPos = { -680, 222 },
                SmoothTime = 0.01,
            },
            Img07 = {
                LRPos = { -850, 438 },
                NodeName = "Img07",
                RangeList = { 26, 27 },
                ResetPos = { -358, -242 },
                SmoothTime = 0.01,
            },
            LabChapterName = {
                LAlpha = 255,
                LPos = { -641, -210 },
                NodeName = "LabChapterName",
                RAlpha = 0,
                RPos = { -471, -210 },
                RangeList = { 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52 },
                ResetAlpha = 255,
                ResetPos = { -571, -210 },
                SmoothTime = 0.01,
            },
            LabChapterNum = {
                LAlpha = 255,
                LPos = { -601, -265 },
                LRPos = { -571, -265 },
                LScale = 1,
                NodeName = "LabChapterNum",
                RAlpha = 0,
                RPos = { -421, -265 },
                RScale = 1.2,
                RangeList = { 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41 },
                ResetAlpha = 255,
                ResetPos = { -571, -265 },
                ResetScale = 1,
                SmoothTime = 0.01,
            },
            NodeItem = {
                NodeName = "NodeItem",
                RangeList = { 28, 29, 30 },
                ResetAlpha = 255,
                ResetPos = { 304, 0 },
                SmoothTime = 0.02,
            },
        },
        ["archive/archiveItemPanelViewUI"] = {
            BG = { LRAlpha = 0, NodeName = "BG", RangeList = { 11 }, ResetAlpha = 255 },
            Img01 = {
                LRPos = { 462, -355 },
                NodeName = "Img01",
                RangeList = { 7 },
                ResetPos = { 413, -304 },
                SmoothTime = 0.01,
            },
            Img02 = {
                LPos = { 263, -104 },
                NodeName = "Img02",
                RPos = { 622, -440 },
                RangeList = { 5 },
                ResetPos = { 331, -206 },
                SmoothTime = 0.01,
            },
            Img03 = {
                LRPos = { 289, 332 },
                NodeName = "Img03",
                RangeList = { 8 },
                ResetPos = { 569, -295 },
            },
            Img04 = { NodeName = "Img04", RangeList = { 3 }, ResetPos = { 834, 0 }, SmoothTime = 0.03 },
            Img05 = { NodeName = "Img05", RangeList = { 1, 2 }, ResetPos = { 325, -118 }, SmoothTime = 0.02 },
            Img06 = {
                LRPos = { 380, -592 },
                NodeName = "Img06",
                RangeList = { 9 },
                ResetPos = { -520, -92 },
            },
            TextSprite1 = { NodeName = "TextSprite1", RangeList = { 10 }, ResetPos = { 0, -19 }, SmoothTime = 0.02 },
        },
    },
    UIRangeCfg = {
        {
            AddPos = { -230, 0 },
            Direction = 1,
            IsEnter = 1,
            Pos = { 324, 0 },
            Range = { 0, 1 },
            RangeNum = 1,
        },
        {
            AddPos = { -230, 0 },
            Direction = 1,
            IsEnter = 2,
            Pos = { 324, 0 },
            Range = { 0, 1 },
            RangeNum = 2,
        },
        {
            AddPos = { -230, 0 },
            Direction = 1,
            Pos = { 834, 0 },
            Range = { 0, 1 },
            RangeNum = 3,
        },
        [10] = {
            AddPos = { 500, 0 },
            Pos = { 0, 0 },
            Range = { 0, 1 },
            RangeNum = 10,
        },
        [11] = { AddAlpha = -255, Alpha = 255, Range = { 0, 1 }, RangeNum = 11 },
        [12] = { Alpha = 255, IsFirstLeft = true, Range = { 0, 0.1 }, RangeNum = 12, Scale = 1 },
        [13] = {
            AddPos = { -155, 0 },
            AddScale = 0.08,
            IsFirstLeft = true,
            Pos = { -159, 0 },
            Range = { 0.1, 1 },
            RangeNum = 13,
            Scale = 1,
        },
        [14] = { IsFirstLeft = true, Range = { 1, 1 }, RangeNum = 14 },
        [15] = { AddAlpha = -255, AddScale = 0.3, Alpha = 255, Range = { 0, 1 }, RangeNum = 15, Scale = 1 },
        [16] = {
            AddPos = { -552, 0 },
            Direction = 1,
            Pos = { -159, 0 },
            Range = { 0, 1 },
            RangeNum = 16,
        },
        [17] = { Direction = 1, Pos = { -711, 0 }, Range = { 1, 1 }, RangeNum = 17 },
        [18] = { Direction = 1, Pos = { -159, 0 }, Range = { 0, 0.01 }, RangeNum = 18 },
        [19] = {
            AddPos = { -200, 0 },
            Direction = 2,
            Pos = { -159, 0 },
            Range = { 0.01, 1 },
            RangeNum = 19,
        },
        [20] = { Direction = 2, Range = { 1, 1 }, RangeNum = 20 },
        [21] = { Direction = 2, Range = { 0, 0.01 }, RangeNum = 21 },
        [22] = {
            AddPos = { 785, -826 },
            IsFirstLeft = true,
            Pos = { -680, 222 },
            Range = { 0, 1 },
            RangeNum = 22,
        },
        [23] = {
            AddPos = { 785, -826 },
            Pos = { -680, 222 },
            Range = { 0, 1 },
            RangeNum = 23,
        },
        [24] = {
            AddPos = { 284, 30 },
            IsFirstLeft = true,
            Pos = { -480, -110 },
            Range = { 0, 1 },
            RangeNum = 24,
        },
        [25] = {
            AddPos = { 284, 30 },
            Pos = { -480, -110 },
            Range = { 0, 1 },
            RangeNum = 25,
        },
        [26] = {
            AddPos = { -492, 680 },
            IsFirstLeft = true,
            Pos = { -358, -242 },
            Range = { 0, 1 },
            RangeNum = 26,
        },
        [27] = {
            AddPos = { -492, 680 },
            Pos = { -358, -242 },
            Range = { 0, 1 },
            RangeNum = 27,
        },
        [28] = {
            AddAlpha = -255,
            AddPos = { -500, 0 },
            Alpha = 255,
            Direction = 1,
            Pos = { 304, 0 },
            Range = { 0, 1 },
            RangeNum = 28,
        },
        [29] = { Alpha = 255, Direction = 1, Range = { 0, 0.7 }, RangeNum = 29 },
        [30] = { AddAlpha = -255, Alpha = 255, Direction = 1, Range = { 0.7, 1 }, RangeNum = 30 },
        [31] = { Alpha = 255, IsFirstLeft = true, Pos = { -571, -265 }, Range = { 0, 0.05 }, RangeNum = 31, Scale = 1 },
        [32] = {
            AddAlpha = -255,
            AddPos = { 15, 0 },
            Alpha = 255,
            IsFirstLeft = true,
            Pos = { -571, -265 },
            Range = { 0.05, 0.15 },
            RangeNum = 32,
        },
        [33] = { Alpha = 0, IsFirstLeft = true, Range = { 0.15, 1 }, RangeNum = 33 },
        [34] = { Direction = 1, Pos = { -571, -265 }, Range = { 0, 0.05 }, RangeNum = 34 },
        [35] = {
            AddPos = { -70, 0 },
            Direction = 1,
            Pos = { -571, -265 },
            Range = { 0.05, 1 },
            RangeNum = 35,
        },
        [36] = {
            AddAlpha = -255,
            AddPos = { 75, 0 },
            AddScale = 0.2,
            Alpha = 255,
            Direction = 2,
            IsEnter = 1,
            Pos = { -571, -265 },
            Range = { 0.3, 0.5 },
            RangeNum = 36,
            Scale = 1,
        },
        [37] = { Alpha = 0, Direction = 2, IsEnter = 1, Pos = { -421, -265 }, Range = { 0.5, 1 }, RangeNum = 37 },
        [38] = {
            Alpha = 255,
            Direction = 2,
            IsEnter = 1,
            Pos = { -571, -265 },
            Range = { 0, 0.3 },
            RangeNum = 38,
            Scale = 1,
        },
        [39] = {
            AddAlpha = -255,
            AddPos = { 75, 0 },
            AddScale = 0.2,
            Alpha = 255,
            Direction = 2,
            IsEnter = 2,
            Pos = { -571, -265 },
            Range = { 0.5, 0.7 },
            RangeNum = 39,
            Scale = 1,
        },
        [40] = {
            Alpha = 255,
            Direction = 2,
            IsEnter = 2,
            Pos = { -571, -265 },
            Range = { 0, 0.5 },
            RangeNum = 40,
            Scale = 1,
        },
        [41] = { Alpha = 0, Direction = 2, IsEnter = 2, Range = { 0.7, 1 }, RangeNum = 41 },
        [42] = { Alpha = 255, IsFirstLeft = true, Pos = { -571, -210 }, Range = { 0, 0.05 }, RangeNum = 42 },
        [43] = {
            AddAlpha = -255,
            AddPos = { 10, 0 },
            Alpha = 255,
            IsFirstLeft = true,
            Pos = { -571, -210 },
            Range = { 0.05, 0.15 },
            RangeNum = 43,
        },
        [44] = { Alpha = 0, IsFirstLeft = true, Range = { 0.15, 1 }, RangeNum = 44 },
        [45] = { Direction = 1, Pos = { -571, -210 }, Range = { 0, 0.05 }, RangeNum = 45 },
        [46] = {
            AddPos = { -30, 0 },
            Direction = 1,
            Pos = { -571, -210 },
            Range = { 0.1, 1 },
            RangeNum = 46,
        },
        [47] = { Alpha = 255, Direction = 2, IsEnter = 1, Pos = { -571, -210 }, Range = { 0, 0.3 }, RangeNum = 47 },
        [48] = {
            AddAlpha = -255,
            AddPos = { 50, 0 },
            Alpha = 255,
            Direction = 2,
            IsEnter = 1,
            Pos = { -571, -210 },
            Range = { 0.3, 0.5 },
            RangeNum = 48,
        },
        [49] = { Alpha = 0, Direction = 2, IsEnter = 1, Pos = { -471, -210 }, Range = { 0.5, 1 }, RangeNum = 49 },
        [5] = {
            AddPos = { 291, -234 },
            Pos = { 331, -206 },
            Range = { 0, 1 },
            RangeNum = 5,
        },
        [50] = {
            AddAlpha = -255,
            AddPos = { 50, 0 },
            Alpha = 255,
            Direction = 2,
            IsEnter = 2,
            Pos = { -571, -210 },
            Range = { 0.5, 0.7 },
            RangeNum = 50,
        },
        [51] = { Alpha = 255, Direction = 2, IsEnter = 2, Pos = { -571, -210 }, Range = { 0, 0.5 }, RangeNum = 51 },
        [52] = { Alpha = 0, Direction = 2, IsEnter = 2, Range = { 0.7, 1 }, RangeNum = 52 },
        [53] = { Alpha = 255, IsFirstLeft = true, Range = { 0, 0.05 }, RangeNum = 53 },
        [54] = {
            AddAlpha = -255,
            AddPos = { 5, 0 },
            Alpha = 255,
            IsFirstLeft = true,
            Pos = { -571, -152 },
            Range = { 0.05, 0.15 },
            RangeNum = 54,
        },
        [55] = { Alpha = 0, IsFirstLeft = true, Range = { 0.15, 1 }, RangeNum = 55 },
        [56] = {
            AddAlpha = -255,
            AddPos = { 25, 0 },
            Alpha = 255,
            Direction = 2,
            IsEnter = 1,
            Pos = { -571, -152 },
            Range = { 0.3, 0.5 },
            RangeNum = 56,
        },
        [57] = { Alpha = 0, Direction = 2, IsEnter = 1, Pos = { -571, -152 }, Range = { 0.5, 1 }, RangeNum = 57 },
        [58] = { Alpha = 255, Direction = 2, IsEnter = 1, Pos = { -571, -152 }, Range = { 0, 0.3 }, RangeNum = 58 },
        [59] = {
            AddAlpha = -255,
            AddPos = { 25, 0 },
            Alpha = 255,
            Direction = 2,
            IsEnter = 2,
            Pos = { -571, -152 },
            Range = { 0.5, 0.7 },
            RangeNum = 59,
        },
        [60] = { Alpha = 255, Direction = 2, IsEnter = 2, Pos = { -571, -152 }, Range = { 0, 0.5 }, RangeNum = 60 },
        [61] = { Alpha = 0, Direction = 2, IsEnter = 2, Range = { 0.7, 1 }, RangeNum = 61 },
        [7] = {
            AddPos = { 49, -53 },
            Pos = { 413, -302 },
            Range = { 0, 1 },
            RangeNum = 7,
        },
        [8] = {
            AddPos = { -280, 627 },
            Pos = { 569, -295 },
            Range = { 0, 1 },
            RangeNum = 8,
        },
        [9] = {
            AddPos = { 920, -500 },
            Pos = { -520, -92 },
            Range = { 0, 1 },
            RangeNum = 9,
        },
    },
}

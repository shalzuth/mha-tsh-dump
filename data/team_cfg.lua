-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    TEAM_EXTRA_2_NUM = {
        Event1 = 7,
        Event2 = 11,
        Event3 = 15,
        EventUid = 4,
        Key = 1,
        LevelRangeId = 6,
        Lv = 5,
        Lv1 = 10,
        Lv2 = 14,
        Lv3 = 18,
        Owner = 2,
        StageId = 3,
        StageId1 = 9,
        StageId2 = 13,
        StageId3 = 17,
        StartTime1 = 8,
        StartTime2 = 12,
        StartTime3 = 16,
    },
    TEAM_EXTRA_2_STR = {
        "Key",
        "Owner",
        "StageId",
        "EventUid",
        "Lv",
        "LevelRangeId",
        "Event1",
        "StartTime1",
        "StageId1",
        "Lv1",
        "Event2",
        "StartTime2",
        "StageId2",
        "Lv2",
        "Event3",
        "StartTime3",
        "StageId3",
        "Lv3",
    },
    TeamConstCfg = {
        CHRISTMAS_MATCH_ID = 411,
        EMERGENCY_GUIDE_ID = 1116,
        JOIN_TEAM_MEMBER_REDDOT_ID = 2,
        MATCH_CANCEL_TIME = 40,
        MATCH_ROBOT_TIME = 10,
        REBORN_TIME = 15,
        RECRUIT_INFO_LIMIT = 30,
        TEAM_AUTO_SEARCH_CD = 15,
        TEAM_BACK_STAGE_ALERT_TIME = 30,
        TEAM_BEINVITE_OVER_TIME = 120,
        TEAM_CD_RECRUIT = 30,
        TEAM_CONFIM_OVER_TIME = 20,
        TEAM_CONFIM_OVER_TIPS = "Connection timeout. Please re-initiate deployment confirmation.",
        TEAM_EVALUATE_BOXOPEN_TIME = 10,
        TEAM_EVALUATE_CAMERA = { 0, 50, -500, 0, 50, 0, 0, 1, 0 },
        TEAM_EVALUATE_EXITTIME_TIME = 20,
        TEAM_EVALUATE_FLASHVIEW_TIME = 3,
        TEAM_EVALUATE_HEROFRAME_TIME = 10,
        TEAM_EVALUATE_HEROPOS = {
            { 0, 30, 0 },
            { -85, 30, 200 },
            { 85, 30, 200 },
        },
        TEAM_EVALUATE_ITEMPOS = {
            { 0, 0 },
            { -400, 0 },
            { 420, 0 },
        },
        TEAM_EVALUATE_MVPVIEW_DELAY = 2,
        TEAM_EVALUATE_MVPVIEW_TIME = 3,
        TEAM_FAIL_HEROPOS = {
            { 0, 30, 0 },
            { -85, 30, 200 },
            { 85, 30, 200 },
        },
        TEAM_JOIN_CD = 10,
        TEAM_LEADER_MSG_LIMIT = 30,
        TEAM_LEADER_TIMEOUT_MESSAGE_ONE = "#cE61717Captain requested to move out. You will be removed from the team in %d sec.#n",
        TEAM_LEADER_TIMEOUT_MESSAGE_TWO = "#caacadeYou will be removed from the team after the countdown.#n",
        TEAM_LOADING_OVER_TIME = 70,
        TEAM_LOADING_OVER_TIPS = "Loading timeout. You can cancel the loading manually.",
        TEAM_LOADING_STAGE_TIPS = "Data missing. Unable to load the stage.",
        TEAM_MEMBER_COUNT = 3,
        TEAM_QUICK_CHAT_1 = "Get ready!",
        TEAM_QUICK_CHAT_2 = "Are you still there?",
        TEAM_QUICK_CHAT_3 = "Time to move out, Captain.",
        TEAM_QUICK_CHAT_4 = "I need to take a break.",
        TEAM_QUICK_CHAT_5 = "I've got to upgrade my heroes.",
        TEAM_QUICK_CHAT_NUM = 10,
        TEAM_QUICK_CHAT_SEND_CD = 10,
        TEAM_QUICK_CHAT_TEXT_LIMIT = 12,
        TEAM_QUICK_JOIN_CD = 5,
        TEAM_RECONNECT_TIME = 40,
        TEAM_RECONNECT_TIME_TIPS = "Reconnection timeout. Please leave the stage to disconnect.",
        TEAM_ROOM_MESSAGE = "Team up for the challenge!",
        TEAM_SCENE_DOOR_NPC_ID = 1005,
        TEAM_SCENE_ID = 1120,
        TEAM_SCENE_TURNSTILE_UUID = "131973910780910000",
        TEAM_SEARCH_CD = 5,
        TEAM_TIMEOUT_TIME_LEADER = 20,
        TEAM_TIMEOUT_TIME_MEMBER = 30,
        TEAM_TIME_LIMIT = 10,
        WORLD_RECRUIT_WORD = "LFM #cfe7f14Agency Assessments: %s#n.",
        WORLD_RECRUIT_WORD_CHRISTMAS = "Quickly recruit some heroes to join the event, #cfe7f14%s#n.",
        WORLD_RECRUIT_WORD_CHRISTMAS_NO_TARGET = "Quickly recruit some heroes to join the event. There is no target currently#n.",
        WORLD_RECRUIT_WORD_EM = "LFM #cfe7f14Emergency Incidents: %s (%s) #n.",
        WORLD_RECRUIT_WORD_EM_NO_TARGET = "LFM #cfe7f14Emergency Incidents (no target set)#n.",
        WORLD_RECRUIT_WORD_NO_TARGET = "LFM #cfe7f14Agency Assessments (no target set)#n.",
        WORLD_RECRUIT_WORD_RELAX = "LFM #cfe7f14Joint Operations: %s (%s)#n.",
        WORLD_RECRUIT_WORD_RELAX_NO_TARGET = "LFM #cfe7f14Joint Operations#n.",
    },
    TeamHeroCfg = {
        [101] = {
            FailOffsetPos = { 0, -37.5, 150 },
            FailScale = 0.5,
            HeroClsId = 101,
            OffsetPos = { 0, -37.5, 150 },
            Scale = 0.5,
        },
        [102] = {
            FailOffsetPos = { 0, -30, 150 },
            FailScale = 0.5,
            HeroClsId = 102,
            OffsetPos = { 0, -42.5, 150 },
            Scale = 0.5,
        },
        [104] = {
            FailOffsetPos = { -7.5, -45, 250 },
            FailScale = 0.45,
            HeroClsId = 104,
            OffsetPos = { -7.5, -45, 250 },
            Scale = 0.45,
        },
        [106] = {
            FailOffsetPos = { 0, -20, 100 },
            FailScale = 0.5,
            HeroClsId = 106,
            OffsetPos = { 0, -40, 100 },
            Scale = 0.5,
        },
        [107] = {
            FailOffsetPos = { 0, -5, 150 },
            FailScale = 0.55,
            HeroClsId = 107,
            OffsetPos = { 0, -30, 150 },
            Scale = 0.55,
        },
        [108] = {
            FailOffsetPos = { 0, -40, 175 },
            FailScale = 0.5,
            HeroClsId = 108,
            OffsetPos = { 0, -40, 175 },
            Scale = 0.5,
        },
        [109] = {
            FailOffsetPos = { 0, -35, 150 },
            FailScale = 0.5,
            HeroClsId = 109,
            OffsetPos = { 0, -42.5, 150 },
            Scale = 0.5,
        },
        [110] = {
            FailOffsetPos = { 0, -10, 150 },
            FailScale = 0.5,
            HeroClsId = 110,
            OffsetPos = { 0, -42.5, 150 },
            Scale = 0.5,
        },
        [111] = {
            FailOffsetPos = { 3, -15, 150 },
            FailScale = 0.45,
            HeroClsId = 111,
            OffsetPos = { 3, -45, 150 },
            Scale = 0.45,
        },
        [112] = {
            FailOffsetPos = { -2.5, -25, 175 },
            FailScale = 0.5,
            HeroClsId = 112,
            OffsetPos = { -2.5, -55, 175 },
            Scale = 0.5,
        },
        [113] = {
            FailOffsetPos = { -4, -25, 150 },
            FailScale = 0.5,
            HeroClsId = 113,
            OffsetPos = { -4, -45, 152.5 },
            Scale = 0.5,
        },
        [114] = {
            FailOffsetPos = { 0, -22.5, 150 },
            FailScale = 0.55,
            HeroClsId = 114,
            OffsetPos = { 0, -37.5, 150 },
            Scale = 0.5,
        },
        [115] = {
            FailOffsetPos = { 0, -10, 150 },
            FailScale = 0.5,
            HeroClsId = 115,
            OffsetPos = { 0, -40, 200 },
            Scale = 0.5,
        },
        [116] = {
            FailOffsetPos = { 0, -10, 150 },
            FailScale = 0.5,
            HeroClsId = 116,
            OffsetPos = { 0, -40, 200 },
            Scale = 0.5,
        },
        [119] = {
            FailOffsetPos = { -2.5, -25, 175 },
            FailScale = 0.5,
            HeroClsId = 119,
            OffsetPos = { -2.5, -55, 175 },
            Scale = 0.5,
        },
        [120] = {
            FailOffsetPos = { 0, -22.5, 150 },
            FailScale = 0.55,
            HeroClsId = 120,
            OffsetPos = { 0, -25, 150 },
            Scale = 0.6,
        },
        [121] = {
            FailOffsetPos = { 0, -25, 250 },
            FailScale = 0.45,
            HeroClsId = 121,
            OffsetPos = { 0, -45, 250 },
            Scale = 0.45,
        },
        [123] = {
            FailOffsetPos = { 0, -25, 150 },
            FailScale = 0.5,
            HeroClsId = 123,
            OffsetPos = { 0, -42.5, 150 },
            Scale = 0.5,
        },
        [124] = {
            FailOffsetPos = { 0, -37.5, 150 },
            FailScale = 0.5,
            HeroClsId = 124,
            OffsetPos = { 0, -37.5, 150 },
            Scale = 0.5,
        },
    },
    TeamMatchCfg = {
        AllItem = {
            [111] = { Const = 1, Desc = "Emergency Incidents", Interval = false, ShowSpecial = false, Xor = false },
            [121] = { Const = 1, Desc = "Urgent Handling", Interval = false, ShowSpecial = true, Xor = true },
            [122] = { Const = 2, Desc = "Urgent Assists", Interval = false, ShowSpecial = true, Xor = true },
            [131] = { Const = 0, Desc = "Any", Interval = false, ShowSpecial = false, Xor = false },
            [141] = { Const = 0, Desc = "Any", Interval = false, ShowSpecial = false, Xor = false },
            [211] = { Const = 2, Desc = "Agency Assessment", Interval = false, ShowSpecial = false, Xor = false },
            [221] = { Const = 1, Desc = "Use a Permit", Interval = false, ShowSpecial = true, Xor = true },
            [222] = { Const = 2, Desc = "Don't use a Permit", Interval = false, ShowSpecial = true, Xor = true },
            [232] = { Const = 1, Desc = "Lv. 20", Interval = false, ShowSpecial = false, Xor = false },
            [233] = { Const = 2, Desc = "Lv. 30", Interval = false, ShowSpecial = false, Xor = false },
            [234] = { Const = 3, Desc = "Lv. 40", Interval = false, ShowSpecial = false, Xor = false },
            [235] = { Const = 4, Desc = "Lv. 50", Interval = false, ShowSpecial = false, Xor = false },
            [236] = { Const = 5, Desc = "Lv. 60", Interval = false, ShowSpecial = false, Xor = false },
            [241] = {
                Const = 1,
                Desc = "Floor 1",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 20, 20 },
                    { 30, 30 },
                    { 40, 40 },
                    { 50, 50 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [242] = {
                Const = 2,
                Desc = "Floor 2",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 21, 21 },
                    { 30, 30 },
                    { 40, 40 },
                    { 50, 50 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [243] = {
                Const = 3,
                Desc = "Floor 3",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 21, 21 },
                    { 30, 30 },
                    { 40, 40 },
                    { 50, 50 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [244] = {
                Const = 4,
                Desc = "Floor 4",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 22, 22 },
                    { 30, 30 },
                    { 40, 40 },
                    { 50, 50 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [245] = {
                Const = 5,
                Desc = "Floor 5",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 22, 22 },
                    { 31, 31 },
                    { 41, 41 },
                    { 51, 51 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [246] = {
                Const = 6,
                Desc = "Floor 6",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 23, 23 },
                    { 32, 32 },
                    { 42, 42 },
                    { 52, 52 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [247] = {
                Const = 7,
                Desc = "Floor 7",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 24, 24 },
                    { 33, 33 },
                    { 43, 43 },
                    { 53, 53 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [248] = {
                Const = 8,
                Desc = "Floor 8",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 25, 25 },
                    { 34, 34 },
                    { 44, 44 },
                    { 54, 54 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [249] = {
                Const = 9,
                Desc = "Floor 9",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [250] = {
                Const = 10,
                Desc = "Floor 10",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [251] = {
                Const = 11,
                Desc = "Floor 11",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [252] = {
                Const = 12,
                Desc = "Floor 12",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [253] = {
                Const = 13,
                Desc = "Floor 13",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [254] = {
                Const = 14,
                Desc = "Floor 14",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [255] = {
                Const = 15,
                Desc = "Floor 15",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [256] = {
                Const = 16,
                Desc = "Floor 16",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [257] = {
                Const = 17,
                Desc = "Floor 17",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [258] = {
                Const = 18,
                Desc = "Floor 18",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [259] = {
                Const = 19,
                Desc = "Floor 19",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [260] = {
                Const = 20,
                Desc = "Floor 20",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [261] = {
                Const = 21,
                Desc = "Floor 21",
                Interval = true,
                ShowSpecial = false,
                Val = {
                    { 26, 26 },
                    { 35, 35 },
                    { 45, 45 },
                    { 55, 55 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [311] = { Const = 3, Desc = "Joint Operations", Interval = false, ShowSpecial = false, Xor = false },
            [321] = { Const = 1, Desc = "Lv. 20", Interval = false, ShowSpecial = false, Xor = false },
            [322] = { Const = 2, Desc = "Lv. 30", Interval = false, ShowSpecial = false, Xor = false },
            [323] = { Const = 3, Desc = "Lv. 40", Interval = false, ShowSpecial = false, Xor = false },
            [324] = { Const = 4, Desc = "Lv. 50", Interval = false, ShowSpecial = false, Xor = false },
            [325] = { Const = 5, Desc = "Lv. 60", Interval = false, ShowSpecial = false, Xor = false },
            [331] = {
                Const = 1,
                Desc = "Easy",
                Interval = false,
                ShowSpecial = false,
                Val = {
                    { 24, 25 },
                    { 30, 33 },
                    { 40, 43 },
                    { 50, 53 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [332] = {
                Const = 2,
                Desc = "Elite",
                Interval = false,
                ShowSpecial = false,
                Val = {
                    { 24, 25 },
                    { 30, 33 },
                    { 40, 43 },
                    { 50, 53 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [333] = {
                Const = 3,
                Desc = "Hard",
                Interval = false,
                ShowSpecial = false,
                Val = {
                    { 24, 25 },
                    { 30, 33 },
                    { 40, 43 },
                    { 50, 53 },
                    { 60, 60 },
                },
                Xor = false,
            },
            [411] = {
                Const = 4,
                Desc = "Snowman Battle",
                Interval = false,
                ShowSpecial = false,
                Val = {
                    { 20, 60 },
                },
                Xor = false,
            },
        },
        Tree = {
            [111] = {
                [121] = {
                    [131] = { [141] = true },
                },
                [122] = {
                    [131] = { [141] = true },
                },
            },
            [211] = {
                [221] = {
                    [232] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                    [233] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                    [234] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                    [235] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                    [236] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                },
                [222] = {
                    [232] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                    [233] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                    [234] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                    [235] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                    [236] = {
                        [241] = true,
                        [242] = true,
                        [243] = true,
                        [244] = true,
                        [245] = true,
                        [246] = true,
                        [247] = true,
                        [248] = true,
                        [249] = true,
                        [250] = true,
                        [251] = true,
                        [252] = true,
                        [253] = true,
                        [254] = true,
                        [255] = true,
                        [256] = true,
                        [257] = true,
                        [258] = true,
                    },
                },
            },
            [311] = {
                [321] = { [331] = true, [332] = true, [333] = true },
                [322] = { [331] = true, [332] = true, [333] = true },
                [323] = { [331] = true, [332] = true, [333] = true },
                [324] = { [331] = true, [332] = true, [333] = true },
                [325] = { [331] = true, [332] = true, [333] = true },
            },
            [411] = true,
        },
        XorCfg = {
            [121] = { 122 },
            [122] = { 121 },
            [221] = { 222 },
            [222] = { 221 },
        },
    },
    TeamQChatCfg = {
        ["^1"] = "Get ready!",
        ["^2"] = "Are you still there?",
        ["^3"] = "Time to move out, Captain.",
        ["^4"] = "I need to take a break.",
        ["^5"] = "I've got to upgrade my heroes.",
    },
    TeamSearchLevelCfg = {
        [11] = {
            { MaxLevel = 100, MiniLevel = 0, ShowDesc = "Any" },
            { MaxLevel = 29, MiniLevel = 20, ShowDesc = "Lv. 20~29" },
            { MaxLevel = 39, MiniLevel = 30, ShowDesc = "Lv. 30~39" },
            { MaxLevel = 49, MiniLevel = 40, ShowDesc = "Lv. 40~49" },
            { MaxLevel = 59, MiniLevel = 50, ShowDesc = "Lv. 50~59" },
            { MaxLevel = 100, MiniLevel = 60, ShowDesc = "Above Lv. 60" },
        },
        [35] = {
            { MaxLevel = 100, MiniLevel = 0, ShowDesc = "Any" },
            { MaxLevel = 29, MiniLevel = 20, ShowDesc = "Lv. 20~29" },
            { MaxLevel = 39, MiniLevel = 30, ShowDesc = "Lv. 30~39" },
            { MaxLevel = 49, MiniLevel = 40, ShowDesc = "Lv. 40~49" },
            { MaxLevel = 59, MiniLevel = 50, ShowDesc = "Lv. 50~59" },
            { MaxLevel = 100, MiniLevel = 60, ShowDesc = "Lv. 60~100" },
        },
        [42] = {
            { MaxLevel = 100, MiniLevel = 0, ShowDesc = "Any" },
            { MaxLevel = 29, MiniLevel = 20, ShowDesc = "Lv. 20~29" },
            { MaxLevel = 39, MiniLevel = 30, ShowDesc = "Lv. 30~39" },
            { MaxLevel = 49, MiniLevel = 40, ShowDesc = "Lv. 40~49" },
            { MaxLevel = 59, MiniLevel = 50, ShowDesc = "Lv. 50~59" },
            { MaxLevel = 100, MiniLevel = 60, ShowDesc = "Lv. 60~100" },
        },
        [8] = {
            { MaxLevel = 100, MiniLevel = 0, ShowDesc = "Any" },
            { MaxLevel = 29, MiniLevel = 20, ShowDesc = "Lv. 20~29" },
            { MaxLevel = 39, MiniLevel = 30, ShowDesc = "Lv. 30~39" },
            { MaxLevel = 49, MiniLevel = 40, ShowDesc = "Lv. 40~49" },
            { MaxLevel = 59, MiniLevel = 50, ShowDesc = "Lv. 50~59" },
            { MaxLevel = 100, MiniLevel = 60, ShowDesc = "Lv. 60~100" },
        },
    },
    TeamSearchStageCfg = {
        [11] = {
            { MaxLevel = 3, MiniLevel = 1, PlayName = "?????????????????\128?????????????", ShowDesc = "Floor 1~3" },
            { MaxLevel = 6, MiniLevel = 4, PlayName = "?????????????????\128?????????????", ShowDesc = "Floor 4~6" },
            { MaxLevel = 8, MiniLevel = 7, PlayName = "?????????????????\128?????????????", ShowDesc = "Floor 7~8" },
            { MaxLevel = 10, MiniLevel = 9, PlayName = "?????????????????\128?????????????", ShowDesc = "Floor 9~10" },
            { MaxLevel = 12, MiniLevel = 11, PlayName = "?????????????????\128?????????????", ShowDesc = "Floor 11~12" },
            { MaxLevel = 14, MiniLevel = 13, PlayName = "?????????????????\128?????????????", ShowDesc = "Floor 13~14" },
            { MaxLevel = 40, MiniLevel = 15, PlayName = "?????????????????\128?????????????", ShowDesc = "Above Floor 15" },
        },
        [35] = {
            { PlayName = "????????????????????????????????\172", ShowDesc = "Easy" },
            { PlayName = "????????????????????????????????\172", ShowDesc = "Elite" },
            { PlayName = "????????????????????????????????\172", ShowDesc = "Hard" },
        },
    },
}

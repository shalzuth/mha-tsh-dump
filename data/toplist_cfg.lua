-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    API = {
        BossChallengeUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_0
            do
                return not OldData or OldData.TotalDamage < NewData.TotalDamage
            end
            -- DECOMPILER ERROR: 1 unprocessed JMP targets
        end,
        GetAchievePoint = function(API, Object, ...)
            -- function num : 0_1
            return ACHIEVE:GetAchievePoint(Object)
        end,
        GetContriVal = function(API, Object, ...)
            -- function num : 0_2
            return THEATER_STAGE_MGR:GetUserContri(Object)
        end,
        GetCustomAttr = function(API, Object, ...)
            -- function num : 0_3
            local Params = { ... }
            local Name = Params[1]
            assert(Name)
            return Object[Name]
        end,
        GetGuildFrameIcon = function(API, Object, ...)
            -- function num : 0_4
            return Object and Object:GetLeagueHeadFrameIcon() or 0
        end,
        GetGuildIcon = function(API, Object, ...)
            -- function num : 0_5
            return Object and Object:GetLeagueHeadIcon() or 0
        end,
        GetGuildLeaderName = function(API, Object, ...)
            -- function num : 0_6
            return Object and Object:GetLeagueLeaderName() or ""
        end,
        GetGuildName = function(API, Object, ...)
            -- function num : 0_7
            return Object and Object:GetLeagueName() or ""
        end,
        GetHeroId = function(API, Object, ...)
            -- function num : 0_8
            return Object and Object.HeroId or 0
        end,
        GetNowTime = function(API, Object, ...)
            -- function num : 0_9
            return (os.time)()
        end,
        GetQShotName = function(API, Object, ...)
            -- function num : 0_10
            return Object.Name
        end,
        GetQShotRange = function(API, Object, ...)
            -- function num : 0_11
            return Object.Point
        end,
        GetQShotUid = function(API, Object, ...)
            -- function num : 0_12
            return Object.Uid
        end,
        GetShapeCacheId = function(API, Object, ...)
            -- function num : 0_13
            return Object and Object.ShapeCacheId or 0
        end,
        GetSoftName = function(API, Object, ...)
            -- function num : 0_14
            return Object.Name
        end,
        GetSoftRange = function(API, Object, ...)
            -- function num : 0_15
            return Object.Range
        end,
        GetSoftUid = function(API, Object, ...)
            -- function num : 0_16
            return Object.Uid
        end,
        GetUserAvatar = function(API, Object, ...)
            -- function num : 0_17
            return Object and Object.FaceIcon or 0
        end,
        GetUserFighting = function(API, Object, ...)
            -- function num : 0_18
            return Object and Object.Fighting or 0
        end,
        GetUserFrameId = function(API, Object, ...)
            -- function num : 0_19
            return Object and Object.FaceFrame or 0
        end,
        GetUserLeve = function(API, Object, ...)
            -- function num : 0_20
            return Object and Object.Level or 0
        end,
        GetUserName = function(API, Object, ...)
            -- function num : 0_21
            return Object and Object.Name or ""
        end,
        GetUserTopLevel = function(API, Object, ...)
            -- function num : 0_22
            return Object and Object.TopLevel or 0
        end,
        GetUserTotalScore = function(API, Object, ...)
            -- function num : 0_23
            return Object and Object.TotalScore or 0
        end,
        GetUserUid = function(API, Object, ...)
            -- function num : 0_24
            return uid or 0
        end,
        LanternUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_25
            do
                return not OldData or OldData.Num < NewData.Num
            end
            -- DECOMPILER ERROR: 1 unprocessed JMP targets
        end,
        LevelUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_26
            do
                return NewData.iLevel > 0
            end
            -- DECOMPILER ERROR: 1 unprocessed JMP targets
        end,
        PressureUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_27
            do
                return not OldData or OldData.PchallengeScore < NewData.PchallengeScore
            end
            -- DECOMPILER ERROR: 1 unprocessed JMP targets
        end,
        QShotUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_28
            do
                return not OldData or OldData.Point < NewData.Point
            end
            -- DECOMPILER ERROR: 1 unprocessed JMP targets
        end,
        ScoreUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_29
            do
                return not OldData or OldData.Score < NewData.Score
            end
            -- DECOMPILER ERROR: 1 unprocessed JMP targets
        end,
        SecretDpsUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_30
            do
                return not OldData or OldData.Dps < NewData.Dps
            end
            -- DECOMPILER ERROR: 1 unprocessed JMP targets
        end,
        SoftUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_31
            do
                return not OldData or OldData.Range < NewData.Range
            end
            -- DECOMPILER ERROR: 1 unprocessed JMP targets
        end,
        UsjUpdateCheck = function(API, OldData, NewData, ...)
            -- function num : 0_32
            do
                return not NewData.UsjPoint or NewData.UsjPoint > 0
            end
            -- DECOMPILER ERROR: 2 unprocessed JMP targets
        end,
    },
    Data = {
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_33
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_34
                    return (API.GetUserAvatar)(API, uid)
                end,
                HeroId = function(API, uid)
                    -- function num : 0_35
                    return (API.GetHeroId)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_36
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "HeroId", 1, true },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
            },
            ID = 1,
            IsCross = false,
            MaxAmount = 9999,
            Name = "LEVEL",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 100,
            ShowName = "Σ║ïσèíµë\128τ¡ëτ║º",
            SortKey1 = "iLevel",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_37
                return (API.LevelUpdateCheck)(API, OldData, NewData)
            end,
            Value = "AvatarFrameId",
        },
        {
            DataFunc = {},
            DataList = {
                { "RefCount", 1, false },
                { "TeamName", 2, false },
                { "CaptainUid", 1, false },
                { "StageId", 1, false },
                { "StageLevel", 1, false },
                { "KeyId", 1, false },
                { "TeamMembers", 3, false },
            },
            ID = 2,
            IsCross = false,
            MaxAmount = 9999,
            Name = "SECRET_AREA_TIME",
            PKey = "TeamUid",
            PageAmount = 10,
            ShowAmount = 10,
            ShowName = "σñºτºÿσóâτ½₧ΘÇƒµÄÆΦíîµª£",
            SortKey1 = "Hierarchy",
            SortKey2 = "WasteTime",
            SortType1 = false,
            SortType2 = true,
            Value = "TeamMembers",
        },
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_38
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_39
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_40
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_41
                    return (API.GetUserName)(API, uid)
                end,
                TopLevel = function(API, uid)
                    -- function num : 0_42
                    return (API.GetUserTopLevel)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "TopLevel", 1, true },
                { "HeroUse", 1, false },
                { "HeroFighting", 1, false },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
                { "StageId", 1, false },
                { "StageLevel", 1, false },
                { "KeyId", 1, false },
            },
            ID = 3,
            IsCross = false,
            MaxAmount = 9999,
            Name = "SECRET_AREA_DPS",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 10,
            ShowName = "σñºτºÿσóâτºÆΣ╝ñµÄÆΦíîµª£",
            SortKey1 = "Dps",
            SortKey2 = "WasteTime",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_43
                return (API.SecretDpsUpdateCheck)(API, OldData, NewData)
            end,
            Value = "KeyId",
        },
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_44
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_45
                    return (API.GetUserAvatar)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_46
                    return (API.GetUserName)(API, uid)
                end,
                RankNum = function(API, uid)
                    -- function num : 0_47
                    return (API.GetCustomAttr)(API, uid, "Rank")
                end,
            },
            DataList = {
                { "RankNum", 1, false },
                { "Name", 2, true },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
            },
            ID = 4,
            IsCross = false,
            MaxAmount = 9999,
            Name = "BATTLEFIELD",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 50,
            ShowName = "µá╝µûùµÄÆΦíî",
            SortKey1 = "ArenaPoint",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = false,
            Value = "AvatarFrameId",
        },
        {
            DataFunc = {
                FaceFrame = function(API, uid)
                    -- function num : 0_48
                    return (API.GetUserFrameId)(API, uid)
                end,
                FaceIcon = function(API, uid)
                    -- function num : 0_49
                    return (API.GetUserAvatar)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_50
                    return (API.GetUserName)(API, uid)
                end,
                TopLevel = function(API, uid)
                    -- function num : 0_51
                    return (API.GetUserTopLevel)(API, uid)
                end,
            },
            DataList = {
                { "TopLevel", 1, true },
                { "Name", 2, true },
                { "ZoneId", 1, false },
                { "PointId", 1, false },
                { "FaceIcon", 1, true },
                { "FaceFrame", 1, true },
                { "HeroId", 1, false },
            },
            ID = 5,
            IsCross = false,
            MaxAmount = 99999,
            Name = "USJ",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 10,
            ShowName = "µ¿íµïƒτ½₧Φ╡¢",
            SortKey1 = "UsjPoint",
            SortKey2 = "Level",
            SortType1 = false,
            SortType2 = false,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_52
                return (API.UsjUpdateCheck)(API, OldData, NewData)
            end,
            Value = "HeroId",
        },
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_53
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_54
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_55
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_56
                    return (API.GetUserName)(API, uid)
                end,
                TopLevel = function(API, uid)
                    -- function num : 0_57
                    return (API.GetUserTopLevel)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "TopLevel", 1, true },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
            },
            ID = 6,
            IsCross = false,
            MaxAmount = 9999,
            Name = "ACHIEVE",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 10,
            ShowName = "µêÉσ░▒µª\156",
            SortKey1 = "AchievePoint",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            Value = "AvatarFrameId",
        },
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_58
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_59
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_60
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_61
                    return (API.GetUserName)(API, uid)
                end,
                TopLevel = function(API, uid)
                    -- function num : 0_62
                    return (API.GetUserTopLevel)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "TopLevel", 1, true },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
            },
            ID = 7,
            IsCross = false,
            MaxAmount = 9999,
            Name = "CONTRI",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 50,
            ShowName = "Σ║ïσèíµë\128τ¡ëτ║º",
            SortKey1 = "FilesPoint",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            Value = "AvatarFrameId",
        },
        {
            DataFunc = {
                Name = function(API, uid)
                    -- function num : 0_63
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
            },
            ID = 8,
            IsCross = false,
            MaxAmount = 9999,
            Name = "SOFTBALL",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 50,
            ShowName = "σ₧ÆτÉâµÄÆΦíîµª\156",
            SortKey1 = "Range",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_64
                return (API.SoftUpdateCheck)(API, OldData, NewData)
            end,
            Value = "Name",
        },
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_65
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_66
                    return (API.GetUserAvatar)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_67
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "TotalTimes", 1, false },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
            },
            ID = 9,
            IsCross = false,
            MaxAmount = 9999,
            Name = "ACTWINDING",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 50,
            ShowName = "τ╝áτ╗òτÜäτ║┐Φ╖\175",
            SortKey1 = "Score",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_68
                return (API.ScoreUpdateCheck)(API, OldData, NewData)
            end,
            Value = "AvatarFrameId",
        },
        {
            DataFunc = {
                Name = function(API, uid)
                    -- function num : 0_69
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
            },
            ID = 10,
            IsCross = false,
            MaxAmount = 9999,
            Name = "QSHOT",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 50,
            ShowName = "Θ¥Æσ▒▒Φ«¡τ╗âµÄÆΦíîµª\156",
            SortKey1 = "Point",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_70
                return (API.QShotUpdateCheck)(API, OldData, NewData)
            end,
            Value = "Name",
        },
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_71
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_72
                    return (API.GetUserAvatar)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_73
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
                { "TotalJump", 1, false },
            },
            ID = 11,
            IsCross = false,
            MaxAmount = 9999,
            Name = "ACTJUMP",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 50,
            ShowName = "τêåΦ▒¬µîæµêÿ",
            SortKey1 = "Score",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_74
                return (API.ScoreUpdateCheck)(API, OldData, NewData)
            end,
            Value = "TotalJump",
        },
        {
            DataFunc = {
                FaceFrame = function(API, uid)
                    -- function num : 0_75
                    return (API.GetUserFrameId)(API, uid)
                end,
                FaceIcon = function(API, uid)
                    -- function num : 0_76
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_77
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_78
                    return (API.GetUserName)(API, uid)
                end,
                TopLevel = function(API, uid)
                    -- function num : 0_79
                    return (API.GetUserTopLevel)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "TopLevel", 1, true },
                { "FaceIcon", 1, true },
                { "FaceFrame", 1, true },
                { "ZanCount", 1, false },
                { "Message", 2, false },
            },
            ID = 12,
            IsCross = false,
            MaxAmount = 99999,
            Name = "PRESSURE",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 3,
            ShowName = "σÄïσè¢µîæµêÿµÄÆΦíîµª\156",
            SortKey1 = "PchallengeScore",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_80
                return (API.PressureUpdateCheck)(API, OldData, NewData)
            end,
            Value = "Message",
        },
        {
            DataFunc = {},
            DataList = {
                { "IsFull", 1, false },
                { "LeagueStatus", 1, false },
            },
            ID = 13,
            IsCross = false,
            MaxAmount = 99999,
            Name = "LEAGUE",
            PKey = "LeagueId",
            PageAmount = 10,
            ShowAmount = 50,
            ShowName = "Φüöτ¢ƒµÄÆΦíîµª\156",
            SortKey1 = "LeaguePoint",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            Value = "LeagueStatus",
        },
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_81
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_82
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_83
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_84
                    return (API.GetUserName)(API, uid)
                end,
                TopLevel = function(API, uid)
                    -- function num : 0_85
                    return (API.GetUserTopLevel)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "TopLevel", 1, true },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
                { "Fighting", 1, false },
            },
            ID = 14,
            IsCross = false,
            MaxAmount = 9999,
            Name = "OFFLINEPVP",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 10,
            ShowName = "Φ╢àΦâ╜σìÅσÉîµê\152",
            SortKey1 = "RankId",
            SortKey2 = "Time",
            SortType1 = true,
            SortType2 = true,
            Value = "Fighting",
        },
        {
            DataFunc = {
                Name = function(API, uid)
                    -- function num : 0_86
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
            },
            ID = 15,
            IsCross = false,
            MaxAmount = 9999,
            Name = "LANTERN",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 50,
            ShowName = "ΦèéµùÑσ╜⌐τü»µÄÆΦíîµª\156",
            SortKey1 = "Num",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_87
                return (API.LanternUpdateCheck)(API, OldData, NewData)
            end,
            Value = "Name",
        },
        {
            DataFunc = {
                Name = function(API, uid)
                    -- function num : 0_88
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
            },
            ID = 16,
            IsCross = false,
            MaxAmount = 9999,
            Name = "PERIODICTASK",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 2000,
            ShowName = "σæ¿µ£ƒΣ╗╗σèí",
            SortKey1 = "Score",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_89
                return (API.ScoreUpdateCheck)(API, OldData, NewData)
            end,
            Value = "Name",
        },
        {
            DataFunc = {
                FaceFrame = function(API, uid)
                    -- function num : 0_90
                    return (API.GetUserFrameId)(API, uid)
                end,
                FaceIcon = function(API, uid)
                    -- function num : 0_91
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_92
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_93
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "FaceIcon", 1, true },
                { "FaceFrame", 1, true },
            },
            ID = 17,
            IsCross = false,
            MaxAmount = 99999,
            Name = "BOSS_CHALLENGE",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 5,
            ShowName = "BOSSµîæµêÿµÄÆΦíîµª\156",
            SortKey1 = "TotalDamage",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_94
                return (API.BossChallengeUpdateCheck)(API, OldData, NewData)
            end,
            Value = "FaceFrame",
        },
        {
            DataFunc = {
                FaceFrame = function(API, uid)
                    -- function num : 0_95
                    return (API.GetUserFrameId)(API, uid)
                end,
                FaceIcon = function(API, uid)
                    -- function num : 0_96
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_97
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_98
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "FaceIcon", 1, true },
                { "FaceFrame", 1, true },
            },
            ID = 18,
            IsCross = false,
            MaxAmount = 9999,
            Name = "BOSS_CHALLENGE_TODAY",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 100,
            ShowName = "BOSSµîæµêÿΣ╗èµùÑµÄÆΦíîµª\156",
            SortKey1 = "TotalDamage",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            UpdateFunc = function(API, OldData, NewData)
                -- function num : 0_99
                return (API.BossChallengeUpdateCheck)(API, OldData, NewData)
            end,
            Value = "FaceFrame",
        },
        {
            DataFunc = {
                GuildFrame = function(API, uid)
                    -- function num : 0_100
                    return (API.GetGuildFrameIcon)(API, uid)
                end,
                GuildIcon = function(API, uid)
                    -- function num : 0_101
                    return (API.GetGuildIcon)(API, uid)
                end,
                GuildName = function(API, uid)
                    -- function num : 0_102
                    return (API.GetGuildName)(API, uid)
                end,
                LeaderName = function(API, uid)
                    -- function num : 0_103
                    return (API.GetGuildLeaderName)(API, uid)
                end,
            },
            DataList = {
                { "GuildName", 2, true },
                { "LeaderName", 2, true },
                { "GuildIcon", 1, true },
                { "GuildFrame", 1, true },
            },
            ID = 19,
            IsCross = false,
            MaxAmount = 9999,
            Name = "LEAGUE_PVP",
            PKey = "LeagueId",
            PageAmount = 10,
            ShowAmount = 100,
            ShowName = "Φüöτ¢ƒpvpµÄÆΦíîµª\156",
            SortKey1 = "PvpScore",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            Value = "GuildFrame",
        },
        {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_104
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_105
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_106
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_107
                    return (API.GetUserName)(API, uid)
                end,
                TopLevel = function(API, uid)
                    -- function num : 0_108
                    return (API.GetUserTopLevel)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Fighting", 1, false },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
                { "Level", 1, true },
                { "RankId", 1, false },
                { "TopLevel", 1, true },
            },
            ID = 20,
            IsCross = false,
            MaxAmount = 9999,
            Name = "CROSS_PVP",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 100,
            ShowName = "µêÿσî║τ½₧µèÇσ£║µÄÆΦíîµª£",
            SortKey1 = "Point",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            Value = "TopLevel",
        },
        [101] = {
            DataFunc = {
                AvatarFrameId = function(API, uid)
                    -- function num : 0_109
                    return (API.GetUserFrameId)(API, uid)
                end,
                AvatarId = function(API, uid)
                    -- function num : 0_110
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_111
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_112
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "AvatarId", 1, true },
                { "AvatarFrameId", 1, true },
            },
            ID = 101,
            IsCross = false,
            MaxAmount = 99999,
            Name = "TOTAL_SCORE",
            PKey = "Uid",
            PageAmount = 10,
            ShowAmount = 100,
            ShowName = "µÇ╗µêÿσè\155",
            SortKey1 = "TotalScore",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            Value = "AvatarFrameId",
        },
        [102] = {
            DataFunc = {
                FaceFrame = function(API, uid)
                    -- function num : 0_113
                    return (API.GetUserFrameId)(API, uid)
                end,
                FaceIcon = function(API, uid)
                    -- function num : 0_114
                    return (API.GetUserAvatar)(API, uid)
                end,
                Level = function(API, uid)
                    -- function num : 0_115
                    return (API.GetUserLeve)(API, uid)
                end,
                Name = function(API, uid)
                    -- function num : 0_116
                    return (API.GetUserName)(API, uid)
                end,
            },
            DataList = {
                { "Name", 2, true },
                { "Level", 1, true },
                { "FaceIcon", 1, true },
                { "FaceFrame", 1, true },
                { "HeroId", 1, false },
            },
            ID = 102,
            IsCross = false,
            MaxAmount = 9999,
            Name = "HERO_SCORE",
            PKey = "Uid",
            PageAmount = 10,
            RankLimit = 30,
            SettleTime = { Hour = 21, Week = 7 },
            ShowAmount = 100,
            ShowName = "Φï▒Θ¢äµêÿσè¢µÄÆΦíîµª\156",
            SortKey1 = "HeroScore",
            SortKey2 = "Time",
            SortType1 = false,
            SortType2 = true,
            Value = "HeroId",
        },
    },
    RankID2Name = {
        "LEVEL",
        "SECRET_AREA_TIME",
        "SECRET_AREA_DPS",
        "BATTLEFIELD",
        "USJ",
        "ACHIEVE",
        "CONTRI",
        "SOFTBALL",
        "ACTWINDING",
        "QSHOT",
        "ACTJUMP",
        "PRESSURE",
        "LEAGUE",
        "OFFLINEPVP",
        "LANTERN",
        "PERIODICTASK",
        "BOSS_CHALLENGE",
        "BOSS_CHALLENGE_TODAY",
        "LEAGUE_PVP",
        "CROSS_PVP",
        [101] = "TOTAL_SCORE",
        [102] = "HERO_SCORE",
    },
    RankName2ID = {
        ACHIEVE = 6,
        ACTJUMP = 11,
        ACTWINDING = 9,
        BATTLEFIELD = 4,
        BOSS_CHALLENGE = 17,
        BOSS_CHALLENGE_TODAY = 18,
        CONTRI = 7,
        CROSS_PVP = 20,
        HERO_SCORE = 102,
        LANTERN = 15,
        LEAGUE = 13,
        LEAGUE_PVP = 19,
        LEVEL = 1,
        OFFLINEPVP = 14,
        PERIODICTASK = 16,
        PRESSURE = 12,
        QSHOT = 10,
        SECRET_AREA_DPS = 3,
        SECRET_AREA_TIME = 2,
        SOFTBALL = 8,
        TOTAL_SCORE = 101,
        USJ = 5,
    },
    URL = {
        {
            ACHIEVE = {
                Params = { "ranklistindex", "roleid", "istest" },
                ToplistType = "ACHIEVE",
                Type = 1,
            },
            BATTLEFIELD = {
                Params = { "ranklistindex", "roleid", "istest", "SeasonMark" },
                ToplistType = "BATTLEFIELD",
                Type = 1,
            },
            CONTRI = {
                Params = { "ranklistindex", "roleid", "istest" },
                ToplistType = "CONTRI",
                Type = 1,
            },
            LEVEL = {
                Params = { "ranklistindex", "roleid", "istest" },
                ToplistType = "LEVEL",
                Type = 1,
            },
            SECRET_AREA_DPS = {
                Params = { "ranklistindex", "roleid", "istest", "SeasonMark" },
                ToplistType = "SECRET_AREA_DPS",
                Type = 1,
            },
            SECRET_AREA_TIME = {
                IsNeedTeam = true,
                Params = { "ranklistindex", "istest", "SeasonMark", "roleid", "vRoleID2", "vRoleID3" },
                ToplistType = "SECRET_AREA_TIME",
                Type = 1,
            },
        },
        {
            ACHIEVE = {
                Params = { "ranklistindex", "istest", "start", "end" },
                ToplistType = "ACHIEVE",
                Type = 2,
            },
            BATTLEFIELD = {
                Params = { "istest", "SeasonMark", "start", "end", "ranklistindex" },
                ToplistType = "BATTLEFIELD",
                Type = 2,
            },
            CONTRI = {
                Params = { "ranklistindex", "istest", "start", "end" },
                ToplistType = "CONTRI",
                Type = 2,
            },
            LEVEL = {
                Params = { "istest", "start", "end", "ranklistindex" },
                ToplistType = "LEVEL",
                Type = 2,
            },
            SECRET_AREA_DPS = {
                Params = { "istest", "SeasonMark", "start", "end", "ranklistindex" },
                ToplistType = "SECRET_AREA_DPS",
                Type = 2,
            },
            SECRET_AREA_TIME = {
                Params = { "istest", "start", "end", "ranklistindex", "SeasonMark" },
                ToplistType = "SECRET_AREA_TIME",
                Type = 2,
            },
        },
        {
            SECRET_AREA_TIME = {
                Params = { "ranklistindex", "istest", "SeasonMark", "roleid" },
                ToplistType = "SECRET_AREA_TIME",
                Type = 3,
            },
        },
    },
    ["τòîΘ¥óσ╕âσ▒Ç"] = {
        {
            BillboardItemClassName = "clsBillboardLevelItem",
            ChampionViewClassName = "clsChampionLevelView",
            Index = 1,
            MenuName = "Σ║ïσèíµë\128τ¡ëτ║º",
            Name = "LEVEL",
        },
        {
            BillboardItemClassName = "clsBillboardSecretTeamItem",
            BillboardTipsClassName = "clsBillboardSecretTeamTips",
            ChampionItemClassName = "clsChampionSecretTeamItem",
            ChampionViewClassName = "clsChampionSecretView",
            Index = 2,
            MenuName = "Σ║ïσèíµë\128ΦÇâµá╕",
            Name = "SECRET_AREA_TIME",
            SubName = "µ£\128Σ╜│ΘÿƒΣ╝\141",
        },
        {
            BillboardItemClassName = "clsBillboardSecretHeroItem",
            BillboardTipsClassName = "clsBillboardSecretHeroTips",
            ChampionItemClassName = "clsChampionSecretHeroItem",
            ChampionViewClassName = "clsChampionSecretView",
            Index = 3,
            MenuName = "Σ║ïσèíµë\128ΦÇâµá╕",
            Name = "SECRET_AREA_DPS",
            SubName = "µ£\128Σ╜│Σ╕¬Σ║\186",
        },
        {
            BillboardItemClassName = "clsBillboardAchieveItem",
            ChampionViewClassName = "clsChampionAchieveView",
            Index = 4,
            MenuName = "µêÉσ░▒",
            Name = "ACHIEVE",
        },
        {
            BillboardItemClassName = "clsBillboardbattlefieldScoreItem",
            ChampionViewClassName = "clsChampionBattlefiledScoreView",
            Index = 5,
            MenuName = "τ½₧µèÇσ£\186",
            Name = "BATTLEFIELD",
        },
        {
            BillboardItemClassName = "clsBillboardContriItem",
            ChampionViewClassName = "clsChampionContriView",
            Index = 6,
            MenuName = "µíúµíêΦ┤íτî«",
            Name = "CONTRI",
        },
    },
}

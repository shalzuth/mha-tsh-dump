-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    API = {
        function(API, Obj, ...)
            -- function num : 0_0
            local Args = { ... }
            return true
        end,
        function(API, Obj, ...)
            -- function num : 0_1
            local Args = { ... }
            return true
        end,
        function(API, Obj, ...)
            -- function num : 0_2
            local Args = { ... }
            return true
        end,
        function(API, Obj, ...)
            -- function num : 0_3
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckOpenPopEquipMateria(Args[1], Args[2], Args[3], Args[4])
        end,
        function(API, Obj, ...)
            -- function num : 0_4
            local Args = { ... };
            (customGift.CustomGiftUtil):EquipGiftNotTriggerAPI()
        end,
        function(API, Obj, ...)
            -- function num : 0_5
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckPopLevelUpAPI(Args[1], Args[2], Args[3])
        end,
        function(API, Obj, ...)
            -- function num : 0_6
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckTeamSecretFirstPassAPI(Args[1], Args[2], Args[3], Args[4])
        end,
        function(API, Obj, ...)
            -- function num : 0_7
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckTaskFinishAPI(Args[1], Args[2])
        end,
        function(API, Obj, ...)
            -- function num : 0_8
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckCampaignFirstPassAPI(Args[1], Args[2])
        end,
        function(API, Obj, ...)
            -- function num : 0_9
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckUSJFirstPassAPI(Args[1], Args[2], Args[3])
        end,
        function(API, Obj, ...)
            -- function num : 0_10
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckArenaQualifyingAPI(Args[1], Args[2])
        end,
        function(API, Obj, ...)
            -- function num : 0_11
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckAreaEventFirstPassAPI(Args[1], Args[2])
        end,
        function(API, Obj, ...)
            -- function num : 0_12
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckNightFightFirstPassAPI(Args[1], Args[2])
        end,
        function(API, Obj, ...)
            -- function num : 0_13
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckRecruitTypeTimesAPI(Args[1], Args[2], Args[3])
        end,
        function(API, Obj, ...)
            -- function num : 0_14
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckResonanceLevelAPI(Args[1], Args[2], Args[3])
        end,
        function(API, Obj, ...)
            -- function num : 0_15
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckResonanceCountAPI(Args[1], Args[2], Args[3])
        end,
        function(API, Obj, ...)
            -- function num : 0_16
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckNewHeroAPI(Args[1], Args[2])
        end,
        function(API, Obj, ...)
            -- function num : 0_17
            local Args = { ... };
            (customGift.CustomGiftUtil):CheckHeroScoreFightFirstPassAPI(Args[1], Args[2], Args[3])
        end,
    },
    BtnTypeCfg = {
        {
            BtnRes = "Σ╕╗τòîΘ¥ó_ΘÖÉµù╢τñ╝σîà",
            IsLoginPush = true,
            IsShowTime = true,
            TimeTxtPos = { 0, 40 },
            TxtRes = "Σ╕╗τòîΘ¥ó_ΘÖÉµù╢τñ╝σîàµûçσ¡ù",
            TxtResPos = { 0, 2 },
            TxtResScale = 0.7,
            TypeId = 1,
            UIPath = "customGift/customGiftViewUI",
        },
        {
            BtnRes = "Σ╕╗τòîΘ¥ó_Φï▒Θ¢äτ¢┤Φ┤¡",
            IsLoginPush = true,
            IsShowTime = true,
            TimeTxtPos = { 0, 41 },
            TxtRes = "Σ╕╗τòîΘ¥ó_Φï▒Θ¢äτ¢┤Φ┤¡µûçσ¡ù",
            TxtResPos = { 0, 0 },
            TxtResScale = 0.7,
            TypeId = 2,
            UIPath = "customGift/customGiftView2UI",
        },
    },
    Cfg = {
        [1001] = {
            API = function(API, Obj)
                -- function num : 0_18
                (API[14])(API, Obj, 1001, 10, "Hero")
            end,
            APITypeId = 10,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! You reached Recruit Expert!#rWe've prepared a #s36#cffde00Value Pack#n to #rhelp you complete stages faster!",
            GoodsId_EUR = 21501,
            GoodsId_USA = 11501,
            Id = 1001,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà1699µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà1499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_5σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 6,
            TypeId = 1,
        },
        [1002] = {
            API = function(API, Obj)
                -- function num : 0_19
                (API[14])(API, Obj, 1002, 30, "Hero")
            end,
            APITypeId = 10,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! You reached the Recruit Master!#rWe've prepared a #s36#cffde00Deluxe Pack#n to #rhelp you complete stages faster!",
            GoodsId_EUR = 21502,
            GoodsId_USA = 11502,
            Id = 1002,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà1699µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà1499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_4σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 6,
            TypeId = 2,
        },
        [2001] = {
            API = function(API, Obj)
                -- function num : 0_20
                (API[11])(API, Obj, 2001, 6)
            end,
            APITypeId = 7,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "You've reached the Awakened tier in the Super Co-op Battle! #r We've prepared a #s36#cffde00 Charge Pack #n for you. #r This reward will help you climb the rankings more quickly!",
            GoodsId_EUR = 21503,
            GoodsId_USA = 11503,
            Id = 2001,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà2799µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà2499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_3σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 12,
            TypeId = 3,
        },
        [3001] = {
            API = function(API, Obj)
                -- function num : 0_21
                (API[13])(API, Obj, 3001, 300001)
            end,
            APITypeId = 9,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! You completed Nightwar - Chemical Crisis! #rWe've prepared a #s36#cffde00Chip Pack#n to #rhelp you boost your power faster!",
            GoodsId_EUR = 21504,
            GoodsId_USA = 11504,
            Id = 3001,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà1099µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà999τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_4σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 6,
            TypeId = 4,
        },
        [3002] = {
            API = function(API, Obj)
                -- function num : 0_22
                (API[13])(API, Obj, 3002, 300003)
            end,
            APITypeId = 9,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! You completed Nightwar - Before the Storm! #rWe've prepared a #s36#cffde00Chip Pack#n to #rhelp you boost your power faster!",
            GoodsId_EUR = 21505,
            GoodsId_USA = 11505,
            Id = 3002,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà1699µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà1499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_4σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 6,
            TypeId = 5,
        },
        [3003] = {
            API = function(API, Obj)
                -- function num : 0_23
                (API[13])(API, Obj, 3003, 300004)
            end,
            APITypeId = 9,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! You completed Nightwar - Rainy Night! #rWe've prepared a #s36#cffde00Chip Pack#n to #rhelp you boost your power faster!",
            GoodsId_EUR = 21506,
            GoodsId_USA = 11506,
            Id = 3003,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà2799µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà2499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_5σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 12,
            TypeId = 6,
        },
        [4001] = {
            API = function(API, Obj)
                -- function num : 0_24
                (API[6])(API, Obj, 4001, 20, 20)
            end,
            APITypeId = 2,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! Your Agency reached level 20!#rWe've prepared an #s36Deluxe Pack#n to help you level up faster!",
            GoodsId_EUR = 21507,
            GoodsId_USA = 11507,
            Id = 4001,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà1099µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà999τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_3σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 6,
            TypeId = 7,
        },
        [4002] = {
            API = function(API, Obj)
                -- function num : 0_25
                (API[6])(API, Obj, 4002, 30, 30)
            end,
            APITypeId = 2,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! Your Agency reached level 30!#rWe've prepared an #s36Deluxe Pack#n to help you level up faster!",
            GoodsId_EUR = 21508,
            GoodsId_USA = 11508,
            Id = 4002,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà2199µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà1999τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_3σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 12,
            TypeId = 8,
        },
        [4003] = {
            API = function(API, Obj)
                -- function num : 0_26
                (API[6])(API, Obj, 4003, 40, 40)
            end,
            APITypeId = 2,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! Your Agency reached level 40!#rWe've prepared an #s36Deluxe Pack#n to help you level up faster!",
            GoodsId_EUR = 21509,
            GoodsId_USA = 11509,
            Id = 4003,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà2799µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà2499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_3σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 12,
            TypeId = 9,
        },
        [4004] = {
            API = function(API, Obj)
                -- function num : 0_27
                (API[6])(API, Obj, 4004, 50, 50)
            end,
            APITypeId = 2,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! Your Agency reached level 50!#rWe've prepared an #s36Deluxe Pack#n to help you level up faster!",
            GoodsId_EUR = 21510,
            GoodsId_USA = 11510,
            Id = 4004,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà5499µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà4999τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_4σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 18,
            TypeId = 10,
        },
        [4005] = {
            API = function(API, Obj)
                -- function num : 0_28
                (API[6])(API, Obj, 4005, 60, 60)
            end,
            APITypeId = 2,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "Congratulation! Your Agency reached level 60!#rWe've prepared an #s36Deluxe Pack#n to help you level up faster!",
            GoodsId_EUR = 21511,
            GoodsId_USA = 11511,
            Id = 4005,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà10999µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà9999τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_4σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 24,
            TypeId = 11,
        },
        [5001] = {
            API = function(API, Obj)
                -- function num : 0_29
                (API[12])(API, Obj, 5001, 280506)
            end,
            APITypeId = 8,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "You completed Peacekeeping Chapter 5!#rHere's a #s36#cffde00Supply Box#n to #rhelp you complete stages faster!",
            GoodsId_EUR = 21512,
            GoodsId_USA = 11512,
            Id = 5001,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà2799µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà2499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_4σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 12,
            TypeId = 12,
        },
        [5002] = {
            API = function(API, Obj)
                -- function num : 0_30
                (API[12])(API, Obj, 5002, 280606)
            end,
            APITypeId = 8,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "You completed Peacekeeping Chapter 6!#rHere's a #s36#cffde00Supply Box#n to #rhelp you complete stages faster!",
            GoodsId_EUR = 21513,
            GoodsId_USA = 11513,
            Id = 5002,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà2799µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà2499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_4σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 12,
            TypeId = 13,
        },
        [5003] = {
            API = function(API, Obj)
                -- function num : 0_31
                (API[12])(API, Obj, 5003, 280706)
            end,
            APITypeId = 8,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "You completed Peacekeeping Chapter 7!#rHere's a #s36#cffde00Supply Box#n to #rhelp you complete stages faster!",
            GoodsId_EUR = 21514,
            GoodsId_USA = 11514,
            Id = 5003,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà2799µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà2499τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_4σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 12,
            TypeId = 14,
        },
        [5004] = {
            API = function(API, Obj)
                -- function num : 0_32
                (API[12])(API, Obj, 5004, 280806)
            end,
            APITypeId = 8,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "You completed Peacekeeping Chapter 8!#rHere's a #s36#cffde00Supply Box#n to #rhelp you complete stages faster!",
            GoodsId_EUR = 21515,
            GoodsId_USA = 11515,
            Id = 5004,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà5499µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà4999τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_5σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 18,
            TypeId = 15,
        },
        [5005] = {
            API = function(API, Obj)
                -- function num : 0_33
                (API[12])(API, Obj, 5005, 280906)
            end,
            APITypeId = 8,
            BtnPriceType_EUR = "Γé\172",
            BtnPriceType_USA = "$",
            BuyCount = 1,
            Desc = "You completed Peacekeeping Chapter 9!#rHere's a #s36#cffde00Supply Box#n to #rhelp you complete stages faster!",
            GoodsId_EUR = 21516,
            GoodsId_USA = 11516,
            Id = 5005,
            Level = 1,
            PriceImageName_EUR = "σ╝╣τ¬ùτñ╝σîà10999µ¼ºσêå",
            PriceImageName_USA = "σ╝╣τ¬ùτñ╝σîà9999τ╛Äσêå",
            Priority = 1,
            RateImageName = "σ╝╣σç║τñ╝σîà_3σÇ\141",
            Recharge = { 0, 99999900 },
            TriggerCount = 1,
            TypeCountDown = 24,
            TypeId = 16,
        },
    },
    TypeCfg = {
        { TypeCD = 99999, TypeCount = 1, TypeId = 1 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 2 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 3 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 4 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 5 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 6 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 7 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 8 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 9 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 10 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 11 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 12 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 13 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 14 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 15 },
        { TypeCD = 99999, TypeCount = 1, TypeId = 16 },
    },
}

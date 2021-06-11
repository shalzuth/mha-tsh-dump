-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    API = {
        function(API, ActId, ...)
            -- function num : 0_0
            local Args = { ... }
            local view = (fbactivity.clsFbActivityMainView):New()
            view:OnCreate(ActId)
            return view
        end,
        function(API, ActId, ...)
            -- function num : 0_1
            local Args = { ... }
            local chapterInfo = (fbactivity.FbActivityCtl):GetChapterInfo()
            local view = (fbactivity.clsFbActivityFightChooseView):New()
            view:OnCreate(ActId)
            view:OnShow((chapterInfo[1]).ChapterId)
            return view
        end,
        function(API, ActId, ...)
            -- function num : 0_2
            local Args = { ... }
            local view = (fbactivity.clsFbActivityShopView):New()
            view:OnCreate(ActId)
            view:OnShow(2)
            return view
        end,
        function(API, ActId, ...)
            -- function num : 0_3
            local Args = { ... }
            local view = (fbactivity.clsFbActivityAchieveView):New()
            view:OnCreate(ActId)
            view:OnShow(3)
            return view
        end,
        function(API, ActId, ...)
            -- function num : 0_4
            local Args = { ... }
            local View = (activity.clsActPlayDescPanel):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_5
            local Args = { ... }
            local View = (activity.clsActPlayShopPanel):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_6
            local Args = { ... }
            local View = (activity.clsActPlayRankPanel):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_7
            local Args = { ... }
            local View = (activity.clsWindingMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_8
            local Args = { ... }
            local View = (flipCard.clsFlipCardMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_9
            local Args = { ... }
            local View = (activity.clsTraineeMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_10
            local Args = { ... }
            local View = (activity.clsPuzzlesMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_11
            local Args = { ... }
            local View = (activity.clsJumpDescView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_12
            local Args = { ... }
            local View = (activity.clsJumpRewardView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_13
            local Args = { ... }
            local View = (activity.clsClonedTestMainUI):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_14
            local Args = { ... }
            local View = (activity.clschangeGiftMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_15
            local Args = { ... }
            local View = (activity.clsShareInviteMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_16
            local Args = { ... }
            local View = (activity.clsHeroClassroomMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_17
            local Args = { ... }
            local View = (activity.clsShotMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_18
            local Args = { ... }
            local View = (activity.clskitchenClassMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_19
            local Args = { ... }
            local View = (activity.clsFestivalShareMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_20
            local Args = { ... }
            local View = (activity.clsTeamActMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_21
            local Args = { ... }
            local View = (activity.clsLanternActMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_22
            local Args = { ... }
            local View = (activity.clsRescueActMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_23
            local Args = { ... }
            local View = (recruitAct.clsRecruitActMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_24
            local Args = { ... }
            local View = (activity.clsPeriodicTaskMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_25
            local Args = { ... }
            local View = (activity.clsChristmasBoxMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_26
            local Args = { ... }
            local HaveData = (objdata.ActivityControl):GetActivityDataByActType(27, "SubType", 3)
            if HaveData then
                local View = (activity.clsYuandanActivityMainView):New()
                View:OnCreate(ActId)
                return View
            end
        end,
        function(API, ActId, ...)
            -- function num : 0_27
            local Args = { ... }
            local View = (activity.clsYuandanTargetMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_28
            local Args = { ... }
            local View = (activity.clsChristmasGiftTaskMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_29
            local Args = { ... }
            local View = (activity.clsChristmasTeamMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_30
            local Args = { ... }
            local View = (waChuiShop.clsWaChuiShopMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_31
            local Args = { ... }
            local View = (dailyRecharge.clsDailyRechargePanel):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_32
            local Args = { ... }
            local View = (magicShop.clsMagicShopPanel):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_33
            local Args = { ... }
            local View = (totalScore.clsTotalScoreRankActMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_34
            local Args = { ... }
            local View = (activity.clsTimeLimitPassMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_35
            local Args = { ... }
            local View = (activity.clsActClassMassMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_36
            local Args = { ... }
            local View = (scoreExchange.clsScoreExchangeActMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_37
            local Args = { ... }
            local View = (seven.clsSevenActivityView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_38
            local Args = { ... }
            local View = (recruitUpAct.clsRecruitUpActMainView):New()
            View:OnCreate(ActId)
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_39
            local Args = { ... }
            local View = (activity.clsActConsumeItemPanel):New()
            View:OnCreate(ActId, {
                { Name = "Gold" },
                { Name = "Strength" },
            })
            return View
        end,
        function(API, ActId, ...)
            -- function num : 0_40
            local Args = { ... }
            local View = (activity.clsActConsumeItemPanel):New()
            View:OnCreate(ActId, {
                { Name = "Gold" },
            })
            return View
        end,
    },
    ActiveCfg = {
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Intro]:#r#w10#c5c5c5c1. Tap the Go button to travel to the designated area. Pay attention to the quest area on the map and find Christmas gifts to collect rewards.#r#w10#c5c5c5c2. The quest area changes every day. Don't forget to take in the game's beautiful scenery while you're completing quests!#r#w10#c5c5c5c3. Reward can be claimed once a day.",
            ActiveName = "Christmas Gift",
            EngName = "CHRISTMAS_GIFT",
            Index = 23,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_41
                local Args = { ... }
                return (API[29])(API, ActId)
            end,
            RankSort = 1,
            Sort = 54,
            SubTabReddot = {
                { 129 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Intro]:#r#w10#c5c5c5c1. Players must team up for the Snowman Battle. At least 2 or more people are required to enter.#r#w10#c5c5c5c2. The more snowmen you defeat in the stage, the more rewards you can get.#r#w10#c5c5c5c3. Defeat snowmen to get Gingerbread Men. There is a limit to the number of Gingerbread Men you can get on each stage. If you exceed this limit, Gingerbread Men will be converted to other rewards.#r#w10#c5c5c5c4. Players can complete the Snowman Battle two times a day.",
            ActiveName = "Snowman Battle",
            EngName = "CHRISTMAS_STAGE",
            Index = 24,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_42
                local Args = { ... }
                return (API[30])(API, ActId)
            end,
            RankSort = 2,
            Sort = 55,
            Special = "SubType",
            SpecialNum = 1,
            SubTabReddot = {
                { 131 },
            },
        },
        {
            ActiveName = "Sign in",
            Index = 21,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_43
                local Args = { ... }
                return (API[27])(API, ActId)
            end,
            RankSort = 3,
            Sort = 27,
            Special = "SubType",
            SpecialNum = 3,
            SubTabReddot = {
                { 127 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Intro]:#r#w10#c5c5c5c1. Every Ema is linked to a quest. When you complete a question, you can claim an Ema-related reward.#r#w10#c5c5c5c2. When all the Ema quests in a row or column have been completed, you can claim the corresponding prize from the blessing reward interface.",
            ActiveName = "New Year Ema",
            EngName = "NewYearTarget",
            Index = 22,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_44
                local Args = { ... }
                return (API[28])(API, ActId)
            end,
            RankSort = 4,
            Sort = 4,
            Special = "SubType",
            SpecialNum = 1,
            SubTabReddot = {
                { 128 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5c1. Agents consume Gingerbread Men to draw prizes in Gingerbread House.#r#w10#c5c5c5c2. Prizes are different for each round and there are 4 rounds in total.#r#w10#c5c5c5c3. When the current prize pool becomes empty, the next one will be available until it comes to the last one that loops and refreshes after it is emptied.#r#w10#c5c5c5c4. There are 200 prizes each round and the prize drawn will be deleted from the prize pool.#r#s20[How to get Gingerbread Man]:#r#w10#c5c5c5c1. Christmas Gift Event.#r#w10#c5c5c5c2. Snowman Battle.#r#w10#c5c5c5c3. New Year Celebration.#r#w10#c5c5c5c4. New Year Ema Event.",
            ActiveName = "Gingerbread House",
            EngName = "CHRISTMAS_BOX",
            Index = 20,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_45
                local Args = { ... }
                return (API[26])(API, ActId)
            end,
            RankSort = 5,
            Sort = 52,
            Special = "SubType",
            SpecialNum = 1,
            SubTabReddot = {
                { 126 },
            },
        },
        {
            ActiveName = "Froppy Holiday",
            EngName = "SHOP",
            Index = 25,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_46
                local Args = { ... }
                return (API[31])(API, ActId)
            end,
            RankSort = 6,
            Sort = 56,
            SubTabReddot = {
                { 132 },
            },
        },
        {
            ActiveDesc = "Purchase Rewards Event Rules#r#r#c5c5c5c1. During the event, meet the Purchase Rewards criteria to claim that day's reward. (Please note that there are TWO reward tracks.) #r#c5c5c5c2. Purchase Hero Coins or Bundles to unlock the Purchase Rewards.#r#c5c5c5c3. The purchase amounts are not cumulative. You CANNOT spend a large amount on the first day in an attempt to unlock all the rewards at once. Please treat each day completely separately.#r#c5c5c5c4. You must claim the previous Purchase Reward to unlock and claim the next Purchase Reward on the following day at 5:00AM.#r#c5c5c5c5. During the event, you can claim unlocked rewards that you decided to claim later, but you cannot unlock or claim the next dayΓÇÖs rewards in advance.#r#r#n When the Purchase Rewards Event Ends#r#r#n#c5c5c5c1. Unclaimed rewards can no longer be claimed.#r#c5c5c5c2. However, after the event fully ends and disappears, those unclaimed rewards will be sent by mail.#r",
            ActiveName = "Purchase Rewards",
            Index = 26,
            ItemInfo = { "BindGold" },
            OpenMain = function(API, ActId, ...)
                -- function num : 0_47
                local Args = { ... }
                return (API[32])(API, ActId)
            end,
            RankSort = 7,
            Sort = 57,
            Special = "SubType",
            SpecialNum = 1,
            SubTabReddot = {
                { 133 },
            },
        },
        {
            ActiveDesc = "#s24#h48Lanterns of the Heavens Top-up Event Rules#r#r #s20#w10#c5c5c5c1. During the event, meet certain top-up conditions to claim that day's rewards. There are two grades of rewards. Top-up 170 USD to claim both rewards.#r #w10#c5c5c5c2. Purchase Hero Coins and buy items to trigger top-up conditions.#r #w10#c5c5c5c3. Claim a top-up reward and then you will be able to claim the next top-up reward on the following day at 5:00 - Claim Restriction.#r #w10#c5c5c5c4. During the event, you can reclaim rewards that you haven't received, but you cannot claim future rewards in advance.#r#r#n #s24#h48Lanterns of the Heavens Top-up Rewards Event End Time#r#r#n #w10#s20#c5c5c5c1. Past events are closed and their rewards can no longer be claimed.#r #w10#s20#c5c5c5c2. After the claim event ends, unclaimed rewards will be sent by mail.#r",
            ActiveName = "Lanterns of the Heavens",
            Index = 28,
            ItemInfo = { "BindGold" },
            OpenMain = function(API, ActId, ...)
                -- function num : 0_48
                local Args = { ... }
                return (API[32])(API, ActId)
            end,
            RankSort = 7,
            Sort = 57,
            Special = "SubType",
            SpecialNum = 3,
            SubTabReddot = {
                { 133 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Intro]:#r#w10#c5c5c5cThere are 15 puzzle pieces in the event interface corresponding to different quests (event periods won't change).#r#w10After completing a quest, you will receive the corresponding puzzle piece. Once you've received all puzzle pieces, you can put the puzzle together and receive lots of #r#w10#h40rewards.#n#r[Event Rewards]:#r#w10#c5c5c5cEach quest has a corresponding reward. Light a certain number of puzzle pieces to get an Achievement Reward. You will also get additional rewards upon completing the puzzle.",
            ActiveName = "Hero Memorial Album",
            EngName = "MEMORYS",
            Index = 1,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_49
                local Args = { ... }
                return (API[11])(API, ActId)
            end,
            RankSort = 11,
            Sort = 38,
            SubTabReddot = {
                { 61 },
            },
        },
        {
            ActiveName = "Development Workshop",
            EngName = " WORK SHOP",
            Index = 2,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_50
                local Args = { ... }
                return (API[8])(API, ActId)
            end,
            RankId = 9,
            RankSort = 12,
            Sort = 34,
            SubTabReddot = {
                { 34, 37 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5c#h40Tap on the cards to flip them over and find ones with the same symbol to earm rewards.#n#r[Participation Attempts]:#r#w10#c5c5c5c#h40Log in every day and participate in different game modes to get participation attempts#n#r[Obtain Rewards]:#r#w10#c5c5c5c#h40 Match cards to obtain phase rewards. A generous reward can be obtained after passing the final stage.#n#rOthers:#r#w10#c5c5c5cWhen all the symbols are matched in each stage, you must claim all the stage rewards below before you can go to the new stage.",
            ActiveName = "Memory Coaching",
            EngName = "MEMORY TEST",
            Index = 3,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_51
                local Args = { ... }
                return (API[9])(API, ActId)
            end,
            RankSort = 13,
            Sort = 35,
            SubTabReddot = {
                { 35 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5cPlayers can participate in trial training in the agency every day. There are many kinds of trial quests, and a certain value of #r#w10#h40 Trial Points will be obtained by completing each one.#n#r[Obtain Rewards]:#r#w10#c5c5c5cThere are corresponding rewards for trial quest tasks. Daily rewards can be obtained when Trial Points reaches the requirement on that day. There are also#r#w10 generous accumulation rewards.",
            ActiveName = "Trainee Bakugo",
            EngName = "TRAINEE",
            Index = 4,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_52
                local Args = { ... }
                return (API[10])(API, ActId)
            end,
            RankSort = 14,
            Sort = 36,
            SubTabReddot = {
                { 60 },
            },
        },
        {
            ActiveName = "Bakugo's Challenge",
            EngName = "JUMP",
            Index = 5,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_53
                local Args = { ... }
                return (API[12])(API, ActId)
            end,
            RankId = 11,
            RankSort = 15,
            Sort = 37,
            SubTabReddot = {
                { 38, 39 },
            },
        },
        {
            ActiveName = "Combat Training",
            EngName = "TRAINING",
            Index = 6,
            ItemInfo = { "EventCoin3", "Strength" },
            OpenTab1 = function(API, ActId, ...)
                -- function num : 0_54
                local Args = { ... }
                return (API[1])(API, ActId)
            end,
            OpenTab2 = function(API, ActId, ...)
                -- function num : 0_55
                local Args = { ... }
                return (API[3])(API, ActId)
            end,
            OpenTab3 = function(API, ActId, ...)
                -- function num : 0_56
                local Args = { ... }
                return (API[4])(API, ActId)
            end,
            RankSort = 16,
            Sort = 6,
            SubTab1 = "Combat Training",
            SubTab2 = "Training Supply",
            SubTab3 = "Training Target",
            SubTabReddot = {
                { 54 },
                { -1 },
                { 52 },
            },
        },
        {
            ActiveDesc = "#s24#h48Lucky Shop Overview#r#r #s20#w10#c5c5c5c1. During the event, players can get item discounts through the event. After getting a discount cupon, you can select the item you want to buy at a discount.#r #w10#c5c5c5c2. The store only exists for a limited time. After you get a discount, be sure to select the item you want to buy quickly!",
            ActiveName = "Lucky Shop",
            Index = 27,
            ItemInfo = { "BindGold" },
            OpenMain = function(API, ActId, ...)
                -- function num : 0_57
                local Args = { ... }
                return (API[33])(API, ActId)
            end,
            RankSort = 16,
            Sort = 61,
            SubTabReddot = {
                { 146 },
            },
        },
        {
            ActiveName = "Softball Throwing",
            DailyAttend = 3,
            Desc = "#s18#w36During the event, go to the event interface to participate in the softball throwing. Players will obtain Softball Tokens based on the throwing results. Spend these tokens in the shop to redeem various reward!",
            EngName = "SOFTBALL TEST",
            Index = 7,
            ItemInfo = { "SoftBallCoin" },
            OpenTab1 = function(API, ActId, ...)
                -- function num : 0_58
                local Args = { ... }
                return (API[5])(API, ActId)
            end,
            OpenTab2 = function(API, ActId, ...)
                -- function num : 0_59
                local Args = { ... }
                return (API[6])(API, ActId)
            end,
            OpenTab3 = function(API, ActId, ...)
                -- function num : 0_60
                local Args = { ... }
                return (API[7])(API, ActId)
            end,
            RankId = 8,
            RankSort = 17,
            Sort = 29,
            SubTab1 = "Gameplay Introduction",
            SubTab2 = "Redeem Shop",
            SubTab3 = "Rankings",
            SubTabReddot = {
                { 55 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5cMemorize the symbols on the clones, and then the clones will randomly switch locations. When the clones #r#w10#h40stopped, you will need to find the clone with the correcy symbol according to the prompt.#n#r[Participation Attempts]:#r#w10#c5c5c5c#h40Log in every day to get participating attempts, which are reset at 05:00 every day.#n#r[Obtain Rewards]:#r#w10#c5c5c5c#h40The more symbols you find in each game, the more rewards you will get. There are also generous rewards for daily participation.#n#r[Difficulty Increase]:#r#w10#c5c5c5cNew difficulty will become available each day, and the higher the difficulty, the better the rewards. Go challenge now!",
            ActiveName = "Clone Trial",
            DailyAttend = 100,
            Desc = "In order to train the students' observation abilities, Ectoplasm has customized a special training plan. Come challenge it!",
            EngName = "CLONED TEST",
            Index = 8,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_61
                local Args = { ... }
                return (API[14])(API, ActId)
            end,
            RankSort = 18,
            Sort = 41,
            SubTabReddot = {
                { 65 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5c1. During the event, gifting items can be obtained by participating in Peacekeeping stages, Night Ops, Supply, and Hero Trials.#r#w10#c5c5c5c2. Give gifting items to three classmates to gain a chance to get three different gifts and other rewards in return.#r#w10#c5c5c5c3. Classmates' return gifts can be sued to redeem items in the gift shop.#r",
            ActiveName = "Hero's Gift",
            EngName = "PRESENT",
            Index = 9,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_62
                local Args = { ... }
                return (API[15])(API, ActId)
            end,
            RankSort = 19,
            Sort = 39,
            SubTabReddot = {
                { 116 },
            },
        },
        {
            ActiveName = "Share & Invite",
            EngName = "SHARE",
            Index = 10,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_63
                local Args = { ... }
                return (API[16])(API, ActId)
            end,
            RankSort = 20,
            Sort = 42,
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5cPlayers need to complete 10 tasks arranged by All Might every day. Tasks include training quests, quizes, and #r#w10encounter heroes. Players will encounter All Might, Principal Nezu, Mei Hatsume, and Midoriya. They will provide you with #r#w10generous#h40 rewards.#n#r[Target Progress]:#r#w10#h40#c5c5c5cTask Progress will be increased after a task is completed. Task Progress will be increased in the quiz even if you answer incorrectly.#n#r[Event Rewards]:#r#w10#c5c5c5cEach tast will have an individual reward. The more tasks you complete, the more questions you can answer correctly, and the more generous the rewards will be.",
            ActiveName = "Hero Lecture",
            EngName = "HERO CLASSROOM",
            Index = 11,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_64
                local Args = { ... }
                return (API[17])(API, ActId)
            end,
            RankSort = 21,
            Sort = 40,
            SubTabReddot = {
                { 66 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5c1. After entering the game, the player needs to shoot the Points Earning Target and challenge the high score.#r#w10#c5c5c5c#h0402. The top players on the rankings of the day will gain additional rewards. Go challenge now!#n#r[Redeem Rewards]:#r#w10#c5c5c5c1. Points Earning Target, corresponding points will be added.#r#w10#c5c5c5c2. Points Deduction Target, corresponding points will be deducted.#r#w10#c5c5c5c3. Time Target, corresponding shooting time will be added.#r#w10#c5c5c5c4. Bomb Target, explode and hit the surrounding targets.#r#w10#c5c5c5c5. Frozen Target, the ice stack will shatter exposing the target inside.#r#w10#c5c5c5c6. Doubling Target, doubles the points gained within a limited time. Doubling Target will only double the Points Earning Target and#r#w10#h40 Points Deduction Target.#n#r[Daily Rewards]:#r#w10#c5c5c5c1. Daily Reward can be obtained when points gained from a single game exceed a set value. Daily Rewards can only be claimed once a day.#r#w10#c5c5c5c#h0402. Top ranking players will be given a rankings Reward, which will be settled at 21:00 every day, and the reward will be issued by email.#n#r[Special Instruction]:#r#w10#c5c5c5c1. The score will not be recorded if you disconnect or quit the game during the challenge. Please challenge with a stable connection.",
            ActiveName = "Aoyama's Training",
            EngName = "TRAINING",
            Index = 12,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_65
                local Args = { ... }
                return (API[18])(API, ActId)
            end,
            RankId = 10,
            RankSort = 22,
            Sort = 43,
            SubTabReddot = {
                { 40, 41 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]: Materials for #r#w10#c5c5c5cmaking desserts can be obtained by participating in Peacekeeping stages, Night Ops, Supply, and Hero Trials during the event.#r#w10#h40 #n#r[Redeem Rewards]:#r#w10#c5c5c5cHeroes can send the desserts to the dessert shop, where the heroes can get gifts in return. Different desserts #r#w10#h40can be exchanged for different gifts. Gifts from the dessert shop are limited. Be sure to hurry!",
            ActiveName = "Dessert Class",
            EngName = "DESSERT",
            Index = 13,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_66
                local Args = { ... }
                return (API[19])(API, ActId)
            end,
            RankSort = 23,
            Sort = 44,
            SubTabReddot = {
                { 115 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5cYou can invite friends to join your exclusive event team through the invite button on the interface. With #r#w10#h40all team members' efforts, you can complete Daily Quest Goals to win points and claim generous rewards.#n#r[Event Rewards]: #r#w10#c5c5c5cIn addition to the daily rewards, there are also a accumulation rewards that can be claimed when your points #r#w10#h40reach the requirements.#n#r[Kick Rules]:#r#w10#c5c5c5cWhen a team member earned less than #b100#n#c5c5c5c points from the previous day, the Kick Out#r#w10 button will appear on that member's info page. Any member can tap the button to kick the member out.",
            ActiveName = "Hero Team",
            EngName = "HERO TEAM",
            Index = 14,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_67
                local Args = { ... }
                return (API[21])(API, ActId)
            end,
            RankSort = 24,
            Sort = 46,
            SubTabReddot = {
                { 71 },
            },
        },
        {
            ActiveDesc = "#s24#h48Event Rules#r#s20[Gameplay Introduction]:#r#w10#c5c5c5cThe coins have two patterns: the weak and strong All Might. Tapping on the coin will flip it and #r#the adjacent coins. If all the coins are flipped to the strong All Might side, the challenge will be a success, and you can immediately get completion#r#w10rewards. Pass a certain number of stages to achieve targets and get rich rewards.",
            ActiveName = "Secret to Becoming Stronger",
            EngName = "LANTERNS",
            Index = 15,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_68
                local Args = { ... }
                return (API[22])(API, ActId)
            end,
            RankId = 12,
            RankSort = 25,
            Sort = 47,
            SubTabReddot = {
                { 73 },
            },
        },
        {
            ActiveName = "Academy Sports Festival",
            EngName = "ATHLETIC MEETS",
            Index = 16,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_69
                local Args = { ... }
                return (API[20])(API, ActId)
            end,
            RankSort = 26,
            Sort = 48,
            SubTabReddot = {
                { 72 },
            },
        },
        {
            ActiveName = "Rescue Training",
            Desc = "#s18In order to improve the students' disaster rescue ability, Thirteen carried out some rescue training. Come and help Thirteen design the rescue route and help the trainees complete their training!",
            EngName = "RESCUE TRAIN",
            Index = 17,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_70
                local Args = { ... }
                return (API[23])(API, ActId)
            end,
            RankSort = 27,
            Sort = 49,
            SubTabReddot = {
                { 77 },
            },
        },
        {
            ActiveName = "Special Gifts",
            EngName = "REBATE",
            Index = 18,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_71
                local Args = { ... }
                return (API[24])(API, ActId)
            end,
            RankSort = 28,
            Sort = 50,
            SubTabReddot = {
                { 87, 89 },
            },
        },
        {
            ActiveDesc = "#s24#h48 Event Rules #r#s20 [Gameplay Introduction]: #r#w10#c5c5c5c1. Complete designated quests to get event points. #r#w10#c5c5c5c2. Quests are divided into two types: Achievement Quests and Unlimited Quests. Achievement Quests can be completed to immediately claim points. Each Achievement Quest's points can only be claimed once. Unlimited Quests will automatically yield points when completed and will be added to the event's total points. These cannot be manually claimed. #r#w10#c5c5c5c3. Mock Contest and Virtual Battleground will only record the highest points of each stage. Repeat clearance will not accumulate event points.#n#r [Event Rewards]: #r#w10#c5c5c5c1. Your total event points must reach certain amounts before you can claim the different phase rewards. #r#w10#c5c5c5c2. Total Points Ranking Rewards will be calculated on the last day of the event at 21:00. Ranking rewards will then be sent to players by mail. #n#r [Settlement Rules]: #r#w10#c5c5c5c1. Settlement will occur on the last day of the event at 21:00, by then Total Points will not change. #r#w10#c5c5c5c2. After the event ends, unclaimed rewards will be sent to players by mail.",
            ActiveName = "Onslaught",
            EngName = "PERIODIC_TASK",
            Index = 19,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_72
                local Args = { ... }
                return (API[25])(API, ActId)
            end,
            RankId = 16,
            RankSort = 29,
            Sort = 51,
            SubTabReddot = {
                { 123 },
            },
        },
        {
            ActiveName = "Total BP Rankings",
            Index = 29,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_73
                local Args = { ... }
                return (API[34])(API, ActId)
            end,
            RankSort = 30,
            Sort = 62,
            SubTabReddot = {
                { 1148 },
            },
        },
        {
            ActiveName = "Trainee Guidance",
            Index = 30,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_74
                local Args = { ... }
                return (API[35])(API, ActId)
            end,
            RankSort = 31,
            Sort = 1,
            Special = "SubType",
            SpecialNum = 2,
            SubTabReddot = {
                { 44 },
            },
        },
        {
            ActiveName = "Hero Trainee Assemble",
            Index = 31,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_75
                local Args = { ... }
                return (API[36])(API, ActId)
            end,
            RankSort = 31,
            Sort = 1,
            Special = "SubType",
            SpecialNum = 3,
            SubTabReddot = {
                { 45 },
            },
        },
        {
            ActiveDesc = "#w008#s24#c000000[Hero Internship] Introduction#n#s20#r#r #r#w020#c5c5c5c1. During the event, you can consume Stamina to participate in any stage and gain Internship Credits.#r #r#w020#c5c5c5c2. Consume Internship Credits to exchange for abundant rewards.#r #w040#c5c5c5cThe reminder option in reward list can be used to remind you of exchange.#r #r#w020#c5c5c5c3. You can obtain extra rewards according to the Internship Credits consumed in total!#r",
            ActiveName = "Hero Internship",
            Index = 32,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_76
                local Args = { ... }
                return (API[37])(API, ActId)
            end,
            RankSort = 32,
            Sort = 2,
            Special = "SubType",
            SpecialNum = 2,
            SubTabReddot = {
                { 1149, 1150 },
            },
        },
        {
            ActiveName = "Trainee Benefits",
            Index = 33,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_77
                local Args = { ... }
                return (API[38])(API, ActId)
            end,
            RankSort = 33,
            Sort = 1,
            Special = "SubType",
            SpecialNum = 1,
            SubTabReddot = {
                { 12 },
            },
        },
        {
            ActiveName = "Rookie Banner",
            Index = 34,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_78
                local Args = { ... }
                return (API[39])(API, ActId)
            end,
            RankSort = 34,
            Sort = 7,
            Special = "SubType",
            SpecialNum = 1,
            SubTabReddot = {
                { 1165 },
            },
        },
        {
            ActiveDesc = "#c000000[Full-Blown Operation] Event Introduction#n#r#r#r#c5c5c5c1. During the event, participate in the gameplay to consume Stamina and be rewarded. #r#r#c5c5c5c2. The more Stamina consumed, the more the rewards! Join the event now.#r",
            ActiveName = "Full-Blown Operation",
            Index = 35,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_79
                local Args = { ... }
                return (API[40])(API, ActId)
            end,
            RankSort = 35,
            Sort = 4,
            Special = "SubType",
            SpecialNum = 2,
            SubTabReddot = {
                { 1166 },
            },
        },
        {
            ActiveDesc = "#w008#s24#c000000[Total Spending] Event Introduction#n#s20#r#r #r#w020#c5c5c5c1 During the event, participate to consume Hero Coins and be rewarded. #r #r#w020#c5c5c5c2 The more Hero Coins consumed, the more the rewards! Join the event now.#r",
            ActiveName = "Cumulative Consumption",
            Index = 36,
            OpenMain = function(API, ActId, ...)
                -- function num : 0_80
                local Args = { ... }
                return (API[41])(API, ActId)
            end,
            RankSort = 36,
            Sort = 4,
            Special = "SubType",
            SpecialNum = 3,
            SubTabReddot = {
                { 1167 },
            },
        },
    },
}

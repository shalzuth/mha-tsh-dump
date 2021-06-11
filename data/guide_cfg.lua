-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    API = {
        function(API, GUIDE, ...)
            -- function num : 0_0
            local Args = { ... }
            local UserData = (objdata.UserMgr):GetHeroUserData()
            do
                local Lv = UserData:GetLevel()
                do
                    return not Args[2] and Lv <= Args[1] or 1 > Lv or 99999999
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_1
            local Args = { ... }
            return (task.TaskMgr):IsCurTask(Args[1] or 0)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_2
            local Args = { ... }
            return (task.TaskMgr):IsDoneTask(Args[1] or 0)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_3
            local Args = { ... }
            return (task.TaskMgr):JudgeTaskStatus(Args[1] or 0, const.TASK_STATUS_ACC)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_4
            local Args = { ... }
            return (task.TaskMgr):JudgeTaskStatus(Args[1] or 0, const.TASK_STATUS_HAS)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_5
            local Args = { ... }
            return (task.TaskMgr):JudgeTaskStatus(Args[1] or 0, const.TASK_STATUS_SUB)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_6
            local Args = { ... }
            return ((objdata.GetFuncOpenMgr)()):IsFuncOpen(Args[1] or 0)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_7
            local Args = { ... }
            return ((stage.InstMgr)()):GetAllStageByStageId(Args[1] or -1)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_8
            local Args = { ... }
            return stage:GetBossOpenBox(Args[1] or -1)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_9
            local Args = { ... }
            return stage:GetStarOpenBox(Args[1] or -1, Args[2] or 1)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_10
            local Args = { ... }
            return guide:APILastStepFinish()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_11
            local Args = { ... }
            return guide:APILastStepFinish(1)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_12
            local Args = { ... }
            do
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return false
                end
                do
                    return Args[1] or "" == CurScene.__Name__
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_13
            do
                local Args = { ... }
                do
                    return Args[1] or "" == uiMgr:GetCurUiName()
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_14
            local Args = { ... }
            return uiMgr:GetCurUiName()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_15
            local Args = { ... }
            return uiMgr:GetLastUiViewFile()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_16
            local Args = { ... }
            local WidgetCfg = ((ALLSETTING.GUIDE_CFG).WidgetCfg)[Args[1]]
            if not WidgetCfg or not WidgetCfg.UiFile then
                return false
            end
            do
                local CurFile = uiMgr:GetLastUiViewFile()
                if not CurFile then
                    return false
                end
                do
                    return CurFile == WidgetCfg.UiFile
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_17
            local Args = { ... }
            local WidgetCfg = ((ALLSETTING.GUIDE_CFG).WidgetCfg)[Args[1]]
            if not WidgetCfg or not WidgetCfg.UiFile or not WidgetCfg.UiComp then
                return false
            end
            local ViewObj = uiMgr:GetUiViewObj(WidgetCfg.UiFile)
            if not ViewObj then
                return false
            end
            local ListObj = ViewObj:GetCompsByName(WidgetCfg.UiComp)
            if not ListObj then
                return false
            end
            local Container = ListObj:GetContainer()
            local Percent = (math.max)(0, (math.min)(Args[2], 100))
            local Pos = ListObj:GetMaxRule() * Percent / 100
            if Args[3] then
                Container:SetPosition(-Pos, (Container:GetPosition()).y)
            else
                Container:SetPosition((Container:GetPosition()).x, -Pos)
            end
            return true
        end,
        function(API, GUIDE, ...)
            -- function num : 0_18
            local Args = { ... }
            guide:APISetSysListPercent(Args[1])
        end,
        function(API, GUIDE, ...)
            -- function num : 0_19
            local Args = { ... }
            guide:APISetMethodListPercent(Args[1])
        end,
        function(API, GUIDE, ...)
            -- function num : 0_20
            local Args = { ... }
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end
            for _, Obj in pairs(CurScene.m_FighterMap) do
                if Obj:GetType() == "clsNpc" and Obj:GetName() == Args[1] then
                    local TitleComp = Obj:GetCompObj("TitleNpcComp")
                    -- DECOMPILER ERROR at PC29: Confused about usage of register: R11 in 'UnsetPending'

                    if TitleComp then
                        ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TitleComp.m_StatusPanel
                        return
                    end
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_21
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.m_ListPanel then
                return
            end
            if (CurUi.m_ListPanel).SwitchPosByMerId then
                (CurUi.m_ListPanel):SwitchPosByMerId(tonumber(Args[1]))
            end
            local CurItem = (CurUi.m_ListPanel):GetItemByMerId(tonumber(Args[1]))
            if not CurItem then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC41: Confused about usage of register: R7 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurItem:GetCompsByName("m_TouchBtn")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_22
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.m_SonPanel or not (CurUi.m_SonPanel).GetItemByFashionId then
                return
            end
            local CurItem = (CurUi.m_SonPanel):GetItemByFashionId(tonumber(Args[1]))
            if not CurItem then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC35: Confused about usage of register: R7 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurItem:GetCompsByName("m_TouchBtn")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_23
            local Args = { ... }
            local CurScene = sceneMgr.s_CurScene
            if not CurScene or not CurScene.m_FactoryFrame then
                return
            end
            (CurScene.m_FactoryFrame):ChangeType(Args[1])
        end,
        function(API, GUIDE, ...)
            -- function num : 0_24
            local Args = { ... }
            if global.Hero then
                (global.Hero):CancelMoveTo()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_25
            local Args = { ... }
            do
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "MethodView" then
                    return false
                end
                if CurUi.m_ChangeNum ~= 1 then
                    return false
                end
                do
                    return (CurUi.m_SonPanel):GetChooseMethod() == tonumber(Args[1])
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_26
            local Args = { ... }
            uiMgr:CloseAllUi()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_27
            do
                local Args = { ... }
                do
                    return #(mercenaryview.MercenaryUtil):GetMercenaryDatasOfFight() > 0
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_28
            local Args = { ... }
            local List = (mercenaryview.MercenaryUtil):GetMercenaryDatasOfFight()
            for _, Data in ipairs(List) do
                if Args[1] < Data:GetLevel() then
                    return true
                end
            end
            return false
        end,
        function(API, GUIDE, ...)
            -- function num : 0_29
            local Args = { ... }
            local List = (mercenaryview.MercenaryUtil):GetMercenaryDatasOfFight()
            for _, Data in ipairs(List) do
                if Data:GetInitRank() or 0 < Data:GetRankLv() then
                    return true
                end
            end
            return false
        end,
        function(API, GUIDE, ...)
            -- function num : 0_30
            local Args = { ... }
            local List = (goods.EquipUtil):GetUserDressEquips()
            for _, Item in ipairs(List) do
                if Item:GetSort() == Args[1] then
                    return true
                end
            end
            return false
        end,
        function(API, GUIDE, ...)
            -- function num : 0_31
            do
                local Args = { ... }
                do
                    return Args[2] or 1 <= objdata:GetItemAmountByItemId(Args[1])
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_32
            do
                local Args = { ... }
                do
                    return #objdata:GetFurnishAccessoryItem() > 0
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_33
            local Args = { ... }
            return (task.NpcTalkMgr).m_DialogView
        end,
        function(API, GUIDE, ...)
            -- function num : 0_34
            local Args = { ... }
            return (task.NpcTalkMgr).m_CurMenuPanel
        end,
        function(API, GUIDE, ...)
            -- function num : 0_35
            local Args = { ... }
            return (task.NpcTalkMgr).m_CurTalkPanel
        end,
        function(API, GUIDE, ...)
            -- function num : 0_36
            local Args = { ... }
            return (sceneUnitMgr.SceneUnitMgr):IsInAutoMove()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_37
            local Args = { ... }
            return (mercenaryview.MercenaryUtil):HasRuneByIndex(Args[1], Args[2])
        end,
        function(API, GUIDE, ...)
            -- function num : 0_38
            local Args = { ... }
            return (mercenaryview.MercenaryUtil):HasEquipByIndex(Args[1], Args[2])
        end,
        function(API, GUIDE, ...)
            -- function num : 0_39
            local Args = { ... }
            return (mercenaryview.MercenaryUtil):GetMercenaryDataById(Args[1])
        end,
        function(API, GUIDE, ...)
            -- function num : 0_40
            local Args = { ... }
            local Mobj = (mercenaryview.MercenaryUtil):GetMercenaryDataById(Args[1])
            if Mobj and Mobj:GetFight() == 1 then
                return true
            end
            return false
        end,
        function(API, GUIDE, ...)
            -- function num : 0_41
            local Args = { ... }
            local MerData = (mercenaryview.MercenaryUtil):GetMercenaryDataById(Args[1])
            if not MerData then
                return false
            end
            do
                local FashionItem = objdata:GetItemDataByUid(MerData:GetFashion() or -1)
                if not FashionItem then
                    return false
                end
                do
                    return FashionItem:GetItemId() == Args[2]
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_42
            local Args = { ... }
            if not (task.TaskMgr):GetTaskDataByType(const.TASK_TYPE_LOOP) then
                local TaskId, TaskData = next({})
                if TaskData then
                    return true
                end
                return false
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_43
            local Args = { ... }
            return (task.TaskMgr).m_CurLoopRound or 0
        end,
        function(API, GUIDE, ...)
            -- function num : 0_44
            local Args = { ... }
            return (areaEvent.AreaEventDataMgr):IsPassStage(Args[1])
        end,
        function(API, GUIDE, ...)
            -- function num : 0_45
            local Args = { ... }
            do
                local IsCheckUI = Args[2] == 1
                if IsCheckUI then
                    return (areaEvent.AreaEventDataMgr):IsInPosForMerPosView(Args[1])
                else
                    return (areaEvent.AreaEventDataMgr):IsInPosForPosCache(Args[1])
                end
                -- DECOMPILER ERROR: 3 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_46
            local Args = { ... }
            local IsCheckUI = Args[2] == 1
            do
                local IsCheckPos = tonumber(Args[3]) == 1
                if IsCheckUI then
                    return (areaEvent.AreaEventDataMgr):IsInPosForHappenView(Args[1], IsCheckPos)
                else
                    return (areaEvent.AreaEventDataMgr):IsInPosForPosCache(Args[1])
                end
                -- DECOMPILER ERROR: 4 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_47
            local Args = { ... }
            local HeroClassId = Args[1]
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene or not CurScene.m_AreaEventHappenView then
                return
            end
            local CurUi = (CurScene.m_AreaEventHappenView).m_ListPanel
            if not CurUi or not CurUi.LocationToHeroClassId then
                return
            end
            local Item = CurUi:LocationToHeroClassId(HeroClassId)
            if not Item or not CurScene then
                return
            end            -- DECOMPILER ERROR at PC34: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("BtnTouch")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_48
            local Args = { ... }
            local HeroId = Args[1]
            local UserData = (objdata.UserMgr):GetHeroUserData()
            if UserData:GetHeroId() ~= HeroId then
                do
                    do
                        return not UserData
                    end
                    do
                        return false
                    end
                    -- DECOMPILER ERROR: 3 unprocessed JMP targets
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_49
            local Args = { ... }
            local HeroId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.LocationToHeroClsId then
                return
            end
            local CardItem = CurUi:LocationToHeroClsId(HeroId)
            local CurScene = sceneMgr:GetCurScene()
            if not CardItem or not CurScene then
                return
            end            -- DECOMPILER ERROR at PC29: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CardItem:GetCompsByName("Btn_Click")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_50
            local Args = { ... }
            local HeroId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.LocationToHeroId then
                return
            end
            local CardItem = CurUi:LocationToHeroId(HeroId)
            local CurScene = sceneMgr:GetCurScene()
            if not CardItem or not CurScene then
                return
            end            -- DECOMPILER ERROR at PC29: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CardItem:GetCompsByName("Btn_Click")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_51
            local Args = { ... }
            local HeroId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.LocationToHeroClsId then
                return
            end
            local CardItem = CurUi:LocationToHeroClsId(HeroId)
            local CurScene = sceneMgr:GetCurScene()
            if not CardItem or not CardItem.CardItem or not CurScene then
                return
            end            -- DECOMPILER ERROR at PC33: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = (CardItem.CardItem):GetCompsByName("BtnTouch")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_52
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                return false
            end
            return true
        end,
        function(API, GUIDE, ...)
            -- function num : 0_53
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return false
            end
            do
                local SceneId = tonumber(Args[1])
                do
                    return SceneId == CurScene:GetId()
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_54
            local Args = { ... }
            local TaskId = Args[1]
            local CurScene = sceneMgr:GetCurScene()
            local MapView = uiMgr:GetObjWorldMapView()
            if not MapView then
                return
            end
            local TaskView = MapView.m_TaskList
            if not TaskView then
                return
            end
            local TaskItem = TaskView:LocationToTaskId(TaskId)
            if not TaskItem then
                return
            end            -- DECOMPILER ERROR at PC28: Confused about usage of register: R9 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TaskItem:GetCompsByName("SelBtn")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_55
            local Args = { ... }
            local Idx = Args[1]
            return (map.MapController):CheckIsBtnSelect(Idx)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_56
            local Args = { ... }
            do
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                    return false
                end
                do
                    return CurUi:GetCurBtn() == Args[1]
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_57
            local Args = { ... }
            local HeroId = Args[1]
            local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
            if Args[2] > CardData:GetSatietyLv() then
                do
                    do
                        return not CardData
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_58
            local Args = { ... }
            local HeroId = Args[1]
            local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
            if Args[2] > CardData:GetWorkoutLv() then
                do
                    do
                        return not CardData
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_59
            local Args = { ... }
            return (utils.ItemUtil):CheckHasItemBySort("σûéσà╗Θúƒτë⌐")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_60
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                return
            end
            if CurUi.BaseView and CurUi:GetCurBtnView("Btn_Exercise") then
                print("CurUi.BaseView.m_HasFeed", (CurUi.BaseView).m_HasFeed)
                return (CurUi.BaseView).m_HasFeed
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_61
            local Args = { ... }
            local HeroId = Args[1]
            local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
            if CardData then
                if not CardData:GetSkillLevel() then
                    local SkillList = {}
                end
                local SkillLv = SkillList[Args[2]]
                if Args[3] > SkillLv then
                    do
                        do
                            return not SkillLv
                        end
                        -- DECOMPILER ERROR: 2 unprocessed JMP targets
                    end
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_62
            local Args = { ... }
            local HeroId = Args[1]
            local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
            if CardData then
                if not CardData:GetSpecLevel() then
                    local SpecList = {}
                end
                local SpecLv = SpecList[Args[2]]
                if Args[3] > SpecLv then
                    do
                        do
                            return not SpecLv
                        end
                        -- DECOMPILER ERROR: 2 unprocessed JMP targets
                    end
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_63
            local Args = { ... }
            local HeroId = Args[1]
            local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
            if CardData and Args[2] <= CardData:GetResonateLv() then
                if Args[2] < CardData:GetResonateLv() then
                    return true
                end
                local ResonatePiece = CardData:GetResonatePiece()
                return Args[3] <= #ResonatePiece
            end
            -- DECOMPILER ERROR: 2 unprocessed JMP targets
        end,
        function(API, GUIDE, ...)
            -- function num : 0_64
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi:GetType() ~= "clsCardResonanceInfoView" then
                return false
            end
            if not CurUi:GetCompsByName("BtnMaskClick") then
                return false
            end
            return (CurUi:GetCompsByName("BtnMaskClick")):IsVisible()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_65
            local Args = { ... }
            local HeroClsId = Args[1]
            local Quality = Args[2] or 1
            do
                local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroClsId)
                do
                    return not CardData or Quality <= CardData:GetQuality()
                end
                -- DECOMPILER ERROR: 2 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_66
            local Args = { ... }
            local collectId = Args[1]
            return (collection.CollectMgr):IsApprByCollectId(collectId)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_67
            local Args = { ... }
            local NpcId = Args[1]
            local CurScene = sceneMgr:GetCurScene()
            local NpcObj = CurScene:GetNpcById(NpcId)
            if NpcObj then
                (task.NpcTalkMgr):Talk2Npc(NpcId, nil, nil)
            end
            utils:PopupView()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_68
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                return false
            end
            local Btn = (CurUi.BaseView):GetCompsByName("BtnRankUp")
            if Btn then
                return Btn:IsVisible()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_69
            local Args = { ... }
            return (collection.CollectMgr):IsCanShowRaiseLvView()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_70
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            local MapView = uiMgr:GetObjWorldMapView()
            if not MapView then
                return
            end
            local TaskView = MapView.m_TaskList
            if not TaskView then
                return
            end
            local TaskItem = TaskView:LocationToFirstWorldTask()
            if not TaskItem then
                return
            end            -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TaskItem:GetCompsByName("SelBtn")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_71
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            local MapView = uiMgr:GetObjWorldMapView()
            if not MapView then
                return
            end
            local TaskView = MapView.m_TaskList
            if not TaskView then
                return
            end
            local MainTaskData = (task.TaskMgr):GetMainTaskData()
            if not MainTaskData then
                return
            end
            local TaskItem = TaskView:LocationToTaskId(MainTaskData:GetId())
            if not TaskItem then
                return
            end            -- DECOMPILER ERROR at PC35: Confused about usage of register: R9 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TaskItem:GetCompsByName("SelBtn")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_72
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            local MapView = uiMgr:GetObjWorldMapView()
            if not CurScene or not MapView then
                return
            end
            local TaskView = MapView.m_TaskList
            if
                not TaskView
                or not TaskView.m_TaskTypeItemTab
                or not (TaskView.m_TaskTypeItemTab)[const.TASK_TYPE_WORLD]
            then
                return
            end
            TaskView:PackUpTask(const.TASK_TYPE_WORLD)
            local Tab = (TaskView.m_TaskTypeItemTab)[const.TASK_TYPE_WORLD]
            if not Tab or not Tab.m_ItemWorld then
                return
            end            -- DECOMPILER ERROR at PC47: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = (Tab.m_ItemWorld):GetCompsByName("BtnGift")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_73
            local Args = { ... }
            local WorldMapView = uiMgr:GetObjWorldMapView()
            if WorldMapView then
                return WorldMapView:IsMapTaskViewHavePopup()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_74
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return false
            end
            if CurScene.__Name__ ~= "MainScene" then
                return false
            end
            if (sceneUnitMgr.SceneUnitMgr):IsInAutoMove() then
                return false
            end
            if uiMgr:GetCurUiName() then
                return false
            end
            if uiMgr:GetLastUiViewFile() then
                return false
            end
            if not CurScene.m_FunEntranceMenu then
                return false
            end
            return (CurScene.m_FunEntranceMenu):IsVisible()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_75
            local Args = { ... }
            local IsOpenFunc = (objdata:GetFuncOpenMgr()):IsFuncOpen("Σ║ïσèíµë\128")
            if IsOpenFunc == false then
                return false
            end
            local Id = Args[1]
            local state = (objdata.HeroRoadDataMgr):GetPickStepState(Id)
            if state == 2 then
                print("aaaaaaaaaaaaaaaaaaaaaaaaaaa", true)
                return true
            else
                return false
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_76
            local Args = { ... }
            local IsOpenFunc = (objdata:GetFuncOpenMgr()):IsFuncOpen("Σ║ïσèíµë\128")
            if IsOpenFunc == false then
                return false
            end
            local Id = Args[1]
            local state = (objdata.HeroRoadDataMgr):GetPickStepState(Id)
            if state == 1 then
                return true
            else
                return false
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_77
            local Args = { ... }
            local IsOpenFunc = (objdata:GetFuncOpenMgr()):IsFuncOpen("µ»ÅµùÑτ¢«µáç")
            if IsOpenFunc == false then
                return false
            end
            return (objdata.HeroRoadDataMgr):GetDailyState()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_78
            local Args = { ... }
            local IsOpenFunc = (objdata:GetFuncOpenMgr()):IsFuncOpen("µ»ÅµùÑτ¢«µáç")
            if IsOpenFunc == false then
                return false
            end
            local Value = Args[1]
            return (objdata.HeroRoadDataMgr):GetActiveCompare(Value)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_79
            local Args = { ... }
            local HeroId = Args[1]
            local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
            if Args[2] > CardData:GetLv() then
                do
                    do
                        return not CardData
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_80
            local Args = { ... }
            local HeroId = Args[1]
            local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
            do
                if CardData then
                    if not CardData:GetRuneInfo() then
                        local RuneInfo = {}
                    end
                    for Index, RuneData in ipairs(RuneInfo) do
                        if Index == tonumber(Args[2]) and RuneData.Uid ~= 0 then
                            local ItemData = objdata:GetItemDataByUid(RuneData.Uid)
                            if tonumber(Args[3]) > ItemData:GetEnhanceLv() then
                                do
                                    do
                                        return not ItemData
                                    end
                                    -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                    -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT

                                    -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                    -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT
                                end
                            end
                        end
                    end
                end
                -- DECOMPILER ERROR: 3 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_81
            local Args = { ... }
            local guide, npcid = (map.MapMgr):CheckTowerGuide()
            return guide
        end,
        function(API, GUIDE, ...)
            -- function num : 0_82
            local Args = { ... }
            local AchieveId = Args[1]
            local CheckStatus = Args[2]
            local AchieveData = (achieve.AchieveUtil):GetAchieveDataById(AchieveId)
            if AchieveData and AchieveData.Status == CheckStatus then
                return true
            else
                return false
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_83
            local Args = { ... }
            local StageId = Args[1]
            local Status = Args[2] or 0
            local Rate = Args[3] or 0
            return (herotheater.HeroTheaterDataMgr):CheckStageStatusForGuideAPI(StageId, Status, Rate)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_84
            local Args = { ... }
            local BounsID = Args[1]
            local Status = Args[2]
            return (herotheater.HeroTheaterDataMgr):JudgePrivateBounsStatus(BounsID, Status)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_85
            local Args = { ... }
            local PosId = Args[1]
            return (equip.EquipDataMgr):CheckEquipPosIsEquipped(PosId)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_86
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.m_BaseView then
                return
            end
            local BaseView = CurUi.m_BaseView
            if not BaseView.IsShowEquipInfo or not BaseView:IsShowEquipInfo() then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC31: Confused about usage of register: R7 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = (BaseView.m_InfoShow):GetEquipBtn()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_87
            local Args = { ... }
            local EquipPos = Args[1]
            local CheckStarLv = Args[2]
            return (equip.EquipUtil):CheckRisingStarByPosStarLv(EquipPos, CheckStarLv)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_88
            local Args = { ... }
            local EquipPos = Args[1]
            local CheckRemouldLv = Args[2]
            local CheckRemouldPro = Args[3]
            return (equip.EquipUtil):CheckRemouldByPosRemouldPro(EquipPos, CheckRemouldLv, CheckRemouldPro)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_89
            local Args = { ... }
            local EquipPos = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetRightSlotItemByPos then
                return
            end
            local Item = CurUi:GetRightSlotItemByPos(EquipPos)
            local CurScene = sceneMgr:GetCurScene()
            if not Item or not CurScene then
                return
            end            -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item
        end,
        function(API, GUIDE, ...)
            -- function num : 0_90
            local Args = { ... }
            local Index = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetTabItemByIndex then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC23: Confused about usage of register: R7 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurUi:GetTabItemByIndex(Index)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_91
            local Args = { ... }
            local EquipPos = Args[1]
            local Plate = Args[2]
            return (equip.EquipUtil):CheckCanDiesetByPosPlate(EquipPos, Plate)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_92
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi then
                return
            end
            if CurUi:GetType() == "clsEquipWarehouseView" then
                return CurUi:IsShowEquipInfo()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_93
            local Args = { ... }
            local PosId = Args[1]
            local EnhanceLv = Args[2] or 1
            local ItemUid = (equip.EquipDataMgr):CheckEquipPosIsEquipped(PosId)
            if ItemUid then
                local ItemData = objdata:GetItemDataByUid(ItemUid)
                if EnhanceLv > ItemData:GetHoleEnhanceLv() then
                    do
                        do
                            return not ItemData
                        end
                        -- DECOMPILER ERROR: 2 unprocessed JMP targets
                    end
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_94
            local Args = { ... }
            local HeroClsId = Args[1]
            local CardData = (objdata.CardDataMgr):GetCurCardData()
            if CardData:GetId() ~= HeroClsId then
                do
                    do
                        return not CardData
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_95
            local Args = { ... }
            local NpcId = Args[1]
            local CurScene = sceneMgr:GetCurScene()
            local NpcObj = CurScene:GetNpcById(NpcId)
            if NpcObj then
                return true
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_96
            local Args = { ... }
            local PoolId = Args[1]
            return (recruit.RecruitUtil):IsHasRecruitFreeTimesByPoolId(PoolId)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_97
            local Args = { ... }
            local PoolId = Args[1]
            return (recruit.RecruitUtil):IsOpenRecruitPoolByPoolId(PoolId)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_98
            local Args = { ... }
            local PoolId = Args[1];
            (recruit.RecruitUtil):TurnToPoolId(PoolId)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_99
            local Args = { ... }
            local PoolId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not PoolId then
                return
            end
            if CurUi:GetType() == "clsRecruitMainView" then
                local RecruitInfoPanel = CurUi:GetRecruitInfoPanelByPoolId(PoolId)
                local CurScene = sceneMgr:GetCurScene()
                if not RecruitInfoPanel or not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC32: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = RecruitInfoPanel:GetCompsByName("RecruitBtn")
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_100
            local Args = { ... }
            return recruit.IS_RECRUITING
        end,
        function(API, GUIDE, ...)
            -- function num : 0_101
            local Args = { ... }
            local HeroId = Args[1]
            local Idx = Args[2]
            local CardList = ((objdata.CardDataMgr):GetCardList())
            local CurCard = nil
            if not CardList then
                for _, v in pairs({}) do
                    if v:GetId() == HeroId then
                        CurCard = v
                        break
                    end
                end
                do
                    local IsInsert = false
                    if not CurCard then
                        return IsInsert
                    end
                    local AddiCardInfo = CurCard:GetAddiCardInfo()
                    if AddiCardInfo and AddiCardInfo.SlotInfo then
                        for _, v in pairs(AddiCardInfo.SlotInfo) do
                            if v.Index == Idx then
                                IsInsert = true
                                break
                            end
                        end
                    end
                    do
                        return IsInsert
                    end
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_102
            local Args = { ... }
            return (fightUnion.GetIsCombineUIOpen)()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_103
            local Args = { ... }
            return (league.LeagueDataMgr):InLeague()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_104
            local Args = { ... }
            local HeroClassId = Args[1]
            return (fightUnion.IsSelectHeroByHeroClassId)(HeroClassId)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_105
            local Args = { ... }
            local HeroClassId = Args[1];
            (fightUnion.SetFtUnionHeroChooseListByHeroClassId)(HeroClassId)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_106
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if CurScene and CurScene.m_MiniMapView then
                return true
            end
            return false
        end,
        function(API, GUIDE, ...)
            -- function num : 0_107
            local Args = { ... }
            local Id = Args[1]
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local MapView = uiMgr:GetObjWorldMapView()
            if not MapView then
                return
            end
            local TrickPlayListView = MapView.m_TrickPlayListView
            if not TrickPlayListView then
                return
            end
            local ItemList = TrickPlayListView:GetTrickPlayItem()
            if not ItemList then
                return
            end
            local Item = ItemList[Id]
            if not Item then
                return
            end            -- DECOMPILER ERROR at PC34: Confused about usage of register: R10 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("BtnEnter")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_108
            local Args = { ... }
            return (areaEvent.AreaEventDataMgr):GetIsAutoFight()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_109
            do
                local Args = { ... }
                do
                    return (areaEvent.AreaEventDataMgr):GetCurStageId() == Args[1]
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_110
            local Args = { ... }
            local Id = Args[1]
            if not Id then
                return
            end
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local MapView = uiMgr:GetObjWorldMapView()
            if not MapView then
                return
            end
            MapView:OnFunClick(Id)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_111
            local Args = { ... }
            local ItemList = objdata:GetItemByItemType({ Args[1] })
            if ItemList then
                return next(ItemList)
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_112
            local Args = { ... }
            do
                local ItemList, Amount = objdata:GetItemAmountByItemSort(Args[1])
                do
                    return Amount > 0
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_113
            local Args = { ... }
            return (fightUnion.GetIsOpenFtUnionTipUI)()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_114
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                return
            end
            return CurUi:IsCombatPanelOpen()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_115
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                return
            end
            return CurUi:IsCollaborationOpen()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_116
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                return
            end
            return CurUi:IsPVPPageOpen()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_117
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                return
            end
            return CurUi:IsMainPageOpen()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_118
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                return
            end
            return CurUi:IsTimePlayPageOpen()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_119
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                return
            end
            return CurUi:IsFunOtherOpen()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_120
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                return
            end
            if CurUi.BaseView and CurUi:GetCurBtnView("Btn_Exercise") then
                return (CurUi.BaseView).m_FeedAniShow
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_121
            local Args = { ... }
            local TypeId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetGuideBtnById then
                return
            end
            local TypeBtn = CurUi:GetGuideBtnById(TypeId)
            if not TypeBtn then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TypeBtn
        end,
        function(API, GUIDE, ...)
            -- function num : 0_122
            local Args = { ... }
            local FinishPVPGuide = ((stage.InstMgr)()):GetFinishPVPGuide()
            if FinishPVPGuide and FinishPVPGuide > 0 then
                return true
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_123
            local Args = { ... }
            local CityLevel = Args[1]
            return (map.CityExpUtil):IsCanGetRewardByCityLevel(CityLevel)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_124
            local Args = { ... }
            local CityLevel = Args[1]
            return (map.CityExpUtil):IsGetRewardByCityLevel(CityLevel)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_125
            local Args = { ... }
            local CityLevel = Args[1]
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local CityExpMainView = uiMgr:GetUiViewObj("map/cityExp/cityExpMainViewUI")
            if not CityExpMainView then
                return
            end
            local CityExpItem = CityExpMainView:GetCityExpItemByCityLevel(CityLevel)
            if not CityExpItem then
                return
            end            -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CityExpItem.m_IconNode
        end,
        function(API, GUIDE, ...)
            -- function num : 0_126
            local Args = { ... }
            local FinishCount = (task.TaskMgr):GetWorldTaskFinishCount()
            do
                local AllCount = (task.TaskMgr):GetWorldTaskAllCount()
                print("00000000000000", FinishCount, AllCount)
                do
                    return FinishCount < AllCount
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_127
            local Args = { ... }
            return (team.TeamUtil):IsTeamFull()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_128
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local TeamView = uiMgr:GetUiViewObj("team/teamViewUI")
            if not TeamView then
                return
            end
            local TeamTargetSecretPanel = TeamView.m_TeamStageTargetPanel
            if not TeamTargetSecretPanel then
                return
            end            -- DECOMPILER ERROR at PC25: Confused about usage of register: R7 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TeamTargetSecretPanel:GetCompsByName("StageKeyBtn")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_129
            local Args = { ... }
            return (team.TeamUtil):IsHasSecretMapCount()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_130
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local TeamView = uiMgr:GetUiViewObj("team/teamViewUI")
            if not TeamView then
                return
            end
            return TeamView.m_IsRun
        end,
        function(API, GUIDE, ...)
            -- function num : 0_131
            local Args = { ... }
            local StageID = Args[1];
            (herotheater.HeroTheaterDataMgr):MoveStageItemByGuide(StageID)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_132
            local Args = { ... }
            return (herotheater.HeroTheaterDataMgr):IsMainViewMoveEnd()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_133
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local Item = (herotheater.HeroTheaterDataMgr):ReturnCurStageItem()
            if not Item then
                return
            end            -- DECOMPILER ERROR at PC21: Confused about usage of register: R6 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("NodeGuide")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_134
            local Args = { ... }
            local StageID = Args[1]
            return (herotheater.HeroTheaterDataMgr):IsCurStageItem(StageID)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_135
            local Args = { ... }
            local StageID = Args[1]
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local Item = (herotheater.HeroTheaterDataMgr):GetStageItem(StageID)
            if not Item then
                return
            end            -- DECOMPILER ERROR at PC23: Confused about usage of register: R7 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("Node17")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_136
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local Item = (herotheater.HeroTheaterDataMgr):GetEnterBtn()
            if not Item then
                return
            end            -- DECOMPILER ERROR at PC18: Confused about usage of register: R6 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item
        end,
        function(API, GUIDE, ...)
            -- function num : 0_137
            local Args = { ... }
            local TaskId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetGuideBtnByTaskId then
                return
            end
            local TaskBtn = CurUi:GetGuideBtnByTaskId(TaskId)
            if not TaskBtn then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TaskBtn
        end,
        function(API, GUIDE, ...)
            -- function num : 0_138
            local Args = { ... }
            local Status = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetGuideBtnByStatus then
                return
            end
            local StatusBtn = CurUi:GetGuideBtnByStatus(Status)
            if not StatusBtn then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = StatusBtn
        end,
        function(API, GUIDE, ...)
            -- function num : 0_139
            local Args = { ... }
            local TaskId = Args[1]
            local Status = Args[2]
            return (entrust.EntrustDataMgr):CheckEntrustStatusByTaskId(TaskId, Status)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_140
            local Args = { ... }
            local TaskId = (entrust.EntrustDataMgr):GetCurChallengeTaskId()
            if not TaskId then
                return false
            end
            local EntrustCfg = (entrust.EntrustUtil):GetEntrustCfgById(TaskId)
            if not EntrustCfg then
                return false
            end
            local HeroAmount = EntrustCfg.HeroAmount
            if not HeroAmount then
                return false
            end
            do
                local ChallengeHero = (entrust.EntrustDataMgr):GetCurChallengeHero()
                if not ChallengeHero then
                    return false
                end
                do
                    return HeroAmount <= #ChallengeHero
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_141
            local Args = { ... }
            local Index = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetGuideBtnByIndex then
                return
            end
            local IndexBtn = CurUi:GetGuideBtnByIndex(Index)
            if not IndexBtn then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = IndexBtn
        end,
        function(API, GUIDE, ...)
            -- function num : 0_142
            local Args = { ... }
            local HeroCId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetGuideBtnByHeroCId then
                return
            end
            local HeroBtn = CurUi:GetGuideBtnByHeroCId(HeroCId)
            if not HeroBtn then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = HeroBtn
        end,
        function(API, GUIDE, ...)
            -- function num : 0_143
            local Args = { ... }
            if uiMgr:GetCurUiName() == "FragmentStageView" then
                local item = ((uiMgr:GetCurUi()):GetStageInfoList()):GetItem(Index)
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_144
            local Args = { ... }
            if FragmentStageMgr:GetCurHeroId() == 0 then
                return false
            else
                return true
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_145
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            if not CurScene.m_ActivityBtnsView then
                return
            end
            return (CurScene.m_ActivityBtnsView):GetIsTopBtnOpen()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_146
            local Args = { ... }
            local Level = Args[1]
            return (welfare.WelfareDataMgr):IsGetLevelReward(Level)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_147
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return false
            end
            local WelfaceView = uiMgr:GetUiViewObj("welfare/welfaceViewUI")
            if not WelfaceView then
                return false
            end
            local MenuItemList = WelfaceView.m_MenuItemList
            if not MenuItemList then
                return false
            end
            local MenuItem = MenuItemList[(welfare.WELFARE_TYPE_ID).LEVEL_REWARD]
            if not MenuItem then
                return false
            end
            local BtnComp = MenuItem.m_BtnCheck
            if not BtnComp then
                return false
            end            -- DECOMPILER ERROR at PC38: Confused about usage of register: R9 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = BtnComp
        end,
        function(API, GUIDE, ...)
            -- function num : 0_148
            local Args = { ... }
            local PoolId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not PoolId then
                return
            end
            if CurUi:GetType() == "clsRecruitView" then
                local RecruitPoolView = CurUi:GetRecruitPoolViewByPoolId(PoolId)
                local CurScene = sceneMgr:GetCurScene()
                if not RecruitPoolView or not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC32: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = RecruitPoolView:GetCompsByName("BtnPool")
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_149
            local Args = { ... }
            local ItemId = tonumber(Args[1])
            local Count = objdata:GetItemAmountByItemId(ItemId)
            if Count > 0 then
                return true
            end
            return false
        end,
        function(API, GUIDE, ...)
            -- function num : 0_150
            local Args = { ... }
            local ItemId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if CurUi and CurUi:GetType() == "clsCardCultivateListView" then
                local BaseView = CurUi.BaseView
                if BaseView then
                    local Instance = BaseView.m_FtUnionCardsInstance
                    if Instance then
                        local Comp = Instance:GetItemComp(ItemId)
                        if Comp then
                            local CurScene = sceneMgr:GetCurScene()
                            if not CurScene then
                                return
                            end                            -- DECOMPILER ERROR at PC32: Confused about usage of register: R10 in 'UnsetPending'


                            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Comp
                        end
                    end
                end
            end
            do
                return false
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_151
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local CurUi = uiMgr:GetCurUi()
            if CurUi and CurUi:GetType() == "clsHomeSceneMainView" then
                local Comp = CurUi:GetBuildingHeroViewByFloorId(Args[1])
                -- DECOMPILER ERROR at PC25: Confused about usage of register: R7 in 'UnsetPending'

                if Comp then
                    ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Comp
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_152
            local Args = { ... }
            local CurScene = sceneMgr:GetCurScene()
            if not CurScene then
                return
            end
            local Comp = (home.HomeUtil):GetFurnitureProductionItemByItemId(Args[1])
            -- DECOMPILER ERROR at PC18: Confused about usage of register: R6 in 'UnsetPending'

            if Comp then
                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Comp
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_153
            local Args = { ... }
            local Index = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.m_Items then
                return
            end
            local Item = (CurUi.m_Items)[Index]
            local CurScene = sceneMgr:GetCurScene()
            if not Item or not Item then
                return
            end            -- DECOMPILER ERROR at PC28: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("BtnType")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_154
            local Args = { ... }
            local Index = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetHeroIdByIndex then
                return
            end
            return CurUi:GetHeroIdByIndex(Index)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_155
            local Args = { ... }
            Args[-1] = "clsBattlefieldFormationView"
            guide:GetGuideBtn(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_156
            local Args = { ... }
            local BattlefieldVideoState = (utils.SystemUtils):GetAccountValue("BattlefieldVideoState")
            Args[-1] = "clsBattlefieldFormationView"
            Args[1] = BattlefieldVideoState
            return guide:CheckCurUIGuide(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_157
            local Args = { ... }
            return (objdata.ActivityControl):IsCheckActStatusByActType((activity.ACTIVITY_SORT_ID).SEVEN_ACTIVITY)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_158
            local Args = { ... }
            local CheckAmount = tonumber(Args[1]) or 0
            do
                local CurAmount = (heroroad.HeroGloryMgr):GetTotalStar() or 0
                do
                    return CheckAmount <= CurAmount
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_159
            local Args = { ... }
            local HeroClassId = tonumber(Args[1])
            do
                local ActiveStatus = tonumber(Args[2])
                do
                    return (heroroad.HeroGloryMgr):GetHeroExamActiveStatus(HeroClassId) == ActiveStatus
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_160
            local Args = { ... }
            Args[-1] = "clsHeroScoreExamMainView"
            Args[1] = "GetCanActiveGuideBtn"
            guide:GetGuideBtn(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_161
            local Args = { ... }
            local Id = tonumber(Args[1])
            do
                local RewardStatus = tonumber(Args[2])
                do
                    return (heroroad.HeroGloryMgr):GetRewardStatusById(Id) == RewardStatus
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_162
            local Args = { ... }
            Args[-1] = "clsHeroRoadMainView"
            Args[1] = "GetHeroStarRewardCanReceiveGuideBtn"
            guide:GetGuideBtn(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_163
            local Args = { ... }
            Args[-1] = "clsHeroScoreExamMainView"
            Args[1] = false
            Args[2] = "IsPlayingActiveEffect"
            return guide:CheckCurUIGuide(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_164
            local Args = { ... }
            Args[-1] = "clsWelfareView"
            Args[1] = (welfare.WELFARE_TYPE_ID).GROWTH_FUND
            guide:GetGuideBtn(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_165
            local Args = { ... }
            Args[-1] = "clsWelfareView"
            Args[1] = (welfare.WELFARE_TYPE_ID).GROWTH_FUND
            Args[2] = 1
            guide:GetGuideBtn(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_166
            local Args = { ... }
            local Lv = tonumber(Args[1])
            return (recharge.RechargeUtil):IsReceiveGrowthFundReward(Lv)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_167
            local Args = { ... }
            Args[-1] = "clsPChallengeMainView"
            Args[1] = 1
            guide:GetGuideBtn(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_168
            local Args = { ... }
            local Score = tonumber(Args[1])
            return (pchallenge.PChallengeUtils):CheckScoreLock(Score)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_169
            local Args = { ... }
            Args[-1] = "clsArenaQualifyingMainView"
            Args[1] = "GetGuideBtnByChallenge"
            guide:GetGuideBtn(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_170
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                return
            end
            if CurUi.BaseView and CurUi:GetCurBtnView("Btn_Exercise") then
                return (CurUi.BaseView).m_ExerciseAniShow
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_171
            local Args = { ... }
            local HeroClsId = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if
                not CurUi
                or not CurUi.BaseView
                or not (CurUi.BaseView).m_ShortcutPanel
                or not ((CurUi.BaseView).m_ShortcutPanel).LocationToHeroClsId
            then
                return
            end
            local CardItem = ((CurUi.BaseView).m_ShortcutPanel):LocationToHeroClsId(HeroClsId)
            local CurScene = sceneMgr:GetCurScene()
            if not CardItem or not CurScene then
                return
            end            -- DECOMPILER ERROR at PC40: Confused about usage of register: R8 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CardItem:GetCompsByName("Btn_Click")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_172
            local Args = { ... }
            Args[-1] = "clsArenaQualifyingMainView"
            Args[1] = true
            Args[2] = "IsPlayingVideo"
            return guide:CheckCurUIGuide(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_173
            local Args = { ... }
            local MyRank = (arena.ArenaQualifyingDataMgr):GetRankId()
            local RankListCfg = (arena.ArenaQualifyingDataMgr):GetRankListCfgByRank(MyRank)
            local CulCount = (arena.ArenaQualifyingDataMgr):GetCulCount() or 0
            local TempCount = 0
            local CulTime = (arena.ArenaQualifyingDataMgr):GetCulTime() or 0
            local ShowCountLimit = nil
            if CulTime ~= 0 then
                TempCount = (arena.ArenaQualifyingDataMgr):GetOffLineTempCount()
            end
            if MyRank == 0 then
                ShowCountLimit = ((ALLSETTING.OFFLINEPVP_CFG).Const).HOUR_REWARD_OUT_RANK
            else
                if not RankListCfg or not RankListCfg.HourReward then
                    ShowCountLimit = ((ALLSETTING.OFFLINEPVP_CFG).Const).HOUR_REWARD_OUT_RANK
                end
            end
            do
                local TotalCount = CulCount + TempCount
                do
                    return ShowCountLimit / 2 < TotalCount
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_174
            local Args = { ... }
            return guide:CheckIsInMainScene()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_175
            local Args = { ... }
            Args[-1] = "clsHeroRoadMainView"
            Args[1] = false
            Args[2] = "IsSelectTab"
            Args[3] = (heroroad.GOALS_TAB_TO_INDEX).HERO
            return guide:CheckCurUIGuide(Args)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_176
            local Args = { ... }
            local HeroClsId = Args[1]
            return (card.CardUtil):CheckCanRankByHeroClsId(HeroClsId)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_177
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end
            -- DECOMPILER ERROR at PC22: Confused about usage of register: R6 in 'UnsetPending'

            if CurUi:GetType() == "clsActivityCenterView" then
                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurUi:GetSevenRewardsBtn()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_178
            local Args = { ... }
            local Index = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi or not CurUi.GetTabItemByIndex then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC23: Confused about usage of register: R7 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurUi:GetTabItemByIndex(Index)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_179
            local Args = { ... }
            return uiMgr:GetUiViewObj("skill/skillLvUpViewUI")
        end,
        function(API, GUIDE, ...)
            -- function num : 0_180
            local Args = { ... }
            local IsFuncOpen = (objdata:GetFuncOpenMgr()):IsFuncOpen("Φï▒Θ¢äµëºτàº")
            local IsActOpen =
                (objdata.ActivityControl):IsCheckActStatusByActType((activity.ACTIVITY_SORT_ID).BATTLEPASS)
            return not IsFuncOpen or IsActOpen
        end,
        function(API, GUIDE, ...)
            -- function num : 0_181
            local Args = { ... }
            do
                local FreeRewardLv = (battlepass.BattlepassDataMgr):GetRewardLv()
                do
                    return not FreeRewardLv or FreeRewardLv <= 0
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_182
            local Args = { ... }
            return (battlepass.BattlepassUtil):CheckReddotByTaskType((battlepass.TASK_TYPE).WeekTask)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_183
            local Args = { ... }
            return guide:IsFinishGuide(tonumber(Args[1]))
        end,
        function(API, GUIDE, ...)
            -- function num : 0_184
            local Args = { ... };
            (fightUnion.ShowAddiCardUseGuideAlter)()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_185
            local Args = { ... }
            return (fightUnion.GetWearTypeCardHeroClsId)(fightUnion.ADDICARDTYPE_ACTIVE, tonumber(Args[1]))
        end,
        function(API, GUIDE, ...)
            -- function num : 0_186
            local Args = { ... }
            return (fightUnion.IsTrainUiShowingLevelUp)()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_187
            local Args = { ... }
            return (emergency.EmergencyUtil):IsHasValidEvents()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_188
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi then
                return
            end
            if CurUi:GetType() == "clsActivityCenterView" then
                return CurUi:IsOpenType()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_189
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end
            if CurUi:GetType() == "clsActivityCenterView" then
                local SevenActTab = CurUi:GetSevenActTab()                -- DECOMPILER ERROR at PC22: Confused about usage of register: R7 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = SevenActTab
                if SevenActTab then
                    return true
                end
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_190
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi then
                return
            end
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end
            -- DECOMPILER ERROR at PC22: Confused about usage of register: R6 in 'UnsetPending'

            if CurUi:GetType() == "clsActivityCenterView" then
                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurUi:GetSevenActTab()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_191
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi then
                return
            end
            if CurUi:GetType() == "clsActivityCenterView" then
                return CurUi:IsSelectSevenActTab()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_192
            local Args = { ... }
            local CurUi = uiMgr:GetCurUi()
            if not CurUi then
                return
            end
            if CurUi:GetType() == "clsActivityCenterView" then
                return CurUi:GetSevenRewardsCanGet()
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_193
            local Args = { ... }
            local Index = Args[1]
            local CurUi = uiMgr:GetCurUi()
            if not CurUi then
                return
            end
            return CurUi.m_IsStartMatch
        end,
        function(API, GUIDE, ...)
            -- function num : 0_194
            local Args = { ... }
            return (team.TeamUtil):IsInTeam()
        end,
        function(API, GUIDE, ...)
            -- function num : 0_195
            do
                local Args = { ... }
                do
                    return (team.TeamMgr):GetPlayId() == tonumber(Args[1])
                end
                -- DECOMPILER ERROR: 1 unprocessed JMP targets
            end
        end,
        function(API, GUIDE, ...)
            -- function num : 0_196
            local Args = { ... }
            return team:TeamRecruitSettingShowInPlayId(11)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_197
            local Args = { ... }
            local CurScene = sceneMgr.s_CurScene
            if not CurScene then
                return
            end            -- DECOMPILER ERROR at PC14: Confused about usage of register: R5 in 'UnsetPending'


            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = team:GetTeamRecruitSettingPlayMenuItemTouch(11)
        end,
        function(API, GUIDE, ...)
            -- function num : 0_198
            local Args = { ... }
            for _, CardData in pairs((objdata.CardDataMgr):GetCardList()) do
                if CardData:HasRuneEquip() then
                    return CardData:GetId()
                end
            end
        end,
    },
    GuideSet = {
        ["BPµîçσ╝ò1"] = 12,
        ["BPµîçσ╝ò2"] = 13,
        ["jjcµîçσ╝ò"] = 3,
        ["Σ╕╗τ║┐µîçσ╝ò"] = 9,
        ["Σ╗╗σèíΦºªσÅæ"] = 7,
        ["σë»σìíΣ╜┐τö¿µîçσ╝ò"] = 6,
        ["σ¢óµ£¼Σ╗ïτ╗ì"] = 11,
        ["σ£░σ¢╛µîçσ╝ò"] = 4,
        ["σ«┐Φêìµîçσ╝ò"] = 2,
        ["µÅ┤σè⌐µîçσ╝ò"] = 5,
        ["µ▓╗σ«ëΦ╜»µîçσ╝\149"] = 1,
        ["τ¡ëτ║ºΦºªσÅæ"] = 8,
        ["Φè»τëçΦ╢àΘóæ"] = 10,
    },
    GuideSteps = {
        [10001] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_199
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»τ║┐)τé╣σ£░σ¢\190",
            TipsId = 20001,
            TipsOffset = { 100, -150 },
            WidgetName = "Σ╕╗τòîΘ¥óσ£░σ¢\190",
        },
        [10002] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_200
                do
                    local Args = { ... }
                    do
                        return (
                                not (API[17])(API, GUIDE, "σ£░σ¢╛_µÄóτ┤óΦ┐¢σ║ªτòîΘ¥ó")
                                and (API[17])(API, GUIDE, "σ£░σ¢╛τòîΘ¥ó")
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τé╣Σ╗╗σèíµîëΘÆ\174",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_201
                local Args = { ... }
                return (API[17])(API, GUIDE, "σ£░σ¢╛_µÄóτ┤óΦ┐¢σ║ªτòîΘ¥ó")
            end,
            WidgetName = "Σ╗╗σèíµîëΘÆ«",
        },
        [10003] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_202
                local Args = { ... }
                return not (API[82])(API, GUIDE)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_203
                local Args = { ... }
                if (API[17])(API, GUIDE, "σ£░σ¢╛τòîΘ¥ó") then
                    return (API[82])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ╗╢µù╢)Σ┐íσÅ╖σíöτë╣µò\136",
            NoClean = true,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_204
                local Args = { ... }
                return not (API[82])(API, GUIDE)
            end,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10004] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_205
                local Args = { ... }
                return (API[14])(API, GUIDE, "WorldMapView")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»τ║┐)τé╣µö»τ║\191",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_206
                local Args = { ... };
                (API[55])(API, GUIDE, 201009)
            end,
            TipsId = 20004,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ£░σ¢╛_Σ╕ûτòîΣ╗╗σèí",
        },
        [10005] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_207
                local Args = { ... }
                return (API[74])(API, GUIDE)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_208
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return not (API[74])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ¡ëσ╛àΣ╗╗σèíΦ»ªµâàσ╝╣τ¬ù",
            NoClean = true,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_209
                local Args = { ... }
                return (API[74])(API, GUIDE)
            end,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10006] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_210
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return not (API[37])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»τ║┐)τé╣σëìσ╛\128",
            TipsId = 20006,
            TipsOffset = { -345, 270 },
            WidgetName = "σ£░σ¢╛Σ╗╗σèíσëìσ╛ÇµîëΘÆ«",
        },
        [10011] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_211
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ┐½µì╖Σ╗╗σèíµá\143)",
            TipsId = 20011,
            TipsOffset = { 100, -150 },
            WidgetName = "Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_µ¥Ñτö╡",
        },
        [10012] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_212
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ┐½µì╖Σ╗╗σèíµá\1432)",
            TipsOffset = { 100, -150 },
            WidgetName = "Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_µ¥Ñτö╡",
        },
        [10031] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_213
                do
                    local Args = { ... }
                    do
                        return (API[4])(API, GUIDE, 1040)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë1-1)µÄÑΣ╗╗σè\161",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_214
                local Args = { ... }
                return (API[5])(API, GUIDE, 1040)
            end,
            TipsOffset = { 100, -150 },
            WidgetName = "Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_µ¥Ñτö╡",
        },
        [10032] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_215
                do
                    local Args = { ... }
                    do
                        return (API[5])(API, GUIDE, 1040)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë1-1)τé╣Σ╗╗σè\161",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_216
                local Args = { ... }
                return (API[17])(API, GUIDE, "σî║σƒƒΣ║ïΣ╗╢σ£░σ¢╛τòîΘ¥ó")
            end,
            TipsId = 20032,
            TipsOffset = { 0, 85 },
            WidgetName = "Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_µ¥Ñτö╡",
        },
        [10033] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_217
                do
                    local Args = { ... }
                    do
                        return ((API[47])(API, GUIDE, 1, 1, 1) or (API[16])(API, GUIDE)) and not (API[17])(
                            API,
                            GUIDE,
                            "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó"
                        )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë1-1)τé╣τ¼¼Σ╕\128Σ╕¬τ½ÖΣ╜\141",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_218
                local Args = { ... }
                return (API[47])(API, GUIDE, 1, 1, 1)
            end,
            TipsId = 20033,
            TipsOffset = { -40, 50 },
            WidgetName = "τ¼¼Σ╕ÇΣ╕¬Σ╜ìτ╜\174",
        },
        [10034] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_219
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") then
                    return not (API[47])(API, GUIDE, 124, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë1-1)Σ╕èΘÿ╡Aτ╗┐Φ░╖",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_220
                local Args = { ... };
                (API[48])(API, GUIDE, 124)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_221
                local Args = { ... }
                if not (API[47])(API, GUIDE, 1, 1, 1) then
                    return (API[47])(API, GUIDE, 124, 1)
                end
            end,
            TipsId = 20034,
            TipsOffset = { 0, 130 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜΦ«»σ╜ò_σìíτëî",
        },
        [10035] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_222
                do
                    local Args = { ... }
                    do
                        return ((API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") or (API[47])(
                            API,
                            GUIDE,
                            1,
                            1,
                            1
                        )) and not (API[17])(
                            API,
                            GUIDE,
                            "µ▓╗σ«ëσç║σç╗_Φªåτ¢ûΦ┐¢σ║ªΣ║îτ║ºσ╝╣τ¬ù"
                        )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë1-1)τé╣σç║σç\187",
            TipsOffset = { 0, 130 },
            WidgetName = "σç║σç╗",
        },
        [10041] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_223
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτ╗┐Φ░╖)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_224
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            TipsId = 20041,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10042] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_225
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτ╗┐Φ░╖)τé╣Φï▒Θ¢äApp",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_226
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            TipsId = 20042,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10043] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_227
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτ╗┐Φ░╖)τé╣Aτ╗┐Φ░╖",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_228
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_229
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            TipsId = 20043,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10044] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_230
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó") then
                    return (API[60])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτ╗┐Φ░╖)τé╣σìçτ║\167",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_231
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            TipsId = 20044,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_σìçτ║ºµîëΘÆ«",
        },
        [10045] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_232
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") then
                    return (API[60])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτ╗┐Φ░╖)τé╣Σ╕ÇΘö«σìçτ║\167",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_233
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            TipsId = 20045,
            TipsOffset = { -100, 190 },
            WidgetName = "Φï▒Θ¢äσìçτ║º_Σ╕\128Θö«σìçτ║\167",
        },
        [10046] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_234
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[57])(API, GUIDE, "Btn_Exercise")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτ╗┐Φ░╖)τé╣τí«Φ«\164",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_235
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            WidgetName = "τí«Φ«ñσìçτ║º_σìçτ║º",
        },
        [10047] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_236
                local Args = { ... }
                if (API[80])(API, GUIDE, 124, 2) then
                    return not (API[121])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτ╗┐Φ░╖)τé╣µáçΘóÿΦ┐öσ¢\158",
            TipsId = 20047,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10051] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_237
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_238
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            TipsId = 20051,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10052] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_239
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣Φï▒Θ¢äApp",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_240
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            TipsId = 20052,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10053] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_241
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣Aτ╗┐Φ░╖",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_242
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_243
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            TipsId = 20053,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10054] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_244
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣σìçτ║\167",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_245
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_σìçτ║ºµîëΘÆ«",
        },
        [10055] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_246
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") then
                    return not (API[171])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣Θö╗τé╝σÖ¿µ¥\144",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_247
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[177])(API, GUIDE, 124)
                end
            end,
            TipsId = 20055,
            TipsOffset = { -80, 45 },
            WidgetName = "τ¼¼Σ╕ÇΣ╕¬σÖ¿µ¥\144",
        },
        [10056] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_248
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") then
                    return (API[17])(API, GUIDE, "Σ╜┐τö¿σÖ¿µ¥ÉτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣Σ╜┐τö\168",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_249
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[177])(API, GUIDE, 124)
                end
            end,
            TipsId = 20056,
            TipsOffset = { 100, 50 },
            WidgetName = "Σ╜┐τö¿σÖ¿µ¥ÉµîëΘÆ«",
        },
        [10057] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_250
                local Args = { ... }
                return not (API[171])(API, GUIDE)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_251
                do
                    local Args = { ... }
                    do
                        return (API[57])(API, GUIDE, "Btn_Exercise") and (((API[59])(API, GUIDE, 124, 1) or (API[177])(
                            API,
                            GUIDE,
                            124
                        )) and (API[171])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τ¡ëσ╛àΣ╜┐τö¿τ╗ôµ¥ƒ",
            NoClean = true,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_252
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) and (API[177])(API, GUIDE, 124) then
                    return not (API[171])(API, GUIDE)
                end
            end,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10058] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_253
                do
                    local Args = { ... }
                    do
                        return (API[57])(API, GUIDE, "Btn_Exercise") and (((API[59])(API, GUIDE, 124, 1) or (API[177])(
                            API,
                            GUIDE,
                            124
                        )) and not (API[171])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣Φ┐¢Θÿ\182",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_254
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            TipsId = 20058,
            TipsOffset = { -40, 115 },
            WidgetName = "Θö╗τé╝τòîΘ¥ó_Φ┐¢Θÿ╢µîëΘÆ«",
        },
        [10059] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_255
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") and (API[59])(API, GUIDE, 124, 1) then
                    return not (API[171])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣σêçµì\162",
            TipsId = 20059,
            TipsOffset = { -40, -105 },
            WidgetName = "Θö╗τé╝τòîΘ¥ó_σêçµìóµîëΘÆ«",
        },
        [10060] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_256
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "σ┐½Θ\128ƒσêçµìóΦï▒Θ¢äτòîΘ¥\162")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖Θö╗τé╝)τé╣τö╡µ░\148",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_257
                local Args = { ... };
                (API[172])(API, GUIDE, 110)
            end,
            TipsId = 20060,
            TipsOffset = { -320, -170 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10061] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_258
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖σà▒Θ╕ú)τé╣µëïµ£\186",
            TipsId = 20061,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10062] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_259
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖σà▒Θ╕ú)τé╣Φï▒Θ¢äApp",
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10063] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_260
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖σà▒Θ╕ú)τé╣Aτ╗┐Φ░╖",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_261
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            TipsId = 20063,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10064] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_262
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖σà▒Θ╕ú)σà╗µêÉτé╣σà▒Θ╕\163",
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_σà▒Θ╕úµîëΘÆ«",
        },
        [10065] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_263
                local Args = { ... }
                return (API[57])(API, GUIDE, "Btn_Resonate")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖σà▒Θ╕ú)τé╣σëìσ╛\128",
            TipsId = 20065,
            TipsOffset = { -80, 45 },
            WidgetName = "σà▒Θ╕úΣ╕╗τòîΘ¥ó_σëìσ╛ÇµîëΘÆ«1",
        },
        [10066] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_264
                local Args = { ... }
                if (API[17])(API, GUIDE, "σà▒Θ╕úσ¡ÉτòîΘ¥\162") then
                    return not (API[64])(API, GUIDE, 124, 0, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖σà▒Θ╕ú)τé╣σà▒Θ╕\163",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_265
                local Args = { ... }
                return (API[64])(API, GUIDE, 124, 0, 1)
            end,
            TipsId = 20066,
            TipsOffset = { -100, 190 },
            WidgetName = "σà▒Θ╕úσ¡ÉτòîΘ¥ó_σà▒Θ╕úµîëΘÆ«",
        },
        [10067] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_266
                do
                    local Args = { ... }
                    do
                        return (API[64])(API, GUIDE, 124, 0, 1) and (((API[17])(
                            API,
                            GUIDE,
                            "σà▒Θ╕úσ¡ÉτòîΘ¥\162"
                        ) or (API[17])(API, GUIDE, "σà▒Θ╕úσ▒òτñ║τòîΘ¥ó")) and not (API[17])(
                            API,
                            GUIDE,
                            "µû░Φï▒Θ¢äτÖ╗σ£║τòîΘ¥\162"
                        ) and not (API[17])(
                            API,
                            GUIDE,
                            "ΘÇÜτö¿σÑûσè▒σ╝╣τ¬ù"
                        ) and not (API[65])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╗┐Φ░╖σà▒Θ╕ú)τé╣µáçΘóÿΦ┐öσ¢\158",
            TipsId = 20047,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10069] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_267
                local Args = { ... }
                if
                    (API[57])(API, GUIDE, "Btn_Exercise")
                    and (API[60])(API, GUIDE)
                    and (API[59])(API, GUIDE, 124, 1)
                then
                    return not (API[171])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτ╗┐Φ░╖)τé╣τö╡µ░öΣ╕ÇΘö«σìçτ║\167",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_268
                local Args = { ... }
                if not (API[59])(API, GUIDE, 110, 1) and not (API[80])(API, GUIDE, 110, 2) then
                    return not (API[60])(API, GUIDE)
                end
            end,
            TipsId = 20045,
            TipsOffset = { -100, 190 },
            WidgetName = "Φï▒Θ¢äσìçτ║º_Σ╕\128Θö«σìçτ║\167",
        },
        [10071] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_269
                do
                    local Args = { ... }
                    do
                        return (API[4])(API, GUIDE, 1120)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                                and not (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó")
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë2-1)µÄÑΣ╗╗σè\161",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_270
                local Args = { ... }
                return (API[5])(API, GUIDE, 1120)
            end,
            TipsOffset = { 100, -150 },
            WidgetName = "Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_2Φí\140",
        },
        [10072] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_271
                do
                    local Args = { ... }
                    do
                        return (API[5])(API, GUIDE, 1120)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë2-1)µÄ¿Θ\128\129",
            TipsId = 20072,
            TipsOffset = { 0, 85 },
            WidgetName = "Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_2Φí\140",
        },
        [10073] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_272
                do
                    local Args = { ... }
                    do
                        return (API[17])(API, GUIDE, "Σ╕╗τòîΘ¥ó_σî║σƒƒΣ║ïΣ╗╢τòîΘ¥ó")
                            and (
                                not (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó")
                                and not (API[47])(API, GUIDE, 1, 1, 1)
                                and (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë2-1)τé╣τ¼¼Σ╕\128Σ╕¬τ½ÖΣ╜\141",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_273
                local Args = { ... }
                return (API[47])(API, GUIDE, 1, 1, 1)
            end,
            TipsId = 20073,
            TipsOffset = { -40, 50 },
            WidgetName = "τ¼¼Σ╕ÇΣ╕¬Σ╜ìτ╜\174",
        },
        [10074] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_274
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") then
                    return not (API[47])(API, GUIDE, 124, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë2-1)τ½ÖΣ╜ì1Σ╕èΘÿ╡Aτ╗┐Φ░╖",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_275
                local Args = { ... };
                (API[48])(API, GUIDE, 124)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_276
                local Args = { ... }
                if not (API[47])(API, GUIDE, 1, 1, 1) then
                    return (API[47])(API, GUIDE, 124, 1)
                end
            end,
            TipsOffset = { 0, 130 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜΦ«»σ╜ò_σìíτëî",
        },
        [10075] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_277
                do
                    local Args = { ... }
                    do
                        return (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") and (not (API[47])(
                            API,
                            GUIDE,
                            110,
                            1
                        ) and (API[47])(API, GUIDE, 124, 1))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë2-1)τ½ÖΣ╜ì1Σ╕èΘÿ╡τö╡µ░ö",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_278
                local Args = { ... };
                (API[48])(API, GUIDE, 110)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_279
                local Args = { ... }
                if not (API[47])(API, GUIDE, 1, 1, 1) then
                    return (API[47])(API, GUIDE, 110, 1)
                end
            end,
            TipsOffset = { 0, 130 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜΦ«»σ╜ò_σìíτëî",
        },
        [10076] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_280
                do
                    local Args = { ... }
                    do
                        return (API[17])(API, GUIDE, "Σ╕╗τòîΘ¥ó_σî║σƒƒΣ║ïΣ╗╢τòîΘ¥ó")
                            and (
                                (
                                    (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó")
                                    or (API[47])(API, GUIDE, 1, 1, 1)
                                )
                                and not (API[47])(API, GUIDE, 2, 1, 1)
                                and (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë2-1)τé╣τ¼¼Σ║îΣ╕¬τ½ÖΣ╜ì",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_281
                local Args = { ... }
                return (API[47])(API, GUIDE, 2, 1, 1)
            end,
            TipsId = 20076,
            TipsOffset = { -40, 50 },
            WidgetName = "τ¼¼Σ║îΣ╕¬Σ╜ìτ╜\174",
        },
        [10077] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_282
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") then
                    return not (API[47])(API, GUIDE, 110, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë2-1)τ½ÖΣ╜ì2Σ╕èΘÿ╡τö╡µ░ö",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_283
                local Args = { ... };
                (API[48])(API, GUIDE, 110)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_284
                local Args = { ... }
                if not (API[47])(API, GUIDE, 2, 1, 1) then
                    return (API[47])(API, GUIDE, 110, 1)
                end
            end,
            TipsId = 20077,
            TipsOffset = { 0, 130 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜΦ«»σ╜ò_σìíτëî",
        },
        [10078] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_285
                do
                    local Args = { ... }
                    do
                        return (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") and (not (API[47])(
                            API,
                            GUIDE,
                            124,
                            1
                        ) and (API[47])(API, GUIDE, 110, 1))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ▓╗σ«ë2-1)τ½ÖΣ╜ì2Σ╕èΘÿ╡Aτ╗┐Φ░╖",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_286
                local Args = { ... };
                (API[48])(API, GUIDE, 124)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_287
                local Args = { ... }
                if not (API[47])(API, GUIDE, 2, 1, 1) then
                    return (API[47])(API, GUIDE, 124, 1)
                end
            end,
            TipsId = 20078,
            TipsOffset = { 0, 130 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜΦ«»σ╜ò_σìíτëî",
        },
        [10081] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_288
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µè\128Φâ\189)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_289
                local Args = { ... }
                return (API[62])(API, GUIDE, 124, 102401, 1)
            end,
            TipsId = 20081,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10082] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_290
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µè\128Φâ\189)τé╣Φï▒Θ¢äApp",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_291
                local Args = { ... }
                return (API[62])(API, GUIDE, 124, 102401, 1)
            end,
            TipsId = 20082,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10083] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_292
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µè\128Φâ\189)τé╣Aτ╗┐Φ░╖",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_293
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_294
                local Args = { ... }
                return (API[62])(API, GUIDE, 124, 102401, 1)
            end,
            TipsId = 20083,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10084] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_295
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µè\128Φâ\189)τé╣µèÇΦâ\189",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_296
                local Args = { ... }
                return (API[62])(API, GUIDE, 124, 102401, 1)
            end,
            TipsId = 20084,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_µè\128Φâ╜µîëΘÆ\174",
        },
        [10085] = {
            AdaptStyle = 6,
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_297
                local Args = { ... }
                return (API[180])(API, GUIDE)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_298
                do
                    local Args = { ... }
                    do
                        return (API[57])(API, GUIDE, "Btn_Skill") and (not (API[180])(API, GUIDE) and not (API[62])(
                            API,
                            GUIDE,
                            124,
                            102401,
                            1
                        ))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µè\128Φâ\189)ΘÇëΣ╕¡µè\128Φâ\189",
            NoClean = true,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_299
                local Args = { ... }
                return (API[62])(API, GUIDE, 124, 102401, 1)
            end,
            TipsId = 20085,
            TipsOffset = { 80, -90 },
            WidgetName = "τêåΦ▒¬µè\128Φâ\189",
        },
        [10086] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_300
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Skill") and (API[180])(API, GUIDE) then
                    return not (API[62])(API, GUIDE, 124, 102401, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µè\128Φâ\189)σìçτ║ºµè\128Φâ\189",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_301
                local Args = { ... }
                return (API[62])(API, GUIDE, 124, 102401, 1)
            end,
            TipsId = 20086,
            TipsOffset = { 260, 105 },
            WidgetName = "µè\128Φâ╜τòîΘ¥ó_σìçτ║ºµîëΘÆ«",
        },
        [10087] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_302
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Skill") then
                    return (API[62])(API, GUIDE, 124, 102401, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µè\128Φâ\189)τé╣µáçΘóÿΦ┐öσ¢\158",
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10101] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_303
                do
                    local Args = { ... }
                    do
                        return (API[13])(API, GUIDE, "MainScene") and (not (API[37])(API, GUIDE) and not (API[15])(
                            API,
                            GUIDE
                        ) and not (API[53])(API, GUIDE) and not (API[16])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ⌐Φ╡ï)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_304
                local Args = { ... }
                return (API[63])(API, GUIDE, 124, 12401, 1)
            end,
            TipsId = 20101,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10102] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_305
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ⌐Φ╡ï)τé╣Φï▒Θ¢äApp",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_306
                local Args = { ... }
                return (API[63])(API, GUIDE, 124, 12401, 1)
            end,
            TipsId = 20102,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10103] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_307
                local Args = { ... }
                if (API[13])(API, GUIDE, "MainScene") then
                    return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ⌐Φ╡ï)τé╣Aτ╗┐Φ░╖",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_308
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_309
                local Args = { ... }
                return (API[63])(API, GUIDE, 124, 12401, 1)
            end,
            TipsId = 20103,
            TipsOffset = { 0, 250 },
            WidgetName = "Σ╕╗τòîΘ¥ó_µîçσ╝òΦèéτé╣_Σ╜úσà╡",
        },
        [10104] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_310
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ⌐Φ╡ï)τé╣σñ⌐Φ╡\139",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_311
                local Args = { ... }
                return (API[63])(API, GUIDE, 124, 12401, 1)
            end,
            TipsId = 20104,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_σñ⌐Φ╡ïµîëΘÆ«",
        },
        [10105] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_312
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[57])(API, GUIDE, "Btn_Talent")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ⌐Φ╡ï)ΘÇëΣ╕¡τ¼¼Σ╕ÇΣ╕¬σñ⌐Φ╡\139",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_313
                local Args = { ... }
                return (API[63])(API, GUIDE, 124, 12401, 1)
            end,
            TipsOffset = { 0, -125 },
            WidgetName = "σñ⌐Φ╡ïτòîΘ¥ó_Speedσñ⌐Φ╡ï",
        },
        [10106] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_314
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[57])(API, GUIDE, "Btn_Talent")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ⌐Φ╡ï)µ┐\128µ┤╗σñ⌐Φ╡\139",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_315
                local Args = { ... }
                return (API[63])(API, GUIDE, 124, 12401, 1)
            end,
            TipsId = 20106,
            TipsOffset = { -115, 160 },
            WidgetName = "σñ⌐Φ╡ïτòîΘ¥ó_µ┐\128µ┤╗µîëΘÆ\174",
        },
        [10107] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_316
                local Args = { ... }
                if (API[63])(API, GUIDE, 124, 12401, 1) and (API[57])(API, GUIDE, "Btn_Talent") then
                    return not (API[17])(API, GUIDE, "µ┐\128µ┤╗σñ⌐Φ╡ïτòîΘ¥\162")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ⌐Φ╡ï)τé╣µáçΘóÿΦ┐öσ¢\158",
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10131] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_317
                do
                    local Args = { ... }
                    do
                        return (API[13])(API, GUIDE, "MainScene") and (not (API[37])(API, GUIDE) and not (API[15])(
                            API,
                            GUIDE
                        ) and not (API[53])(API, GUIDE) and not (API[16])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äµùÑσ╕╕)τé╣σ£░σ¢\190",
            TipsId = 20131,
            TipsOffset = { 100, -150 },
            WidgetName = "Σ╕╗τòîΘ¥óσ£░σ¢\190",
        },
        [10132] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_318
                local Args = { ... }
                return (API[14])(API, GUIDE, "WorldMapView")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äµùÑσ╕╕)τé╣µùÑσ╕╕Θí╡τ¡╛µîëΘÆ\174",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_319
                local Args = { ... };
                (API[111])(API, GUIDE, 2)
            end,
            TipsOffset = { 0, 0 },
            WidgetName = "σƒÄσ╕éτ¡ëτ║º_Φï▒Θ¢äµùÑσ╕╕Θí╡τ¡╛",
        },
        [10133] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_320
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "σ£░σ¢╛_µÄóτ┤óΦ┐¢σ║ªτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äµùÑσ╕╕)τé╣σú░µ£¢Σ╗╗σèíµîëΘÆ\174",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_321
                local Args = { ... };
                (API[73])(API, GUIDE)
            end,
            TipsId = 20133,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ£░σ¢╛_τñ╝τë⌐",
        },
        [10134] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_322
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "σú░µ£¢Σ╗╗σèíτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äµùÑσ╕╕)µƒÑτ£ïτñ╝τë⌐σÑûσè▒ΘóäΦºê",
            TipsId = 20134,
            TipsOffset = { 0, 160 },
            WidgetName = "σú░µ£¢τòîΘ¥ó_τñ╝τë⌐",
        },
        [10136] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_323
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "σú░µ£¢Σ╗╗σèíτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äµùÑσ╕╕)σà│Θù¡σú░µ£¢Σ╗╗σèí",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_324
                local Args = { ... }
                return (API[17])(API, GUIDE, "σú░µ£¢τñ╝τë⌐_σÑûσè▒ΘóäΦºêτòîΘ¥ó")
            end,
            TipsId = 20136,
            TipsOffset = { 160, -150 },
            WidgetName = "σú░µ£¢τòîΘ¥ó_σà│Θù¡µîëΘÆ«",
        },
        [10137] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_325
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return not (API[17])(API, GUIDE, "Σ╕ûτòîΣ╗╗σèíΦ»ªµâà")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äµùÑσ╕╕)τé╣σç╗τ¼¼Σ╕ÇΣ╕¬Σ╕ûτòîΣ╗╗σè\161",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_326
                local Args = { ... };
                (API[71])(API, GUIDE)
            end,
            TipsId = 20137,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ£░σ¢╛_Σ╕ûτòîΣ╗╗σèí",
        },
        [10138] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_327
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "Σ╕ûτòîΣ╗╗σèíΦ»ªµâà")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äµùÑσ╕╕)τé╣σëìσ╛\128",
            TipsOffset = { 0, 260 },
            WidgetName = "Σ╕ûτòîΣ╗╗σèí_σëìσ╛ÇµîëΘÆ«",
        },
        [10141] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_328
                do
                    local Args = { ... }
                    do
                        return (API[13])(API, GUIDE, "MainScene") and (not (API[37])(API, GUIDE) and not (API[15])(
                            API,
                            GUIDE
                        ) and not (API[53])(API, GUIDE) and not (API[16])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128τ¢«µáç)τé╣σàÑσÅ\163",
            TipsId = 20141,
            TipsOffset = { 60, -160 },
            WidgetName = "Φï▒Θ¢äΣ╣ïΦ╖»σàÑσÅú",
        },
        [10142] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_329
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "Σ║ïσèíµë\128τòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128τ¢«µáç)τé╣µ»Åµù\165",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_330
                local Args = { ... };
                (API[179])(API, GUIDE, 2)
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10143] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_331
                local Args = { ... }
                if (API[17])(API, GUIDE, "Σ║ïσèíµë\128τòîΘ¥ó") then
                    return (API[78])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128τ¢«µáç)ΘóåσÅûµ»ÅµùÑσÑûσè▒",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_332
                local Args = { ... }
                return (API[79])(API, GUIDE, 10)
            end,
            TipsId = 20142,
            TipsOffset = { 290, -10 },
            WidgetName = "Σ║ïσèíµë\128_µ»ÅµùÑτ¢«µáç_ΘóåσÅû",
        },
        [10144] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_333
                local Args = { ... }
                return (API[79])(API, GUIDE, 10)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128τ¢«µáç)ΘóåσÅûµ┤╗Φ╖âσ«¥τ«▒1",
            TipsId = 20143,
            WidgetName = "Σ║ïσèíµë\128_µ┤╗Φ╖âσÑûσè▒1",
        },
        [10145] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_334
                local Args = { ... }
                if (API[17])(API, GUIDE, "Σ║ïσèíµë\128τòîΘ¥ó") then
                    return (API[76])(API, GUIDE, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128τ¢«µáç)τé╣µáçΘóÿΦ┐öσ¢\158",
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10181] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_335
                do
                    local Args = { ... }
                    do
                        return (API[13])(API, GUIDE, "MainScene") and (not (API[37])(API, GUIDE) and not (API[15])(
                            API,
                            GUIDE
                        ) and not (API[53])(API, GUIDE) and not (API[16])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëç)τé╣µëïµ£\186",
            TipsId = 20181,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10182] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_336
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëç)τé╣Φï▒Θ¢äApp",
            TipsId = 20182,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10183] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_337
                local Args = { ... }
                if (API[13])(API, GUIDE, "MainScene") then
                    return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëç)τé╣τ╗┐Φ░\183",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_338
                local Args = { ... };
                (API[50])(API, GUIDE, (API[199])(API, GUIDE) or 124)
            end,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10184] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_339
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëç)τé╣Φè»τë\135",
            TipsId = 20184,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_Φè»τëçµîëΘÆ«",
        },
        [10185] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_340
                local Args = { ... }
                return (API[57])(API, GUIDE, "Btn_Exclusive")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëç)τé╣Φè»τëçτ¼¼Σ╕\128Σ╕¬µº╜",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_341
                local Args = { ... }
                if not (API[199])(API, GUIDE) then
                    return not (API[150])(API, GUIDE, 9000111)
                end
            end,
            TipsId = 20185,
            TipsOffset = { 0, 0 },
            WidgetName = "Φè»τëçτòîΘ¥ó_µº\189",
        },
        [10186] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_342
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[57])(API, GUIDE, "Btn_Exclusive")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëç)τé╣Φâîσîàτ¼¼Σ╕\128Σ╕¬Φè»τë\135",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_343
                local Args = { ... }
                if not (API[199])(API, GUIDE) then
                    return not (API[150])(API, GUIDE, 9000111)
                end
            end,
            TipsId = 20186,
            TipsOffset = { 0, 85 },
            WidgetName = "Φè»τëçτòîΘ¥ó_τ¼¼Σ╕ÇΣ╕¬Φè»τë\135",
        },
        [10187] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_344
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φè»τëçσåàσ«╣")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëç)ΦúàσñçΦè»τëç",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_345
                local Args = { ... }
                if not (API[199])(API, GUIDE) then
                    return not (API[150])(API, GUIDE, 9000111)
                end
            end,
            TipsId = 20187,
            TipsOffset = { 205, 105 },
            WidgetName = "Φè»τëçσåàσ«╣_Φúàσñç",
        },
        [10188] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_346
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[81])(API, GUIDE, 124, 1, 0)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëç)τé╣µáçΘóÿΦ┐öσ¢\158",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_347
                local Args = { ... }
                if not (API[199])(API, GUIDE) then
                    return not (API[150])(API, GUIDE, 9000111)
                end
            end,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10201] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_348
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ£µêÿ)τé╣µëïµ£\186",
            TipsId = 20201,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10202] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_349
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ£µêÿ)τé╣µêÿµû\151",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µêÿµûùµîëΘÆ«",
        },
        [10203] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_350
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[53])(API, GUIDE) then
                    return (API[115])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ£µêÿ)τé╣σñ£µê\152",
            TipsId = 20203,
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_σñ£µêÿµîëΘÆ«",
        },
        [10204] = {
            AdaptStyle = 1,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_351
                local Args = { ... }
                return (API[17])(API, GUIDE, "σÅ│Σ╛ºσñ£µêÿµîæµêÿτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ£µêÿ)µëôσ╝Çσñ£µêÿσòåσ║ù",
            TipsId = 20204,
            TipsOffset = { -200, 155 },
            WidgetName = "σñ£µêÿ_σñ£µêÿσòåσ║ù",
        },
        [10205] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_352
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "σòåσƒÄτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ£µêÿ)Φ┐öσ¢₧σñ£µêÿτòîΘ¥ó",
            TipsId = 20205,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«",
        },
        [10206] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_353
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "σÅ│Σ╛ºσñ£µêÿµîæµêÿτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σñ£µêÿ)σ╝\128σºïσñ£µê\152",
            TipsId = 20206,
            TipsOffset = { 35, 160 },
            WidgetName = "σÅ│Σ╛ºσñ£µêÿµîæµêÿτòîΘ¥ó_µîæµêÿ",
        },
        [10211] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_354
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)τé╣σ£░σ¢\190",
            TipsId = 20211,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10212] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_355
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)τé╣σìÅΣ╜£µîëΘÆ\174",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_σìÅΣ╜£µîëΘÆ«",
        },
        [10213] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_356
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[53])(API, GUIDE) then
                    return (API[116])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)τé╣Σ║ïσèíµëÇΦÇâµá╕",
            TipsId = 20213,
            TipsOffset = { -30, 0 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Σ║ïσèíµë\128ΦÇâµá╕µîëΘÆ«",
        },
        [10214] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_357
                local Args = { ... }
                return (API[17])(API, GUIDE, "Σ║ïσèíµë\128ΦÇâµá╕τòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)τ╗äΘÿƒσÅéσèá",
            TipsId = 20214,
            TipsOffset = { 165, 175 },
            WidgetName = "Σ║ïσèíµë\128ΦÇâµá╕_τ╗äΘÿƒ",
        },
        [10215] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_358
                local Args = { ... }
                return (API[17])(API, GUIDE, "σìÅΣ╜£Σ╕¡σ┐âτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)σê¢σ╗║ΘÿƒΣ╝ì",
            TipsId = 20215,
            TipsOffset = { 0, 160 },
            WidgetName = "σìÅΣ╜£Σ╕¡σ┐â_σê¢σ╗║ΘÿƒΣ╝ì",
        },
        [10216] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_359
                local Args = { ... }
                return (API[17])(API, GUIDE, "τ╗äΘÿƒτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)µÅÆσàÑσç¡Φ»ü",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_360
                local Args = { ... };
                (API[129])(API, GUIDE)
            end,
            TipsOffset = { 0, -100 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ╗äΘÿƒ_µÅÆσàÑσç¡Φ»ü",
        },
        [10217] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_361
                local Args = { ... }
                return (API[128])(API, GUIDE)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_362
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[17])(API, GUIDE, "τ╗äΘÿƒτòîΘ¥ó") then
                    return not (API[128])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)τ¡ëσ╛àµ╗íΘÿƒ",
            NoClean = true,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_363
                local Args = { ... }
                return (API[128])(API, GUIDE)
            end,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10218] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_364
                local Args = { ... }
                if (API[17])(API, GUIDE, "τ╗äΘÿƒτòîΘ¥ó") and (API[128])(API, GUIDE) then
                    return not (API[131])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)σç║σç╗",
            TipsOffset = { 35, 160 },
            WidgetName = "τ╗äΘÿƒτòîΘ¥ó_σç║σç╗",
        },
        [10219] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_365
                local Args = { ... }
                return (API[17])(API, GUIDE, "Σ║ïσèíµë\128ΦÇâµá╕τòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)tip",
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«",
        },
        [10221] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_366
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µêÉσ░▒)τé╣µëïµ£\186",
            TipsId = 20221,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10222] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_367
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µêÉσ░▒)τé╣µêÉσ░▒app",
            TipsOffset = { 0, 0 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σ╖ª_µêÉσ░▒µîëΘÆ«",
        },
        [10223] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_368
                local Args = { ... }
                return (API[17])(API, GUIDE, "µêÉσ░▒τòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µêÉσ░▒)τé╣µ£Çµû░σ«îµêÉτÜäµêÉσ░▒",
            TipsId = 20223,
            TipsOffset = { 215, -120 },
            WidgetName = "µ£\128µû░σ«îµêÉµêÉσ░▒_τ¼¼Σ╕ÇΣ╕\1701",
        },
        [10224] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_369
                local Args = { ... }
                return (API[17])(API, GUIDE, "µêÉσ░▒σêåτ▒╗Θí\181")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µêÉσ░▒)ΘóåσÅûτ¼\1721Σ╕¬µêÉσ░▒τÜäσÑûσè▒",
            TipsId = 20224,
            TipsOffset = { 0, 240 },
            WidgetName = "ΘóåσÅûσÑûσè▒_τ¼¼Σ╕ÇΣ╕\1701",
        },
        [10225] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_370
                local Args = { ... }
                return (API[11])(API, GUIDE)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µêÉσ░▒)τé╣µáçΘóÿΦ┐öσ¢\158",
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10231] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_371
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µëïµ£\186",
            TipsId = 20231,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10232] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_372
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µö»µÅ┤Φúàσñçapp",
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µö»µÅ┤ΦúàσñçµîëΘÆ«",
        },
        [10233] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_373
                local Args = { ... }
                return (API[17])(API, GUIDE, "ΦúàσñçτòîΘ¥ó_Σ╗ôσ║ô")
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_374
                local Args = { ... }
                return (API[11])(API, GUIDE)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τ¡ëσ╛àµëôσ╝ÇΣ╗ôσ║ô",
            NoClean = true,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10234] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_375
                local Args = { ... }
                return (API[17])(API, GUIDE, "ΦúàσñçτòîΘ¥ó_Σ╗ôσ║ô")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣σ╖ªΦ╛╣Θâ¿Σ╜\1411",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_376
                local Args = { ... }
                if not (API[17])(API, GUIDE, "ΦúàσñçτòîΘ¥ó_ΦúàσñçΦ»ªµâà") then
                    return (API[86])(API, GUIDE, 4)
                end
            end,
            StepDelay = 0.5,
            TipsId = 20234,
            TipsOffset = { 0, 0 },
            WidgetName = "Σ╗ôσ║ô_τ¼\1724Σ╕¬µá╝σ¡\1441",
        },
        [10235] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_377
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "ΦúàσñçτòîΘ¥ó_Σ╗ôσ║ô")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣σÅ│Φ╛╣τ¼¼1Σ╕¬Φúàσñ\135",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_378
                local Args = { ... }
                if not (API[17])(API, GUIDE, "ΦúàσñçτòîΘ¥ó_ΦúàσñçΦ»ªµâà") then
                    return (API[86])(API, GUIDE, 4)
                end
            end,
            WidgetName = "Σ╗ôσ║ô_τ¼\1721Σ╗╢Φúàσñ\1351",
        },
        [10236] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_379
                local Args = { ... }
                if (API[17])(API, GUIDE, "ΦúàσñçτòîΘ¥ó_ΦúàσñçΦ»ªµâà") then
                    return not (API[86])(API, GUIDE, 4)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τ⌐┐µê┤Φúàσñç",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_380
                local Args = { ... };
                (API[87])(API, GUIDE)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_381
                local Args = { ... }
                return (API[86])(API, GUIDE, 4)
            end,
            TipsId = 20236,
            TipsOffset = { 255, 65 },
            WidgetName = "ΦúàσñçΦ»ªµâà_τ⌐┐µê┤",
        },
        [10237] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_382
                local Args = { ... }
                if
                    (API[86])(API, GUIDE, 4)
                    and (API[14])(API, GUIDE, "EquipView")
                    and not (API[17])(API, GUIDE, "ΦúàσñçτòîΘ¥ó_Σ╗ôσ║ô")
                then
                    return not (API[93])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ╝║σîûΦúàσñç)τé╣σ╝║σîûΘí╡τ¡\190",
            TipsId = 20237,
            TipsOffset = { -125, -130 },
            WidgetName = "ΦúàσñçτòîΘ¥ó_σ╝║σîûΘí╡τ¡╛",
        },
        [10238] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_383
                local Args = { ... }
                if (API[86])(API, GUIDE, 4) and (API[17])(API, GUIDE, "Φúàσñçσ╝║σîûτòîΘ¥ó") then
                    return not (API[94])(API, GUIDE, 4, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ╝║σîûΦúàσñç)τé╣σ╝║σî\150",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_384
                local Args = { ... }
                return (API[94])(API, GUIDE, 4, 1)
            end,
            StepDelay = 0.5,
            TipsOffset = { 340, 120 },
            WidgetName = "Φúàσñçσ╝║σîûτòîΘ¥ó_σ╝║σîûµîëΘÆ«",
        },
        [10239] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_385
                local Args = { ... }
                if (API[86])(API, GUIDE, 4) then
                    return (API[94])(API, GUIDE, 4, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µáçΘóÿΦ┐öσ¢\158",
            TipsId = 20239,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10241] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_386
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äσëºσ£║)τé╣µëïµ£\186",
            TipsId = 20241,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10242] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_387
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äσëºσ£║)τé╣µêÿµû\151",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µêÿµûùµîëΘÆ«",
        },
        [10243] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_388
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[53])(API, GUIDE) then
                    return (API[115])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äσëºσ£║)τé╣Φï▒Θ¢äσëºσ£\186",
            TipsId = 20243,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µíúµíêσ║ôµîëΘÆ\174",
        },
        [10244] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_389
                local Args = { ... }
                return (API[133])(API, GUIDE)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_390
                local Args = { ... }
                return (API[17])(
                    API,
                    GUIDE,
                    "σëºσ£║τòîΘ¥ó_Σ╕╗τòîΘ¥óτº╗σè¿σàâτ┤\160"
                )
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äσëºσ£║)τº╗σè¿Φç│µîçσ╝òτ½áΦè\130",
            NoClean = true,
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_391
                local Args = { ... };
                (API[132])(API, GUIDE, 300201)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_392
                local Args = { ... }
                return (API[133])(API, GUIDE)
            end,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10245] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_393
                local Args = { ... }
                if
                    (API[17])(API, GUIDE, "σëºσ£║τòîΘ¥ó_Σ╕╗τòîΘ¥óτº╗σè¿σàâτ┤\160")
                then
                    return not (API[17])(API, GUIDE, "σëºσ£║τòîΘ¥ó_σëºµâàΦ»ªµâàσ╝╣τ¬ù")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äσëºσ£║)τé╣σç╗τ½áΦèéµîëΘÆ«",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_394
                local Args = { ... };
                (API[134])(API, GUIDE)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_395
                local Args = { ... }
                return (API[17])(API, GUIDE, "σëºσ£║τòîΘ¥ó_σëºµâàΦ»ªµâàσ╝╣τ¬ù")
            end,
            TipsId = 20245,
            TipsOffset = { 0, 260 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σëºσ£║_τ½áΦèéµîëΘÆ«",
        },
        [10246] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_396
                local Args = { ... }
                if (API[17])(API, GUIDE, "σëºσ£║τòîΘ¥ó_σëºµâàΦ»ªµâàσ╝╣τ¬ù") then
                    return not (API[135])(API, GUIDE, 300201)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äσëºσ£║)τé╣σç╗σà│σìíΘí╡τ¡╛",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_397
                local Args = { ... };
                (API[136])(API, GUIDE, 300201)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_398
                local Args = { ... }
                return (API[135])(API, GUIDE, 300201)
            end,
            TipsOffset = { 80, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σëºσ£║_σà│σìíµîëΘÆ«",
        },
        [10247] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_399
                local Args = { ... }
                return (API[17])(API, GUIDE, "σëºσ£║τòîΘ¥ó_σëºµâàΦ»ªµâàσ╝╣τ¬ù")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äσëºσ£║)σëºµâàΦ»ªµâàσ╝╣τ¬ùτé╣Φ┐¢σà\165",
            TipsOffset = { 270, 15 },
            WidgetName = "σëºµâàΦ»ªµâàσ╝╣τ¬ù_Φ┐¢σàÑµîëΘÆ«",
        },
        [10248] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_400
                local Args = { ... }
                return (API[17])(
                    API,
                    GUIDE,
                    "σëºσ£║τòîΘ¥ó_Σ╕╗τòîΘ¥óτº╗σè¿σàâτ┤\160"
                )
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äσëºσ£║)σÑûσè▒ΘóäΦºêµÅÉτñ║",
            TipsId = 20248,
            WidgetName = "σëºσ£║Σ╕╗τòîΘ¥ó_σÑûσè▒ΘóäΦºêµîëΘÆ«",
        },
        [10251] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_401
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)τé╣µëïµ£\186",
            TipsId = 20251,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10252] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_402
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)τé╣σ»╣µè\151",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_403
                local Args = { ... }
                return (API[117])(API, GUIDE)
            end,
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_σ»╣µèùµîëΘÆ«",
        },
        [10253] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_404
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[117])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)τé╣τ½₧µè\128σ£║app",
            TipsId = 20252,
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_τ½₧µèÇσ£║µîëΘÆ\174",
        },
        [10254] = {
            AdaptStyle = 8,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_405
                local Args = { ... }
                return (API[17])(API, GUIDE, "τ½₧µèÇσ£║τòîΘ¥\162")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)τé╣Φ«¡τ╗\131",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_406
                local Args = { ... }
                return (API[194])(API, GUIDE)
            end,
            TipsId = 20253,
            TipsOffset = { 0, -60 },
            WidgetName = "τ½₧µèÇσ£║τòîΘ¥ó_σ╖àσ│░σ»╣σå│",
        },
        [10255] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_407
                local Args = { ... }
                return (API[17])(API, GUIDE, "τ½₧µèÇσ£║Θ\128ëΣ║║τòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)ΘÇëΣ║║1",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_408
                local Args = { ... };
                (API[156])(API, GUIDE, 124)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_409
                local Args = { ... }
                if not (API[155])(API, GUIDE, 1) then
                    return (API[194])(API, GUIDE)
                end
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ½₧µèÇσ£║Θ\128ëΣ║║",
        },
        [10256] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_410
                local Args = { ... }
                if (API[17])(API, GUIDE, "τ½₧µèÇσ£║Θ\128ëΣ║║τòîΘ¥ó") then
                    return (API[155])(API, GUIDE, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)ΘÇëΣ║║2",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_411
                local Args = { ... };
                (API[156])(API, GUIDE, 110)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_412
                local Args = { ... }
                if not (API[155])(API, GUIDE, 2) then
                    return (API[194])(API, GUIDE)
                end
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ½₧µèÇσ£║Θ\128ëΣ║║",
        },
        [10257] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_413
                local Args = { ... }
                if (API[17])(API, GUIDE, "τ½₧µèÇσ£║Θ\128ëΣ║║τòîΘ¥ó") then
                    return (API[155])(API, GUIDE, 2)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)ΘÇëΣ║║3",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_414
                local Args = { ... };
                (API[156])(API, GUIDE, 113)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_415
                local Args = { ... }
                if not (API[155])(API, GUIDE, 3) then
                    return (API[194])(API, GUIDE)
                end
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ½₧µèÇσ£║Θ\128ëΣ║║",
        },
        [10258] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_416
                local Args = { ... }
                if (API[17])(API, GUIDE, "τ½₧µèÇσ£║Θ\128ëΣ║║τòîΘ¥ó") then
                    return (API[155])(API, GUIDE, 3)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)σ╝\128σºïµêÿµû\151",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_417
                local Args = { ... }
                return (API[194])(API, GUIDE)
            end,
            WidgetName = "τ½₧µèÇσ£║Θ\128ëΣ║║_σ╝\128σºïσî╣Θà\141",
        },
        [10259] = {
            AdaptStyle = 7,
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_418
                local Args = { ... }
                return not (API[17])(API, GUIDE, "τ½₧µèÇσ£║Θ\128ëΣ║║τòîΘ¥ó")
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_419
                local Args = { ... }
                if (API[17])(API, GUIDE, "τ½₧µèÇσ£║Θ\128ëΣ║║τòîΘ¥ó") then
                    return (API[194])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)τ¡ëσ╛àσî╣Θàì",
            NoClean = true,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_420
                local Args = { ... }
                return not (API[17])(API, GUIDE, "τ½₧µèÇσ£║Θ\128ëΣ║║τòîΘ¥ó")
            end,
            TipsOffset = { -320, -170 },
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10261] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_421
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºσêçσ▓¢)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_422
                local Args = { ... }
                if not (API[59])(API, GUIDE, 113, 1) then
                    return (API[80])(API, GUIDE, 113, 5)
                end
            end,
            TipsId = 20261,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10262] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_423
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºσêçσ▓¢)τé╣Φï▒Θ¢äApp",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_424
                local Args = { ... }
                if not (API[59])(API, GUIDE, 113, 1) then
                    return (API[80])(API, GUIDE, 113, 5)
                end
            end,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10263] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_425
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºσêçσ▓¢)τé╣σêçσ▓\155",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_426
                local Args = { ... };
                (API[50])(API, GUIDE, 113)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_427
                local Args = { ... }
                if not (API[59])(API, GUIDE, 113, 1) then
                    return (API[80])(API, GUIDE, 113, 5)
                end
            end,
            TipsId = 20263,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10264] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_428
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó") then
                    return (API[95])(API, GUIDE, 113)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºσêçσ▓¢)τé╣σìçτ║\167",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_429
                local Args = { ... }
                if not (API[59])(API, GUIDE, 113, 1) then
                    return (API[80])(API, GUIDE, 113, 5)
                end
            end,
            TipsId = 20264,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_σìçτ║ºµîëΘÆ«",
        },
        [10265] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_430
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") and (API[95])(API, GUIDE, 113) then
                    return not (API[17])(API, GUIDE, "σ┐½Θ\128ƒσêçµìóΦï▒Θ¢äτòîΘ¥\162")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºσêçσ▓¢)τé╣Σ╕ÇΘö«σìçτ║\167",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_431
                local Args = { ... }
                if not (API[59])(API, GUIDE, 113, 1) then
                    return (API[80])(API, GUIDE, 113, 5)
                end
            end,
            TipsOffset = { -100, 190 },
            WidgetName = "Φï▒Θ¢äσìçτ║º_Σ╕\128Θö«σìçτ║\167",
        },
        [10266] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_432
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") and (API[17])(API, GUIDE, "τí«Φ«ñσìçτ║º") then
                    return (API[95])(API, GUIDE, 113)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºσêçσ▓¢)τé╣τí«Φ«\164",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_433
                local Args = { ... }
                if not (API[59])(API, GUIDE, 113, 1) then
                    return (API[80])(API, GUIDE, 113, 5)
                end
            end,
            WidgetName = "τí«Φ«ñσìçτ║º_σìçτ║º",
        },
        [10267] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_434
                do
                    local Args = { ... }
                    -- DECOMPILER ERROR at PC55: Unhandled construct in 'MakeBoolean' P3

                    do
                        return (API[5])(API, GUIDE, 1013) and (((API[59])(API, GUIDE, 113, 1) or (API[80])(
                            API,
                            GUIDE,
                            113,
                            5
                        )) and not (API[37])(API, GUIDE) and not (API[15])(API, GUIDE) and not (API[53])(
                            API,
                            GUIDE
                        ) and not (API[16])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºσêçσ▓¢)2-1µÄ¿Θ\128\129",
            TipsOffset = { 0, 85 },
            WidgetName = "Σ╕╗τòîΘ¥ó_σî║σƒƒΣ║ïΣ╗╢µîëΘÆ«1",
        },
        [10281] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_435
                local Args = { ... }
                if (API[5])(API, GUIDE, 1030) then
                    return (API[17])(API, GUIDE, "Φ«ñΦ»üτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σíöτé╣σç╗µ┐Çµ┤\187",
            WidgetName = "µ┐\128µ┤╗µ¥âΘÖÉµîëΘÆ\174",
        },
        [10301] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_436
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè\189)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_437
                local Args = { ... }
                return (API[66])(API, GUIDE, 110, 3)
            end,
            TipsId = 20301,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10302] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_438
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè\189)τé╣σìüΦ┐₧µè╜app",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_439
                local Args = { ... }
                return (API[66])(API, GUIDE, 110, 3)
            end,
            TipsId = 20302,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µï¢σïƒµîëΘÆ«",
        },
        [10303] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_440
                do
                    local Args = { ... }
                    do
                        return (API[17])(
                            API,
                            GUIDE,
                            "µû░σìüΦ┐₧µè╜_ΘÇëµï⌐σìíµ▒áτòîΘ¥ó"
                        ) and (not (API[17])(
                            API,
                            GUIDE,
                            "µû░σìüΦ┐₧µè╜τòîΘ¥ó"
                        ) and not (API[17])(
                            API,
                            GUIDE,
                            "µû░σìüΦ┐₧µè╜_τ¡╛σÉìτòîΘ¥ó"
                        ) and not (API[17])(
                            API,
                            GUIDE,
                            "σìüΦ┐₧µè╜_ΦÄ╖σ╛ùτòîΘ¥ó"
                        ) and not (API[101])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè\189)ΘÇëµï⌐σìíµ▒á",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_441
                local Args = { ... }
                return (API[66])(API, GUIDE, 110, 3)
            end,
            TipsOffset = { -170, 140 },
            WidgetName = "µû░σìüΦ┐₧µè╜_σìíµ▒á",
        },
        [10304] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_442
                do
                    local Args = { ... }
                    do
                        return (API[17])(API, GUIDE, "µû░σìüΦ┐₧µè╜τòîΘ¥ó") and (not (API[17])(
                            API,
                            GUIDE,
                            "µû░σìüΦ┐₧µè╜_τ¡╛σÉìτòîΘ¥ó"
                        ) and not (API[17])(
                            API,
                            GUIDE,
                            "σìüΦ┐₧µè╜_ΦÄ╖σ╛ùτòîΘ¥ó"
                        ) and not (API[101])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè\189)µè╜σìí",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_443
                local Args = { ... };
                (API[99])(API, GUIDE, 1);
                (API[100])(API, GUIDE, 1)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_444
                local Args = { ... }
                return (API[66])(API, GUIDE, 110, 3)
            end,
            TipsId = 20304,
            TipsOffset = { -170, 140 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_µû░σìüΦ┐₧µè╜_µÉ£τ┤óµîëΘÆ«",
        },
        [10305] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_445
                do
                    local Args = { ... }
                    do
                        return (API[17])(API, GUIDE, "µû░σìüΦ┐₧µè╜τòîΘ¥ó") and (not (API[17])(
                            API,
                            GUIDE,
                            "µû░σìüΦ┐₧µè╜_τ¡╛σÉìτòîΘ¥ó"
                        ) and not (API[17])(
                            API,
                            GUIDE,
                            "σìüΦ┐₧µè╜_ΦÄ╖σ╛ùτòîΘ¥ó"
                        ) and not (API[101])(API, GUIDE) and not (API[17])(
                            API,
                            GUIDE,
                            "µÅ┤σè⌐_Φç¬σè¿ΦúàΘàì"
                        ) and not (API[17])(
                            API,
                            GUIDE,
                            "µÅ┤σè⌐_µÅ┤σè⌐µ┐\128µ┤\187"
                        ))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè\189)τé╣homeµîëΘÆ«Φ┐öσ¢₧Σ╕╗τòîΘ¥\162",
            TipsId = 20305,
            TipsOffset = { -320, -170 },
            WidgetName = "µû░σìüΦ┐₧µè╜_HomeµîëΘÆ«",
        },
        [10311] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_446
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φüöτ¢ƒ)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_447
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φüöτ¢ƒτòîΘ¥ó")
            end,
            TipsId = 20311,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10312] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_448
                do
                    local Args = { ... }
                    do
                        return (API[53])(API, GUIDE) and (not (API[115])(API, GUIDE) and not (API[116])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φüöτ¢ƒ)τé╣Φüöτ¢ƒapp",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_449
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φüöτ¢ƒτòîΘ¥ó")
            end,
            TipsOffset = { 0, 0 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σ╖ª_Φüöτ¢ƒµîëΘÆ«",
        },
        [10313] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_450
                local Args = { ... }
                if not (API[14])(API, GUIDE, "LeagueMainView") then
                    return (API[17])(API, GUIDE, "Φüöτ¢ƒµ£ëµò░µì«τòîΘ¥\162")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φüöτ¢ƒ)τé╣help",
            TipsId = 20313,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«",
        },
        [10321] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_451
                do
                    local Args = { ... }
                    do
                        return (
                                not (API[37])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»µÅ┤)τé╣µëïµ£\186",
            TipsId = 20321,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10322] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_452
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»µÅ┤)τé╣Φï▒Θ¢äApp",
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10323] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_453
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»µÅ┤)τé╣τ╗┐Φ░\183",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_454
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10324] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_455
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó") then
                    return (API[95])(API, GUIDE, 124)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»µÅ┤)τé╣σë»σìíµîëΘÆ\174",
            TipsId = 20324,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_σë»σìíµîëΘÆ«",
        },
        [10325] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_456
                local Args = { ... }
                return (API[17])(API, GUIDE, "σë»σìíτòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»µÅ┤)τé╣σë»σìíµº╜Σ╜\141",
            TipsId = 20325,
            TipsOffset = { 0, 90 },
            WidgetName = "σë»σìíτòîΘ¥ó_1Φí\1401µº\189",
        },
        [10326] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_457
                local Args = { ... }
                return (API[57])(API, GUIDE, "Btn_Support")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»µÅ┤)ΘÇëµï⌐Σ╕\128σ╝áσë»σì\161",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_458
                local Args = { ... };
                (API[151])(API, GUIDE, 6136014)
            end,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σë»σìíµîëΘÆ«",
        },
        [10327] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_459
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[114])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»µÅ┤)τ⌐┐µê┤σë»σìí",
            TipsId = 20327,
            TipsOffset = { 250, 0 },
            WidgetName = "σë»σìíΦ»ªµâàσ╝╣τ¬ù_τ⌐┐µê┤",
        },
        [10328] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_460
                local Args = { ... }
                if (API[17])(API, GUIDE, "σë»σìíτòîΘ¥ó") then
                    return (API[186])(API, GUIDE, 10)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µö»µÅ┤)Φ┐öσ¢₧Σ╕╗τòîΘ¥\162",
            TipsId = 20328,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10351] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_461
                local Args = { ... }
                return (API[14])(API, GUIDE, "WorldMapView")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ£░σ¢╛Σ╗ïτ╗ì)τé╣Σ╕╗τ║┐Σ╗╗σè\161",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_462
                local Args = { ... };
                (API[72])(API, GUIDE)
            end,
            TipsId = 20351,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ£░σ¢╛_Σ╕ûτòîΣ╗╗σèí",
        },
        [10352] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_463
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return not (API[37])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ£░σ¢╛Σ╗ïτ╗ì)τé╣σëìσ╛\128",
            TipsId = 20352,
            TipsOffset = { 0, 260 },
            WidgetName = "σ£░σ¢╛Σ╗╗σèíσëìσ╛ÇµîëΘÆ«",
        },
        [10371] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_464
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ¿íµïƒτ½₧Φ╡¢)τé╣µëïµ£\186",
            TipsId = 20371,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10372] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_465
                do
                    local Args = { ... }
                    do
                        return (API[53])(API, GUIDE) and (not (API[115])(API, GUIDE) and not (API[116])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ¿íµïƒτ½₧Φ╡¢)τé╣µêÿµû\151",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µêÿµûùµîëΘÆ«",
        },
        [10373] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_466
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[53])(API, GUIDE) then
                    return (API[115])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ¿íµïƒτ½₧Φ╡¢)τé╣µ¿íµïƒτ½₧Φ╡\155",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_467
                local Args = { ... };
                (API[108])(API, GUIDE, 3)
            end,
            TipsId = 20373,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µ¿íµïƒτ½₧Φ╡¢µîëΘÆ«",
        },
        [10374] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_468
                local Args = { ... }
                return (API[17])(API, GUIDE, "µ¿íµïƒτ½₧Φ╡¢τòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "µ¿íµïƒτ½₧Φ╡¢)τé╣Θù«σÅ\183",
            TipsOffset = { 0, 0 },
            WidgetName = "µ¿íµïƒτ½₧Φ╡¢_tipµîëΘÆ«",
        },
        [10381] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_469
                do
                    local Args = { ... }
                    do
                        return (not (API[109])(API, GUIDE) and not (API[15])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ╝▒µîçσ╝òσ»╝Φê\170",
            WidgetName = "Φç¬σè¿Σ╜£µêÿµîëΘÆ«",
        },
        [10391] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_470
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                                and (API[124])(API, GUIDE, 1)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σƒÄσ╕éτ¡ëτ║º)τé╣σ£░σ¢\190",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_471
                local Args = { ... }
                return (API[125])(API, GUIDE, 1)
            end,
            TipsId = 20391,
            TipsOffset = { 100, -150 },
            WidgetName = "Σ╕╗τòîΘ¥óσ£░σ¢\190",
        },
        [10392] = {
            AdaptStyle = 8,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_472
                do
                    local Args = { ... }
                    do
                        return (API[11])(API, GUIDE) and (not (API[17])(
                            API,
                            GUIDE,
                            "σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó"
                        ) and not (API[17])(
                            API,
                            GUIDE,
                            "σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó_Φ»ªµâàσ╝╣τ¬ù"
                        ))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σƒÄσ╕éτ¡ëτ║º)τé╣σƒÄσ╕éτ¡ëτ║ºµáçΘó\152",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_473
                local Args = { ... }
                return (API[125])(API, GUIDE, 1)
            end,
            TipsOffset = { 0, -130 },
            WidgetName = "σƒÄσ╕éτ¡ëτ║º_µáçΘóÿ",
        },
        [10393] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_474
                local Args = { ... }
                if (API[17])(API, GUIDE, "σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó") and (API[124])(API, GUIDE, 1) then
                    return not (API[17])(API, GUIDE, "σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó_Φ»ªµâàσ╝╣τ¬ù")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σƒÄσ╕éτ¡ëτ║º)τé╣τ╣üΦìúσ║ªΘù«σÅ╖",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_475
                local Args = { ... }
                return (API[125])(API, GUIDE, 1)
            end,
            TipsId = 20393,
            TipsOffset = { 350, -230 },
            WidgetName = "σƒÄσ╕éτ¡ëτ║º_τ╣üΦìúσ║ªΘù«σÅ\183",
        },
        [10394] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_476
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[124])(API, GUIDE, 1) then
                    return (API[17])(API, GUIDE, "σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó_Φ»ªµâàσ╝╣τ¬ù")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σƒÄσ╕éτ¡ëτ║º)τé╣τ⌐║τÖ╜σñäΦ┐öσ¢₧",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_477
                local Args = { ... }
                return (API[125])(API, GUIDE, 1)
            end,
            TipsId = 20394,
            TipsOffset = { 0, 80 },
            WidgetName = "ΘÇÜτö¿_Σ╕ïΘâ¿σêåτ⌐║τÖ╜σñä",
        },
        [10395] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_478
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[17])(API, GUIDE, "σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó") then
                    return (API[124])(API, GUIDE, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σƒÄσ╕éτ¡ëτ║º)τé\1851τ║ºσÑûσè\177",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_479
                local Args = { ... };
                (API[126])(API, GUIDE, 1)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_480
                local Args = { ... }
                return (API[125])(API, GUIDE, 1)
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σƒÄσ╕éτ¡ëτ║º_σÑûσè▒",
        },
        [10396] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_481
                local Args = { ... }
                if (API[17])(API, GUIDE, "σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó") then
                    return (API[125])(API, GUIDE, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σƒÄσ╕éτ¡ëτ║º)τé╣Φ┐öσ¢₧σà│Θù¡τòîΘ¥\162",
            TipsOffset = { -320, -170 },
            WidgetName = "σƒÄσ╕éτ¡ëτ║º_Φ┐öσ¢₧µîëΘÆ«",
        },
        [10397] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_482
                local Args = { ... }
                if (API[14])(API, GUIDE, "WorldMapView") then
                    return (API[125])(API, GUIDE, 1)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σƒÄσ╕éτ¡ëτ║º)ΘÇ\128σç║σ£░σ¢╛τòîΘ¥\162",
            TipsId = 20397,
            TipsOffset = { -320, -170 },
            WidgetName = "σ£░σ¢╛τòîΘ¥óΦ┐öσ¢₧µîëΘÆ«",
        },
        [10401] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_483
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡äµ║Éµ£\172)τé╣µëïµ£\186",
            TipsId = 20401,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10402] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_484
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡äµ║Éµ£\172)τé╣µêÿµû\151",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µêÿµûùµîëΘÆ«",
        },
        [10403] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_485
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[53])(API, GUIDE) then
                    return (API[115])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡äµ║Éµ£\172)τé╣ΦíÑτ╗\153",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_ΦíÑτ╗ÖµîëΘÆ«",
        },
        [10404] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_486
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φ╡äµ║Éµ£¼τòîΘ¥\162")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡äµ║Éµ£\172)τé╣σÉÄσïñΣ┐¥σà╗Φ╡äµ║Éµ£¼",
            TipsId = 20404,
            TipsOffset = { 0, 30 },
            WidgetName = "Φ╡äµ║Éµ£¼_σÉÄσïñΣ┐¥σà╗",
        },
        [10405] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_487
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φ╡äµ║Éµ£¼_σÉÄσïñΣ┐¥σà╗τòîΘ¥ó")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡äµ║Éµ£\172)τé╣τí«σ«ÜΦ┐¢σàÑΘ\128ëΣ║║τòîΘ¥ó",
            TipsId = 20405,
            TipsOffset = { 35, 160 },
            WidgetName = "σÉÄσïñΣ┐¥σà╗τòîΘ¥ó_τí«σ«Ü",
        },
        [10411] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_488
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦüöσÉêΦíîσè¿)µëïµ£║",
            TipsId = 20411,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10412] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_489
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦüöσÉêΦíîσè¿)σìÅΣ╜£",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_σìÅΣ╜£µîëΘÆ«",
        },
        [10413] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_490
                do
                    local Args = { ... }
                    do
                        return (API[53])(API, GUIDE) and (not (API[115])(API, GUIDE) and (API[116])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦüöσÉêΦíîσè¿)ΦüöσÉêΦíîσè¿",
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_ΦüöσÉêΦíîσè¿µîëΘÆ«",
        },
        [10414] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_491
                local Args = { ... }
                return (API[17])(API, GUIDE, "ΦüöσÉêΦíîσè¿_Σ╕╗τòîΘ¥\162")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦüöσÉêΦíîσè¿)τé╣tip",
            TipsId = 20414,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«",
        },
        [10421] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_492
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σºöµëÿ)µëïµ£║",
            TipsId = 20421,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10422] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_493
                do
                    local Args = { ... }
                    do
                        return (API[53])(API, GUIDE) and (not (API[115])(API, GUIDE) and not (API[116])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σºöµëÿ)σºöµëÿ",
            TipsOffset = { 0, 0 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σ╖ª_σºöµëÿµîëΘÆ«",
        },
        [10423] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_494
                local Args = { ... }
                if (API[17])(API, GUIDE, "σºöµëÿ_Σ╕╗τòîΘ¥\162") then
                    return not (API[17])(API, GUIDE, "σºöµëÿ_ΦºúΘöüσºöµëÿτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σºöµëÿ)τé╣σç╗σºöµëÿµƒÉΣ╕¬Σ╗╗σèí",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_495
                local Args = { ... };
                (API[138])(API, GUIDE, 1)
            end,
            TipsId = 20423,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σºöµëÿ",
        },
        [10424] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_496
                local Args = { ... }
                if (API[17])(API, GUIDE, "σºöµëÿ_Σ╗╗σèíΦ»ªµâà") then
                    return not (API[141])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σºöµëÿ)τé╣Σ╕ÇΘö«Σ╕èΘÿ\181",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_497
                local Args = { ... }
                return (API[141])(API, GUIDE)
            end,
            WidgetName = "σºöµëÿ_Σ╗╗σèíΦ»ªµâà_Σ╕\128Θö«Σ╕èΘÿ\181",
        },
        [10425] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_498
                local Args = { ... }
                if (API[11])(API, GUIDE) and (API[17])(API, GUIDE, "σºöµëÿ_Σ╗╗σèíΦ»ªµâà") then
                    return (API[141])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σºöµëÿ)σ╝\128σºïσºöµë\152",
            TipsId = 20425,
            TipsOffset = { 180, 140 },
            WidgetName = "σºöµëÿ_Σ╗╗σèíΦ»ªµâà_σ╝\128σºïσºöµë\152",
        },
        [10431] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_499
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»òτé╝)τé╣µëïµ£\186",
            TipsId = 20431,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10432] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_500
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»òτé╝)τé╣µêÿµû\151",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µêÿµûùµîëΘÆ«",
        },
        [10433] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_501
                local Args = { ... }
                if (API[53])(API, GUIDE) and (API[115])(API, GUIDE) then
                    return not (API[116])(API, GUIDE)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»òτé╝)τé╣Φ»òτé\188",
            TipsId = 20433,
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äΦ»òτé╝µîëΘÆ«",
        },
        [10434] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_502
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äΦ»òτé╝_Σ╕╗Θí╡Θ¥\162")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»òτé╝)τé╣τ¼¼Σ╕\128Σ╕¬σà│σì\161",
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«",
        },
        [10435] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_503
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äΦ»òτé╝_Σ╕èΘÿ╡Θí\181")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»òτé╝)τé╣tip",
            TipsId = 20435,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«",
        },
        [10441] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_504
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡₧σè⌐σƒ║Θçæ)σ▒òσ╝Çµ┤╗σè¿σêùΦí¿",
            WidgetName = "Σ╕╗τòîΘ¥ó_σ▒òσ╝ÇµîëΘÆ«",
        },
        [10442] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_505
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡₧σè⌐σƒ║Θçæ)τé╣τªÅσê\169",
            TipsId = 20442,
            WidgetName = "Σ╕╗τòîΘ¥ó_τªÅσê⌐µîëΘÆ«",
        },
        [10443] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_506
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return not (API[17])(API, GUIDE, "τªÅσê⌐_Φ╡₧σè⌐σƒ║ΘçæτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡₧σè⌐σƒ║Θçæ)τé╣Φ╡₧σè⌐σƒ║ΘçæΘí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_507
                local Args = { ... };
                (API[165])(API, GUIDE)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_508
                local Args = { ... }
                return (API[17])(API, GUIDE, "τªÅσê⌐_Φ╡₧σè⌐σƒ║ΘçæτòîΘ¥ó")
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ¡ëτ║ºσÑûσè▒Θí╡τ¡╛",
        },
        [10444] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_509
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "τªÅσê⌐_Φ╡₧σè⌐σƒ║ΘçæτòîΘ¥ó")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╡₧σè⌐σƒ║Θçæ)ΘóåσÅûσÑûσè▒",
            TipsId = 20444,
            WidgetName = "Φ╡₧σè⌐σƒ║Θçæ_ΘóåσÅûσÑûσè▒",
        },
        [10451] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_510
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè╜σë»σì\161)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_511
                local Args = { ... }
                return (API[150])(API, GUIDE, 6136014)
            end,
            TipsId = 20451,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10452] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_0
                local Args = { ... }
                local UserData = (objdata.UserMgr):GetHeroUserData()
                do
                    local Lv = UserData:GetLevel()
                    do
                        return not Args[2] and Lv <= Args[1] or 1 > Lv or 99999999
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè╜σë»σì\161)τé╣µï¢σïƒapp",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_1
                local Args = { ... }
                return (task.TaskMgr):IsCurTask(Args[1] or 0)
            end,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µï¢σïƒµîëΘÆ«",
        },
        [10453] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_2
                local Args = { ... }
                return (task.TaskMgr):IsDoneTask(Args[1] or 0)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè╜σë»σì\161)ΘÇëµï⌐σƒ║τíÇσìíµ▒á",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_3
                local Args = { ... }
                return (task.TaskMgr):JudgeTaskStatus(Args[1] or 0, const.TASK_STATUS_ACC)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_4
                local Args = { ... }
                return (task.TaskMgr):JudgeTaskStatus(Args[1] or 0, const.TASK_STATUS_HAS)
            end,
            TipsId = 20453,
            TipsOffset = { -170, 230 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_µû░σìüΦ┐₧µè╜_σë»σìí",
        },
        [10454] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_5
                local Args = { ... }
                return (task.TaskMgr):JudgeTaskStatus(Args[1] or 0, const.TASK_STATUS_SUB)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè╜σë»σì\161)ΘÇëµï⌐σë»σìíσìíµ▒á",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_6
                local Args = { ... }
                return ((objdata.GetFuncOpenMgr)()):IsFuncOpen(Args[1] or 0)
            end,
            TipsOffset = { -170, 140 },
            WidgetName = "σìüΦ┐₧µè╜_ΘÇëµï⌐σë»σìí",
        },
        [10455] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_7
                local Args = { ... }
                return ((stage.InstMgr)()):GetAllStageByStageId(Args[1] or -1)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè╜σë»σì\161)µè╜σìí",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_8
                local Args = { ... }
                return stage:GetBossOpenBox(Args[1] or -1)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_9
                local Args = { ... }
                return stage:GetStarOpenBox(Args[1] or -1, Args[2] or 1)
            end,
            TipsId = 20455,
            TipsOffset = { -170, 140 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_µû░σìüΦ┐₧µè╜_µÉ£τ┤óµîëΘÆ«",
        },
        [10456] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_10
                local Args = { ... }
                return guide:APILastStepFinish()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìüΦ┐₧µè╜σë»σì\161)τé╣homeµîëΘÆ«Φ┐öσ¢₧Σ╕╗τòîΘ¥\162",
            TipsOffset = { -320, -170 },
            WidgetName = "µû░σìüΦ┐₧µè╜_HomeµîëΘÆ«",
        },
        [10461] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_11
                local Args = { ... }
                return guide:APILastStepFinish(1)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τë╣σê½Φíîσè¿)τé╣µëïµ£\186",
            TipsId = 20461,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10462] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_12
                local Args = { ... }
                do
                    local CurScene = sceneMgr:GetCurScene()
                    if not CurScene then
                        return false
                    end
                    do
                        return Args[1] or "" == CurScene.__Name__
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τë╣σê½Φíîσè¿)τé╣µêÿµû\151",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µêÿµûùµîëΘÆ«",
        },
        [10463] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_13
                do
                    local Args = { ... }
                    do
                        return Args[1] or "" == uiMgr:GetCurUiName()
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τë╣σê½Φíîσè¿)τé╣τë╣σê½Φíîσè\168",
            TipsId = 20463,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_τë╣σê½Φíîσè¿µîëΘÆ«",
        },
        [10464] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_14
                local Args = { ... }
                return uiMgr:GetCurUiName()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τë╣σê½Φíîσè¿)τé╣τ½áΦè\130",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_15
                local Args = { ... }
                return uiMgr:GetLastUiViewFile()
            end,
            TipsId = 20465,
            TipsOffset = { -170, 230 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τë╣σê½Φíîσè¿_τ½áΦèé",
        },
        [10465] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_16
                local Args = { ... }
                local WidgetCfg = ((ALLSETTING.GUIDE_CFG).WidgetCfg)[Args[1]]
                if not WidgetCfg or not WidgetCfg.UiFile then
                    return false
                end
                do
                    local CurFile = uiMgr:GetLastUiViewFile()
                    if not CurFile then
                        return false
                    end
                    do
                        return CurFile == WidgetCfg.UiFile
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τë╣σê½Φíîσè¿)τé╣σ╝ÇσºïΦíîσè\168",
            TipsOffset = { -40, 115 },
            WidgetName = "τë╣σê½Φíîσè¿σà│σìíτòîΘ¥ó_σ╝\128σºïΦíîσè\168",
        },
        [10471] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_17
                local Args = { ... }
                local WidgetCfg = ((ALLSETTING.GUIDE_CFG).WidgetCfg)[Args[1]]
                if not WidgetCfg or not WidgetCfg.UiFile or not WidgetCfg.UiComp then
                    return false
                end
                local ViewObj = uiMgr:GetUiViewObj(WidgetCfg.UiFile)
                if not ViewObj then
                    return false
                end
                local ListObj = ViewObj:GetCompsByName(WidgetCfg.UiComp)
                if not ListObj then
                    return false
                end
                local Container = ListObj:GetContainer()
                local Percent = (math.max)(0, (math.min)(Args[2], 100))
                local Pos = ListObj:GetMaxRule() * Percent / 100
                if Args[3] then
                    Container:SetPosition(-Pos, (Container:GetPosition()).y)
                else
                    Container:SetPosition((Container:GetPosition()).x, -Pos)
                end
                return true
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ«┐Φêì)σ£¿σ«┐ΦêìτòîΘ¥óτé╣1σÅ╖σ«┐Φê\141",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_18
                local Args = { ... }
                guide:APISetSysListPercent(Args[1])
            end,
            TipsId = 20471,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ«┐ΦêìτòîΘ¥ó_1σÅ╖σ«┐Φê\141",
        },
        [10472] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_19
                local Args = { ... }
                guide:APISetMethodListPercent(Args[1])
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ«┐Φêì)τé╣σèƒΦâ╜µ\128ºσ«╢σà\183",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_20
                local Args = { ... }
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end
                for _, Obj in pairs(CurScene.m_FighterMap) do
                    if Obj:GetType() == "clsNpc" and Obj:GetName() == Args[1] then
                        local TitleComp = Obj:GetCompObj("TitleNpcComp")
                        -- DECOMPILER ERROR at PC29: Confused about usage of register: R11 in 'UnsetPending'

                        if TitleComp then
                            ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TitleComp.m_StatusPanel
                            return
                        end
                    end
                end
            end,
            TipsId = 20472,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ«┐ΦêìσåàΘâ¿_σèƒΦâ╜µÇºσ«╢σà\183",
        },
        [10481] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_21
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.m_ListPanel then
                    return
                end
                if (CurUi.m_ListPanel).SwitchPosByMerId then
                    (CurUi.m_ListPanel):SwitchPosByMerId(tonumber(Args[1]))
                end
                local CurItem = (CurUi.m_ListPanel):GetItemByMerId(tonumber(Args[1]))
                if not CurItem then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC41: Confused about usage of register: R7 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurItem:GetCompsByName("m_TouchBtn")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╢àΦâ╜σìÅσÉîµê\152)τé╣µëïµ£\186",
            TipsId = 20481,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10482] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_22
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.m_SonPanel or not (CurUi.m_SonPanel).GetItemByFashionId then
                    return
                end
                local CurItem = (CurUi.m_SonPanel):GetItemByFashionId(tonumber(Args[1]))
                if not CurItem then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC35: Confused about usage of register: R7 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurItem:GetCompsByName("m_TouchBtn")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╢àΦâ╜σìÅσÉîµê\152)τé╣σ»╣µè\151",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_23
                local Args = { ... }
                local CurScene = sceneMgr.s_CurScene
                if not CurScene or not CurScene.m_FactoryFrame then
                    return
                end
                (CurScene.m_FactoryFrame):ChangeType(Args[1])
            end,
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_σ»╣µèùµîëΘÆ«",
        },
        [10483] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_24
                local Args = { ... }
                if global.Hero then
                    (global.Hero):CancelMoveTo()
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╢àΦâ╜σìÅσÉîµê\152)τé╣Φ╢àΦâ╜σìÅσÉîµêÿapp",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φ╢àΦâ╜σìÅσÉîµêÿµîëΘÆ\174",
        },
        [10484] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_25
                local Args = { ... }
                do
                    local CurUi = uiMgr:GetCurUi()
                    if not CurUi or CurUi.__Name__ ~= "MethodView" then
                        return false
                    end
                    if CurUi.m_ChangeNum ~= 1 then
                        return false
                    end
                    do
                        return (CurUi.m_SonPanel):GetChooseMethod() == tonumber(Args[1])
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╢àΦâ╜σìÅσÉîµê\152)ΘóåσÑûσè\177",
            TipsId = 20484,
            WidgetName = "Φ╢àΦâ╜σìÅσÉî_σÑûσè▒",
        },
        [10485] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_26
                local Args = { ... }
                uiMgr:CloseAllUi()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╢àΦâ╜σìÅσÉîµê\152)µîæµêÿ",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_27
                do
                    local Args = { ... }
                    do
                        return #(mercenaryview.MercenaryUtil):GetMercenaryDatasOfFight() > 0
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            TipsId = 20485,
            TipsOffset = { -40, -105 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10486] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_28
                local Args = { ... }
                local List = (mercenaryview.MercenaryUtil):GetMercenaryDatasOfFight()
                for _, Data in ipairs(List) do
                    if Args[1] < Data:GetLevel() then
                        return true
                    end
                end
                return false
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φ╢àΦâ╜σìÅσÉîµê\152)σ╝\128σºïµêÿµû\151",
            TipsId = 20486,
            TipsOffset = { -200, 0 },
            WidgetName = "Φ╢àΦâ╜σìÅσÉî_σ╝\128σºïµêÿµû\151",
        },
        [10491] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_29
                local Args = { ... }
                local List = (mercenaryview.MercenaryUtil):GetMercenaryDatasOfFight()
                for _, Data in ipairs(List) do
                    if Data:GetInitRank() or 0 < Data:GetRankLv() then
                        return true
                    end
                end
                return false
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦºüΣ╣áτªÅσê⌐)τé╣Θ¢äΦï▒σ«₧Σ╣áσ¡ú",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_30
                local Args = { ... }
                local List = (goods.EquipUtil):GetUserDressEquips()
                for _, Item in ipairs(List) do
                    if Item:GetSort() == Args[1] then
                        return true
                    end
                end
                return false
            end,
            TipsId = 20491,
            WidgetName = "Σ╕╗τòîΘ¥ó_Θ¢äΦï▒σ«₧Σ╣áσ¡úµîëΘÆ\174",
        },
        [10492] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_31
                do
                    local Args = { ... }
                    do
                        return Args[2] or 1 <= objdata:GetItemAmountByItemId(Args[1])
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦºüΣ╣áτªÅσê⌐)τé╣ΦºüΣ╣áτªÅσê⌐Θí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_32
                do
                    local Args = { ... }
                    do
                        return #objdata:GetFurnishAccessoryItem() > 0
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_33
                local Args = { ... }
                return (task.NpcTalkMgr).m_DialogView
            end,
            TipsId = 20492,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10493] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_34
                local Args = { ... }
                return (task.NpcTalkMgr).m_CurMenuPanel
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦºüΣ╣áτªÅσê⌐)ΘóåσÅûσÑûσè▒",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_35
                local Args = { ... }
                return (task.NpcTalkMgr).m_CurTalkPanel
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_36
                local Args = { ... }
                return (sceneUnitMgr.SceneUnitMgr):IsInAutoMove()
            end,
            TipsId = 20493,
            TipsOffset = { -50, 100 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10494] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_37
                local Args = { ... }
                return (mercenaryview.MercenaryUtil):HasRuneByIndex(Args[1], Args[2])
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦºüΣ╣áτªÅσê⌐)σà│Θù¡",
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10498] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_38
                local Args = { ... }
                return (mercenaryview.MercenaryUtil):HasEquipByIndex(Args[1], Args[2])
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)ΘóåσÑûσè\1772",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_39
                local Args = { ... }
                return (mercenaryview.MercenaryUtil):GetMercenaryDataById(Args[1])
            end,
            TipsOffset = { 0, 150 },
            WidgetName = "Φï▒Θ¢äΦ»äτ║º_τ¢«µáçσÑûσè▒µîëΘÆ«2",
        },
        [10499] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_40
                local Args = { ... }
                local Mobj = (mercenaryview.MercenaryUtil):GetMercenaryDataById(Args[1])
                if Mobj and Mobj:GetFight() == 1 then
                    return true
                end
                return false
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)σ¢₧Σ╕╗τòîΘ¥ó",
            TipsId = 20239,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10501] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_41
                local Args = { ... }
                local MerData = (mercenaryview.MercenaryUtil):GetMercenaryDataById(Args[1])
                if not MerData then
                    return false
                end
                do
                    local FashionItem = objdata:GetItemDataByUid(MerData:GetFashion() or -1)
                    if not FashionItem then
                        return false
                    end
                    do
                        return FashionItem:GetItemId() == Args[2]
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τé╣σàÑσÅ\163",
            TipsId = 20501,
            TipsOffset = { 60, -160 },
            WidgetName = "Φï▒Θ¢äΣ╣ïΦ╖»σàÑσÅú",
        },
        [10502] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_42
                local Args = { ... }
                if not (task.TaskMgr):GetTaskDataByType(const.TASK_TYPE_LOOP) then
                    local TaskId, TaskData = next({})
                    if TaskData then
                        return true
                    end
                    return false
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τé╣Φ»äτ║ºΘí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_43
                local Args = { ... }
                return (task.TaskMgr).m_CurLoopRound or 0
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_44
                local Args = { ... }
                return (areaEvent.AreaEventDataMgr):IsPassStage(Args[1])
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10503] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_45
                local Args = { ... }
                do
                    local IsCheckUI = Args[2] == 1
                    if IsCheckUI then
                        return (areaEvent.AreaEventDataMgr):IsInPosForMerPosView(Args[1])
                    else
                        return (areaEvent.AreaEventDataMgr):IsInPosForPosCache(Args[1])
                    end
                    -- DECOMPILER ERROR: 3 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)Φ»äτ║ºµîæµêÿ",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_46
                local Args = { ... }
                local IsCheckUI = Args[2] == 1
                do
                    local IsCheckPos = tonumber(Args[3]) == 1
                    if IsCheckUI then
                        return (areaEvent.AreaEventDataMgr):IsInPosForHappenView(Args[1], IsCheckPos)
                    else
                        return (areaEvent.AreaEventDataMgr):IsInPosForPosCache(Args[1])
                    end
                    -- DECOMPILER ERROR: 4 unprocessed JMP targets
                end
            end,
            WidgetName = "Σ║ïσèíµë\128_Φ»äτ║ºµîëΘÆ«",
        },
        [10504] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_47
                local Args = { ... }
                local HeroClassId = Args[1]
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene or not CurScene.m_AreaEventHappenView then
                    return
                end
                local CurUi = (CurScene.m_AreaEventHappenView).m_ListPanel
                if not CurUi or not CurUi.LocationToHeroClassId then
                    return
                end
                local Item = CurUi:LocationToHeroClassId(HeroClassId)
                if not Item or not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC34: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("BtnTouch")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)ΦºúΘöü1",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_48
                local Args = { ... }
                local HeroId = Args[1]
                local UserData = (objdata.UserMgr):GetHeroUserData()
                if UserData:GetHeroId() ~= HeroId then
                    do
                        do
                            return not UserData
                        end
                        do
                            return false
                        end
                        -- DECOMPILER ERROR: 3 unprocessed JMP targets
                    end
                end
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_49
                local Args = { ... }
                local HeroId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.LocationToHeroClsId then
                    return
                end
                local CardItem = CurUi:LocationToHeroClsId(HeroId)
                local CurScene = sceneMgr:GetCurScene()
                if not CardItem or not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC29: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CardItem:GetCompsByName("Btn_Click")
            end,
            TipsId = 20503,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10505] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_50
                local Args = { ... }
                local HeroId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.LocationToHeroId then
                    return
                end
                local CardItem = CurUi:LocationToHeroId(HeroId)
                local CurScene = sceneMgr:GetCurScene()
                if not CardItem or not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC29: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CardItem:GetCompsByName("Btn_Click")
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_51
                local Args = { ... }
                local HeroId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.LocationToHeroClsId then
                    return
                end
                local CardItem = CurUi:LocationToHeroClsId(HeroId)
                local CurScene = sceneMgr:GetCurScene()
                if not CardItem or not CardItem.CardItem or not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC33: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = (CardItem.CardItem):GetCompsByName("BtnTouch")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τ¡ëσ╛àσè¿µòêµÆ¡σ«î",
            NoClean = true,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10506] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_52
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                    return false
                end
                return true
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)ΦºúΘöü2",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_53
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return false
                end
                do
                    local SceneId = tonumber(Args[1])
                    do
                        return SceneId == CurScene:GetId()
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_54
                local Args = { ... }
                local TaskId = Args[1]
                local CurScene = sceneMgr:GetCurScene()
                local MapView = uiMgr:GetObjWorldMapView()
                if not MapView then
                    return
                end
                local TaskView = MapView.m_TaskList
                if not TaskView then
                    return
                end
                local TaskItem = TaskView:LocationToTaskId(TaskId)
                if not TaskItem then
                    return
                end                -- DECOMPILER ERROR at PC28: Confused about usage of register: R9 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TaskItem:GetCompsByName("SelBtn")
            end,
            TipsId = 20503,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10507] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_55
                local Args = { ... }
                local Idx = Args[1]
                return (map.MapController):CheckIsBtnSelect(Idx)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_56
                local Args = { ... }
                do
                    local CurUi = uiMgr:GetCurUi()
                    if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                        return false
                    end
                    do
                        return CurUi:GetCurBtn() == Args[1]
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τ¡ëσ╛àσè¿µòêµÆ¡σ«î",
            NoClean = true,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10508] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_57
                local Args = { ... }
                local HeroId = Args[1]
                local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
                if Args[2] > CardData:GetSatietyLv() then
                    do
                        do
                            return not CardData
                        end
                        -- DECOMPILER ERROR: 2 unprocessed JMP targets
                    end
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)Φ┐öσ¢₧",
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«",
        },
        [10509] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_58
                local Args = { ... }
                local HeroId = Args[1]
                local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
                if Args[2] > CardData:GetWorkoutLv() then
                    do
                        do
                            return not CardData
                        end
                        -- DECOMPILER ERROR: 2 unprocessed JMP targets
                    end
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)ΘóåσÑûσè\1771",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_59
                local Args = { ... }
                return (utils.ItemUtil):CheckHasItemBySort("σûéσà╗Θúƒτë⌐")
            end,
            TipsId = 20508,
            TipsOffset = { 0, 150 },
            WidgetName = "Φï▒Θ¢äΦ»äτ║º_τ¢«µáçσÑûσè▒µîëΘÆ«1",
        },
        [10511] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_60
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                    return
                end
                if CurUi.BaseView and CurUi:GetCurBtnView("Btn_Exercise") then
                    print("CurUi.BaseView.m_HasFeed", (CurUi.BaseView).m_HasFeed)
                    return (CurUi.BaseView).m_HasFeed
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τé╣σàÑσÅ\163",
            TipsId = 20511,
            TipsOffset = { 60, -160 },
            WidgetName = "Φï▒Θ¢äΣ╣ïΦ╖»σàÑσÅú",
        },
        [10512] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_61
                local Args = { ... }
                local HeroId = Args[1]
                local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
                if CardData then
                    if not CardData:GetSkillLevel() then
                        local SkillList = {}
                    end
                    local SkillLv = SkillList[Args[2]]
                    if Args[3] > SkillLv then
                        do
                            do
                                return not SkillLv
                            end
                            -- DECOMPILER ERROR: 2 unprocessed JMP targets
                        end
                    end
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τé╣Φ»äτ║ºΘí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_62
                local Args = { ... }
                local HeroId = Args[1]
                local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
                if CardData then
                    if not CardData:GetSpecLevel() then
                        local SpecList = {}
                    end
                    local SpecLv = SpecList[Args[2]]
                    if Args[3] > SpecLv then
                        do
                            do
                                return not SpecLv
                            end
                            -- DECOMPILER ERROR: 2 unprocessed JMP targets
                        end
                    end
                end
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_63
                local Args = { ... }
                local HeroId = Args[1]
                local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
                if CardData and Args[2] <= CardData:GetResonateLv() then
                    if Args[2] < CardData:GetResonateLv() then
                        return true
                    end
                    local ResonatePiece = CardData:GetResonatePiece()
                    return Args[3] <= #ResonatePiece
                end
                -- DECOMPILER ERROR: 2 unprocessed JMP targets
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10513] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_64
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi:GetType() ~= "clsCardResonanceInfoView" then
                    return false
                end
                if not CurUi:GetCompsByName("BtnMaskClick") then
                    return false
                end
                return (CurUi:GetCompsByName("BtnMaskClick")):IsVisible()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)Φ»äτ║ºµîæµêÿ",
            WidgetName = "Σ║ïσèíµë\128_Φ»äτ║ºµîëΘÆ«",
        },
        [10514] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_65
                local Args = { ... }
                local HeroClsId = Args[1]
                local Quality = Args[2] or 1
                do
                    local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroClsId)
                    do
                        return not CardData or Quality <= CardData:GetQuality()
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)Σ║ïσèíµë\128Σ╣ïµÿƒ",
            TipsId = 20513,
            WidgetName = "Φï▒Θ¢äΦ»äτ║º_Σ║ïσèíµë\128Σ╣ïµÿƒµîëΘÆ«",
        },
        [10515] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_66
                local Args = { ... }
                local collectId = Args[1]
                return (collection.CollectMgr):IsApprByCollectId(collectId)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)σ╝\128σºïµîæµê\152",
            TipsId = 20514,
            WidgetName = "Φï▒Θ¢äΦ»äτ║º_σ╝\128σºïµîæµê\152",
        },
        [10521] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_67
                local Args = { ... }
                local NpcId = Args[1]
                local CurScene = sceneMgr:GetCurScene()
                local NpcObj = CurScene:GetNpcById(NpcId)
                if NpcObj then
                    (task.NpcTalkMgr):Talk2Npc(NpcId, nil, nil)
                end
                utils:PopupView()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦÖÜµïƒµêÿσ£║)τé╣µëïµ£\186",
            TipsId = 20521,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10522] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_68
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                    return false
                end
                local Btn = (CurUi.BaseView):GetCompsByName("BtnRankUp")
                if Btn then
                    return Btn:IsVisible()
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦÖÜµïƒµêÿσ£║)τé╣µêÿµû\151",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µêÿµûùµîëΘÆ«",
        },
        [10523] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_69
                local Args = { ... }
                return (collection.CollectMgr):IsCanShowRaiseLvView()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦÖÜµïƒµêÿσ£║)τé╣ΦÖÜµïƒµêÿσ£\186",
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_ΦÖÜµïƒµêÿσ£║µîëΘÆ«",
        },
        [10524] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_70
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                local MapView = uiMgr:GetObjWorldMapView()
                if not MapView then
                    return
                end
                local TaskView = MapView.m_TaskList
                if not TaskView then
                    return
                end
                local TaskItem = TaskView:LocationToFirstWorldTask()
                if not TaskItem then
                    return
                end                -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TaskItem:GetCompsByName("SelBtn")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦÖÜµïƒµêÿσ£║)τé╣τ½áΦè\130",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_71
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                local MapView = uiMgr:GetObjWorldMapView()
                if not MapView then
                    return
                end
                local TaskView = MapView.m_TaskList
                if not TaskView then
                    return
                end
                local MainTaskData = (task.TaskMgr):GetMainTaskData()
                if not MainTaskData then
                    return
                end
                local TaskItem = TaskView:LocationToTaskId(MainTaskData:GetId())
                if not TaskItem then
                    return
                end                -- DECOMPILER ERROR at PC35: Confused about usage of register: R9 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TaskItem:GetCompsByName("SelBtn")
            end,
            TipsId = 20524,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΦÖÜµïƒµêÿσ£║_σà│σìí",
        },
        [10525] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_72
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                local MapView = uiMgr:GetObjWorldMapView()
                if not CurScene or not MapView then
                    return
                end
                local TaskView = MapView.m_TaskList
                if
                    not TaskView
                    or not TaskView.m_TaskTypeItemTab
                    or not (TaskView.m_TaskTypeItemTab)[const.TASK_TYPE_WORLD]
                then
                    return
                end
                TaskView:PackUpTask(const.TASK_TYPE_WORLD)
                local Tab = (TaskView.m_TaskTypeItemTab)[const.TASK_TYPE_WORLD]
                if not Tab or not Tab.m_ItemWorld then
                    return
                end                -- DECOMPILER ERROR at PC47: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = (Tab.m_ItemWorld):GetCompsByName("BtnGift")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "ΦÖÜµïƒµêÿσ£║)τé╣σ╝ÇσºïΦíîσè\168",
            TipsId = 20525,
            TipsOffset = { -40, 115 },
            WidgetName = "ΦÖÜµïƒµêÿσ£║_σƒ║τíÇσà│σç║σç\187",
        },
        [10531] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_73
                local Args = { ... }
                local WorldMapView = uiMgr:GetObjWorldMapView()
                if WorldMapView then
                    return WorldMapView:IsMapTaskViewHavePopup()
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µëïµ£\186",
            TipsId = 20531,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10532] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_74
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return false
                end
                if CurScene.__Name__ ~= "MainScene" then
                    return false
                end
                if (sceneUnitMgr.SceneUnitMgr):IsInAutoMove() then
                    return false
                end
                if uiMgr:GetCurUiName() then
                    return false
                end
                if uiMgr:GetLastUiViewFile() then
                    return false
                end
                if not CurScene.m_FunEntranceMenu then
                    return false
                end
                return (CurScene.m_FunEntranceMenu):IsVisible()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µö»µÅ┤Φúàσñçapp",
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µö»µÅ┤ΦúàσñçµîëΘÆ«",
        },
        [10533] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_75
                local Args = { ... }
                local IsOpenFunc = (objdata:GetFuncOpenMgr()):IsFuncOpen("Σ║ïσèíµë\128")
                if IsOpenFunc == false then
                    return false
                end
                local Id = Args[1]
                local state = (objdata.HeroRoadDataMgr):GetPickStepState(Id)
                if state == 2 then
                    print("aaaaaaaaaaaaaaaaaaaaaaaaaaa", true)
                    return true
                else
                    return false
                end
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_76
                local Args = { ... }
                local IsOpenFunc = (objdata:GetFuncOpenMgr()):IsFuncOpen("Σ║ïσèíµë\128")
                if IsOpenFunc == false then
                    return false
                end
                local Id = Args[1]
                local state = (objdata.HeroRoadDataMgr):GetPickStepState(Id)
                if state == 1 then
                    return true
                else
                    return false
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τ¡ëσ╛àµëôσ╝ÇΣ╗ôσ║ô",
            NoClean = true,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10534] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_77
                local Args = { ... }
                local IsOpenFunc = (objdata:GetFuncOpenMgr()):IsFuncOpen("µ»ÅµùÑτ¢«µáç")
                if IsOpenFunc == false then
                    return false
                end
                return (objdata.HeroRoadDataMgr):GetDailyState()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µÅÉσìçΘí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_78
                local Args = { ... }
                local IsOpenFunc = (objdata:GetFuncOpenMgr()):IsFuncOpen("µ»ÅµùÑτ¢«µáç")
                if IsOpenFunc == false then
                    return false
                end
                local Value = Args[1]
                return (objdata.HeroRoadDataMgr):GetActiveCompare(Value)
            end,
            StepDelay = 0.5,
            TipsId = 20534,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10535] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_79
                local Args = { ... }
                local HeroId = Args[1]
                local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
                if Args[2] > CardData:GetLv() then
                    do
                        do
                            return not CardData
                        end
                        -- DECOMPILER ERROR: 2 unprocessed JMP targets
                    end
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µö╣ΘÇáΘí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_80
                local Args = { ... }
                local HeroId = Args[1]
                local CardData = (objdata.CardDataMgr):GetCardByHeroClassId(HeroId)
                do
                    if CardData then
                        if not CardData:GetRuneInfo() then
                            local RuneInfo = {}
                        end
                        for Index, RuneData in ipairs(RuneInfo) do
                            if Index == tonumber(Args[2]) and RuneData.Uid ~= 0 then
                                local ItemData = objdata:GetItemDataByUid(RuneData.Uid)
                                if tonumber(Args[3]) > ItemData:GetEnhanceLv() then
                                    do
                                        do
                                            return not ItemData
                                        end
                                        -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                        -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT

                                        -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                        -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT
                                    end
                                end
                            end
                        end
                    end
                    -- DECOMPILER ERROR: 3 unprocessed JMP targets
                end
            end,
            TipsId = 20535,
            TipsOffset = { 255, 65 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10536] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_81
                local Args = { ... }
                local guide, npcid = (map.MapMgr):CheckTowerGuide()
                return guide
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µÅÉσìçΘí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_82
                local Args = { ... }
                local AchieveId = Args[1]
                local CheckStatus = Args[2]
                local AchieveData = (achieve.AchieveUtil):GetAchieveDataById(AchieveId)
                if AchieveData and AchieveData.Status == CheckStatus then
                    return true
                else
                    return false
                end
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_83
                local Args = { ... }
                local StageId = Args[1]
                local Status = Args[2] or 0
                local Rate = Args[3] or 0
                return (herotheater.HeroTheaterDataMgr):CheckStageStatusForGuideAPI(StageId, Status, Rate)
            end,
            StepDelay = 0.5,
            TipsId = 20536,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10537] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_84
                local Args = { ... }
                local BounsID = Args[1]
                local Status = Args[2]
                return (herotheater.HeroTheaterDataMgr):JudgePrivateBounsStatus(BounsID, Status)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)σó₧σ╣àτé╣Θâ¿Σ╜\1414",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_85
                local Args = { ... }
                local PosId = Args[1]
                return (equip.EquipDataMgr):CheckEquipPosIsEquipped(PosId)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_86
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.m_BaseView then
                    return
                end
                local BaseView = CurUi.m_BaseView
                if not BaseView.IsShowEquipInfo or not BaseView:IsShowEquipInfo() then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC31: Confused about usage of register: R7 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = (BaseView.m_InfoShow):GetEquipBtn()
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10538] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_87
                local Args = { ... }
                local EquipPos = Args[1]
                local CheckStarLv = Args[2]
                return (equip.EquipUtil):CheckRisingStarByPosStarLv(EquipPos, CheckStarLv)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣σó₧σ╣àµîëΘÆ\174",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_88
                local Args = { ... }
                local EquipPos = Args[1]
                local CheckRemouldLv = Args[2]
                local CheckRemouldPro = Args[3]
                return (equip.EquipUtil):CheckRemouldByPosRemouldPro(EquipPos, CheckRemouldLv, CheckRemouldPro)
            end,
            TipsId = 20538,
            WidgetName = "ΦúàσñçµÅÉσìçτòîΘ¥ó_σó₧σ╣à",
        },
        [10539] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_89
                local Args = { ... }
                local EquipPos = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetRightSlotItemByPos then
                    return
                end
                local Item = CurUi:GetRightSlotItemByPos(EquipPos)
                local CurScene = sceneMgr:GetCurScene()
                if not Item or not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)µö╣Θ\128áτé╣Θâ¿Σ╜ì4",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_90
                local Args = { ... }
                local Index = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetTabItemByIndex then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC23: Confused about usage of register: R7 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurUi:GetTabItemByIndex(Index)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_91
                local Args = { ... }
                local EquipPos = Args[1]
                local Plate = Args[2]
                return (equip.EquipUtil):CheckCanDiesetByPosPlate(EquipPos, Plate)
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10540] = {
            AdaptStyle = 4,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_92
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi then
                    return
                end
                if CurUi:GetType() == "clsEquipWarehouseView" then
                    return CurUi:IsShowEquipInfo()
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µö╣ΘÇ\160",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_93
                local Args = { ... }
                local PosId = Args[1]
                local EnhanceLv = Args[2] or 1
                local ItemUid = (equip.EquipDataMgr):CheckEquipPosIsEquipped(PosId)
                if ItemUid then
                    local ItemData = objdata:GetItemDataByUid(ItemUid)
                    if EnhanceLv > ItemData:GetHoleEnhanceLv() then
                        do
                            do
                                return not ItemData
                            end
                            -- DECOMPILER ERROR: 2 unprocessed JMP targets
                        end
                    end
                end
            end,
            TipsId = 20537,
            TipsOffset = { -125, -130 },
            WidgetName = "Φúàσñçµö╣Θ\128áτòîΘ¥ó_µö╣Θ\128\160",
        },
        [10541] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_94
                local Args = { ... }
                local HeroClsId = Args[1]
                local CardData = (objdata.CardDataMgr):GetCurCardData()
                if CardData:GetId() ~= HeroClsId then
                    do
                        do
                            return not CardData
                        end
                        -- DECOMPILER ERROR: 2 unprocessed JMP targets
                    end
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µëïµ£\186",
            TipsId = 20541,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10542] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_95
                local Args = { ... }
                local NpcId = Args[1]
                local CurScene = sceneMgr:GetCurScene()
                local NpcObj = CurScene:GetNpcById(NpcId)
                if NpcObj then
                    return true
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µö»µÅ┤Φúàσñçapp",
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_µö»µÅ┤ΦúàσñçµîëΘÆ«",
        },
        [10543] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_96
                local Args = { ... }
                local PoolId = Args[1]
                return (recruit.RecruitUtil):IsHasRecruitFreeTimesByPoolId(PoolId)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_97
                local Args = { ... }
                local PoolId = Args[1]
                return (recruit.RecruitUtil):IsOpenRecruitPoolByPoolId(PoolId)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τ¡ëσ╛àµëôσ╝ÇΣ╗ôσ║ô",
            NoClean = true,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10544] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_98
                local Args = { ... }
                local PoolId = Args[1];
                (recruit.RecruitUtil):TurnToPoolId(PoolId)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µ¿íτ╗äΘí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_99
                local Args = { ... }
                local PoolId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not PoolId then
                    return
                end
                if CurUi:GetType() == "clsRecruitMainView" then
                    local RecruitInfoPanel = CurUi:GetRecruitInfoPanelByPoolId(PoolId)
                    local CurScene = sceneMgr:GetCurScene()
                    if not RecruitInfoPanel or not CurScene then
                        return
                    end                    -- DECOMPILER ERROR at PC32: Confused about usage of register: R8 in 'UnsetPending'


                    ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = RecruitInfoPanel:GetCompsByName("RecruitBtn")
                end
            end,
            StepDelay = 0.5,
            TipsId = 20544,
            TipsOffset = { 0, 0 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10545] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_100
                local Args = { ... }
                return recruit.IS_RECRUITING
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣µ¿íτ╗äµîëΘÆ\174",
            TipsId = 20545,
            WidgetName = "Φúàσñçµ¿íτ╗äτòîΘ¥ó_µ¿íτ╗ä",
        },
        [10546] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_101
                local Args = { ... }
                local HeroId = Args[1]
                local Idx = Args[2]
                local CardList = ((objdata.CardDataMgr):GetCardList())
                local CurCard = nil
                if not CardList then
                    for _, v in pairs({}) do
                        if v:GetId() == HeroId then
                            CurCard = v
                            break
                        end
                    end
                    do
                        local IsInsert = false
                        if not CurCard then
                            return IsInsert
                        end
                        local AddiCardInfo = CurCard:GetAddiCardInfo()
                        if AddiCardInfo and AddiCardInfo.SlotInfo then
                            for _, v in pairs(AddiCardInfo.SlotInfo) do
                                if v.Index == Idx then
                                    IsInsert = true
                                    break
                                end
                            end
                        end
                        do
                            return IsInsert
                        end
                    end
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φúàσñç)τé╣σÉîΦ░âµîëΘÆ\174",
            StepDelay = 0.5,
            TipsId = 20546,
            TipsOffset = { 0, 0 },
            WidgetName = "Φúàσñçµ¿íτ╗äσÉîΦ░â_σÉîΦ░âµîëΘÆ«",
        },
        [10551] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_102
                local Args = { ... }
                return (fightUnion.GetIsCombineUIOpen)()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τé╣σàÑσÅ\163",
            TipsId = 20551,
            TipsOffset = { 60, -160 },
            WidgetName = "Φï▒Θ¢äΣ╣ïΦ╖»σàÑσÅú",
        },
        [10552] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_103
                local Args = { ... }
                return (league.LeagueDataMgr):InLeague()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τé╣Φ»äτ║ºΘí╡τ¡\190",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_104
                local Args = { ... }
                local HeroClassId = Args[1]
                return (fightUnion.IsSelectHeroByHeroClassId)(HeroClassId)
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_105
                local Args = { ... }
                local HeroClassId = Args[1];
                (fightUnion.SetFtUnionHeroChooseListByHeroClassId)(HeroClassId)
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10553] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_106
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if CurScene and CurScene.m_MiniMapView then
                    return true
                end
                return false
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)Φ»äτ║ºµîæµêÿ",
            WidgetName = "Σ║ïσèíµë\128_Φ»äτ║ºµîëΘÆ«",
        },
        [10554] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_107
                local Args = { ... }
                local Id = Args[1]
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local MapView = uiMgr:GetObjWorldMapView()
                if not MapView then
                    return
                end
                local TrickPlayListView = MapView.m_TrickPlayListView
                if not TrickPlayListView then
                    return
                end
                local ItemList = TrickPlayListView:GetTrickPlayItem()
                if not ItemList then
                    return
                end
                local Item = ItemList[Id]
                if not Item then
                    return
                end                -- DECOMPILER ERROR at PC34: Confused about usage of register: R10 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("BtnEnter")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)ΦºúΘöü1",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_108
                local Args = { ... }
                return (areaEvent.AreaEventDataMgr):GetIsAutoFight()
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_109
                do
                    local Args = { ... }
                    do
                        return (areaEvent.AreaEventDataMgr):GetCurStageId() == Args[1]
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            TipsId = 20554,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10555] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_110
                local Args = { ... }
                local Id = Args[1]
                if not Id then
                    return
                end
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local MapView = uiMgr:GetObjWorldMapView()
                if not MapView then
                    return
                end
                MapView:OnFunClick(Id)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_111
                local Args = { ... }
                local ItemList = objdata:GetItemByItemType({ Args[1] })
                if ItemList then
                    return next(ItemList)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)τ¡ëσ╛àσè¿µòêµÆ¡σ«î",
            NoClean = true,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10556] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_112
                local Args = { ... }
                do
                    local ItemList, Amount = objdata:GetItemAmountByItemSort(Args[1])
                    do
                        return Amount > 0
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φï▒Θ¢äΦ»äτ║º)Φ┐öσ¢₧",
            TipsId = 20556,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«",
        },
        [10561] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_113
                local Args = { ... }
                return (fightUnion.GetIsOpenFtUnionTipUI)()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╛üτ╗è)τé╣µëïµ£\186",
            TipsId = 20561,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10562] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_114
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                    return
                end
                return CurUi:IsCombatPanelOpen()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╛üτ╗è)τé╣Φï▒Θ¢äApp",
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10563] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_115
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                    return
                end
                return CurUi:IsCollaborationOpen()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╛üτ╗è)τé╣τ╗┐Φ░\183",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_116
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                    return
                end
                return CurUi:IsPVPPageOpen()
            end,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10564] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_117
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                    return
                end
                return CurUi:IsMainPageOpen()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╛üτ╗è)τé╣τ╛üτ╗èµîëΘÆ\174",
            TipsId = 20564,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_τ╛üτ╗èµîëΘÆ«",
        },
        [10565] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_118
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                    return
                end
                return CurUi:IsTimePlayPageOpen()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╛üτ╗è)ΘÜÅΣ╛┐τé\185",
            TipsId = 20565,
            TipsOffset = { 362, 153 },
            WidgetName = "µÅ┤σè⌐ΘÜÅΣ╛┐τé╣σî║σƒ\159",
        },
        [10566] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_119
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "MainFunEntranceView" then
                    return
                end
                return CurUi:IsFunOtherOpen()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ╛üτ╗è)τé╣∩╝ƒ",
            TipsId = 20566,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«",
        },
        [10571] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_120
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                    return
                end
                if CurUi.BaseView and CurUi:GetCurBtnView("Btn_Exercise") then
                    return (CurUi.BaseView).m_FeedAniShow
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτö╡µ░ö)τé╣µëïµ£\186",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_121
                local Args = { ... }
                local TypeId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetGuideBtnById then
                    return
                end
                local TypeBtn = CurUi:GetGuideBtnById(TypeId)
                if not TypeBtn then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TypeBtn
            end,
            TipsId = 20571,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10572] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_122
                local Args = { ... }
                local FinishPVPGuide = ((stage.InstMgr)()):GetFinishPVPGuide()
                if FinishPVPGuide and FinishPVPGuide > 0 then
                    return true
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτö╡µ░ö)τé╣Φï▒Θ¢äApp",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_123
                local Args = { ... }
                local CityLevel = Args[1]
                return (map.CityExpUtil):IsCanGetRewardByCityLevel(CityLevel)
            end,
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10573] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_124
                local Args = { ... }
                local CityLevel = Args[1]
                return (map.CityExpUtil):IsGetRewardByCityLevel(CityLevel)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτö╡µ░ö)τé╣τö╡µ░\148",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_125
                local Args = { ... }
                local CityLevel = Args[1]
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local CityExpMainView = uiMgr:GetUiViewObj("map/cityExp/cityExpMainViewUI")
                if not CityExpMainView then
                    return
                end
                local CityExpItem = CityExpMainView:GetCityExpItemByCityLevel(CityLevel)
                if not CityExpItem then
                    return
                end                -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CityExpItem.m_IconNode
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_126
                local Args = { ... }
                local FinishCount = (task.TaskMgr):GetWorldTaskFinishCount()
                do
                    local AllCount = (task.TaskMgr):GetWorldTaskAllCount()
                    print("00000000000000", FinishCount, AllCount)
                    do
                        return FinishCount < AllCount
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            TipsId = 20573,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10574] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_127
                local Args = { ... }
                return (team.TeamUtil):IsTeamFull()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτö╡µ░ö)τé╣σìçτ║\167",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_128
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local TeamView = uiMgr:GetUiViewObj("team/teamViewUI")
                if not TeamView then
                    return
                end
                local TeamTargetSecretPanel = TeamView.m_TeamStageTargetPanel
                if not TeamTargetSecretPanel then
                    return
                end                -- DECOMPILER ERROR at PC25: Confused about usage of register: R7 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TeamTargetSecretPanel:GetCompsByName("StageKeyBtn")
            end,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_σìçτ║ºµîëΘÆ«",
        },
        [10575] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_129
                local Args = { ... }
                return (team.TeamUtil):IsHasSecretMapCount()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτö╡µ░ö)τé╣Σ╕ÇΘö«σìçτ║\167",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_130
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local TeamView = uiMgr:GetUiViewObj("team/teamViewUI")
                if not TeamView then
                    return
                end
                return TeamView.m_IsRun
            end,
            TipsId = 20575,
            TipsOffset = { -100, 190 },
            WidgetName = "Φï▒Θ¢äσìçτ║º_Σ╕\128Θö«σìçτ║\167",
        },
        [10576] = {
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_131
                local Args = { ... }
                local StageID = Args[1];
                (herotheater.HeroTheaterDataMgr):MoveStageItemByGuide(StageID)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτö╡µ░ö)τé╣τí«Φ«\164",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_132
                local Args = { ... }
                return (herotheater.HeroTheaterDataMgr):IsMainViewMoveEnd()
            end,
            WidgetName = "τí«Φ«ñσìçτ║º_σìçτ║º",
        },
        [10577] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_133
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local Item = (herotheater.HeroTheaterDataMgr):ReturnCurStageItem()
                if not Item then
                    return
                end                -- DECOMPILER ERROR at PC21: Confused about usage of register: R6 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("NodeGuide")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σìçτ║ºτö╡µ░ö)τé╣µáçΘóÿΦ┐öσ¢\158",
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10581] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_134
                local Args = { ... }
                local StageID = Args[1]
                return (herotheater.HeroTheaterDataMgr):IsCurStageItem(StageID)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëçΦ╢àΘóæ)τé╣Φè»τë\135",
            TipsId = 20581,
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_Φè»τëçµîëΘÆ«",
        },
        [10582] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_135
                local Args = { ... }
                local StageID = Args[1]
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local Item = (herotheater.HeroTheaterDataMgr):GetStageItem(StageID)
                if not Item then
                    return
                end                -- DECOMPILER ERROR at PC23: Confused about usage of register: R7 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("Node17")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëçΦ╢àΘóæ)τé╣Φ╢àΘó\145",
            TipsId = 20582,
            WidgetName = "Φè»τëçΦ╢àΘóæµîëΘÆ«",
        },
        [10583] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_136
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local Item = (herotheater.HeroTheaterDataMgr):GetEnterBtn()
                if not Item then
                    return
                end                -- DECOMPILER ERROR at PC18: Confused about usage of register: R6 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëçΦ╢àΘóæ)τé╣Θüôσà\183",
            TipsId = 20583,
            WidgetName = "Φè»τëçΦ╢àΘóæτòîΘ¥ó_Θüôσà╖",
        },
        [10584] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_137
                local Args = { ... }
                local TaskId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetGuideBtnByTaskId then
                    return
                end
                local TaskBtn = CurUi:GetGuideBtnByTaskId(TaskId)
                if not TaskBtn then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = TaskBtn
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Φè»τëçΦ╢àΘóæ)τé╣ΦÄ╖σÅûΘ\128öσ╛ä",
            TipsId = 20584,
            TipsOffset = { 0, -150 },
            WidgetName = "Θüôσà╖Φ»ªµâà_ΦÄ╖σÅûΘÇöσ╛ä",
        },
        [10591] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_138
                local Args = { ... }
                local Status = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetGuideBtnByStatus then
                    return
                end
                local StatusBtn = CurUi:GetGuideBtnByStatus(Status)
                if not StatusBtn then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = StatusBtn
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ¢óµ£¼Σ╗ïτ╗ì)τé╣σìÅΣ╜\156",
            TipsId = 20591,
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_σìÅΣ╜£µîëΘÆ«",
        },
        [10592] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_139
                local Args = { ... }
                local TaskId = Args[1]
                local Status = Args[2]
                return (entrust.EntrustDataMgr):CheckEntrustStatusByTaskId(TaskId, Status)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ¢óµ£¼Σ╗ïτ╗ì)τé╣σ¢óµ£\172",
            TipsOffset = { -30, 0 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_σ¢óµ£¼µîëΘÆ«",
        },
        [10593] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_140
                local Args = { ... }
                local TaskId = (entrust.EntrustDataMgr):GetCurChallengeTaskId()
                if not TaskId then
                    return false
                end
                local EntrustCfg = (entrust.EntrustUtil):GetEntrustCfgById(TaskId)
                if not EntrustCfg then
                    return false
                end
                local HeroAmount = EntrustCfg.HeroAmount
                if not HeroAmount then
                    return false
                end
                do
                    local ChallengeHero = (entrust.EntrustDataMgr):GetCurChallengeHero()
                    if not ChallengeHero then
                        return false
                    end
                    do
                        return HeroAmount <= #ChallengeHero
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σ¢óµ£¼Σ╗ïτ╗ì)τé╣∩╝ƒ",
            TipsId = 20593,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«",
        },
        [10601] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_141
                local Args = { ... }
                local Index = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetGuideBtnByIndex then
                    return
                end
                local IndexBtn = CurUi:GetGuideBtnByIndex(Index)
                if not IndexBtn then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = IndexBtn
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "BP)σ▒òσ╝Çµ┤╗σè¿σêùΦí¿",
            WidgetName = "Σ╕╗τòîΘ¥ó_σ▒òσ╝ÇµîëΘÆ«",
        },
        [10602] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_142
                local Args = { ... }
                local HeroCId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetGuideBtnByHeroCId then
                    return
                end
                local HeroBtn = CurUi:GetGuideBtnByHeroCId(HeroCId)
                if not HeroBtn then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC26: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = HeroBtn
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "BP)Σ╕╗τòîΘ¥óτé╣σàÑσÅú",
            TipsId = 20601,
            WidgetName = "Σ╕╗τòîΘ¥ó_Φï▒Θ¢äµª£σìòµîëΘÆ«",
        },
        [10603] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_143
                local Args = { ... }
                if uiMgr:GetCurUiName() == "FragmentStageView" then
                    local item = ((uiMgr:GetCurUi()):GetStageInfoList()):GetItem(Index)
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "BP)τé\1851τ║ºσÑûσè\177",
            TipsId = 20602,
            TipsOffset = { 0, 120 },
            WidgetName = "BP_Φ┤íτî«ΘóåσÑû",
        },
        [10604] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_144
                local Args = { ... }
                if FragmentStageMgr:GetCurHeroId() == 0 then
                    return false
                else
                    return true
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "BP)τé╣Σ╗╗σèíσêåΘí\181",
            WidgetName = "BP_Σ╗╗σèíΘí╡τ¡╛",
        },
        [10605] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_145
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                if not CurScene.m_ActivityBtnsView then
                    return
                end
                return (CurScene.m_ActivityBtnsView):GetIsTopBtnOpen()
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "BP)ΘóåσÅûτÖ╗σ╜òσÑûσè▒",
            TipsId = 20604,
            WidgetName = "BP_ΘóåσÅûσæ¿Σ╗╗σèíΦ┤íτî\174",
        },
        [10606] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_146
                local Args = { ... }
                local Level = Args[1]
                return (welfare.WelfareDataMgr):IsGetLevelReward(Level)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "BP)τé╣σÑûσè▒σêåΘí\181",
            WidgetName = "BP_ΘóåσÑûΘí╡τ¡╛",
        },
        [10607] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_147
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return false
                end
                local WelfaceView = uiMgr:GetUiViewObj("welfare/welfaceViewUI")
                if not WelfaceView then
                    return false
                end
                local MenuItemList = WelfaceView.m_MenuItemList
                if not MenuItemList then
                    return false
                end
                local MenuItem = MenuItemList[(welfare.WELFARE_TYPE_ID).LEVEL_REWARD]
                if not MenuItem then
                    return false
                end
                local BtnComp = MenuItem.m_BtnCheck
                if not BtnComp then
                    return false
                end                -- DECOMPILER ERROR at PC38: Confused about usage of register: R9 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = BtnComp
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "BP)τé╣µ┐Çµ┤╗Θó¥σñûΦ┤íτî«Φ»ü",
            TipsId = 20606,
            WidgetName = "BP_ΘóåσÑû_Φ┤¡Σ╣░σç¡Φ»üµîëΘÆ«",
        },
        [10611] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_148
                local Args = { ... }
                local PoolId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not PoolId then
                    return
                end
                if CurUi:GetType() == "clsRecruitView" then
                    local RecruitPoolView = CurUi:GetRecruitPoolViewByPoolId(PoolId)
                    local CurScene = sceneMgr:GetCurScene()
                    if not RecruitPoolView or not CurScene then
                        return
                    end                    -- DECOMPILER ERROR at PC32: Confused about usage of register: R8 in 'UnsetPending'


                    ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = RecruitPoolView:GetCompsByName("BtnPool")
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σë»σìíσà╗µêÉ)τé╣µëïµ£\186",
            TipsId = 20611,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10612] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_149
                local Args = { ... }
                local ItemId = tonumber(Args[1])
                local Count = objdata:GetItemAmountByItemId(ItemId)
                if Count > 0 then
                    return true
                end
                return false
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σë»σìíσà╗µêÉ)τé╣Φï▒Θ¢äApp",
            TipsOffset = { -40, 115 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«",
        },
        [10613] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_150
                local Args = { ... }
                local ItemId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if CurUi and CurUi:GetType() == "clsCardCultivateListView" then
                    local BaseView = CurUi.BaseView
                    if BaseView then
                        local Instance = BaseView.m_FtUnionCardsInstance
                        if Instance then
                            local Comp = Instance:GetItemComp(ItemId)
                            if Comp then
                                local CurScene = sceneMgr:GetCurScene()
                                if not CurScene then
                                    return
                                end                                -- DECOMPILER ERROR at PC32: Confused about usage of register: R10 in 'UnsetPending'


                                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Comp
                            end
                        end
                    end
                end
                do
                    return false
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σë»σìíσà╗µêÉ)τé╣τ╗┐Φ░\183",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_151
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local CurUi = uiMgr:GetCurUi()
                if CurUi and CurUi:GetType() == "clsHomeSceneMainView" then
                    local Comp = CurUi:GetBuildingHeroViewByFloorId(Args[1])
                    -- DECOMPILER ERROR at PC25: Confused about usage of register: R7 in 'UnsetPending'

                    if Comp then
                        ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Comp
                    end
                end
            end,
            TipsId = 20613,
            TipsOffset = { 0, 250 },
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî",
        },
        [10614] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_152
                local Args = { ... }
                local CurScene = sceneMgr:GetCurScene()
                if not CurScene then
                    return
                end
                local Comp = (home.HomeUtil):GetFurnitureProductionItemByItemId(Args[1])
                -- DECOMPILER ERROR at PC18: Confused about usage of register: R6 in 'UnsetPending'

                if Comp then
                    ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Comp
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σë»σìíσà╗µêÉ)τé╣σë»σìíµîëΘÆ\174",
            TipsOffset = { -80, 45 },
            WidgetName = "Φï▒Θ¢äσà╗µêÉ_σë»σìíµîëΘÆ«",
        },
        [10615] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_153
                local Args = { ... }
                local Index = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.m_Items then
                    return
                end
                local Item = (CurUi.m_Items)[Index]
                local CurScene = sceneMgr:GetCurScene()
                if not Item or not Item then
                    return
                end                -- DECOMPILER ERROR at PC28: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = Item:GetCompsByName("BtnType")
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σë»σìíσà╗µêÉ)τé╣σë»σìíµº╜Σ╜\141",
            TipsId = 20615,
            TipsOffset = { 0, 90 },
            WidgetName = "σë»σìíτòîΘ¥ó_1Φí\1401µº\189",
        },
        [10616] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_154
                local Args = { ... }
                local Index = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetHeroIdByIndex then
                    return
                end
                return CurUi:GetHeroIdByIndex(Index)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σë»σìíσà╗µêÉ)τé╣σìçτ║ºσë»σì\161",
            TipsOffset = { 0, 0 },
            WidgetName = "σë»σìíΦ»ªµâàσ╝╣τ¬ù_σìçτ║º",
        },
        [10617] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_155
                local Args = { ... }
                Args[-1] = "clsBattlefieldFormationView"
                guide:GetGuideBtn(Args)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σë»σìíσà╗µêÉ)τé╣Σ╕ÇΘö«σìçτ║\167",
            TipsId = 20617,
            TipsOffset = { 250, 0 },
            WidgetName = "σë»σìíσìçτ║ºτòîΘ¥ó_Σ╕\128Θö«σìçτ║\167",
        },
        [10621] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_156
                local Args = { ... }
                local BattlefieldVideoState = (utils.SystemUtils):GetAccountValue("BattlefieldVideoState")
                Args[-1] = "clsBattlefieldFormationView"
                Args[1] = BattlefieldVideoState
                return guide:CheckCurUIGuide(Args)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182)τé╣µëïµ£\186",
            TipsId = 20621,
            TipsOffset = { 235, 80 },
            WidgetName = "Σ╕╗τòîΘ¥óµëïµ£\186",
        },
        [10622] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_157
                local Args = { ... }
                return (objdata.ActivityControl):IsCheckActStatusByActType((activity.ACTIVITY_SORT_ID).SEVEN_ACTIVITY)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182)τé╣σìÅΣ╜£µîëΘÆ\174",
            TipsOffset = { -40, -105 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_σìÅΣ╜£µîëΘÆ«",
        },
        [10623] = {
            AdaptStyle = 6,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_158
                local Args = { ... }
                local CheckAmount = tonumber(Args[1]) or 0
                do
                    local CurAmount = (heroroad.HeroGloryMgr):GetTotalStar() or 0
                    do
                        return CheckAmount <= CurAmount
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182)τé╣τ┤ºµÇÑΣ║ïΣ╗\182",
            TipsId = 20623,
            TipsOffset = { -30, 0 },
            WidgetName = "µëïµ£║τòîΘ¥ó_σÅ│_τ┤ºµ\128ÑΣ║ïΣ╗╢µîëΘÆ\174",
        },
        [10624] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_159
                local Args = { ... }
                local HeroClassId = tonumber(Args[1])
                do
                    local ActiveStatus = tonumber(Args[2])
                    do
                        return (heroroad.HeroGloryMgr):GetHeroExamActiveStatus(HeroClassId) == ActiveStatus
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182)τé╣τ╗äΘÿ\159",
            TipsId = 20624,
            TipsOffset = { 165, 25 },
            WidgetName = "τ┤ºµ\128ÑΣ║ïΣ╗╢_Σ║ïΣ╗╢σñäτÉå",
        },
        [10625] = {
            AdaptStyle = 9,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_160
                local Args = { ... }
                Args[-1] = "clsHeroScoreExamMainView"
                Args[1] = "GetCanActiveGuideBtn"
                guide:GetGuideBtn(Args)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182)σî╣Θàì",
            TipsId = 20625,
            TipsOffset = { 0, 90 },
            WidgetName = "τ╗äΘÿƒτòîΘ¥ó_σî╣Θàì",
        },
        [10626] = {
            AdaptStyle = 5,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_161
                local Args = { ... }
                local Id = tonumber(Args[1])
                do
                    local RewardStatus = tonumber(Args[2])
                    do
                        return (heroroad.HeroGloryMgr):GetRewardStatusById(Id) == RewardStatus
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182)τí«σ«Üσî╣Θàì",
            TipsOffset = { 0, -100 },
            WidgetName = "τ╗äΘÿƒ_σî╣Θàìσ╝╣τ¬ù_σî╣Θàì",
        },
        [10627] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_162
                local Args = { ... }
                Args[-1] = "clsHeroRoadMainView"
                Args[1] = "GetHeroStarRewardCanReceiveGuideBtn"
                guide:GetGuideBtn(Args)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_163
                local Args = { ... }
                Args[-1] = "clsHeroScoreExamMainView"
                Args[1] = false
                Args[2] = "IsPlayingActiveEffect"
                return guide:CheckCurUIGuide(Args)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182)τ¡ëσ╛àµ╗íΘÿƒ",
            NoClean = true,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_164
                local Args = { ... }
                Args[-1] = "clsWelfareView"
                Args[1] = (welfare.WELFARE_TYPE_ID).GROWTH_FUND
                guide:GetGuideBtn(Args)
            end,
            TipsId = 20627,
            WidgetName = "σ▒Åσ╣òσñ\150",
        },
        [10628] = {
            AdaptStyle = 3,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_165
                local Args = { ... }
                Args[-1] = "clsWelfareView"
                Args[1] = (welfare.WELFARE_TYPE_ID).GROWTH_FUND
                Args[2] = 1
                guide:GetGuideBtn(Args)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182)σç║σç╗",
            TipsId = 20628,
            TipsOffset = { 35, 160 },
            WidgetName = "τ╗äΘÿƒτòîΘ¥ó_σç║σç╗",
        },
        [10631] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_166
                local Args = { ... }
                local Lv = tonumber(Args[1])
                return (recharge.RechargeUtil):IsReceiveGrowthFundReward(Lv)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)µ£ëΘÿƒΘÇëµï⌐τ¢«µáç",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_167
                local Args = { ... }
                Args[-1] = "clsPChallengeMainView"
                Args[1] = 1
                guide:GetGuideBtn(Args)
            end,
            WidgetName = "σñºτºÿσóâτòîΘ¥ó_µáçΘóÿµîëΘÆ«",
        },
        [10632] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_168
                local Args = { ... }
                local Score = tonumber(Args[1])
                return (pchallenge.PChallengeUtils):CheckScoreLock(Score)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)µ£ëΘÿƒτé╣σç╗Θí╡τ¡╛",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_169
                local Args = { ... }
                Args[-1] = "clsArenaQualifyingMainView"
                Args[1] = "GetGuideBtnByChallenge"
                guide:GetGuideBtn(Args)
            end,
            WidgetName = "σñºτºÿσóâ_τ¢«µáçΦ»ªµâàτòîΘ¥ó_τ¢«µáçσêçµìóµîëΘÆ«",
        },
        [10633] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_170
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or CurUi.__Name__ ~= "CardCultivateListView" then
                    return
                end
                if CurUi.BaseView and CurUi:GetCurBtnView("Btn_Exercise") then
                    return (CurUi.BaseView).m_ExerciseAniShow
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)µ£ëΘÿƒσêçµìóσñºτºÿσó\131",
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_171
                local Args = { ... }
                local HeroClsId = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if
                    not CurUi
                    or not CurUi.BaseView
                    or not (CurUi.BaseView).m_ShortcutPanel
                    or not ((CurUi.BaseView).m_ShortcutPanel).LocationToHeroClsId
                then
                    return
                end
                local CardItem = ((CurUi.BaseView).m_ShortcutPanel):LocationToHeroClsId(HeroClsId)
                local CurScene = sceneMgr:GetCurScene()
                if not CardItem or not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC40: Confused about usage of register: R8 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CardItem:GetCompsByName("Btn_Click")
            end,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_172
                local Args = { ... }
                Args[-1] = "clsArenaQualifyingMainView"
                Args[1] = true
                Args[2] = "IsPlayingVideo"
                return guide:CheckCurUIGuide(Args)
            end,
            WidgetName = "σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«",
        },
        [10634] = {
            AdaptStyle = 2,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_173
                local Args = { ... }
                local MyRank = (arena.ArenaQualifyingDataMgr):GetRankId()
                local RankListCfg = (arena.ArenaQualifyingDataMgr):GetRankListCfgByRank(MyRank)
                local CulCount = (arena.ArenaQualifyingDataMgr):GetCulCount() or 0
                local TempCount = 0
                local CulTime = (arena.ArenaQualifyingDataMgr):GetCulTime() or 0
                local ShowCountLimit = nil
                if CulTime ~= 0 then
                    TempCount = (arena.ArenaQualifyingDataMgr):GetOffLineTempCount()
                end
                if MyRank == 0 then
                    ShowCountLimit = ((ALLSETTING.OFFLINEPVP_CFG).Const).HOUR_REWARD_OUT_RANK
                else
                    if not RankListCfg or not RankListCfg.HourReward then
                        ShowCountLimit = ((ALLSETTING.OFFLINEPVP_CFG).Const).HOUR_REWARD_OUT_RANK
                    end
                end
                do
                    local TotalCount = CulCount + TempCount
                    do
                        return ShowCountLimit / 2 < TotalCount
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕)µ£ëΘÿƒΣ┐¥σ¡ÿσêçµìó",
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_174
                local Args = { ... }
                return guide:CheckIsInMainScene()
            end,
            WidgetName = "σñºτºÿσóâ_τ¢«µáç_Σ┐¥σ¡ÿ",
        },
        [150301] = {
            CheckFinishFunc = function(API, GUIDE, ...)
                -- function num : 0_175
                local Args = { ... }
                Args[-1] = "clsHeroRoadMainView"
                Args[1] = false
                Args[2] = "IsSelectTab"
                Args[3] = (heroroad.GOALS_TAB_TO_INDEX).HERO
                return guide:CheckCurUIGuide(Args)
            end,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_176
                local Args = { ... }
                local HeroClsId = Args[1]
                return (card.CardUtil):CheckCanRankByHeroClsId(HeroClsId)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "σë»σìí)ΘçìτÖ╗µÿ╛τñ║σ╝╣τ¬ù",
            NoClean = true,
            PreDoFunc = function(API, GUIDE, ...)
                -- function num : 0_177
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end
                -- DECOMPILER ERROR at PC22: Confused about usage of register: R6 in 'UnsetPending'

                if CurUi:GetType() == "clsActivityCenterView" then
                    ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurUi:GetSevenRewardsBtn()
                end
            end,
            WidgetName = "σ▒Åσ╣òσà¿σ▒Å",
        },
        [19999] = {
            AdaptStyle = 7,
            DoCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_178
                local Args = { ... }
                local Index = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi or not CurUi.GetTabItemByIndex then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC23: Confused about usage of register: R7 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurUi:GetTabItemByIndex(Index)
            end,
            EffectId = 10000201,
            ModeStyle = 3,
            Name = "τ½₧µèÇσ£\186)tip",
            TipsId = 20259,
            TipsOffset = { -320, -170 },
            WidgetName = "ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«",
        },
    },
    Guides = {
        [1101] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_179
                local Args = { ... }
                return uiMgr:GetUiViewObj("skill/skillLvUpViewUI")
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φï▒Θ¢äΦ«ñΦ»üµ┐\128µ┤╗µ¥âΘÖ\144",
            NeedBlock = true,
            Order = 1,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_180
                local Args = { ... }
                local IsFuncOpen = (objdata:GetFuncOpenMgr()):IsFuncOpen("Φï▒Θ¢äµëºτàº")
                local IsActOpen =
                    (objdata.ActivityControl):IsCheckActStatusByActType((activity.ACTIVITY_SORT_ID).BATTLEPASS)
                return not IsFuncOpen or IsActOpen
            end,
            Steps = { 10281 },
        },
        [1102] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_181
                local Args = { ... }
                do
                    local FreeRewardLv = (battlepass.BattlepassDataMgr):GetRewardLv()
                    do
                        return not FreeRewardLv or FreeRewardLv <= 0
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "µ▓╗σ«ë1-1Σ╕èΘÿ╡τ╗┐Φ░╖",
            NeedBlock = true,
            Order = 2,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_182
                local Args = { ... }
                return (battlepass.BattlepassUtil):CheckReddotByTaskType((battlepass.TASK_TYPE).WeekTask)
            end,
            Steps = { 10031, 10032, 10033, 10034, 10035 },
        },
        [1103] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_183
                local Args = { ... }
                return guide:IsFinishGuide(tonumber(Args[1]))
            end,
            Count = 1,
            GuideSet = 7,
            Name = "τ╗┐Φ░╖σìçτ║º",
            NeedBlock = true,
            OnlySkip = true,
            Order = 3,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_184
                local Args = { ... };
                (fightUnion.ShowAddiCardUseGuideAlter)()
            end,
            Steps = { 10041, 10042, 10043, 10044, 10045, 10046, 10047 },
        },
        [1104] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_185
                local Args = { ... }
                return (fightUnion.GetWearTypeCardHeroClsId)(fightUnion.ADDICARDTYPE_ACTIVE, tonumber(Args[1]))
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φï▒Θ¢äσìçτ║ºµè\128Φâ\189",
            NeedBlock = true,
            OnlySkip = true,
            Order = 4,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_186
                local Args = { ... }
                return (fightUnion.IsTrainUiShowingLevelUp)()
            end,
            Steps = { 10081, 10082, 10083, 10084, 10085, 10086, 10087 },
        },
        [1105] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_187
                local Args = { ... }
                return (emergency.EmergencyUtil):IsHasValidEvents()
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φï▒Θ¢äµï¢σïƒ",
            NeedBlock = true,
            OnlySkip = true,
            Order = 5,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_188
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi then
                    return
                end
                if CurUi:GetType() == "clsActivityCenterView" then
                    return CurUi:IsOpenType()
                end
            end,
            Steps = { 10301, 10302, 10303, 10304, 10305 },
        },
        [1106] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_189
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end
                if CurUi:GetType() == "clsActivityCenterView" then
                    local SevenActTab = CurUi:GetSevenActTab()                    -- DECOMPILER ERROR at PC22: Confused about usage of register: R7 in 'UnsetPending'


                    ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = SevenActTab
                    if SevenActTab then
                        return true
                    end
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "ΦºüΣ╣áτªÅσê⌐",
            NeedBlock = true,
            Order = 6,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_190
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi then
                    return
                end
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end
                -- DECOMPILER ERROR at PC22: Confused about usage of register: R6 in 'UnsetPending'

                if CurUi:GetType() == "clsActivityCenterView" then
                    ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = CurUi:GetSevenActTab()
                end
            end,
            Steps = { 10491, 10492, 10493 },
        },
        [1108] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_191
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi then
                    return
                end
                if CurUi:GetType() == "clsActivityCenterView" then
                    return CurUi:IsSelectSevenActTab()
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "τö╡µ░öσìçτ║º",
            NeedBlock = true,
            Order = 8,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_192
                local Args = { ... }
                local CurUi = uiMgr:GetCurUi()
                if not CurUi then
                    return
                end
                if CurUi:GetType() == "clsActivityCenterView" then
                    return CurUi:GetSevenRewardsCanGet()
                end
            end,
            Steps = { 10571, 10572, 10573, 10574, 10575, 10576 },
        },
        [1109] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_193
                local Args = { ... }
                local Index = Args[1]
                local CurUi = uiMgr:GetCurUi()
                if not CurUi then
                    return
                end
                return CurUi.m_IsStartMatch
            end,
            Count = 1,
            GuideSet = 7,
            Name = "µ▓╗σ«ë2-1Σ╕èΘÿ╡τö╡µ░ö",
            NeedBlock = true,
            Order = 9,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_194
                local Args = { ... }
                return (team.TeamUtil):IsInTeam()
            end,
            Steps = { 10071, 10072, 10073, 10074, 10075, 10076, 10077, 10078 },
        },
        [1110] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_195
                do
                    local Args = { ... }
                    do
                        return (team.TeamMgr):GetPlayId() == tonumber(Args[1])
                    end
                    -- DECOMPILER ERROR: 1 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φï▒Θ¢äΦ»äτ║º",
            NeedBlock = true,
            Order = 10,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_196
                local Args = { ... }
                return team:TeamRecruitSettingShowInPlayId(11)
            end,
            Steps = { 10501, 10502, 10503, 10504, 10505, 10506, 10507, 10508, 10509, 10498, 10499 },
        },
        [1111] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_197
                local Args = { ... }
                local CurScene = sceneMgr.s_CurScene
                if not CurScene then
                    return
                end                -- DECOMPILER ERROR at PC14: Confused about usage of register: R5 in 'UnsetPending'


                ((CurScene.m_BaseUI).m_UIComps).m_GuideNode = team:GetTeamRecruitSettingPlayMenuItemTouch(11)
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φï▒Θ¢äσà▒Θ╕ú",
            NeedBlock = true,
            Order = 11,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_198
                local Args = { ... }
                for _, CardData in pairs((objdata.CardDataMgr):GetCardList()) do
                    if CardData:HasRuneEquip() then
                        return CardData:GetId()
                    end
                end
            end,
            Steps = { 10061, 10062, 10063, 10064, 10065, 10066, 10067 },
        },
        [1112] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_199
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "τ⌐┐Φúàσñ\135+σ╝║σîû",
            NeedBlock = true,
            Order = 12,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_200
                do
                    local Args = { ... }
                    do
                        return (
                                not (API[17])(API, GUIDE, "σ£░σ¢╛_µÄóτ┤óΦ┐¢σ║ªτòîΘ¥ó")
                                and (API[17])(API, GUIDE, "σ£░σ¢╛τòîΘ¥ó")
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Steps = { 10231, 10232, 10233, 10234, 10235, 10236, 10237, 10238 },
        },
        [1113] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_201
                local Args = { ... }
                return (API[17])(API, GUIDE, "σ£░σ¢╛_µÄóτ┤óΦ┐¢σ║ªτòîΘ¥ó")
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φï▒Θ¢äΦ»äτ║º",
            NeedBlock = true,
            Order = 13,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_202
                local Args = { ... }
                return not (API[82])(API, GUIDE)
            end,
            Steps = { 10551, 10552, 10553, 10554, 10555, 10556 },
        },
        [1114] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_203
                local Args = { ... }
                if (API[17])(API, GUIDE, "σ£░σ¢╛τòîΘ¥ó") then
                    return (API[82])(API, GUIDE)
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φ╡äµ║Éµ£¼σ╝òσ»\188",
            NeedBlock = true,
            Order = 14,
            Steps = { 10401, 10402, 10403, 10404, 10405 },
        },
        [1115] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_204
                local Args = { ... }
                return not (API[82])(API, GUIDE)
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φ╢àΦâ╜σìÅσÉîµê\152",
            NeedBlock = true,
            Order = 15,
            Steps = { 10481, 10482, 10483, 10484, 10485, 10486 },
        },
        [1116] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_205
                local Args = { ... }
                return (API[14])(API, GUIDE, "WorldMapView")
            end,
            Count = 1,
            GuideSet = 7,
            Name = "τ┤ºµ\128ÑΣ║ïΣ╗\182",
            NeedBlock = true,
            Order = 16,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_206
                local Args = { ... };
                (API[55])(API, GUIDE, 201009)
            end,
            Steps = { 10621, 10622, 10623, 10624, 10628 },
        },
        [1117] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_207
                local Args = { ... }
                return (API[74])(API, GUIDE)
            end,
            Count = 1,
            GuideSet = 7,
            Name = "µè╜σë»σì\161",
            NeedBlock = true,
            Order = 17,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_208
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return not (API[74])(API, GUIDE)
                end
            end,
            Steps = { 10451, 10452, 10453, 10455, 10456 },
        },
        [1118] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_209
                local Args = { ... }
                return (API[74])(API, GUIDE)
            end,
            Count = 1,
            GuideSet = 7,
            Name = "τ⌐┐σë»σì\161",
            NeedBlock = true,
            Order = 18,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_210
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return not (API[37])(API, GUIDE)
                end
            end,
            Steps = { 10321, 10322, 10323, 10324, 10325, 10326, 10327 },
        },
        [1119] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_211
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φï▒Θ¢äΦ»òτé╝",
            NeedBlock = true,
            Order = 19,
            Steps = { 10431, 10432, 10433, 10434 },
        },
        [1120] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_212
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "σë»σìíσà╗µêÉ",
            NeedBlock = true,
            Order = 20,
            Steps = { 10611, 10612, 10613, 10614, 10615, 10616, 10617 },
        },
        [1121] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_213
                do
                    local Args = { ... }
                    do
                        return (API[4])(API, GUIDE, 1040)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 7,
            Name = "ΦüöσÉêΦíîσè¿",
            NeedBlock = true,
            Order = 21,
            Steps = { 10411, 10412, 10413, 10414 },
        },
        [1122] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_214
                local Args = { ... }
                return (API[5])(API, GUIDE, 1040)
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Φè»τëç",
            NeedBlock = true,
            Order = 22,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_215
                do
                    local Args = { ... }
                    do
                        return (API[5])(API, GUIDE, 1040)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Steps = { 10181, 10182, 10183, 10184, 10185, 10186, 10187, 10188 },
        },
        [1123] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_216
                local Args = { ... }
                return (API[17])(API, GUIDE, "σî║σƒƒΣ║ïΣ╗╢σ£░σ¢╛τòîΘ¥ó")
            end,
            Count = 1,
            GuideSet = 7,
            Name = "Σ╗ïτ╗ìσñ£µêÿµÄëΦè»τë\135",
            NeedBlock = true,
            Order = 23,
            Steps = { 10201, 10202, 10203, 10204, 10205, 10206 },
        },
        [1124] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_217
                do
                    local Args = { ... }
                    do
                        return ((API[47])(API, GUIDE, 1, 1, 1) or (API[16])(API, GUIDE)) and not (API[17])(
                            API,
                            GUIDE,
                            "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó"
                        )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "ΦúàσñçµÅÉσìç+µö╣Θ\128\160",
            NeedBlock = true,
            Order = 13,
            Steps = { 10531, 10532, 10533, 10534, 10535, 10536, 10537, 10538 },
        },
        [1202] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_218
                local Args = { ... }
                return (API[47])(API, GUIDE, 1, 1, 1)
            end,
            Count = 1,
            GuideSet = 8,
            Name = "Σ║ïσèíµë\128τ¢«µáç",
            NeedBlock = true,
            Order = 2,
            Steps = { 10141, 10143, 10144 },
        },
        [1203] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_219
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") then
                    return not (API[47])(API, GUIDE, 124, 1)
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "Φï▒Θ¢äµùÑσ╕╕",
            NeedBlock = true,
            Order = 3,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_220
                local Args = { ... };
                (API[48])(API, GUIDE, 124)
            end,
            Steps = { 10131, 10132, 10133, 10134, 10136, 10137, 10138 },
        },
        [1204] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_221
                local Args = { ... }
                if not (API[47])(API, GUIDE, 1, 1, 1) then
                    return (API[47])(API, GUIDE, 124, 1)
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "σƒÄσ╕éτ¡ëτ║ºσ╝òσ»╝∩╝ÜµƒÑτ£ïτ╣üΦìúσ║ªΦÄ╖σÅûµû╣σ╝Å-ΘóåσÅû1τ║ºσÑûσè\177-ΘÇ\128σç\186",
            NeedBlock = true,
            Order = 4,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_222
                do
                    local Args = { ... }
                    do
                        return ((API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") or (API[47])(
                            API,
                            GUIDE,
                            1,
                            1,
                            1
                        )) and not (API[17])(
                            API,
                            GUIDE,
                            "µ▓╗σ«ëσç║σç╗_Φªåτ¢ûΦ┐¢σ║ªΣ║îτ║ºσ╝╣τ¬ù"
                        )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Steps = { 10391, 10392, 10393, 10394, 10395 },
        },
        [1205] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_223
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "σºöµëÿΣ╗╗σèí",
            NeedBlock = true,
            Order = 5,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_224
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            Steps = { 10421, 10422, 10423, 10424, 10425 },
        },
        [1206] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_225
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "σñ⌐Φ╡ï",
            NeedBlock = true,
            Order = 6,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_226
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            Steps = { 10101, 10102, 10103, 10104, 10105, 10106 },
        },
        [1207] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_227
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            Count = 1,
            GuideSet = 8,
            Name = "Φüöτ¢ƒ",
            NeedBlock = true,
            Order = 7,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_228
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            Steps = { 10311, 10312, 10313 },
        },
        [1208] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_229
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "Φï▒Θ¢äσëºσ£║",
            NeedBlock = true,
            Order = 8,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_230
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó") then
                    return (API[60])(API, GUIDE)
                end
            end,
            Steps = { 10241, 10242, 10243, 10244, 10245 },
        },
        [1209] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_231
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "τ½₧µèÇσ£\186",
            NeedBlock = true,
            Order = 9,
            Steps = { 10251, 10252, 10253 },
        },
        [1210] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_232
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") then
                    return (API[60])(API, GUIDE)
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "Σ║ïσèíµë\128ΦÇâµá╕",
            NeedBlock = true,
            Order = 10,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_233
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            Steps = { 10211, 10212, 10213, 10214, 10215, 10631, 10632, 10633, 10634, 10216, 10217, 10218 },
        },
        [1211] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_234
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[57])(API, GUIDE, "Btn_Exercise")
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "Φï▒Θ¢äΦ»äτ║º",
            NeedBlock = true,
            Order = 11,
            Steps = { 10511, 10512, 10513, 10514 },
        },
        [1212] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_235
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[80])(API, GUIDE, 124, 2)
                end
            end,
            Count = 1,
            GuideSet = 8,
            Name = "τë╣σê½Φíîσè¿",
            NeedBlock = true,
            Order = 12,
            Steps = { 10461, 10462, 10463, 10464 },
        },
        [1301] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_236
                local Args = { ... }
                if (API[80])(API, GUIDE, 124, 2) then
                    return not (API[121])(API, GUIDE)
                end
            end,
            Count = 1,
            GuideSet = 9,
            Name = "Σ╕╗τ║┐µîçσ╝ò",
            NeedBlock = true,
            Order = 1,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_237
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Steps = { 10011 },
        },
        [1302] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_238
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1611",
            NeedBlock = true,
            OnlySkip = true,
            Order = 2,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_239
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            Steps = { 10012 },
        },
        [1303] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_240
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1612",
            Order = 3,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_241
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            Steps = { 10012 },
        },
        [1304] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_242
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1613",
            Order = 4,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_243
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            Steps = { 10012 },
        },
        [1305] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_244
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó")
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1614",
            Order = 5,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_245
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            Steps = { 10012 },
        },
        [1306] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_246
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") then
                    return not (API[171])(API, GUIDE)
                end
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1615",
            Order = 6,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_247
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[177])(API, GUIDE, 124)
                end
            end,
            Steps = { 10012 },
        },
        [1307] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_248
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") then
                    return (API[17])(API, GUIDE, "Σ╜┐τö¿σÖ¿µ¥ÉτòîΘ¥ó")
                end
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1616",
            Order = 7,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_249
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) then
                    return (API[177])(API, GUIDE, 124)
                end
            end,
            Steps = { 10012 },
        },
        [1308] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_250
                local Args = { ... }
                return not (API[171])(API, GUIDE)
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1617",
            Order = 8,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_251
                do
                    local Args = { ... }
                    do
                        return (API[57])(API, GUIDE, "Btn_Exercise") and (((API[59])(API, GUIDE, 124, 1) or (API[177])(
                            API,
                            GUIDE,
                            124
                        )) and (API[171])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Steps = { 10012 },
        },
        [1309] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_252
                local Args = { ... }
                if not (API[59])(API, GUIDE, 124, 1) and (API[177])(API, GUIDE, 124) then
                    return not (API[171])(API, GUIDE)
                end
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1618",
            Order = 9,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_253
                do
                    local Args = { ... }
                    do
                        return (API[57])(API, GUIDE, "Btn_Exercise") and (((API[59])(API, GUIDE, 124, 1) or (API[177])(
                            API,
                            GUIDE,
                            124
                        )) and not (API[171])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Steps = { 10012 },
        },
        [1310] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_254
                local Args = { ... }
                return (API[59])(API, GUIDE, 124, 1)
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\1619",
            Order = 10,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_255
                local Args = { ... }
                if (API[57])(API, GUIDE, "Btn_Exercise") and (API[59])(API, GUIDE, 124, 1) then
                    return not (API[171])(API, GUIDE)
                end
            end,
            Steps = { 10012 },
        },
        [1311] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_256
                local Args = { ... }
                if (API[11])(API, GUIDE) then
                    return (API[17])(API, GUIDE, "σ┐½Θ\128ƒσêçµìóΦï▒Θ¢äτòîΘ¥\162")
                end
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\16110",
            Order = 11,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_257
                local Args = { ... };
                (API[172])(API, GUIDE, 110)
            end,
            Steps = { 10012 },
        },
        [1312] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_258
                do
                    local Args = { ... }
                    do
                        return (API[175])(API, GUIDE)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\16111",
            Order = 12,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_259
                local Args = { ... }
                if (API[53])(API, GUIDE) then
                    return (API[118])(API, GUIDE)
                end
            end,
            Steps = { 10012 },
        },
        [1313] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_260
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó")
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\16112",
            Order = 13,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_261
                local Args = { ... };
                (API[50])(API, GUIDE, 124)
            end,
            Steps = { 10012 },
        },
        [1314] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_262
                local Args = { ... }
                return (API[17])(API, GUIDE, "Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó")
            end,
            Count = 1,
            GuideSet = 9,
            Name = "τé╣σ┐½µì╖Σ╗╗σè\16113",
            Order = 14,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_263
                local Args = { ... }
                return (API[57])(API, GUIDE, "Btn_Resonate")
            end,
            Steps = { 10012 },
        },
        [1401] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_264
                local Args = { ... }
                if (API[17])(API, GUIDE, "σà▒Θ╕úσ¡ÉτòîΘ¥\162") then
                    return not (API[64])(API, GUIDE, 124, 0, 1)
                end
            end,
            Count = 1,
            GuideSet = 1,
            Name = "µ▓╗σ«ëΦç¬σè¿µîçσ╝ò",
            OnlySkip = true,
            Order = 1,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_265
                local Args = { ... }
                return (API[64])(API, GUIDE, 124, 0, 1)
            end,
            Steps = { 10381 },
        },
        [1402] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_266
                do
                    local Args = { ... }
                    do
                        return (API[64])(API, GUIDE, 124, 0, 1) and (((API[17])(
                            API,
                            GUIDE,
                            "σà▒Θ╕úσ¡ÉτòîΘ¥\162"
                        ) or (API[17])(API, GUIDE, "σà▒Θ╕úσ▒òτñ║τòîΘ¥ó")) and not (API[17])(
                            API,
                            GUIDE,
                            "µû░Φï▒Θ¢äτÖ╗σ£║τòîΘ¥\162"
                        ) and not (API[17])(
                            API,
                            GUIDE,
                            "ΘÇÜτö¿σÑûσè▒σ╝╣τ¬ù"
                        ) and not (API[65])(API, GUIDE))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 2,
            Name = "σ«┐Φêìµîçσ╝ò",
            NeedBlock = true,
            Order = 1,
            Steps = { 10471, 10472 },
        },
        [1403] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_267
                local Args = { ... }
                if
                    (API[57])(API, GUIDE, "Btn_Exercise")
                    and (API[60])(API, GUIDE)
                    and (API[59])(API, GUIDE, 124, 1)
                then
                    return not (API[171])(API, GUIDE)
                end
            end,
            Count = 1,
            GuideSet = 3,
            Name = "τ½₧µèÇσ£║σ╖àσ│░σ»╣σå│σ╝║µîçσ╝ò",
            NeedBlock = true,
            OnlySkip = true,
            Order = 1,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_268
                local Args = { ... }
                if not (API[59])(API, GUIDE, 110, 1) and not (API[80])(API, GUIDE, 110, 2) then
                    return not (API[60])(API, GUIDE)
                end
            end,
            Steps = { 10254, 10255, 10256, 10257, 10258, 10259 },
        },
        [1404] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_269
                do
                    local Args = { ... }
                    do
                        return (API[4])(API, GUIDE, 1120)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                                and not (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó")
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 4,
            Name = "σ£░σ¢╛Σ╗ïτ╗ìσ╝òσ»╝",
            NeedBlock = true,
            Order = 1,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_270
                local Args = { ... }
                return (API[5])(API, GUIDE, 1120)
            end,
            Steps = { 10351, 10352 },
        },
        [1405] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_271
                do
                    local Args = { ... }
                    do
                        return (API[5])(API, GUIDE, 1120)
                            and (
                                not (API[37])(API, GUIDE)
                                and not (API[15])(API, GUIDE)
                                and not (API[53])(API, GUIDE)
                                and not (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 5,
            Name = "µÅ┤σè⌐",
            NeedBlock = true,
            Order = 1,
            Steps = { 10565, 10566 },
        },
        [1410] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_272
                do
                    local Args = { ... }
                    do
                        return (API[17])(API, GUIDE, "Σ╕╗τòîΘ¥ó_σî║σƒƒΣ║ïΣ╗╢τòîΘ¥ó")
                            and (
                                not (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó")
                                and not (API[47])(API, GUIDE, 1, 1, 1)
                                and (API[16])(API, GUIDE)
                            )
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 12,
            Name = "Φï▒Θ¢äµª£σìòσàÑσÅúΦ╜»µîçσ╝\149",
            Order = 1,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_273
                local Args = { ... }
                return (API[47])(API, GUIDE, 1, 1, 1)
            end,
            Steps = { 10602 },
        },
        [1411] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_274
                local Args = { ... }
                if (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") then
                    return not (API[47])(API, GUIDE, 124, 1)
                end
            end,
            Count = 1,
            GuideSet = 13,
            Name = "Φï▒Θ¢äµª£σìòτí¼µîçσ╝\149",
            NeedBlock = true,
            Order = 1,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_275
                local Args = { ... };
                (API[48])(API, GUIDE, 124)
            end,
            Steps = { 10603, 10604, 10605, 10606, 10607 },
        },
        [1501] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_276
                local Args = { ... }
                if not (API[47])(API, GUIDE, 1, 1, 1) then
                    return (API[47])(API, GUIDE, 124, 1)
                end
            end,
            Count = 1,
            GuideSet = 6,
            Name = "σë»σìí∩╝êΘªûµ¼íΦúàσñ\135(τ¿ïσ║Åτö\168)",
            NeedBlock = true,
            Order = 1,
            Steps = { 150301 },
        },
        [1502] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_277
                do
                    local Args = { ... }
                    do
                        return (API[17])(API, GUIDE, "Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó") and (not (API[47])(
                            API,
                            GUIDE,
                            110,
                            1
                        ) and (API[47])(API, GUIDE, 124, 1))
                    end
                    -- DECOMPILER ERROR: 2 unprocessed JMP targets
                end
            end,
            Count = 1,
            GuideSet = 6,
            Name = "σë»σìí∩╝êΘçìτÖ╗µúÇµƒ\165(τ¿ïσ║Åτö\168)",
            NeedBlock = true,
            Order = 2,
            SkipCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_278
                local Args = { ... };
                (API[48])(API, GUIDE, 110)
            end,
            Steps = { 150301 },
        },
        [1503] = {
            CheckCondiFunc = function(API, GUIDE, ...)
                -- function num : 0_279
                local Args = { ... }
                if not (API[47])(API, GUIDE, 1, 1, 1) then
                    return (API[47])(API, GUIDE, 110, 1)
                end
            end,
            Count = 1,
            GuideSet = 6,
            Name = "σë»σìí∩╝êΘ\128Üσà│µîçσ╝òσà│σìí(τ¿ïσ║Åτö\168)",
            Order = 3,
            Steps = { 150301 },
        },
    },
    ModeStyle = {
        { Color = "0x5a000000" },
        { Color = "0x3fffffff" },
        { Color = "0x00000000" },
    },
    MsgCfg = {
        [20001] = {
            { Msg = "That looks like a distress signal! Open up the #cff6b11Map#n and see what's happening in the city!" },
        },
        [20002] = {
            {},
        },
        [20003] = {
            {},
        },
        [20004] = {
            {
                Msg = "The city has many #cff6b11Quests#n waiting for heroes to complete! Looks like an old lady is in trouble, go help her first!",
            },
        },
        [20005] = {
            {},
        },
        [20006] = {
            {
                Msg = "Completing #cff6b11Side Quests#n grants rewards!#rThat's the prize of peacekeeping! No time to waste, let's go!",
            },
        },
        [20011] = {
            {
                Msg = "Have no fear... For I am here!#rHaahahaha! Welcome to Honei City! Tap the #cff6b11Quests Menu#n and say hi to the Pro Hero Death Arms!",
            },
        },
        [20031] = {
            {},
        },
        [20032] = {
            {
                Msg = "#cff6b11Peacekeeping#n is the most basic job of heroes! Dispatch heroes to investigate this disappearance!",
            },
        },
        [20033] = {
            { Msg = "Open the #cff6b11Hero Directory#n and check who is available!" },
        },
        [20034] = {
            { Msg = "It's time to #cff6b11Deploy#n!#n For the safety of the citizens, we must hurry!" },
        },
        [20035] = {
            {},
        },
        [20041] = {
            { Msg = "Good job! Food obtained from Peacekeeping quests can be used to #cff6b11Upgrade#n heroes!" },
        },
        [20042] = {
            { Msg = "Open up the #cff6b11Hero App#n and check out all the heroes at the agency!" },
        },
        [20043] = {
            { Msg = "Let's first look at young #cff6b11Midoriya's#n hero information!" },
        },
        [20044] = {
            { Msg = "He still has a long way to go, let's start training him by #cff6b11Upgrade#n!" },
        },
        [20045] = {
            {
                Msg = "Oh my goodness! What a glorious feast!#rTap #cff6b11Quick Upgrade#n, heroes can only train effectively when they are full!",
            },
        },
        [20046] = {
            {},
        },
        [20047] = {
            { Msg = "Yes, that's it!#rReturn to the main menu and continue the #cff6b11Main Quest#n!" },
        },
        [20051] = {
            {
                Msg = "Keep up your outstanding performance! You can now use equipment to undergo #cff6b11Trainings#n for your heroes!",
            },
        },
        [20052] = {
            { Msg = "Open up the #cff6b11Hero App#n and check out all the heroes at the agency!" },
        },
        [20053] = {
            { Msg = "Let's take a look at young #cff6b11Midoriya#n first!" },
        },
        [20054] = {
            {},
        },
        [20055] = {
            { Msg = "You have enough training equipment!" },
        },
        [20056] = {
            { Msg = "Tap to train young Midoriya!" },
        },
        [20057] = {
            {},
        },
        [20058] = {
            { Msg = "With enough trainings, you can increase the training level!" },
        },
        [20059] = {
            { Msg = "An outstanding agency won't just have ONE hero!" },
        },
        [20060] = {
            { Msg = "Give Kaminari some training too!" },
        },
        [20061] = {
            { Msg = "Upgrade a character's rank in the #cff6b11Resonance#n system!" },
        },
        [20062] = {
            {},
        },
        [20063] = {
            { Msg = "Let's take a look at young #cff6b11Midoriya#n first!" },
        },
        [20064] = {
            {},
        },
        [20065] = {
            { Msg = "Head to the Resonance Memories of young Midoriya!" },
        },
        [20066] = {
            { Msg = "Every piece of shard will increase his stats. Complete the whole image to raise Midoriya's rank!" },
        },
        [20071] = {
            {},
        },
        [20072] = {
            { Msg = "The citizens at the train station are in trouble. It's time to save the day!" },
        },
        [20073] = {
            { Msg = "An operation requires at least one hero to be deployed, open up the #cff6b11Hero Directory#n!" },
        },
        [20074] = {
            {},
        },
        [20075] = {
            {},
        },
        [20076] = {
            { Msg = "This incident is rather difficult, so I recommend deploying everyone you got!" },
        },
        [20077] = {
            { Msg = "Now choose a second hero to deploy! Remember to work together!" },
        },
        [20078] = {
            { Msg = "Now choose a second hero to deploy! Remember to work together!" },
        },
        [20081] = {
            {
                Msg = "A new area means more challenges!#rYou need to #cff6b11upgrade their skills#n to make the heroes stronger!",
            },
        },
        [20082] = {
            { Msg = "Open up the #cff6b11Hero App#n and check out all the heroes at the agency!" },
        },
        [20083] = {
            { Msg = "Let's first look at young #cff6b11Midoriya's#n hero information!" },
        },
        [20084] = {
            { Msg = "This shows the total level of a hero's skills. Now, let's check out the #cff6b11Skill Menu#n!" },
        },
        [20085] = {
            { Msg = "Remember to constantly upgrade the skills!#rLet's raise the level of Midoriya's normal attack!" },
        },
        [20086] = {
            { Msg = "Tap Quick Upgrade to use #cff6b11Credits#n to upgrade the skill to its current highest level!" },
        },
        [20087] = {
            {},
        },
        [20101] = {
            { Msg = "Next, let's #cff6b11upgrade their talents#n and raise their combat ability!" },
        },
        [20102] = {
            { Msg = "Tap the #cff6b11Hero App#n and check out all the heroes at the agency!" },
        },
        [20103] = {
            { Msg = "Select #cff6b11Izuku Midoriya#n and view his hero information!" },
        },
        [20104] = {
            { Msg = "Upgrade Hero Talents in the #cff6b11Talents#n system!" },
        },
        [20105] = {
            {},
        },
        [20106] = {
            { Msg = "Expend #cff6b11S-Factors#n to upgrade Hero Talents!" },
        },
        [20107] = {
            {},
        },
        [20131] = {
            {
                Msg = "I have good news for you! #cff6b11Hero Daily Quests#n are now available! Open the #cff6b11Map#n to receive quests from the citizens!",
            },
        },
        [20132] = {
            {},
        },
        [20133] = {
            { Msg = "There's also this neat thing called #cff6b11Region Rewards#n!" },
        },
        [20134] = {
            { Msg = "Complete Hero Daily Quests in #cff6b11Specific Regions#n to earn rewards!" },
        },
        [20136] = {
            { Msg = "Let's see what is available today!" },
        },
        [20137] = {
            { Msg = "They should be easy enough you, let's start with the first one!" },
        },
        [20138] = {
            {},
        },
        [20141] = {
            { Msg = "In order develop your agency, sponsors rewards you for completing #cff6b11Agency Goals#n!" },
        },
        [20142] = {
            { Msg = "The goals refresh daily, so take advantage of them if you want to quickly upgrade your agency!" },
        },
        [20143] = {
            { Msg = "Complete Daily Quests and accumulate Activeness for rewards!" },
        },
        [20181] = {
            { Msg = "You just got a #cff6b11Gear Chip#n that can upgrade the Battle Power of heroes, let me explain!" },
        },
        [20182] = {
            { Msg = "First, open the #cff6b11Hero App#n and see the full list of heroes at the agency." },
        },
        [20183] = {
            {},
        },
        [20184] = {
            { Msg = "This is the #cff6b11Chip#n system, go ahead and tap on it." },
        },
        [20185] = {
            { Msg = "That's right, now select the #cff6b11first slot#n and see what chips can fit into this slot." },
        },
        [20186] = {
            { Msg = "This is the chip you just obtained.#rAll the chips you obtain in the future can be found here." },
        },
        [20187] = {
            {
                Msg = "Lastly, insert the chip into hero's #cff6b11Gear#n, the higher the rarity of a chip, the more powerful it'll be!",
            },
        },
        [20188] = {
            {},
        },
        [20201] = {
            { Msg = "If you want better chips, you need to look into the #cff6b11Night Ops#n system." },
        },
        [20202] = {
            {},
        },
        [20203] = {
            { Msg = "You can now challenge #cff6b11Night Ops#n, which are basically nighttime patrols." },
        },
        [20204] = {
            {
                Msg = "Aside from better chips, you can also obtain #cff6b11Night Ops Medal#n which can be exchanged at the Night Ops Shop for chips.",
            },
        },
        [20205] = {
            { Msg = "Go participate in a Night Ops and for those chips and medals!" },
        },
        [20206] = {
            { Msg = "Night Ops can be hard, so don't let your guard down, so be careful!" },
        },
        [20211] = {
            {
                Msg = "You've become experienced enough to participate in the #cff6b11Agency Assessments#n, take a look when you have the time.",
            },
        },
        [20212] = {
            {},
        },
        [20213] = {
            { Msg = "After you passed an Agency Assessment, you will be rewarded with #cff6b11Support Gear#n." },
        },
        [20214] = {
            { Msg = "You can team up with other agencies by selecting #cff6b11Join Team#n." },
        },
        [20215] = {
            { Msg = "You can also choose #cff6b11Create Team#n to make your own team. Good luck out there." },
        },
        [20216] = {
            {},
        },
        [20217] = {
            {},
        },
        [20218] = {
            {},
        },
        [20219] = {
            {},
        },
        [20221] = {
            { Msg = "All of your hard work at the agency are recorded in the #cff6b11Achievements#n!" },
        },
        [20222] = {
            {},
        },
        [20223] = {
            { Msg = "The left panel shows your recent achievements, let's take a look!" },
        },
        [20224] = {
            {
                Msg = "You get #cff6b11rewarded#n for completing achievements!#rWell then, keep breaking new records worth commemorating!",
            },
        },
        [20225] = {
            {},
        },
        [20231] = {
            { Msg = "Congratulations on getting #cff6b11Support Gear#n!#rWhat a rare opportunity! Let's take a look!" },
        },
        [20232] = {
            {},
        },
        [20233] = {
            {},
        },
        [20234] = {
            { Msg = "Choose the gear slot to see what Support Gear can be equipped there!" },
        },
        [20235] = {
            {},
        },
        [20236] = {
            {
                Msg = "What a well-designed piece of gear!#rSimply tap #cff6b11Equip#n to receive a stats bonus! By the way, this works for all heroes!",
            },
        },
        [20237] = {
            {
                Msg = "Every piece of gear can be #cff6b11Enhanced#n to improve its stats! New stats can also be attained through #cff6b11Stats Transfer#n!",
            },
        },
        [20238] = {
            {},
        },
        [20239] = {
            { Msg = "Now return to the main menu and continue with the #cff6b11Main Quest#n!" },
        },
        [20241] = {
            { Msg = "The data you've recovered activated the #cff6b11Hero Theater App#n, let's take a look!" },
        },
        [20242] = {
            {},
        },
        [20243] = {
            { Msg = "You can view stories of various heroes here at the #cff6b11Hero Theater#n!" },
        },
        [20244] = {
            {},
        },
        [20245] = {
            { Msg = "This clip is available for viewing. It's a valuable chance to learn more about the lives of heroes!" },
        },
        [20246] = {
            {},
        },
        [20247] = {
            {},
        },
        [20248] = {
            { Msg = "Complete the stages in Hero Theater to win rich rewards!" },
        },
        [20251] = {
            { Msg = "The #cff6b11Arena#n is where heroes can battle among each other." },
        },
        [20252] = {
            { Msg = "In the arena, you may compete fairly with other agencies." },
        },
        [20253] = {
            {
                Msg = "You should read the Arena Guidance before going in. It'll teach you some tips and tricks. Best of luck.",
            },
        },
        [20259] = {
            { Msg = "Before officially starting the combat, you can first check the arena's rules. Good luck!" },
        },
        [20261] = {
            {
                Msg = "If you find the Peacekeeping missions are getting difficult, you should raise the power of your heroes and try again!",
            },
        },
        [20262] = {
            {},
        },
        [20263] = {
            { Msg = "Kirishima's passion is worthy of respect, let's check out his hero information!" },
        },
        [20264] = {
            { Msg = "Raise his level so he becomes even stronger!" },
        },
        [20265] = {
            {},
        },
        [20266] = {
            {},
        },
        [20267] = {
            {},
        },
        [20281] = {
            {},
        },
        [20301] = {
            {
                Msg = "Nice job! However, strength alone is not enough. #cff6b11Recruit Heroes#n to increase your Battle Power!",
            },
        },
        [20302] = {
            {
                Msg = "More apps will be unlocked on your phone as the agency grows! Look, the #cff6b11Recruit App#n has been installed!",
            },
        },
        [20303] = {
            {},
        },
        [20304] = {
            { Msg = "Time to recruit a new hero! " },
        },
        [20305] = {
            {
                Msg = "Congratulations on recruiting Denki Kaminari! Now #cff6b11Return#n to the main menu and continue with the Main Quest!",
            },
        },
        [20311] = {
            { Msg = "One person's strength is limited, the road is always easier with companions." },
        },
        [20312] = {
            {},
        },
        [20313] = {
            {
                Msg = "You can check the rules related to #cff6b11Agency Alliances#n here. When you meet an Alliance with similar values as you, you should see if you can collaborate with them.",
            },
        },
        [20321] = {
            { Msg = "This is your first time using a #cff6b11Support Card#n, so allow me to explain!" },
        },
        [20322] = {
            {},
        },
        [20323] = {
            {},
        },
        [20324] = {
            { Msg = "First, fire up the #cff6b11Support Card#n system!" },
        },
        [20325] = {
            { Msg = "Every hero can equip up to 2 Active Cards and 4 Passive Cards!" },
        },
        [20326] = {
            {},
        },
        [20327] = {
            { Msg = "This is the Support Card you just obtained, put it on!" },
        },
        [20328] = {
            {
                Msg = "Resources are limited, so I guess that's it for now!#rKeep at it, and soon enough you'll get enough cards for all your heroes!",
            },
        },
        [20351] = {
            {
                Msg = "You can get an overlook of the entire city here. Important sites and insidents will be marked on the map. Pay attention to the #cff6b11quests in the side panel#n!",
            },
        },
        [20352] = {
            { Msg = "This area still has Main Quests to be completed, so don't worry about other areas just yet!" },
        },
        [20371] = {
            { Msg = "The #cff6b11Mock Contest#n is now open! This is only for a limited time, so don't miss out!" },
        },
        [20372] = {
            {},
        },
        [20373] = {
            {
                Msg = "Mock Contests will be held periodically, participate to promote your agency out there and earn rewards!",
            },
        },
        [20381] = {
            {},
        },
        [20391] = {
            { Msg = "This city is getting more prosperous all thanks to you!" },
        },
        [20392] = {
            {},
        },
        [20393] = {
            {
                Msg = "Helping out citizens and defeating villains will increase the #cff6b11City Prosperity#n and #cff6b11City Level#n!",
            },
        },
        [20394] = {
            { Msg = "As the City Level increases, changes will occur across the city, and you also get rewarded!" },
        },
        [20395] = {
            {},
        },
        [20396] = {
            {},
        },
        [20397] = {
            { Msg = "Keep up the good work! Let's make this city a better place!" },
        },
        [20401] = {
            { Msg = "Heroes can't fight without supplies. You can get more resources from #cff6b11Supply Battles#n!" },
        },
        [20402] = {
            {},
        },
        [20403] = {
            {},
        },
        [20404] = {
            {
                Msg = "Supply Battles are categorized by the types of supply, so you can choose the one relevant to your needs!",
            },
        },
        [20405] = {
            {
                Msg = "You can get a large amount of food from #cff6b11Cafeteria#n stages, which are perfect for feeding everyone. Try it out!",
            },
        },
        [20411] = {
            { Msg = "Haahahaha! The #cff6b11Joint Operations#n is here! Time to team up with other agencies!" },
        },
        [20412] = {
            {},
        },
        [20413] = {
            {},
        },
        [20414] = {
            { Msg = "If you have any questions, tap the #cff6b11question mark#n to see the rules!" },
        },
        [20421] = {
            { Msg = "As the City Level increases, you'll begin to receive #cff6b11Commissions#n." },
        },
        [20422] = {
            {},
        },
        [20423] = {
            { Msg = "You can assign Commissions to the heroes whom you think are most suited for the job." },
        },
        [20424] = {
            {},
        },
        [20425] = {
            {
                Msg = "Commissions take some time to complete, but you will receive rewards upon completion. Accept your first Commission and test it out.",
            },
        },
        [20431] = {
            { Msg = "If you want to increase your heroes power, go to the #cff6b11Hero Trials#n." },
        },
        [20432] = {
            {},
        },
        [20433] = {
            { Msg = "There are a selection of trails where you can obtain Memory Shards." },
        },
        [20434] = {
            {},
        },
        [20435] = {
            {
                Msg = "As your Agency Level increases, you will unlock more Hero Trials.#rFor a more detailed explanation, tap the #cff6b11question mark#n.",
            },
        },
        [20441] = {
            {},
        },
        [20442] = {
            { Msg = "Your performance surprises me! Take a look at the reward I've prepared for you!" },
        },
        [20443] = {
            {},
        },
        [20444] = {
            { Msg = "You will get even more rewards after your raise your Agency Level! Keep up the good work!" },
        },
        [20451] = {
            { Msg = "I have a tip for you if you want more #cff6b11Support Cards#n!" },
        },
        [20452] = {
            {},
        },
        [20453] = {
            { Msg = "The Basic Recuit includes the Hero Banner and the Support Card Banner." },
        },
        [20454] = {
            {},
        },
        [20455] = {
            {
                Msg = "#cff6b11Research#n at the Support Card Banner to expend R&D Tickets for brand new Support Cards! Nifty, right? You're welcome!",
            },
        },
        [20456] = {
            {},
        },
        [20461] = {
            {
                Msg = "You've improved a lot since we last met! There's an #cff6b11Operation X#n that requires some assistant, I trust you're up for the job?",
            },
        },
        [20462] = {
            {},
        },
        [20463] = {
            { Msg = "#cff6b11Operation X#n can be very difficult at time, but what's a hero without challenges?" },
        },
        [20464] = {
            {},
        },
        [20465] = {
            { Msg = "Go to the operation site first, and I'll brief you the details along the way!" },
        },
        [20471] = {
            { Msg = "Setting up a comfortable #cff6b11Dorm#n is the key to happy heroes!" },
        },
        [20472] = {
            {
                Msg = "Place down some furnitures in the dorm to improve the mood of your heroes, you might get something out of it too!",
            },
        },
        [20481] = {
            { Msg = "The Super Co-op Battle is now open! You can test your skills against other agencies!" },
        },
        [20482] = {
            {},
        },
        [20483] = {
            {},
        },
        [20484] = {
            { Msg = "The higher your rating is, the more rewards you'll earn!" },
        },
        [20485] = {
            {
                Msg = "The higher the rating, the stronger the agency is! But fear not! With your current strength, you could even challenge the top agencies!",
            },
        },
        [20486] = {
            { Msg = "The formation of your heroes will affect the outcome of the battle!#rNow, let the battle begin!" },
        },
        [20491] = {
            { Msg = "Participate in the Trainee Benefits to get rewards!" },
        },
        [20492] = {
            {
                Msg = "The Trainee Benefits is a limited time event, you must complete the quests on time to get more heroes!",
            },
        },
        [20493] = {
            { Msg = "Complete indicated quests to get rewards and accumulate Progress Points!" },
        },
        [20501] = {
            { Msg = "The Hero Ratings are now open! Complete each hero's Ability Ratings to earn more rewards!" },
        },
        [20502] = {
            {},
        },
        [20503] = {
            { Msg = "Hero Rating Challenges are now open!" },
        },
        [20504] = {
            {},
        },
        [20505] = {
            { Msg = "There is still one more Hero Rating Challenge yet to be unlocked!" },
        },
        [20506] = {
            {},
        },
        [20508] = {
            { Msg = "Accumulate stars to earn rewards!" },
        },
        [20511] = {
            { Msg = "Every hero can do the Rating Challenges! Go for a perfect score!" },
        },
        [20512] = {
            {},
        },
        [20513] = {
            { Msg = "Tap the Agency Star to do Rating Challenges!" },
        },
        [20514] = {
            { Msg = "The higher the Battle Power, the stronger heroes will be!" },
        },
        [20521] = {
            { Msg = "The Virtual Battleground is now open! Your heroes can fight mock villains to gain experience!" },
        },
        [20522] = {
            {},
        },
        [20523] = {
            {},
        },
        [20524] = {
            {
                Msg = "Virtual Battleground is made up of 3 basic stages and 1 boss stage, the higher the difficulty, the more points you'll get!",
            },
        },
        [20525] = {
            { Msg = "Do your best!" },
        },
        [20531] = {
            { Msg = "You can now boost and modify your gears!" },
        },
        [20532] = {
            {},
        },
        [20533] = {
            {},
        },
        [20534] = {
            { Msg = "You can increase your gear's rarity and base stats through Boost and Overclock!" },
        },
        [20535] = {
            { Msg = "As rarity increases, the max number of modification will also be increased!" },
        },
        [20536] = {
            { Msg = "Go try it out!" },
        },
        [20537] = {
            {},
        },
        [20538] = {
            { Msg = "When the gear is Legendary, you can overclock it to make it stronger!" },
        },
        [20541] = {
            { Msg = "You can now synchronize and put modules on your gears!" },
        },
        [20542] = {
            {},
        },
        [20543] = {
            {},
        },
        [20544] = {
            { Msg = "Go to the Mod menu frist!" },
        },
        [20545] = {
            { Msg = "Every gear has its own module slot, check this gear first!" },
        },
        [20546] = {
            { Msg = "Once the 3 modules are synchronized, you can upgrade the module's rank!" },
        },
        [20551] = {
            {
                Msg = "Congratulations on recruiting a new hero! You can unlock this hero's challenges through the Hero Ratings!",
            },
        },
        [20552] = {
            {},
        },
        [20553] = {
            {},
        },
        [20554] = {
            { Msg = "Tap to unlock this hero!" },
        },
        [20555] = {
            {},
        },
        [20556] = {
            { Msg = "Now go redeem the Hero Ratings rewards!" },
        },
        [20561] = {
            { Msg = "Some heroes might activate assist skills for other heroes!" },
        },
        [20562] = {
            {},
        },
        [20563] = {
            {},
        },
        [20564] = {
            { Msg = "You can check the assist skills of your heroes in the Assist menu!" },
        },
        [20565] = {
            {
                Msg = "You can activate various #cff6b11Assist Skills#n which scale in power according to their character's rank!",
            },
        },
        [20566] = {
            { Msg = "You can learn more about assist skills right here!" },
        },
        [20571] = {
            {
                Msg = "A new hero has joined the agency! Don't forget to train them before bringing them to your next Peacekeeping mission!",
            },
        },
        [20572] = {
            {},
        },
        [20573] = {
            { Msg = "Check out the new hero's information!" },
        },
        [20574] = {
            {},
        },
        [20575] = {
            { Msg = "Heroes can't train on an empty stomach!" },
        },
        [20576] = {
            {},
        },
        [20577] = {
            {},
        },
        [20581] = {
            { Msg = "Chip Overclocking is unlocked! Take a look!" },
        },
        [20582] = {
            { Msg = "Overclocking can enhance chip slots and get bonus stats!" },
        },
        [20583] = {
            { Msg = "Consume items to overclock and improve the stats of chips!" },
        },
        [20584] = {
            { Msg = "Find out where to get the items and join a Squad with friends for a better loot!" },
        },
        [20591] = {
            { Msg = "Co-op is now enabled! Team up with other agencies to defeat the villains together!" },
        },
        [20592] = {
            {},
        },
        [20593] = {
            { Msg = "View detailed rules and participate with other players to obtain materials for Overclocking Chips!" },
        },
        [20601] = {
            { Msg = "Hero Rankings is unlocked! Take a look!" },
        },
        [20602] = {
            { Msg = "Accumulate Contribution Points to unlock rewards!" },
        },
        [20603] = {
            {},
        },
        [20604] = {
            { Msg = "Complete Weekly Quests and Challenges to gain a lots of Contribution Points!" },
        },
        [20605] = {
            {},
        },
        [20606] = {
            { Msg = "Purchase an Ultra Pass to unlock more rewards!" },
        },
        [20611] = {
            { Msg = "Support Card Cultivation is now unlocked! Take a look!" },
        },
        [20612] = {
            {},
        },
        [20613] = {
            { Msg = "Select a hero equipped with a Support Card!" },
        },
        [20614] = {
            {},
        },
        [20615] = {
            { Msg = "Select a Support Card to upgrade!" },
        },
        [20616] = {
            {},
        },
        [20617] = {
            { Msg = "Tap Quick Upgrade to upgrade the Support Card!" },
        },
        [20618] = {
            { Msg = "Now, return to the main menu and check the smaterials for upgrading Support Cards!" },
        },
        [20621] = {
            { Msg = "An Emergency Incident occurred in the city! We need to hurry!" },
        },
        [20622] = {
            {},
        },
        [20623] = {
            {
                Msg = "Emergency Incidents may occur after completing Daily Quests, Stages, and other Events. Remember to tackle them before time runs out!",
            },
        },
        [20624] = {
            { Msg = "Emergency Incidents grant generous rewards, which help your agency to power up your heroes!" },
        },
        [20625] = {
            { Msg = "It'll be faster solving incidents together with other heroes!" },
        },
        [20626] = {
            {},
        },
        [20627] = {
            { Msg = "Hold your horses! You better wait for more people to join." },
        },
        [20628] = {
            { Msg = "You have gathered a team. It's time to deploy!" },
        },
    },
    WidgetCfg = {
        ["1-1τ¼¼Σ╕ÇΣ╕¬µ\128¬τë⌐"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "NodeGuide",
            UiFile = "areaEvent/areaEventMapViewUI",
        },
        ["1-1τ¼¼Σ╕ÇΣ╕¬µ\128¬τë⌐1"] = {
            AbsPos = { 478, 390 },
            DelayTime = 0,
            HitArea = { 60, 64 },
            UiAdapter = 5,
        },
        ["BP_Σ╕╗τòîΘ¥\162"] = { IsUiView = true, UiFile = "activity/battlepass/battlepassMainViewUI" },
        ["BP_Σ╗╗σèíτòîΘ¥ó"] = { IsUiView = true, UiFile = "activity/battlepass/battlepassTaskPanelUI" },
        ["BP_Σ╗╗σèíΘí╡τ¡╛"] = {
            AbsPos = { 96, 196 },
            HitArea = { 162, 63 },
            UiAdapter = 4,
        },
        ["BP_Φ┤íτî«ΘóåσÑû"] = {
            AbsPos = { 445, 284 },
            HitArea = { 68, 68 },
            UiAdapter = 4,
        },
        ["BP_ΘóåσÅûσæ¿Σ╗╗σèíΦ┤íτî\174"] = {
            AbsPos = { 1157, 197 },
            HitArea = { 140, 42 },
            UiAdapter = 6,
        },
        ["BP_ΘóåσÑû_Φ┤¡Σ╣░σç¡Φ»üµîëΘÆ«"] = {
            UiComp = "BtnPayVIP",
            UiFile = "activity/battlepass/battlepassRewardPanelUI",
        },
        ["BP_ΘóåσÑûτòîΘ¥ó"] = { IsUiView = true, UiFile = "activity/battlepass/battlepassRewardPanelUI" },
        ["BP_ΘóåσÑûΘí╡τ¡╛"] = {
            AbsPos = { 96, 121 },
            HitArea = { 162, 63 },
            UiAdapter = 4,
        },
        ["bossΣ║ïΣ╗╢"] = {
            AbsPos = { 698, 299 },
            DelayTime = 0,
            HitArea = { 100, 100 },
            UiAdapter = 5,
        },
        ["generalAlertUIσ╝╣τ¬ùτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "general/generalAlertUI" },
        ["generalAlertUIσ╝╣τ¬ùτòîΘ¥ó_τí«Φ«ñ"] = {
            DelayTime = 0,
            UiComp = "BtnConfirm",
            UiFile = "general/generalAlertUI",
        },
        ["Σ╕èΘÿ╡τòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "areaEvent/areaEventViewMerPosPanelUI" },
        ["Σ╕ûτòîΣ╗╗σèí_σëìσ╛ÇµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "AutoBtn",
            UiFile = "map/worldMapSweepViewUI",
        },
        ["Σ╕ûτòîΣ╗╗σèíΦ»ªµâà"] = { DelayTime = 0, IsUiView = true, UiFile = "map/worldMapSweepViewUI" },
        ["Σ╕ûτòîµîëΘÆ«"] = {
            DelayTime = 0,
            HighlightUiComp = "WorldBtn",
            UiComp = "WorldBtn",
            UiFile = "map/worldMapViewUI",
        },
        ["Σ╕╗τòîΘ¥\162"] = { DelayTime = 0, UiFile = "main/mainSceneUi" },
        ["Σ╕╗τòîΘ¥ó_σî║σƒƒΣ║ïΣ╗╢µîëΘÆ«"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "Image1",
            UiFile = "main/mainAreaEventNoticeCompUI",
        },
        ["Σ╕╗τòîΘ¥ó_σî║σƒƒΣ║ïΣ╗╢µîëΘÆ«1"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "GuideNode",
            UiFile = "main/mainAreaEventNoticeCompUI",
        },
        ["Σ╕╗τòîΘ¥ó_σî║σƒƒΣ║ïΣ╗╢τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "areaEvent/areaEventHappenViewUI",
        },
        ["Σ╕╗τòîΘ¥ó_σ▒òσ╝ÇµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnTopArrow",
            UiFile = "main/mainActivityButtonUI",
        },
        ["Σ╕╗τòîΘ¥ó_µîçσ╝òΦèéτé╣_Σ╜úσà╡"] = {
            DelayTime = 0,
            HitArea = { 180, 355 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["Σ╕╗τòîΘ¥ó_τªÅσê⌐µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnWelfare",
            UiFile = "main/mainActivityButtonUI",
        },
        ["Σ╕╗τòîΘ¥ó_Φï▒Θ¢äµª£σìòµîëΘÆ«"] = {
            UiComp = "BtnBattlepass",
            UiFile = "main/mainActivityButtonUI",
        },
        ["Σ╕╗τòîΘ¥ó_ΦºüΣ╣áτªÅσê⌐µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnSevenActivity",
            UiFile = "main/mainActivityButtonUI",
        },
        ["Σ╕╗τòîΘ¥ó_Θ¢äΦï▒σ«₧Σ╣áσ¡úµîëΘÆ\174"] = {
            UiComp = "BtnOpenService",
            UiFile = "main/mainActivityButtonUI",
        },
        ["Σ╕╗τòîΘ¥óσ£░σ¢\190"] = {
            AbsPos = { 1151, 113 },
            DelayTime = 0,
            HitArea = { 226, 106 },
            UiAdapter = 9,
        },
        ["Σ╕╗τòîΘ¥óµëïµ£\186"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "RightDownBtnTouch",
            UiFile = "main/mainFunEntranceMenu",
        },
        ["Σ╕╗τòîΘ¥óµëïµ£\1861"] = {
            AbsPos = { 1200, 637 },
            DelayTime = 0,
            HitArea = { 88, 88 },
            UiAdapter = 3,
        },
        ["Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σè\161"] = {
            DelayTime = 1,
            UiComp = "TaskBtn",
            UiFile = "main/mainMiniMapViewUI",
        },
        ["Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σè\1611"] = {
            AbsPos = { 1164, 171 },
            DelayTime = 0,
            HitArea = { 230, 70 },
            UiAdapter = 9,
        },
        ["Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_2Φí\140"] = {
            DelayTime = 1,
            UiComp = "TaskBtn",
            UiFile = "main/mainMiniMapViewUI",
        },
        ["Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_2Φí\1401"] = {
            AbsPos = { 1160, 198 },
            DelayTime = 0,
            HitArea = { 223, 47 },
            UiAdapter = 9,
        },
        ["Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_µ¥Ñτö╡"] = {
            DelayTime = 1,
            UiComp = "TaskBtn",
            UiFile = "main/mainMiniMapViewUI",
        },
        ["Σ╕╗τòîΘ¥óµáçΦ«░Σ╗╗σèí_µ¥Ñτö╡1"] = {
            AbsPos = { 1160, 198 },
            DelayTime = 0,
            HitArea = { 233, 47 },
            UiAdapter = 9,
        },
        ["Σ║ïσèíµë\128_σìçτ║ºτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "other/teamLvUpUI",
        },
        ["Σ║ïσèíµë\128_µáçΘóÿ"] = {
            AbsPos = { 268, 39 },
            DelayTime = 0,
            HitArea = { 178, 18 },
            UiAdapter = 7,
        },
        ["Σ║ïσèíµë\128_µ»ÅµùÑτ¢«µáç"] = {
            AbsPos = { 912, 110 },
            DelayTime = 0,
            HitArea = { 248, 64 },
            UiAdapter = 8,
            UiComp = "BtnToday2",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_µ»ÅµùÑτ¢«µáç_ΘóåσÅû"] = {
            AbsPos = { 1121, 152 },
            DelayTime = 0,
            HitArea = { 144, 46 },
            UiAdapter = 5,
        },
        ["Σ║ïσèíµë\128_µ┤╗Φ╖âσÑûσè▒1"] = {
            DelayTime = 0,
            UiComp = "Reward1",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_µ┤╗Φ╖âσÑûσè▒2"] = {
            DelayTime = 0,
            UiComp = "Reward2",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_µ┤╗Φ╖âσÑûσè▒3"] = {
            DelayTime = 0,
            UiComp = "Reward3",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_µ┤╗Φ╖âσÑûσè▒4"] = {
            DelayTime = 0,
            UiComp = "Reward4",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_µ┤╗Φ╖âσÑûσè▒5"] = {
            DelayTime = 0,
            UiComp = "Reward5",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_µ┤╗Φ╖âσ║ªσÑûσè▒σ╝╣τ¬\151"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "heroroad/heroRoadRewardTipsUI",
        },
        ["Σ║ïσèíµë\128_Φï▒Θ¢äΦ»äτ║ºΘí╡τ¡╛"] = {
            DelayTime = 1,
            UiComp = "BtnHero",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_Φ»äτ║ºµîëΘÆ«"] = {
            DelayTime = 1,
            UiComp = "NodeGuide",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_Φ╡₧σè⌐σÑûσè▒_σàÑσÅú"] = {
            DelayTime = 0,
            UiComp = "ImageReward",
            UiFile = "heroroad/heroRoadMainViewUI",
        },
        ["Σ║ïσèíµë\128_Θÿ╢µ«╡σÑûσè▒_ΘóåσÅû"] = {
            AbsPos = { 532, 576 },
            DelayTime = 0,
            HitArea = { 240, 68 },
            UiAdapter = 5,
        },
        ["Σ║ïσèíµë\128_Θÿ╢µ«╡τ¢«µáç"] = {
            AbsPos = { 1166, 48 },
            DelayTime = 0,
            HitArea = { 186, 46 },
            UiAdapter = 8,
        },
        ["Σ║ïσèíµë\128τòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "heroroad/heroRoadMainViewUI" },
        ["Σ║ïσèíµë\128ΦÇâµá╕_τ╗äΘÿƒ"] = {
            DelayTime = 0,
            UiComp = "BtnTeam",
            UiFile = "fbsecret/fbSecretViewUI",
        },
        ["Σ║ïσèíµë\128ΦÇâµá╕_τ╗äΘÿƒ1"] = {
            AbsPos = { 1143, 649 },
            DelayTime = 0,
            HitArea = { 254, 60 },
            UiAdapter = 4,
        },
        ["Σ║ïσèíµë\128ΦÇâµá╕_Φ»┤µÿÄ"] = {
            DelayTime = 0,
            UiComp = "BtnIntro",
            UiFile = "fbsecret/fbSecretViewUI",
        },
        ["Σ║ïσèíµë\128ΦÇâµá╕_Φ»┤µÿÄ1"] = {
            AbsPos = { 375, 40 },
            DelayTime = 0,
            HitArea = { 37, 37 },
            UiAdapter = 4,
        },
        ["Σ║ïσèíµë\128ΦÇâµá╕τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "fbsecret/fbSecretViewUI",
        },
        ["Σ╗ôσ║ô_τ¼\1721Σ╕¬µá╝σ¡\1441"] = {
            DelayTime = 0,
            HitArea = { 102, 102 },
            NeedVisible = true,
            UiComp = "NodeSlot1",
            UiFile = "equip/equipWarehouseViewUI",
        },
        ["Σ╗ôσ║ô_τ¼\1721Σ╗╢Φúàσñ\1351"] = {
            AbsPos = { 872, 129 },
            DelayTime = 0,
            HitArea = { 104, 104 },
            UiAdapter = 6,
        },
        ["Σ╗ôσ║ô_τ¼\1723Σ╕¬µá╝σ¡\1441"] = {
            DelayTime = 0,
            HitArea = { 102, 102 },
            NeedVisible = true,
            UiComp = "NodeSlot3",
            UiFile = "equip/equipWarehouseViewUI",
        },
        ["Σ╗ôσ║ô_τ¼\1724Σ╕¬µá╝σ¡\1441"] = {
            DelayTime = 0,
            HitArea = { 102, 102 },
            NeedVisible = true,
            UiComp = "NodeSlot4",
            UiFile = "equip/equipWarehouseViewUI",
        },
        ["Σ╗╗σèíσëìσ╛ÇτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "map/worldMapTaskViewUI" },
        ["Σ╗╗σèíµîëΘÆ«"] = {
            DelayTime = 0,
            NeedBlock = true,
            UiComp = "Toggle_02_Btn",
            UiFile = "map/worldMapViewUI",
        },
        ["Σ╗╗σèíµîëΘÆ«1"] = {
            AbsPos = { 631, 686 },
            DelayTime = 0,
            HitArea = { 100, 60 },
            NeedBlock = true,
            UiAdapter = 2,
        },
        ["Σ╝ÖΣ╝┤µîëΘÆ«"] = { DelayTime = 0, UiComp = "BtnHero", UiFile = "main/mainFunEntranceViewUI" },
        ["Σ╜┐τö¿σÖ¿µ¥ÉµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "Btn",
            UiFile = "card/cardExerciseEquInfoView",
        },
        ["Σ╜┐τö¿σÖ¿µ¥ÉτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "card/cardExerciseEquInfoView",
        },
        ["σà▒Θ╕úΣ╕╗τòîΘ¥ó_σëìσ╛ÇµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnResonance",
            UiFile = "card/comps/cardResonanceItemUI",
        },
        ["σà▒Θ╕úΣ╕╗τòîΘ¥ó_σëìσ╛ÇµîëΘÆ«1"] = {
            AbsPos = { 506, 594 },
            DelayTime = 0,
            HitArea = { 250, 60 },
            UiAdapter = 2,
        },
        ["σà▒Θ╕úσ¡ÉτòîΘ¥\162"] = { DelayTime = 0, IsUiView = true, UiFile = "card/cardResonanceInfoUI" },
        ["σà▒Θ╕úσ¡ÉτòîΘ¥ó_σà▒Θ╕úµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnResonance",
            UiFile = "card/cardResonanceInfoUI",
        },
        ["σà▒Θ╕úσ▒òτñ║τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "card/cardResonanceCheckViewUI",
        },
        ["σà▒Θ╕úτóÄτëçσÑûσè▒τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "card/cardResonanceRewardViewUI",
        },
        ["σà│σìíΦ»ªµâàτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "areaEvent/areaEventViewStageInfoUI",
        },
        ["σà│Θù¡µ▓╗σ«ëσÑûσè▒µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnClose",
            UiFile = "activity/pass_stage/passStageActivityViewUI",
        },
        ["σç║σç╗"] = {
            DelayTime = 0,
            NeedBlock = true,
            NeedVisible = true,
            UiComp = "BtnFight",
            UiFile = "areaEvent/areaEventHappenViewUI",
        },
        ["σç║σç╗σçåσñçτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "areaEvent/areaEventViewSelectMerViewUI",
        },
        ["σç║σç╗σçåσñçΦ»ªµâàτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "areaEvent/areaEventViewSelectMerStageInfoUI",
        },
        ["σêçµìó_Φ┐öσ¢₧µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnBack",
            UiFile = "card/comps/cardCultivateListViewUI",
        },
        ["σêçµìóτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "card/comps/cardCultivateListViewUI" },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_appIcon"] = {
            DelayTime = 0,
            HitArea = { 86, 86 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Σ║ïσèíµë\128τ¢«µáç_ΘóåσÅûσÑûσè▒"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σëºσ£║_σà│σìíµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σëºσ£║_τ½áΦèéµîëΘÆ«"] = {
            DelayTime = 0,
            HitArea = { 242, 244 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σë»σìíµîëΘÆ«"] = {
            DelayTime = 0,
            HitArea = { 98, 98 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ£░σ¢╛_Σ╕ûτòîΣ╗╗σèí"] = {
            DelayTime = 0,
            HitArea = { 348, 55 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ£░σ¢╛_τñ╝τë⌐"] = {
            DelayTime = 0,
            HitArea = { 57, 62 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σƒÄσ╕éτ¡ëτ║º_σÑûσè▒"] = {
            DelayTime = 0,
            HitArea = { 74, 74 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σºöµëÿ"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σºöµëÿ_ΘÇëµï⌐Φï▒Θ¢äµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ«┐ΦêìσåàΘâ¿_σèƒΦâ╜µÇºσ«╢σà\183"] = {
            DelayTime = 1,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_σ«┐ΦêìτòîΘ¥ó_1σÅ╖σ«┐Φê\141"] = {
            DelayTime = 1,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_µû░σìüΦ┐₧µè╜_σë»σìí"] = {
            DelayTime = 0,
            HitArea = { 350, 310 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_µû░σìüΦ┐₧µè╜_σìíµ▒á"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_µû░σìüΦ┐₧µè╜_µÉ£τ┤óµîëΘÆ«"] = {
            DelayTime = 0,
            HitArea = { 218, 70 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τë╣σê½Φíîσè¿_τ½áΦèé"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ½₧µèÇσ£║Θ\128ëΣ║║"] = {
            DelayTime = 0,
            HitArea = { 100, 100 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ¡ëτ║ºσÑûσè▒_ΘóåσÅû"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ¡ëτ║ºσÑûσè▒Θí╡τ¡╛"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_τ╗äΘÿƒ_µÅÆσàÑσç¡Φ»ü"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φâîσîà_σìíτëî"] = {
            DelayTime = 0,
            HitArea = { 192, 517 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΦÖÜµïƒµêÿσ£║_σà│σìí"] = {
            DelayTime = 10,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_Φ╢àΦâ╜σìÅσÉîµîæµêÿ"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜτö¿µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ«ÜµÄºΣ╗╢_ΘÇÜΦ«»σ╜ò_σìíτëî"] = {
            DelayTime = 0,
            HitArea = { 111, 44 },
            NeedVisible = true,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëìτ╜«µîçσ╝òµÄºΣ╗╢_ΦúàσñçΘí╡τ¡╛"] = {
            DelayTime = 0,
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["σëºσ£║Σ╕╗τòîΘ¥ó_σÑûσè▒ΘóäΦºêµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "NodeProgress",
            UiFile = "archive/archiveMainViewUI",
        },
        ["σëºσ£║τòîΘ¥ó_Σ╕╗τòîΘ¥óτº╗σè¿σàâτ┤\160"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "archive/archiveItemPanel2ViewUI",
        },
        ["σëºσ£║τòîΘ¥ó_Σ╕╗τòîΘ¥óΦâîµÖ\175"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "archive/archiveMainViewUI",
        },
        ["σëºσ£║τòîΘ¥ó_σëºµâàΦ»ªµâàσ╝╣τ¬ù"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "archive/archiveStageDetailPopUI",
        },
        ["σëºµâàΦ»ªµâàσ╝╣τ¬ù_Φ┐¢σàÑµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnEnter",
            UiFile = "archive/archiveStageDetailPopUI",
        },
        ["σë»σìíσìçτ║ºτòîΘ¥ó"] = { UiFile = "fightUnion/ftUnionLevelUpUI" },
        ["σë»σìíσìçτ║ºτòîΘ¥ó_Σ╕\128Θö«σìçτ║\167"] = {
            UiComp = "BtnAuto",
            UiFile = "fightUnion/ftUnionLevelUpUI",
        },
        ["σë»σìíσÉêµêÉτòîΘ¥ó"] = { DelayTime = 0, UiFile = "fightUnion/ftUnionCombineUI" },
        ["σë»σìíτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "fightUnion/fightUnionMainUI" },
        ["σë»σìíτòîΘ¥ó_1Φí\1401µº\189"] = {
            DelayTime = 0,
            UiComp = "SkillCardBlank1",
            UiFile = "fightUnion/fightUnionMainUI",
        },
        ["σë»σìíτòîΘ¥ó_1Φí\1402µº\189"] = {
            DelayTime = 0,
            UiComp = "AddiCard0_1",
            UiFile = "fightUnion/fightUnionMainUI",
        },
        ["σë»σìíτòîΘ¥ó_σÉêµêÉµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnMerge",
            UiFile = "fightUnion/fightUnionMainUI",
        },
        ["σë»σìíΦ»ªµâàσ╝╣τ¬ù"] = { DelayTime = 0, UiFile = "fightUnion/ftUnionTipsUI" },
        ["σë»σìíΦ»ªµâàσ╝╣τ¬ù_σìçτ║º"] = {
            UiComp = "BtnTrain",
            UiFile = "fightUnion/ftUnionTipsUI",
        },
        ["σë»σìíΦ»ªµâàσ╝╣τ¬ù_τ⌐┐µê┤"] = {
            DelayTime = 0,
            UiComp = "BtnEquip",
            UiFile = "fightUnion/ftUnionTipsUI",
        },
        ["σèƒΦâ╜ΘóäσæèτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "main/mainFuncOpenUI" },
        ["σî║σƒƒΣ║ïΣ╗╢Σ╕╗τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "areaEvent/areaEventViewUI",
        },
        ["σî║σƒƒµîëΘÆ«"] = { DelayTime = 0, UiComp = "Toggle_01_Btn", UiFile = "map/worldMapViewUI" },
        ["σìüΦ┐₧µè╜_ΦÄ╖σ╛ùτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "recruit/comps/recruitResultViewUI",
        },
        ["σìüΦ┐₧µè╜_ΘÇëµï⌐σë»σìí"] = {
            AbsPos = { 394, 104 },
            DelayTime = 0,
            HitArea = { 240, 50 },
            UiAdapter = 4,
        },
        ["σìÅΣ╜£Σ╕¡σ┐â_σê¢σ╗║ΘÿƒΣ╝ì"] = {
            DelayTime = 0,
            UiComp = "CreateTeamBtn",
            UiFile = "team/teamListViewUI",
        },
        ["σìÅΣ╜£Σ╕¡σ┐â_σê¢σ╗║ΘÿƒΣ╝ì1"] = {
            AbsPos = { 318, 612 },
            DelayTime = 0,
            HitArea = { 254, 60 },
            UiAdapter = 5,
        },
        ["σìÅΣ╜£Σ╕¡σ┐âτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "team/teamListViewUI" },
        ["σìíτëîµÇ╗Φºê_Φ┐öσ¢₧µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnBack",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["σÅ│Σ╛ºσñ£µêÿµîæµêÿτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "nightFight/comps/nightFightStageInfoUI",
        },
        ["σÅ│Σ╛ºσñ£µêÿµîæµêÿτòîΘ¥ó_µîæµêÿ"] = {
            DelayTime = 0,
            UiComp = "BtnEnter",
            UiFile = "nightFight/comps/nightFightStageInfoUI",
        },
        ["σÅ│Σ╛ºµ▓╗σ«ëσç║σç╗τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "areaEvent/areaEventViewStageInfoUI",
        },
        ["σÉÄσïñΣ┐¥σà╗τòîΘ¥ó_τí«σ«Ü"] = {
            DelayTime = 0,
            UiComp = "BtnConfirm",
            UiFile = "resStage/resStageRewardFrameUI",
        },
        ["σòåΣ╝ÜτòîΘ¥ó_σç║σö«τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "shanghui/shangHuiSellPanelUI",
        },
        ["σòåΣ╝ÜτòîΘ¥ó_τ¼¼Σ╕ÇΣ╕¬Θí╡τ¡\190"] = {
            AbsPos = { 90, 141 },
            DelayTime = 0,
            HitArea = { 146, 66 },
            UiAdapter = 4,
        },
        ["σòåΣ╝ÜτòîΘ¥ó_Φ┤¡Σ╣░τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "shanghui/shangHuiBuyPanelUI",
        },
        ["σòåσƒÄτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "mall/mallViewUI" },
        ["σÖ¿µ¥ÉτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "card/cardExerciseEquItem" },
        ["σ¢óµ£¼τòîΘ¥ó"] = { IsUiView = true, UiFile = "group/out/groupChannelViewUI" },
        ["σ¢╛Σ╛ïµîëΘÆ«"] = {
            DelayTime = 0,
            HighlightUiComp = "FigureBtn",
            UiComp = "FigureBtn",
            UiFile = "map/worldMapViewUI",
        },
        ["σ£░σ¢╛_µÄóτ┤óΦ┐¢σ║ªτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "map/mapTaskListViewUI",
        },
        ["σ£░σ¢╛_τÄ⌐µ│ò"] = {
            DelayTime = 0,
            HighlightUiComp = "Toggle_03_Btn",
            UiComp = "Toggle_03_Btn",
            UiFile = "map/worldMapViewUI",
        },
        ["σ£░σ¢╛_τÄ⌐µ│ò1"] = {
            AbsPos = { 843, 693 },
            DelayTime = 0,
            HitArea = { 90, 36 },
            UiAdapter = 5,
        },
        ["σ£░σ¢╛Σ╗╗σèíσëìσ╛ÇµîëΘÆ«"] = {
            DelayTime = 0,
            NeedBlock = true,
            UiComp = "AutoBtn",
            UiFile = "map/worldMapTaskViewUI",
        },
        ["σ£░σ¢╛Σ╗╗σèíµáçΦ«░µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "MarkBtn",
            UiFile = "map/worldMapTaskViewUI",
        },
        ["σ£░σ¢╛τòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "map/worldMapViewUI" },
        ["σ£░σ¢╛τòîΘ¥ó_σú░µ£¢µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnGift",
            UiFile = "map/mapTaskListViewUI",
        },
        ["σ£░σ¢╛τòîΘ¥óΦ┐öσ¢₧µîëΘÆ«"] = {
            DelayTime = 0,
            HighlightUiComp = "CloseBtn",
            NeedBlock = true,
            UiComp = "CloseBtn",
            UiFile = "map/worldMapViewUI",
        },
        ["σƒÄσ╕éσ╖íΘ\128╗µîëΘÆ\174"] = {
            AbsPos = { 174, 192 },
            DelayTime = 0,
            HitArea = { 302, 40 },
            NeedBlock = true,
            UiAdapter = 4,
        },
        ["σƒÄσ╕éτ¡ëτ║º_1τ║ºσÑûσè\177"] = {
            AbsPos = { 102, 329 },
            DelayTime = 0,
            HitArea = { 74, 74 },
            UiAdapter = 4,
        },
        ["σƒÄσ╕éτ¡ëτ║º_µáçΘóÿ"] = {
            DelayTime = 0,
            UiComp = "CityExpBtn",
            UiFile = "map/worldMapViewUI",
        },
        ["σƒÄσ╕éτ¡ëτ║º_τ╣üΦìúσ║ªΘù«σÅ\183"] = {
            DelayTime = 0,
            UiComp = "BtnTip",
            UiFile = "map/cityExp/cityExpMainViewUI",
        },
        ["σƒÄσ╕éτ¡ëτ║º_Φï▒Θ¢äµùÑσ╕╕Θí╡τ¡╛"] = {
            DelayTime = 0,
            UiComp = "DailyCheckBtn",
            UiFile = "map/mapTaskListViewUI",
        },
        ["σƒÄσ╕éτ¡ëτ║º_Φ┐öσ¢₧µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "CloseBtn",
            UiFile = "map/cityExp/cityExpMainViewUI",
        },
        ["σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "map/cityExp/cityExpMainViewUI",
        },
        ["σƒÄσ╕éτ¡ëτ║ºτòîΘ¥ó_Φ»ªµâàσ╝╣τ¬ù"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "map/cityExp/cityExpPopViewUI",
        },
        ["σú░µ£¢Σ╗╗σèíτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "task/taskPrestigeViewUI" },
        ["σú░µ£¢τòîΘ¥ó_σà│Θù¡µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnClose",
            UiFile = "task/taskPrestigeViewUI",
        },
        ["σú░µ£¢τòîΘ¥ó_σà│Θù¡µîëΘÆ«1"] = {
            AbsPos = { 1131, 102 },
            DelayTime = 0,
            HitArea = { 78, 78 },
            UiAdapter = 8,
        },
        ["σú░µ£¢τòîΘ¥ó_τñ╝τë⌐"] = {
            DelayTime = 0,
            UiComp = "BtnGift",
            UiFile = "task/taskPrestigeViewUI",
        },
        ["σú░µ£¢τòîΘ¥ó_τñ╝τë⌐1"] = {
            AbsPos = { 827, 244 },
            DelayTime = 0,
            HitArea = { 134, 146 },
            UiAdapter = 5,
        },
        ["σú░µ£¢τñ╝τë⌐_σÑûσè▒ΘóäΦºêτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "general/uicomp/generalRewardShowPanelUI",
        },
        ["σñ£µêÿ_σñ£µêÿσòåσ║ù"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "BtnShop",
            UiFile = "nightFight/nightFightViewUI",
        },
        ["σñ£µêÿ_Θù¿τÑ¿"] = {
            AbsPos = { 623, 44 },
            DelayTime = 0,
            HitArea = { 36, 36 },
            UiAdapter = 5,
        },
        ["σñ£µêÿσòåσ║ùΘí╡τ¡╛"] = {
            AbsPos = { 90, 462 },
            DelayTime = 0,
            HitArea = { 158, 238 },
            UiAdapter = 4,
        },
        ["σñºτºÿσóâ_σÅéΣ╕Ä"] = {
            DelayTime = 0,
            UiComp = "BtnEnter",
            UiFile = "map/trickPlay/trickPlayInfoFrameUI",
        },
        ["σñºτºÿσóâ_σÅéΣ╕Ä1"] = {
            AbsPos = { 1036, 676 },
            DelayTime = 0,
            HitArea = { 190, 64 },
            UiAdapter = 5,
        },
        ["σñºτºÿσóâ_τ¢«µáç_Σ┐¥σ¡ÿ"] = { UiComp = "SaveBtn", UiFile = "team/comps/teamSettingViewUI" },
        ["σñºτºÿσóâ_τ¢«µáçΦ»ªµâàτòîΘ¥ó"] = {
            IsUiView = true,
            UiFile = "team/comps/teamSettingViewUI",
        },
        ["σñºτºÿσóâ_τ¢«µáçΦ»ªµâàτòîΘ¥ó_τ¢«µáçσêçµìóµîëΘÆ«"] = {
            UiComp = "PlayBtn",
            UiFile = "team/comps/teamSettingViewUI",
        },
        ["σñºτºÿσóâσ╝╣τ¬\151"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "map/trickPlay/trickPlayInfoFrameUI",
        },
        ["σñºτºÿσóâτòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "map/trickPlay/trickPlayInfoFrameUI",
        },
        ["σñºτºÿσóâτòîΘ¥ó_µáçΘóÿµîëΘÆ«"] = {
            UiComp = "TitleBtn",
            UiFile = "team/comps/emergency/teamTargetEmergencyPanelUI",
        },
        ["σñºτºÿσóâτòîΘ¥ó_τ╗äΘÿƒσÅéσèá"] = {
            AbsPos = { 1036, 676 },
            DelayTime = 0,
            HitArea = { 190, 64 },
            UiAdapter = 5,
        },
        ["σñ⌐Φ╡ïτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "talent/talentMainViewUI" },
        ["σñ⌐Φ╡ïτòîΘ¥ó_Speedσñ⌐Φ╡ï"] = {
            DelayTime = 0,
            HitArea = { 104, 119 },
            UiComp = "1",
            UiFile = "talent/talentSpeedUI",
        },
        ["σñ⌐Φ╡ïτòîΘ¥ó_Speedσñ⌐Φ╡ï1"] = {
            AbsPos = { 584, 418 },
            DelayTime = 0,
            HitArea = { 104, 119 },
            UiAdapter = 5,
        },
        ["σñ⌐Φ╡ïτòîΘ¥ó_µ┐\128µ┤╗µîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnUp",
            UiFile = "talent/talentLvUpViewUI",
        },
        ["σÑûσè▒ΘóäΦºêτòîΘ¥ó_σà│Θù¡µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "m_CloseBtn",
            UiFile = "general/uicomp/generalRewardShowPanelUI",
        },
        ["σºöµëÿ_Σ╕╗τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "entrusttask/entrustTaskFrameUI",
        },
        ["σºöµëÿ_Σ╗╗σèíΦ»ªµâà"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "entrusttask/entrustInfoFrameUI",
        },
        ["σºöµëÿ_Σ╗╗σèíΦ»ªµâà_Σ╕\128Θö«Σ╕èΘÿ\181"] = {
            DelayTime = 0,
            UiComp = "BtnQuick",
            UiFile = "entrusttask/entrustInfoFrameUI",
        },
        ["σºöµëÿ_Σ╗╗σèíΦ»ªµâà_σ╝\128σºïσºöµë\152"] = {
            DelayTime = 0,
            UiComp = "BtnConfirm",
            UiFile = "entrusttask/entrustInfoFrameUI",
        },
        ["σºöµëÿ_σÅ│Σ╛ºτ⌐║τÖ╜"] = {
            AbsPos = { 980, 360 },
            DelayTime = 0,
            HitArea = { 600, 720 },
            UiAdapter = 6,
        },
        ["σºöµëÿ_Φï▒Θ¢äΘÇÜΦ«»σ╜\149"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "entrusttask/entrustHeroFrameUI",
        },
        ["σºöµëÿ_ΦºúΘöüσºöµëÿτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "entrusttask/entrustCityLvPovFrameUI",
        },
        ["σ«┐ΦêìΣ╕╗τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "homeView/homeSceneMainViewUI",
        },
        ["σ«┐ΦêìσåàΘâ¿_σèƒΦâ╜µÇºσ«╢σà\183"] = {
            AbsPos = { 840, 184 },
            DelayTime = 0,
            HitArea = { 68, 68 },
            UiAdapter = 5,
        },
        ["σ«┐ΦêìσåàΘâ¿τòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "homeView/homeMainViewUI" },
        ["σ«┐ΦêìτòîΘ¥ó_1σÅ╖σ«┐Φê\141"] = {
            AbsPos = { 354, 516 },
            DelayTime = 0,
            HitArea = { 286, 68 },
            UiAdapter = 5,
        },
        ["σ▒Åσ╣òΣ╕¡σ┐â"] = {
            AbsPos = { 640, 360 },
            DelayTime = 0,
            UiAdapter = 5,
        },
        ["σ▒Åσ╣òσà¿σ▒Å"] = {
            AbsPos = { -500, -500 },
            DelayTime = 0,
            HitArea = { 5000, 5000 },
            UiAdapter = 5,
        },
        ["σ▒Åσ╣òσÅ│Σ╛º"] = {
            AbsPos = { 1185, 360 },
            DelayTime = 0,
            HitArea = { 197, 720 },
            UiAdapter = 5,
        },
        ["σ▒Åσ╣òσñ\150"] = {
            AbsPos = { -1000, -1000 },
            DelayTime = 0,
            UiAdapter = 5,
        },
        ["σ┐½Θ\128ƒσêçµìóΦï▒Θ¢äτòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "card/cardBagShortcutUI",
        },
        ["µêÉσ░▒σêåτ▒╗Θí\181"] = { DelayTime = 0, IsUiView = true, UiFile = "achieve/achieveFrameUI" },
        ["µêÉσ░▒µîëΘÆ«"] = { DelayTime = 0, UiComp = "BtnAchieve", UiFile = "main/mainFunEntranceViewUI" },
        ["µêÉσ░▒τòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "achieve/achieveViewUI" },
        ["µëïµ£║τòîΘ¥ó"] = { DelayTime = 0, UiFile = "main/mainFunEntranceViewUI" },
        ["µëïµ£║τòîΘ¥ó_σÅ│_Σ║ïσèíµë\128ΦÇâµá╕µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnFBSecret",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_σìÅΣ╜£µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnTeamList",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_σ¢óµ£¼µîëΘÆ«"] = {
            UiComp = "BtnGroup",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_σñ£µêÿµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnNightFight",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_σ»╣µèùµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnPVP",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_σ╝║µòîµîæµêÿµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnTimePlayClose2",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_µêÿµûùµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnCombat",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_µï¢σïƒµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnRecruit",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_µö»µÅ┤ΦúàσñçµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnEquip",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_µíúµíêσ║ôµîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnHeroTheater",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_µ¿íµïƒτ½₧Φ╡¢µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnUsj",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_µ▓╗σ«ëµëïΦ┤ªµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnAreaEvent",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_τë╣σê½Φíîσè¿µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnCampaign",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_τö╡τÄ⌐σƒÄµîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnEntertainment",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_τ½₧µèÇσ£║µîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnBattlefield",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_τ┤ºµ\128ÑΣ║ïΣ╗╢µîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnEmergency",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_ΦüöσÉêΦíîσè¿µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnTeamRelax",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnHero",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_Φï▒Θ¢äΦ»òτé╝µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnFragment",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_ΦÖÜµïƒµêÿσ£║µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnPchallenge",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_ΦíÑτ╗ÖµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnSupply",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_Φ╢àΦâ╜σìÅσÉîµêÿµîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnArena",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_ΘÖÉµù╢σ╝\128σÉ»µîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnTimePlayOpen",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σÅ│_ΘÖÉµù╢µîëΘÆ«"] = {
            UiComp = "BtnTimePlay",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σ╖ª_σÑ╜σÅïµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnFriend",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σ╖ª_σºöµëÿµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnEntrust",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σ╖ª_σ«┐ΦêìµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnHome",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σ╖ª_µêÉσ░▒µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnAchieve",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σ╖ª_µÄÆΦíîµª£µîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnBillboard",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µëïµ£║τòîΘ¥ó_σ╖ª_Φüöτ¢ƒµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnLeague",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µè\128Φâ╜τòîΘ¥\162"] = { DelayTime = 0, IsUiView = true, UiFile = "skill/skillMainViewUI" },
        ["µè\128Φâ╜τòîΘ¥ó_σìçτ║ºµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnUp",
            UiFile = "skill/skillLvUpViewUI",
        },
        ["µè\128Φâ╜τòîΘ¥ó_σìçτ║ºµîëΘÆ«1"] = {
            AbsPos = { 442, 593 },
            DelayTime = 0,
            HitArea = { 318, 76 },
            UiAdapter = 5,
        },
        ["µè╜σìíτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "entertainmentCenter/comps/capsuleToyMachineMenuViewUI",
        },
        ["µè╜σìíτòîΘ¥ó_TAP"] = {
            DelayTime = 0,
            HitArea = { 140, 140 },
            UiComp = "LotteryBtn",
            UiFile = "entertainmentCenter/comps/capsuleToyMachineMenuViewUI",
        },
        ["µè╜σìíτòîΘ¥ó_TAP1"] = {
            AbsPos = { 975, 512 },
            DelayTime = 0,
            HitArea = { 103, 92 },
            UiAdapter = 5,
        },
        ["µè╜σìíτòîΘ¥ó_σÅ│Θö«1"] = {
            AbsPos = { 368, 512 },
            DelayTime = 0,
            HitArea = { 60, 80 },
            UiAdapter = 5,
        },
        ["µè╜σìíτòîΘ¥ó_σ╖ªΘö«"] = {
            DelayTime = 0,
            UiComp = "SteerLeftBtn",
            UiFile = "entertainmentCenter/comps/capsuleToyMachineMenuViewUI",
        },
        ["µè╜σìíτòîΘ¥ó_σ╖ªΘö«1"] = {
            AbsPos = { 265, 512 },
            DelayTime = 0,
            HitArea = { 60, 80 },
            NeedBlock = true,
            UiAdapter = 5,
        },
        ["µè╜σìíτòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "MachineExitBtn",
            UiFile = "entertainmentCenter/comps/capsuleToyMachineMenuViewUI",
        },
        ["µè╜σìíτòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«1"] = {
            AbsPos = { 87, 42 },
            DelayTime = 0,
            HitArea = { 161, 70 },
            UiAdapter = 4,
        },
        ["µÅ┤σè⌐_µÅ┤σè⌐µ┐\128µ┤\187"] = { IsUiView = true, UiFile = "support/supportActivePopViewUI" },
        ["µÅ┤σè⌐_Φç¬σè¿ΦúàΘàì"] = { IsUiView = true, UiFile = "support/supportAutoConfigurePopViewUI" },
        ["µÅ┤σè⌐ΘÜÅΣ╛┐τé╣σî║σƒ\159"] = {
            AbsPos = { 586, 480 },
            DelayTime = 0,
            HitArea = { 800, 780 },
            UiAdapter = 5,
        },
        ["µö»µÅ┤ΦúàσñçµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnEquip",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µö╢ΦùÅµîëΘÆ«"] = { DelayTime = 0, UiComp = "BtnCollection", UiFile = "main/mainFunEntranceViewUI" },
        ["µû░σìüΦ┐₧µè╜_HomeµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "HomeBtn",
            UiFile = "recruit/recruitMainViewUI",
        },
        ["µû░σìüΦ┐₧µè╜_σìíµ▒á"] = {
            AbsPos = { 380, 383 },
            DelayTime = 0,
            HitArea = { 627, 400 },
            UiAdapter = 4,
        },
        ["µû░σìüΦ┐₧µè╜_µÉ£τ┤óµîëΘÆ«1"] = {
            AbsPos = { 893, 594 },
            DelayTime = 0,
            HitArea = { 218, 70 },
            UiAdapter = 5,
        },
        ["µû░σìüΦ┐₧µè╜_τ¡╛σÉìτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "recruit/comps/recruitConfirmSignViewUI",
        },
        ["µû░σìüΦ┐₧µè╜_ΘÇëµï⌐σìíµ▒áτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "recruit/recruitViewUI",
        },
        ["µû░σìüΦ┐₧µè╜τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "recruit/recruitMainViewUI",
        },
        ["µû░Φï▒Θ¢äτÖ╗σ£║τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "card/cardObtainShowViewUI",
        },
        ["µ£\128µû░σ«îµêÉµêÉσ░▒_τ¼¼Σ╕ÇΣ╕\1701"] = {
            AbsPos = { 312, 234 },
            DelayTime = 0,
            HitArea = { 502, 112 },
            UiAdapter = 5,
        },
        ["µ¿íµïƒτ½₧Φ╡¢_tipµîëΘÆ«"] = { DelayTime = 0, UiComp = "BtnHelp", UiFile = "usj/usjMainViewUI" },
        ["µ¿íµïƒτ½₧Φ╡¢_σÅéΣ╕Ä"] = {
            DelayTime = 0,
            UiComp = "BtnEnter",
            UiFile = "map/trickPlay/trickUsj",
        },
        ["µ¿íµïƒτ½₧Φ╡¢τòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "usj/usjMainViewUI" },
        ["µ▓╗σ«ëΣ║ïΣ╗╢_σ£░σ¢╛τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "areaEvent/areaEventMapViewUI",
        },
        ["µ▓╗σ«ëσç║σç╗_Φªåτ¢ûΦ┐¢σ║ªΣ║îτ║ºσ╝╣τ¬ù"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "general/generalAlertUI",
        },
        ["µ▓╗σ«ëσÑûσè▒µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnActPassStage",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µ▓╗σ«ëσÑûσè▒τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "activity/pass_stage/passStageActivityViewUI",
        },
        ["µ▓╗σ«ëµëïσ╕É"] = { DelayTime = 0, IsUiView = true, UiFile = "areaEvent/areaEventViewUI" },
        ["µ▓╗σ«ëµëïσ╕ÉµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnArea",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["µ┐\128µ┤╗σñ⌐Φ╡ïτòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "talent/talentComprehendPopView",
        },
        ["µ┐\128µ┤╗µ¥âΘÖÉµîëΘÆ\174"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "BtnActive",
            UiFile = "towersystem/towerSystemActiveViewUI",
        },
        ["τêåΦ▒¬µè\128Φâ\189"] = {
            DelayTime = 0,
            HitArea = { 100, 100 },
            UiComp = "1",
            UiFile = "skill/skillMainViewUI",
        },
        ["τêåΦ▒¬µè\128Φâ\1891"] = {
            AbsPos = { 957, 467 },
            DelayTime = 0,
            HitArea = { 130, 130 },
            UiAdapter = 5,
        },
        ["τë╣σê½Φíîσè¿_σà│σìíτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "campaign/campaignInfoViewUI",
        },
        ["τë╣σê½Φíîσè¿Σ╕╗τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "campaign/campaignMainViewUI",
        },
        ["τë╣σê½Φíîσè¿Σ╕╗τòîΘ¥ó_σà│σìí"] = {
            AbsPos = { 232, 387 },
            DelayTime = 0,
            HitArea = { 300, 546 },
            UiAdapter = 4,
        },
        ["τë╣σê½Φíîσè¿σà│σìíτòîΘ¥ó_σ╝\128σºïΦíîσè\168"] = {
            DelayTime = 0,
            UiComp = "BtnFight",
            UiFile = "campaign/campaignInfoViewUI",
        },
        ["τÄ⌐µ│ò_Σ║ïσèíµë\128ΦÇâµá╕1"] = {
            AbsPos = { 141, 206 },
            DelayTime = 0,
            HitArea = { 268, 30 },
            UiAdapter = 4,
        },
        ["τÄ⌐µ│ò_τ┤ºµ\128ÑΣ║ïΣ╗\1821"] = {
            AbsPos = { 141, 246 },
            DelayTime = 0,
            HitArea = { 268, 30 },
            UiAdapter = 4,
        },
        ["τÄ⌐µ│òµîëΘÆ«"] = { DelayTime = 0, UiComp = "Toggle_03_Btn", UiFile = "map/worldMapViewUI" },
        ["τö╡τÄ⌐σƒÄΣ╕╗τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "entertainmentCenter/entertainmentCenterMainViewUI",
        },
        ["τö╡τÄ⌐σƒÄΣ╕╗τòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "LeaveSceneBtn",
            UiFile = "main/mainMiniMapViewUI",
        },
        ["τö╡τÄ⌐σƒÄΣ╕╗τòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«1"] = {
            AbsPos = { 87, 42 },
            DelayTime = 0,
            HitArea = { 161, 70 },
            UiAdapter = 4,
        },
        ["τö╡τÄ⌐σƒÄµîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnEntertainmentCenter",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["τí«Φ«ñσìçτ║º"] = { DelayTime = 0, IsUiView = true, UiFile = "card/detailinfo/CardLevelUpTips" },
        ["τí«Φ«ñσìçτ║º_σìçτ║º"] = {
            DelayTime = 0,
            UiComp = "m_LevelUpBtn",
            UiFile = "card/detailinfo/CardLevelUpTips",
        },
        ["τí«Φ«ñσìçτ║º_σìçτ║º1"] = {
            AbsPos = { 642, 569 },
            DelayTime = 0,
            HitArea = { 318, 76 },
            UiAdapter = 5,
        },
        ["τªÅσê⌐_τÖ╗σ╜òτªÅσê⌐τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "welfare/welfaceViewUI",
        },
        ["τªÅσê⌐_τ¡ëτ║ºσÑûσè▒τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "welfare/rankUpGradeFrameUI",
        },
        ["τªÅσê⌐_Φ╡₧σè⌐σƒ║ΘçæτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "welfare/growthFundRewardFrameUI",
        },
        ["τ½ïσì│σëìσ╛ÇµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnFight",
            UiFile = "areaEvent/areaEventViewSelectMerStageInfoUI",
        },
        ["τ½₧µèÇσ£║µîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "BtnFight",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["τ½₧µèÇσ£║τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "battlefield/battlefieldViewUI",
        },
        ["τ½₧µèÇσ£║τòîΘ¥ó_σ╖àσ│░σ»╣σå│"] = {
            DelayTime = 10,
            UiComp = "BtnPeak",
            UiFile = "battlefield/battlefieldViewUI",
        },
        ["τ½₧µèÇσ£║Θ\128ëΣ║║_σ╝\128σºïσî╣Θà\141"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "BtnMatch",
            UiFile = "battlefield/battlefieldFormationViewUI",
        },
        ["τ½₧µèÇσ£║Θ\128ëΣ║║τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "battlefield/battlefieldFormationViewUI",
        },
        ["τ¼¼Σ╕ÇΣ╕¬Σ╕ûτòîΣ╗╗σè\161"] = {
            AbsPos = { 174, 483 },
            DelayTime = 0,
            HitArea = { 302, 40 },
            UiAdapter = 1,
        },
        ["τ¼¼Σ╕ÇΣ╕¬Σ╜ìτ╜\174"] = {
            DelayTime = 0,
            HitArea = { 90, 100 },
            NeedBlock = true,
            UiComp = "ImageSwitch1",
            UiFile = "areaEvent/areaEventHappenViewUI",
        },
        ["τ¼¼Σ╕ÇΣ╕¬σà│σì\161"] = {
            DelayTime = 0,
            HitArea = { 100, 100 },
            UiComp = "BtnTouch",
            UiFile = "areaEvent/comps/areaEventMapIconCompMonsterUI",
        },
        ["τ¼¼Σ╕ÇΣ╕¬σÖ¿µ¥\144"] = { DelayTime = 0, UiComp = "Btn", UiFile = "card/cardExerciseEquItem" },
        ["τ¼¼Σ╕ÇΣ╕¬µö»τ║┐Σ╗╗σè\161"] = {
            AbsPos = { 174, 252 },
            DelayTime = 0,
            HitArea = { 302, 40 },
            NeedBlock = true,
            UiAdapter = 1,
        },
        ["τ¼¼Σ╕ÇΣ╕¬Θúƒτë\169"] = {
            AbsPos = { 946, 313 },
            DelayTime = 0,
            HitArea = { 96, 122 },
            UiAdapter = 6,
        },
        ["τ¼¼Σ╕Çσ╝áσìíτë\140"] = {
            AbsPos = { 170, 205 },
            DelayTime = 0,
            HitArea = { 100, 100 },
            UiAdapter = 5,
        },
        ["τ¼¼Σ╕ëΣ╕¬Σ╜ìτ╜\174"] = {
            DelayTime = 0,
            HitArea = { 90, 100 },
            NeedBlock = true,
            UiComp = "ImageSwitch3",
            UiFile = "areaEvent/areaEventHappenViewUI",
        },
        ["τ¼¼Σ║îΣ╕¬Σ╜ìτ╜\174"] = {
            DelayTime = 0,
            HitArea = { 90, 100 },
            NeedBlock = true,
            UiComp = "ImageSwitch2",
            UiFile = "areaEvent/areaEventHappenViewUI",
        },
        ["τ¼¼Σ║îΣ╕¬Θúƒτë\169"] = {
            AbsPos = { 946, 313 },
            DelayTime = 0,
            HitArea = { 96, 122 },
            UiAdapter = 6,
        },
        ["τ¼¼Σ║îσà│τÜäτ¼¼Σ╕ÇΣ╕¬σà│σì\161"] = {
            DelayTime = 0,
            HitArea = { 100, 100 },
            UiComp = "BtnTouch",
            UiFile = "areaEvent/comps/areaEventMapIconCompMonsterUI",
        },
        ["τ┤ºµ\128ÑΣ║ïΣ╗╢_Σ║ïΣ╗╢σñäτÉå"] = {
            UiComp = "BtnDeal",
            UiFile = "emergency/emergencyView2UI",
        },
        ["τ┤ºµ\128ÑΣ║ïΣ╗╢_τòîΘ¥ó"] = { IsUiView = true, UiFile = "emergency/emergencyView2UI" },
        ["τ╗äΘÿƒ_σî╣Θàìσ╝╣τ¬ù"] = { IsUiView = true, UiFile = "team/teamMatchSettingViewUI" },
        ["τ╗äΘÿƒ_σî╣Θàìσ╝╣τ¬ù_σî╣Θàì"] = {
            UiComp = "BtnConfirm",
            UiFile = "team/teamMatchSettingViewUI",
        },
        ["τ╗äΘÿƒτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "team/teamViewUI" },
        ["τ╗äΘÿƒτòîΘ¥ó_σç║σç╗"] = { DelayTime = 0, UiComp = "PlayBtn", UiFile = "team/teamViewUI" },
        ["τ╗äΘÿƒτòîΘ¥ó_σî╣Θàì"] = { UiComp = "BtnMatch", UiFile = "team/teamViewUI" },
        ["τ╛üτ╗èτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "support/supportViewUI" },
        ["ΦüöσÉêΦíîσè¿_Σ╕╗τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "teamRelax/teamRelaxViewUI",
        },
        ["ΦüöσÉêΦíîσè¿_Σ╕╗τòîΘ¥ó_σëìσ╛Çτ╗äΘÿƒ"] = {
            DelayTime = 0,
            UiComp = "BtnTeam",
            UiFile = "teamRelax/teamRelaxViewUI",
        },
        ["Φüöτ¢ƒµîëΘÆ«"] = { DelayTime = 0, UiComp = "BtnLeague", UiFile = "main/mainFunEntranceViewUI" },
        ["Φüöτ¢ƒµùáµò░µì«τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "leagueUI/leagueMainViewUI",
        },
        ["Φüöτ¢ƒµ£ëµò░µì«τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "leagueUI/leagueRecommendLeftView",
        },
        ["Φüöτ¢ƒΦüèσñ⌐µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "m_BtnOpenChat",
            UiFile = "chat/chatMsgPushUI",
        },
        ["Φüöτ¢ƒΦüèσñ⌐µ¿¬µ¥íτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "chat/chatMsgPushUI",
        },
        ["ΦâîσîàτòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnBack",
            UiFile = "card/cardBagMainViewUI",
        },
        ["Φç¬σè¿Σ╜£µêÿµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnAutoFight",
            UiFile = "areaEvent/areaEventMapViewUI",
        },
        ["Φè»τëçσåàσ«╣"] = { DelayTime = 0, IsUiView = true, UiFile = "rune/runeViewCompareInfoUI" },
        ["Φè»τëçσåàσ«╣_σ╝║σîû"] = {
            DelayTime = 0,
            UiComp = "BtnIntensify",
            UiFile = "rune/comps/runeInfoTipsItemUI",
        },
        ["Φè»τëçσåàσ«╣_Φúàσñç"] = {
            DelayTime = 0,
            UiComp = "BtnEquip",
            UiFile = "rune/comps/runeInfoTipsItemUI",
        },
        ["Φè»τëçσ╝║σîû"] = { DelayTime = 0, IsUiView = true, UiFile = "rune/runeIntensifyViewUI" },
        ["Φè»τëçσ╝║σîû_τí«Φ«ñ"] = {
            DelayTime = 0,
            UiComp = "BtnIntensify",
            UiFile = "rune/runeIntensifyViewUI",
        },
        ["Φè»τëçσ╝║σîû_τ¼¼Σ╕ÇΣ╕¬Φè»τë\135"] = {
            AbsPos = { 782, 248 },
            DelayTime = 0,
            HitArea = { 108, 140 },
            UiAdapter = 5,
        },
        ["Φè»τëçσ╝║σîûµêÉσèƒ"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "rune/runeIntensifySucceeUI",
        },
        ["Φè»τëçτòîΘ¥ó_µº\189"] = { DelayTime = 0, UiComp = "NodeSlot1", UiFile = "rune/runeViewUI" },
        ["Φè»τëçτòîΘ¥ó_µº\1891"] = {
            AbsPos = { 285, 278 },
            DelayTime = 0,
            HitArea = { 162, 202 },
            UiAdapter = 5,
        },
        ["Φè»τëçτòîΘ¥ó_τ¼¼Σ╕ÇΣ╕¬Φè»τë\135"] = {
            AbsPos = { 873, 285 },
            DelayTime = 0,
            HitArea = { 104, 132 },
            UiAdapter = 6,
        },
        ["Φè»τëçτòîΘ¥ó_Φè»τëçΦâîσîà"] = {
            DelayTime = 0,
            HighlightUiComp = "BtnChange",
            UiComp = "BtnChange",
            UiFile = "rune/runeViewRightUI",
        },
        ["Φè»τëçτòîΘ¥ó_Φè»τëçΦâîσîà1"] = {
            AbsPos = { 1013, 628 },
            DelayTime = 0,
            HitArea = { 318, 76 },
            UiAdapter = 5,
        },
        ["Φè»τëçΦâîσîàτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "rune/runeViewRightUI" },
        ["Φè»τëçΦ╢àΘóæµîëΘÆ«"] = { DelayTime = 0, UiComp = "BtnOverload", UiFile = "rune/runeViewUI" },
        ["Φè»τëçΦ╢àΘóæτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "rune/runeOverloadViewUI" },
        ["Φè»τëçΦ╢àΘóæτòîΘ¥ó_Θüôσà╖"] = {
            DelayTime = 0,
            HitArea = { 52, 52 },
            UiComp = "NodeIcon",
            UiFile = "rune/runeOverloadViewUI",
        },
        ["Φï▒Θ¢äΣ╣ïΦ╖»σàÑσÅú"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "BtnHeroRoad",
            UiFile = "main/mainActivityButtonUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_σà▒Θ╕úµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "Btn_Resonance",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_σà╗µêÉτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_σç║µêÿµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "NodeGuide_Attack",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_σë»σìíµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "Btn_Support",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_σìçτ║ºµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "UpgradeImage",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_σñ⌐Φ╡ïµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "Btn_Talent",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_µè\128Φâ╜µîëΘÆ\174"] = {
            DelayTime = 0,
            UiComp = "Btn_Skill",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_τ╛üτ╗èµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "Btn_Fetter",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_ΦâîσîàτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "card/cardBagMainViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_Φè»τëçµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "Btn_Exclusive",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_Φ«¡τ╗âµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnTraining",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσà╗µêÉ_Θö╗τé╝µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "Btn_Exercise",
            UiFile = "card/detailinfo/DetailInfoViewUI",
        },
        ["Φï▒Θ¢äσëºσ£║µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "btnHeroTheater",
            UiFile = "main/mainFunEntranceViewUI",
        },
        ["Φï▒Θ¢äσìçτ║º_Σ╕\128Θö«σìçτ║\167"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "BtnOnceLv",
            UiFile = "card/cardExerciseViewUI",
        },
        ["Φï▒Θ¢äΦ«¡τ╗âτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "task/taskTrainingViewUI" },
        ["Φï▒Θ¢äΦ«¡τ╗âτòîΘ¥ó_σ╝\128σºïΦ«¡τ╗\131"] = {
            DelayTime = 0,
            UiComp = "BtnEnter",
            UiFile = "task/taskTrainingViewUI",
        },
        ["Φï▒Θ¢äΦ«¡τ╗âτòîΘ¥ó_τ¼¼Σ╕Çσ╝áσìí"] = {
            DelayTime = 0,
            HitArea = { 116, 160 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["Φï▒Θ¢äΦ«¡τ╗âτòîΘ¥ó_τ¼¼Σ╕Çσ╝áσìí1"] = {
            AbsPos = { 116, 611 },
            DelayTime = 0,
            HitArea = { 116, 160 },
            UiAdapter = 5,
        },
        ["Φï▒Θ¢äΦ»äτ║º_Σ║ïσèíµë\128Σ╣ïµÿƒµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BestBtn",
            UiFile = "heroroad/heroGlory/heroScoreExamMainViewUI",
        },
        ["Φï▒Θ¢äΦ»äτ║º_σ╝\128σºïµîæµê\152"] = {
            DelayTime = 0,
            UiComp = "FightBtn",
            UiFile = "heroroad/heroGlory/heroScoreExamChallengeViewUI",
        },
        ["Φï▒Θ¢äΦ»äτ║º_µîæµêÿτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "heroroad/heroGlory/heroScoreExamChallengeViewUI",
        },
        ["Φï▒Θ¢äΦ»äτ║º_τ¢«µáçσÑûσè▒µîëΘÆ«1"] = {
            AbsPos = { 323, 278 },
            DelayTime = 0,
            HitArea = { 86, 86 },
            UiAdapter = 5,
        },
        ["Φï▒Θ¢äΦ»äτ║º_τ¢«µáçσÑûσè▒µîëΘÆ«2"] = {
            AbsPos = { 523, 278 },
            DelayTime = 0,
            HitArea = { 86, 86 },
            UiAdapter = 5,
        },
        ["Φï▒Θ¢äΦ»äτ║ºτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "heroroad/heroGlory/heroScoreExamMainViewUI",
        },
        ["Φï▒Θ¢äΦ»òτé╝_Σ╕èΘÿ╡Θí\181"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "fragmentStage/fragmentStageSettingFrameUI",
        },
        ["Φï▒Θ¢äΦ»òτé╝_Σ╕èΘÿ╡Θí╡_σç║σç╗"] = {
            DelayTime = 0,
            UiComp = "BtnEnter",
            UiFile = "fragmentStage/fragmentStageSettingFrameUI",
        },
        ["Φï▒Θ¢äΦ»òτé╝_Σ╕èΘÿ╡Θí╡_µ╖╗σèáΦï▒Θ¢ä"] = {
            DelayTime = 0,
            UiComp = "BtnHero",
            UiFile = "fragmentStage/fragmentStageSettingFrameUI",
        },
        ["Φï▒Θ¢äΦ»òτé╝_Σ╕╗Θí╡Θ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "fragmentStage/fragmentStageListUI",
        },
        ["Φï▒Θ¢äΘÇÜΦ«»τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "other/stageHeroLineupPanelUI",
        },
        ["ΦÖÜµïƒµêÿσ£║_σƒ║τíÇσà│σç║σç\187"] = {
            DelayTime = 0,
            UiComp = "BtnEnter",
            UiFile = "pchallenge/pchallengeStageFrameUI",
        },
        ["ΦÖÜµïƒµêÿσ£║_σƒ║τíÇσà│σç║σç╗τòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "pchallenge/pchallengeStageFrameUI",
        },
        ["ΦÖÜµïƒµêÿσ£║_Φ╡¢σ¡úΦ»┤µÿÄτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "pchallenge/pchallengeStartTipsUI",
        },
        ["ΦÖÜµïƒµêÿσ£║τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "pchallenge/pchallengeMainViewUI",
        },
        ["Φúàσñçσ╝║σîûτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "equip/equipIntensifyViewUI",
        },
        ["Φúàσñçσ╝║σîûτòîΘ¥ó_σ╝║σîûµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnIntensify",
            UiFile = "equip/equipIntensifyViewUI",
        },
        ["ΦúàσñçµÅÉσìçτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "equip/equipRisingStarViewUI",
        },
        ["ΦúàσñçµÅÉσìçτòîΘ¥ó_σó₧σ╣à"] = {
            DelayTime = 0,
            UiComp = "BtnRisingStar",
            UiFile = "equip/equipRisingStarViewUI",
        },
        ["Φúàσñçµö╣Θ\128áτòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "equip/equipRemouldViewUI",
        },
        ["Φúàσñçµö╣Θ\128áτòîΘ¥ó_µö╣Θ\128\160"] = {
            DelayTime = 0,
            UiComp = "BtnRemould",
            UiFile = "equip/equipRemouldViewUI",
        },
        ["Φúàσñçµ¿íτ╗äσÉîΦ░â_σÉîΦ░âµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnDieset",
            UiFile = "equip/equipDiesetCultivateViewUI",
        },
        ["Φúàσñçµ¿íτ╗äσÉîΦ░âτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "equip/equipDiesetCultivateViewUI",
        },
        ["Φúàσñçµ¿íτ╗äτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "equip/equipDiesetViewUI" },
        ["Φúàσñçµ¿íτ╗äτòîΘ¥ó_µ¿íτ╗ä"] = {
            DelayTime = 0,
            UiComp = "BtnDieset",
            UiFile = "equip/equipDiesetViewUI",
        },
        ["ΦúàσñçτòîΘ¥ó_Σ╗ôσ║ô"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "equip/equipWarehouseViewUI",
        },
        ["ΦúàσñçτòîΘ¥ó_σòåΣ╝Ü"] = {
            DelayTime = 0,
            UiComp = "m_BtnShangHui",
            UiFile = "equip/equipViewUI",
        },
        ["ΦúàσñçτòîΘ¥ó_σó₧σ╣àΘí╡τ¡╛"] = {
            AbsPos = { 83, 280 },
            DelayTime = 0,
            HitArea = { 130, 60 },
            UiAdapter = 4,
        },
        ["ΦúàσñçτòîΘ¥ó_σ╝║σîûσñºσ╕ê"] = {
            DelayTime = 0,
            UiComp = "BtnMaster",
            UiFile = "equip/equipViewUI",
        },
        ["ΦúàσñçτòîΘ¥ó_σ╝║σîûΘí╡τ¡╛"] = {
            AbsPos = { 90, 207 },
            DelayTime = 0,
            HitArea = { 146, 66 },
            UiAdapter = 4,
        },
        ["ΦúàσñçτòîΘ¥ó_µö╣Θ\128áΘí╡τ¡\190"] = {
            AbsPos = { 83, 352 },
            DelayTime = 0,
            HitArea = { 130, 60 },
            UiAdapter = 4,
        },
        ["ΦúàσñçτòîΘ¥ó_ΦúàσñçΦ»ªµâà"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "equip/comps/equipInfoTipsItemUI",
        },
        ["ΦúàσñçΦ»ªµâà_τ⌐┐µê┤"] = {
            DelayTime = 0,
            HitArea = { 140, 42 },
            UiComp = "m_GuideNode",
            UiFile = "main/mainSceneUi",
        },
        ["ΦúàσñçΦ»ªµâà_τ⌐┐µê┤1"] = {
            AbsPos = { 902, 570 },
            DelayTime = 0,
            HitArea = { 138, 40 },
            UiAdapter = 5,
        },
        ["ΦºüΣ╣áτªÅσê⌐τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "seven/sevenActivityViewUI",
        },
        ["ΦºüΣ╣áτªÅσê⌐τòîΘ¥ó_σà│Θù¡"] = {
            DelayTime = 0,
            UiComp = "CloseBtn",
            UiFile = "seven/sevenActivityViewUI",
        },
        ["ΦºäΘü┐µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnSkip",
            UiFile = "areaEvent/areaEventMineEncounterFrameUI",
        },
        ["Φ«ñΦ»üτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "towersystem/towerSystemActiveViewUI" },
        ["Φ╡äµ║Éµ£¼_σÉÄσïñΣ┐¥σà╗"] = {
            AbsPos = { 165, 371 },
            DelayTime = 0,
            HitArea = { 268, 516 },
            UiAdapter = 5,
        },
        ["Φ╡äµ║Éµ£¼_σÉÄσïñΣ┐¥σà╗τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "resStage/resStageRewardFrameUI",
        },
        ["Φ╡äµ║Éµ£¼τòîΘ¥\162"] = { DelayTime = 0, IsUiView = true, UiFile = "resStage/resStageMainViewUI" },
        ["Φ╡₧σè⌐σƒ║Θçæ_ΘóåσÅûσÑûσè▒"] = {
            AbsPos = { 529, 197 },
            DelayTime = 0,
            HitArea = { 212, 58 },
            UiAdapter = 5,
        },
        ["Φ╢àΦâ╜σìÅσÉî_σÑûσè▒"] = {
            DelayTime = 0,
            UiComp = "OfflineRewardBtn",
            UiFile = "arena/ArenaQualifyingMainViewUI",
        },
        ["Φ╢àΦâ╜σìÅσÉî_σ╝\128σºïµêÿµû\151"] = {
            DelayTime = 0,
            UiComp = "BtnFight",
            UiFile = "arena/ArenaQualifyingFormationShowViewUI",
        },
        ["Φ╢àΦâ╜σìÅσÉîσ╝\128σºïµêÿµûùτòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "arena/ArenaQualifyingFormationShowViewUI",
        },
        ["Φ╢àΦâ╜σìÅσÉîµêÿτòîΘ¥\162"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "arena/ArenaQualifyingMainViewUI",
        },
        ["Φ╢àΦâ╜σìÅσÉîΦÄ╖σ╛ùσÑûσè▒τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "arena/ArenaQualifyingOfflineRewardUI",
        },
        ["Φ┐Äσç╗µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnFight",
            UiFile = "areaEvent/areaEventMineEncounterFrameUI",
        },
        ["Φ┐Äσç╗τòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "areaEvent/areaEventMineEncounterFrameUI",
        },
        ["ΘÇëµï⌐Φï▒Θ¢äτòîΘ¥ó"] = {
            DelayTime = 0,
            IsUiView = true,
            UiFile = "other/stageHeroLineupPanelUI",
        },
        ["ΘÇÜτö¿_Σ╕ïΘâ¿σêåτ⌐║τÖ╜σñä"] = {
            AbsPos = { 625, 581 },
            DelayTime = 0,
            HitArea = { 1187, 183 },
            UiAdapter = 5,
        },
        ["ΘÇÜτö¿σÑûσè▒σ╝╣τ¬ù"] = { DelayTime = 0, IsUiView = true, UiFile = "popup/popupCountFrameUI" },
        ["ΘÇÜτö¿µÅÉτñ║τòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "general/generalAlertUI" },
        ["ΘÇÜτö¿µÅÉτñ║τòîΘ¥ó2"] = { DelayTime = 0, IsUiView = true, UiFile = "general/generalAlertUI2" },
        ["ΘÇÜτö¿µÅÉτñ║τòîΘ¥ó4"] = { DelayTime = 0, IsUiView = true, UiFile = "general/generalAlertUI4" },
        ["ΘÇÜτö¿µÅÉτñ║τòîΘ¥ó_τí«σ«Ü"] = {
            DelayTime = 0,
            UiComp = "m_ConfirmBtn",
            UiFile = "general/generalAlertUI",
        },
        ["ΘÇÜτö¿µáçΘóÿτòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "general/generalTitleTopUI" },
        ["ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_helpµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnHelp",
            UiFile = "general/generalTitleTopUI",
        },
        ["ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_µáçΘóÿµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnTitle",
            UiFile = "general/generalTitleTopUI",
        },
        ["ΘÇÜτö¿µáçΘóÿτòîΘ¥ó_Φ┐öσ¢₧µîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "BtnBack",
            UiFile = "general/generalTitleTopUI",
        },
        ["ΘÇÜτö¿µáçΘóÿ∩╝┐Φï▒Θ¢ä∩╝┐Φ┐öσ¢₧Σ╕╗τòîΘ¥\162"] = {
            DelayTime = 0,
            UiComp = "BtnTitle",
            UiFile = "general/generalTitleTopUI",
        },
        ["ΘÇÜΦ«»σ╜òτ¼¼Σ╕\128Σ╕¬Σ╜ìτ╜\174"] = {
            AbsPos = { 461, 211 },
            DelayTime = 0,
            HitArea = { 84, 122 },
            NeedBlock = true,
            UiAdapter = 6,
        },
        ["ΘÇÜΦ«»σ╜òτ¼¼Σ║îΣ╕¬Σ╜ìτ╜«"] = {
            AbsPos = { 561, 211 },
            DelayTime = 0,
            HitArea = { 84, 122 },
            NeedBlock = true,
            UiAdapter = 6,
        },
        ["Θüôσà╖Φ»ªµâà"] = { IsUiView = true, UiFile = "item/itemTips" },
        ["Θüôσà╖Φ»ªµâà_ΦÄ╖σÅûΘÇöσ╛ä"] = { UiComp = "m_BtnGet", UiFile = "item/itemTips" },
        ["Θö╗τé╝σèáΘ\128ƒσî║σƒ\159"] = {
            AbsPos = { 741, 462 },
            DelayTime = 0,
            HitArea = { 1072, 514 },
            UiAdapter = 5,
        },
        ["Θö╗τé╝τòîΘ¥ó"] = { DelayTime = 0, IsUiView = true, UiFile = "card/cardExerciseViewUI" },
        ["Θö╗τé╝τòîΘ¥ó_σêçµìóµîëΘÆ«"] = {
            DelayTime = 0,
            UiComp = "Btn_Switch",
            UiFile = "card/cardExerciseViewUI",
        },
        ["Θö╗τé╝τòîΘ¥ó_Φ┐¢Θÿ╢µîëΘÆ«"] = {
            DelayTime = 0,
            NeedVisible = true,
            UiComp = "BtnRankUp",
            UiFile = "card/cardExerciseViewUI",
        },
        ["ΘóåσÅûσÑûσè▒_τ¼¼Σ╕ÇΣ╕\1701"] = {
            AbsPos = { 391, 433 },
            DelayTime = 0,
            HitArea = { 316, 74 },
            UiAdapter = 5,
        },
    },
}

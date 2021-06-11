-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
API = {function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_0
  local Args = {...}
  local EventKey = Args[1]
  local Time = tonumber(Args[2])
  local IsLoop = Args[3]
  TRIGGER:InitTriggerTimer(EventKey, Time, IsLoop)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_1
  local Args = {...}
  local Time = tonumber(Args[1])
  TRIGGER:InitDelTriggerTimer(Time)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_2
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  do
    local DieCount = tonumber(Args[3] or 0)
    assert(DieCount > 0)
    TRIGGER:InitMonsterEvent(EventKey, "MONSTER_DIE", MonsterId, DieCount)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_3
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local GroupId = tonumber(Args[2])
  do
    local DieCount = tonumber(Args[3])
    assert(DieCount > 0)
    TRIGGER:InitMonsterGroupEvent(EventKey, "MONSTER_DIE", GroupId, DieCount)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_4
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  local DieCount = tonumber(Args[3] or 0)
  do
    local NoWaitOtherEvent = Args[4]
    assert(DieCount > 0)
    TRIGGER:InitMonsterEvent(EventKey, "MONSTER_NOHP", MonsterId, DieCount, NoWaitOtherEvent)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_5
  local Args = {...}
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  local Per = tonumber(Args[3] or 0)
  do
    local OnlyOver = Args[4]
    assert(Per > 0)
    TRIGGER:CreateMonsterHPEvent(EventKey, "MONSTER_HP_CHANGE", MonsterId, Per, OnlyOver)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_6
  local Args = {...}
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  local Value = tonumber(Args[3] or 0)
  do
    local OnlyOver = Args[4]
    assert(Value > 0)
    TRIGGER:CreateMonsterHPValueEvent(EventKey, "MONSTER_HP_CHANGE", MonsterId, Value, OnlyOver)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_7
  local Args = {...}
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  do
    local Per = tonumber(Args[3] or 0)
    assert(Per > 0)
    TRIGGER:CreateMonsterAddHPEvent(EventKey, "MONSTER_HP_ADD_CHANGE", MonsterId, Per)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_8
  local Args = {...}
  local EventKey = Args[1]
  local EventName = Args[2]
  assert(EventName)
  TRIGGER:InitAssignEvent(EventKey, EventName, Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_9
  local Args = {...}
  local BlockEffId = tonumber(Args[1])
  if not BlockEffId then
    return 
  end
  TriggerFuncs:InitBlockEffect(TRIGGER, BlockEffId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_10
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  do
    local Count = tonumber(Args[3] or 0)
    assert(Count > 0)
    TRIGGER:InitMonsterEvent(EventKey, "ADD_MONSTER", MonsterId, Count)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_11
  local Args = {...}
  local EventKey = Args[1]
  local DramaName = Args[2]
  TRIGGER:InitDramaEvent(EventKey, "DRAMA_END", DramaName)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_12
  local Args = {...}
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  local Times = tonumber(Args[3])
  TRIGGER:InitMonsterFaintEvent(EventKey, (CONST.EVENT_CONST).MONSTER_FAINT, MonsterId, Times)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_13
  local Args = {...}
  if not objdata then
    return 
  end
  local AreaId = tonumber(Args[1])
  if not AreaId then
    return 
  end
  TriggerFuncs:AddMonsterByAreaId(TRIGGER, AreaId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_14
  local Args = {...}
  local X = tonumber(Args[1])
  local Y = tonumber(Args[2])
  if not Args[3] or not tonumber(Args[3]) then
    local Face = (math.FrameRandom)(0, 360)
  end
  if not X or not Y then
    return 
  end
  TriggerFuncs:SetObjPosition(TRIGGER, TARGETOBJ, X, Y, Face)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_15
  local Args = {...}
  if not objdata then
    return 
  end
  return TRIGGER:GetLastMonsterPos()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_16
  local Args = {...}
  local TriggerId = tonumber(Args[1])
  if not TriggerId then
    return 
  end
  TriggerFuncs:DynamicNewTrigger(TRIGGER, TriggerId, Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_17
  local Args = {...}
  local StrIds = Args[1]
  if not StrIds then
    return 
  end
  local Ids = (string.split)(StrIds, ",")
  TriggerFuncs:CreateMoreTrigger(TRIGGER, Ids, Args[2], Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_18
  local Args = {...}
  local StrIds = Args[1]
  local Delay = Args[2]
  if not StrIds then
    return 
  end
  local Ids = (string.split)(StrIds, ",")
  TriggerFuncs:FireOtherTrigger(TRIGGER, Ids, Delay)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_19
  local Args = {...}
  TriggerFuncs:OpenFuncSystemUi(TRIGGER, "StageView")
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_20
  local Args = {...}
  if not objdata then
    return 
  end
  TriggerFuncs:TriggerPlayDrama(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_21
  local Args = {...}
  local Block = Args[1]
  local Invert = Args[2]
  local NotShowFoceEffect = Args[3]
  TRIGGER:ChangeSceneBlock(Block, Invert, NotShowFoceEffect)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_22
  local Args = {...}
  TriggerFuncs:FinishStageEvent(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_23
  local Args = {...}
  TriggerFuncs:OpenFuncSystemUi(TRIGGER, "OnHookView")
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_24
  local Args = {...}
  TRIGGER:OnHookLotFinishi()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_25
  local Args = {...}
  local BuffId = tonumber(Args[1])
  TriggerFuncs:AddBuff(TRIGGER, TARGETOBJ, BuffId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_26
  local Args = {...}
  local BuffId = tonumber(Args[1])
  local MonsterId = tonumber(Args[2])
  TriggerFuncs:AddBuffByMonsterId(TRIGGER, BuffId, MonsterId, Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_27
  local Args = {...}
  local BuffId = tonumber(Args[1])
  TriggerFuncs:DelBuff(TRIGGER, TARGETOBJ, BuffId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_28
  local Args = {...}
  local AudioId = tonumber(Args[1])
  local AudioName = Args[2]
  local X = Args[3] or 0
  local Y = Args[4] or 0
  local Z = Args[5] or 0
  local BgmFadeTime = tonumber(Args[6])
  TriggerFuncs:PlayMusic(TRIGGER, AudioId, AudioName, X, Y, Z, BgmFadeTime)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_29
  local Args = {...}
  local AudioName = Args[1]
  TriggerFuncs:StopMusic(TRIGGER, AudioName)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_30
  local Args = {...}
  TriggerFuncs:TriggerPlayAudio(TRIGGER, tonumber(Args[1]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_31
  local Args = {...}
  local AudioId = tonumber(Args[1])
  local EventName = Args[2]
  local EventValue = tonumber(Args[3])
  TriggerFuncs:PlayTriggerBgMusic(AudioId, EventName, EventValue)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_32
  local Args = {...}
  TriggerFuncs:StopTriggerBgMusic()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_33
  local Args = {...}
  TriggerFuncs:PlayCurSceneBgMusic()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_34
  local Args = {...}
  local AudioId = tonumber(Args[1])
  local EventName = Args[2]
  local EventValue = tonumber(Args[3])
  ;
  (audio:Instance()):SetTriggerBgMusic(AudioId, EventName, EventValue)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_35
  local Args = {...}
  ;
  (audio:Instance()):ClearTriggerBgMusic()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_36
  local Args = {...}
  TriggerFuncs:OnMonsterEnter(TRIGGER, TARGETOBJ)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_37
  local Args = {...}
  TriggerFuncs:SendCount(TRIGGER, Args[1], Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_38
  local Args = {...}
  TriggerFuncs:SendAutoCount(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_39
  local Args = {...}
  local Distance = tonumber(Args[1])
  local Height = tonumber(Args[2])
  local Rota = tonumber(Args[3])
  local ChangeTime = tonumber(Args[4])
  TriggerFuncs:SetSceneCamera(TRIGGER, TARGETOBJ, Distance, Height, Rota, ChangeTime)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_40
  local Args = {...}
  do
    local ChangeTime = Args[4] and ((Args[4] ~= "" and tonumber(Args[4])))
    TriggerFuncs:SetLinearSceneCamera(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], ChangeTime, Args[5])
    -- DECOMPILER ERROR: 2 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_41
  local Args = {...}
  TriggerFuncs:SetForceCameraPer(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], Args[4])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_42
  local Args = {...}
  if not objdata then
    return 
  end
  local SrcId = tonumber(Args[1])
  TriggerFuncs:SendSwitchScene(TRIGGER, SrcId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_43
  local Args = {...}
  TriggerFuncs:SkillAddBuff(TRIGGER, Args[1], Args[2], Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_44
  local Args = {...}
  TriggerFuncs:SkillRemoveBuff(TRIGGER, Args[1], Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_45
  local Args = {...}
  TriggerFuncs:GetAOIRangeTargets(TRIGGER, Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_46
  local Args = {...}
  TriggerFuncs:AddObjAtr(TRIGGER, TARGETOBJ, Args[1], Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_47
  local Args = {...}
  return 
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_48
  local Args = {...}
  TriggerFuncs:CreateMonsterInRandomPos(TRIGGER, Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_49
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local GroupId = tonumber(assert(Args[2]))
  TRIGGER:InitMonsterGroup(EventKey, "MONSTER_DIE", GroupId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_50
  local Args = {...}
  TriggerFuncs:CreateMonsterByPos(TRIGGER, Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_51
  local Args = {...}
  if Args[1] then
    TriggerFuncs:CameraRoundToByState(TRIGGER, Args[1])
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_52
  local Args = {...}
  if TRIGGER.RefreshMonsterByOnline then
    local AreaIds = (string.split)(Args[3], "|")
    local Probs = (string.split)(Args[4], "|")
    TRIGGER:RefreshMonsterByOnline(Args[1], Args[2], AreaIds, Probs)
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_53
  local Args = {...}
  TRIGGER:OnShowResourcePoint(TARGETOBJ, tonumber(Args[1]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_54
  local Args = {...}
  if TRIGGER.KillMonsterById then
    TRIGGER:KillMonsterById(Args[1])
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_55
  local Args = {...}
  local TaskList = Args[1]
  TRIGGER:TriggerTask(TARGETOBJ, TaskList)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_56
  local Args = {...}
  local TaskList = Args[1]
  TRIGGER:CancelTriggerTask(TARGETOBJ, TaskList)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_57
  local Args = {...}
  local X = tonumber(Args[1])
  local Y = tonumber(Args[2])
  if not Args[3] or not tonumber(Args[3]) then
    local Face = (math.FrameRandom)(0, 360)
  end
  local TARGETOBJ = global.Hero
  if not X or not Y then
    return 
  end
  TriggerFuncs:SetObjPosition(TRIGGER, TARGETOBJ, X, Y, Face)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_58
  do
    local Args = {...}
    do return TRIGGER:GetState() == ((ALLSETTING.CONST_CFG).TRIGGER_STATE).STATE2 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_59
  local Args = {...}
  local DialogId = tonumber(Args[1])
  local Prior = tonumber(Args[2])
  TriggerFuncs:ShowSceneRoleDialog(TRIGGER, TARGETOBJ, DialogId, Prior)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_60
  local Args = {...}
  ;
  (objdata.UserMgr):DispatchEvent("EVT_CLEAR_ALL_ROLE_DIALOG", true)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_61
  local Args = {...}
  local SubtitlesId = tonumber(Args[1])
  TriggerFuncs:ShowSubtitles(TRIGGER, TARGETOBJ, SubtitlesId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_62
  local Args = {...}
  local FightType = tonumber(Args[1])
  TRIGGER:AreaEventFight(TARGETOBJ, FightType)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_63
  local Args = {...}
  local SupplyType = Args[1]
  local SupplyArgs = Args[2]
  TRIGGER:AreaEventSupply(TARGETOBJ, SupplyType, SupplyArgs)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_64
  local Args = {...}
  local MonsterAreaId = tonumber(Args[1])
  TriggerFuncs:AreaEventMineMonster(TRIGGER, TARGETOBJ, MonsterAreaId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_65
  local Args = {...}
  if not TriggerFuncs then
    return 
  end
  TriggerFuncs:TriggerAreaEvent(TRIGGER, TARGETOBJ)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_66
  local Args = {...}
  local ShowIds = tostring(Args[1])
  local HideIds = tostring(Args[2])
  TRIGGER:ChangeSceneVisibleGroup(ShowIds, HideIds, Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_67
  local Args = {...}
  local nFrame = tonumber(Args[3]) or 0
  TriggerFuncs:EnableColorgrading(TRIGGER, Args[1], Args[2], nFrame, Args[4])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_68
  local Args = {...}
  local Type = tonumber(Args[1]) or 0
  local MessageIds = (string.split)(Args[2] or "", ",")
  local StayTimeLit = (string.split)(Args[3] or "", ",")
  local Prior = tonumber(Args[4])
  local TitleId = tonumber(Args[5])
  ;
  (objdata.UserMgr):DispatchEvent(const.EVT_COMBAT_DMB_TIPS, Type, MessageIds, StayTimeLit, Prior, TitleId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_69
  local Args = {...}
  ;
  (objdata.UserMgr):DispatchEvent("EVT_CLEAR_ALL_DBM", true)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_70
  local Args = {...}
  local TaskId = Args[1]
  local State = Args[2]
  local DramaName = Args[3]
  TriggerFuncs:TriggerTaskDrama(TRIGGER, TARGETOBJ, TaskId, State, DramaName)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_71
  local Args = {...}
  TriggerFuncs:ClearLinearCameraState(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_72
  local Args = {...}
  TriggerFuncs:CancelForceCameraPer(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_73
  local Args = {...}
  local Time = tonumber(Args[1])
  local IsShowAction = true
  if Args[2] and Args[2] ~= "" then
    if Args[2] == "true" then
      IsShowAction = true
    else
      IsShowAction = false
    end
  end
  TriggerFuncs:AddStageTime(TRIGGER, Time, IsShowAction)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_74
  local Args = {...}
  local SceneId = tonumber(Args[1])
  local X = tonumber(Args[2])
  local Y = tonumber(Args[3])
  TRIGGER:GoBackPreviousScence(TARGETOBJ, SceneId, X, Y)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_75
  local Args = {...}
  return TriggerFuncs:IsBindCamera(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_76
  local Args = {...}
  if not objdata then
    return 
  end
  do
    local IsHide = tonumber(Args[1]) == 1
    TriggerFuncs:HideEffect(TRIGGER, TARGETOBJ, IsHide)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_77
  local Args = {...}
  local NpcId = tonumber(Args[1])
  local Face = tonumber(Args[2])
  local Animation = Args[3]
  TriggerFuncs:AddNpcForTrigger(TRIGGER, TARGETOBJ, NpcId, Face, Animation)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_78
  local Args = {...}
  local NpcId = tonumber(Args[1])
  TriggerFuncs:CleanNpcForTrigger(TRIGGER, TARGETOBJ, NpcId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_79
  local Args = {...}
  TriggerFuncs:ShowAreaAndStreet(TRIGGER, Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_80
  local Args = {...}
  if Args[1] then
    local ActionName = (string.split)(Args[1], "|")
  end
  local ExitType = Args[2]
  local AreaIds = (string.split)(Args[3], "|")
  local IdList = (string.split)(Args[4], "|")
  local StopFrame = Args[5]
  local IsCount = Args[6]
  local ExitToDieStatus = Args[7]
  TriggerFuncs:MonsterExitStage(TRIGGER, ActionName, ExitType, AreaIds, IdList, StopFrame, IsCount, ExitToDieStatus)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_81
  local Args = {...}
  if Args[1] then
    local ActionName = (string.split)(Args[1], "|")
  end
  local ExitType = Args[2]
  local AreaIds = nil
  local IdList = {TARGETOBJ:GetId()}
  local StopFrame = Args[3]
  local IsCount = Args[4]
  TriggerFuncs:MonsterExitStage(TRIGGER, ActionName, ExitType, AreaIds, IdList, StopFrame, IsCount)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_82
  local Args = {...}
  local TargetId = tonumber(Args[1])
  local TargetPathId = tonumber(Args[2])
  local PlayerPathId = tonumber(Args[3])
  local WinDistance = tonumber(Args[4])
  local FailDistance = tonumber(Args[5])
  local TargetSpeed = tonumber(Args[6])
  local PlayerSpeed = tonumber(Args[7])
  local FailDrama = Args[8]
  do
    local IsNotShowUI = tonumber(Args[9]) == 1
    TriggerFuncs:StartChase(TRIGGER, TargetId, TargetPathId, PlayerPathId, WinDistance, FailDistance, TargetSpeed, PlayerSpeed, FailDrama, IsNotShowUI)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_83
  local Args = {...}
  TriggerFuncs:EndChase(TRIGGER, Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_84
  local Args = {...}
  local Distance = tonumber(Args[1])
  local Height = tonumber(Args[2])
  local Angle = tonumber(Args[3])
  local Fov = tonumber(Args[4])
  local ChangeFrame = tonumber(Args[5])
  local TweenType = Args[6]
  local NeedCameraRotaion = tonumber(Args[7]) == 1
  local MaxRotationAngel = tonumber(Args[8])
  do
    local RotaionTweenType = Args[9]
    TriggerFuncs:SetChaseCamera(TRIGGER, TARGETOBJ, Distance, Height, Angle, Fov, ChangeFrame, TweenType, NeedCameraRotaion, MaxRotationAngel, RotaionTweenType)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_85
  local Args = {...}
  do
    local IsLoop = tonumber(Args[5]) == 1
    TriggerFuncs:ThrowBodyToTarget(TRIGGER, Args[1], Args[2], Args[3], Args[4], IsLoop)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_86
  local Args = {...}
  TriggerFuncs:SetNpcMove(TRIGGER, Args[1], Args[2], Args[3], Args[4], Args[5], Args[6])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_87
  local Args = {...}
  do
    local IsLoop = tonumber(Args[5]) == 1
    TriggerFuncs:SetNpcAnimations(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], Args[4], IsLoop)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_88
  local Args = {...}
  local Distance = tonumber(Args[1])
  local Height = tonumber(Args[2])
  local Angle = tonumber(Args[3])
  local Fov = tonumber(Args[4])
  local BindPlayer = tonumber(Args[5])
  local ChangeFrame = tonumber(Args[6])
  local IsForce = tonumber(Args[7])
  TriggerFuncs:SetSceneFixedCamera(TRIGGER, TARGETOBJ, Distance, Height, Angle, Fov, BindPlayer, ChangeFrame, IsForce)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_89
  local Args = {...}
  local ChangeFrame = tonumber(Args[1])
  local IsForce = tonumber(Args[2])
  TriggerFuncs:ClearSceneFixedCamera(TRIGGER, TARGETOBJ, ChangeFrame, IsForce)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_90
  local Args = {...}
  TRIGGER:UpdateShowInteractButton(Args[1], Args[2], Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_91
  local Args = {...}
  local Id = tonumber(Args[1])
  TriggerFuncs:SetTriggerObjId(TRIGGER, Id)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_92
  local Args = {...}
  TriggerFuncs:PlayFlash(TRIGGER, Args[1], Args[2], Args[3], Args[4], Args[5], Args[6])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_93
  local Args = {...}
  local RewardId = tonumber(Args[1])
  TRIGGER:AreaEventBoxReward(TARGETOBJ, RewardId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_94
  local Args = {...}
  local GuideId = tonumber(Args[1])
  local Type = tonumber(Args[2])
  TriggerFuncs:ShowSkillGuide(TRIGGER, GuideId, Type)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_95
  local Args = {...}
  TriggerFuncs:PlayAnimationToTime(TRIGGER, Args[1], Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_96
  local Args = {...}
  TriggerFuncs:PlayMoreNpcAnimation(TRIGGER, Args[1], Args[2], Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_97
  local Args = {...}
  local Hight = tonumber(Args[1] or "0")
  local DownSpeed = tonumber(Args[2] or "0")
  TriggerFuncs:LimitObjHight(TRIGGER, Hight, DownSpeed)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_98
  local Args = {...}
  local TipsId = tonumber(Args[1])
  local Time = tonumber(Args[2])
  TriggerFuncs:ShowBannerTips(TRIGGER, TipsId, Time)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_99
  local Args = {...}
  TriggerFuncs:ShowMoreBannerTips(Args[1], Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_100
  local Args = {...}
  local EventKey = Args[1]
  local RescueValue = tonumber(Args[2])
  TRIGGER:InitCalamityEvent(EventKey, (CONST.EVENT_CONST).CALAMITY_RESCUE_UPDATE, RescueValue)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_101
  local Args = {...}
  local AddValue = tonumber(Args[1])
  TriggerFuncs:AddCalamityRescueValue(AddValue)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_102
  local Args = {...}
  local NpcId = tonumber(Args[1])
  local StartParams = Args[2]
  local BTName = Args[3]
  local BTParam = Args[4]
  local ForceShow = Args[5]
  local Face = Args[6]
  local BubbleTemple = Args[7]
  local PriorityCreate = tonumber(Args[8])
  local SupAreaId = tonumber(Args[9])
  local StartParams = (string.split)(StartParams or "", ",")
  local StarAnim = StartParams[1]
  local Scale = tonumber(StartParams[2] or "")
  local IsHide = Args[10]
  local ActionRandom = Args[11]
  local Alias = Args[12]
  TriggerFuncs:CreateClientNpc(TRIGGER, NpcId, StarAnim, BTName, BTParam, ForceShow, Face, BubbleTemple, PriorityCreate, SupAreaId, Scale, IsHide, ActionRandom, Alias)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_103
  local Args = {...}
  TriggerFuncs:DelectClientNpc(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_104
  local Args = {...}
  TriggerFuncs:IsShowMachineComp(TRIGGER, Args[1], Args[2], TARGETOBJ, Args[3], Args[4], Args[5])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_105
  local Args = {...}
  local SkillId = tonumber(Args[1])
  local X = tonumber(Args[2])
  local Y = tonumber(Args[3])
  local Z = tonumber(Args[4])
  local Face = tonumber(Args[5])
  TriggerFuncs:StartUavStagePlay(TRIGGER, TARGETOBJ, SkillId, X, Y, Z, Face)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_106
  local Args = {...}
  local MonsterId = Args[1]
  local Time = Args[2]
  TriggerFuncs:CreateUavTarget(TRIGGER, MonsterId, Time)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_107
  local Args = {...}
  TriggerFuncs:IsShowStartUavTagQte(TRIGGER, Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_108
  local Args = {...}
  local Count = Args[1]
  TriggerFuncs:SuccessUavMarkTag(TRIGGER, Count)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_109
  local Args = {...}
  local ScoreType = Args[1]
  local ScoreGrade = tonumber(Args[2])
  TriggerFuncs:AddStageScore(TRIGGER, TARGETOBJ, ScoreType, ScoreGrade)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_110
  local Args = {...}
  local ShapeId = tonumber(Args[1])
  TriggerFuncs:CreateTriggerModel(TRIGGER, TARGETOBJ, ShapeId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_111
  local Args = {...}
  local AreaIds = (string.split)(Args[1] or "", ",")
  TriggerFuncs:StopMonsterBall(TRIGGER, AreaIds)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_112
  local Args = {...}
  local MonsterIdList = (string.split)(Args[1] or "", ",")
  local Time = (string.split)(Args[2] or "", ",")
  TriggerFuncs:CreateRandomMonster(TRIGGER, TARGETOBJ, MonsterIdList, Time)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_113
  local Args = {...}
  TriggerFuncs:StartActiveMonster(TRIGGER, TARGETOBJ)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_114
  local Args = {...}
  TriggerFuncs:StopActiveMonster(TRIGGER, TARGETOBJ)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_115
  local Args = {...}
  TRIGGER:CreateBusStation(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_116
  local Args = {...}
  TRIGGER:CreatePortalView(Args[1], Args[2], Args[3], Args[4])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_117
  local Args = {...}
  TRIGGER:DestroyPortalView()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_118
  local Args = {...}
  TRIGGER:ShowEnterSceneView(Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_119
  local Args = {...}
  ;
  ((stage.InstMgr)()):SetRoomCount(tonumber(Args[1]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_120
  local Args = {...}
  TriggerFuncs:RevertModelShow(TRIGGER, TARGETOBJ, tonumber(Args[1]), Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_121
  local Args = {...}
  ;
  ((stage.InstMgr)()):CleanMonsters()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_122
  local Args = {...}
  if not TRIGGER.ClickBtnToEvent then
    return 
  end
  local ActionList = (string.split)(Args[9] or "", ",")
  TRIGGER:ClickBtnToEvent(TARGETOBJ, Args[1], Args[2], tonumber(Args[3]), tonumber(Args[4]), tonumber(Args[5]), Args[6], tonumber(Args[7]), tonumber(Args[8]), ActionList, tonumber(Args[10]), tostring(Args[11]), Args[12], Args[13])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_123
  local Args = {...}
  TriggerFuncs:TargetForceSkill(TRIGGER, TARGETOBJ, tonumber(Args[1]), tonumber(Args[2]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_124
  local Args = {...}
  local WeightList = (string.split)(Args[1] or "", "|")
  local TriggerAreaList = (string.split)(Args[2] or "", "|")
  for k,v in pairs(WeightList) do
    WeightList[k] = tonumber(v)
  end
  local ResultIndex = (math.GetWeightResult)(WeightList)
  if TriggerAreaList[ResultIndex] then
    local AreaId = tonumber(TriggerAreaList[ResultIndex])
  end
  if AreaId then
    TriggerFuncs:DynamicNewTrigger(TRIGGER, AreaId)
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_125
  local Args = {...}
  local BgmFadeDisScale = tonumber(Args[1])
  local BgmFadeMinVolume = tonumber(Args[2])
  local BgmFadeTime = tonumber(Args[3])
  TRIGGER:SetBgmVolumeFadeWithDis(BgmFadeDisScale, BgmFadeMinVolume, BgmFadeTime)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_126
  local Args = {...}
  TRIGGER:ResetBgmVolumeFadeWithDis()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_127
  local Args = {...}
  local MonsterId = tonumber(Args[1])
  if not MonsterId then
    return 
  end
  TriggerFuncs:CreateFollowMonster(TRIGGER, MonsterId, Args[2], Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_128
  local Args = {...}
  TriggerFuncs:AddEnterUid(TRIGGER, TARGETOBJ)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_129
  local Args = {...}
  TriggerFuncs:RefuseEnterUid(TRIGGER, TARGETOBJ)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_130
  local Args = {...}
  return TriggerFuncs:GetEnterNum(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_131
  local Args = {...}
  TriggerFuncs:TransAllPlayerToPos(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_132
  local Args = {...}
  do
    local IsLoop = Args[2] == "true" or Args[2] == true
    TRIGGER:PlayEffect({Id = Args[1], Loop = IsLoop, 
Rot = {0, (math.rad)(TRIGGER:GetFace()), 0}
})
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_133
  local Args = {...}
  TRIGGER:RemoveEffect(Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_134
  local Args = {...}
  if TRIGGER.DelayTimeOnEvent then
    TRIGGER:DelayTimeOnEvent(tonumber(Args[1]))
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_135
  local Args = {...}
  local AreaIdList = (string.split)(Args[1] or "", ",")
  local TriggerAreaId = Args[2]
  if TRIGGER.FireSatisfyTrigger then
    TRIGGER:FireSatisfyTrigger(TARGETOBJ, AreaIdList, tonumber(TriggerAreaId))
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_136
  local Args = {...}
  local AreaIdList = (string.split)(Args[1] or "", ",")
  TriggerFuncs:DeleteTriggerListID(TRIGGER, AreaIdList)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_137
  local Args = {...}
  local MaxCount = tonumber(Args[1]) or 1
  return TRIGGER:StatHeroTouchEventTime(TARGETOBJ, MaxCount)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_138
  local Args = {...}
  if TRIGGER.SetGroupId then
    TRIGGER:SetGroupId(tonumber(Args[1]))
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_139
  local Args = {...}
  do
    local IsOpen = Args[1] == "true" or Args[1] == true
    TriggerFuncs:OnDoShakeCamera(TRIGGER, TARGETOBJ, IsOpen, tonumber(Args[2]), tonumber(Args[3]), tonumber(Args[4]), tonumber(Args[5]), tonumber(Args[6]), tonumber(Args[7]))
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_140
  local Args = {...}
  local HostageRescureValue = tonumber(Args[1])
  TRIGGER:InitSuccessRescuerHostage(HostageRescureValue)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_141
  local Args = {...}
  local AddValue = tonumber(Args[1])
  local FlashId = tonumber(Args[2])
  local HostageId = tonumber(Args[3])
  TRIGGER:AddHostageRescueNum(AddValue, FlashId, HostageId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_142
  local Args = {...}
  local TipId = tonumber(Args[1])
  local Time = tonumber(Args[2])
  TriggerFuncs:CombatBroadCast(TRIGGER, TipId, Time)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_143
  local Args = {...}
  local AreaId = tonumber(Args[1])
  return (sceneobj.TriggerGroupMgr):GetTriggerEventCount(AreaId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_144
  local Args = {...}
  do
    local AreaId = tonumber(Args[1])
    do return (sceneobj.TriggerGroupMgr):GetTriggerEventCount(AreaId) > 0 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_145
  local Args = {...}
  local EventKey = Args[1]
  local IsNotTri = Args[2]
  TRIGGER:InitScanEvent(EventKey, "ScanEvent", IsNotTri)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_146
  local Args = {...}
  local TargetId = tonumber(Args[1])
  TriggerFuncs:BindAttend(TRIGGER, TargetId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_147
  local Args = {...}
  TRIGGER:SetFillEffectAssignHeight(tonumber(Args[1]), Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_148
  local Args = {...}
  drama:PlayDrama(Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_149
  local Args = {...}
  TRIGGER:SetEventEffect(Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_150
  local Args = {...}
  TRIGGER:EnableEffectTransparent(Args[1], tonumber(Args[2]) or 0.2)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_151
  local Args = {...}
  local BuffIds = (string.split)(Args[1], ",")
  local IsBuff = false
  local Obj = Args[2] or TARGETOBJ
  for k,v in ipairs(BuffIds) do
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(nil, nil, nil, nil, Obj, tonumber(v)) == true then
      IsBuff = true
    end
  end
  do
    if BuffIds[(table.getn)(BuffIds)] == "false" or Args[1] == "" then
      return not IsBuff
    else
      return IsBuff
    end
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_152
  local Args = {...}
  local BuffId = (string.split)(Args[1], ",")
  for k,v in ipairs(BuffId) do
    TriggerFuncs:AddBuff(TRIGGER, global.Hero, tonumber(v))
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_153
  local Args = {...}
  local BuffId = (string.split)(Args[1], ",")
  for k,v in ipairs(BuffId) do
    TriggerFuncs:DelBuff(TRIGGER, global.Hero, tonumber(v))
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_154
  local Args = {...}
  TriggerFuncs:CreateCollectObj(TRIGGER, tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_155
  local Args = {...}
  TriggerFuncs:ClearCollectObj(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_156
  local Args = {...}
  TRIGGER:SetVisible(Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_157
  local Args = {...}
  TriggerFuncs:SaveDemoPosition(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_158
  local Args = {...}
  return TriggerFuncs:IsHeroDead()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_159
  local Args = {...}
  TriggerFuncs:SetHeroNoHurt()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_160
  local Args = {...}
  TriggerFuncs:ReSetHeroNoHurt()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_161
  local Args = {...}
  return TRIGGER:IsScanned()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_162
  local Args = {...}
  local FindPos = nil
  if Args[6] and Args[6] ~= "" then
    FindPos = (string.split)(Args[6], ",")
    FindPos[1] = tonumber(FindPos[1])
    FindPos[2] = tonumber(FindPos[2])
    FindPos[3] = tonumber(FindPos[3])
  end
  TriggerFuncs:CreateFollow2DButton(TRIGGER, tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]), Args[4], tonumber(Args[5]), FindPos, Args[7])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_163
  local Args = {...}
  TriggerFuncs:ClearFollow2DButton(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_164
  local Args = {...}
  TriggerFuncs:CreateQte(TRIGGER, tonumber(Args[1]), Args[2], Args[3], Args[4], Args[5], tonumber(Args[6]), Args[7])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_165
  local Args = {...}
  TriggerFuncs:RecordInteraction(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_166
  local Args = {...}
  return TriggerFuncs:CheckInteraction(TRIGGER, tonumber(Args[1]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_167
  local Args = {...}
  local MonsterPos = (string.split)(Args[3], ",")
  local MonsterId = tonumber(Args[1])
  local MonsterFace = tonumber(Args[2])
  local GetX = tonumber(MonsterPos[1])
  local GetY = tonumber(MonsterPos[2])
  drama:CreateMonster(MonsterId, GetX, GetY, MonsterFace, nil, "idle", Callback)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_168
  local Args = {...}
  return TriggerFuncs:GetFollowObj(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_169
  local Args = {...}
  return TRIGGER:GetAreaId()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_170
  local Args = {...}
  local AreaId = TRIGGER:GetAreaId()
  local Counter = (sceneobj.TriggerGroupMgr):GetTriggerEventCount(AreaId) + 1
  local VarList = (string.split)(Args[1], ",")
  if Counter <= (table.getn)(VarList) then
    return VarList[Counter]
  else
    return VarList[#VarList]
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_171
  local Args = {...}
  TriggerFuncs:ShowSleepinessUI(TRIGGER, tonumber(Args[1]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_172
  local Args = {...}
  TriggerFuncs:HideSleepinessUI(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_173
  local Args = {...}
  return TriggerFuncs:GetCurHourTime()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_174
  local Args = {...}
  TriggerFuncs:CreateSillyPuttyObj(TRIGGER, tonumber(Args[1]), tonumber(Args[2]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_175
  local Args = {...}
  TriggerFuncs:ClearSillyPuttyObj(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_176
  local Args = {...}
  TriggerFuncs:ByTimeCreateTrigger(TRIGGER, Args[1], Args[2])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_177
  local Args = {...}
  local X = tonumber(Args[1])
  local Y = tonumber(Args[2])
  local BtnWidth = tonumber(Args[3])
  local BtnHeight = tonumber(Args[4])
  local SkillId = tonumber(Args[5])
  local CDTime = tonumber(Args[6])
  local HandleType = tonumber(Args[7])
  TriggerFuncs:CreateExtendSkillBtn(TRIGGER, TARGETOBJ, X, Y, BtnWidth, BtnHeight, SkillId, CDTime, HandleType)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_178
  local Args = {...}
  local Text = Args[1]
  TriggerFuncs:SetEnterAlertText(Text)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_179
  local Args = {...}
  TriggerFuncs:WaitFighterStatus(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_180
  local Args = {...}
  local TaskId = tonumber(Args[1])
  if TaskId then
    local TaskCfg = (ALLSETTING.TASK_CFG)[TaskId]
    if TaskCfg and TaskCfg.TagRestrict and (utils.TaskUtil):ShowTagRestrictAlert(TaskCfg.TagRestrict) then
      return true
    end
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_181
  local Args = {...}
  local Time = tonumber(Args[1])
  local MsgId = tonumber(Args[2])
  local IsStopInDrama = tonumber(Args[3]) == 1
  do
    local FailTriggerAredIds = (string.split)(Args[4] or "", ",")
    TriggerFuncs:ShowTriggerCountTime(TRIGGER, Time, MsgId, IsStopInDrama, FailTriggerAredIds)
    -- DECOMPILER ERROR: 2 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_182
  local Args = {...}
  local Reason = Args[1]
  TriggerFuncs:StopTriggerCountTime(TRIGGER, Reason)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_183
  local Args = {...}
  local NpcId = Args[1]
  local IsEnter = Args[2]
  ;
  (task.NpcTalkMgr):NpcAction(NpcId, IsEnter)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_184
  local Args = {...}
  if not objdata then
    return 
  end
  local TaskID = tonumber(Args[1])
  local ExploringID = tonumber(Args[2])
  local DaramName = Args[3]
  TriggerFuncs:ExploringEnter(TaskID, ExploringID, DaramName)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_185
  local Args = {...}
  local IsShow = Args[1]
  TriggerFuncs:ShowMiniMap(TRIGGER, IsShow)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_186
  local Args = {...}
  local IconName = Args[1]
  TriggerFuncs:ShowMapTag(TRIGGER, IconName)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_187
  local Args = {...}
  TriggerFuncs:HideMapTag(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_188
  local Args = {...}
  if not objdata then
    return 
  end
  local TaskID = tonumber(Args[1])
  local DaramName = Args[2]
  TriggerFuncs:TowerActiveTask(TaskID, DaramName)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_189
  local Args = {...}
  local IsOpen = Args[1] == "true" and true or false
  local Time = tonumber(Args[2])
  local Width = tonumber(Args[3])
  local Height = tonumber(Args[4])
  TriggerFuncs:CreateBlockPanel(IsOpen, Time, Width, Height)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_190
  local Args = {...}
  TriggerFuncs:ShowPVPGuideDrama()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_191
  local Args = {...}
  do
    local IsOpen = tonumber(Args[1]) == 1
    TriggerFuncs:CalamityIntervalDown(TRIGGER, TARGETOBJ, IsOpen, tonumber(Args[2]), tonumber(Args[3]))
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_192
  local Args = {...}
  do
    local IsOpen = tonumber(Args[1]) == 1
    TriggerFuncs:CalamityIntervalUp(TRIGGER, TARGETOBJ, IsOpen, tonumber(Args[2]), tonumber(Args[3]), tonumber(Args[4]))
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_193
  local Args = {...}
  do
    local IsShow = tonumber(Args[1]) == 1
    TriggerFuncs:CalamityUIShow(IsShow)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_194
  local Args = {...}
  local HeroId = tonumber(Args[1])
  return TriggerFuncs:IsSameMerId(TRIGGER, TARGETOBJ, HeroId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_195
  local Args = {...}
  do
    local Action = (string.split)(Args[2] or "", "|")
    TriggerFuncs:RangeNpcPlayAnimationAndRemove(TRIGGER, tonumber(Args[1]), Action, tonumber(Args[3]) == 1, tonumber(Args[4]))
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_196
  local Args = {...}
  ;
  (campaign.CampaignDataMgr):DispatchEvent((campaign.Event).TRIGGER_ON, TRIGGER:GetUid(), TRIGGER:GetAreaId())
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_197
  local Args = {...}
  if Args[1] == 1 then
    (campaign.CampaignDataMgr):DispatchEvent((campaign.Event).TRIGGER_ENTER, TRIGGER:GetUid(), TRIGGER:GetAreaId(), TRIGGER)
  else
    ;
    (campaign.CampaignDataMgr):DispatchEvent((campaign.Event).TRIGGER_LEAVE, TRIGGER:GetUid(), TRIGGER:GetAreaId(), TRIGGER)
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_198
  local Args = {...}
  return TriggerFuncs:GetAllPlayerNum()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_199
  local Args = {...}
  TRIGGER:SetStandEffectId(tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_200
  local Args = {...}
  return (loginPush.LoginPushMgr):IsHaveLoginShowView()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_201
  local Args = {...}
  TriggerFuncs:TriggerJumpOff(TRIGGER, tonumber(Args[1]), Args[2], tonumber(Args[3]), tonumber(Args[4]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_202
  local Args = {...}
  local TaskId = tonumber(Args[1])
  if TaskId then
    return (task.TaskMgr):GetTaskDataById(TaskId)
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_203
  local Args = {...}
  local IsOpen = Args[1]
  local PerAddEnergy = Args[2]
  local PerCutEnergy = Args[3]
  local Count = Args[4]
  local BuffList = Args[5]
  local HoldFrame = Args[6]
  TriggerFuncs:CreateParkourGameUI(TARGETOBJ, IsOpen, PerAddEnergy, PerCutEnergy, Count, BuffList, HoldFrame)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_204
  local Args = {...}
  local SrcPosX = tonumber(Args[1])
  local SrcPosY = tonumber(Args[2])
  local SrcPosZ = tonumber(Args[3])
  local TargetPosX = tonumber(Args[4])
  local TargetPosY = tonumber(Args[5])
  local TargetPosZ = tonumber(Args[6])
  cameraMgr:LookAt({SrcPosX, SrcPosY, SrcPosZ}, {TargetPosX, TargetPosY, TargetPosZ})
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_205
  local Args = {...}
  local Param = Args[1]
  TriggerFuncs:RemoveNpcArea(Param)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_206
  local Args = {...}
  local Param = Args[1]
  TriggerFuncs:ResetNpcArea(Param)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_207
  local Args = {...}
  local AreaId = tonumber(Args[1])
  local PosAreaId = tonumber(Args[2])
  ;
  (group.GroupUtils):GotoArea(AreaId, PosAreaId)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_208
  local Args = {...}
  TRIGGER:CreateGroupPortalCountDownView(Args[1], Args[2], Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_209
  local Args = {...}
  TRIGGER:DestroyGroupPortalCountDownView()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_210
  local Args = {...}
  TriggerFuncs:WaitActionCameraStatus(TRIGGER, TARGETOBJ, Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_211
  local Args = {...}
  do
    local IsOpen = Args[1] == "true"
    drama:EnableAi(IsOpen)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_212
  local Args = {...}
  local IsLoop = Args[1] == "true"
  local IsKeepStatus = Args[5] == "true"
  do
    local IsStopInEnd = Args[7] == "true"
    drama:EntityPlayAnimation(Args[1], Args[2], IsLoop, Args[4], IsKeepStatus, tonumber(Args[6]), IsStopInEnd)
    -- DECOMPILER ERROR: 3 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_213
  local Args = {...}
  TriggerFuncs:SetAllPlayPos(TRIGGER, TARGETOBJ, tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_214
  local Args = {...}
  TriggerFuncs:SetWaitFighterStatusEvent(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_215
  local Args = {...}
  TriggerFuncs:TriggerAllAOILeave(TRIGGER)
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_216
  local Args = {...}
  TRIGGER:CreateTriggerUIComp(Args[1])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_217
  local Args = {...}
  TRIGGER:DestroyTriggerUIComp()
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_218
  local Args = {...}
  TriggerFuncs:TriggerSitDown(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], Args[4])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_219
  local Args = {...}
  if TARGETOBJ and TARGETOBJ.GetCanSit then
    return TARGETOBJ:GetCanSit()
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_220
  local Args = {...}
  TriggerFuncs:PlayEffectByTriggerPos(TRIGGER, tonumber(Args[1]), tonumber(Args[2]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_221
  local Args = {...}
  TriggerFuncs:TriggerLeaguePvpSafeArea(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_222
  local Args = {...}
  TriggerFuncs:TriggerOwnerCallMissile(TRIGGER, tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]), Args[4])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_223
  local Args = {...}
  do
    local NeedOwner = Args[2] == true or Args[2] == "true"
    TriggerFuncs:AddAoiObjBuff(TRIGGER, tonumber(Args[1]), NeedOwner)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_224
  local Args = {...}
  TriggerFuncs:DelAoiObjBuff(TRIGGER, tonumber(Args[1]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_225
  local Args = {...}
  TRIGGER:FindThunderNPCItemFullEvent(Args[1], "FindThunderNPCFullEvent", tonumber(Args[2]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_226
  local Args = {...}
  TriggerFuncs:CreateFindThunderPro(TRIGGER, Args[1], Args[2], tonumber(Args[3]), Args[4], Args[5])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_227
  local Args = {...}
  TriggerFuncs:CreateFindThunderNPCItem(TRIGGER, Args[1], tonumber(Args[2]), tonumber(Args[3]), tonumber(Args[4]), tonumber(Args[5]), Args[6], Args[7])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_228
  local Args = {...}
  TriggerFuncs:AddFindThunderNPCItemPro(TRIGGER, Args[1], tonumber(Args[2]))
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_229
  local Args = {...}
  TRIGGER:CreateTrigger2DUIComp(Args[1], Args[2], Args[3], Args[4])
end
, function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_230
  local Args = {...}
  TRIGGER:DestroyTrigger2DUIComp()
end
}
, 
TriggerCfg = {
[1000] = {AOIRadius = 10, EditSort = 11001, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 1000, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_231
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_232
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[7])
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1001] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_233
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 11002, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 1001, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉσ╗╢µù╢π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_234
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[5])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_235
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4], ARG[8])
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1002] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_236
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[135])(API, TRIGGER, TARGETOBJ, 0.7)
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 11003, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 1002, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉµ\128¬ΦíÇΘç\1430πÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_237
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[6])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_238
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[9])
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[7], ARG[8])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1003] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_239
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99997, 
EventTips = {"τ╗äId", "µ¡╗Σ║íΣ╕¬µò░", "Σ╜ìτ╜«X", "Σ╜ìτ╜«Y", "Θ¥óσÉæΦºÆσ║ªσÇ\188"}
, Id = 1003, Name = "µÇ¬τë⌐τ╗äµ¡╗Σ║íτ₧¼τº\187", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_240
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[15])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1004] = {AOIRadius = 10, EditSort = 99997, 
EventTips = {"σ¥ÉµáçX", "σ¥ÉµáçY", "Θ¥óσÉæΦºÆσ║ªσÇ\188"}
, Id = 1004, MaxCount = -1, Name = "Σ╜ìτº╗", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_241
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[15])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true, 
StandEffect = {10000203, 10000203, 10000203}
}
, 
[1005] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_242
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99997, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºªσÅæσÖ¿Id"}
, Id = 1005, MaxCount = 1, Name = "µÇ¬τë⌐µ¡╗Σ║íσê¢σ╗║ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_243
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[17])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1006] = {AOIRadius = 10, EditSort = 99997, 
EventTips = {"ΦºªσÅæσÖ¿ID(σÅ»σñÜΣ╕\170\"", "\"ΘÜöσ╝Ç)"}
, Id = 1006, Name = "πÇÉAOIπÇæσê¢σ╗║σñÜΣ╕¬ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_244
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true}
, 
[1007] = {AOIRadius = 10, EditSort = 99999, Id = 1007, MaxCount = -1, Name = "µëôσ╝Çσà│σìíΣ╕╗τòîΘ¥\162", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_245
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[20])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, Stop = 1}
, 
[1008] = {AOIRadius = 10, EditSort = 99007, Id = 1008, MaxCount = 1, Name = "σëºµâàΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_246
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true}
, 
[1009] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_247
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
  ;
  (API[215])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99009, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 1009, MaxCount = 1, Name = "σëºµâàΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘç\1430πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_248
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1010] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"σê╖µ\128¬σî║σƒƒId"}
, Id = 1010, MaxCount = 5, Name = "µö╛τïùΦºªσÅæσÖ\168-µ╡üµ▓Ö", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_249
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandEffect = {1525}
, 
TriggerEffect = {1525}
}
, 
[1011] = {AOIRadius = 10, EditSort = 14020, 
EventTips = {"buffId"}
, Id = 1011, Name = "BUFFΦºªσÅæσÖ¿π\128ÉAOIτª╗σ╝Çσêáπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_250
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_251
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[28])(API, TRIGGER, TARGETOBJ, ARG[1])
end
}
, 
[1012] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_252
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99997, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºªσÅæσÖ¿ID(σÅ»σñÜΣ╕\170\"", "\"ΘÜöσ╝Ç)"}
, Id = 1012, MaxCount = 1, Name = "µÇ¬τë⌐µ¡╗Σ║íσê¢σ╗║σñÜΣ╕¬ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_253
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1013] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_254
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], true)
end
, EditSort = 99999, 
EventTips = {"σê╖µû░µù╢Θù┤(τº\146)", "Σ╕ïΘÖÉµ»öΣ╛ï", "Σ╕èΘÖÉµ»öΣ╛ï", "σê¥σºïσê╖µû░(1)", "σê╖µ\128¬τÉâID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "σ»╣σ║öµªéτÄç(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)"}
, Id = 1013, MaxCount = -1, Name = "µîëΣ║║µò░ΦíÑµÇ¬ΦºªσÅæσÖ¿", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_255
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  if ARG[4] == "1" then
    (API[53])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[5], ARG[6])
  end
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_256
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[53])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1014] = {AOIRadius = 10, EditSort = 99014, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Θƒ│µòêID"}
, Id = 1014, MaxCount = 1, Name = "µö╛τïùΦºªσÅæσÖ\168(µ¢┐µìóBGM)", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_257
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_258
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1015] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_259
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99015, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Θƒ│µòêID"}
, Id = 1015, MaxCount = 1, Name = "µÇ¬τë⌐µ¡╗Σ║íµö╛τïù(µ¢┐µìóBGM)", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_260
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[6])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_261
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[5])
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1016] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µ¥\128µ¡╗µîçσ«Üµ\128¬τë⌐"}
, Id = 1016, MaxCount = 1, Name = "µ¥\128µ¡╗µîçσ«Üµ\128¬τë⌐", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_262
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_263
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[55])(API, TRIGGER, TARGETOBJ, ARG[5])
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1017] = {AOIRadius = 10, EditSort = 99079, 
EventTips = {"µÿ╛τñ║σêåτ╗äId", "ΘÜÉΦùÅσêåτ╗äId", "µÿ»σÉªΘçìτ╜«"}
, Id = 1017, Name = "σ£║µÖ»σêåτ╗äµÿ╛τñ║", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_264
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[67])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[1018] = {AOIRadius = 10, EditSort = 99080, 
EventTips = {"µ╗ñΘò£σ╝\128σà\179", "µ╗ñΘò£Φ╡äµ║ÉσÉ\1411", "µ╕ÉσÅÿµù╢Θù┤(σ╕\167)", "µ╗ñΘò£Φ╡äµ║ÉσÉ\1412"}
, Id = 1018, Name = "Φ«╛τ╜«σ£║µÖ»µ╗ñΘò£", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_265
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[68])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[1019] = {EditSort = 15021, Id = 1019, MaxCount = 1, Name = "τ«¡σñ┤ΦºªσÅæσÖ¿π\128ÉΦ╕⌐Σ╕ïΣ╕ìµ╢êσñ▒πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_266
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {1020}
}
, 
[1020] = {AOIRadius = 10, EditSort = 15022, Id = 1020, MaxCount = 1, Name = "τ«¡σñ┤ΦºªσÅæσÖ¿π\128ÉΦ╕⌐Σ╕ïµ╢êσñ▒π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_267
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {1020}
}
, 
[1021] = {AOIRadius = 10, EditSort = 18007, 
EventTips = {"τ¢«µáçId", "τ¢«µáçΦ╖»τ║┐Id", "τÄ⌐σ«╢Φ╖»τ║┐Id", "µêÉσèƒΦ╖¥τª╗", "σñ▒Φ┤ÑΦ╖¥τª╗", "τ¢«µáçΘÇƒσ║ª", "τÄ⌐σ«╢ΘÇƒσ║ª", "σñ▒Φ┤Ñσëºµâà", "Σ╕ìµÿ╛τñ║Φ╖¥τª\187"}
, Id = 1021, MaxCount = 1, Name = "Φ┐╜Θ\128Éµêÿσ╝\128σºïΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_268
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[83])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7], ARG[8], ARG[9])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true}
, 
[1022] = {AOIRadius = 10, EditSort = 18008, 
EventTips = {"µë\128σ▒₧Φ╖»τ║┐Id", "Φ╖»τé╣Id", "Φ╖»τé╣σ«╜σ║ª"}
, Id = 1022, Name = "Φ┐╜Θ\128ÉµêÿΦ╖»τé╣", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_269
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3}
, 
[1023] = {AOIRadius = 10, EditSort = 18009, 
EventTips = {"µèòµÄ╖ΦÇàId", "µèòµÄ╖τë⌐Id", "µèòµÄ╖ΦÇàσè¿Σ╜\156", "µèòµÄ╖τë⌐σè¿Σ╜\156", "µèòµÄ╖τë⌐µ£ÇσÉÄΣ╕ÇΣ╕¬σè¿Σ╜£σ╛¬τÄ\175"}
, Id = 1023, Name = "µèòµÄ╖τë⌐Σ╜ôΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_270
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[86])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true}
, 
[1024] = {AOIRadius = 10, EditSort = 18010, 
EventTips = {"ΘÇâΦ╖æΦÇàId", "Φ╖»τé╣σ║Åσêù", "σè¿Σ╜£σ║Åσêù", "Θ¥óσÉæσ║Åσêù", "ΘÇƒσ║ª", "Φ╖»σ╛äId"}
, Id = 1024, Name = "ΘÇâΦ╖æNPCΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_271
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[87])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true}
, 
[1025] = {AOIRadius = 10, AOIType = 2, EditSort = 18011, 
EventTips = {"σè¿Σ╜£ΦÇàId", "σè¿Σ╜£σ║Åσêù", "Θ¥óσÉæσ║Åσêù", "σ»╣Φ»¥Id", "µ£\128σÉÄΣ╕ÇΣ╕¬σè¿Σ╜£σ╛¬τÄ\175"}
, Id = 1025, Name = "NPCσè¿Σ╜£ΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_272
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[92])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_273
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[88])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1026] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_274
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[135])(API, TRIGGER, TARGETOBJ, 0.7)
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 11004, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 1026, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉµ\128¬µ¡╗Σ║íπ\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_275
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[6])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_276
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1027] = {AOIRadius = 10, EditSort = 18013, 
EventTips = {"Φ┐╜Θô║σëºµâà"}
, Id = 1027, Name = "Φ┐╜Θ\128ÉµêÿΦ┐╜Θô║ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_277
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[84])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true}
, 
[1028] = {AOIRadius = 10, EditSort = 16013, 
EventTips = {"ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σ╣┐ΦºÆ", "Θò£σñ┤σÅÿσîûσ╕ºµò░", "τ╝ôσè¿τ▒╗σ₧ï", "µÿ»σÉªσÇ╛µû£Θò£σñ┤", "µ£\128σñºσ\128╛µû£Φº\146(µ¡úµò░)", "σÇ╛µû£τ╝ôσè¿τ▒╗σ₧ï"}
, Id = 1028, MaxCount = -1, Name = "Θò£σñ┤πÇÉΦ┐╜ΘÇÉµêÿΘò£σñ┤ΦºªσÅæσÖ¿π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_278
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[85])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7], ARG[8], ARG[9])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true}
, 
[1029] = {AOIRadius = 10, EditSort = 18014, 
EventTips = {"σèáσêåτ▒╗σ₧ï", "σêåµò░τ¡ëτ║º"}
, Id = 1029, MaxCount = 1, Name = "τÄ⌐µ│òΦ»äσêåσèáσêå", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_279
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[110])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true}
, 
[1030] = {AOIRadius = 10, EditSort = 99045, 
EventTips = {"FlashId", "PosX", "PosY", "ΘÇéΘàìτ▒╗σ₧ï", "µÿ»σÉªσà¿σ▒ÅFlash", "σ╛¬τÄ»µ¼íµò░"}
, Id = 1030, Name = "µÆ¡µö╛flash", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_280
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[93])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3}
, 
[1031] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_281
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 15023, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "µè\128Φâ╜µîçσ╝òID", "µÿ╛τñ║τ▒╗σ₧ï(1", "2)"}
, Id = 1031, MaxCount = 1, Name = "µîçσ╝òπÇÉσ╗╢µù╢σêçµîçσ╝òπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_282
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[95])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1032] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_283
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99011, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 1032, MaxCount = 1, Name = "σëºµâàΦºªσÅæσÖ¿π\128Éµ\128¬µ¡╗Σ║íπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_284
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1033] = {AOIRadius = 10, AOIType = 2, EditSort = 18012, 
EventTips = {"σè¿Σ╜£ΦÇàId", "σè¿Σ╜£σ║Åσêù", "Θ¥óσÉæσ║Åσêù", "σ»╣Φ»¥Id", "µ£\128σÉÄΣ╕ÇΣ╕¬σè¿Σ╜£σ╛¬τÄ\175"}
, Id = 1033, MaxCount = -1, Name = "NPCσè¿Σ╜£ΦºªσÅæσÖ¿∩╝êµùáΘÖÉµ¼í∩╝ë", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_285
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[92])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_286
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[88])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1034] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_287
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99010, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 1034, MaxCount = 1, Name = "σëºµâàΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘç\1430πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_288
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1035] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_289
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99011, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 1035, MaxCount = 1, Name = "ΘÇÜσà│Θò£σñ┤ΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘç\1430πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_290
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  if not (API[76])(API, TRIGGER, TARGETOBJ) and not (API[159])(API, TRIGGER, TARGETOBJ) then
    (API[21])(API, TRIGGER, TARGETOBJ)
  end
end
}
, 
[1036] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_291
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 11021, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 1036, IsFristForce = true, MaxCount = 1, Name = "Σ╕\128µ¼íµ\128ºσê╖µÇ¬ΦºªσÅæσÖ¿πÇÉσ╗╢µù╢π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_292
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[5])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_293
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4], ARG[8])
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1050] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_294
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[101])(API, TRIGGER, TARGETOBJ, "ByCalamityProg1", ARG[1])
end
, EditSort = 99046, 
EventTips = {"µòæτü╛Φ┐¢σ║ª", "ΦºªσÅæσî║σƒƒσêùΦí¿", "ΦºªσÅæσî║σƒƒσ╗╢Φ┐ƒ"}
, Id = 1050, Name = "µòæτü╛τ¬üσÅæΣ║ïΣ╗╢", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_295
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[1051] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_296
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99047, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "µòæτü╛Φ┐¢σ║ªσèáσ\128\188"}
, Id = 1051, Name = "µòæτü╛Φ┐¢σ║ªσó₧σèá(µ¥\128µÇ\170)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_297
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[102])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1052] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_298
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[141])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, EditSort = 99048, 
EventTips = {"µòæµÅ┤Σ║║µò░", "µòæτü╛Φ┐¢σ║ªσèáσ\128\188"}
, Id = 1052, Name = "µòæτü╛Φ┐¢σ║ªσó₧σèá(µòæΣ║║)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_299
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[102])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1053] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_300
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[101])(API, TRIGGER, TARGETOBJ, "ByCalamityProg1", ARG[1])
end
, EditSort = 99997, 
EventTips = {"µòæτü╛Φ┐¢σ║ª", "ΦºªσÅæσÖ¿ID(σÅ»σñÜΣ╕\170\"", "\"ΘÜöσ╝Ç)"}
, Id = 1053, Name = "µòæτü╛τ¬üσÅæΣ║ïΣ╗╢ΦºªσÅæσñÜΣ╕¬ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_301
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1054] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_302
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2], true)
end
, EditSort = 99048, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)", "µòæτü╛Φ┐¢σ║ªσèáσ\128\188"}
, Id = 1054, MaxCount = -1, Name = "µòæτü½Φ┐¢σ║ªσó₧σèá(HP)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_303
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[102])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1055] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_304
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[8])(API, TRIGGER, TARGETOBJ, "ByMonsterHpAddChange", ARG[1], ARG[2])
end
, EditSort = 99048, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)", "µòæτü╛Φ┐¢σ║ªσèáσ\128\188"}
, Id = 1055, MaxCount = -1, Name = "µòæτü½Φ┐¢σ║ªσçÅσ░æ(HP)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_305
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[102])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1100] = {AOIRadius = 10, EditSort = 99008, Id = 1100, MaxCount = 1, Name = "σëºµâàΦºªσÅæσÖ¿π\128ÉσñÜΣ║║π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_306
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[1108] = {AOIRadius = 10, EditSort = 99007, Id = 1108, MaxCount = 1, Name = "σëºµâàΦºªσÅæσÖ¿π\128ÉAOIµ£ëτë╣µòêπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_307
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true, 
StandEffect = {200029, 200029, 200029}
}
, 
[1110] = {AOIRadius = 10, EditSort = 99110, 
EventTips = {"NpcId"}
, Id = 1110, MaxCount = -1, Name = "npcΣ║Æσè¿ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_308
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[184])(API, TRIGGER, TARGETOBJ, ARG[1], true)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_309
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[184])(API, TRIGGER, TARGETOBJ, ARG[1], false)
end
, OnlyClient = 1, OnlyHero = true}
, 
[1850] = {AOIRadius = 400, EditSort = 99049, 
EventTips = {"µÇ¬τë⌐Id(µ£║σÖ¿)", "µ£║σÖ¿τ▒╗σ₧ï", "Θ⌐╛Θ⌐╢µè\128Φâ\189", "µÿ»σÉªΘÜÉΦùÅµîëΘÆ«"}
, Id = 1850, MaxCount = -1, Name = "τé«σÅ░µîëΘö«ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_310
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[105])(API, TRIGGER, TARGETOBJ, true, ARG[1], ARG[2], ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_311
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[105])(API, TRIGGER, TARGETOBJ, false)
end
, OnlyClient = 2, 
StandEffect = {10000203, 10000203, 10000203}
}
, 
[2000] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"Θƒ│µòêID", "Θƒ│µòêΦç¬σ«ÜΣ╣ëσÉì", "Θƒ│µòêσ¥ÉµáçX", "Θƒ│µòêσ¥ÉµáçY", "Θƒ│µòêσ¥ÉµáçZ", "BGMµ╕ÉσÅÿµù╢Θù┤", "τ╗äId"}
, Id = 2000, MaxCount = -1, Name = "µÆ¡µö╛Θƒ│µòêΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_312
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[139])(API, TRIGGER, TARGETOBJ, ARG[7])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_313
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[29])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_314
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[30])(API, TRIGGER, TARGETOBJ, ARG[2])
end
, OnlyClient = 3, OnlyHero = true}
, 
[2001] = {BornAnim = "op", ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_315
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], true)
end
, EditSort = 99999, 
EventTips = {"σ«Üµù╢µù╢Θù┤(τº\146)"}
, FillEffect = true, Id = 2001, Name = "σ«Üµù╢µö╛ΦíîΘÿ╗µîí", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_316
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_317
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandAnim = {"idle", "atk01"}
, 
StandFillEffect = {
{10153, 10154, 10155}
}
, 
TriggerAnim = {"die", "atk02"}
}
, 
[2002] = {
BornEffect = {10156, 10158, 10160}
, BornEffectTime = 0.5, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_318
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 13003, EventEffectTime = 1, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 2002, MaxCount = 1, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘç\1430µö╛ΦíîπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_319
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[148])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[135])(API, TRIGGER, TARGETOBJ, 2)
  ;
  (API[150])(API, TRIGGER, TARGETOBJ, {10157, 10159, 10161})
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_320
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_321
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[2003] = {AOIRadius = 10, EditSort = 99997, Id = 2003, MaxCount = 1, Name = "ΘÇÜσà│ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_322
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[23])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 18973}
, 
[2004] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_323
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 99999, 
EventTips = {"σ«Üµù╢µù╢Θù┤(τº\146)"}
, Id = 2004, MaxCount = 1, Name = "µëôσ╝ÇΦ╜¼τ¢ÿ", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_324
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[24])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2005] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_325
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 2005, Name = "µîéµ£║τÄ⌐µ│òτ╗ôµ¥ƒσñäτÉå", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_326
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[25])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2006] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_327
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[9])(API, TRIGGER, TARGETOBJ, "ByEvent1", "WAVE_START")
end
, EditSort = 99083, 
EventTips = {"ΦºªσÅæσÖ¿ID(σÅ»σñÜΣ╕\170\"", "\"ΘÜöσ╝Ç)"}
, Id = 2006, Name = "Σ║ïΣ╗╢ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_328
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2007] = {
BornEffect = {10156, 10158, 10160}
, BornEffectTime = 0.5, EditSort = 13001, EventEffectTime = 1, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 2007, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128ÉΦó½σè¿π\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_329
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[148])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_330
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_331
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[2008] = {AOIRadius = 10, EditSort = 99084, 
EventTips = {"ΦºªσÅæσÖ¿IDs", "σ╗╢µù╢µù╢Θù┤"}
, Id = 2008, MaxCount = 1, Name = "Φüöσè¿AOIΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_332
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2009] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_333
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 99016, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤(τº\146)", "Θƒ│µòêID", "Θƒ│µòêΦç¬σ«ÜΣ╣ëσÉì", "Θƒ│µòêσ¥ÉµáçX", "Θƒ│µòêσ¥ÉµáçY", "Θƒ│µòêσ¥ÉµáçZ"}
, Id = 2009, Name = "σ╗╢µù╢µÆ¡µö╛Θƒ│µòê", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_334
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[29])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2010] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_335
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99017, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "Θƒ│µòêΦç¬σ«ÜΣ╣ëσÉì"}
, Id = 2010, Name = "µÇ¬τë⌐µ¡╗Σ║íσü£µ¡óΘƒ│µòê", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_336
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[30])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2011] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_337
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 99018, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤(τº\146)", "Θƒ│µòêID"}
, Id = 2011, Name = "σ╗╢µù╢µÆ¡µö╛ΦâîµÖ»Θƒ│Σ╣É", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_338
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[33])(API, TRIGGER, TARGETOBJ)
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2012] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_339
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99019, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 2012, Name = "µÇ¬τë⌐µ¡╗Σ║íσü£µ¡óΦâîµÖ»Θƒ│Σ╣É", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_340
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[33])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2013] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_341
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99997, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºªσÅæσÖ¿ID(σÅ»σñÜΣ╕\170\"", "\"ΘÜöσ╝Ç)"}
, Id = 2013, Name = "µÇ¬τë⌐Φ║½Φ╛╣σê¢σ╗║σñÜΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_342
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3], (API[16])(API, TRIGGER, TARGETOBJ))
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2014] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"Θƒ│µòêId", "µùïΘÆ«σÅéµò░σÉ\141", "µùïΘÆ«σÅéµò░σÇ\188"}
, Id = 2014, MaxCount = -1, Name = "µÆ¡µö╛ΦâîµÖ»Θƒ│Σ╣ÉΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_343
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[36])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_344
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[35])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_345
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[36])(API, TRIGGER, TARGETOBJ)
  ;
  (API[34])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2015] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_346
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[9])(API, TRIGGER, TARGETOBJ, "ByEventFaint", "MFAINT")
end
, EditSort = 99999, Id = 2015, Name = "µÇ¬τë⌐µÖòσ\128ÆµÆ¡µö╛σëºµâ\133", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_347
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2017] = {AOIRadius = 10, EditSort = 100000, Id = 2017, MaxCount = 1, Name = "σëºµâàΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_348
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true, ShapeId = 18972}
, 
[2018] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_349
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99020, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "Θƒ│µòêID"}
, Id = 2018, Name = "µÇ¬τë⌐µ¡╗Σ║íµÆ¡µö╛ΦâîµÖ»Θƒ│Σ╣É", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_350
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2019] = {AOIRadius = 10, AOIType = 0, EditSort = 99999, Id = 2019, MaxCount = -1, Name = "µÇ¬τë⌐Φ┐¢σàÑµ¡╗Σ║íΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_351
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[37])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandAnim = {"idle"}
, 
StandEffect = {300499}
}
, 
[2020] = {AOIRadius = 40, EditSort = 99997, 
EventTips = {"buffId"}
, Id = 2020, IsShowBuffName = true, MaxCount = 1, Name = "µö╗σç╗BUFFΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_352
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[134])(API, TRIGGER, TARGETOBJ, 1010003)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 3901, 
StandAnim = {"idle"}
}
, 
[2021] = {AOIRadius = 10, EditSort = 99997, 
EventTips = {"buffId"}
, Id = 2021, IsShowBuffName = true, MaxCount = 1, Name = "Θÿ▓σ╛íBUFFΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_353
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 12009, 
StandAnim = {"arder_chidongxi"}
}
, 
[2022] = {AOIRadius = 40, EditSort = 99997, 
EventTips = {"buffId"}
, Id = 2022, IsShowBuffName = true, MaxCount = 1, Name = "τöƒσæ╜BUFFΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_354
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
ShapeColor = {1, 1, 1, 1}
, ShapeId = 3902, 
StandAnim = {"idle"}
}
, 
[2023] = {AOIRadius = 10, EditSort = 16012, 
EventTips = {"ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σêçµìóµù╢Θù┤"}
, Id = 2023, MaxCount = -1, Name = "Θò£σñ┤πÇÉΘò£σñ┤ΦºªσÅæσÖ¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_355
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[40])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2024] = {AOIRadius = 10, EditSort = 99003, 
EventTips = {"σ£║µÖ»Φ╡äµ║ÉId"}
, Id = 2024, MaxCount = 1, Name = "Σ╕ûτòîπÇÉσ£║µÖ»Φ╖│Φ╜¼ΦºªσÅæσÖ¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_356
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[43])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 1001}
, 
[2026] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_357
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, EditSort = 99012, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)"}
, Id = 2026, Name = "σëºµâàΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘçÅτÖ╛σêåµ»öπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_358
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2027] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_359
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í"}
, Id = 2027, MaxCount = 1, Name = "σ╗╢µù╢µö╛τïù(σ«óµê╖τ½\175)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_360
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2028] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_361
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[9])(API, TRIGGER, TARGETOBJ, "ByEventFaint", ARG[1], true)
end
, EditSort = 99013, 
EventTips = {"Σ║ïΣ╗╢σÉ\141"}
, Id = 2028, Name = "σëºµâàΦºªσÅæσÖ¿π\128Éµîçσ«ÜΣ║ïΣ╗╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_362
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2029] = {EditSort = 13002, Id = 2029, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128Éµùáτë╣µòêπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_363
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_364
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_365
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2030] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_366
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 13004, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 2030, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘç\1430µö╛Φíîµùáτë╣µòêπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_367
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_368
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2031] = {AOIMulti = 1, AOIRadius = 10, EditSort = 99021, Id = 2031, Name = "σñÜΣ║║σ£║µÖ»Φ╖│Φ╜¼", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_369
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[48])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 18973}
, 
[2032] = {AOIRadius = 10, EditSort = 99997, 
EventTips = {"buffId"}
, Id = 2032, IsShowBuffName = true, MaxCount = 1, Name = "µö╗Θ\128ƒBUFFΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_370
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 12009, 
StandAnim = {"arder_chidongxi"}
}
, 
[2033] = {AOIRadius = 10, EditSort = 99997, 
EventTips = {"buffId"}
, Id = 2033, IsShowBuffName = true, MaxCount = 1, Name = "τº╗Θ\128ƒBUFFΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_371
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 12009, 
StandAnim = {"idle"}
}
, 
[2034] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_372
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "CreateMonster", ARG[1], true)
end
, EditSort = 99999, 
EventTips = {"Θù┤ΘÜö(τº\146)"}
, Id = 2034, MaxCount = -1, Name = "σñºτºÿσóâΦÉ╜Θ¢╖ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_373
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[49])(API, TRIGGER, TARGETOBJ, {7000150})
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2035] = {EditSort = 99999, FillEffect = true, Id = 2035, Name = "Φó½σè¿Θÿ╗µîíΦºªσÅæσÖ\168(2)", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_374
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_375
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[2036] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_376
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[50])(API, TRIGGER, TARGETOBJ, "ByMonsterGroupDie", ARG[1])
end
, EditSort = 99997, 
EventTips = {"µÇ¬τë⌐τ╗äId", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í"}
, Id = 2036, MaxCount = 1, Name = "πÇÉσê╖µÇ¬π\128æµ\128¬τë⌐τ╗äµ¡╗Σ║íµö╛τï\151", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_377
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2037] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_378
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "CreateMonster", ARG[1], true)
end
, EditSort = 99997, 
EventTips = {"Θù┤ΘÜö(τº\146)"}
, Id = 2037, Name = "Θ£çσè¿ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_379
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[49])(API, TRIGGER, TARGETOBJ, {24909})
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2038] = {AOIRadius = 15, AOIType = 0, EditSort = 99999, Id = 2038, MaxCount = -1, Name = "µÇ¬τë⌐Φ┐¢σàÑµ¡╗Σ║íΦºªσÅæσÖ\168(τ╗äΘÿƒ)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_380
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[37])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandAnim = {"idle"}
, 
StandEffect = {300499}
}
, 
[2039] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_381
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99997, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºªσÅæσÖ¿ID(σÅ»σñÜΣ╕\170\"", "\"ΘÜöσ╝Ç)"}
, Id = 2039, MaxCount = -1, Name = "µÇ¬τë⌐µ¡╗Σ║íΦ║½Φ╛╣σê¢σ╗║σñÜΦºªσÅæσÖ¿-BUFF", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_382
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3], (API[16])(API, TRIGGER, TARGETOBJ))
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2040] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_383
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2] or 1)
end
, EditSort = 99997, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºªσÅæσÖ¿Id"}
, Id = 2040, MaxCount = 999, Name = "µÇ¬τë⌐µ¡╗Σ║íσê¢σ╗║ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_384
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[51])(API, TRIGGER, TARGETOBJ, {})
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2041] = {AOIRadius = 10, EditSort = 16014, 
EventTips = {"ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σêçµìóµù╢Θù┤"}
, Id = 2041, MaxCount = 1, Name = "Θò£σñ┤πÇÉσ«óµê╖τ½»Θò£σñ┤ΦºªσÅæσÖ¿π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_385
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[40])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2042] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_386
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 2042, MaxCount = -1, Name = "µÇ¬τë⌐Φí\128ΘçÅΣ╕║0µÆ¡µö╛σëºµâà-Σ╝áΘ\128üΘù¿ΘÇáσ₧ï", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_387
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 18973}
, 
[2043] = {AOIRadius = 10, EditSort = 99997, 
EventTips = {"buffId"}
, Id = 2043, IsShowBuffName = true, MaxCount = 99, Name = "Σ╕ìµÿ╛τñ║τë╣µòêbuffΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_388
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2044] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_389
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)", "σê╖µ\128¬σî║σƒƒId"}
, Id = 2044, Name = "µÇ¬τë⌐Φí\128ΘçÅτÖ╛σêåµ»öµö╛τïù", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_390
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2045] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_391
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[146])(API, TRIGGER, TARGETOBJ, "ScanEvent", true)
  print("ΦºªσÅæµë½µÅÅΣ║ïΣ╗╢================================")
end
, EditSort = 17018, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "ΦºªσÅæΣ║ïΣ╗╢Key", "µë½µÅÅσëìσëºµâ\133", "µë½µÅÅσÉÄσëºµâ\133", "σ»╗Φ╖»τé╣XYZ"}
, Id = 2045, MaxCount = -1, Name = "Σ║ñµìóµîëΘÆ«ΦüèΘ¬ÜΦºªσÅæσÖ¿π\128ÉµúÇµ╡ïµë½µÅÅπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_392
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[163])(API, TRIGGER, TARGETOBJ, 250, 100, 70, nil, 3800, ARG[8])
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_393
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[164])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_394
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  if not (API[162])(API, TRIGGER, TARGETOBJ) then
    (API[149])(API, TRIGGER, TARGETOBJ, ARG[6])
  else
    ;
    (API[149])(API, TRIGGER, TARGETOBJ, ARG[7])
  end
end
, OnlyClient = 2, 
StandEffect = {1185, 1185, 1185}
}
, 
[2046] = {EditSort = 99999, 
EventTips = {"τë╣µòêID"}
, Id = 2046, Name = "σî║σƒƒΘÿ╗µîíτë╣µòê", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_395
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[10])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_396
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2047] = {AOIRadius = 10, EditSort = 99001, 
EventTips = {"Σ╗╗σèíσêùΦí¿", "ΘÜÉΦùÅτë╣µòê", "ΘÜÉΦùÅNPCσî║σƒƒ", "τí«Φ«ñµíå∩╝êσ»╣σ║önpcσ»╣Φ»¥ID∩╝\137"}
, Id = 2047, Name = "Σ╕ûτòîπÇÉΣ╗╗σèíΦºªσÅæσÖ¿πÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_397
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[77])(API, TRIGGER, TARGETOBJ, ARG[2])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_398
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[56])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_399
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[57])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnlyHero = true, 
StandEffect = {200036, 200036}
}
, 
[2048] = {AOIRadius = 10, EditSort = 15009, 
EventTips = {"σ»╣Φ»¥ID", "µÿ╛τñ║Θí║σ║Å"}
, Id = 2048, MaxCount = 1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_400
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2049] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_401
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, EditSort = 15011, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)", "σ»╣Φ»¥ID", "µÿ╛τñ║Θí║σ║Å"}
, Id = 2049, MaxCount = 1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘçÅπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_402
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2050] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_403
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2] or 1)
end
, EditSort = 15012, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σ»╣Φ»¥ID", "µÿ╛τñ║Θí║σ║Å"}
, Id = 2050, MaxCount = 1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128Éµ\128¬µ¡╗Σ║íπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_404
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2051] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_405
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[11])(API, TRIGGER, TARGETOBJ, "ByMonsterBorn", ARG[1], ARG[2] or 1)
end
, EditSort = 15013, 
EventTips = {"µÇ¬τë⌐Id", "σç║τöƒΣ╕¬µò░", "σ»╣Φ»¥ID", "µÿ╛τñ║Θí║σ║Å"}
, Id = 2051, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128Éµ\128¬σç║τöƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_406
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2052] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_407
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, EditSort = 11005, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 2052, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉµ\128¬ΦíÇΘçÅτÖ╛σêåµ»öπÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_408
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[6])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_409
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2053] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_410
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimerCaption", ARG[1], false)
end
, EditSort = 15018, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤(0τº\146)", "σ¡ùσ╣òID"}
, Id = 2053, MaxCount = 1, Name = "σ¡ùσ╣òΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_411
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[62])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2054] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_412
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 15019, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σ¡ùσ╣òID"}
, Id = 2054, MaxCount = 1, Name = "σ¡ùσ╣òΦºªσÅæσÖ¿π\128ÉΦíÇΘç\1430πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_413
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[62])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2055] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_414
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimerDialog", ARG[1], false)
end
, EditSort = 15010, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤(τº\146)", "σ»╣Φ»¥ID", "µÿ╛τñ║Θí║σ║Å"}
, Id = 2055, MaxCount = 1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_415
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2056] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_416
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimerDialog", ARG[1], false)
end
, EditSort = 15011, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤(τº\146)", "σ»╣Φ»¥ID"}
, Id = 2056, MaxCount = 1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128æπ\128ÉΘí╢µÄëπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_417
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[61])(API, TRIGGER, TARGETOBJ)
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2057] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_418
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, EditSort = 15012, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)", "σ»╣Φ»¥ID"}
, Id = 2057, MaxCount = 1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘçÅπ\128æπ\128ÉΘí╢µÄëπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_419
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[61])(API, TRIGGER, TARGETOBJ)
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2058] = {AOIRadius = 10, EditSort = 99024, 
EventTips = {"ΘÇáσ₧ïId", "σÑûσè▒Id", "µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135"}
, Id = 2058, IsShapeByParam = true, MaxCount = -1, MiniMapIcon = "σî║σƒƒΣ║ïΣ╗╢H_σ£░σ¢╛σ¢╛µáç_ΦíÑτ╗Ö", Name = "σî║σƒƒΣ║ïΣ╗╢σ«¥τ«▒", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_420
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandAnim = {"idle", "idle"}
}
, 
[2059] = {AOIRadius = 10, EditSort = 99025, 
EventTips = {"ΘÇáσ₧ïId", "Φâ╜σÉªµÜùµ¥Ç(1µê\1500)", "µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135", "µîçµîÑµòêµ₧£(BuffID)", "σà│Φüöσà│σìíID"}
, Id = 2059, IsShapeByParam = true, MaxCount = -1, MiniMapIcon = "σî║σƒƒΣ║ïΣ╗╢H_σ£░σ¢╛σ¢╛µáç_τ▓╛Φï▒µÇ\170", Name = "σî║σƒƒΣ║ïΣ╗╢σà│σìí(τ▓╛Φï▒)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_421
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2060] = {AOIRadius = 10, EditSort = 99026, 
EventTips = {"ΘÇáσ₧ïId", "Φâ╜σÉªµÜùµ¥Ç(1µê\1500)", "µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135", "µîçµîÑµòêµ₧£(BuffID)", "σà│Φüöσà│σìíID"}
, Id = 2060, IsShapeByParam = true, MaxCount = -1, MiniMapIcon = "σî║σƒƒΣ║ïΣ╗╢H_σ£░σ¢╛σ¢╛µáç_µÖ«µ\128\170", Name = "σî║σƒƒΣ║ïΣ╗╢σà│σìí(µÖ«Θ\128\154)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_422
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2061] = {AOIRadius = 10, EditSort = 99027, 
EventTips = {"ΘÇáσ₧ïId", "Φâ╜σÉªµÜùµ¥Ç(1µê\1500)", "µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135", "µîçµîÑµòêµ₧£(BuffID)", "σà│Φüöσà│σìíID"}
, Id = 2061, IsShapeByParam = true, MaxCount = -1, MiniMapIcon = "σî║σƒƒΣ║ïΣ╗╢H_σ£░σ¢╛σ¢╛µáç_µîçµîÑµÇ\1701", Name = "σî║σƒƒΣ║ïΣ╗╢σà│σìí(µîçµîÑ)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_423
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2062] = {AOIRadius = 10, EditSort = 99028, 
EventTips = {"ΘÇáσ₧ïId", "Φâ╜σÉªµÜùµ¥Ç(1µê\1500)", "µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135", "µîçµîÑµòêµ₧£(BuffID)", "σà│Φüöσà│σìíID"}
, Id = 2062, IsShapeByParam = true, MaxCount = -1, MiniMapIcon = "σî║σƒƒΣ║ïΣ╗╢H_σ£░σ¢╛σ¢╛µáç_BOSS", Name = "σî║σƒƒΣ║ïΣ╗╢σà│σìí(BOSS)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_424
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2063] = {AOIRadius = 10, EditSort = 99029, 
EventTips = {"ΘÇáσ₧ïId", "Φâ╜σÉªµÜùµ¥Ç(1µê\1500)", "µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135", "µîçµîÑµòêµ₧£(BuffID)", "σà│Φüöσà│σìíID"}
, Id = 2063, IsShapeByParam = true, MaxCount = -1, MiniMapIcon = "σî║σƒƒΣ║ïΣ╗╢H_σ£░σ¢╛σ¢╛µáç_µÖ«µ\128\170", Name = "σî║σƒƒΣ║ïΣ╗╢σà│σìí(σÑûσè▒µÇ\170)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_425
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2065] = {AOIRadius = 10, EditSort = 99031, 
EventTips = {"ΦíÑσààΦíîσè¿τé\185", "µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135"}
, Id = 2065, MaxCount = -1, MiniMapIcon = "σî║σƒƒΣ║ïΣ╗╢H_σ£░σ¢╛σ¢╛µáç_ΦíÑτ╗Ö", Name = "σî║σƒƒΣ║ïΣ╗╢ΦíÑτ╗Ö(Φíîσè¿σè\155)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_426
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 4001}
, 
[2066] = {AOIRadius = 10, EditSort = 99032, 
EventTips = {"BuffId", "µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135"}
, Id = 2066, MaxCount = -1, Name = "σî║σƒƒΣ║ïΣ╗╢ΦíÑτ╗Ö(buff)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_427
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 4001}
, 
[2067] = {AOIRadius = 10, EditSort = 99033, 
EventTips = {"µÿ»σÉªσ¢║σ«Üµ┐\128µ┤\187", "σ¢║σ«Üµ┐\128µ┤╗Φ╜«µò\176", "µ┐\128µ┤╗µªéτÄ\135"}
, Id = 2067, MaxCount = -1, MiniMapIcon = "σî║σƒƒΣ║ïΣ╗╢H_σ£░σ¢╛σ¢╛µáç_Σ╛ªµƒÑ", Name = "σî║σƒƒΣ║ïΣ╗╢ΦíÑτ╗Ö(Σ╛ªσ»ƒ)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_428
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, ShapeId = 4001}
, 
[2068] = {AOIRadius = 10, EditSort = 99034, 
EventTips = {"σê╖µ\128¬σî║σƒƒID"}
, Id = 2068, IsUserLocation = 1, MaxCount = -1, Name = "σî║σƒƒΣ║ïΣ╗╢µÜùΘ¢╖(σê╖µ\128\170)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_429
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[65])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2069] = {EditSort = 99035, 
EventTips = {"τë╣µòêID"}
, Id = 2069, IsUserLocation = 1, Name = "σî║σƒƒΣ║ïΣ╗╢µÜùΘ¢╖(Θÿ╗µîí)", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_430
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[10])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_431
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2070] = {EditSort = 99036, Id = 2070, Name = "σî║σƒƒΣ║ïΣ╗╢Θÿ╗µîí", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_432
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_433
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2071] = {AOIRadius = 10, EditSort = 16001, 
EventTips = {"ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σêçµìóµù╢Θù┤"}
, Id = 2071, MaxCount = -1, Name = "τ¢╕σ»╣Θò£σñ┤ΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_434
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[41])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], Args[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_435
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[72])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2072] = {AOIRadius = 10, EditSort = 15001, 
EventTips = {"τ▒╗σ₧ï", "Σ┐íµü»IDσêùΦí¿", "µîüτ╗¡µù╢Θù┤σêùΦí¿", "µÿ╛τñ║Θí║σ║Å", "µáçΘóÿId"}
, Id = 2072, MaxCount = 1, Name = "DBMΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_436
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[69])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2073] = {AOIRadius = 10, Condition = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_437
  local Args = {...}
  do
    if not TRIGGER.ARGS then
      local ARG = {}
    end
    do return (not (API[181])(API, TRIGGER, TARGETOBJ, ARG[1]) and not (API[201])(API, TRIGGER, TARGETOBJ)) end
    -- DECOMPILER ERROR: 2 unprocessed JMP targets
  end
end
, EditSort = 99999, 
EventTips = {"Σ╗╗σèíId", "Σ╗╗σèíΦ┐¢σ║ª", "σëºµâàσÉìσ¡ù", "ΘÜÉΦùÅτë╣µòê", "NpcId", "µ£¥σÉæ", "σç║τöƒσè¿Σ╜£", "ΘÜÉΦùÅNPCσî║σƒƒ"}
, Id = 2073, MaxCount = -1, Name = "πÇÉΣ╕ûτòîπ\128æΣ╗╗σèíσëºµâàΦºªσÅæσÖ¿", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_438
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[77])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[78])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[6], ARG[7])
  ;
  (API[206])(API, TRIGGER, TARGETOBJ, ARG[8])
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_439
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[207])(API, TRIGGER, TARGETOBJ, ARG[8])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_440
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[79])(API, TRIGGER, TARGETOBJ, ARG[5])
  ;
  (API[71])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true, 
StandEffect = {10000203, 10000203, 10000203}
}
, 
[2074] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_441
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99068, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σó₧σèáµù╢Θù┤(s)"}
, Id = 2074, MaxCount = -1, Name = "µÇ¬τë⌐µ¡╗Σ║íσèáµù╢ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_442
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[74])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2075] = {AOIRadius = 10, EditSort = 99067, 
EventTips = {"σó₧σèáµù╢Θù┤(s)"}
, Id = 2075, Name = "σ«Üτé╣σèáµù╢ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_443
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[74])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2078] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_444
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[141])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, EditSort = 99999, 
EventTips = {"µòæµÅ┤µò░ΘçÅ"}
, FillEffect = true, Id = 2078, MaxCount = 1, Name = "ΦºúµòæΣ║║Φ┤¿µö╛ΦíîΘÿ╗µîí", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_445
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_446
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[2079] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_447
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[141])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, EditSort = 99997, 
EventTips = {"µòæµÅ┤µò░ΘçÅ", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2079, MaxCount = 1, Name = "πÇÉσê╖µÇ¬π\128æΦºúµòæΣ║║Φ┤¿µö╛τï\151", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_448
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[5])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_449
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2080] = {AOIRadius = 10, EditSort = 99002, Id = 2080, Name = "Σ╕ûτòîπÇÉµîçσ╝òσ»╗Φ╖»ΦºªσÅæσÖ¿πÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_450
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[77])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_451
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true, 
StandEffect = {100412, 100412, 100412}
}
, 
[2081] = {AOIRadius = 10, EditSort = 99072, 
EventTips = {"ΦíùΘüôId"}
, Id = 2081, MaxCount = -1, Name = "σî║σƒƒΦíùΘüôΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_452
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[80])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true}
, 
[2082] = {AOIRadius = 10, EditSort = 14001, 
EventTips = {"ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║τ▒╗σ₧\139", "ΘÇ\128σ£║σî║σƒƒID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║idσêùΦí¿(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)"}
, Id = 2082, MaxCount = -1, Name = "ΘÇ\128σ£║ΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_453
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[81])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2083] = {AOIRadius = 10, EditSort = 16007, 
EventTips = {"ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σ╣┐ΦºÆ", "µÿ»σÉªτ╗æσ«ÜΣ╕╗ΦºÆ(0µê\1501)", "Θò£σñ┤σÅÿσîûσ╕ºµò░(Σ╕ìσí½σêÖτ¢┤µÄÑσÅÿσî\150)", "µÿ»σÉªσ╝║σê╢∩╝\1361Σ╕║σ╝║σê╢∩╝ë"}
, Id = 2083, MaxCount = -1, Name = "σ¢║σ«ÜΘò£σñ┤ΦºªσÅæσÖ¿π\128ÉAOIµùáΘÖÉπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_454
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[89])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2084] = {AOIRadius = 10, EditSort = 99073, 
EventTips = {"σëºµâàσÉ\141", "µîëΘÆ«Φ╡äµ║ÉσÉ\141"}
, Id = 2084, MaxCount = -1, Name = "σ£║µÖ»Σ║Æσè¿ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_455
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[91])(API, TRIGGER, TARGETOBJ, true, ARG[1], ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_456
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[91])(API, TRIGGER, TARGETOBJ, false)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2085] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_457
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2] or 1)
end
, EditSort = 16004, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σ╣┐ΦºÆ", "µÿ»σÉªτ╗æσ«ÜΣ╕╗ΦºÆ(0µê\1501)", "Θò£σñ┤σÅÿσîûσ╕ºµò░(Σ╕ìσí½σêÖτ¢┤µÄÑσÅÿσî\150)"}
, Id = 2085, MaxCount = -1, Name = "σ¢║σ«ÜΘò£σñ┤ΦºªσÅæσÖ¿π\128Éµ\128¬µ¡╗Σ║íπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_458
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[89])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4], ARG[5], ARG[6], ARG[7], ARG[8])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2086] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_459
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "CameraDelay1", ARG[1], false)
end
, EditSort = 16005, 
EventTips = {"σ╗╢µù╢µù╢Θò┐(s)", "ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σ╣┐ΦºÆ", "µÿ»σÉªτ╗æσ«ÜΣ╕╗ΦºÆ(0µê\1501)", "Θò£σñ┤σÅÿσîûσ╕ºµò░(Σ╕ìσí½σêÖτ¢┤µÄÑσÅÿσî\150)"}
, Id = 2086, MaxCount = -1, Name = "σ¢║σ«ÜΘò£σñ┤ΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_460
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[89])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2087] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_461
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2] or 1)
end
, EditSort = 16008, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "Θò£σñ┤σÅÿσîûσ╕ºµò░∩╝êΣ╕ìσí½σêÖτ¢┤µÄÑσÅÿσîû∩╝\137"}
, Id = 2087, MaxCount = -1, Name = "µ╕àΘÖñσ¢║σ«ÜΘò£σñ┤πÇÉµ\128¬µ¡╗Σ║íµùáΘÖÉπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_462
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[90])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2088] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_463
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[12])(API, TRIGGER, TARGETOBJ, "EndDramaSetFixedCamera", ARG[1])
end
, EditSort = 16006, 
EventTips = {"σëºµâàσÉ\141", "ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σ╣┐ΦºÆ", "µÿ»σÉªτ╗æσ«ÜΣ╕╗ΦºÆ(0µê\1501)", "Θò£σñ┤σÅÿσîûσ╕ºµò░(Σ╕ìσí½σêÖτ¢┤µÄÑσÅÿσî\150)"}
, Id = 2088, MaxCount = -1, Name = "σ¢║σ«ÜΘò£σñ┤ΦºªσÅæσÖ¿π\128Éσëºµâàτ╗ôµ¥ƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_464
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[89])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2090] = {AOIRadius = 10, EditSort = 16003, 
EventTips = {"ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σ╣┐ΦºÆ", "µÿ»σÉªτ╗æσ«ÜΣ╕╗ΦºÆ(0µê\1501)", "Θò£σñ┤σÅÿσîûσ╕ºµò░(Σ╕ìσí½σêÖτ¢┤µÄÑσÅÿσî\150)"}
, Id = 2090, MaxCount = 1, Name = "σ¢║σ«ÜΘò£σñ┤ΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_465
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[89])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2091] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_466
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 14002, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║τ▒╗σ₧\139", "ΘÇ\128σ£║σî║σƒƒID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║idσêùΦí¿(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)", "τè╢µ\128üΦ╜¼σÉ\145", "Σ╕ìΦ«íσàÑµ¡╗Σ║\161", "σàüΦ«╕ΘÇ\128σ£║Φ╜¼µ¡╗Σ║í"}
, Id = 2091, MaxCount = 1, Name = "ΘÇ\128σ£║ΦºªσÅæσÖ¿πÇÉσ╗╢µù╢π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_467
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[7])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_468
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[81])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[8], ARG[9])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2092] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_469
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2] or 1)
end
, EditSort = 14004, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║τ▒╗σ₧\139", "ΘÇ\128σ£║σî║σƒƒID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║idσêùΦí¿(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)"}
, Id = 2092, MaxCount = -1, Name = "ΘÇ\128σ£║ΦºªσÅæσÖ¿πÇÉµ\128¬µ¡╗Σ║íπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_470
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[81])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4], ARG[5], ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2093] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_471
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 14003, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║τ▒╗σ₧\139", "ΘÇ\128σ£║σî║σƒƒID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║idσêùΦí¿(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)"}
, Id = 2093, MaxCount = -1, Name = "ΘÇ\128σ£║ΦºªσÅæσÖ¿πÇÉµ\128¬ΦíÇΘç\1430πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_472
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[81])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4], ARG[5], ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2094] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_473
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[12])(API, TRIGGER, TARGETOBJ, "EndDramaSetFixedCamera", ARG[1])
end
, EditSort = 11010, 
EventTips = {"σëºµâàσÉ\141", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 2094, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉσëºµâàτ╗ôµ¥ƒπ\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_474
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[5])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_475
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2095] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_476
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[141])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, EditSort = 99997, 
EventTips = {"µòæµÅ┤µò░ΘçÅ", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║τ▒╗σ₧\139", "ΘÇ\128σ£║σî║σƒƒID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║idσêùΦí¿(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)"}
, Id = 2095, MaxCount = 1, Name = "ΦºúµòæΣ║║Φ┤¿ΘÇ\128σ£║ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_477
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[81])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2096] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_478
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[2], false)
end
, EditSort = 99071, 
EventTips = {"buffId", "σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137"}
, Id = 2096, MaxCount = 1, Name = "σÅÿΦ║½ΘÇƒµ£║τö▓ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_479
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true, 
StandAnim = {"idle"}
, 
TargetMerId = {101, 102, 104, 199, 103, 108, 109, 110, 107, 111}
}
, 
[2097] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_480
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimerDialog", ARG[1], false)
end
, EditSort = 15002, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤(τº\146)", "τ▒╗σ₧ï", "Σ┐íµü»IDσêùΦí¿", "µîüτ╗¡µù╢Θù┤σêùΦí¿", "µÿ╛τñ║Θí║σ║Å", "µáçΘóÿId"}
, Id = 2097, MaxCount = 1, Name = "DBMΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_481
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[69])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2098] = {EditSort = 99075, 
EventTips = {"σè¿Σ╜£ΦÇàIdσ║Åσêù", "Φ╖│σ╕ºσ║Åσêù"}
, Id = 2098, MaxCount = 1, Name = "Npcσè¿Σ╜£Φ╖│σ╕ºΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_482
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[96])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2099] = {AOIRadius = 10, EditSort = 99076, 
EventTips = {"Θ½ÿσ║ªΦ╖¥τª╗", "Σ╕ïΘÖìσê¥Θ\128ƒσ║ª"}
, Id = 2099, MaxCount = 1, Name = "ΘÖÉσê╢ΘÇ╗Φ╛æΘ½\152", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_483
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[98])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2100] = {AOIRadius = 10, EditSort = 99997, 
EventTips = {"buffId"}
, Id = 2100, IsShowBuffName = true, MaxCount = 1, Name = "BUFFΦºªσÅæσÖ\168-σ¢₧ΦíÇ", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_484
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
ShapeColor = {1, 1, 1, 1}
, ShapeId = 12009, 
StandAnim = {"arder_chidongxi"}
}
, 
[2101] = {AOIRadius = 10, EditSort = 15005, 
EventTips = {"µÅÉτñ║ID(σà¼σà▒σÅìΘªê)", "σü£τòÖµù╢Θù┤"}
, Id = 2101, Name = "µ¿¬σ╣àΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_485
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[99])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true}
, 
[2102] = {EditSort = 99078, 
EventTips = {"σè¿Σ╜£ΦÇàIdσ║Åσêù", "σè¿Σ╜£σ║Åσêù", "σ╛¬τÄ»σ║Åσêù(0)"}
, Id = 2102, MaxCount = 1, Name = "σñÜΣ╕¬NpcµÆ¡µö╛σè¿Σ╜£ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_486
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[97])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2103] = {AOIRadius = 10, AOIType = 3, EditSort = 14011, Id = 2103, MaxCount = 1, Name = "ΘÇÜσà│ΦºªσÅæσÖ¿π\128ÉNPCΘÇÜσà│πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_487
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[23])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2104] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_488
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, EditSort = 15006, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "µÅÉτñ║ID", "σü£τòÖµù╢Θù┤"}
, Id = 2104, MaxCount = 1, Name = "µ¿¬σ╣àΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_489
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[99])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2105] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_490
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2] or 1)
end
, EditSort = 15008, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "µÅÉτñ║ID", "σü£τòÖµù╢Θù┤"}
, Id = 2105, MaxCount = 1, Name = "µ¿¬σ╣àΦºªσÅæσÖ¿π\128Éµ\128¬µ¡╗Σ║íπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_491
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[99])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2106] = {AOIRadius = 10, AOIRange = 40, EditSort = 11012, 
EventTips = {"NpcId", "σè¿Σ╜£/τ╝⌐µö╛", "ΦíîΣ╕║µá\145", "ΦíîΣ╕║µáæσÅéµò\176", "τó░µÆ₧τ▒╗σ₧ï", "Θ¥óσÉæ", "Φ╖»Σ║║npcµ░öµ│í", "AOIΦîâσ¢┤", "NPCµÿ╛τñ║σ▒éτ║º", "Φ╛àσè⌐σî║σƒƒId", "σ»╗Φ╖»τÜäµïÉτé╣ID", "µÿ»σÉªΦ╖ƒΣ╗╗σèíσà│Φü\148", "ΘÜÅµ£║σè¿Σ╜£:ActRandom", "σ£¿σëºµâàΣ╕¡τÜäσÉìσ¡\151"}
, Id = 2106, MaxCount = -1, Name = "µ£¼σ£░npcΦºªσÅæσÖ\168", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_492
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[104])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_493
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[103])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7], ARG[9], ARG[10], nil, ARG[13], ARG[14])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_494
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[104])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true}
, 
[2107] = {AOIRadius = 10, EditSort = 99050, 
EventTips = {"ΘÖäσèáΦó½σè¿µè\128Φâ╜ID", "X", "Y", "Z", "Θ¥óσÉæ", "µÿ»σÉªµÿ╛τñ║σ£░σ¢╛"}
, Id = 2107, MaxCount = 1, Name = "σÅÿΦ║½µùáΣ║║µ£║ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_495
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[106])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[186])(API, TRIGGER, TARGETOBJ, ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {200017, 200017, 200017}
}
, 
[2108] = {AOIRadius = 10, EditSort = 99051, 
EventTips = {"µáçΦ«░τé╣µ¿íσ₧ïID", "µáçΦ«░µù╢Θù┤"}
, Id = 2108, MaxCount = -1, Name = "µùáΣ║║µ£║µáçΦ«░τé╣ΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_496
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[107])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_497
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[108])(API, TRIGGER, TARGETOBJ, 1)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_498
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[108])(API, TRIGGER, TARGETOBJ, 0)
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200016, 200016, 200016}
}
, 
[2109] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_499
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[109])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, EditSort = 99052, 
EventTips = {"µáçΦ«░µò░ΘçÅ", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2109, MaxCount = 1, Name = "µùáΣ║║µ£║µáçΦ«░µêÉσèƒΦºªσÅæσÖ¿", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_500
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_501
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2110] = {AOIRadius = 10, EditSort = 14012, Id = 2110, MaxCount = 1, Name = "ΘÇÜσà│ΦºªσÅæσÖ¿π\128ÉτÄ⌐σ«╢Θ\128Üσà│πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_502
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[23])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200029, 200029, 200029}
}
, 
[2111] = {AOIRadius = 10, AOIType = 0, EditSort = 15004, 
EventTips = {"τ▒╗σ₧ï", "Σ┐íµü»IDσêùΦí¿", "µîüτ╗¡µù╢Θù┤σêùΦí¿", "µÿ╛τñ║Θí║σ║Å", "µáçΘóÿId"}
, Id = 2111, MaxCount = -1, Name = "DBMΦºªσÅæσÖ¿π\128Éµ\128¬τë⌐ΦºªσÅæπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_503
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[69])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2112] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_504
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σê╖µ\128¬σî║σƒƒId"}
, Id = 2112, MaxCount = 1, Name = "µÇ¬τë⌐Φí\128ΘçÅΣ╕║0Σ╕¡µ¡óσê╖µ\128¬τÉâσê╖µ\128\170", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_505
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[112])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2113] = {AOIRadius = 10, EditSort = 99053, 
EventTips = {"ΘÇáσ₧ïID", "buffId", "Θ½ÿσ║ªΘÖÉσê╢"}
, Id = 2113, IsShowBuffName = true, MaxCount = -1, Name = "µùáΣ║║µ£║τö╡ΘçÅΦíÑτ╗Öτé╣ΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_506
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[111])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_507
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {200015, 200015}
}
, 
[2114] = {AOIRadius = 10, AOIRange = 40, EditSort = 11012, 
EventTips = {"NpcId", "σè¿Σ╜£/τ╝⌐µö╛", "ΦíîΣ╕║µá\145", "ΦíîΣ╕║µáæσÅéµò\176", "τó░µÆ₧τ▒╗σ₧ï", "Θ¥óσÉæ", "Φ╖»Σ║║npcµ░öµ│í", "AOIΦîâσ¢┤", "NPCµÿ╛τñ║σ▒éτ║º", "Φ╛àσè⌐σî║σƒƒId", "σ»╗Φ╖»τÜäµïÉτé╣ID", "µÿ»σÉªΦ╖ƒΣ╗╗σèíσà│Φü\148", "ΘÜÅµ£║σè¿Σ╜£:ActRandom", "σ£¿σëºµâàΣ╕¡τÜäσÉìσ¡\151", "σ»╗Φ╖»τé╣XYZ", "µ░öµ│íΘ½ÿσ║ª"}
, Id = 2114, MaxCount = -1, Name = "µ£¼σ£░npcΦºªσÅæσÖ¿π\128Éσ╕ªτë╣µòêπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_508
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  local Height = tonumber(ARG[16]) or 250
  ;
  (API[163])(API, TRIGGER, TARGETOBJ, Height, 100, 70, nil, 3800, ARG[15], function()
    -- function num : 0_508_0 , upvalues : TRIGGER
    local NpcObj = (sceneMgr:GetCurScene()):GetSceneObjByUid(TRIGGER.m_ClientNpcUid)
    if not NpcObj then
      return 
    end
    ;
    (task.NpcTalkMgr):Talk2Npc((NpcObj:GetId()), nil, nil, nil, NpcObj)
  end
)
  ;
  (API[148])(API, TRIGGER, TARGETOBJ, Height - 250, true)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_509
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[104])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_510
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[103])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7], ARG[9], ARG[10], nil, ARG[13], ARG[14])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_511
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[104])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true, 
StandEffect = {1185, 1185, 1185}
}
, 
[2115] = {AOIRadius = 10, AOIType = 0, EditSort = 11008, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 2115, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉµ\128¬τë⌐Φ┐¢σàÑπÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_0
  local Args = {...}
  local EventKey = Args[1]
  local Time = tonumber(Args[2])
  local IsLoop = Args[3]
  TRIGGER:InitTriggerTimer(EventKey, Time, IsLoop)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_1
  local Args = {...}
  local Time = tonumber(Args[1])
  TRIGGER:InitDelTriggerTimer(Time)
end
, ShapeId = 18001}
, 
[2116] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_2
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  do
    local DieCount = tonumber(Args[3] or 0)
    assert(DieCount > 0)
    TRIGGER:InitMonsterEvent(EventKey, "MONSTER_DIE", MonsterId, DieCount)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, EditSort = 14005, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║τ▒╗σ₧\139", "ΘÇ\128σ£║σî║σƒƒID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║idσêùΦí¿(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)"}
, Id = 2116, MaxCount = -1, Name = "ΘÇ\128σ£║ΦºªσÅæσÖ¿πÇÉµ\128¬ΦíÇΘçÅτÖ╛σêåµ»ö(µùáΘÖÉµ¼íµò░∩╝ëπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_3
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local GroupId = tonumber(Args[2])
  do
    local DieCount = tonumber(Args[3])
    assert(DieCount > 0)
    TRIGGER:InitMonsterGroupEvent(EventKey, "MONSTER_DIE", GroupId, DieCount)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnlyClient = 2}
, 
[2117] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_4
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  local DieCount = tonumber(Args[3] or 0)
  do
    local NoWaitOtherEvent = Args[4]
    assert(DieCount > 0)
    TRIGGER:InitMonsterEvent(EventKey, "MONSTER_NOHP", MonsterId, DieCount, NoWaitOtherEvent)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, EditSort = 99997, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºªσÅæσÖ¿Id", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2117, MaxCount = 1, Name = "µÇ¬τë⌐Φí\128ΘçÅΣ╕║0σê¢σ╗║ΦºªσÅæσÖ\168", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_5
  local Args = {...}
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  local Per = tonumber(Args[3] or 0)
  do
    local OnlyOver = Args[4]
    assert(Per > 0)
    TRIGGER:CreateMonsterHPEvent(EventKey, "MONSTER_HP_CHANGE", MonsterId, Per, OnlyOver)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_6
  local Args = {...}
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  local Value = tonumber(Args[3] or 0)
  do
    local OnlyOver = Args[4]
    assert(Value > 0)
    TRIGGER:CreateMonsterHPValueEvent(EventKey, "MONSTER_HP_CHANGE", MonsterId, Value, OnlyOver)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
}
, 
[2118] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_7
  local Args = {...}
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  do
    local Per = tonumber(Args[3] or 0)
    assert(Per > 0)
    TRIGGER:CreateMonsterAddHPEvent(EventKey, "MONSTER_HP_ADD_CHANGE", MonsterId, Per)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, EditSort = 11011, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 2118, MaxCount = -1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉσ╗╢µù╢∩╝êµùáΘÖÉ∩╝ëπ\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_8
  local Args = {...}
  local EventKey = Args[1]
  local EventName = Args[2]
  assert(EventName)
  TRIGGER:InitAssignEvent(EventKey, EventName, Args[3])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_9
  local Args = {...}
  local BlockEffId = tonumber(Args[1])
  if not BlockEffId then
    return 
  end
  TriggerFuncs:InitBlockEffect(TRIGGER, BlockEffId)
end
, OnlyClient = 2}
, 
[2119] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_10
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  do
    local Count = tonumber(Args[3] or 0)
    assert(Count > 0)
    TRIGGER:InitMonsterEvent(EventKey, "ADD_MONSTER", MonsterId, Count)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, EditSort = 99997, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "ΦºªσÅæσÖ¿Id"}
, Id = 2119, MaxCount = 1, Name = "σ╗╢µù╢σê¢σ╗║ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_11
  local Args = {...}
  local EventKey = Args[1]
  local DramaName = Args[2]
  TRIGGER:InitDramaEvent(EventKey, "DRAMA_END", DramaName)
end
}
, 
[2120] = {AOIRadius = 10, EditSort = 11007, 
EventTips = {"µÇ¬τë⌐IDσêùΦí¿", "µ┐\128µ┤╗Θ\128ƒσ║ª"}
, Id = 2120, MaxCount = -1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉΘÜÅµ£║σê╖πÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_12
  local Args = {...}
  local EventKey = Args[1]
  local MonsterId = tonumber(Args[2] or -1)
  local Times = tonumber(Args[3])
  TRIGGER:InitMonsterFaintEvent(EventKey, (CONST.EVENT_CONST).MONSTER_FAINT, MonsterId, Times)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_13
  local Args = {...}
  if not objdata then
    return 
  end
  local AreaId = tonumber(Args[1])
  if not AreaId then
    return 
  end
  TriggerFuncs:AddMonsterByAreaId(TRIGGER, AreaId)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_14
  local Args = {...}
  local X = tonumber(Args[1])
  local Y = tonumber(Args[2])
  if not Args[3] or not tonumber(Args[3]) then
    local Face = (math.FrameRandom)(0, 360)
  end
  if not X or not Y then
    return 
  end
  TriggerFuncs:SetObjPosition(TRIGGER, TARGETOBJ, X, Y, Face)
end
, OnlyClient = 2, 
StandEffect = {200017, 200017, 200017}
}
, 
[2121] = {AOIRadius = 10, AOIType = 3, EditSort = 11009, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 2121, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉNPCΦºªσÅæπÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_15
  local Args = {...}
  if not objdata then
    return 
  end
  return TRIGGER:GetLastMonsterPos()
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_16
  local Args = {...}
  local TriggerId = tonumber(Args[1])
  if not TriggerId then
    return 
  end
  TriggerFuncs:DynamicNewTrigger(TRIGGER, TriggerId, Args[2])
end
, OnlyClient = 2}
, 
[2122] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_17
  local Args = {...}
  local StrIds = Args[1]
  if not StrIds then
    return 
  end
  local Ids = (string.split)(StrIds, ",")
  TriggerFuncs:CreateMoreTrigger(TRIGGER, Ids, Args[2], Args[3])
end
, EditSort = 15003, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "Σ┐íµü»IDσêùΦí¿", "µîüτ╗¡µù╢Θù┤σêùΦí¿", "µÿ╛τñ║Θí║σ║Å", "µáçΘóÿId"}
, Id = 2122, MaxCount = 1, Name = "DBMΦºªσÅæσÖ¿π\128Éµ\128¬µ¡╗Σ║íπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_18
  local Args = {...}
  local StrIds = Args[1]
  local Delay = Args[2]
  if not StrIds then
    return 
  end
  local Ids = (string.split)(StrIds, ",")
  TriggerFuncs:FireOtherTrigger(TRIGGER, Ids, Delay)
end
, OnlyClient = 1}
, 
[2123] = {AOIRadius = 10, AOIRange = 20, EditSort = 99022, 
EventTips = {"σ£║µÖ»Id", "Φ╖│Φ╜¼Σ╜ìτ╜«(xyΘ¥óσÉæ)", "UIΣ╜ìτ╜«(xyzΘ¥óσÉæ)", "σ╖▓Σ╕ìτö\168", "σ╖▓Σ╕ìτö\168", "σêçµìóΦ╖¥τª╗", "σ╖▓Σ╕ìτö\168", "σ╖▓Σ╕ìτö\168", "σ╖▓Σ╕ìτö\168"}
, Id = 2123, MaxCount = -1, Name = "σ£║µÖ»Φ╖│Φ╜¼Σ╝áΘ\128üΘù¿", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_19
  local Args = {...}
  TriggerFuncs:OpenFuncSystemUi(TRIGGER, "StageView")
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_20
  local Args = {...}
  if not objdata then
    return 
  end
  TriggerFuncs:TriggerPlayDrama(TRIGGER)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_21
  local Args = {...}
  local Block = Args[1]
  local Invert = Args[2]
  local NotShowFoceEffect = Args[3]
  TRIGGER:ChangeSceneBlock(Block, Invert, NotShowFoceEffect)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2124] = {EditSort = 15008, Id = 2124, MaxCount = -1, Name = "µ¿¬σ╣àΦºªσÅæσÖ¿π\128Éµ│óµò░µÆ¡µèÑπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_22
  local Args = {...}
  TriggerFuncs:FinishStageEvent(TRIGGER)
end
, OnlyClient = 2}
, 
[2125] = {AOIRadius = 10, EditSort = 99006, 
EventTips = {"σ£║µÖ»SrcID", "XΦ╜┤σ¥Éµá\135", "YΦ╜┤σ¥Éµá\135"}
, Id = 2125, MaxCount = -1, Name = "Σ╕ûτòîπÇÉΦ┐öσ¢₧Σ╕èΣ╕\128Σ╕¬Σ╕╗σƒÄσ£║µÖ»π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_23
  local Args = {...}
  TriggerFuncs:OpenFuncSystemUi(TRIGGER, "OnHookView")
end
}
, 
[2126] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_24
  local Args = {...}
  TRIGGER:OnHookLotFinishi()
end
, EditSort = 99997, 
EventTips = {"µòæµÅ┤µò░ΘçÅ", "ΦºªσÅæσÖ¿ID(σÅ»σñÜΣ╕\170\"", "\"ΘÜöσ╝Ç)"}
, Id = 2126, MaxCount = 1, Name = "ΦºúµòæΣ║║Φ┤¿σê¢σ╗║ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_25
  local Args = {...}
  local BuffId = tonumber(Args[1])
  TriggerFuncs:AddBuff(TRIGGER, TARGETOBJ, BuffId)
end
, OnlyClient = 2}
, 
[2127] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"Φ┐¢σàÑµê┐Θù┤σÅ\183"}
, Id = 2127, MaxCount = 1, Name = "Φ┐¢σàÑσà│σìíµê┐Θù┤", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_26
  local Args = {...}
  local BuffId = tonumber(Args[1])
  local MonsterId = tonumber(Args[2])
  TriggerFuncs:AddBuffByMonsterId(TRIGGER, BuffId, MonsterId, Args[3])
end
, OnlyClient = 1}
, 
[2128] = {AOIRadius = 10, EditSort = 99054, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "σêáΘÖñBuffID"}
, Id = 2128, MaxCount = 1, Name = "µùáΣ║║µ£║µîçσ╝òτé╣ΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_27
  local Args = {...}
  local BuffId = tonumber(Args[1])
  TriggerFuncs:DelBuff(TRIGGER, TARGETOBJ, BuffId)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_28
  local Args = {...}
  local AudioId = tonumber(Args[1])
  local AudioName = Args[2]
  local X = Args[3] or 0
  local Y = Args[4] or 0
  local Z = Args[5] or 0
  local BgmFadeTime = tonumber(Args[6])
  TriggerFuncs:PlayMusic(TRIGGER, AudioId, AudioName, X, Y, Z, BgmFadeTime)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_29
  local Args = {...}
  local AudioName = Args[1]
  TriggerFuncs:StopMusic(TRIGGER, AudioName)
end
, OnlyClient = 2, OnlyHero = true}
, 
[2129] = {AOIRadius = 10, EditSort = 99055, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ╖╗σèáBuffID"}
, Id = 2129, MaxCount = 1, Name = "µùáΣ║║µ£║µ╖╗σèáBuffΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_30
  local Args = {...}
  TriggerFuncs:TriggerPlayAudio(TRIGGER, tonumber(Args[1]))
end
, OnlyClient = 2, OnlyHero = true}
, 
[2130] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_31
  local Args = {...}
  local AudioId = tonumber(Args[1])
  local EventName = Args[2]
  local EventValue = tonumber(Args[3])
  TriggerFuncs:PlayTriggerBgMusic(AudioId, EventName, EventValue)
end
, EditSort = 99056, 
EventTips = {"µáçΦ«░µò░ΘçÅ", "Σ╜ìτ╜«X", "Σ╜ìτ╜«Y", "Θ¥óσÉæΦºÆσ║ªσÇ\188", "Φ┐ÿσÄƒµ¿íσ₧ïτ▒╗σ₧ï", "ΦºªσÅæσÖ¿σî║σƒƒID", "σêáΘÖñBuff"}
, Id = 2130, MaxCount = 1, Name = "µùáΣ║║µ£║Φ┐ÿσÄƒΘ\128áσ₧ïΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_32
  local Args = {...}
  TriggerFuncs:StopTriggerBgMusic()
end
, OnlyClient = 2}
, 
[2131] = {AOIRadius = 10, EditSort = 99057, Id = 2131, MaxCount = 1, Name = "µùáΣ║║µ£║µáçΦ«░τé╣τë╣µòêΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_33
  local Args = {...}
  TriggerFuncs:PlayCurSceneBgMusic()
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200028, 200028, 200028}
}
, 
[2132] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_34
  local Args = {...}
  local AudioId = tonumber(Args[1])
  local EventName = Args[2]
  local EventValue = tonumber(Args[3])
  ;
  (audio:Instance()):SetTriggerBgMusic(AudioId, EventName, EventValue)
end
, EditSort = 17007, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id", "µÿ»σÉªΘ¥óσÉæτ¢«µáç"}
, Id = 2132, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«σ╝║σê╢Θçèµö╛µè\128Φâ╜ΦºªσÅæσÖ¿∩╝\1361µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_35
  local Args = {...}
  ;
  (audio:Instance()):ClearTriggerBgMusic()
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_36
  local Args = {...}
  TriggerFuncs:OnMonsterEnter(TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2133] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_37
  local Args = {...}
  TriggerFuncs:SendCount(TRIGGER, Args[1], Args[2])
end
, EditSort = 17009, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id", "µÿ»σÉªΘ¥óσÉæτ¢«µáç"}
, Id = 2133, MaxCount = -1, Name = "Σ║ñΣ║ÆµîëΘÆ«σ╝║σê╢Θçèµö╛µè\128Φâ╜ΦºªσÅæσÖ¿∩╝êµùáΘÖÉ∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_38
  local Args = {...}
  TriggerFuncs:SendAutoCount(TRIGGER)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_39
  local Args = {...}
  local Distance = tonumber(Args[1])
  local Height = tonumber(Args[2])
  local Rota = tonumber(Args[3])
  local ChangeTime = tonumber(Args[4])
  TriggerFuncs:SetSceneCamera(TRIGGER, TARGETOBJ, Distance, Height, Rota, ChangeTime)
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2134] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_40
  local Args = {...}
  do
    local ChangeTime = Args[4] and ((Args[4] ~= "" and tonumber(Args[4])))
    TriggerFuncs:SetLinearSceneCamera(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], ChangeTime, Args[5])
    -- DECOMPILER ERROR: 2 unprocessed JMP targets
  end
end
, EditSort = 15007, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "µÅÉτñ║ID", "σü£τòÖµù╢Θù┤"}
, Id = 2134, MaxCount = 1, Name = "µ¿¬σ╣àΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘç\1430πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_41
  local Args = {...}
  TriggerFuncs:SetForceCameraPer(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], Args[4])
end
, OnlyClient = 2}
, 
[2135] = {AOIRadius = 10, EditSort = 14010, 
EventTips = {"τ¢«µáçid", "µè\128Φâ╜id"}
, Id = 2135, MaxCount = 1, Name = "σ╝║σê╢Θçèµö╛µè\128Φâ╜π\128ÉAOI∩╝\1361µ¼í∩╝ëπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_42
  local Args = {...}
  if not objdata then
    return 
  end
  local SrcId = tonumber(Args[1])
  TriggerFuncs:SendSwitchScene(TRIGGER, SrcId)
end
, OnlyClient = 2}
, 
[2136] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_43
  local Args = {...}
  TriggerFuncs:SkillAddBuff(TRIGGER, Args[1], Args[2], Args[3])
end
, EditSort = 99058, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "Φüöσè¿ΦºªσÅæσî║σƒƒ", "σ╗╢Φ┐ƒΦºªσÅæ"}
, Id = 2136, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«τ¬âσÉ¼ΦºªσÅæσÖ¿∩╝ê1µ¼í∩╝ë", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_44
  local Args = {...}
  TriggerFuncs:SkillRemoveBuff(TRIGGER, Args[1], Args[2])
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_45
  local Args = {...}
  TriggerFuncs:GetAOIRangeTargets(TRIGGER, Args[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_46
  local Args = {...}
  TriggerFuncs:AddObjAtr(TRIGGER, TARGETOBJ, Args[1], Args[2])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_47
  local Args = {...}
  return 
end
, OnlyClient = 2, 
StandEffect = {200028, 200028, 200028}
}
, 
[2137] = {AOIRadius = 10, EditSort = 99059, 
EventTips = {"Σ╜ìτ╜«X", "Σ╜ìτ╜«Y", "Θ¥óσÉæΦºÆσ║ªσÇ\188", "Φ┐ÿσÄƒµ¿íσ₧ïτ▒╗σ₧ï", "ΦºªσÅæσÖ¿σî║σƒƒID", "σêáΘÖñBuff", "µÿ»σÉªµÿ╛τñ║σ£░σ¢╛"}
, Id = 2137, MaxCount = 1, Name = "µùáΣ║║µ£║Φ┐ÿσÄƒΘ\128áσ₧ïΦºªσÅæσÖ\168(AOI)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_48
  local Args = {...}
  TriggerFuncs:CreateMonsterInRandomPos(TRIGGER, Args[1])
end
, OnlyClient = 2}
, 
[2138] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_49
  local Args = {...}
  if not objdata then
    return 
  end
  local EventKey = Args[1]
  local GroupId = tonumber(assert(Args[2]))
  TRIGGER:InitMonsterGroup(EventKey, "MONSTER_DIE", GroupId)
end
, EditSort = 17011, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id", "µòæτü╛Φ┐¢σ║ªσèáσ\128\188"}
, Id = 2138, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«-ΦºúµòæΣ║║Φ┤¿∩╝\1361µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_50
  local Args = {...}
  TriggerFuncs:CreateMonsterByPos(TRIGGER, Args[1])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_51
  local Args = {...}
  if Args[1] then
    TriggerFuncs:CameraRoundToByState(TRIGGER, Args[1])
  end
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2139] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_52
  local Args = {...}
  if TRIGGER.RefreshMonsterByOnline then
    local AreaIds = (string.split)(Args[3], "|")
    local Probs = (string.split)(Args[4], "|")
    TRIGGER:RefreshMonsterByOnline(Args[1], Args[2], AreaIds, Probs)
  end
end
, EditSort = 99997, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤", "µ¥âΘçìσêùΦí¿", "ΦºªσÅæσÖ¿σêùΦí\168"}
, Id = 2139, Name = "ΘÜÅµ£║σê¢σ╗║ΦºªσÅæσÖ\168(σ╗╢µù╢)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_53
  local Args = {...}
  TRIGGER:OnShowResourcePoint(TARGETOBJ, tonumber(Args[1]))
end
, OnlyClient = 3}
, 
[2140] = {AOIRadius = 10, AOIRange = 20, EditSort = 99005, 
EventTips = {"UIΣ╜ìτ╜«(xyzΘ¥óσÉæ)", "σà¼Σ║ñτ½ÖσÉì", "σà¼σæèσåàσ«╣", "σ╣┐σæèσ¢╛τëç", "τ¢«τÜäσ£\176", "σà¼Σ║ñσëºµâà"}
, Id = 2140, MaxCount = -1, Name = "Σ╕ûτòîπÇÉσà¼Σ║ñΦ╜ªσëºµâàΦºªσÅæσÖ¿π\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_54
  local Args = {...}
  if TRIGGER.KillMonsterById then
    TRIGGER:KillMonsterById(Args[1])
  end
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_55
  local Args = {...}
  local TaskList = Args[1]
  TRIGGER:TriggerTask(TARGETOBJ, TaskList)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_56
  local Args = {...}
  local TaskList = Args[1]
  TRIGGER:CancelTriggerTask(TARGETOBJ, TaskList)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_57
  local Args = {...}
  local X = tonumber(Args[1])
  local Y = tonumber(Args[2])
  if not Args[3] or not tonumber(Args[3]) then
    local Face = (math.FrameRandom)(0, 360)
  end
  local TARGETOBJ = global.Hero
  if not X or not Y then
    return 
  end
  TriggerFuncs:SetObjPosition(TRIGGER, TARGETOBJ, X, Y, Face)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2141] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_58
  do
    local Args = {...}
    do return TRIGGER:GetState() == ((ALLSETTING.CONST_CFG).TRIGGER_STATE).STATE2 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, EditSort = 17012, 
EventTips = {"τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║σî║σƒƒσÉìτº\176(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)", "σê╖µ\128¬σî║σƒƒId", "Σ╕ìΦ«íσàÑµ¡╗Σ║\161", "ΦºªσÅæσÖ¿Id", "µÿ»σÉªΘ¥óσÉæσ»╣µû╣"}
, Id = 2141, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«-ΦºúµòæΣ║║Φ┤¿Σ║║Φ┤¿ΘÇ\128σ£║∩╝ê1µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_59
  local Args = {...}
  local DialogId = tonumber(Args[1])
  local Prior = tonumber(Args[2])
  TriggerFuncs:ShowSceneRoleDialog(TRIGGER, TARGETOBJ, DialogId, Prior)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_60
  local Args = {...}
  ;
  (objdata.UserMgr):DispatchEvent("EVT_CLEAR_ALL_ROLE_DIALOG", true)
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2142] = {
BornEffect = {10156, 10158, 10160}
, BornEffectTime = 0.5, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_61
  local Args = {...}
  local SubtitlesId = tonumber(Args[1])
  TriggerFuncs:ShowSubtitles(TRIGGER, TARGETOBJ, SubtitlesId)
end
, EditSort = 13005, EventEffectTime = 1, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 2142, MaxCount = 1, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128Éµ\128¬µ¡╗Σ║íµö╛Φíîπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_62
  local Args = {...}
  local FightType = tonumber(Args[1])
  TRIGGER:AreaEventFight(TARGETOBJ, FightType)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_63
  local Args = {...}
  local SupplyType = Args[1]
  local SupplyArgs = Args[2]
  TRIGGER:AreaEventSupply(TARGETOBJ, SupplyType, SupplyArgs)
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[2143] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_64
  local Args = {...}
  local MonsterAreaId = tonumber(Args[1])
  TriggerFuncs:AreaEventMineMonster(TRIGGER, TARGETOBJ, MonsterAreaId)
end
, EditSort = 13006, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, Id = 2143, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128Éµ\128¬µ¡╗Σ║íµö╛Φíîµùáτë╣µòêπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_65
  local Args = {...}
  if not TriggerFuncs then
    return 
  end
  TriggerFuncs:TriggerAreaEvent(TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_66
  local Args = {...}
  local ShowIds = tostring(Args[1])
  local HideIds = tostring(Args[2])
  TRIGGER:ChangeSceneVisibleGroup(ShowIds, HideIds, Args[3])
end
, OnlyClient = 2}
, 
[2144] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_67
  local Args = {...}
  local nFrame = tonumber(Args[3]) or 0
  TriggerFuncs:EnableColorgrading(TRIGGER, Args[1], Args[2], nFrame, Args[4])
end
, EditSort = 17013, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id", "ΦºªσÅæσÖ¿σî║σƒƒID", "µÿ»σÉªΦ╜¼σÉæ"}
, Id = 2144, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«-ΦºúµòæΣ║║Φ┤¿σ╣╢σê¢σ╗║ΦºªσÅæσÖ¿∩╝\1361µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_68
  local Args = {...}
  local Type = tonumber(Args[1]) or 0
  local MessageIds = (string.split)(Args[2] or "", ",")
  local StayTimeLit = (string.split)(Args[3] or "", ",")
  local Prior = tonumber(Args[4])
  local TitleId = tonumber(Args[5])
  ;
  (objdata.UserMgr):DispatchEvent(const.EVT_COMBAT_DMB_TIPS, Type, MessageIds, StayTimeLit, Prior, TitleId)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_69
  local Args = {...}
  ;
  (objdata.UserMgr):DispatchEvent("EVT_CLEAR_ALL_DBM", true)
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2145] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_70
  local Args = {...}
  local TaskId = Args[1]
  local State = Args[2]
  local DramaName = Args[3]
  TriggerFuncs:TriggerTaskDrama(TRIGGER, TARGETOBJ, TaskId, State, DramaName)
end
, EditSort = 11006, 
EventTips = {"µÇ¬τë⌐Id", "µÇ¬τë⌐Id", "µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 2145, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉσñÜΣ╕¬µ\128¬ΦíÇΘç\1430πÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_71
  local Args = {...}
  TriggerFuncs:ClearLinearCameraState(TRIGGER)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_72
  local Args = {...}
  TriggerFuncs:CancelForceCameraPer(TRIGGER)
end
, OnlyClient = 2}
, 
[2146] = {AOIRadius = 10, EditSort = 16009, 
EventTips = {"Θò£σñ┤σÅÿσîûσ╕ºµò░∩╝êΣ╕ìσí½σêÖτ¢┤µÄÑσÅÿσîû∩╝\137"}
, Id = 2146, MaxCount = 1, Name = "µ╕àΘÖñσ¢║σ«ÜΘò£σñ┤πÇÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_73
  local Args = {...}
  local Time = tonumber(Args[1])
  local IsShowAction = true
  if Args[2] and Args[2] ~= "" then
    if Args[2] == "true" then
      IsShowAction = true
    else
      IsShowAction = false
    end
  end
  TriggerFuncs:AddStageTime(TRIGGER, Time, IsShowAction)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2147] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"BGMσÅÿσîûΦ╖¥τª╗", "BGMµ£\128σ░Åµ»öΣ╛\139", "BGMµ╕ÉσÅÿµù╢Θù┤(Σ╕ÄσëìΣ╕ñΦ\128àΣ╕ìσà╝σ«╣)", "τ╗äId"}
, Id = 2147, MaxCount = -1, Name = "BGMΘƒ│ΘçÅµö╣σÅÿΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_74
  local Args = {...}
  local SceneId = tonumber(Args[1])
  local X = tonumber(Args[2])
  local Y = tonumber(Args[3])
  TRIGGER:GoBackPreviousScence(TARGETOBJ, SceneId, X, Y)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_75
  local Args = {...}
  return TriggerFuncs:IsBindCamera(TRIGGER)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_76
  local Args = {...}
  if not objdata then
    return 
  end
  do
    local IsHide = tonumber(Args[1]) == 1
    TriggerFuncs:HideEffect(TRIGGER, TARGETOBJ, IsHide)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_77
  local Args = {...}
  local NpcId = tonumber(Args[1])
  local Face = tonumber(Args[2])
  local Animation = Args[3]
  TriggerFuncs:AddNpcForTrigger(TRIGGER, TARGETOBJ, NpcId, Face, Animation)
end
, OnlyClient = 3, OnlyHero = true}
, 
[2148] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_78
  local Args = {...}
  local NpcId = tonumber(Args[1])
  TriggerFuncs:CleanNpcForTrigger(TRIGGER, TARGETOBJ, NpcId)
end
, EditSort = 14009, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "τ¢«µáçID", "µè\128Φâ╜ID"}
, Id = 2148, MaxCount = 1, Name = "σ╝║σê╢Θçèµö╛µè\128Φâ╜π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_79
  local Args = {...}
  TriggerFuncs:ShowAreaAndStreet(TRIGGER, Args[1])
end
, OnlyClient = 2}
, 
[2149] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_80
  local Args = {...}
  if Args[1] then
    local ActionName = (string.split)(Args[1], "|")
  end
  local ExitType = Args[2]
  local AreaIds = (string.split)(Args[3], "|")
  local IdList = (string.split)(Args[4], "|")
  local StopFrame = Args[5]
  local IsCount = Args[6]
  local ExitToDieStatus = Args[7]
  TriggerFuncs:MonsterExitStage(TRIGGER, ActionName, ExitType, AreaIds, IdList, StopFrame, IsCount, ExitToDieStatus)
end
, EditSort = 99997, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅτÖ╛σêåµ»ö(1~100)", "ΦºªσÅæσÖ¿Id"}
, Id = 2149, MaxCount = 1, Name = "µÇ¬τë⌐Φí\128ΘçÅτÖ╛σêåµ»öσê¢σ╗║ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_81
  local Args = {...}
  if Args[1] then
    local ActionName = (string.split)(Args[1], "|")
  end
  local ExitType = Args[2]
  local AreaIds = nil
  local IdList = {TARGETOBJ:GetId()}
  local StopFrame = Args[3]
  local IsCount = Args[4]
  TriggerFuncs:MonsterExitStage(TRIGGER, ActionName, ExitType, AreaIds, IdList, StopFrame, IsCount)
end
}
, 
[2150] = {AOIRadius = 10, AOIType = 0, EditSort = 14006, 
EventTips = {"ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║τ▒╗σ₧\139", "ΘÇ\128σ£║σî║σƒƒID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║idσêùΦí¿(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)"}
, Id = 2150, MaxCount = 1, Name = "ΘÇ\128σ£║ΦºªσÅæσÖ¿πÇÉµ\128¬τë⌐Φ┐¢σàÑπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_82
  local Args = {...}
  local TargetId = tonumber(Args[1])
  local TargetPathId = tonumber(Args[2])
  local PlayerPathId = tonumber(Args[3])
  local WinDistance = tonumber(Args[4])
  local FailDistance = tonumber(Args[5])
  local TargetSpeed = tonumber(Args[6])
  local PlayerSpeed = tonumber(Args[7])
  local FailDrama = Args[8]
  do
    local IsNotShowUI = tonumber(Args[9]) == 1
    TriggerFuncs:StartChase(TRIGGER, TargetId, TargetPathId, PlayerPathId, WinDistance, FailDistance, TargetSpeed, PlayerSpeed, FailDrama, IsNotShowUI)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnlyClient = 2}
, 
[2151] = {AOIRadius = 10, AOIType = 0, EditSort = 99999, 
EventTips = {"buffId"}
, Id = 2151, MaxCount = 1, Name = "BUFFΦºªσÅæσÖ¿π\128Éµ\128¬τë⌐τö¿π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_83
  local Args = {...}
  TriggerFuncs:EndChase(TRIGGER, Args[1])
end
}
, 
[2152] = {AOIRadius = 10, EditSort = 99997, 
EventTips = {"ΦºªσÅæσÖ¿ID(σÅ»σñÜΣ╕\170\"", "\"ΘÜöσ╝Ç)"}
, Id = 2152, Name = "πÇÉAOIπÇæσê¢σ╗║σñÜΣ╕¬ΦºªσÅæσÖ¿∩╝êσñºσàëσ£êτë╣µòê∩╝\137", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_84
  local Args = {...}
  local Distance = tonumber(Args[1])
  local Height = tonumber(Args[2])
  local Angle = tonumber(Args[3])
  local Fov = tonumber(Args[4])
  local ChangeFrame = tonumber(Args[5])
  local TweenType = Args[6]
  local NeedCameraRotaion = tonumber(Args[7]) == 1
  local MaxRotationAngel = tonumber(Args[8])
  do
    local RotaionTweenType = Args[9]
    TriggerFuncs:SetChaseCamera(TRIGGER, TARGETOBJ, Distance, Height, Angle, Fov, ChangeFrame, TweenType, NeedCameraRotaion, MaxRotationAngel, RotaionTweenType)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnlyHero = true, 
StandEffect = {200084, 200084, 200084}
}
, 
[2153] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"Θƒ│µòêID"}
, Id = 2153, MaxCount = -1, Name = "τƒ¡Θƒ│µòêΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_85
  local Args = {...}
  do
    local IsLoop = tonumber(Args[5]) == 1
    TriggerFuncs:ThrowBodyToTarget(TRIGGER, Args[1], Args[2], Args[3], Args[4], IsLoop)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnlyClient = 3, OnlyHero = true}
, 
[2154] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_86
  local Args = {...}
  TriggerFuncs:SetNpcMove(TRIGGER, Args[1], Args[2], Args[3], Args[4], Args[5], Args[6])
end
, EditSort = 17010, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id", "µú\128µ╡ïΦºªσÅæσÖ¿σî║σƒƒID"}
, Id = 2154, MaxCount = -1, Name = "Σ║ñΣ║ÆµîëΘÆ«Θçèµö╛µè\128Φâ╜∩╝êµÆ\1731µ¼íσëºµâà∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_87
  local Args = {...}
  do
    local IsLoop = tonumber(Args[5]) == 1
    TriggerFuncs:SetNpcAnimations(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], Args[4], IsLoop)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_88
  local Args = {...}
  local Distance = tonumber(Args[1])
  local Height = tonumber(Args[2])
  local Angle = tonumber(Args[3])
  local Fov = tonumber(Args[4])
  local BindPlayer = tonumber(Args[5])
  local ChangeFrame = tonumber(Args[6])
  local IsForce = tonumber(Args[7])
  TriggerFuncs:SetSceneFixedCamera(TRIGGER, TARGETOBJ, Distance, Height, Angle, Fov, BindPlayer, ChangeFrame, IsForce)
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2155] = {
BornEffect = {10156, 10158, 10160}
, BornEffectTime = 0.5, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_89
  local Args = {...}
  local ChangeFrame = tonumber(Args[1])
  local IsForce = tonumber(Args[2])
  TriggerFuncs:ClearSceneFixedCamera(TRIGGER, TARGETOBJ, ChangeFrame, IsForce)
end
, EditSort = 13010, EventEffectTime = 1, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 2155, MaxCount = 1, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128Éσ╗╢Φ┐ƒµö╛Φíîπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_90
  local Args = {...}
  TRIGGER:UpdateShowInteractButton(Args[1], Args[2], Args[3])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_91
  local Args = {...}
  local Id = tonumber(Args[1])
  TriggerFuncs:SetTriggerObjId(TRIGGER, Id)
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[2156] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_92
  local Args = {...}
  TriggerFuncs:PlayFlash(TRIGGER, Args[1], Args[2], Args[3], Args[4], Args[5], Args[6])
end
, EditSort = 15029, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "µÅÉτñ║IDσêùΦí¿", "σü£τòÖµù╢Θù┤σêùΦí¿"}
, Id = 2156, MaxCount = 1, Name = "σñÜµ¥íµ¿¬σ╣àΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_93
  local Args = {...}
  local RewardId = tonumber(Args[1])
  TRIGGER:AreaEventBoxReward(TARGETOBJ, RewardId)
end
, OnlyClient = 2}
, 
[2157] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_94
  local Args = {...}
  local GuideId = tonumber(Args[1])
  local Type = tonumber(Args[2])
  TriggerFuncs:ShowSkillGuide(TRIGGER, GuideId, Type)
end
, EditSort = 17014, 
EventTips = {"τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║σî║σƒƒσÉìτº\176(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)", "σê╖µ\128¬σî║σƒƒId", "Σ╕ìΦ«íσàÑµ¡╗Σ║\161", "ΦºªσÅæσÖ¿Id", "µÿ»σÉªΘ¥óσÉæσ»╣µû╣"}
, Id = 2157, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«-Σ╜ôΦé▓τÑ¡Θçæσ▒₧µ¥┐Σ║Æσè¿∩╝\1361µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_95
  local Args = {...}
  TriggerFuncs:PlayAnimationToTime(TRIGGER, Args[1], Args[2])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_96
  local Args = {...}
  TriggerFuncs:PlayMoreNpcAnimation(TRIGGER, Args[1], Args[2], Args[3])
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2181] = {AOIRadius = 10, EditSort = 16010, 
EventTips = {"Θò£σñ┤σÅÿσîûσ╕ºµò░∩╝êΣ╕ìσí½σêÖτ¢┤µÄÑσÅÿσîû∩╝\137", "µÿ»σÉªσ╝║σê╢∩╝\1361Σ╕║σ╝║σê╢∩╝ë"}
, Id = 2181, MaxCount = -1, Name = "µ╕àΘÖñσ¢║σ«ÜΘò£σñ┤πÇÉAOIµùáΘÖÉπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_97
  local Args = {...}
  local Hight = tonumber(Args[1] or "0")
  local DownSpeed = tonumber(Args[2] or "0")
  TriggerFuncs:LimitObjHight(TRIGGER, Hight, DownSpeed)
end
, OnlyClient = 1}
, 
[2182] = {AOIRadius = 10, EditSort = 15017, 
EventTips = {"σ¡ùσ╣òID"}
, Id = 2182, MaxCount = 1, Name = "σ¡ùσ╣òΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_98
  local Args = {...}
  local TipsId = tonumber(Args[1])
  local Time = tonumber(Args[2])
  TriggerFuncs:ShowBannerTips(TRIGGER, TipsId, Time)
end
, OnlyClient = 1}
, 
[2183] = {AOIRadius = 10, EditSort = 11000, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2183, MaxCount = 1, Name = "================================================================", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_99
  local Args = {...}
  TriggerFuncs:ShowMoreBannerTips(Args[1], Args[2])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_100
  local Args = {...}
  local EventKey = Args[1]
  local RescueValue = tonumber(Args[2])
  TRIGGER:InitCalamityEvent(EventKey, (CONST.EVENT_CONST).CALAMITY_RESCUE_UPDATE, RescueValue)
end
, OnlyClient = 2}
, 
[2184] = {AOIRadius = 10, EditSort = 13000, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2184, MaxCount = 1, Name = "================================================================", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_101
  local Args = {...}
  local AddValue = tonumber(Args[1])
  TriggerFuncs:AddCalamityRescueValue(AddValue)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_102
  local Args = {...}
  local NpcId = tonumber(Args[1])
  local StartParams = Args[2]
  local BTName = Args[3]
  local BTParam = Args[4]
  local ForceShow = Args[5]
  local Face = Args[6]
  local BubbleTemple = Args[7]
  local PriorityCreate = tonumber(Args[8])
  local SupAreaId = tonumber(Args[9])
  local StartParams = (string.split)(StartParams or "", ",")
  local StarAnim = StartParams[1]
  local Scale = tonumber(StartParams[2] or "")
  local IsHide = Args[10]
  local ActionRandom = Args[11]
  local Alias = Args[12]
  TriggerFuncs:CreateClientNpc(TRIGGER, NpcId, StarAnim, BTName, BTParam, ForceShow, Face, BubbleTemple, PriorityCreate, SupAreaId, Scale, IsHide, ActionRandom, Alias)
end
, OnlyClient = 2}
, 
[2185] = {AOIRadius = 10, EditSort = 14000, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2185, MaxCount = 1, Name = "================================================================", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_103
  local Args = {...}
  TriggerFuncs:DelectClientNpc(TRIGGER)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_104
  local Args = {...}
  TriggerFuncs:IsShowMachineComp(TRIGGER, Args[1], Args[2], TARGETOBJ, Args[3], Args[4], Args[5])
end
, OnlyClient = 2}
, 
[2186] = {AOIRadius = 10, EditSort = 15000, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2186, MaxCount = 1, Name = "================================================================", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_105
  local Args = {...}
  local SkillId = tonumber(Args[1])
  local X = tonumber(Args[2])
  local Y = tonumber(Args[3])
  local Z = tonumber(Args[4])
  local Face = tonumber(Args[5])
  TriggerFuncs:StartUavStagePlay(TRIGGER, TARGETOBJ, SkillId, X, Y, Z, Face)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_106
  local Args = {...}
  local MonsterId = Args[1]
  local Time = Args[2]
  TriggerFuncs:CreateUavTarget(TRIGGER, MonsterId, Time)
end
, OnlyClient = 2}
, 
[2187] = {AOIRadius = 10, EditSort = 16000, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2187, MaxCount = 1, Name = "================================================================", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_107
  local Args = {...}
  TriggerFuncs:IsShowStartUavTagQte(TRIGGER, Args[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_108
  local Args = {...}
  local Count = Args[1]
  TriggerFuncs:SuccessUavMarkTag(TRIGGER, Count)
end
, OnlyClient = 2}
, 
[2188] = {AOIRadius = 10, EditSort = 99000, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2188, MaxCount = 1, Name = "================================================================", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_109
  local Args = {...}
  local ScoreType = Args[1]
  local ScoreGrade = tonumber(Args[2])
  TriggerFuncs:AddStageScore(TRIGGER, TARGETOBJ, ScoreType, ScoreGrade)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_110
  local Args = {...}
  local ShapeId = tonumber(Args[1])
  TriggerFuncs:CreateTriggerModel(TRIGGER, TARGETOBJ, ShapeId)
end
, OnlyClient = 2}
, 
[2189] = {AOIRadius = 10, EditSort = 16011, 
EventTips = {"ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σ╣┐ΦºÆ", "µÿ»σÉªτ╗æσ«ÜΣ╕╗ΦºÆ(0µê\1501)", "Θò£σñ┤σÅÿσîûσ╕ºµò░(Σ╕ìσí½σêÖτ¢┤µÄÑσÅÿσî\150)"}
, Id = 2189, MaxCount = 1, Name = "σ¢║σ«ÜΘò£σñ┤ΦºªσÅæσÖ¿π\128Éσàêµ╕àσÉÄΦºªσÅæπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_111
  local Args = {...}
  local AreaIds = (string.split)(Args[1] or "", ",")
  TriggerFuncs:StopMonsterBall(TRIGGER, AreaIds)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2190] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_112
  local Args = {...}
  local MonsterIdList = (string.split)(Args[1] or "", ",")
  local Time = (string.split)(Args[2] or "", ",")
  TriggerFuncs:CreateRandomMonster(TRIGGER, TARGETOBJ, MonsterIdList, Time)
end
, EditSort = 99069, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σó₧σèáµù╢Θù┤(s)", "µÿ»σÉªσ▒òτñ║σè¿µòê"}
, Id = 2190, Name = "µÇ¬τë⌐µ¡╗Σ║íσèáµù╢ΦºªσÅæσÖ¿∩╝êΣ╕\128µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_113
  local Args = {...}
  TriggerFuncs:StartActiveMonster(TRIGGER, TARGETOBJ)
end
}
, 
[2191] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_114
  local Args = {...}
  TriggerFuncs:StopActiveMonster(TRIGGER, TARGETOBJ)
end
, EditSort = 99085, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id", "µòæτü╛Φ┐¢σ║ªσèáσ\128\188", "µÇ¬τë⌐ID", "ΦíîΣ╕║µáæσÅéµò\176", "Θó¥σñûΦºªσÅæσÖ¿σî║σƒƒID", "Φüöσè¿ΦºªσÅæσÖ¿ID", "σ╗╢Φ┐ƒµù╢Θù┤", "µú\128µƒÑΣ║ñΣ║Æµ¼íµò\176", "Φüöσè¿τ╗ôτ«ùΦºªσÅæσÖ¿id", "τ╗ôτ«ùσ╗╢Φ┐ƒµù╢Θù┤", "µ£ëbuffµù╢Σ╕ìσÅ»Σ║ñΣ║\146", "µÿ»σÉªΘ¥óσÉæσ»╣µû╣", "µÇ¬τë⌐Θ¥óσÉæ"}
, Id = 2191, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«-ΦºúµòæΣ║║Φ┤¿∩╝\1361µ¼íΦ╖ƒΘÜÅµ\128¬τë⌐,τ╗æσ«ÜQTE∩╝\137", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_115
  local Args = {...}
  TRIGGER:CreateBusStation(Args[1], Args[2], Args[3], Args[4], Args[5], Args[6])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_116
  local Args = {...}
  TRIGGER:CreatePortalView(Args[1], Args[2], Args[3], Args[4])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_117
  local Args = {...}
  TRIGGER:DestroyPortalView()
end
, OnlyClient = 1, OnlyHero = true}
, 
[2192] = {AOIRadius = 10, 
AoiHeight = {-100, 500}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_118
  local Args = {...}
  TRIGGER:ShowEnterSceneView(Args[1])
end
, EditSort = 17002, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "τ¢æσÉ¼σî║σƒƒid", "ΦºªσÅæσî║σƒƒid", "σê¢σ╗║σî║σƒƒid", "τë╣µòêΘ½ÿσ║ª"}
, Id = 2192, MaxCount = -1, Name = "Σ║ñΣ║ÆµîëΘÆ«τ¬âσÉ¼ΦºªσÅæσÖ¿∩╝êµùáΘÖÉ∩╝\137", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_119
  local Args = {...}
  ;
  ((stage.InstMgr)()):SetRoomCount(tonumber(Args[1]))
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_120
  local Args = {...}
  TriggerFuncs:RevertModelShow(TRIGGER, TARGETOBJ, tonumber(Args[1]), Args[2])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_121
  local Args = {...}
  ;
  ((stage.InstMgr)()):CleanMonsters()
end
, OnlyClient = 2, 
StandEffect = {200028, 200028}
}
, 
[2193] = {AOIRadius = 10, 
AoiHeight = {-100, 500}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_122
  local Args = {...}
  if not TRIGGER.ClickBtnToEvent then
    return 
  end
  local ActionList = (string.split)(Args[9] or "", ",")
  TRIGGER:ClickBtnToEvent(TARGETOBJ, Args[1], Args[2], tonumber(Args[3]), tonumber(Args[4]), tonumber(Args[5]), Args[6], tonumber(Args[7]), tonumber(Args[8]), ActionList, tonumber(Args[10]), tostring(Args[11]), Args[12], Args[13])
end
, EditSort = 17003, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "Φüöσè¿ΦºªσÅæσî║σƒƒ", "σ╗╢Φ┐ƒΦºªσÅæ", "σê¢σ╗║σî║σƒƒid", "τë╣µòêΘ½ÿσ║ª"}
, Id = 2193, MaxCount = -1, Name = "Σ║ñΣ║ÆµîëΘÆ«σ╜òΘƒ│ΦºªσÅæσÖ¿∩╝êµùáΘÖÉ∩╝\137", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_123
  local Args = {...}
  TriggerFuncs:TargetForceSkill(TRIGGER, TARGETOBJ, tonumber(Args[1]), tonumber(Args[2]))
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_124
  local Args = {...}
  local WeightList = (string.split)(Args[1] or "", "|")
  local TriggerAreaList = (string.split)(Args[2] or "", "|")
  for k,v in pairs(WeightList) do
    WeightList[k] = tonumber(v)
  end
  local ResultIndex = (math.GetWeightResult)(WeightList)
  if TriggerAreaList[ResultIndex] then
    local AreaId = tonumber(TriggerAreaList[ResultIndex])
  end
  if AreaId then
    TriggerFuncs:DynamicNewTrigger(TRIGGER, AreaId)
  end
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_125
  local Args = {...}
  local BgmFadeDisScale = tonumber(Args[1])
  local BgmFadeMinVolume = tonumber(Args[2])
  local BgmFadeTime = tonumber(Args[3])
  TRIGGER:SetBgmVolumeFadeWithDis(BgmFadeDisScale, BgmFadeMinVolume, BgmFadeTime)
end
, OnlyClient = 2, 
StandEffect = {200029, 200029}
}
, 
[2194] = {EditSort = 17004, 
EventTips = {"σêáΘÖñΦºªσÅæσî║σƒƒid", "σê¢σ╗║ΦºªσÅæσî║σƒƒid"}
, Id = 2194, MaxCount = 1, Name = "σ«îµêÉΦºªσÅæΦºªσÅæσÖ¿π\128Éτ¢æσÉ¼ΦºªσÅæπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_126
  local Args = {...}
  TRIGGER:ResetBgmVolumeFadeWithDis()
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_127
  local Args = {...}
  local MonsterId = tonumber(Args[1])
  if not MonsterId then
    return 
  end
  TriggerFuncs:CreateFollowMonster(TRIGGER, MonsterId, Args[2], Args[3])
end
, OnlyClient = 2}
, 
[2195] = {AOIRadius = 10, EditSort = 99088, 
EventTips = {"µÇ¬τë⌐ID", "ΦíîΣ╕║µáæσÅéµò\176"}
, Id = 2195, MaxCount = 1, Name = "Φ╖ƒΘÜÅµÇ¬τë⌐ΦºªσÅæσÖ¿∩╝êµ╡ïΦ»ò∩╝\137", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_128
  local Args = {...}
  TriggerFuncs:AddEnterUid(TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_129
  local Args = {...}
  TriggerFuncs:RefuseEnterUid(TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2196] = {AOIRadius = 10, EditSort = 15005, 
EventTips = {"µÅÉτñ║ID(σà¼σà▒σÅìΘªê)", "σü£τòÖµù╢Θù┤"}
, Id = 2196, MaxCount = -1, Name = "µ¿¬σ╣àΦºªσÅæσÖ¿π\128ÉAOI-µùáΘÖÉπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_130
  local Args = {...}
  return TriggerFuncs:GetEnterNum(TRIGGER)
end
, OnlyClient = 1}
, 
[2197] = {
BornEffect = {10156, 10158, 10160}
, BornEffectTime = 0.5, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_131
  local Args = {...}
  TriggerFuncs:TransAllPlayerToPos(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], Args[4], Args[5], Args[6], Args[7], Args[8], Args[9])
end
, EditSort = 13007, EventEffectTime = 1, 
EventTips = {"µòæτü╛Φ┐¢σ║ª", "τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 2197, MaxCount = 1, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128Éµòæτü╛Φ┐¢σ║ªµö╛Φíîπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_132
  local Args = {...}
  do
    local IsLoop = Args[2] == "true" or Args[2] == true
    TRIGGER:PlayEffect({Id = Args[1], Loop = IsLoop, 
Rot = {0, (math.rad)(TRIGGER:GetFace()), 0}
})
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_133
  local Args = {...}
  TRIGGER:RemoveEffect(Args[1])
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[2198] = {AOIRadius = 10, AOIType = 0, EditSort = 15014, 
EventTips = {"σ»╣Φ»¥ID", "µÿ╛τñ║Θí║σ║Å"}
, Id = 2198, MaxCount = 1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128Éµ\128¬Φ┐¢σàÑπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_134
  local Args = {...}
  if TRIGGER.DelayTimeOnEvent then
    TRIGGER:DelayTimeOnEvent(tonumber(Args[1]))
  end
end
, OnlyClient = 2}
, 
[2199] = {AOIRadius = 10, EditSort = 99077, 
EventTips = {"µú\128µ╡ïΘù┤ΘÜ\148(ms)", "Θ£çσ▒Åµù╢Θò┐(ms)", "Θ£çσ▒Åσ╣àσ║ª", "Θ£çσ▒Åµ¼íµò░", "Θ£çσ▒Åτ▒╗σ₧ï", "µî»σ╣àΘÇÆσçÅ"}
, Id = 2199, MaxCount = -1, Name = "AOIµîüτ╗¡Θ£çσ▒ÅΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_135
  local Args = {...}
  local AreaIdList = (string.split)(Args[1] or "", ",")
  local TriggerAreaId = Args[2]
  if TRIGGER.FireSatisfyTrigger then
    TRIGGER:FireSatisfyTrigger(TARGETOBJ, AreaIdList, tonumber(TriggerAreaId))
  end
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_136
  local Args = {...}
  local AreaIdList = (string.split)(Args[1] or "", ",")
  TriggerFuncs:DeleteTriggerListID(TRIGGER, AreaIdList)
end
, OnlyClient = 2}
, 
[2200] = {EditSort = 99006, Id = 2200, MaxCount = -1, Name = "Σ╕ûτòîπÇÉΘ¥₧Φ┐╜Φ╕¬Σ╗╗σèíµîçσ╝òπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_137
  local Args = {...}
  local MaxCount = tonumber(Args[1]) or 1
  return TRIGGER:StatHeroTouchEventTime(TARGETOBJ, MaxCount)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2201] = {AOIRadius = 10, EditSort = 15024, 
EventTips = {"TIPSId", "µÿ╛τñ║µù╢Θò┐∩╝êτºÆ∩╝\137", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ"}
, Id = 2201, MaxCount = -1, Name = "µè\128Φâ╜µÆ¡µèÑΦºªσÅæσÖ¿πÇÉAOI-µùáΘÖÉπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_138
  local Args = {...}
  if TRIGGER.SetGroupId then
    TRIGGER:SetGroupId(tonumber(Args[1]))
  end
end
, OnlyClient = 1}
, 
[2202] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_139
  local Args = {...}
  do
    local IsOpen = Args[1] == "true" or Args[1] == true
    TriggerFuncs:OnDoShakeCamera(TRIGGER, TARGETOBJ, IsOpen, tonumber(Args[2]), tonumber(Args[3]), tonumber(Args[4]), tonumber(Args[5]), tonumber(Args[6]), tonumber(Args[7]))
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, EditSort = 15025, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤(τº\146)", "TIPSId", "µÿ╛τñ║µù╢Θò┐∩╝êτºÆ∩╝\137"}
, Id = 2202, MaxCount = -1, Name = "µè\128Φâ╜µÆ¡µèÑΦºªσÅæσÖ¿πÇÉσ╗╢µù\182-µùáΘÖÉπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_140
  local Args = {...}
  local HostageRescureValue = tonumber(Args[1])
  TRIGGER:InitSuccessRescuerHostage(HostageRescureValue)
end
, OnlyClient = 1}
, 
[2203] = {AOIRadius = 10, EditSort = 17001, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2203, MaxCount = 1, Name = "================================================================", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_141
  local Args = {...}
  local AddValue = tonumber(Args[1])
  local FlashId = tonumber(Args[2])
  local HostageId = tonumber(Args[3])
  TRIGGER:AddHostageRescueNum(AddValue, FlashId, HostageId)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_142
  local Args = {...}
  local TipId = tonumber(Args[1])
  local Time = tonumber(Args[2])
  TriggerFuncs:CombatBroadCast(TRIGGER, TipId, Time)
end
, OnlyClient = 2}
, 
[2204] = {EditSort = 18001, 
EventTips = {"σ»╗Φ╖»τé╣XYZ", "σêñµû¡ΦºªσÅæσÖ\168", "σ╖▓ΦºªσÅæΦüöσè\168", "Σ║îµ¼íΦºªσÅæΦüöσè¿", "µ£¬ΦºªσÅæΦüöσè\168", "ΦºªσÅæσÖ¿Θ½ÿσ║\166"}
, Id = 2204, MaxCount = -1, Name = "Σ║ñµìóµîëΘÆ«Φüöσè¿ΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_143
  local Args = {...}
  local AreaId = tonumber(Args[1])
  return (sceneobj.TriggerGroupMgr):GetTriggerEventCount(AreaId)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_144
  local Args = {...}
  do
    local AreaId = tonumber(Args[1])
    do return (sceneobj.TriggerGroupMgr):GetTriggerEventCount(AreaId) > 0 end
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_145
  local Args = {...}
  local EventKey = Args[1]
  local IsNotTri = Args[2]
  TRIGGER:InitScanEvent(EventKey, "ScanEvent", IsNotTri)
end
, OnlyClient = 2, 
StandEffect = {1185, 1185, 1185}
}
, 
[2205] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_146
  local Args = {...}
  local TargetId = tonumber(Args[1])
  TriggerFuncs:BindAttend(TRIGGER, TargetId)
end
, EditSort = 11013, 
EventTips = {"σëºµâàσÉ\141", "µ╕àΘÖñΦºªσÅæσÖ¿ID"}
, Id = 2205, MaxCount = 1, Name = "µ╕àΘÖñΦºªσÅæσÖ¿π\128Éσëºµâàτ╗ôµ¥ƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_147
  local Args = {...}
  TRIGGER:SetFillEffectAssignHeight(tonumber(Args[1]), Args[2])
end
, OnlyClient = 2}
, 
[2206] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_148
  local Args = {...}
  drama:PlayDrama(Args[1])
end
, EditSort = 11014, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 2206, MaxCount = 1, Name = "µë½µÅÅσê╖µ\128¬ΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_149
  local Args = {...}
  TRIGGER:SetEventEffect(Args[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_150
  local Args = {...}
  TRIGGER:EnableEffectTransparent(Args[1], tonumber(Args[2]) or 0.2)
end
, OnlyClient = 2}
, 
[2207] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_151
  local Args = {...}
  local BuffIds = (string.split)(Args[1], ",")
  local IsBuff = false
  local Obj = Args[2] or TARGETOBJ
  for k,v in ipairs(BuffIds) do
    if (SkillFuncs["µÿ»σÉªµ£ëbuff"])(nil, nil, nil, nil, Obj, tonumber(v)) == true then
      IsBuff = true
    end
  end
  do
    if BuffIds[(table.getn)(BuffIds)] == "false" or Args[1] == "" then
      return not IsBuff
    else
      return IsBuff
    end
  end
end
, EditSort = 17017, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "ΘÜÅΣ╗ÄID(µÇ¬τë⌐)", "µÅÅΦ┐░", "µè\128Φâ╜id"}
, Id = 2207, MaxCount = 1, Name = "ΘÜÅΣ╗ÄΣ║ñΣ║ÆΦºªσÅæσÖ¿∩╝ê1µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_152
  local Args = {...}
  local BuffId = (string.split)(Args[1], ",")
  for k,v in ipairs(BuffId) do
    TriggerFuncs:AddBuff(TRIGGER, global.Hero, tonumber(v))
  end
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_153
  local Args = {...}
  local BuffId = (string.split)(Args[1], ",")
  for k,v in ipairs(BuffId) do
    TriggerFuncs:DelBuff(TRIGGER, global.Hero, tonumber(v))
  end
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2208] = {AOIRadius = 10, AOIRange = 40, EditSort = 11015, 
EventTips = {"NpcId", "σè¿Σ╜£/τ╝⌐µö╛", "ΦíîΣ╕║µá\145", "ΦíîΣ╕║µáæσÅéµò\176", "τó░µÆ₧τ▒╗σ₧ï", "Θ¥óσÉæ", "Φ╖»Σ║║npcµ░öµ│í", "AOIΦîâσ¢┤", "NPCµÿ╛τñ║σ▒éτ║º", "Φ╛àσè⌐σî║σƒƒId", "µÿ»σÉªσê¥σºïΘÜÉΦùÅ"}
, Id = 2208, MaxCount = -1, Name = "µë½µÅÅNPCΦºªσÅæσÖ\168", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_154
  local Args = {...}
  TriggerFuncs:CreateCollectObj(TRIGGER, tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]))
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_155
  local Args = {...}
  TriggerFuncs:ClearCollectObj(TRIGGER)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_156
  local Args = {...}
  TRIGGER:SetVisible(Args[1])
end
, OnlyClient = 3, OnlyHero = true}
, 
[2209] = {EditSort = 11016, 
EventTips = {"σêñµû¡ΦºªσÅæσÖ\168", "σ╖▓ΦºªσÅæΦüöσè\168", "µ£¬ΦºªσÅæΦüöσè\168", "σêáΘÖñΦºªσÅæσî║σƒƒid", "σê¢σ╗║ΦºªσÅæσî║σƒƒid", "σê╖µ\128¬σî║σƒƒid"}
, Id = 2209, MaxCount = -1, Name = "µùáµ¥íΣ╗╢σèƒΦâ╜ΦºªσÅæσÖ¿πÇÉµùáΘÖÉπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_157
  local Args = {...}
  TriggerFuncs:SaveDemoPosition(TRIGGER)
end
, OnlyClient = 2}
, 
[2210] = {EditSort = 18002, 
EventTips = {"σ»╗Φ╖»τé╣XYZ", "σ╝\128σà│ΦºªσÅæσÖ¿1", "σ╝\128σà│ΦºªσÅæσÖ¿2", "µ£¬ΦºªσÅ\1451µÆ¡µö╛", "Φº\1661Σ╣ƒΦºª2µÆ¡µö╛", "Φº\1661µ£¬Φºª2µÆ¡µö╛", "ΦºªσÅæσÖ¿Θ½ÿσ║\166"}
, Id = 2210, MaxCount = -1, Name = "Σ║ñµìóµîëΘÆ«ΦüèΘ¬ÜΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_158
  local Args = {...}
  return TriggerFuncs:IsHeroDead()
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_159
  local Args = {...}
  TriggerFuncs:SetHeroNoHurt()
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_160
  local Args = {...}
  TriggerFuncs:ReSetHeroNoHurt()
end
, OnlyClient = 2, 
StandEffect = {1185, 1185, 1185}
}
, 
[2211] = {EditSort = 13008, Id = 2211, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128Éµùáτó░µÆ₧∩╝îµùáτë╣µòêπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_161
  local Args = {...}
  return TRIGGER:IsScanned()
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_162
  local Args = {...}
  local FindPos = nil
  if Args[6] and Args[6] ~= "" then
    FindPos = (string.split)(Args[6], ",")
    FindPos[1] = tonumber(FindPos[1])
    FindPos[2] = tonumber(FindPos[2])
    FindPos[3] = tonumber(FindPos[3])
  end
  TriggerFuncs:CreateFollow2DButton(TRIGGER, tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]), Args[4], tonumber(Args[5]), FindPos, Args[7])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_163
  local Args = {...}
  TriggerFuncs:ClearFollow2DButton(TRIGGER)
end
, OnlyClient = 1}
, 
[2212] = {AOIRadius = 10, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_164
  local Args = {...}
  TriggerFuncs:CreateQte(TRIGGER, tonumber(Args[1]), Args[2], Args[3], Args[4], Args[5], tonumber(Args[6]), Args[7])
end
, EditSort = 18003, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "σêñµû¡buff", "σêáΘÖñΦºªσÅæσÖ¿σî║σƒƒid", "σ╝║σê╢µû╜µö╛µè\128Φâ\189", "σèábuffID", "σê¢σ╗║σñÜΦºªσÅæσÖ¿"}
, Id = 2212, MaxCount = 1, Name = "Σ║ñµìóµîëΘÆ«µ╡╖µ╗¿σà¼σ¢¡µÉ¼Σ╕£ΦÑ┐ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_165
  local Args = {...}
  TriggerFuncs:RecordInteraction(TRIGGER)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_166
  local Args = {...}
  return TriggerFuncs:CheckInteraction(TRIGGER, tonumber(Args[1]))
end
, OnlyClient = 2, 
StandEffect = {200017, 200017, 200017}
}
, 
[2213] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_167
  local Args = {...}
  local MonsterPos = (string.split)(Args[3], ",")
  local MonsterId = tonumber(Args[1])
  local MonsterFace = tonumber(Args[2])
  local GetX = tonumber(MonsterPos[1])
  local GetY = tonumber(MonsterPos[2])
  drama:CreateMonster(MonsterId, GetX, GetY, MonsterFace, nil, "idle", Callback)
end
, EditSort = 17015, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤", "σèábuffID", "σêábuffID", "σ╝║σê╢µû╜µö╛µè\128Φâ\189", "σê¢σ╗║σñÜΦºªσÅæσÖ¿", "σêáΘÖñΦºªσÅæσÖ¿σî║σƒƒid", "τ¢┤µÄÑΘÇ\128σ£║µ\128¬τë⌐", "Θ¬ÜΦ»¥ID", "Φüöσè¿ΦºªσÅæ"}
, Id = 2213, MaxCount = 1, Name = "σìòΣ║║σë»µ£¼σñÜσèƒΦâ╜ΦºªσÅæσÖ¿πÇÉσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_168
  local Args = {...}
  return TriggerFuncs:GetFollowObj(TRIGGER)
end
, OnlyClient = 2}
, 
[2214] = {AOIRadius = 10, EditSort = 17016, 
EventTips = {"σêñµû¡ΦºªσÅæσÖ\168", "σ╖▓ΦºªσÅæΦüöσè\168", "µ£¬ΦºªσÅæΦüöσè\168", "σêáΘÖñΦºªσÅæσî║σƒƒid", "σê¢σ╗║ΦºªσÅæσî║σƒƒid", "σê╖µ\128¬σî║σƒƒid"}
, Id = 2214, MaxCount = -1, Name = "σêñµû¡Φüöσè¿ΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_169
  local Args = {...}
  return TRIGGER:GetAreaId()
end
, OnlyClient = 2}
, 
[2215] = {EditSort = 99086, 
EventTips = {"qteτ▒╗σ₧ï", "Θó¥σñûσÅéµò░", "µù╢Θù┤σî║Θù┤", "xΦ╜┤σî║Θù\180", "yΦ╜┤σî║Θù\180", "ΘÇƒτÄç", "τ╗ôµ₧£σÅéµò░"}
, Id = 2215, MaxCount = -1, Name = "QTEΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_170
  local Args = {...}
  local AreaId = TRIGGER:GetAreaId()
  local Counter = (sceneobj.TriggerGroupMgr):GetTriggerEventCount(AreaId) + 1
  local VarList = (string.split)(Args[1], ",")
  if Counter <= (table.getn)(VarList) then
    return VarList[Counter]
  else
    return VarList[#VarList]
  end
end
, OnlyClient = 1, OnlyHero = true}
, 
[2216] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_171
  local Args = {...}
  TriggerFuncs:ShowSleepinessUI(TRIGGER, tonumber(Args[1]))
end
, EditSort = 18006, 
EventTips = {"µÇ¬τë⌐ID", "µÇ¬τë⌐µ£¥σÉæ", "µÇ¬τë⌐Σ╜ìτ╜«"}
, Id = 2216, MaxCount = 1, Name = "σëºµâàσê╖µ\128¬ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_172
  local Args = {...}
  TriggerFuncs:HideSleepinessUI(TRIGGER)
end
, OnlyClient = 2}
, 
[2217] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_173
  local Args = {...}
  return TriggerFuncs:GetCurHourTime()
end
, EditSort = 11019, 
EventTips = {"Σ║ñΣ║Æµ¼íµò░", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2217, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉµúÇµƒÑΣ║ñΣ║Æµ¼íµò░π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_174
  local Args = {...}
  TriggerFuncs:CreateSillyPuttyObj(TRIGGER, tonumber(Args[1]), tonumber(Args[2]))
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_175
  local Args = {...}
  TriggerFuncs:ClearSillyPuttyObj(TRIGGER)
end
, OnlyClient = 2}
, 
[2218] = {AOIRadius = 10, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_176
  local Args = {...}
  TriggerFuncs:ByTimeCreateTrigger(TRIGGER, Args[1], Args[2])
end
, EditSort = 18004, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "σêñµû¡buff", "σêáΘÖñΦºªσÅæσÖ¿σî║σƒƒid", "σ╝║σê╢µû╜µö╛µè\128Φâ\189", "σèábuffID", "σê¢σ╗║σñÜΦºªσÅæσÖ¿"}
, Id = 2218, MaxCount = 1, Name = "Σ║ñµìóµîëΘÆ«µ╡╖µ╗¿σà¼σ¢¡Φ┤ºΦ╜ªΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_177
  local Args = {...}
  local X = tonumber(Args[1])
  local Y = tonumber(Args[2])
  local BtnWidth = tonumber(Args[3])
  local BtnHeight = tonumber(Args[4])
  local SkillId = tonumber(Args[5])
  local CDTime = tonumber(Args[6])
  local HandleType = tonumber(Args[7])
  TriggerFuncs:CreateExtendSkillBtn(TRIGGER, TARGETOBJ, X, Y, BtnWidth, BtnHeight, SkillId, CDTime, HandleType)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_178
  local Args = {...}
  local Text = Args[1]
  TriggerFuncs:SetEnterAlertText(Text)
end
, OnlyClient = 2, 
StandEffect = {200028, 200028}
}
, 
[2219] = {EditSort = 18005, 
EventTips = {"τ¢«µáçid", "σ╝║σê╢Θçèµö╛µè\128Φâ╜σêùΦí\168", "Θ¬ÜΦ»¥σêùΦí¿", "Φüöσè¿ΦºªσÅæσêùΦí¿"}
, Id = 2219, MaxCount = -1, Name = "µá╣µì«ΦºªσÅæµ¼íµò░ΦºªσÅæΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_179
  local Args = {...}
  TriggerFuncs:WaitFighterStatus(TRIGGER)
end
, OnlyClient = 2}
, 
[2220] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_180
  local Args = {...}
  local TaskId = tonumber(Args[1])
  if TaskId then
    local TaskCfg = (ALLSETTING.TASK_CFG)[TaskId]
    if TaskCfg and TaskCfg.TagRestrict and (utils.TaskUtil):ShowTagRestrictAlert(TaskCfg.TagRestrict) then
      return true
    end
  end
end
, EditSort = 15015, 
EventTips = {"σëºµâàσÉ\141", "σ»╣Φ»¥ID", "µÿ╛τñ║Θí║σ║Å"}
, Id = 2220, MaxCount = 1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128Éσëºµâàτ╗ôµ¥ƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_181
  local Args = {...}
  local Time = tonumber(Args[1])
  local MsgId = tonumber(Args[2])
  local IsStopInDrama = tonumber(Args[3]) == 1
  do
    local FailTriggerAredIds = (string.split)(Args[4] or "", ",")
    TriggerFuncs:ShowTriggerCountTime(TRIGGER, Time, MsgId, IsStopInDrama, FailTriggerAredIds)
    -- DECOMPILER ERROR: 2 unprocessed JMP targets
  end
end
, OnlyClient = 2}
, 
[2221] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"buffId", "µÇ¬τë⌐ID", "ΦíîΣ╕║µáæσÅéµò\176", "σ╗╢Φ┐ƒσ¢░σ\128\166"}
, Id = 2221, MaxCount = -1, Name = "σìêσñ£σ¢░σ\128ªΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_182
  local Args = {...}
  local Reason = Args[1]
  TriggerFuncs:StopTriggerCountTime(TRIGGER, Reason)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_183
  local Args = {...}
  local NpcId = Args[1]
  local IsEnter = Args[2]
  ;
  (task.NpcTalkMgr):NpcAction(NpcId, IsEnter)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_184
  local Args = {...}
  if not objdata then
    return 
  end
  local TaskID = tonumber(Args[1])
  local ExploringID = tonumber(Args[2])
  local DaramName = Args[3]
  TriggerFuncs:ExploringEnter(TaskID, ExploringID, DaramName)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2222] = {EditSort = 11020, 
EventTips = {"τ¢«µáçid", "µè\128Φâ╜id", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ"}
, Id = 2222, MaxCount = -1, Name = "Φüöσè¿ΦºªσÅæµÇ¬τë⌐σ╝║σê╢Θçèµö╛µè\128Φâ╜ΦºªσÅæσÖ¿πÇÉµùáΘÖÉπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_185
  local Args = {...}
  local IsShow = Args[1]
  TriggerFuncs:ShowMiniMap(TRIGGER, IsShow)
end
, OnlyClient = 2}
, 
[2223] = {AOIRadius = 10, 
AoiHeight = {-100, 300}
, EditSort = 99060, Id = 2223, MaxCount = -1, Name = "σëºµâàΦºªσÅæσÖ¿π\128ÉAOI-µùáΘÖÉ-µùáΣ║║µ£║τö¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_186
  local Args = {...}
  local IconName = Args[1]
  TriggerFuncs:ShowMapTag(TRIGGER, IconName)
end
, OnlyHero = true}
, 
[2224] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"Φ┐¢σàÑµù╢Θçèµö╛µèÇΦâ╜τÜäτ¢«µáçid", "Φ┐¢σàÑµù╢Θçèµö╛τÜäµè\128Φâ╜id", "τª╗σ╝Çµù╢Θçèµö╛µèÇΦâ╜τÜäτ¢«µáçid", "τª╗σ╝Çµù╢Θçèµö╛τÜäµè\128Φâ╜id"}
, Id = 2224, MaxCount = -1, Name = "AOIΣ║Æσè¿µè\128Φâ╜ΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_187
  local Args = {...}
  TriggerFuncs:HideMapTag(TRIGGER)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_188
  local Args = {...}
  if not objdata then
    return 
  end
  local TaskID = tonumber(Args[1])
  local DaramName = Args[2]
  TriggerFuncs:TowerActiveTask(TaskID, DaramName)
end
, OnlyClient = 1, OnlyHero = true, 
StandEffect = {200087}
}
, 
[2225] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_189
  local Args = {...}
  local IsOpen = Args[1] == "true" and true or false
  local Time = tonumber(Args[2])
  local Width = tonumber(Args[3])
  local Height = tonumber(Args[4])
  TriggerFuncs:CreateBlockPanel(IsOpen, Time, Width, Height)
end
, EditSort = 17008, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÿ»σÉªΦ╜¼σÉæ"}
, Id = 2225, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«Φüöσè¿ΦºªσÅæσÖ¿∩╝ê1µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_190
  local Args = {...}
  TriggerFuncs:ShowPVPGuideDrama()
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_191
  local Args = {...}
  do
    local IsOpen = tonumber(Args[1]) == 1
    TriggerFuncs:CalamityIntervalDown(TRIGGER, TARGETOBJ, IsOpen, tonumber(Args[2]), tonumber(Args[3]))
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2226] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_192
  local Args = {...}
  do
    local IsOpen = tonumber(Args[1]) == 1
    TriggerFuncs:CalamityIntervalUp(TRIGGER, TARGETOBJ, IsOpen, tonumber(Args[2]), tonumber(Args[3]), tonumber(Args[4]))
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137"}
, Id = 2226, MaxCount = 1, Name = "σìêσñ£σ¢░σ\128ªµ╕àτÉåπ\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_193
  local Args = {...}
  do
    local IsShow = tonumber(Args[1]) == 1
    TriggerFuncs:CalamityUIShow(IsShow)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnlyClient = 2}
, 
[2227] = {EditSort = 18002, 
EventTips = {"σ»╗Φ╖»τé╣XYZ", "σ╝\128σà│ΦºªσÅæσÖ¿1", "σ╝\128σà│ΦºªσÅæσÖ¿2", "µ£¬ΦºªσÅ\1451µÆ¡µö╛", "Φº\1661Σ╣ƒΦºª2µÆ¡µö╛", "Φº\1661µ£¬Φºª2µÆ¡µö╛"}
, Id = 2227, MaxCount = 1, Name = "Σ║ñµìóµîëΘÆ«ΦüèΘ¬ÜΦºªσÅæσÖ¿Σ╕Çµ¼íµÄÑΣ╗╗σèíπÇÉAOIπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_194
  local Args = {...}
  local HeroId = tonumber(Args[1])
  return TriggerFuncs:IsSameMerId(TRIGGER, TARGETOBJ, HeroId)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_195
  local Args = {...}
  do
    local Action = (string.split)(Args[2] or "", "|")
    TriggerFuncs:RangeNpcPlayAnimationAndRemove(TRIGGER, tonumber(Args[1]), Action, tonumber(Args[3]) == 1, tonumber(Args[4]))
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_196
  local Args = {...}
  ;
  (campaign.CampaignDataMgr):DispatchEvent((campaign.Event).TRIGGER_ON, TRIGGER:GetUid(), TRIGGER:GetAreaId())
end
, OnlyClient = 2, 
StandEffect = {1188, 1188, 1188}
}
, 
[2228] = {EditSort = 18002, 
EventTips = {"σ»╗Φ╖»τé╣XYZ", "σ╝\128σà│ΦºªσÅæσÖ¿1", "σ╝\128σà│ΦºªσÅæσÖ¿2", "µ£¬ΦºªσÅ\1451µÆ¡µö╛", "Φº\1661Σ╣ƒΦºª2µÆ¡µö╛", "Φº\1661µ£¬Φºª2µÆ¡µö╛"}
, Id = 2228, MaxCount = 1, Name = "Σ║ñµìóµîëΘÆ«ΦüèΘ¬ÜΦºªσÅæσÖ¿Σ╕Çµ¼íΣ║ñΣ╗╗σèíπÇÉAOIπÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_197
  local Args = {...}
  if Args[1] == 1 then
    (campaign.CampaignDataMgr):DispatchEvent((campaign.Event).TRIGGER_ENTER, TRIGGER:GetUid(), TRIGGER:GetAreaId(), TRIGGER)
  else
    ;
    (campaign.CampaignDataMgr):DispatchEvent((campaign.Event).TRIGGER_LEAVE, TRIGGER:GetUid(), TRIGGER:GetAreaId(), TRIGGER)
  end
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_198
  local Args = {...}
  return TriggerFuncs:GetAllPlayerNum()
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_199
  local Args = {...}
  TRIGGER:SetStandEffectId(tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]))
end
, OnlyClient = 2, 
StandEffect = {1189, 1189, 1189}
}
, 
[2229] = {AOIRadius = 10, 
AoiHeight = {-100, 500}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_200
  local Args = {...}
  return (loginPush.LoginPushMgr):IsHaveLoginShowView()
end
, EditSort = 17005, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "Φüöσè¿ΦºªσÅæσî║σƒƒ", "σ╗╢Φ┐ƒΦºªσÅæ", "σê¢σ╗║σî║σƒƒid", "τë╣µòêΘ½ÿσ║ª"}
, Id = 2229, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«σ╜òΘƒ│ΦºªσÅæσÖ¿∩╝ê1µ¼í∩╝ë", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_201
  local Args = {...}
  TriggerFuncs:TriggerJumpOff(TRIGGER, tonumber(Args[1]), Args[2], tonumber(Args[3]), tonumber(Args[4]))
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_202
  local Args = {...}
  local TaskId = tonumber(Args[1])
  if TaskId then
    return (task.TaskMgr):GetTaskDataById(TaskId)
  end
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_203
  local Args = {...}
  local IsOpen = Args[1]
  local PerAddEnergy = Args[2]
  local PerCutEnergy = Args[3]
  local Count = Args[4]
  local BuffList = Args[5]
  local HoldFrame = Args[6]
  TriggerFuncs:CreateParkourGameUI(TARGETOBJ, IsOpen, PerAddEnergy, PerCutEnergy, Count, BuffList, HoldFrame)
end
, OnlyClient = 2, 
StandEffect = {200029, 200029}
}
, 
[2247] = {AOIRadius = 10, EditSort = 99001, 
EventTips = {"Σ╗╗σèíσêùΦí¿", "ΘÜÉΦùÅτë╣µòê", "ΘÜÉΦùÅNPCσî║σƒƒ", "τí«Φ«ñµíå∩╝êσ»╣σ║önpcσ»╣Φ»¥ID∩╝\137"}
, Id = 2247, MaxCount = 1, Name = "Σ╕ûτòîπÇÉΣ╕Çµ¼íµ\128ºΣ╗╗σèíΦºªσÅæσÖ¿πÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_204
  local Args = {...}
  local SrcPosX = tonumber(Args[1])
  local SrcPosY = tonumber(Args[2])
  local SrcPosZ = tonumber(Args[3])
  local TargetPosX = tonumber(Args[4])
  local TargetPosY = tonumber(Args[5])
  local TargetPosZ = tonumber(Args[6])
  cameraMgr:LookAt({SrcPosX, SrcPosY, SrcPosZ}, {TargetPosX, TargetPosY, TargetPosZ})
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_205
  local Args = {...}
  local Param = Args[1]
  TriggerFuncs:RemoveNpcArea(Param)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_206
  local Args = {...}
  local Param = Args[1]
  TriggerFuncs:ResetNpcArea(Param)
end
, OnlyHero = true, 
StandEffect = {200029, 200029}
}
, 
[2254] = {AOIRadius = 10, Condition = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_207
  local Args = {...}
  local AreaId = tonumber(Args[1])
  local PosAreaId = tonumber(Args[2])
  ;
  (group.GroupUtils):GotoArea(AreaId, PosAreaId)
end
, EditSort = 92254, 
EventTips = {"Σ╗╗σèíId", "µÄóτ┤óΣ║ïΣ╗╢ID", "σëºµâàσÉ\141", "ΘÜÉΦùÅτë╣µòê"}
, Id = 2254, MaxCount = -1, Name = "µÄóτ┤óΣ╗╗σèíΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_208
  local Args = {...}
  TRIGGER:CreateGroupPortalCountDownView(Args[1], Args[2], Args[3])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_209
  local Args = {...}
  TRIGGER:DestroyGroupPortalCountDownView()
end
, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2255] = {AOIRadius = 10, Condition = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_210
  local Args = {...}
  TriggerFuncs:WaitActionCameraStatus(TRIGGER, TARGETOBJ, Args[1])
end
, EditSort = 92255, 
EventTips = {"Σ╗╗σèíId", "σëºµâàσÉ\141", "ΘÜÉΦùÅτë╣µòê"}
, Id = 2255, MaxCount = -1, Name = "Σ┐íσÅ╖σíöΣ╗╗σèíΦºªσÅæσÖ¿", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_211
  local Args = {...}
  do
    local IsOpen = Args[1] == "true"
    drama:EnableAi(IsOpen)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_212
  local Args = {...}
  local IsLoop = Args[1] == "true"
  local IsKeepStatus = Args[5] == "true"
  do
    local IsStopInEnd = Args[7] == "true"
    drama:EntityPlayAnimation(Args[1], Args[2], IsLoop, Args[4], IsKeepStatus, tonumber(Args[6]), IsStopInEnd)
    -- DECOMPILER ERROR: 3 unprocessed JMP targets
  end
end
, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2273] = {AOIRadius = 10, Condition = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_213
  local Args = {...}
  TriggerFuncs:SetAllPlayPos(TRIGGER, TARGETOBJ, tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]))
end
, EditSort = 99999, 
EventTips = {"Σ╗╗σèíId", "Σ╗╗σèíΦ┐¢σ║ª", "σëºµâàσÉìσ¡ù", "ΘÜÉΦùÅτë╣µòê", "NpcId", "µ£¥σÉæ", "σç║τöƒσè¿Σ╜£"}
, Id = 2273, MaxCount = 1, Name = "πÇÉΣ╕ûτòîπ\128æΣ╕Çµ¼íµ\128ºΣ╗╗σèíσëºµâàΦºªσÅæσÖ¿", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_214
  local Args = {...}
  TriggerFuncs:SetWaitFighterStatusEvent(TRIGGER)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_215
  local Args = {...}
  TriggerFuncs:TriggerAllAOILeave(TRIGGER)
end
, OnlyClient = 1, OnlyHero = true, 
StandEffect = {10000203, 10000203, 10000203}
}
, 
[2299] = {AOIRadius = 10, EditSort = 11017, 
EventTips = {"µ╕àΘÖñΦºªσÅæσÖ¿ID"}
, Id = 2299, MaxCount = 1, Name = "µ╕àΘÖñΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_216
  local Args = {...}
  TRIGGER:CreateTriggerUIComp(Args[1])
end
, OnlyClient = 2, OnlyHero = true}
, 
[2300] = {AOIRadius = 10, EditSort = 14019, 
EventTips = {"buffId"}
, Id = 2300, Name = "BUFFΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_217
  local Args = {...}
  TRIGGER:DestroyTriggerUIComp()
end
}
, 
[2301] = {AOIRadius = 10, AOIRange = 40, EditSort = 99999, 
EventTips = {"ΘççΘ¢åτë⌐Id", "ΘççΘ¢åτé╣Id", "Σ╗╗σèíId"}
, Id = 2301, MaxCount = -1, Name = "ΘççΘ¢åτë⌐ΦºªσÅæσÖ¿∩╝êτ¿ïσ║Åτö¿∩╝\137", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_218
  local Args = {...}
  TriggerFuncs:TriggerSitDown(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3], Args[4])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_219
  local Args = {...}
  if TARGETOBJ and TARGETOBJ.GetCanSit then
    return TARGETOBJ:GetCanSit()
  end
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_220
  local Args = {...}
  TriggerFuncs:PlayEffectByTriggerPos(TRIGGER, tonumber(Args[1]), tonumber(Args[2]))
end
, OnlyClient = 1, OnlyHero = true}
, 
[2302] = {AOIRadius = 10, EditSort = 14018, 
EventTips = {"µ╖╗σèábuff", "σêáΘÖñbuff", "σê¢σ╗║ΦºªσÅæσÖ\168", "σêáΘÖñΦºªσÅæσÖ\168", "Φüöσè¿ΦºªσÅæ", "σê╖µ\128¬σî║σƒƒid", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2302, Name = "σñÜσèƒΦâ╜ΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_221
  local Args = {...}
  TriggerFuncs:TriggerLeaguePvpSafeArea(TRIGGER, TARGETOBJ, Args[1], Args[2], Args[3])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_222
  local Args = {...}
  TriggerFuncs:TriggerOwnerCallMissile(TRIGGER, tonumber(Args[1]), tonumber(Args[2]), tonumber(Args[3]), Args[4])
end
, OnlyClient = 2}
, 
[2303] = {AOIRadius = 10, EditSort = 100001, 
EventTips = {"µ╖╗σèábuff", "σêáΘÖñbuff", "σê¢σ╗║ΦºªσÅæσÖ\168", "σêáΘÖñΦºªσÅæσÖ\168", "Φüöσè¿ΦºªσÅæ", "σê╖µ\128¬σî║σƒƒid", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2303, Name = "µ╝öτñ║σà│Φ┐¢σ║ªΣ┐¥σ¡ÿΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_223
  local Args = {...}
  do
    local NeedOwner = Args[2] == true or Args[2] == "true"
    TriggerFuncs:AddAoiObjBuff(TRIGGER, tonumber(Args[1]), NeedOwner)
    -- DECOMPILER ERROR: 1 unprocessed JMP targets
  end
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_224
  local Args = {...}
  TriggerFuncs:DelAoiObjBuff(TRIGGER, tonumber(Args[1]))
end
}
, 
[2304] = {AOIRadius = 10, EditSort = 18019, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145"}
, Id = 2304, MaxCount = 1, Name = "================================================================", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_225
  local Args = {...}
  TRIGGER:FindThunderNPCItemFullEvent(Args[1], "FindThunderNPCFullEvent", tonumber(Args[2]))
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_226
  local Args = {...}
  TriggerFuncs:CreateFindThunderPro(TRIGGER, Args[1], Args[2], tonumber(Args[3]), Args[4], Args[5])
end
, OnlyClient = 2}
, 
[2305] = {AOIRadius = 10, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_227
  local Args = {...}
  TriggerFuncs:CreateFindThunderNPCItem(TRIGGER, Args[1], tonumber(Args[2]), tonumber(Args[3]), tonumber(Args[4]), tonumber(Args[5]), Args[6], Args[7])
end
, EditSort = 18015, 
EventTips = {"σ╗╢µù╢µù╢Θù┤", "ΘÇâΦ╖æΦÇàId", "Φ╖»τé╣σ║Åσêù", "σè¿Σ╜£σ║Åσêù", "Θ¥óσÉæσ║Åσêù", "ΘÇƒσ║ª", "Φ╖»σ╛äId"}
, Id = 2305, MaxCount = 1, Name = "ΘÇâΦ╖æNPCΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_228
  local Args = {...}
  TriggerFuncs:AddFindThunderNPCItemPro(TRIGGER, Args[1], tonumber(Args[2]))
end
, OnlyHero = true}
, 
[2306] = {AOIRadius = 10, EditSort = 15026, Id = 2306, MaxCount = 1, Name = "σ╝▒τ«¡σñ┤ΦºªσÅæσÖ¿πÇÉΦ╕⌐Σ╕ïµ╢êσñ▒π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_229
  local Args = {...}
  TRIGGER:CreateTrigger2DUIComp(Args[1], Args[2], Args[3], Args[4])
end
, OnlyClient = 2, 
StandEffect = {1041}
}
, 
[2307] = {EditSort = 15027, Id = 2307, MaxCount = 1, Name = "σ╝▒τ«¡σñ┤ΦºªσÅæσÖ¿πÇÉΦ╕⌐Σ╕ïΣ╕ìµ╢êσñ▒πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_230
  local Args = {...}
  TRIGGER:DestroyTrigger2DUIComp()
end
, OnlyClient = 2, 
StandEffect = {1041}
}
, 
[2308] = {AOIRadius = 10, EditSort = 17019, 
EventTips = {"µ¥âΘçìσêùΦí¿", "ΦºªσÅæσÖ¿σêùΦí\168", "σ¢║σ«ÜΦºªσÅæΦºªσÅæσÖ\168"}
, Id = 2308, MaxCount = 1, Name = "ΘÜÅµ£║σê¢σ╗║ΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_231
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, OnlyClient = 2, OnlyHero = true}
, 
[2309] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_232
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[7])
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 18005, 
EventTips = {"σëºµâàid", "Φüöσè¿ΦºªσÅæσÖ¿ID"}
, Id = 2309, MaxCount = 1, Name = "σëºµâàτ╗ôµ¥ƒΦüöσè¿ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_233
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, OnlyClient = 2}
, 
[2310] = {AOIRadius = 10, EditSort = 16002, 
EventTips = {"ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σêçµìóµù╢Θù┤"}
, Id = 2310, MaxCount = 1, Name = "τ¢╕σ»╣Θò£σñ┤ΦºªσÅæσÖ¿π\128ÉΣ╕Çµ¼íπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_234
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[5])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_235
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4], ARG[8])
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2311] = {AOIRadius = 10, AOIRange = 50, EditSort = 99999, 
EventTips = {"ΦºªσÅæσÖ¿σî║σƒƒID", "σê¢σ╗║µù╢µ«╡"}
, Id = 2311, MaxCount = -1, Name = "µîëµù╢σê¢σ╗║ΦºªσÅæσÖ\168", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_236
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[135])(API, TRIGGER, TARGETOBJ, 0.7)
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_237
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[6])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_238
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[9])
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[7], ARG[8])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true}
, 
[2312] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_239
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 14007, 
EventTips = {"µÇ¬τë⌐Id", "σç║τöƒΣ╕¬µò░", "σ╗╢µù╢µù╢Θù┤", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║σî║σƒƒID(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║idσêùΦí¿(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)"}
, Id = 2312, MaxCount = -1, Name = "ΘÇ\128σ£║ΦºªσÅæσÖ¿πÇÉµ\128¬σç║τöƒσ╗╢µù╢µùáΘÖÉπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_240
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[15])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2313] = {AOIRadius = 10, AOIRange = 80, EditSort = 99999, 
EventTips = {"NpcId", "σè¿Σ╜£/τ╝⌐µö╛", "ΦíîΣ╕║µá\145", "ΦíîΣ╕║µáæσÅéµò\176", "τó░µÆ₧τ▒╗σ₧ï", "Θ¥óσÉæ", "Φ╖»Σ║║npcµ░öµ│í", "AOIΦîâσ¢┤", "NPCµÿ╛τñ║σ▒éτ║º", "Φ╛àσè⌐σî║σƒƒId"}
, Id = 2313, MaxCount = -1, Name = "µ£¼σ£░npcΦºªσÅæσÖ\168(σñ\167)", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_241
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[15])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_242
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_243
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[17])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 3, OnlyHero = true}
, 
[2314] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_244
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 17006, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "τ¢æσÉ¼σî║σƒƒid", "ΦºªσÅæσî║σƒƒid", "σê¢σ╗║σî║σƒƒid"}
, Id = 2314, MaxCount = -1, Name = "σ«îµêÉΦºªσÅæ-µò░ΘçÅΦºªσÅæσÖ¿∩╝ê1µ¼í∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_245
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[20])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2315] = {AOIRadius = 10, AOIRange = 20, EditSort = 99089, 
EventTips = {"σ£║µÖ»Id", "Φ╖│Φ╜¼Σ╜ìτ╜«(xyΘ¥óσÉæ)", "UIΣ╜ìτ╜«(xyzΘ¥óσÉæ)", "σ╖▓Σ╕ìτö\168", "σ╖▓Σ╕ìτö\168", "σêçµìóΦ╖¥τª╗", "σ╖▓Σ╕ìτö\168", "σ╖▓Σ╕ìτö\168", "σ╖▓Σ╕ìτö\168"}
, Id = 2315, MaxCount = -1, Name = "τö╡τÄ⌐σƒÄσ£║µÖ»Φ╖│Φ╜¼Σ╝áΘÇüΘù¿", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_246
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_247
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
  ;
  (API[215])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_248
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2316] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_249
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 11018, 
EventTips = {"µÇ¬τë⌐Id", "τá┤τ¢╛µ¼íµò░", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161"}
, Id = 2316, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉµ\128¬τá┤τ¢╛π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_250
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_251
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[28])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnlyClient = 2}
, 
[2317] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_252
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 99048, 
EventTips = {"σëºµâàσÉìτº░", "µòæτü╛Φ┐¢σ║ªσèáσ\128\188"}
, Id = 2317, Name = "µòæτü╛Φ┐¢σ║ªσó₧σèá(σëºµâàτ╗ôµ¥ƒ)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_253
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2320] = {AOIRadius = 10, EditSort = 16015, 
EventTips = {"ΦºåΦ╖¥σÇìτÄç", "Θ½ÿσ║ªσÇìτÄç", "ΦºÆσ║ª", "µù╢Θù┤"}
, Id = 2320, MaxCount = 1, Name = "Θò£σñ┤πÇÉΦ«╛τ╜«σà│σìíΘò£σñ┤σ\128ìτÄçπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_254
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], true)
end
, OnlyClient = 1}
, 
[2321] = {AOIRadius = 10, EditSort = 16016, 
EventTips = {"µ╕àΘÖñΘ¥₧PVPΘò£σñ┤τí¼σ\128ìτÄç"}
, Id = 2321, MaxCount = 1, Name = "Θò£σñ┤πÇÉµ╕àΘÖñσà│σìíΘò£σñ┤σ\128ìτÄçπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_255
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  if ARG[4] == "1" then
    (API[53])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[5], ARG[6])
  end
end
, OnlyClient = 1}
, 
[2323] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_256
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[53])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "µù╢Θù┤", "µÅÅΦ┐░ID", "µÿ»σÉªσëºµâàΣ╕¡µÜéσü\156", "σñ▒Φ┤Ñσê¢σ╗║ΦºªσÅæσÖ\168"}
, Id = 2323, MaxCount = -1, Name = "ΘÖÉµù╢σç╗µ¥ÇµÇ¬τë⌐σÇÆΦ«íµù╢ΦºªσÅæσÖ¿(µÇ¬ΦíÇΘçÅτÖ╛σêåµ»ö)", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_257
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_258
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_259
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
}
, 
[2324] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_260
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[6])
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "ΦºªσÅæσÖ¿ID"}
, Id = 2324, MaxCount = 1, Name = "σ╗╢µù╢σêáΘÖñµîçσ«ÜΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_261
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[5])
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2325] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_262
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137"}
, Id = 2325, MaxCount = -1, Name = "σ╗╢µù╢µ╕àΘÖñDBMΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_263
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[55])(API, TRIGGER, TARGETOBJ, ARG[5])
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2326] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_264
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[67])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99037, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 2326, MaxCount = 1, Name = "σî║σƒƒΣ║ïΣ╗╢σê╖µ\128¬π\128Éσ╗╢µù╢π\128æπ\128Éτë╣µ«èπ\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_265
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[68])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_266
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2327] = {AOIRadius = 10, AOIType = 0, EditSort = 14008, 
EventTips = {"ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176", "ΘÇ\128σ£║τ▒╗σ₧\139", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)"}
, Id = 2327, MaxCount = -1, Name = "ΘÇ\128σ£║ΦºªσÅæσÖ¿πÇÉµ\128¬τë⌐Φ░üΦ┐¢Φ░üΘ\128\128πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_267
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2328] = {AOIRadius = 10, EditSort = 18016, 
EventTips = {"µÿ»σÉªσ╝\128σÉ\175", "Σ╕ïΘÖìσÇ\188", "Θù┤ΘÜöΣ╕ïΘÖìµù╢Θù┤"}
, Id = 2328, MaxCount = 1, Name = "Φ╖ƒΦ╕¬σ╝\128σºïΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_268
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[83])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7], ARG[8], ARG[9])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true}
, 
[2329] = {AOIRadius = 10, EditSort = 18017, 
EventTips = {"µÿ»σÉªσ╝\128σÉ\175", "Σ╕èσìçσÇ\188", "Θù┤ΘÜöΣ╕èσìçµù╢Θù┤", "Σ╕ïΘÖìΘöüσ«Üµù╢Θù┤", "Φüöσè¿ΦºªσÅæ"}
, Id = 2329, MaxCount = -1, Name = "µòæτü╛Φ┐¢σ║ªµ»ÅτºÆσó₧σèáΦºªσÅæσÖ\168", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_269
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_270
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[86])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_271
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[87])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true}
, 
[2330] = {EditSort = 15016, 
EventTips = {"σ»╣Φ»¥IDσêùΦí¿"}
, Id = 2330, MaxCount = -1, Name = "Θ¬ÜΦ»¥ΦºªσÅæσÖ¿π\128ÉσñÜµ¼íΦºªσÅæπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_272
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[92])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnlyClient = 2}
, 
[2331] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_273
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[88])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 18018, 
EventTips = {"µòæτü╛Φ┐¢σ║ªΦºªσÅæ", "Φüöσè¿ΦºªσÅæ", "Φüöσè¿σ╗╢Φ┐ƒ", "σêáΘÖñΦºªσÅæσÖ\168", "σê¢σ╗║σñÜΦºªσÅæσÖ¿", "σî║σƒƒσê╖µ\128\170"}
, Id = 2331, MaxCount = 1, Name = "µòæτü╛Φ┐¢σ║ªΣ╕\128σêçσ╜ÆΘ¢╢ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_274
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[135])(API, TRIGGER, TARGETOBJ, 0.7)
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, OnlyClient = 2}
, 
[2332] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"NPCID", "σè¿Σ╜£σÉ\141", "Σ╕ìσêáΘÖñNPC", "σ░Åµ░öµ│íΘ¢åσÉêId"}
, Id = 2332, MaxCount = -1, Name = "Θú₧Θ╕ƒΦºªσÅæσÖ\168 ", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_275
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[6])
end
, OnlyClient = 1, OnlyHero = true}
, 
[2333] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_276
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "Φí\128ΘçÅσ\128\188", "µù╢Θù┤", "µÅÅΦ┐░ID", "µÿ»σÉªσëºµâàΣ╕¡µÜéσü\156", "σñ▒Φ┤Ñσê¢σ╗║ΦºªσÅæσÖ\168"}
, Id = 2333, MaxCount = -1, Name = "ΘÖÉµù╢σç╗µ¥ÇµÇ¬τë⌐σÇÆΦ«íµù╢ΦºªσÅæσÖ¿(µÇ¬ΦíÇΘçÅσ\128\188)", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_277
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[84])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_278
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[85])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7], ARG[8], ARG[9])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_279
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[110])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2334] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_280
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[93])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "µÿ»σÉªµüóσñìAI"}
, Id = 2334, MaxCount = -1, Name = "σ╗╢µù╢σ╝\128σà│AIΦºªσÅæσÖ¿∩╝êτ¡ëσ╛àσè¿Σ╜£Θò£σñ┤∩╝\137", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_281
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, OnlyClient = 2}
, 
[2335] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_282
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[95])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "XΦ╜┤σ¥Éµá\135", "YΦ╜┤σ¥Éµá\135", "Θ¥óσÉæ"}
, Id = 2335, MaxCount = -1, Name = "σ╗╢µù╢Φ«╛τ╜«Σ╜ìτ╜«ΦºªσÅæσÖ¿∩╝êτ¡ëσ╛àσè¿Σ╜£Θò£σñ┤∩╝\137", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_283
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, OnlyClient = 2}
, 
[2336] = {EditSort = 99999, Id = 2336, MaxCount = -1, Name = "µ╕àΘÖñDBMΦºªσÅæσÖ¿∩╝êµÇ¬τë⌐µè\128Φâ╜ΦºªσÅæ∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_284
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2337] = {AOIRadius = 10, 
AoiHeight = {-100100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_285
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[92])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, EditSort = 99999, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "τª╗σ╝Çτ¢«µáçID", "τª╗σ╝Çτ¢«µáçµè\128Φâ╜ID", "Σ║ñΣ║Æτ¢«µáçµè\128Φâ╜ID∩╝êΣ║ñΣ║Æσ«îµêÉΘçèµö╛∩╝ë", "µùáµ│òΣ║ñΣ║Æµù╢µÅÉτñ║µûçµ£¼ID", "µÅÉτñ║µûçµ£¼µîüτ╗¡µù╢Θù┤"}
, Id = 2337, MaxCount = -1, Name = "σ£░Θ¢╖σ¥æΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_286
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[88])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_287
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {200017, 200017, 200017}
}
, 
[2338] = {AOIRadius = 10, 
AoiHeight = {-100100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_288
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "τª╗σ╝Çτ¢«µáçID", "τª╗σ╝Çτ¢«µáçµè\128Φâ╜ID", "Σ║ñΣ║Æτ¢«µáçµè\128Φâ╜ID∩╝êΣ║ñΣ║Æσ«îµêÉΘçèµö╛∩╝ë", "µùáµ│òΣ║ñΣ║Æµù╢µÅÉτñ║µûçµ£¼ID", "µÅÉτñ║µûçµ£¼µîüτ╗¡µù╢Θù┤"}
, Id = 2338, MaxCount = 1, Name = "σ£░Θ¢╖ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_289
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_290
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  if not (API[76])(API, TRIGGER, TARGETOBJ) and not (API[159])(API, TRIGGER, TARGETOBJ) then
    (API[21])(API, TRIGGER, TARGETOBJ)
  end
end
, OnlyClient = 2, OnlyHero = true, 
StandEffect = {299011, 299011, 299011}
}
, 
[2341] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"σà│σìíId", "σê╖µû░ΦºªσÅæσÖ\168(|σêåΘÜö)", "σêáΘÖñΦºªσÅæσÖ\168", "µÿ╛τñ║σôüΦ┤¿", "Φä▒σç║τé\185(|σêåΘÜöXYZ)", "µ╖╗σèáΣ╗╗σèíId", "σëìτ╜«Σ╗╗σèí", "µêÿσ╜╣σî║σ¥ùId", "ΦºúΘöüσà│σìíσêùΦí¿", "ΦºúΘöüΘ£\128µ▒éµò░Θç\143", "σ┐àΘí╗σ«îµêÉσà│σìí", "µ░¢σ¢┤µÇ¬Φúüσë¬Φîâσ¢\180"}
, Id = 2341, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æµÖ«ΘÇÜσà│σìíΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_291
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, 
StandEffect = {200036, 200036}
}
, 
[2342] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"σà│σìíId", "σê╖µû░ΦºªσÅæσÖ\168(|σêåΘÜö)", "σêáΘÖñΦºªσÅæσÖ\168", "µÿ╛τñ║σôüΦ┤¿", "Φä▒σç║τé\185(|σêåΘÜöXYZ)", "µ╖╗σèáΣ╗╗σèíId", "σëìτ╜«Σ╗╗σèí", "µêÿσ╜╣σî║σ¥ùId", "ΦºúΘöüσà│σìíσêùΦí¿", "ΦºúΘöüΘ£\128µ▒éµò░Θç\143", "σ┐àΘí╗σ«îµêÉσà│σìí", "µ░¢σ¢┤µÇ¬Φúüσë¬Φîâσ¢\180"}
, Id = 2342, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æτ▓╛Φï▒σà│σìíΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_292
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[5])
end
, 
StandEffect = {200037, 200037}
}
, 
[2343] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"σà│σìíId", "σê╖µû░ΦºªσÅæσÖ\168(|σêåΘÜö)", "σêáΘÖñΦºªσÅæσÖ\168", "µÿ╛τñ║σôüΦ┤¿", "Φä▒σç║τé\185(|σêåΘÜöXYZ)", "µ╖╗σèáΣ╗╗σèíId", "σëìτ╜«Σ╗╗σèí", "µêÿσ╜╣σî║σ¥ùId", "ΦºúΘöüσà│σìíσêùΦí¿", "ΦºúΘöüΘ£\128µ▒éµò░Θç\143", "σ┐àΘí╗σ«îµêÉσà│σìí", "µ░¢σ¢┤µÇ¬Φúüσë¬Φîâσ¢\180"}
, Id = 2343, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æBOSSσà│σìíΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_293
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4], ARG[8])
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandEffect = {200038, 200038}
}
, 
[2344] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"ΘÇáσ₧ïId", "σÑûσè▒Id", "µÿ╛τñ║σôüΦ┤¿", "σëìτ╜«Σ╗╗σèí", "µêÿσ╜╣σî║σ¥ùId", "σê╖µû░ΦºªσÅæσÖ\168(|σêåΘÜö)", "σêáΘÖñΦºªσÅæσÖ\168", "ΦºúΘöüσà│σìíσêùΦí¿", "ΦºúΘöüΘ£\128µ▒éµò░Θç\143", "σ┐àΘí╗σ«îµêÉσà│σìí"}
, Id = 2344, IsShapeByParam = true, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æσ«¥τ«▒ΦºªσÅæσÖ¿", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_294
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[101])(API, TRIGGER, TARGETOBJ, "ByCalamityProg1", ARG[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_295
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_296
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, 
StandAnim = {"idle"}
}
, 
[2345] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"τ¢«µáçσ£║µÖ»Id(Σ╕ìσí½Σ╕║σÉîσ£║µÖ»)", "τ¢«µáçΣ╜ìτ╜«(|σêåΘÜöXYZ)", "Θ¥óσÉæ", "σëìτ╜«Σ╗╗σèí", "µêÿσ╜╣σî║σ¥ùId", "ΦºúΘöüσà│σìíσêùΦí¿", "ΦºúΘöüΘ£\128µ▒éµò░Θç\143", "σ┐àΘí╗σ«îµêÉσà│σìí", "Σ╝áΘ\128üµ░¢σ¢┤σ¢╛", "Σ╕ìµÿ╛τñ║σê╖µû░Θò£σñ\180"}
, Id = 2345, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æΣ╝áΘÇüΘù¿ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_297
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[102])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandEffect = {900003}
}
, 
[2346] = {EditSort = 99999, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª", "σëìτ╜«Σ╗╗σèí", "µêÿσ╜╣σî║σ¥ùId"}
, FillEffect = true, Id = 2346, Name = "πÇÉµêÿσ╜╣π\128æΘÿ╗µîíΦºªσÅæσÖ¿", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_298
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[141])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_299
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[102])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_300
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[101])(API, TRIGGER, TARGETOBJ, "ByCalamityProg1", ARG[1])
end
, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[2347] = {AOIRadius = 10, AOIRange = 40, EditSort = 99999, 
EventTips = {"NpcId", "Θ¥óσÉæ", "σòåσ║ùId", "σè¿Σ╜£/τ╝⌐µö╛", "σëìτ╜«Σ╗╗σèí", "µêÿσ╜╣σî║σ¥ùId", "ΦºúΘöüσà│σìíσêùΦí¿", "ΦºúΘöüΘ£\128µ▒éµò░Θç\143", "σ┐àΘí╗σ«îµêÉσà│σìí", "σ£¿σëºµâàΣ╕¡τÜäσÉìσ¡\151", "Σ╕ìµÿ╛τñ║σ£¿σ£░σ¢╛"}
, Id = 2347, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æNPCΦºªσÅæσÖ\168", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_301
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_302
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2], true)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_303
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[102])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2348] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_304
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[8])(API, TRIGGER, TARGETOBJ, "ByMonsterHpAddChange", ARG[1], ARG[2])
end
, EditSort = 18019, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "3Σ╕¬τÄ⌐σ«╢µÆ¡µö\190", "2Σ╕¬τÄ⌐σ«╢µÆ¡µö\190", "1Σ╕¬τÄ⌐σ«╢µÆ¡µö\190"}
, Id = 2348, MaxCount = 1, Name = "σñÜΣ║║σë»µ£¼σëºµâàΦºªσÅæσÖ¿π\128Éµ\128¬ΦíÇΘç\1430πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_305
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[102])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2349] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"µêÿσ╜╣σî║σ¥ùId", "σëºµâàσÉìτº░", "ΦºúΘöüσà│σìíσêùΦí¿", "ΦºúΘöüΘ£\128µ▒éµò░Θç\143", "σ┐àΘí╗σ«îµêÉσà│σìí"}
, Id = 2349, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æσëºµâàΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_306
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2350] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_307
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤", "µêÿσ╜╣σî║σ¥ùId", "σëºµâàσÉìτº░", "ΦºúΘöüσà│σìíσêùΦí¿", "ΦºúΘöüΘ£\128µ▒éµò░Θç\143", "σ┐àΘí╗σ«îµêÉσà│σìí"}
, Id = 2350, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æσëºµâàΦºªσÅæσÖ¿πÇÉσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_308
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[184])(API, TRIGGER, TARGETOBJ, ARG[1], true)
end
}
, 
[2351] = {EditSort = 99999, 
EventTips = {"τë╣µòêId", "µêÿσ╜╣σî║σ¥ùId"}
, Id = 2351, MaxCount = -1, Name = "πÇÉµêÿσ╜╣π\128æσ╕╕Θ⌐╗τë╣µò\136", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_309
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[184])(API, TRIGGER, TARGETOBJ, ARG[1], false)
end
}
, 
[2352] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_310
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[105])(API, TRIGGER, TARGETOBJ, true, ARG[1], ARG[2], ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "buffId(|)", "τ¢«µáçid(|)", "τ¢«µáçΣ╕¬µò░"}
, Id = 2352, MaxCount = 1, Name = "µîçσ«ÜµÇ¬τë⌐IDσèáBUFFπÇÉσ╗╢Φ┐ƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_311
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[105])(API, TRIGGER, TARGETOBJ, false)
end
}
, 
[2353] = {AOIRadius = 200, 
AoiHeight = {280, 700}
, Condition = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_312
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[139])(API, TRIGGER, TARGETOBJ, ARG[7])
end
, EditSort = 99999, 
EventTips = {"Σ╗╗σèíID"}
, Id = 2353, MaxCount = -1, Name = "Φ╖│ΦÉ╜ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_313
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[29])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2354] = {AOIRadius = 10, Condition = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_314
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[30])(API, TRIGGER, TARGETOBJ, ARG[2])
end
, EditSort = 99999, 
EventTips = {"µîëΘÆ«Φ╡äµ║ÉσÉìτº░", "σ»╣σ║öσ¥Éµáç(ΘÇùσÅ╖σêåΘÜö)", "σ»╣σ║öµ£¥σÉæ"}
, Id = 2354, MaxCount = -1, Name = "σ¥ÉΣ╕ïΦºªσÅæσÖ\168", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_315
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], true)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_316
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_317
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[2355] = {AOIRadius = 10, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_318
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 11022, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161", "AIσ╝\128σà│∩╝êtureσ╝\128falseσà│∩╝ë"}
, Id = 2355, MaxCount = -1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉAOI∩╝îτ¡ëσ╛àσè¿Σ╜£Θò£σñ┤∩╝îµùáΘÖÉπÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_319
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[148])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[135])(API, TRIGGER, TARGETOBJ, 2)
  ;
  (API[150])(API, TRIGGER, TARGETOBJ, {10157, 10159, 10161})
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_320
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
end
, OnlyClient = 2}
, 
[2356] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_321
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 11023, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161", "AIσ╝\128σà│∩╝êtureσ╝\128falseσà│∩╝ë"}
, Id = 2356, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉσ╗╢µù╢∩╝îτ¡ëσ╛àσè¿Σ╜£Θò£σñ┤∩╝îΣ╕Çµ¼íπ\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_322
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[23])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_323
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, OnlyClient = 2}
, 
[2357] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"µ╖╗σèábuffID", "σêáΘÖñbuffID"}
, Id = 2357, MaxCount = -1, Name = "ΘçæτÜ«Σ║║σ£░σê║ΘÖ╖Θÿ▒dotΦºªσÅæσÖ\168", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_324
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[24])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_325
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_326
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[25])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {204501}
}
, 
[2358] = {AOIRadius = 10, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_327
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[9])(API, TRIGGER, TARGETOBJ, "ByEvent1", "WAVE_START")
end
, EditSort = 11022, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161", "AIσ╝\128σà│∩╝êtureσ╝\128falseσà│∩╝ë"}
, Id = 2358, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉAOI∩╝îτ¡ëσ╛àσè¿Σ╜£Θò£σñ┤∩╝îΣ╕\128µ¼íπ\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_328
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_329
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[148])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, OnlyClient = 2}
, 
[2359] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_330
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
end
, EditSort = 11024, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "ΦºÆΦë▓σÉìτº░", "σÅ»Θ\128ëσè¿Σ╜\156", "σ╛¬τÄ»", "σÅ»Θ\128ëσè¿Σ╜\156", "Σ┐¥µîüτè╢µ\128\129", "σ╝\128σºïσ╕º", "σü£σ£¿µ£\128σÉ\142"}
, Id = 2359, MaxCount = 1, Name = "ΦºÆΦë▓µÆ¡µö╛σè¿Σ╜£πÇÉσ╗╢µù╢∩╝îΣ╕\128µ¼íπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_331
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2360] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"σî║σƒƒτ▒╗σ₧ï", "Σ╜ìτ╜«µáçΦ«░ID", "σÇÆΦ«íµù╢σî║σƒƒτ▒╗σ₧\139", "σÇÆΦ«íµù╢Θ¥óσÉ\145", "σÇÆΦ«íµù╢σ¥Éµá\135(ΘÇùσÅ╖σêåΘÜö)"}
, Id = 2360, MaxCount = -1, Name = "πÇÉσ¢óµ£¼π\128æΦ┐¢µö╗σî║σî║σƒƒΣ╝áΘ\128üΘù¿", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_332
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[19])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_333
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_334
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[29])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3], ARG[4], ARG[5], ARG[6])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true, 
StandEffect = {900006}
}
, 
[2361] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"σî║σƒƒτ▒╗σ₧ï", "Σ╜ìτ╜«µáçΦ«░ID", "σÇÆΦ«íµù╢σî║σƒƒτ▒╗σ₧\139", "σÇÆΦ«íµù╢Θ¥óσÉ\145", "σÇÆΦ«íµù╢σ¥Éµá\135"}
, Id = 2361, MaxCount = -1, Name = "πÇÉσ¢óµ£¼π\128æΘÿ▓σ«êσî║σî║σƒƒΣ╝áΘ\128üΘù¿", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_335
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_336
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[30])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_337
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
, OnlyClient = 1, OnlyHero = true, 
StandEffect = {900006}
}
, 
[2370] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_338
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[33])(API, TRIGGER, TARGETOBJ)
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 18019, 
EventTips = {"σ╗╢µù╢µù╢Θù┤", "3Σ╕¬τÄ⌐σ«╢µÆ¡µö\190", "2Σ╕¬τÄ⌐σ«╢µÆ¡µö\190", "1Σ╕¬τÄ⌐σ«╢µÆ¡µö\190", "σê¢σ╗║σñÜΦºªσÅæσÖ¿"}
, Id = 2370, MaxCount = 1, Name = "σñÜΣ║║σë»µ£¼σëºµâàΦºªσÅæσÖ¿π\128Éσ╗╢µù╢π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_339
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
}
, 
[2401] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_340
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[33])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óτÄ⌐σ«╢Φ╡╖σºïΣ╜ìτ╜\174", "τÄ⌐σ«╢τ╗êτé╣Σ╜ìτ╜«", "σ║òσ¢╛Φ┐¢σ║ªσüÅτº╗σÇ\188", "σ║òσ¢╛", "τÄ⌐σ«╢σ¢╛µáç", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ"}
, Id = 2401, MaxCount = -1, Name = "σ»╗Θ¢╖σà│Σ╕╗ΦºÆΦ┐¢σ║ªΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_341
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, OnlyClient = 2}
, 
[2402] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_342
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3], (API[16])(API, TRIGGER, TARGETOBJ))
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "ΦºªσÅæσÖ¿σî║σƒƒID", "NpcKey", "µ£\128σñºΦ┐¢σ║\166", "σê¥σºïΦ┐¢σ║ª", "µ¢┤µû░µö╣σÅÿτÜäσ\128\188", "µ¢┤µû░Θù┤ΘÜö", "NpcτÜäσ¢╛µá\135", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ"}
, Id = 2402, MaxCount = -1, Name = "σ»╗Θ¢╖σà│NPCΦ┐¢σ║ªΦºªσÅæσÖ\168(Θ£\128Φªüµ£ëΣ╕╗ΦºÆΦ┐¢σ║ªΦºªσÅæσÖ¿σ£¿σ£║∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_343
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[36])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2403] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_344
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[35])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "NpcKey", "σó₧σèáσÇ\188", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ"}
, Id = 2403, MaxCount = -1, Name = "σ╗╢µù╢Σ┐«µö╣σ»╗Θ¢╖σà│NPCΦ┐¢σ║ªΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_345
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[36])(API, TRIGGER, TARGETOBJ)
  ;
  (API[34])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2404] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_346
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[9])(API, TRIGGER, TARGETOBJ, "ByEventFaint", "MFAINT")
end
, EditSort = 99999, 
EventTips = {"keyσÇ╝∩╝êτ¢╕σÉîΦºªσÅæσÖ¿σö»Σ╕\128σì│σÅ»∩╝\137", "ΦºªσÅæσÖ¿σî║σƒƒID", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "ΦºªσÅæΦ┐¢σ║ª"}
, Id = 2404, MaxCount = 1, Name = "NPCΦ┐¢σ║ªµ╗íσê¢σ╗║ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_347
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2405] = {EditSort = 99999, 
EventTips = {"NpcKey", "σó₧σèáσÇ\188", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ"}
, Id = 2405, MaxCount = -1, Name = "Σ┐«µö╣σ»╗Θ¢╖σà│NPCΦ┐¢σ║ªΦºªσÅæσÖ¿∩╝êσñÜµ¼íΦºªσÅæ∩╝\137", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_348
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[2500] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_349
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2])
end
, EditSort = 99999, 
EventTips = {"Θù┤ΘÜö(τº\146)"}
, Id = 2500, MaxCount = -1, Name = "σñºτºÿσóâΦÉ╜τƒ│ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_350
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[32])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2501] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_351
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[37])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºªσÅæσÖ¿Id"}
, Id = 2501, MaxCount = 999, Name = "σñºτºÿσóâτêåτé╕ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_352
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[134])(API, TRIGGER, TARGETOBJ, 1010003)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2502] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_353
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºªσÅæσÖ¿Id"}
, Id = 2502, MaxCount = 999, Name = "σñºτºÿσóâµ»Æµ╢▓ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_354
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[2515] = {AOIRadius = 10, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_355
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[40])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 15028, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "TIPSId", "µÿ╛τñ║µù╢Θò┐∩╝êτºÆ∩╝\137"}
, Id = 2515, MaxCount = 1, Name = "µè\128Φâ╜µÆ¡µèÑΦºªσÅæσÖ¿πÇÉµ\128¬ΦíÇΘç\1430πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_356
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[43])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[2555] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"µÿ»σÉªσ╝\128σÉ\175", "µ»Åµ¼íσó₧σèáτÖ╛σêåµ»\148", "µ»Åµ¼íσçÅσ░æτÖ╛σêåµ»\148", "σêåσñÜσ░æµîí", "σ»╣σ║öµ»ÅµíúτÜäbuffσêùΦí¿", "µ¥╛σ╝ÇµîëΘÆ«µù╢Θù┤"}
, Id = 2555, MaxCount = -1, Name = "Φ╖æΘà╖ΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_357
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, OnlyClient = 1, OnlyHero = true}
, 
[3001] = {AOIRadius = 10, AOIType = 2, 
BornEffect = {520000}
, EditSort = 88888, Id = 3001, MaxCount = 999, Name = "Φüöτ¢ƒµ╝öΣ╣áΦ╡äµ║Éτé╣τöƒµêÉσ¡ÉΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_358
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_359
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimer1", ARG[1], false)
end
}
, 
[3002] = {AOIRadius = 10, EditSort = 88888, Id = 3002, MaxCount = 999, Name = "Φüöτ¢ƒµ╝öΣ╣áΦ╡äµ║Éτé\185", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_360
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_361
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[9])(API, TRIGGER, TARGETOBJ, "ByEventFaint", ARG[1], true)
end
, OnlyHero = true, 
StandEffect = {200036, 200036}
}
, 
[3003] = {AOIRadius = 10, AOIType = 2, EditSort = 99999, 
EventTips = {"Φ┐¢σàÑΦºªσÅæ∩╝êTRUEΣ╕║Φ┐¢σàÑFALSEΣ╕║τª╗σ╝\128∩╝\137"}
, Id = 3003, MaxCount = 999, Name = "Φüöτ¢ƒµ╝öΣ╣áσ«ëσà¿σî\186", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_362
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_363
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
end
}
, 
[3004] = {
BornEffect = {10156, 10158, 10160}
, BornEffectTime = 0.5, EditSort = 88888, EventEffectTime = 1, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 3004, Name = "Θÿ╗µîíΦºªσÅæσÖ¿π\128ÉΦüöτ¢ƒµ╝öΣ╣áτë╣µòêµÿ╛τñ║τö¿πÇ\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_364
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_365
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[3005] = {
BornEffect = {200026}
, BornEffectTime = 0.5, EditSort = 88888, EventEffectTime = 1, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 3005, Name = "τë╣µòêΦºªσÅæσÖ¿π\128ÉΦüöτ¢ƒµ╝öΣ╣áτë╣µòêµÿ╛τñ║τö¿πÇ\145", OnlyClient = 2, 
StandEffect = {200026}
}
, 
[3006] = {AOIRadius = 10, EditSort = 88888, EventEffectTime = 1, 
EventTips = {"ΦºªσÅæσÖ¿µîçσ«Üσî║σƒƒID"}
, FillEffect = true, Id = 3006, MaxCount = -1, Name = "σê¢σ╗║µîçσ«Üσî║σƒƒIDΦºªσÅæσÖ¿π\128ÉΦüöτ¢ƒµ╝öΣ╣áτö¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_366
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, OnlyClient = 1, OnlyHero = true}
, 
[3007] = {AOIRadius = 10, EditSort = 88888, EventEffectTime = 1, 
EventTips = {"ΦºªσÅæσÖ¿µîçσ«Üσî║σƒƒID"}
, FillEffect = true, Id = 3007, MaxCount = -1, Name = "σêáΘÖñµîçσ«Üσî║σƒƒIDΦºªσÅæσÖ¿π\128ÉΦüöτ¢ƒµ╝öΣ╣áτö¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_367
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
end
, OnlyClient = 1, OnlyHero = true}
, 
[3008] = {
BornEffect = {1001446}
, BornEffectTime = 0.5, EditSort = 88888, EventEffectTime = 1, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 3008, Name = "τ║óµû╣Θÿ╗µîíΦºªσÅæσÖ¿π\128ÉΦó½σè¿π\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_368
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_369
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[48])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_370
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true, 
StandFillEffect = {
{1001445}
}
}
, 
[3009] = {
BornEffect = {1001442}
, BornEffectTime = 0.5, EditSort = 88888, EventEffectTime = 1, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 3009, Name = "Φô¥µû╣Θÿ╗µîíΦºªσÅæσÖ¿π\128ÉΦó½σè¿π\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_371
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_372
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "CreateMonster", ARG[1], true)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_373
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[49])(API, TRIGGER, TARGETOBJ, {7000150})
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true, 
StandFillEffect = {
{1001447}
}
}
, 
[3010] = {EditSort = 88888, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, Id = 3010, Name = "Θ╗æΦë▓σ╣┐σ£║ΦºªσÅæσÖ\168", OnlyClient = 1, OnlyHero = true, 
StandEffect = {1001437}
}
, 
[3011] = {EditSort = 88888, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, Id = 3011, Name = "τ╗┐Φë▓Φ╜ªτ½ÖΦºªσÅæσÖ\168", OnlyClient = 1, OnlyHero = true, 
StandEffect = {1001438}
}
, 
[3012] = {EditSort = 88888, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, Id = 3012, Name = "Φô¥Φë▓σü£Φ╜ªσ£║ΦºªσÅæσÖ¿", OnlyClient = 1, OnlyHero = true, 
StandEffect = {1001439}
}
, 
[3013] = {EditSort = 88888, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, Id = 3013, Name = "Θ╗äΦë▓σà¼σ£åΦºªσÅæσÖ\168", OnlyClient = 1, OnlyHero = true, 
StandEffect = {1001440}
}
, 
[3014] = {EditSort = 88888, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, Id = 3014, Name = "τ┤½Φë▓σòåΣ╕Üσî║ΦºªσÅæσÖ¿", OnlyClient = 1, OnlyHero = true, 
StandEffect = {1001441}
}
, 
[3017] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_374
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, EditSort = 99087, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "µÿ╛τñ║σêåτ╗äId", "ΘÜÉΦùÅσêåτ╗äId", "µÿ»σÉªΘçìτ╜«"}
, Id = 3017, Name = "σ£║µÖ»σêåτ╗äµÿ╛τñ║∩╝êσ╗╢µù╢∩╝ë", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_375
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[3021] = {AOIRadius = 10, EditSort = 88888, Id = 3021, MaxCount = -1, Name = "Θ╗æΦë▓σ╣┐σ£║ΦºªσÅæσÖ¿π\128ÉΦºªσÅæσêçσ░Åσ£░σ¢╛τö¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_376
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[50])(API, TRIGGER, TARGETOBJ, "ByMonsterGroupDie", ARG[1])
end
, OnlyClient = 1, OnlyHero = true}
, 
[3022] = {AOIRadius = 10, EditSort = 88888, Id = 3022, MaxCount = -1, Name = "τ╗┐Φë▓Φ╜ªτ½ÖΦºªσÅæσÖ¿π\128ÉΦºªσÅæσêçσ░Åσ£░σ¢╛τö¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_377
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[3023] = {AOIRadius = 10, EditSort = 88888, Id = 3023, MaxCount = -1, Name = "Φô¥Φë▓σü£Φ╜ªσ£║ΦºªσÅæσÖ¿πÇÉΦºªσÅæσêçσ░Åσ£░σ¢╛τö¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_378
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "CreateMonster", ARG[1], true)
end
, OnlyClient = 1, OnlyHero = true}
, 
[3024] = {AOIRadius = 10, EditSort = 88888, Id = 3024, MaxCount = -1, Name = "Θ╗äΦë▓σà¼σ£åΦºªσÅæσÖ¿π\128ÉΦºªσÅæσêçσ░Åσ£░σ¢╛τö¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_379
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[49])(API, TRIGGER, TARGETOBJ, {24909})
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[3025] = {AOIRadius = 10, EditSort = 88888, Id = 3025, MaxCount = -1, Name = "τ┤½Φë▓σòåΣ╕Üσî║ΦºªσÅæσÖ¿πÇÉΦºªσÅæσêçσ░Åσ£░σ¢╛τö¿πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_380
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[37])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1, OnlyHero = true}
, 
[4101] = {AOIRadius = 5, AOIRange = 5, EditSort = 99999, 
EventTips = {"σ╜⌐Φ¢ïτ▒╗σ₧ï", "σ╜⌐Φ¢ïΦºªσÅæσÖ¿Id"}
, Id = 4101, MaxCount = -1, Name = "σ╜⌐Φ¢ïΦºªσÅæσÖ¿∩╝êτ¿ïσ║Åτö¿∩╝ë", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_381
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_382
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3], (API[16])(API, TRIGGER, TARGETOBJ))
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_383
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[3])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2] or 1)
end
, OnlyClient = 1, OnlyHero = true}
, 
[6060] = {AOIRadius = 10, EditSort = 100002, 
EventTips = {"µ║ÉX", "µ║ÉY", "µ║ÉZ", "τ¢«µáçX", "τ¢«µáçY", "τ¢«µáçZ"}
, Id = 6060, MaxCount = 1, Name = "σ£║µÖ»σ¢║σ«ÜΘò£σñ┤πÇÉσ╝éµ¡ÑJJCπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_384
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[51])(API, TRIGGER, TARGETOBJ, {})
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[6081] = {AOIRadius = 15, AOIType = 2, 
BornEffect = {520000}
, EditSort = 100003, EventEffectTime = 0.75, 
EventTips = {"buffId"}
, Id = 6081, MaxCount = 1, Name = "µ┤╗σè¿BOSSτ⌐║µèò-σèáµö╗πÇÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_385
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[40])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true, 
StandEffect = {520001, 520001, 520000}
, 
TriggerEffect = {520000}
}
, 
[6082] = {AOIRadius = 15, AOIType = 2, 
BornEffect = {520000}
, EditSort = 100003, EventEffectTime = 0.75, 
EventTips = {"buffId"}
, Id = 6082, MaxCount = 1, Name = "µ┤╗σè¿BOSSτ⌐║µèò-Θ£╕Σ╜ôπÇÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_386
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, OnlyHero = true, 
StandEffect = {520002, 520002, 520000}
, 
TriggerEffect = {520000}
}
, 
[6083] = {AOIRadius = 15, AOIType = 2, 
BornEffect = {520000}
, EditSort = 100003, EventEffectTime = 0.75, 
EventTips = {"buffId"}
, Id = 6083, MaxCount = 1, Name = "µ┤╗σè¿BOSSτ⌐║µèò-σ¢₧ΦíÇπÇÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_387
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true, 
StandEffect = {520003, 520003, 520000}
, 
TriggerEffect = {520000}
}
, 
[6084] = {AOIRadius = 15, AOIType = 2, 
BornEffect = {520000}
, EditSort = 100003, EventEffectTime = 0.75, 
EventTips = {"buffId"}
, Id = 6084, MaxCount = 1, Name = "µ┤╗σè¿BOSSτ⌐║µèò-σèáΘ\128ƒπ\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_388
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[26])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyHero = true, 
StandEffect = {520004, 520004, 520000}
, 
TriggerEffect = {520000}
}
, 
[8001] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_389
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, EditSort = 99999, 
EventTips = {"σ╝\128σà\179(true/false)", "µîüτ╗¡µù╢Θù┤(S)", "σ«\189", "Θ½\152", "σ╗╢Φ┐ƒ(s)"}
, Id = 8001, MaxCount = 1, Name = "σ▒Åσ╣òΘü«τ╜⌐ΦºªσÅæσÖ\168", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_390
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[8002] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_391
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[146])(API, TRIGGER, TARGETOBJ, "ScanEvent", true)
  print("ΦºªσÅæµë½µÅÅΣ║ïΣ╗╢================================")
end
, EditSort = 99999, 
EventTips = {"Φï▒Θ¢äτ▒╗ID", "ΦºªσÅæσÖ¿Id", "σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137"}
, Id = 8002, MaxCount = 1, Name = "Φï▒Θ¢äτ▒╗IDΦºªσÅæσÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_392
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[163])(API, TRIGGER, TARGETOBJ, 250, 100, 70, nil, 3800, ARG[8])
end
, OnlyClient = 1}
, 
[8003] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_393
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[164])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"Φï▒Θ¢äτ▒╗ID", "ΦºªσÅæσÖ¿Id", "σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137"}
, Id = 8003, MaxCount = 1, Name = "Φï▒Θ¢äτ▒╗IDΦºªσÅæσÖ\168(σÅìσÉæ)", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_394
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  if not (API[162])(API, TRIGGER, TARGETOBJ) then
    (API[149])(API, TRIGGER, TARGETOBJ, ARG[6])
  else
    ;
    (API[149])(API, TRIGGER, TARGETOBJ, ARG[7])
  end
end
, OnlyClient = 1}
, 
[9000] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_395
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[10])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, EditSort = 99081, 
EventTips = {"Φ╖»σ╛äσÉ\141", "σ╗╢Φ┐ƒµù╢Θù┤", "ΦºªσÅæσÖ¿ID"}
, Id = 9000, Name = "Φç¬σè¿µêÿµûùΦ╛àσè⌐Φ╖»τé╣[σìòΣ║║/τ╗äΘÿƒ]", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_396
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, OnlyHero = true}
, 
[9001] = {AOIRadius = 10, EditSort = 99999, Id = 9001, MaxCount = -1, Name = "σÄƒσ£║µÖ»Θò£σñ┤σî║σƒ\159", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_397
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[77])(API, TRIGGER, TARGETOBJ, ARG[2])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_398
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[56])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[9002] = {EditSort = 99999, Id = 9002, Name = "µ£\128Σ╜│σ▒òτñ║τé╣", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_399
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[57])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnlyClient = 1}
, 
[9003] = {EditSort = 99081, 
EventTips = {"Φ╖»σ╛äσÉ\141", "σ║ÅσÅ╖", "µÿ╛τñ║Θó£Φë▓", "Θó¥σñûσÅéµò░", "σÄ╗Θó¥σñûσÅéµò\176", "σ¢₧Θó¥σñûσÅéµò\176"}
, Id = 9003, Name = "σà¼σà▒Φ╖»σ╛äΦ╖»τé╣Φ╛àσè⌐", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_400
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[9004] = {EditSort = 99082, 
EventTips = {"σêåτ╗äID", "ΦíîΣ╕║τ▒╗σ₧ï", "ΘÖÉσê╢µò░ΘçÅ:table_num", "σà¼σà▒cd(s):table_num"}
, Id = 9004, Name = "σêåτ╗äΦíîΣ╕║ΘÖÉσê╢Φ╛àσè⌐", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_401
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, OnlyClient = 1}
, 
[9005] = {AOIRadius = 10, 
BornEffect = {900005}
, EditSort = 99999, 
EventTips = {"σ¥ÉµáçX", "σ¥ÉµáçY", "Θ¥óσÉæ", "ΦºåΦ╖¥", "Θ½ÿσ║ª", "ΦºÆσ║ª", "σêçµìóµù╢Θù┤∩╝êτºÆ∩╝\137"}
, Id = 9005, MaxCount = -1, Name = "πÇÉσñºτºÿσóâΣ╕ôτö¿πÇæΣ╝áΘÇüΦºªσÅæσÖ¿", OnDestroyEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_402
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_403
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterDie1", ARG[1], ARG[2] or 1)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_404
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {900003}
}
, 
[9006] = {AOIRadius = 10, EditSort = 99999, 
EventTips = {"Θ½ÿσ║ªΦ╖¥τª╗", "Σ╕ïΘÖìσê¥Θ\128ƒσ║ª"}
, Id = 9006, MaxCount = -1, Name = "πÇÉσñºτºÿσóâΣ╕ôτö¿πÇæΘ\128╗Φ╛æΘ½ÿΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_405
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[11])(API, TRIGGER, TARGETOBJ, "ByMonsterBorn", ARG[1], ARG[2] or 1)
end
, OnlyClient = 2}
, 
[9007] = {AOIRadius = 10, EditSort = 99999, Id = 9007, MaxCount = 1, Name = "πÇÉσñºτºÿσóâΣ╕ôτö¿πÇæσëºµâàΦºªσÅæσÖ¿πÇÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_406
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[3], ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
}
, 
[9010] = {AOIRadius = 15, AOIType = 2, EditSort = 14013, 
EventTips = {"buffId"}
, Id = 9010, MaxCount = -1, Name = "τ½₧Θ\128ƒσ░Åµ╕╕µêÅσèáΘ\128ƒΦ╕Åµ¥┐π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_407
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, 
StandEffect = {1181}
}
, 
[9011] = {AOIRadius = 15, AOIType = 2, EditSort = 14014, 
EventTips = {"buffId"}
, Id = 9011, MaxCount = -1, Name = "τ½₧Θ\128ƒσ░Åµ╕╕µêÅσçÅΘ\128ƒΦ╕Åµ¥┐π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_408
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[6])
end
, 
StandEffect = {1182}
}
, 
[9015] = {AOIRadius = 10, EditSort = 14015, 
EventTips = {"σ║åτÑ¥τë╣µòê(buff)"}
, Id = 9015, MaxCount = -1, Name = "τ½₧Θ\128ƒσ░Åµ╕╕µêÅτ╗êτé╣µîçτñ║σÖ\168", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_409
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, 
StandEffect = {1180}
}
, 
[9019] = {AOIRadius = 10, AOIType = 2, EditSort = 14016, 
EventTips = {"σà¼σà▒σÅìΘªêID", "σà¼σà▒σÅìΘªêID", "σà¼σà▒σÅìΘªêID", "σà¼σà▒σÅìΘªêID", "σü£τòÖµù╢Θù┤", "µ»öΦ╡¢σ£êµò░"}
, Id = 9019, MaxCount = -1, Name = "τ½₧Θ\128ƒσ░Åµ╕╕µêÅµÄÆσÉìσà¼σæèµ¥\191", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_410
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimerCaption", ARG[1], false)
end
, OnlyClient = 2}
, 
[9020] = {AOIRadius = 10, EditSort = 15020, Id = 9020, MaxCount = 1, Name = "Φ╕⌐Σ╕ïµ╢êσñ▒τ«¡σñ┤πÇÉτ╗äΘÿƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_411
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[62])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {1020}
}
, 
[9024] = {AOIRadius = 15, AOIType = 2, EditSort = 14017, 
EventTips = {"buffId"}
, Id = 9024, MaxCount = 1, Name = "σñºµï¢Φâ╜ΘçÅBUFFΦºªσÅæσÖ¿π\128ÉAOIπÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_412
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, OnlyHero = true, 
StandEffect = {366401}
}
, 
[9030] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_413
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[62])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 13004, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░"}
, FillEffect = true, Id = 9030, MaxCount = 1, Name = "µÇ¬ΦíÇΘç\1430µö╛ΦíîΘÿ╗µîíπÇÉτ╗äΘÿƒπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_414
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimerDialog", ARG[1], false)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_415
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[9031] = {
BornEffect = {10156, 10158, 10160}
, BornEffectTime = 0.5, ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_416
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[1])(API, TRIGGER, TARGETOBJ, "ByTimerDialog", ARG[1], false)
end
, EditSort = 13009, EventEffectTime = 1, 
EventTips = {"µòæτü╛Φ┐¢σ║ª"}
, FillEffect = true, Id = 9031, Name = "µòæτü╛Φ┐¢σ║ªµö╛ΦíîΘÿ╗µîíπÇÉτ╗äΘÿƒπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_417
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[61])(API, TRIGGER, TARGETOBJ)
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_418
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[6])(API, TRIGGER, TARGETOBJ, "ByMonsterHpChange", ARG[1], ARG[2])
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[9032] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_419
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[61])(API, TRIGGER, TARGETOBJ)
  ;
  (API[60])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 13011, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "µÇ╗µ│óµ¼\161", "σêáΘÖñΦºªσÅæσÖ¿σî║σƒƒID"}
, Id = 9032, MaxCount = 1, Name = "µÇ¬µ¡╗Σ║íσê╖µÇ¬ΦºªσÅæσÖ¿πÇÉτ┤ºµÇÑΣ║ïΣ╗╢π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_420
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_421
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[9033] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_422
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 13012, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "ΦºÆΦë▓σÉìτº░", "σÅ»Θ\128ëσè¿Σ╜\156", "σ╛¬τÄ»", "σÅ»Θ\128ëσè¿Σ╜\156", "Σ┐¥µîüτè╢µ\128\129", "σ╝\128σºïσ╕º", "σü£σ£¿µ£\128σÉ\142"}
, Id = 9033, MaxCount = 1, Name = "µÇ¬µ¡╗Σ║íσ╗╢µù╢µÆ¡µö╛σè¿Σ╜£π\128Éτ╗äΘÿƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_423
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[9132] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_424
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99062, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id"}
, Id = 9132, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«σ╝║σê╢Θçèµö╛µè\128Φâ╜π\128Éτ╗äΘÿƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_425
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_426
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {200017, 200017, 200017}
}
, 
[9138] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_427
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99064, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id", "µòæτü╛Φ┐¢σ║ªσèáσ\128\188"}
, Id = 9138, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«-ΦºúµòæΣ║║Φ┤¿πÇÉτ╗äΘÿƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_428
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[66])(API, TRIGGER, TARGETOBJ)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_429
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[65])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[9139] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_430
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[10])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, EditSort = 99065, 
EventTips = {"Σ║ïΣ╗╢σÉìτº░", "τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "µè\128Φâ╜id", "ΦºªσÅæσÖ¿σî║σƒƒID", "µÿ»σÉªΦ╜¼σÉæ"}
, Id = 9139, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«-Σ║ñΣ║Æτ╗äΣ╗╢πÇÉτ╗äΘÿƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_431
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_432
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
end
, OnlyClient = 2, 
StandEffect = {200017, 200017, 200017}
}
, 
[9140] = {
BornEffect = {10156, 10158, 10160}
, BornEffectTime = 0.5, EditSort = 99065, EventEffectTime = 1, 
EventTips = {"τë╣µòêµîçσ«ÜΘ½ÿσ║ª"}
, FillEffect = true, Id = 9140, Name = "Φó½σè¿Θÿ╗µîíΦºªσÅæσÖ¿π\128Éτ╗äΘÿƒπ\128\145", OnBornEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_433
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_434
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[41])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], Args[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandFillEffect = {
{10153, 10154, 10155}
}
}
, 
[9141] = {AOIRadius = 10, EditSort = 99066, Id = 9141, MaxCount = -1, Name = "Φô¥Φë▓σàëµƒ▒µîçτñ║σÖ¿π\128Éτ║»Φí¿τÄ░πÇ\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_435
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[72])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {200017, 200017, 200017}
}
, 
[9142] = {AOIRadius = 10, EditSort = 99067, 
EventTips = {"σ¥ÉµáçX", "σ¥ÉµáçY", "µîëΘÆ«σ«╜σ║ª", "µîëΘÆ«Θ½ÿσ║ª", "µè\128Φâ╜ID", "CD", "µÄºσê╢τ▒╗σ₧ï"}
, Id = 9142, MaxCount = -1, Name = "Φ┐¢σàÑΦÄ╖σÅûΘó¥σñûµè\128Φâ╜π\128ÉσìòΣ║║π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_436
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[69])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, OnlyHero = true}
, 
[9143] = {AOIRadius = 10, EditSort = 99066, Id = 9143, MaxCount = -1, Name = "τö╡µ╡üµîçτñ║σÖ¿π\128Éµêÿσ╜╣π\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_437
  local Args = {...}
  do
    if not TRIGGER.ARGS then
      local ARG = {}
    end
    do return (not (API[181])(API, TRIGGER, TARGETOBJ, ARG[1]) and not (API[201])(API, TRIGGER, TARGETOBJ)) end
    -- DECOMPILER ERROR: 2 unprocessed JMP targets
  end
end
, OnlyClient = 2, 
StandEffect = {200040, 200040, 200040}
}
, 
[9146] = {AOIRadius = 10, 
AoiHeight = {-100, 100}
, ClickOnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_438
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[77])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[78])(API, TRIGGER, TARGETOBJ, ARG[5], ARG[6], ARG[7])
  ;
  (API[206])(API, TRIGGER, TARGETOBJ, ARG[8])
end
, EditSort = 99066, 
EventTips = {"τé╣σç╗τ▒╗σ₧ï", "µîëΘÆ«cd(s)", "Σ║ñΣ║Æµù╢Θù┤(s)", "Σ║ñΣ║Æσè¿Σ╜£", "τ¢«µáçid", "µÅÅΦ┐░", "ΘÇ\128σ£║σè¿Σ╜£σÉìτº\176(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║σî║σƒƒσÉìτº\176(σñÜΣ╕¬\"|\"ΘÜöσ╝Ç)", "ΘÇ\128σ£║µòêµ₧£σ╕ºµò\176(τ¢«σëìµÿ»µ\128╗σ╕ºµò\176-Φ┐ÖΣ╕¬σ╕ºµò░)", "σê╖µ\128¬σî║σƒƒId", "Σ╕ìΦ«íσàÑµ¡╗Σ║\161", "ΦºªσÅæσÖ¿Id", "µÿ»σÉªΘ¥óσÉæσ»╣µû╣"}
, Id = 9146, MaxCount = 1, Name = "Σ║ñΣ║ÆµîëΘÆ«-ΦºúµòæΣ║║Φ┤¿ΘÇ\128σ£║π\128Éτ╗äΘÿƒπ\128\145", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_439
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[207])(API, TRIGGER, TARGETOBJ, ARG[8])
end
, OnLeaveEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_440
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[79])(API, TRIGGER, TARGETOBJ, ARG[5])
  ;
  (API[71])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2, 
StandEffect = {200017, 200017, 200017}
}
, 
[9147] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_441
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[5])(API, TRIGGER, TARGETOBJ, "ByMonsterNoHp", ARG[1], ARG[2])
end
, EditSort = 100001, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "µòæµÅ┤µò░ΘçÅ", "ΦºªσÅæσÖ¿Id"}
, Id = 9147, MaxCount = 1, Name = "µ¥\128µÇ¬µòæΣ║║σê¢σ╗║ΦºªσÅæσÖ¿", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_442
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[74])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[9150] = {AOIRadius = 10, EditSort = 11008, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 9150, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉΦô¥Φë▓σàëµƒ▒Φ┐¢σàÑµ╢êσñ▒π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_443
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[74])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_444
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[141])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnlyClient = 2, 
StandEffect = {200017, 200017, 200017}
}
, 
[9151] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_445
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 4)
  ;
  (API[151])(API, TRIGGER, TARGETOBJ, true)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137"}
, Id = 9151, MaxCount = 1, Name = "µÆ¡µö╛τ½₧µèÇσ£║µû░µëïσëºµâ\133", OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_446
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[22])(API, TRIGGER, TARGETOBJ, 0)
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 1}
, 
[9152] = {AOIRadius = 10, EditSort = 11008, 
EventTips = {"σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 9152, MaxCount = 1, Name = "σê╖µ\128¬ΦºªσÅæσÖ¿πÇÉΘ¬ÜσîàΦô¥Φë▓σàëµƒ▒Φ┐¢σàÑµ╢êσñ▒π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_447
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[141])(API, TRIGGER, TARGETOBJ, ARG[1])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_448
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[52])(API, TRIGGER, TARGETOBJ, ARG[5])
end
, OnlyClient = 2, 
StandEffect = {200036, 200036}
}
, 
[9500] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_449
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[14])(API, TRIGGER, TARGETOBJ, ARG[2])
  ;
  (API[18])(API, TRIGGER, TARGETOBJ, ARG[3])
  ;
  (API[38])(API, TRIGGER, TARGETOBJ, ARG[4])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"σ╗╢Φ┐ƒµù╢Θù┤∩╝êτºÆ∩╝\137", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 9500, MaxCount = 1, Name = "σê╖µ\128¬µÆ¡µèÑΦºªσÅæσÖ¿πÇÉσ╗╢µù╢π\128\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_450
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[77])(API, TRIGGER, TARGETOBJ, ARG[4])
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_451
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[9501] = {ByEvents = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_452
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[80])(API, TRIGGER, TARGETOBJ, ARG[1])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, EditSort = 99999, 
EventTips = {"µÇ¬τë⌐Id", "µ¡╗Σ║íΣ╕¬µò░", "σê╖µ\128¬σî║σƒƒId", "ΦºªσÅæσÖ¿σî║σƒƒID", "µ│óµ¼í", "τè╢µ\128üΦ╜¼σÉ\145", "Φüöσè¿ΦºªσÅæσÖ¿σî║σƒ\159", "Φüöσè¿σ╗╢Φ┐ƒ", "µÇ╗µ│óµ¼\161"}
, Id = 9501, MaxCount = 1, Name = "σê╖µ\128¬µÆ¡µèÑΦºªσÅæσÖ¿πÇÉµ\128¬ΦíÇΘç\1430πÇ\145", OnClientEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_453
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[81])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnEvent = function(API, TRIGGER, TARGETOBJ, ...)
  -- function num : 0_454
  local Args = {...}
  if not TRIGGER.ARGS then
    local ARG = {}
  end
  ;
  (API[89])(API, TRIGGER, TARGETOBJ, ARG[1], ARG[2], ARG[3], ARG[4], ARG[5], ARG[6], ARG[7])
  ;
  (API[21])(API, TRIGGER, TARGETOBJ)
end
, OnlyClient = 2}
, 
[9997] = {AOIRadius = 10, AOIType = 2, EditSort = 99999, Id = 9997, MaxCount = -1, Name = "σèƒΦâ╜µÄëΦÉ╜τë⌐ΦºªσÅæσÖ¿∩╝êτ¿ïσ║Åτö¿∩╝\137", OnlyClient = 1}
, 
[9998] = {AOIRadius = 10, AOIType = 2, EditSort = 99999, Id = 9998, MaxCount = -1, Name = "σàëτÄ»BuffΦºªσÅæσÖ¿∩╝êτ¿ïσ║Åτö¿∩╝ë", OnlyClient = 1}
, 
[9999] = {AOIRadius = 10, AOIType = 2, EditSort = 99999, Id = 9999, MaxCount = -1, Name = "ΦæíΦÉäτÉâΦºªσÅæσÖ¿∩╝êτ¿ïσ║Åτö¿∩╝\137", OnlyClient = 1}
}
}


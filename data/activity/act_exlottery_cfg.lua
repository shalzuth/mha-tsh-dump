-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    DrawCfg = {
        {
            ActId = 10001,
            Cost = {
                { 1001057, 400 },
            },
            Desc = "Φï▒Θ¢äµëºτàºµè╜σìí",
            DrawId = 1,
            FuncId = 115,
            GuaranteeList = { 1 },
            LotteryDesc = "Randomly grants one of the following items when opening a Supporter's Gift: Ojiro Shard (30%), Large Credit Pack (15%), Medium Factor Pack (35%), EXP Chip-╬▒ (10%), Taiyaki (10%). Every 10 Supporter's Gifts opened randomly grants you a special gift from the following items: Ojiro Shard x5 (10%), Superior Credit Pack (10%), Self-Pick Factor Pack (30%), EXP Chip-╬│ (15%), Soba Noodles (20%), R&D Ticket (10%), Recruit Ticket (5%).",
            PoolId = 600101,
        },
    },
    GuaranteeCfg = {
        { Id = 1, PoolId = 600102, Times = 10 },
        { Id = 2, PoolId = 600202, Times = 10 },
    },
    PoolCfg = {
        [600101] = {
            Name = "Φï▒Θ¢äµëºτàºσìíµ▒á1",
            PoolId = 600101,
            PoolItems = {
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1012116, 1 },
                }, Weight = 30 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1021022, 1 },
                }, Weight = 15 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1022211, 1 },
                }, Weight = 35 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1021005, 1 },
                }, Weight = 10 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1013113, 1 },
                }, Weight = 10 },
            },
            TTLWeight = 100,
        },
        [600102] = {
            Name = "Φï▒Θ¢äµëºτàºσìíµ▒á1Σ┐¥σ║òµ▒\160",
            PoolId = 600102,
            PoolItems = {
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1012116, 5 },
                }, Weight = 10 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1021023, 1 },
                }, Weight = 10 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1022213, 1 },
                }, Weight = 30 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1021007, 1 },
                }, Weight = 15 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1013114, 1 },
                }, Weight = 20 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1001013, 1 },
                }, Weight = 10 },
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1001031, 1 },
                }, Weight = 5 },
            },
            TTLWeight = 100,
        },
        [600201] = {
            Name = "Φï▒Θ¢äµëºτàºσìíµ▒á3",
            PoolId = 600201,
            PoolItems = {
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1011064, 1 },
                }, Weight = 10 },
                { Desc = "Φï▒Θ¢äµëºτàº", ItemList = {
                    { 1022212, 1 },
                }, Weight = 9 },
            },
            TTLWeight = 19,
        },
        [600202] = {
            Name = "Φï▒Θ¢äµëºτàºσìíµ▒á3",
            PoolId = 600202,
            PoolItems = {
                { Desc = "Φï▒Θ¢äµëºτàº", IsImportance = true, ItemList = {
                    { 1011155, 1 },
                }, Weight = 10 },
                { Desc = "Φï▒Θ¢äµëºτàº", ItemList = {
                    { 1022213, 1 },
                }, Weight = 9 },
            },
            TTLWeight = 19,
        },
    },
}

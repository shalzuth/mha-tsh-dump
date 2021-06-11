-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    API = {
        ["#HERO_NAME()"] = {
            Api = function(self, Args, Callback)
                -- function num : 0_0
                local CurSelectInfo = (train.TrainUtil):GetCurSelectInfo()
                if CurSelectInfo and CurSelectInfo.HeroInfo then
                    return (CurSelectInfo.HeroInfo).HeroName
                end
            end,
            Name = "#HERO_NAME()",
        },
    },
    Sort = { ["#HERO_NAME()"] = 1 },
    Title = { "#HERO_NAME()", "That's a lotta damage!", "#HERO_NAME()", "#HERO_NAME()" },
}

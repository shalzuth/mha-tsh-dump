-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    ConstantCfg = {
        SYSTEM_TIPS = "#w10#s24#c000000Outfit Rules#n#r#r #r#r#r#s20 #c000000[Overview]:#n#r#r #w10#c5c5c5cPlayers can switch heroes' styles in their living and fighting scenes.#r#r #r#r #w10#c5c5c5cEach outfit has only one of them.#r#r #r#r #w10#c5c5c5cAn outfit only takes effect after being worn.#r#r #r#r",
    },
    FashionCfg = {
        [101001] = {
            ClassID = 124,
            CvTxt = "Izuku Midoriya's Costume",
            CvVoice = 5300,
            Desc = "No longer an imitation of All Might, Izuku Midoriya has finally found his own path. Developed by Mei Hatsume and Power Loader, the leg components of the costume have been strengthened.",
            Draw = "µù╢Φúà_τ╗┐Φ░╖µêÿµûùµ£\141",
            EffectId = 2003,
            Exclusive = "Izuku Midoriya Exclusive",
            ID = 101001,
            IsDefault = true,
            ItemId = { 1029510 },
            Label = { 1 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1024,
            Sort = 1,
            Status = "Default",
        },
        [101002] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
                { "AddDefPerDelta", 1 },
            },
            ClassID = 124,
            CvTxt = "U.A. High Gym Uniform",
            CvVoice = 5300,
            Desc = "The U.A. High Gym Uniform that Izuku Midoriya has worn through countless Hero Classes and the annual Sports Festival.",
            Draw = "µù╢Φúà_τ╗┐Φ░╖Σ╜ôµôìµ£\141",
            EffectId = 2003,
            Exclusive = "Izuku Midoriya Exclusive",
            ID = 101002,
            ItemId = { 1029501, 1029504, 1029507 },
            Label = { 5 },
            Name = "U.A. High Gym Uniform",
            Quality = 2,
            ShapeID = 14101,
            Sort = 2,
            Status = "Inside",
        },
        [101003] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
                { "AddDefPerDelta", 1 },
            },
            ClassID = 124,
            CvTxt = "Izuku Midoriya's Lunar New Year's Costume",
            CvVoice = 5300,
            Desc = "A costume prepared for the Lunar New Year. The ink green Tang suit is both aesthetically pleasing and convenient in battle.",
            Draw = "µù╢Φúà_τ╗┐Φ░╖µÿÑΦèéµù╢Φúà",
            EffectId = 2003,
            Exclusive = "Izuku Midoriya Exclusive",
            ID = 101003,
            ItemId = { 1029527 },
            Label = { 57 },
            Name = "Bamboo Green",
            Quality = 2,
            ShapeID = 14102,
            Sort = 3,
            Status = "Inside",
        },
        [101101] = {
            ClassID = 102,
            CvTxt = "Katsuki Bakugo's Costume",
            Desc = "A tight-fitting costume specifically designed to Katsuki Bakugo's needs. Filled with explosives, Bakugo can release powerful blasts with his costume beyond his usual capacity.",
            Draw = "µù╢Φúà_τêåΦ▒¬µêÿµûùµ£\141",
            ID = 101101,
            IsDefault = true,
            ItemId = { 1029511 },
            Label = { 9 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1002,
            Sort = 4,
            Status = "Default",
        },
        [101102] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
                { "AddDefPerDelta", 1 },
            },
            ClassID = 102,
            CvTxt = "U.A. High Gym Uniform",
            Desc = "The U.A. High Gym Uniform that Katsuki Bakugo has worn through countless Hero Classes and the annual Sports Festival.",
            Draw = "µù╢Φúà_τêåΦ▒¬Σ╜ôµôìµ£\141",
            ID = 101102,
            ItemId = { 1029502, 1029505, 1029508 },
            Label = { 5 },
            Name = "U.A. High Gym Uniform",
            Quality = 2,
            ShapeID = 14111,
            Sort = 5,
            Status = "Inside",
        },
        [101103] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
                { "AddDefPerDelta", 1 },
            },
            ClassID = 102,
            CvTxt = "Katsuki Bakugo's Lunar New Year's Costume",
            Desc = "A costume prepared for the Lunar New Year. The colors match Bakugo's usual costume, which match his explosive personality.",
            Draw = "µù╢Φúà_τêåΦ▒¬µÿÑΦèéµù╢Φúà",
            ID = 101103,
            ItemId = { 1029529 },
            Label = { 59 },
            Name = "Firecracker",
            Quality = 2,
            ShapeID = 14112,
            Sort = 6,
            Status = "Inside",
        },
        [101201] = {
            ClassID = 107,
            CvTxt = "Ochaco Uraraka's Costume",
            Desc = "A costume designed to alleviate the negative effects of Uraraka's Quirk",
            Draw = "µù╢Φúà_σ╛íΦî╢σ¡Éµêÿµûùµ£ì",
            ID = 101201,
            IsDefault = true,
            ItemId = { 1029512 },
            Label = { 13 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1007,
            Sort = 7,
            Status = "Default",
        },
        [101202] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
            },
            ClassID = 107,
            CvTxt = "U.A. High Gym Uniform",
            Desc = "The U.A. High Gym Uniform that Ochaco Uraraka has worn through countless Hero Classes and the annual Sports Festival.",
            Draw = "µù╢Φúà_σ╛íΦî╢σ¡ÉΣ╜ôµôìµ£ì",
            ID = 101202,
            ItemId = { 1029503, 1029506, 1029509 },
            Label = { 5 },
            Name = "U.A. High Gym Uniform",
            Quality = 2,
            ShapeID = 14121,
            Sort = 8,
            Status = "Default",
        },
        [101203] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
                { "AddDefPerDelta", 1 },
            },
            ClassID = 107,
            CvTxt = "Ochaco Uraraka's Lunar New Year's Costume",
            Desc = "A costume prepared for the Lunar New Year. The pink silk is embroidered with gold and is both youthful and refined. Its sleek design helps in combat.",
            Draw = "µù╢Φúà_σ╛íΦî╢σ¡ÉµÿÑΦèéµù╢Φú\133",
            ID = 101203,
            ItemId = { 1029528 },
            Label = { 58 },
            Name = "Peachy New",
            Quality = 2,
            ShapeID = 14122,
            Sort = 9,
            Status = "Inside",
        },
        [101301] = {
            ClassID = 108,
            CvTxt = "Shoto Todoroki's Costume",
            Desc = "After unraveling years of issues, Shoto Todoroki no longer uses his original white-colored costume and uses a blue-colored one instead.",
            Draw = "µù╢Φúà_Φ╜░µêÿµûùµ£ì",
            ID = 101301,
            IsDefault = true,
            ItemId = { 1029513 },
            Label = { 17 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1008,
            Sort = 10,
            Status = "Default",
        },
        [101302] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
                { "AddDefPerDelta", 1 },
            },
            ClassID = 108,
            CvTxt = "Shoto Todoroki's Lunar New Year's Costume",
            Desc = 'A costume prepared for the Lunar New Year. The colors match Shoto\'s usual costume, with the sleeves rolled up to accommodate his "Quirk". On the Lunar New Year, the family reunites at home. Even if the cold wind howls outside, the loving embrace of a mother can instantly melt even the frozen heart of a child long away from home.',
            Draw = "µù╢Φúà_Φ╜░µÿÑΦèéµù╢Φú\133",
            ID = 101302,
            ItemId = { 1029530 },
            Label = { 60 },
            Name = "New Elements",
            Quality = 2,
            ShapeID = 14131,
            Sort = 11,
            Status = "Inside",
        },
        [101401] = {
            ClassID = 109,
            CvTxt = "Momo Yaoyorozu's Costume",
            Desc = "A skimpy costume designed to make creating objects easier. Yaoyorozu is a pragmatist when it comes to using her Quirk",
            Draw = "µù╢Φúà_σà½τÖ╛Σ╕çµêÿµûùµ£ì",
            ID = 101401,
            IsDefault = true,
            ItemId = { 1029514 },
            Label = { 21 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1009,
            Sort = 12,
            Status = "Default",
        },
        [101402] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
                { "AddDefPerDelta", 1 },
            },
            ClassID = 109,
            CvTxt = "Momo Yaoyorozu's Lunar New Year's Costume",
            Desc = "A costume prepared for the Lunar New Year. The red silk is embroidered with gold, radiating with the elegance of a pampered lady. The world is re-awakened and all things undergo great changes as spring begins. As the creator of many things, it is fitting that Yaoyorozu's costume changes as well.",
            Draw = "µù╢Φúà_σà½τÖ╛Σ╕çµÿÑΦèéµù╢Φú\133",
            ID = 101402,
            ItemId = { 1029532 },
            Label = { 62 },
            Name = "Ever Changing",
            Quality = 2,
            ShapeID = 14141,
            Sort = 13,
            Status = "Inside",
        },
        [101501] = {
            ClassID = 106,
            CvTxt = "Tenya Iida's Costume",
            Desc = "Iida comes from a long line of heroes and his costume bears the legacy of the Iida family.",
            Draw = "µù╢Φúà_ΘÑ¡τö░µêÿµûùµ£\141",
            ID = 101501,
            IsDefault = true,
            ItemId = { 1029515 },
            Label = { 24 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1006,
            Sort = 14,
            Status = "Default",
        },
        [101601] = {
            ClassID = 110,
            CvTxt = "Denki Kaminari's Costume",
            Desc = "A plain jacket mixed with fashionable elements to Kaminari's liking.",
            Draw = "µù╢Φúà_τö╡µ░öµêÿµûùµ£\141",
            ID = 101601,
            IsDefault = true,
            ItemId = { 1029516 },
            Label = { 28 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1010,
            Sort = 15,
            Status = "Default",
        },
        [101701] = {
            ClassID = 111,
            CvTxt = "Assassin Outfit",
            Desc = "Stain's assassin outfit, a well fitting costume. Stain's various knives and daggers are strapped onto the waist and legs. Blades are also hidden in unexpected compartments.",
            Draw = "µù╢Φúà_µû»σ¥ªσ¢áµêÿµûùµ£ì",
            ID = 101701,
            IsDefault = true,
            ItemId = { 1029517 },
            Label = { 31 },
            Name = "Assassin Outfit",
            Quality = 2,
            ShapeID = 1011,
            Sort = 16,
            Status = "Default",
        },
        [101801] = {
            ClassID = 104,
            CvTxt = "Golden Age",
            Desc = "All Might's Golden Age costume from the peak of his success that retains the color palette of his Silver Age costume.",
            Draw = "µù╢Φúà_µ¼ºσÅöµêÿµûùµ£\141",
            ID = 101801,
            IsDefault = true,
            ItemId = { 1029518 },
            Label = { 36 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1003,
            Sort = 17,
            Status = "Default",
        },
        [101901] = {
            ClassID = 112,
            CvTxt = "BURNING",
            Desc = "σñ⌐τä╢µ░öτçâτâ¼Σ╕Çσê\135",
            Draw = "µù╢Φúà_Φì╝µ»ÿµêÿµûùµ£\141",
            ID = 101901,
            IsDefault = true,
            ItemId = { 1029519 },
            Label = { 1, 2, 3 },
            Name = "BURNING",
            Quality = 2,
            ShapeID = 1012,
            Sort = 18,
            Status = "Default",
        },
        [102001] = {
            ClassID = 113,
            CvTxt = "Eijiro Kirishima's Costume",
            Desc = "A hardcore and manly costume that doesn't provide much defense, owing to Kirishima's Hardening Quirk",
            Draw = "µù╢Φúà_σêçσ▓¢µêÿµûùµ£\141",
            ID = 102001,
            IsDefault = true,
            ItemId = { 1029520 },
            Label = { 39 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1013,
            Sort = 19,
            Status = "Default",
        },
        [102101] = {
            ClassID = 114,
            CvTxt = "Tsuyu Asui's Costume",
            Desc = "A costume designed to mimic a frog. The aerodynamic design lets Tsuyu Asui move gracefully through watery areas.",
            Draw = "µù╢Φúà_Φ¢ÖσÉ╣µêÿµûùµ£\141",
            ID = 102101,
            IsDefault = true,
            ItemId = { 1029521 },
            Label = { 43 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1014,
            Sort = 20,
            Status = "Default",
        },
        [102201] = {
            ClassID = 115,
            CvTxt = "Shota Aizawa's Costume",
            Desc = "A simple all-black costume fitted with a capturing device made of carbon fiber and special alloys, helping Shota Aizawa capture unaware villains.",
            Draw = "µù╢Φúà_τ¢╕µ│╜µêÿµûùµ£\141",
            ID = 102201,
            IsDefault = true,
            ItemId = { 1029522 },
            Label = { 56 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1015,
            Sort = 21,
            Status = "Default",
        },
        [102301] = {
            ClassID = 118,
            CvTxt = "τö¿Φ\128│µ£║µäƒσÅùτöƒµ┤╗",
            Desc = "τö¿Φ\128│µ£║µäƒσÅùτöƒµ┤╗",
            Draw = "µù╢Φúà_ΦÇ│ΘâÄµêÿµûùµ£\141",
            ID = 102301,
            IsDefault = true,
            ItemId = { 1029523 },
            Label = { 1, 2, 3, 4, 5 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1018,
            Sort = 22,
            Status = "Default",
        },
        [102401] = {
            ClassID = 120,
            CvTxt = "Minoru Mineta's Costume",
            Desc = "A classic superhero design that ends up looking silly on Minoru Mineta.",
            Draw = "µù╢Φúà_ΦæíΦÉäµêÿµûùµ£\141",
            ID = 102401,
            IsDefault = true,
            ItemId = { 1029524 },
            Label = { 46 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1020,
            Sort = 23,
            Status = "Default",
        },
        [102501] = {
            ClassID = 121,
            CvTxt = "Endeavor's Costume",
            Desc = "With the most completed cases in all of history, Endeavor is seldom seen without his costume.",
            Draw = "µù╢Φúà_σ«ëσ╛╖τôªµêÿµûùµ£ì",
            ID = 102501,
            IsDefault = true,
            ItemId = { 1029525 },
            Label = { 49 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1021,
            Sort = 24,
            Status = "Default",
        },
        [102601] = {
            ClassID = 123,
            CvTxt = "Fumikage Tokoyami's Costume",
            Desc = "A costume with an enveloping cape that plays to Tokoyami's taste for the mysterious.",
            Draw = "µù╢Φúà_σ╕╕µÜùµêÿµûùµ£\141",
            ID = 102601,
            IsDefault = true,
            ItemId = { 1029526 },
            Label = { 53 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1022,
            Sort = 25,
            Status = "Default",
        },
        [102602] = {
            AttrAdd = {
                { "AddAtkPerDelta", 1 },
                { "AddDefPerDelta", 1 },
            },
            ClassID = 123,
            CvTxt = "Fumikage Tokoyami's Lunar New Year's Costume",
            Desc = "A costume prepared for the Lunar New Year. A long dark robe that matches Tokoyami's usual style. In China, there is a tradition of lighting lamps and staying awake through the night of New Years as a symbol of driving away evil. Yet in the darkness, a watchman guards over the safety of the people...",
            Draw = "µù╢Φúà_σ╕╕µÜùµÿÑΦèéµù╢Φúà",
            ID = 102602,
            ItemId = { 1029531 },
            Label = { 61 },
            Name = "Dawn Bringer",
            Quality = 2,
            ShapeID = 14151,
            Sort = 26,
            Status = "Inside",
        },
        [102701] = {
            ClassID = 116,
            CvTxt = "Mashirao Ojiro's Costume",
            Desc = "A plain Karate Gi, designed for the needs of Mashirao as a martial hero. Same as its owner, it's fairly bland!",
            Draw = "µù╢Φúà_σ░╛τÖ╜µêÿµûùµ£\141",
            ID = 102701,
            IsDefault = true,
            ItemId = { 1029632 },
            Label = { 63 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1016,
            Sort = 27,
            Status = "Default",
        },
        [102901] = {
            ClassID = 119,
            CvTxt = "Shigaraki's Costume",
            Desc = "A black costume with 14 severed hands that strikes fear into those that look at it. Fitting for Shigaraki's role as the leader of the League of Villains. By the way, whose hands are those anyway?",
            Draw = "µù╢Φúà_µ¡╗µƒäµ£¿µêÿµûùµ£ì",
            ID = 102901,
            IsDefault = true,
            ItemId = { 1029634 },
            Label = { 65 },
            Name = "Costume",
            Quality = 2,
            ShapeID = 1019,
            Sort = 30,
            Status = "Default",
        },
    },
    LabelCfg = {
        { Content = "A mainly green costume.", Desc = "Outfit", Img = "µù╢Φúà_µáçτ¡╛σ║\1491", LabelId = 1 },
        {
            Content = "Gear that assists with arm movement.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 2,
        },
        {
            Content = "Foot gear that enhances the power of the legs.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 3,
        },
        {
            Content = "A basic design that has barely changed to retain his mother's love.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 4,
        },
        { Content = "A dark blue Gym Uniform", Desc = "Outfit", Img = "µù╢Φúà_µáçτ¡╛σ║\1491", LabelId = 5 },
        {
            Content = "A strong U.A. aesthetic.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 6,
        },
        {
            Content = "Izuku Midoriya's favorite red sneakers.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 7,
        },
        {
            Content = "Izuku Midoriya was almost expelled when he first wore his gym uniform.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 8,
        },
        {
            Content = "A costume themed around grenades.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 9,
        },
        {
            Content = "Grenadier Bracers that can store sweat.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 10,
        },
        {
            Content = "A belt contained grenades prepared beforehand.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 11,
        },
        {
            Content = "A design that exudes an overwhelming aura.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 12,
        },
        {
            Content = "A pink skin-tight costume.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 13,
        },
        {
            Content = "The designs around the wrists and neck simulate pressure points.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 14,
        },
        {
            Content = "Shoes capable of absorbing impacts.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 15,
        },
        {
            Content = "Because of a lack of specificity in her design requests, the costume is skin-tight.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 16,
        },
        { Content = "A dark blue costume.", Desc = "Outfit", Img = "µù╢Φúà_µáçτ¡╛σ║\1491", LabelId = 17 },
        {
            Content = "White armor that can block attacks from behind.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 18,
        },
        {
            Content = "Emergency medicine hangs from the belt.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 19,
        },
        {
            Content = "This costume was only adopted after Shoto opened up.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 20,
        },
        {
            Content = "A highly revealing costume.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 21,
        },
        {
            Content = "An encyclopedia hangs from the belt.",
            Desc = "Features",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 22,
        },
        {
            Content = "Momo Yaoyorozu wanted the costume to be even skimpier, but her request was rejected.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 23,
        },
        {
            Content = "An aerodynamic suit of armor.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 24,
        },
        {
            Content = "An intricate helmet designed to withstand high speeds.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 25,
        },
        {
            Content = "Six engines are fitted into the legs.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 26,
        },
        {
            Content = "All the costumes of the Iida family are fully fitted armor.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 27,
        },
        {
            Content = "A black jacket with white lightning patterns.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 28,
        },
        {
            Content = "A device by the right ear allows for wireless communication.",
            Desc = "Features",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 29,
        },
        {
            Content = "Used as a human stun baton during the USJ incident.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 30,
        },
        {
            Content = "A fully armed costume fit for battle.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 31,
        },
        {
            Content = "A red scarf as dark as blood.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 32,
        },
        {
            Content = "Five sharp knives ring the belt.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 33,
        },
        {
            Content = "A blade of almost two meters rests at the back.",
            Desc = "Feature 3",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1495",
            LabelId = 34,
        },
        {
            Content = "After the Hosu incident, Stain's outfit became a brief fashion sensation.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 35,
        },
        {
            Content = "A classic skin-tight superhero costume.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 36,
        },
        {
            Content = "Can withstand All Might's power to a certain extent.",
            Desc = "Features",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 37,
        },
        {
            Content = "No cape due to an unspecified reason.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 38,
        },
        {
            Content = "A wild, dark red costume.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 39,
        },
        {
            Content = "Gear-shaped armor pads the shoulders.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 40,
        },
        {
            Content = "A large R decorates a dark red sash wrapped around the waist.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 41,
        },
        {
            Content = "Eijiro Kirishima looks up to his manly hero, Crimson Riot.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 42,
        },
        {
            Content = "A green skin-tight costume.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 43,
        },
        {
            Content = "Binoculars are fitted into the head.",
            Desc = "Features",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 44,
        },
        {
            Content = "The hero agency internship was done at sea as wished.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 45,
        },
        {
            Content = "A purple and yellow hero costume.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 46,
        },
        {
            Content = "A purple mask and a yellow cape.",
            Desc = "Features",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 47,
        },
        {
            Content = "Minoru Mineta was motivated to become a hero purely to impress the ladies.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 48,
        },
        {
            Content = "A dark blue bodysuit costume.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 49,
        },
        {
            Content = "Endeavor envelops his costume with flames.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 50,
        },
        {
            Content = "A white pair of wrist guards.",
            Desc = "Feature 2",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1493",
            LabelId = 51,
        },
        {
            Content = "Not taken off even when going to watch his son at the Sports Festival.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 52,
        },
        {
            Content = "A black cape that covers the entire body.",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 53,
        },
        {
            Content = "A pair of long black boots.",
            Desc = "Feature 1",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1492",
            LabelId = 54,
        },
        {
            Content = "Fumikage Tokoyami seems to have a liking for dark things.",
            Desc = "Story",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1494",
            LabelId = 55,
        },
        { Content = "Sleek Black Costume", Desc = "Outfit", Img = "µù╢Φúà_µáçτ¡╛σ║\1491", LabelId = 56 },
        {
            Content = "Ink Green Chinese Costume",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 57,
        },
        { Content = "Pink Cheongsam Costume", Desc = "Outfit", Img = "µù╢Φúà_µáçτ¡╛σ║\1491", LabelId = 58 },
        { Content = "Orange Chinese Costume", Desc = "Outfit", Img = "µù╢Φúà_µáçτ¡╛σ║\1491", LabelId = 59 },
        {
            Content = "Ink Blue Chinese Costume",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 60,
        },
        {
            Content = "Mysterious Chinese Costume",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 61,
        },
        { Content = "Red Cheongsam Costume", Desc = "Outfit", Img = "µù╢Φúà_µáçτ¡╛σ║\1492", LabelId = 62 },
        {
            Content = "White Karate Gi Costume",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 63,
        },
        [65] = {
            Content = "Black Casual Costume",
            Desc = "Outfit",
            Img = "µù╢Φúà_µáçτ¡╛σ║\1491",
            LabelId = 65,
        },
    },
    Shape2Class = {
        [1002] = 102,
        [1003] = 104,
        [1006] = 106,
        [1007] = 107,
        [1008] = 108,
        [1009] = 109,
        [1010] = 110,
        [1011] = 111,
        [1012] = 112,
        [1013] = 113,
        [1014] = 114,
        [1015] = 115,
        [1016] = 116,
        [1018] = 118,
        [1019] = 119,
        [1020] = 120,
        [1021] = 121,
        [1022] = 123,
        [1024] = 124,
        [14101] = 124,
        [14102] = 124,
        [14111] = 102,
        [14112] = 102,
        [14121] = 107,
        [14122] = 107,
        [14131] = 108,
        [14141] = 109,
        [14151] = 123,
    },
    TipsCfg = {
        {
            Content = "If love lasts for a long time, you should focus on the future... don't you want to submit to fate?",
            TipsId = 1,
        },
    },
}

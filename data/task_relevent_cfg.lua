-- credit to atom0s for help with decompiling
-- Decompiled using luadec 2.2 rev:  for Lua 5.1 from https://github.com/viruscamp/luadec
return {
    ACCEPT_TASK_EFFECT = {
        { Delay = 0, FlashId = 10000250, Idx = 1 },
        { Delay = 0.5, FlashId = 10000252, Idx = 2 },
        { Delay = 0.6, FlashId = 10000251, Idx = 3 },
        { Delay = 0.6, FlashId = 10000221, Idx = 4 },
    },
    QUESTION_CFG = {
        { Answer = 4, Id = 1, LimitTime = 10, Options = { "4", "3", "1", "2" }, Question = "1+1=?", Type = 1 },
        {
            Answer = 1,
            Id = 2,
            LimitTime = 10,
            Options = { "Go", "Gomoku", "Chess", "Go Stones" },
            Question = 'What does "Qi" in "Four Arts" mean?',
            Type = 1,
        },
        {
            Answer = 2,
            Id = 3,
            LimitTime = 10,
            Options = { "All night", "Raindrops", "Like raindrops", "Rain" },
            Question = "It rains all night, and my love overflows like ______",
            Type = 2,
        },
        {
            Answer = 2,
            Id = 4,
            Options = { "Chicken Chop Rice", "Katsudon", "Omurice" },
            Question = "What kind of food does Izuku Midoriya like?",
            Type = 3,
        },
        {
            Answer = 1,
            Id = 5,
            Options = { "Spicy food", "Sour food", "Salty food" },
            Question = "What kind of food does Katsuki Bakugo like?",
            Type = 3,
        },
        {
            Answer = 3,
            Id = 6,
            Options = { "Ramen", "Instant Noodles", "Soba Noodles" },
            Question = "What kind of food does Shoto Todoroki like?",
            Type = 3,
        },
        {
            Answer = 2,
            Id = 7,
            Options = { "TCH", "SPD", "POW" },
            Question = "What kind of hero is Izuku Midoriya in the game?",
            Type = 4,
        },
        {
            Answer = 1,
            Id = 8,
            Options = {
                "Use it again within 1 second to pursue the enemies",
                "Press and hold the skill for a charged attack",
                "Refresh skill cooldown after defeating enemies",
            },
            Question = "Which of the following effects does Izuku Midoriya's Q skill [Shoot Style] have?",
            Type = 4,
        },
        {
            Answer = 1,
            Id = 9,
            Options = { "Yes", "Can't" },
            Question = "Can Izuku Midoriya release skills in the air?",
            Type = 4,
        },
        {
            Answer = 1,
            Id = 10,
            Options = { "W-Smash", "E - Swift Kicks", "R - Delaware Detroit Smash" },
            Question = "Which skill of Izuku Midoriya can refresh the cooldown of Q skill [Shoot Style] after hitting an enemy?",
            Type = 4,
        },
        {
            Answer = 3,
            Id = 11,
            Options = { "Increases DEF", "Recovers HP", "Changes the moving action" },
            Question = "What effect does Katsuki Bakugo's unlocked skill [Explosive Torpedo] have?",
            Type = 5,
        },
        {
            Answer = 3,
            Id = 12,
            Options = { "[Burst Bullet]", "[Torpedo Burst]", "[Flame Blast]" },
            Question = "Which of the following skills does not belong to Katsuki Bakugo?",
            Type = 5,
        },
        {
            Answer = 2,
            Id = 13,
            Options = { "3", "5", "4" },
            Question = "How many times can Katsuki Bakugo's Q skill [Burst Bullet] shoot maximally?",
            Type = 5,
        },
        {
            Answer = 1,
            Id = 14,
            Options = { "Can enhance Q skill [Burst Bullet]", "Can enhance ATK", "Can recover HP" },
            Question = "What is the effect of Katsuki Bakugo's [Explosive Sweat]?",
            Type = 5,
        },
        {
            Answer = 1,
            Id = 15,
            Options = { "Melee Attack Hero", "Ranged Attack Hero", "Technical-type Hero" },
            Question = "Regarding the description of Denki Kaminari, which one is wrong?",
            Type = 6,
        },
        {
            Answer = 1,
            Id = 16,
            Options = {
                "There is a chance that an [Electrostatic Field] remains after Dodge",
                "Can release [Lightning Chain] twice",
                "Enhance [Electric Surge]",
            },
            Question = "What is the effect of Denki Kaminari's Talent [Delayed Charge]?",
            Type = 6,
        },
        {
            Answer = 1,
            Id = 17,
            Options = {
                "Enhances via getting [Electric Energy]",
                "Enhances when HP is below 50%",
                "Grants enhancement after releasing [Indiscriminate Shock 1.3 Million Volts]",
            },
            Question = "How to enhance Denki Kaminari's Q skill [Lightning Bolt]?",
            Type = 6,
        },
        {
            Answer = 3,
            Id = 18,
            Options = { "Will feel hungry", "Will feel dizzy", "Will become dumb" },
            Question = "What side effects will be brought by Denki Kaminari after releasing the R skill [Indiscriminate Shock 1.3 Million Volts]?",
            Type = 6,
        },
        {
            Answer = 2,
            Id = 19,
            Options = { "Floats the villains", "Floats self", "Changes the Dodge action" },
            Question = "What is the effect of Ochaco Uraraka's Quirk skill [Zero Gravity]?",
            Type = 7,
        },
        {
            Answer = 2,
            Id = 20,
            Options = { "Increases DEF when floating", "Enhances ATK when floating", "Enhances Dodge skill when floating" },
            Question = "What is the use of the Floating Energy accumulated by Ochaco Uraraka?",
            Type = 7,
        },
        {
            Answer = 2,
            Id = 21,
            Options = { "Q - Pillar Swing", "W - Light Assault", "E - Meteor Storm" },
            Question = "When Ochaco Uraraka is attacking on the ground, which skill can she use to make the enemy float?",
            Type = 7,
        },
        {
            Answer = 1,
            Id = 22,
            Options = { "Normal ATK with Fist Will", "Normal ATK with Movement", "Normal ATK with Hyperarmor" },
            Question = "What effects can All Might's basic talents bring?",
            Type = 8,
        },
        {
            Answer = 2,
            Id = 23,
            Options = { "1", "2", "3" },
            Question = "How many phases of damage does the skill [I AM Here] have?",
            Type = 8,
        },
        {
            Answer = 1,
            Id = 24,
            Options = { "Use different attack methods", "Increases via Normal ATK", "Increases via Dodge" },
            Question = "How to increase the number of abilities of All Might?",
            Type = 8,
        },
        {
            Answer = 1,
            Id = 25,
            Options = { "Ability reaches Floor 7", "Successfully trigger the Perfect Dodge", "HP is below 50%" },
            Question = "Under what circumstances will Detroit Smash be strengthened?",
            Type = 8,
        },
        {
            Answer = 1,
            Id = 26,
            Options = { "Increases via Normal ATK", "Increases via taking attacks", "Increases over time" },
            Question = "How should Stain fill the ability bar?",
            Type = 9,
        },
        {
            Answer = 2,
            Id = 27,
            Options = { "Attack recovers HP", "Enhancement energy bar refilling", "Increases DEF" },
            Question = "What effect does Stain's ability have?",
            Type = 9,
        },
        {
            Answer = 1,
            Id = 28,
            Options = { "Enters the Fury status", "Grants Hyperarmor", "Recovers HP" },
            Question = "What happens when Stain's ability bar is full?",
            Type = 9,
        },
        {
            Answer = 1,
            Id = 29,
            Options = { "Normal ATK with Sword Will", "Normal ATK to break DEF", "Normal ATK strikes critically" },
            Question = "What effect does Stain's ultimate skill have?",
            Type = 9,
        },
        {
            Answer = 1,
            Id = 30,
            Options = { "Yes", "No" },
            Question = "Was All Might ever a student of U.A. High?",
            Type = 10,
        },
        {
            Answer = 1,
            Id = 31,
            Options = { "1 time(s) every 1 year(s)", "1 time(s) every 1 month(s)", "1 time(s) every 3 month(s)" },
            Question = "How often is U.A. High's Sports Festival held?",
            Type = 10,
        },
        {
            Answer = 2,
            Id = 32,
            Options = { "1 Classes", "2 Classes", "3 Classes" },
            Question = "How many classes are there in the current first grade Department of Heroes?",
            Type = 10,
        },
        {
            Answer = 3,
            Id = 33,
            Options = { "U.A. High", "Hero Club", "Hero Agency" },
            Question = "After you become a Pro Hero, what organization will you have to  be in to accept commissions?",
            Type = 10,
        },
        {
            Answer = 1,
            Id = 34,
            Options = { "All Might", "Endeavor", "Naomasa Tsukauchi" },
            Question = "Who is the hero that was once a graduate of our school and is now known as the [Symbol of Peace]?",
            Type = 11,
        },
        {
            Answer = 2,
            Id = 35,
            Options = { "U.A. Student Card", "Temporary license", "ID Card" },
            Question = "Before students can get a Hero License, what do they need to obtain to be allowed to carry out hero activities?",
            Type = 11,
        },
        {
            Answer = 2,
            Id = 36,
            Options = { "[Fluoroscopy]", "[Homing]", "[Bullet Crafting]" },
            Question = "What is the Quirk of the teacher Snipe?",
            Type = 11,
        },
        {
            Answer = 2,
            Id = 37,
            Options = { "Midnight", "Ectoplasm", "Cementos" },
            Question = "Which teacher has the clone ability?",
            Type = 11,
        },
        {
            Answer = 4,
            Id = 38,
            Options = { "Chocolate", "Apple", "Honey", "Red beans" },
            Question = "What is the filling in Taiyaki generally made?",
            Type = 13,
        },
        {
            Answer = 2,
            Id = 39,
            Options = {
                "Smell of sea breams",
                "Looks like a sea bream",
                "Sea Bream Festival Food",
                "Tribute to the Seabream God",
            },
            Question = "Why is taiyaki named after sea breams?",
            Type = 13,
        },
        {
            Answer = 1,
            Id = 40,
            Options = { "Hot from the oven", "Cold", "Neither hot nor cold but room temperature" },
            Question = "What flavor is my favorite Taiyaki?",
            Type = 13,
        },
        {
            Answer = 1,
            Id = 41,
            Img = "????????????_????????????",
            Options = { "Rank 8", "Rank 9", "Rank 7" },
            Question = "So, how many #cEE6363customers#c000000 were there in the store at that time?",
            Type = 14,
        },
        {
            Answer = 2,
            Id = 42,
            Img = "????????????_????????????",
            Options = { "All kids", "Mostly young people", "More popular with middle-aged customers" },
            Question = "Different age groups have different preferences for food. What are the majority of customers in that store?",
            Type = 14,
        },
        {
            Answer = 1,
            Id = 43,
            Img = "????????????_????????????",
            Options = { "Stylish marble floor", "Quaint wooden floor", "Simple cement floor" },
            Question = "I think decoration is also a part of attracting customers. Maybe the decoration style of that store can provide a reference? Such as paving.",
            Type = 14,
        },
        {
            Answer = 1,
            Id = 44,
            Img = "????????????_????????????",
            Options = { "Wall-mounted TV", "Small stage for singing", "Public game console" },
            Question = "In addition to food, there may be other facilities to attract customers. Is there anything special about the store?",
            Type = 14,
        },
        {
            Answer = 3,
            Id = 45,
            Options = {
                "Beige sweater and red dress",
                "Blue T-shirt and red jacket",
                "White shirt and red short-sleeved T-shirt",
            },
            Question = "So I'm about to paint costumes. What is she wearing? I hope it's not too complicated...",
            Type = 15,
        },
        {
            Answer = 1,
            Id = 46,
            Options = { "Yellow skirt", "Brown denim shorts", "Black tights" },
            Question = "Next, it is the outfit for the lower body. Actually, I have not been very good at drawing the lines of the legs...",
            Type = 15,
        },
        {
            Answer = 1,
            Id = 47,
            Options = { "Red high-top boots", "Black leather boots", "Red high heels" },
            Question = "I'm good at drawing shoes, and my father has always wanted me to inherit his shoe shop.",
            Type = 15,
        },
        {
            Answer = 3,
            Id = 48,
            Options = { "Playful red short hair", "Long black wavy hair", "Black straight hair" },
            Question = "Regarding the hair... Sure enough, it is still difficult to draw...",
            Type = 15,
        },
        {
            Answer = 2,
            Id = 49,
            Options = { "Morning", "Noon", "Afternoon" },
            Question = "Well, at what time period did the suspect appear on the scene?",
            Type = 16,
        },
        {
            Answer = 1,
            Id = 50,
            Options = { "About his girlfriend", "About his time of action", "About his location" },
            Question = "What is contradictory in what he said?",
            Type = 16,
        },
        {
            Answer = 1,
            Id = 51,
            Options = { "Someone is waiting for him", "Emergency Incidents at work", "He is too scared" },
            Question = "So according to what he said, why did he run away?",
            Type = 16,
        },
        {
            Answer = 2,
            Id = 52,
            Options = { "For money", "Out of revenge", "Frame" },
            Question = "If he is really the criminal, what might be his motive?",
            Type = 16,
        },
        {
            Answer = 1,
            Id = 53,
            Img = "????????????_?????????????????????????????\168",
            Options = { "Residential street", "Commercial Plaza", "City Garden", "Seaside Park" },
            Question = "Where was this video taken?",
            Type = 17,
        },
        {
            Answer = 2,
            Id = 54,
            Img = "????????????_?????????????????????????????\168",
            Options = { "Dawn", "Morning", "Twilight", "Night" },
            Question = "When was this video taken?",
            Type = 17,
        },
        {
            Answer = 4,
            Id = 55,
            Img = "????????????_?????????????????????????????\168",
            Options = {
                "There is a suspicious old man",
                "The kid on the roadside is suspicious",
                "The dog looks strange",
                "A guy in a green suit is suspicious",
            },
            Question = "Are there any suspicious people on the screen?",
            Type = 17,
        },
        {
            Answer = 4,
            Id = 56,
            Img = "????????????_?????????????????????????????\168",
            Options = { "Robbery", "Fighting", "Vandalism", "Theft" },
            Question = "What crime could this suspicious person be committing?",
            Type = 17,
        },
        {
            Answer = 2,
            Id = 57,
            Options = { "Symbol of Strength", "Symbol of Peace", "Symbol of Courage" },
            Question = "The No. 1 Hero All Might with super strength is also called?",
            Type = 18,
        },
        {
            Answer = 2,
            Id = 58,
            Options = { "UK", "USA", "Germany" },
            Question = "Which country has the No. 1 Hero All Might studied in before?",
            Type = 18,
        },
        {
            Answer = 2,
            Id = 59,
            Options = {
                "It takes effect more easily on male targets",
                "It must have physical contact with the target to take effect",
                "It is released by exposing the skin",
            },
            Question = "Which description does not match Midnight's Quirk [Somnambulist]?",
            Type = 18,
        },
        {
            Answer = 2,
            Id = 60,
            Options = { "Backdraft", "Endeavor", "Death Arms" },
            Question = "Which Pro Hero has the Quirk of the flames?",
            Type = 18,
        },
        {
            Answer = 2,
            Id = 61,
            Options = { "Seth Smash", "Detroit Smash", "Liverpool Smash" },
            Question = "Which of the following is the name of All Might's skill?",
            Type = 19,
        },
        {
            Answer = 2,
            Id = 62,
            Options = { "[Magnetic Force]", "[Black Hole]", "[Hurricane]" },
            Question = "What is the Thirteen's Quirk?",
            Type = 19,
        },
        {
            Answer = 2,
            Id = 63,
            Options = { "Midnight", "Present Mic", "Principal Nezu" },
            Question = "During the U.A. High Sports Festival, who is the host partner with the Eraser Head?",
            Type = 19,
        },
        {
            Answer = 2,
            Id = 64,
            Options = { "Three", "Four", "Five" },
            Question = "How many members are there in the Hero Group [Pussycats]?",
            Type = 19,
        },
        {
            Answer = 2,
            Id = 65,
            Options = { "Kamui Woods", "Gran Torino", "Ectoplasm" },
            Question = "Who has taught All Might at U.A. High?",
            Type = 20,
        },
        {
            Answer = 1,
            Id = 66,
            Options = { "Eraser Head", "Thirteen", "Best Jeanist" },
            Question = "Which Pro Hero can nullify another person's Quirk temporarily?",
            Type = 20,
        },
        {
            Answer = 3,
            Id = 67,
            Options = { "20 People", "50 People", "100 People" },
            Question = "In the news report that has become a legend, how many people have been rescued by All Might alone?",
            Type = 20,
        },
        {
            Answer = 2,
            Id = 68,
            Options = { "Red, black, yellow, and white", "Red, blue, white, and yellow", "Blue, black, red, and gray" },
            Question = "What are the colors of All Might's latest combat suit?",
            Type = 20,
        },
        {
            Answer = 2,
            Id = 69,
            Options = { "TCH", "SPD", "POW" },
            Question = "What kind of hero is Izuku Midoriya in the game?",
            Type = 21,
        },
        {
            Answer = 1,
            Id = 70,
            Options = {
                "Use it again within 1 second to pursue the enemies",
                "Press and hold the skill for a charged attack",
                "Refresh skill cooldown after defeating enemies",
            },
            Question = "Which of the following effects does Izuku Midoriya's Q skill [Shoot Style] have?",
            Type = 21,
        },
        {
            Answer = 2,
            Id = 71,
            Options = { "3 Departments", "4 Departments", "5 Departments" },
            Question = "How many departments does U.A. High have?",
            Type = 22,
        },
        {
            Answer = 1,
            Id = 72,
            Options = { "Hawks", "All Might", "Endeavor", "Best Jeanist" },
            Question = "Which Pro Hero didn't graduate from U.A. High?",
            Type = 22,
        },
        {
            Answer = 1,
            Id = 73,
            Options = {
                "Unforeseen Simulation Joint",
                "Faux Villain Training Area",
                "Quirk Mastery Training Area",
                "Practical Test Training Area",
            },
            Question = "The League of Villains first attacked U.A. High at the USJ. What does USJ stand for?",
            Type = 22,
        },
        {
            Answer = 1,
            Id = 74,
            Options = { "Todoroki and Bakugo", "Bakugo and Tokoyami", "Todoroki and Iida", "Bakugo and Midoriya" },
            Question = "In the Sports Festival elimination round, who were the final two contestants?",
            Type = 22,
        },
        {
            Answer = 1,
            Id = 75,
            Options = { "Tokyo", "Osaka", "Yokohama", "Kyoto" },
            Question = "Where is All Might's agency located?",
            Type = 23,
        },
        {
            Answer = 1,
            Id = 76,
            Options = { "Eraser Head", "Best Jeanist", "Endeavor", "Kamui Woods" },
            Question = "Which Pro Hero hates appearing in the media, saying it will affect their work?",
            Type = 23,
        },
        {
            Answer = 1,
            Id = 77,
            Options = { "Todoroki Squad", "Bakugo Squad", "Monoma Squad", "Tetsutetsu Squad" },
            Question = "In the Sports Festival cavalry battle, which squad stole Midoriya's 10,000,000 point headband?",
            Type = 23,
        },
        {
            Answer = 1,
            Id = 78,
            Options = { "Blood Type O", "Blood Type A", "Blood Type B", "Blood Type AB" },
            Question = 'Which blood type does Hero Killer: Stain\'s Quirk "Bloodcurdle" paralyze for the shortest amount of time?',
            Type = 23,
        },
        {
            Answer = 1,
            Id = 79,
            Options = { "Directional Loudspeaker", "Walkman", "Loud speaker" },
            Question = "What kind of device does Present Mic wear around his neck?",
            Type = 24,
        },
        {
            Answer = 1,
            Id = 80,
            Options = { "72", "36", "108", "54" },
            Question = "How many villains did the police arrest in total at the USJ incident?",
            Type = 24,
        },
        {
            Answer = 1,
            Id = 81,
            Options = { "Cavalry Battle", "Obstacle Race", "Scavenger Hunt", "Mock Battle" },
            Question = "What is the second event at the U.A. High Sports Festival?",
            Type = 24,
        },
        {
            Answer = 1,
            Id = 82,
            Options = { "Karaoke", "Watch movies", "Listen to music", "Play games" },
            Question = 'What kind of performance does Ectoplasm put on to increase the power of his Quirk, "Clones"?',
            Type = 24,
        },
        {
            Answer = 1,
            Id = 83,
            Options = { "Nezu", "Nozu", "White Bear", "White Mouse" },
            Question = "The principal that looks like a bear or a mouse, what is his name?",
            Type = 25,
        },
        {
            Answer = 1,
            Id = 84,
            Options = { "Eraser Head", "Present Mic", "Thirteen", "Midnight" },
            Question = "Who is the homeroom teacher for Class 1-A at U.A. High?",
            Type = 25,
        },
        {
            Answer = 1,
            Id = 85,
            Options = { "Special Rescue Points", "Combat Skill Points", "Tactical Points" },
            Question = "In the practical test of the entrance exam, aside from points acquired by destroying faux villains, what was the other way to acquire points?",
            Type = 25,
        },
        {
            Answer = 1,
            Id = 86,
            Options = { "Minoru Mineta", "Ochaco Uraraka", "Hanta Sero", "Yuga Aoyama" },
            Question = "During the USJ incident, the three heroes who fought the League of Villains in the shipwreck zone were Izuku Midoriya, Tsuyu Asui, and?",
            Type = 25,
        },
        {
            Answer = 1,
            Id = 87,
            Options = { "Mock Street Training", "Mock Battle Training", "Mock Beach Training", "Mock Rescue Training" },
            Question = "What is the practical test for this year's U.A. High entrance exam?",
            Type = 26,
        },
        {
            Answer = 1,
            Id = 88,
            Options = { "Izuku Midoriya", "Momo Yaoyorozu", "Tenya Iida", "Katsuki Bakugo" },
            Question = "According to the results of the class representative election, who was first elected as representative of Class 1-A?",
            Type = 26,
        },
        {
            Answer = 1,
            Id = 89,
            Options = { "Izuku Midoriya", "Shoto Todoroki", "Tenya Iida", "Katsuki Bakugo" },
            Question = "In the Sports Festival obstacle race, who was the first to reach the finish line and win 10,000,000 points?",
            Type = 26,
        },
        {
            Answer = 1,
            Id = 90,
            Options = { "Cementos", "Midnight", "Principal Nezu", "Thirteen" },
            Question = "In the practical test portion of the final exams, who was the teacher who fought against Rikido Sato and Eijiro Kirishima?",
            Type = 26,
        },
        {
            Answer = 1,
            Id = 91,
            Options = { "Yaoyorozu and Todoroki", "Todoroki and Tokoyami", "Yaoyorozu and Bakugo", "Bakugo and Todoroki" },
            Question = "Who are the two students that got recommended for admission to U.A. High in Class 1-A?",
            Type = 27,
        },
        {
            Answer = 1,
            Id = 92,
            Options = { "Thirteen", "Principal Nezu", "Power Loader", "Midnight" },
            Question = "Which teacher designed the USJ?",
            Type = 27,
        },
        {
            Answer = 1,
            Id = 93,
            Options = { "Momo Yaoyorozu", "Tsuyu Asui", "Ochaco Uraraka", "Mina Ashido" },
            Question = "In the Sports Festival obstacle race, which girl was Mineta stuck to when they passed the finish line?",
            Type = 27,
        },
        {
            Answer = 1,
            Id = 94,
            Options = { "Thirteen", "Snipe", "Midnight", "Power Loader" },
            Question = "In the practical test portion of the final exams, who was the teacher who fought against Ochaco Uraraka and Yuga Aoyama?",
            Type = 27,
        },
        {
            Answer = 3,
            Id = 95,
            Options = { "Eraser Head", "Midnight", "Vlad King", "Hound" },
            Question = "Who is the homeroom teacher for Class 1-B at U.A. High?",
            Type = 28,
        },
        {
            Answer = 1,
            Id = 96,
            Options = { "Throw Softball", "Jump high", "Jump Rope", "Run on stairs" },
            Question = "What did Class 1-A do for the Quirk Apprehension Test?",
            Type = 28,
        },
        {
            Answer = 1,
            Id = 97,
            Options = { "Best Jeanist", "Fourth Kind", "Sir Nighteye", "Gang Orca" },
            Question = "Which hero's agency did Bakugo go to during his internship?",
            Type = 28,
        },
        {
            Answer = 1,
            Id = 98,
            Options = { "Wear Super-Compressed Weights", "Wear Handcuffs", "Do not use your Quirk", "Do not move" },
            Question = "In the practical test portion of the final exams, how did the teachers restrain themselves in front of the students?",
            Type = 28,
        },
        {
            Answer = 1,
            Id = 99,
            Options = { "60 point", "0 point", "100 point", "80 point" },
            Question = "What was Izuku Midoriya's final score in the entrance examination?",
            Type = 29,
        },
        {
            Answer = 1,
            Id = 100,
            Options = { "Present Mic", "Cementos", "Midnight", "Thirteen" },
            Question = "Who teaches the English course for Class 1-A?",
            Type = 29,
        },
        {
            Answer = 1,
            Id = 101,
            Options = { "Midnight", "Cementos", "Thirteen", "Principal Nezu" },
            Question = "Which teacher served as a referee for the Year 1 students in the U.A. High Sports Festival?",
            Type = 29,
        },
        {
            Answer = 1,
            Id = 102,
            Options = {
                "The target responds to Shinso",
                "The target makes contact with Shinso",
                "The target is looking at Shinso",
            },
            Question = 'How does Shinso from the General Department activate his Quirk, "Brainwashing"?',
            Type = 29,
        },
        {
            Answer = 1,
            Id = 103,
            Options = { "Tenya Iida", "Izuku Midoriya", "Ochaco Uraraka", "Fumikage Tokoyami" },
            Question = "In Class 1-A's Two on Two combat training, who teamed with Bakugo?",
            Type = 30,
        },
        {
            Answer = 1,
            Id = 104,
            Options = { "General Department", "Department of Management", "Department of Support" },
            Question = "Which department do Classes C, D, and E of Year 1 at U.A. High belong to?",
            Type = 30,
        },
        {
            Answer = 1,
            Id = 105,
            Options = { "Mashirao Ojiro", "Rikido Sato", "Hanta Sero", "Denki Kaminari" },
            Question = "In the Sports Festival One on One tournament, who was the first to abstain?",
            Type = 30,
        },
        {
            Answer = 1,
            Id = 106,
            Options = {
                "Give the teachers the custom handcuffs",
                "Don't be caught by the teachers during the time limit",
                "Make the teachers lose their combat abilities",
                "Grab the ornament from the teachers",
            },
            Question = "There are two conditions for passing the practical test against the teachers. The first one is that one of the members of the group must escape the examination area. What is the other?",
            Type = 30,
        },
        {
            Answer = 1,
            Id = 107,
            Img = "????????????_?????????????????????????????\1682",
            Options = { "Walking Street", "The Station Square", "City Garden", "Seaside Park" },
            Question = "Where was this video taken?",
            Type = 31,
        },
        {
            Answer = 3,
            Id = 108,
            Img = "????????????_?????????????????????????????\1682",
            Options = { "Early Morning", "Noon", "Afternoon", "Night" },
            Question = "When was this video taken?",
            Type = 31,
        },
        {
            Answer = 4,
            Id = 109,
            Img = "????????????_?????????????????????????????\1682",
            Options = {
                "There is a suspicious old man",
                "The bicycle rider is suspicious",
                "There is a suspicious worker",
                "There is a suspicious person wearing purple clothes",
            },
            Question = "Who's the suspicious person in the picture?",
            Type = 31,
        },
        {
            Answer = 3,
            Id = 110,
            Img = "????????????_?????????????????????????????\1682",
            Options = { "Robbery", "Fighting", "Vandalism", "Theft" },
            Question = "What crime could this suspicious person be committing?",
            Type = 31,
        },
        {
            Answer = 2,
            Id = 111,
            Img = "????????????_?????????????????????????????\1683",
            Options = { "Walking Street", "The Station Square", "City Garden", "Seaside Park" },
            Question = "Where was this video taken?",
            Type = 32,
        },
        {
            Answer = 4,
            Id = 112,
            Img = "????????????_?????????????????????????????\1683",
            Options = { "Early Morning", "Noon", "Afternoon", "Night" },
            Question = "When was this video taken?",
            Type = 32,
        },
        {
            Answer = 4,
            Id = 113,
            Img = "????????????_?????????????????????????????\1683",
            Options = {
                "There is a suspicious girl student",
                "The person taking photos is suspicious",
                "There is a suspicious office worker",
                "There is a suspicious person wearing black clothes",
            },
            Question = "Who's the suspicious person in the picture?",
            Type = 32,
        },
        {
            Answer = 1,
            Id = 114,
            Img = "????????????_?????????????????????????????\1683",
            Options = { "Robbery", "Fighting", "Vandalism", "Theft" },
            Question = "What crime could this suspicious person be committing?",
            Type = 32,
        },
    },
    TASK_ORDER_CFG = {
        { Idx = 1, TaskId = 1010 },
        { Idx = 2, TaskId = 1030 },
        { Idx = 3, TaskId = 1040 },
        { Idx = 4, TaskId = 1050 },
        { Idx = 5, TaskId = 1060 },
        { Idx = 6, TaskId = 1061 },
        { Idx = 7, TaskId = 1070 },
        { Idx = 8, TaskId = 1090 },
        { Idx = 9, TaskId = 1100 },
        { Idx = 10, TaskId = 1110 },
        { Idx = 11, TaskId = 1120 },
        { Idx = 12, TaskId = 1130 },
        { Idx = 13, TaskId = 1140 },
        { Idx = 14, TaskId = 1150 },
        { Idx = 15, TaskId = 1160 },
        { Idx = 16, TaskId = 1170 },
        { Idx = 17, TaskId = 1180 },
        { Idx = 18, TaskId = 1190 },
        { Idx = 19, TaskId = 1200 },
        { Idx = 20, TaskId = 1210 },
        { Idx = 21, TaskId = 1220 },
        { Idx = 22, TaskId = 1250 },
        { Idx = 23, TaskId = 1270 },
        { Idx = 24, TaskId = 1280 },
        { Idx = 25, TaskId = 1290 },
        { Idx = 26, TaskId = 1300 },
        { Idx = 27, TaskId = 1310 },
        { Idx = 28, TaskId = 1320 },
        { Idx = 29, TaskId = 1330 },
        { Idx = 30, TaskId = 1340 },
        { Idx = 31, TaskId = 1350 },
        { Idx = 32, TaskId = 1360 },
        { Idx = 33, TaskId = 1370 },
        { Idx = 34, TaskId = 1380 },
        { Idx = 35, TaskId = 1390 },
        { Idx = 36, TaskId = 1400 },
        { Idx = 37, TaskId = 1410 },
        { Idx = 38, TaskId = 1420 },
        { Idx = 39, TaskId = 1430 },
        { Idx = 40, TaskId = 1440 },
        { Idx = 41, TaskId = 1450 },
        { Idx = 42, TaskId = 1460 },
        { Idx = 43, TaskId = 1470 },
        { Idx = 44, TaskId = 1480 },
        { Idx = 45, TaskId = 1490 },
        { Idx = 46, TaskId = 1500 },
        { Idx = 47, TaskId = 1510 },
        { Idx = 48, TaskId = 1520 },
        { Idx = 49, TaskId = 1530 },
        { Idx = 50, TaskId = 1540 },
        { Idx = 51, TaskId = 1550 },
        { Idx = 52, TaskId = 1560 },
        { Idx = 53, TaskId = 1570 },
        { Idx = 54, TaskId = 1580 },
        { Idx = 55, TaskId = 1590 },
        { Idx = 56, TaskId = 1600 },
        { Idx = 57, TaskId = 1601 },
        { Idx = 58, TaskId = 1610 },
        { Idx = 59, TaskId = 1611 },
        { Idx = 60, TaskId = 1620 },
        { Idx = 61, TaskId = 1630 },
        { Idx = 62, TaskId = 1631 },
        { Idx = 63, TaskId = 1640 },
        { Idx = 64, TaskId = 1641 },
        { Idx = 65, TaskId = 1650 },
        { Idx = 66, TaskId = 1651 },
        { Idx = 67, TaskId = 1660 },
        { Idx = 68, TaskId = 1661 },
        { Idx = 69, TaskId = 1670 },
        { Idx = 70, TaskId = 1680 },
        { Idx = 71, TaskId = 1690 },
        { Idx = 72, TaskId = 1700 },
        { Idx = 73, TaskId = 1701 },
        { Idx = 74, TaskId = 1710 },
        { Idx = 75, TaskId = 1711 },
        { Idx = 76, TaskId = 1712 },
        { Idx = 77, TaskId = 1720 },
        { Idx = 78, TaskId = 1730 },
        { Idx = 79, TaskId = 1731 },
        { Idx = 80, TaskId = 1740 },
        { Idx = 81, TaskId = 1750 },
        { Idx = 82, TaskId = 1760 },
        { Idx = 83, TaskId = 1770 },
        { Idx = 84, TaskId = 1780 },
        { Idx = 85, TaskId = 1790 },
        { Idx = 86, TaskId = 1800 },
        { Idx = 87, TaskId = 1810 },
        { Idx = 88, TaskId = 1820 },
        { Idx = 89, TaskId = 1821 },
        { Idx = 90, TaskId = 1822 },
        { Idx = 91, TaskId = 1830 },
        { Idx = 92, TaskId = 1831 },
        { Idx = 93, TaskId = 1840 },
        { Idx = 94, TaskId = 1850 },
        { Idx = 95, TaskId = 1860 },
        { Idx = 96, TaskId = 1870 },
        { Idx = 97, TaskId = 1880 },
        { Idx = 98, TaskId = 1890 },
        { Idx = 99, TaskId = 1900 },
        { Idx = 100, TaskId = 1910 },
        { Idx = 101, TaskId = 1920 },
        { Idx = 102, TaskId = 1930 },
        { Idx = 103, TaskId = 1940 },
        { Idx = 104, TaskId = 1950 },
        { Idx = 105, TaskId = 1960 },
        { Idx = 106, TaskId = 1970 },
        { Idx = 107, TaskId = 1980 },
        { Idx = 108, TaskId = 1990 },
        { Idx = 109, TaskId = 2000 },
        { Idx = 110, TaskId = 2010 },
        { Idx = 111, TaskId = 2020 },
        { Idx = 112, TaskId = 2030 },
        { Idx = 113, TaskId = 2040 },
        { Idx = 114, TaskId = 2050 },
        { Idx = 115, TaskId = 2060 },
        { Idx = 116, TaskId = 2070 },
        { Idx = 117, TaskId = 2080 },
        { Idx = 118, TaskId = 2090 },
        { Idx = 119, TaskId = 2100 },
    },
}

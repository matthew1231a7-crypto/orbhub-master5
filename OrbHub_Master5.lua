--[[
    ⚡ Orb Hub | Master Hub v4
    Key: orbhub
    Discord: https://discord.gg/AG9bjcurht
    Credits: Made By Tox | Testers: TTV and Satoru
    400+ Games
--]]

local Players          = game:GetService("Players")
local TweenService     = game:GetService("TweenService")
local CoreGui          = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local Lighting         = game:GetService("Lighting")
local HttpGet          = function(url) return game:HttpGet(url) end

local lp = Players.LocalPlayer

repeat task.wait() until game:IsLoaded()
task.wait(1)

pcall(function()
    for _, n in ipairs({"OrbHub_KeyUI","OrbHub_Master4"}) do
        local o = CoreGui:FindFirstChild(n)
        if o then o:Destroy() end
    end
end)

local VALID_KEY    = "orbhub"
local DISCORD_LINK = "https://discord.gg/AG9bjcurht"
local IY           = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
local ORB          = "https://raw.githubusercontent.com/matthew1231a7-crypto/"

local GAME_LIST = {
    -- ORB HUB ORIGINALS
    {name="Blade Ball",           icon="⚔️", cat="Orb Hub",  key="orbhub1", color=Color3.fromRGB(41,128,255),  url=ORB.."orbhub/refs/heads/main/OrbHub.lua"},
    {name="Swing Obby",           icon="🌀", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(52,211,153),  url=ORB.."swingobby-orbhub/refs/heads/main/SwingObby_OrbHub.lua"},
    {name="Driving Empire",       icon="🚗", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(251,146,60),  url=ORB.."drivingempire-orbhub/refs/heads/main/DrivingEmpire_OrbHub.lua"},
    {name="Rivals",               icon="🥊", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(239,68,68),   url=ORB.."rivals-orbhub/refs/heads/main/Rivals_OrbHub.lua"},
    {name="Knockout",             icon="👊", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(168,85,247),  url=ORB.."orbhub-knockout/refs/heads/main/Knockout_OrbHub.lua"},
    {name="Fly Brainrots",        icon="✈️", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(6,182,212),   url=ORB.."flybrainrot-orbhub/refs/heads/main/FlyBrainrot_OrbHub.lua"},
    {name="Cut Grass",            icon="✂️", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(34,197,94),   url=ORB.."cutgrass-orbhub/refs/heads/main/CutGrass_OrbHub.lua"},
    {name="Steal Brainrot",       icon="🧠", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(236,72,153),  url=ORB.."stealbrainrot-orbhub/refs/heads/main/StealBrainrot_OrbHub.lua"},
    {name="Bloxstrike",           icon="🔫", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(239,68,68),   url=ORB.."bloxstrike-orbhub/refs/heads/main/Bloxstrike_OrbHub.lua"},
    {name="Sword Factory",        icon="🗡️", cat="Orb Hub",  key="orbhub",  color=Color3.fromRGB(139,92,246),  url=ORB.."swordfactory-orbhub/refs/heads/main/SwordFactory_OrbHub.lua"},
    {name="Arcade Basketball",    icon="🏀", cat="Orb Hub",  key="toxsonfr",color=Color3.fromRGB(251,146,60),  url=ORB.."Toxson-Arcade-Basketball/refs/heads/main/ArcadeBB_v2.lua"},

    -- ANIME / RPG
    {name="Blox Fruits",          icon="🍎", cat="Anime",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Shindo Life",          icon="🌀", cat="Anime",    key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Project Slayers",      icon="⚔️", cat="Anime",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Demon Slayer RPG 2",   icon="🌊", cat="Anime",    key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Anime Fighting Sim",   icon="👊", cat="Anime",    key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Anime Adventures",     icon="⛩️", cat="Anime",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Anime Dimensions",     icon="🎌", cat="Anime",    key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Dragon Ball Rage",     icon="🔥", cat="Anime",    key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="King Legacy",          icon="👑", cat="Anime",    key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Grand Piece Online",   icon="🏴‍☠️",cat="Anime",    key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Type Soul",            icon="👻", cat="Anime",    key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
    {name="Deepwoken",            icon="🌊", cat="Anime",    key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Arcane Odyssey",       icon="🔮", cat="Anime",    key="orbhub",  color=Color3.fromRGB(139,92,246),  url=IY},
    {name="Fruit Battlegrounds",  icon="🍊", cat="Anime",    key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Anime Impact",         icon="💥", cat="Anime",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Anime Last Stand",     icon="🎯", cat="Anime",    key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Naruto RPG Beyond",    icon="🍃", cat="Anime",    key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="One Piece Game",       icon="⚓", cat="Anime",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Bleach Resistance",    icon="⚔️", cat="Anime",    key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
    {name="My Hero Academia",     icon="💪", cat="Anime",    key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Attack on Titan",      icon="⚔️", cat="Anime",    key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Sword Art Online",     icon="🗡️", cat="Anime",    key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
    {name="Dragon Adventures",    icon="🐉", cat="Anime",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Ro Ghoul",             icon="🩸", cat="Anime",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Dragon Ball Online",   icon="🌐", cat="Anime",    key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Anime World Tower Def",icon="🏯", cat="Anime",    key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Anime Crossover Def",  icon="🎮", cat="Anime",    key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Stands Awakening",     icon="✊", cat="Anime",    key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="A Bizarre Day",        icon="🌟", cat="Anime",    key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
    {name="Blox no Mi",           icon="🍑", cat="Anime",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},

    -- FPS / SHOOTERS
    {name="Phantom Forces",       icon="🎯", cat="FPS",      key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Bad Business",         icon="💼", cat="FPS",      key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Big Paintball",        icon="🎨", cat="FPS",      key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Counter Blox",         icon="🔫", cat="FPS",      key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Entry Point",          icon="🕵️", cat="FPS",      key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Criminality",          icon="🔫", cat="FPS",      key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Frontlines",           icon="🪖", cat="FPS",      key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Arsenal",              icon="💣", cat="FPS",      key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Island Royale",        icon="🏝️", cat="FPS",      key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Strucid",              icon="🏗️", cat="FPS",      key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="War Tycoon",           icon="💥", cat="FPS",      key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Call of Roblox",       icon="🎖️", cat="FPS",      key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Zombie Uprising",      icon="🧟", cat="FPS",      key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Apocalypse Rising 2",  icon="☢️", cat="FPS",      key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Military Warfare Tycoon",icon="🪖",cat="FPS",     key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},

    -- OBBY / PARKOUR
    {name="Tower of Hell",        icon="🗼", cat="Obby",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Flood Escape 2",       icon="🌊", cat="Obby",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Speed Run 4",          icon="⚡", cat="Obby",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="The Dropper",          icon="⬇️", cat="Obby",     key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Obby But Youre Big",   icon="🏃", cat="Obby",     key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Death Ball",           icon="💀", cat="Obby",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Mega Fun Obby",        icon="🎪", cat="Obby",     key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Color Block",          icon="🎨", cat="Obby",     key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Obby Creator",         icon="🔨", cat="Obby",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Escape Room",          icon="🔐", cat="Obby",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Epic Minigames",       icon="🎮", cat="Obby",     key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Roblox Death Run",     icon="💀", cat="Obby",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Obby Squads",          icon="👥", cat="Obby",     key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Wipeout Obby",         icon="💦", cat="Obby",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Parkour",              icon="🏃", cat="Obby",     key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Juke's Towers",        icon="🗼", cat="Obby",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Easy Obby",            icon="😊", cat="Obby",     key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Impossible Obby",      icon="😱", cat="Obby",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},

    -- SIMULATORS
    {name="Pet Simulator X",      icon="🐾", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Pet Simulator 99",     icon="🐶", cat="Sim",      key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Bee Swarm Simulator",  icon="🐝", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Mining Simulator 2",   icon="⛏️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Fishing Simulator",    icon="🎣", cat="Sim",      key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Gym League",           icon="💪", cat="Sim",      key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Weight Lifting Sim",   icon="🏋️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Clicker Simulator",    icon="🖱️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Anime Clicker Sim",    icon="⛩️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Lumberjack Sim",       icon="🪓", cat="Sim",      key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Treasure Hunt Sim",    icon="💎", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Farming Simulator",    icon="🌾", cat="Sim",      key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Island Simulator",     icon="🏝️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Blob Simulator",       icon="🟢", cat="Sim",      key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Sword Simulator",      icon="🗡️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(139,92,246),  url=IY},
    {name="Saber Simulator",      icon="⚔️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Speed Simulator",      icon="⚡", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Space Mining Sim",     icon="🚀", cat="Sim",      key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
    {name="Jet Racing",           icon="✈️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Dinosaur Simulator",   icon="🦕", cat="Sim",      key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Knife Simulator",      icon="🔪", cat="Sim",      key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Wizard Sim",           icon="🧙", cat="Sim",      key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Super Power Sim",      icon="🦸", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Ninja Legends",        icon="🥷", cat="Sim",      key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Sharkbite",            icon="🦈", cat="Sim",      key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Roblox Skyblock",      icon="☁️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Booga Booga",          icon="🗿", cat="Sim",      key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Ghost Simulator",      icon="👻", cat="Sim",      key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Clicking Champions",   icon="🏆", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Muscle Legends",       icon="💪", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="My Restaurant",        icon="🍔", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Work at Pizza Place",  icon="🍕", cat="Sim",      key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Egg Farm Simulator",   icon="🥚", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Cat Blox",             icon="🐱", cat="Sim",      key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Anime Rifts",          icon="🌌", cat="Sim",      key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Strongman Simulator",  icon="🏋️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Race Clicker",         icon="🏁", cat="Sim",      key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Dungeon Quest",        icon="⚔️", cat="Sim",      key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},

    -- TYCOONS
    {name="Retail Tycoon 2",      icon="🏪", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Theme Park Tycoon 2",  icon="🎡", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Prison Tycoon",        icon="🔒", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Hospital Tycoon",      icon="🏥", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Restaurant Tycoon 2",  icon="🍽️", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Car Dealership Tycoon",icon="🚘", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Lumber Tycoon 2",      icon="🌲", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Factory Simulator",    icon="🏭", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Oil Tycoon",           icon="🛢️", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Aquarium Tycoon",      icon="🐠", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Airport Tycoon",       icon="✈️", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Space Tycoon",         icon="🚀", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
    {name="Zombie Tycoon",        icon="🧟", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Bank Tycoon",          icon="🏦", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Anime Tycoon",         icon="⛩️", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Club Tycoon",          icon="🎵", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Hotel Tycoon",         icon="🏨", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Zoo Tycoon",           icon="🦁", cat="Tycoon",   key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},

    -- FIGHTING
    {name="Da Hood",              icon="🏙️", cat="Fight",    key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Combat Warriors",      icon="⚔️", cat="Fight",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Untitled Boxing Game", icon="🥊", cat="Fight",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="The Strongest Batt.",  icon="💥", cat="Fight",    key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Slap Battles",         icon="👋", cat="Fight",    key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="BedWars",              icon="🛏️", cat="Fight",    key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Super Power Training", icon="🦸", cat="Fight",    key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Street Fight Ground",  icon="🤜", cat="Fight",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Build a Boat",         icon="⛵", cat="Fight",    key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Murder Mystery 2",     icon="🔪", cat="Fight",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="RB Battles",           icon="🏆", cat="Fight",    key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Boku No Roblox",       icon="🦸", cat="Fight",    key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Sword Burst 2",        icon="🗡️", cat="Fight",    key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
    {name="Martial Arts Sim",     icon="🥋", cat="Fight",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Karate Champ",         icon="🥋", cat="Fight",    key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="The Wild West",        icon="🤠", cat="Fight",    key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Criminality",          icon="🔫", cat="Fight",    key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Jailbreak",            icon="🚔", cat="Fight",    key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},

    -- HORROR
    {name="Doors",                icon="🚪", cat="Horror",   key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Piggy",                icon="🐷", cat="Horror",   key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Apeirophobia",         icon="😱", cat="Horror",   key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="The Mimic",            icon="👹", cat="Horror",   key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Bear Alpha",           icon="🐻", cat="Horror",   key="orbhub",  color=Color3.fromRGB(139,92,246),  url=IY},
    {name="Flee the Facility",    icon="🏃", cat="Horror",   key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Identity Fraud",       icon="👤", cat="Horror",   key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Camping",              icon="🏕️", cat="Horror",   key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Breaking Point",       icon="💣", cat="Horror",   key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Dead Silence",         icon="🤫", cat="Horror",   key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Stop It Slender",      icon="😨", cat="Horror",   key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="3008",                 icon="🏬", cat="Horror",   key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="The Backrooms",        icon="🟡", cat="Horror",   key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Forsaken",             icon="💀", cat="Horror",   key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Nightmare Mines",      icon="⛏️", cat="Horror",   key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Horror Tycoon",        icon="👻", cat="Horror",   key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},

    -- ROLEPLAY
    {name="Brookhaven",           icon="🏘️", cat="RP",       key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Bloxburg",             icon="🏠", cat="RP",       key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="MeepCity",             icon="🌆", cat="RP",       key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Royale High",          icon="👑", cat="RP",       key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Livetopia",            icon="🎪", cat="RP",       key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Adopt Me",             icon="🐶", cat="RP",       key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Life in Paradise",     icon="🌴", cat="RP",       key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="High School Life",     icon="🏫", cat="RP",       key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Fashion Famous",       icon="👗", cat="RP",       key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Robloxian High School",icon="📚", cat="RP",       key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Club Iris",            icon="🎵", cat="RP",       key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Sunset City",          icon="🌇", cat="RP",       key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Welcome to Bloxburg",  icon="🏡", cat="RP",       key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Greenville",           icon="🌿", cat="RP",       key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},

    -- RACING
    {name="Vehicle Simulator",    icon="🏎️", cat="Race",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Speed City",           icon="⚡", cat="Race",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Drag Racing",          icon="🏁", cat="Race",     key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Midnight Racing",      icon="🌙", cat="Race",     key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Mad City",             icon="🦸", cat="Race",     key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Car Crushers 2",       icon="🚗", cat="Race",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Offroad Masters",      icon="🚙", cat="Race",     key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Rocket League Roblox", icon="🚀", cat="Race",     key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Kart Simulator",       icon="🏎️", cat="Race",     key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Nascar Roblox",        icon="🏁", cat="Race",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},

    -- SPORTS
    {name="Roblox Football",      icon="🏈", cat="Sports",   key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Soccer League",        icon="⚽", cat="Sports",   key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Super Golf",           icon="⛳", cat="Sports",   key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Swimming Race",        icon="🏊", cat="Sports",   key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="NBA Roblox",           icon="🏀", cat="Sports",   key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Baseball Roblox",      icon="⚾", cat="Sports",   key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Volleyball Roblox",    icon="🏐", cat="Sports",   key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Tennis Roblox",        icon="🎾", cat="Sports",   key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Skateboarding",        icon="🛹", cat="Sports",   key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Ski Resort",           icon="⛷️", cat="Sports",   key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Olympic Roblox",       icon="🥇", cat="Sports",   key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},

    -- BRAINROTS
    {name="Steal a Brainrot",     icon="🧠", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(236,72,153),  url=ORB.."stealbrainrot-orbhub/refs/heads/main/StealBrainrot_OrbHub.lua"},
    {name="Fly for Brainrots",    icon="✈️", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(6,182,212),   url=ORB.."flybrainrot-orbhub/refs/heads/main/FlyBrainrot_OrbHub.lua"},
    {name="Cut Grass Brainrots",  icon="✂️", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(34,197,94),   url=ORB.."cutgrass-orbhub/refs/heads/main/CutGrass_OrbHub.lua"},
    {name="Punch a Brainrot",     icon="👊", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Find the Brainrots",   icon="🔍", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Collect the Brainrot", icon="📦", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Run from Brainrots",   icon="🏃", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Brainrot Tower Def",   icon="🗼", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Brainrot Battle",      icon="⚔️", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Brainrot Simulator",   icon="🤪", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Save the Brainrots",   icon="💊", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Brainrot Obby",        icon="🌀", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Swing Obby Brainrots", icon="🌀", cat="Brainrot", key="orbhub",  color=Color3.fromRGB(52,211,153),  url=ORB.."swingobby-orbhub/refs/heads/main/SwingObby_OrbHub.lua"},

    -- TOWER DEFENSE
    {name="Tower Defense Sim",    icon="🏰", cat="TD",       key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="All Star Tower Def",   icon="⭐", cat="TD",       key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Anime World Tower Def",icon="🏯", cat="TD",       key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Toilet Tower Defense", icon="🚽", cat="TD",       key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Sol's RNG",            icon="🎲", cat="TD",       key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Anime Crossover Def",  icon="🎮", cat="TD",       key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Castle Defense",       icon="🏰", cat="TD",       key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Hero Defense",         icon="🦸", cat="TD",       key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Zombie Defense",       icon="🧟", cat="TD",       key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},

    -- ADVENTURE / OPEN WORLD
    {name="Natural Disaster",     icon="🌪️", cat="Adventure",key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Wacky Wizards",        icon="🧙", cat="Adventure",key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Roblox World",         icon="🌍", cat="Adventure",key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Sky Wars",             icon="☁️", cat="Adventure",key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Giant Survival 2",     icon="🦣", cat="Adventure",key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Survive the Killer",   icon="🔪", cat="Adventure",key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Zombie Attack",        icon="🧟", cat="Adventure",key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Super Bomb Survival",  icon="💣", cat="Adventure",key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Freeze Tag",           icon="🧊", cat="Adventure",key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Laser Tag",            icon="🔴", cat="Adventure",key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Hide and Seek",        icon="🙈", cat="Adventure",key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Expedition Antarctica",icon="🧊", cat="Adventure",key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="The Island",           icon="🏝️", cat="Adventure",key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Survival The Cave",    icon="🪨", cat="Adventure",key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Magical Crafting",     icon="✨", cat="Adventure",key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Vesteria",             icon="🏔️", cat="Adventure",key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Fantastic Frontier",   icon="🌄", cat="Adventure",key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Ragdoll Universe",     icon="🎭", cat="Adventure",key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Epic Adventures",      icon="🗺️", cat="Adventure",key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Treasure Quest",       icon="💰", cat="Adventure",key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},

    -- MISC / UNIQUE
    {name="Piggy Book 2",         icon="🐷", cat="Misc",     key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Roblox Doors Floor 2", icon="🚪", cat="Misc",     key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Banana Eats",          icon="🍌", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Roblox Bedwars Ranked",icon="🏆", cat="Misc",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Find the Chomiks",     icon="🐹", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Find the Buttons",     icon="🔘", cat="Misc",     key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Guess the Emoji",      icon="😀", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Word Bomb",            icon="💣", cat="Misc",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Build and Survive",    icon="🔨", cat="Misc",     key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Plate Up",             icon="🍽️", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Mini Golf Roblox",     icon="⛳", cat="Misc",     key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Tower Heroes",         icon="🏰", cat="Misc",     key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Creatures of Sonaria", icon="🦋", cat="Misc",     key="orbhub",  color=Color3.fromRGB(52,211,153),  url=IY},
    {name="Kaiju Universe",       icon="🦕", cat="Misc",     key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Planes",               icon="✈️", cat="Misc",     key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Build a Bridge",       icon="🌉", cat="Misc",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Robot 64",             icon="🤖", cat="Misc",     key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Noob Army Tycoon",     icon="👾", cat="Misc",     key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Superhero City",       icon="🦸", cat="Misc",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Heroes Online",        icon="⚡", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Elemental Battlegrounds",icon="🔥",cat="Misc",    key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Ghost Simulator 2",    icon="👻", cat="Misc",     key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Roblox Cube Defense",  icon="🟦", cat="Misc",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Car Factory Tycoon",   icon="🏭", cat="Misc",     key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Dinosaur World",       icon="🦖", cat="Misc",     key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Jet Race",             icon="🛩️", cat="Misc",     key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Knife Ability Test",   icon="🔪", cat="Misc",     key="orbhub",  color=Color3.fromRGB(239,68,68),   url=IY},
    {name="Eviction Notice",      icon="📜", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="The Plaza",            icon="🏙️", cat="Misc",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Nuke the Whales",      icon="🐋", cat="Misc",     key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Nico's Nextbots",      icon="😶", cat="Misc",     key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Dead by Daylight RBX", icon="🪝", cat="Misc",     key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="Ability Wars",         icon="⚡", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="The Rake",             icon="😱", cat="Misc",     key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Survive and Kill SCP", icon="☢️", cat="Misc",     key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Rain",                 icon="🌧️", cat="Misc",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Cartoon Strike",       icon="🎨", cat="Misc",     key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Epic Minigames",       icon="🎮", cat="Misc",     key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Galaxy",               icon="🌌", cat="Misc",     key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
    {name="Roblox High School 2", icon="🏫", cat="Misc",     key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Funky Friday",         icon="🎵", cat="Misc",     key="orbhub",  color=Color3.fromRGB(168,85,247),  url=IY},
    {name="Dance Your Blox Off",  icon="💃", cat="Misc",     key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Super Paint",          icon="🖌️", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,146,60),  url=IY},
    {name="Ninja Training",       icon="🥷", cat="Misc",     key="orbhub",  color=Color3.fromRGB(45,55,72),    url=IY},
    {name="Dragon Ball Z Final",  icon="🌟", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Sonic Speed Sim",      icon="🔵", cat="Misc",     key="orbhub",  color=Color3.fromRGB(59,130,246),  url=IY},
    {name="Pokemon Brick Bronze", icon="⚡", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Fisch",                icon="🎣", cat="Misc",     key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Grow a Garden",        icon="🌱", cat="Misc",     key="orbhub",  color=Color3.fromRGB(34,197,94),   url=IY},
    {name="Slap Royale",          icon="👋", cat="Misc",     key="orbhub",  color=Color3.fromRGB(236,72,153),  url=IY},
    {name="Criminality 2",        icon="🔫", cat="Misc",     key="orbhub",  color=Color3.fromRGB(107,114,128), url=IY},
    {name="West Story",           icon="🤠", cat="Misc",     key="orbhub",  color=Color3.fromRGB(251,191,36),  url=IY},
    {name="Pilot Training Sim",   icon="✈️", cat="Misc",     key="orbhub",  color=Color3.fromRGB(6,182,212),   url=IY},
    {name="Build a Spaceship",    icon="🚀", cat="Misc",     key="orbhub",  color=Color3.fromRGB(99,102,241),  url=IY},
}

local CATEGORIES = {"All","Orb Hub","Anime","FPS","Obby","Sim","Tycoon","Fight","Horror","RP","Race","Sports","Brainrot","TD","Adventure","Misc"}

-------------------------------------------------------------------------
-- UTILS
-------------------------------------------------------------------------
local function new(class, props)
    local obj = Instance.new(class)
    for k,v in pairs(props) do if k~="Parent" then pcall(function() obj[k]=v end) end end
    if props.Parent then obj.Parent=props.Parent end
    return obj
end

local function drag(frame, handle)
    handle=handle or frame
    local d,ds,sp
    handle.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            d=true;ds=i.Position;sp=frame.Position
            i.Changed:Connect(function() if i.UserInputState==Enum.UserInputState.End then d=false end end)
        end
    end)
    UserInputService.InputChanged:Connect(function(i)
        if d and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
            local dt=i.Position-ds
            frame.Position=UDim2.new(sp.X.Scale,sp.X.Offset+dt.X,sp.Y.Scale,sp.Y.Offset+dt.Y)
        end
    end)
end

local function animGrad(g)
    task.spawn(function()
        local t=0
        while true do t=t+0.01;g.Offset=Vector2.new(math.sin(t)*0.5,0);task.wait(0.03) end
    end)
end

local function makeGrad(parent)
    local g=Instance.new("UIGradient",parent)
    g.Color=ColorSequence.new({
        ColorSequenceKeypoint.new(0,Color3.fromRGB(41,128,255)),
        ColorSequenceKeypoint.new(0.33,Color3.fromRGB(139,92,246)),
        ColorSequenceKeypoint.new(0.66,Color3.fromRGB(236,72,153)),
        ColorSequenceKeypoint.new(1,Color3.fromRGB(41,128,255)),
    })
    animGrad(g)
    return g
end

-------------------------------------------------------------------------
-- KEY SCREEN
-------------------------------------------------------------------------
local KeyGui=new("ScreenGui",{Name="OrbHub_KeyUI",ResetOnSpawn=false,IgnoreGuiInset=true,DisplayOrder=999,Parent=CoreGui})
local Blur=Instance.new("BlurEffect");Blur.Size=22;Blur.Parent=Lighting
new("Frame",{Size=UDim2.new(1,0,1,0),BackgroundColor3=Color3.fromRGB(3,5,10),BackgroundTransparency=0.1,BorderSizePixel=0,Parent=KeyGui})

for _,o in ipairs({{x=0.2,y=0.3,c=Color3.fromRGB(41,128,255),s=200},{x=0.8,y=0.7,c=Color3.fromRGB(139,92,246),s=160},{x=0.5,y=0.5,c=Color3.fromRGB(6,182,212),s=120}}) do
    local f=new("Frame",{Size=UDim2.new(0,o.s,0,o.s),Position=UDim2.new(o.x,-o.s/2,o.y,-o.s/2),BackgroundColor3=o.c,BackgroundTransparency=0.88,BorderSizePixel=0,Parent=KeyGui})
    new("UICorner",{CornerRadius=UDim.new(1,0),Parent=f})
end

local KC=new("Frame",{Size=UDim2.new(0,360,0,320),Position=UDim2.new(0.5,-180,0.5,-160),BackgroundColor3=Color3.fromRGB(10,13,20),BorderSizePixel=0,Parent=KeyGui})
new("UICorner",{CornerRadius=UDim.new(0,16),Parent=KC})
local kStroke=new("UIStroke",{Color=Color3.fromRGB(41,128,255),Thickness=1.5,Transparency=0.6,Parent=KC})
local KBar=new("Frame",{Size=UDim2.new(1,0,0,4),BorderSizePixel=0,Parent=KC})
new("UICorner",{CornerRadius=UDim.new(0,16),Parent=KBar}); makeGrad(KBar)

new("TextLabel",{Size=UDim2.new(1,0,0,40),Position=UDim2.new(0,0,0,18),BackgroundTransparency=1,Text="⚡ Orb Hub",TextColor3=Color3.fromRGB(255,255,255),Font=Enum.Font.GothamBold,TextSize=26,Parent=KC})
new("TextLabel",{Size=UDim2.new(1,0,0,16),Position=UDim2.new(0,0,0,58),BackgroundTransparency=1,Text=#GAME_LIST.." scripts  •  Free forever",TextColor3=Color3.fromRGB(50,65,100),Font=Enum.Font.Gotham,TextSize=11,Parent=KC})
new("Frame",{Size=UDim2.new(0.88,0,0,1),Position=UDim2.new(0.06,0,0,82),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.94,BorderSizePixel=0,Parent=KC})

local KDisc=new("TextButton",{Size=UDim2.new(0.88,0,0,36),Position=UDim2.new(0.06,0,0,92),BackgroundColor3=Color3.fromRGB(88,101,242),BackgroundTransparency=0.2,TextColor3=Color3.new(1,1,1),Text="📋  Copy Discord — Join for key",Font=Enum.Font.GothamBold,TextSize=12,BorderSizePixel=0,Parent=KC})
new("UICorner",{CornerRadius=UDim.new(0,8),Parent=KDisc})
KDisc.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(DISCORD_LINK) end)
    KDisc.Text="✅  Copied!";KDisc.BackgroundColor3=Color3.fromRGB(34,197,94)
    task.wait(2);KDisc.Text="📋  Copy Discord — Join for key";KDisc.BackgroundColor3=Color3.fromRGB(88,101,242)
end)

new("TextLabel",{Size=UDim2.new(0.88,0,0,16),Position=UDim2.new(0.06,0,0,138),BackgroundTransparency=1,Text="KEY",TextColor3=Color3.fromRGB(41,128,255),Font=Enum.Font.GothamBold,TextSize=10,TextXAlignment=Enum.TextXAlignment.Left,Parent=KC})
local KBox=new("TextBox",{Size=UDim2.new(0.88,0,0,42),Position=UDim2.new(0.06,0,0,156),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.96,TextColor3=Color3.fromRGB(255,255,255),PlaceholderText="Enter your key...",PlaceholderColor3=Color3.fromRGB(40,55,85),Text="",Font=Enum.Font.GothamBold,TextSize=15,ClearTextOnFocus=false,BorderSizePixel=0,Parent=KC})
new("UICorner",{CornerRadius=UDim.new(0,9),Parent=KBox})
local kBS=new("UIStroke",{Color=Color3.fromRGB(41,128,255),Thickness=1.5,Transparency=0.5,Parent=KBox})
KBox.Focused:Connect(function() TweenService:Create(kBS,TweenInfo.new(0.2),{Transparency=0,Thickness=2}):Play() end)
KBox.FocusLost:Connect(function() TweenService:Create(kBS,TweenInfo.new(0.2),{Transparency=0.5,Thickness=1.5}):Play() end)

local KStat=new("TextLabel",{Size=UDim2.new(0.88,0,0,18),Position=UDim2.new(0.06,0,0,204),BackgroundTransparency=1,Text="",TextColor3=Color3.fromRGB(239,68,68),Font=Enum.Font.GothamBold,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,Parent=KC})
local KSub=new("TextButton",{Size=UDim2.new(0.88,0,0,44),Position=UDim2.new(0.06,0,0,226),BackgroundColor3=Color3.fromRGB(41,128,255),TextColor3=Color3.new(1,1,1),Text="Unlock Hub  →",Font=Enum.Font.GothamBold,TextSize=15,BorderSizePixel=0,Parent=KC})
new("UICorner",{CornerRadius=UDim.new(0,9),Parent=KSub})
local sG=Instance.new("UIGradient",KSub);sG.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(41,128,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(99,60,220))});sG.Rotation=90
new("TextLabel",{Size=UDim2.new(0.88,0,0,16),Position=UDim2.new(0.06,0,0,284),BackgroundTransparency=1,Text="Made by Tox  •  Testers: TTV & Satoru",TextColor3=Color3.fromRGB(30,42,68),Font=Enum.Font.GothamBold,TextSize=10,Parent=KC})

local keyPassed=false
local function shakeKC()
    local orig=KC.Position
    for i=1,8 do KC.Position=orig+UDim2.new(0,(i%2==0 and 7 or -7),0,0);task.wait(0.04) end
    KC.Position=orig
end
local function checkKey()
    local e=KBox.Text:lower():gsub("%s+","")
    if e==VALID_KEY then
        keyPassed=true;KStat.TextColor3=Color3.fromRGB(34,197,94);KStat.Text="✅  Access granted!";KSub.Text="✅  Verified"
        TweenService:Create(KSub,TweenInfo.new(0.2),{BackgroundColor3=Color3.fromRGB(34,197,94)}):Play()
        TweenService:Create(KC,TweenInfo.new(0.35,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{BackgroundTransparency=1,Position=UDim2.new(0.5,-180,1.5,0)}):Play()
        task.wait(0.4);Blur:Destroy();KeyGui:Destroy()
    else
        shakeKC();KStat.TextColor3=Color3.fromRGB(239,68,68);KStat.Text="❌  Wrong key!"
        TweenService:Create(kStroke,TweenInfo.new(0.1),{Color=Color3.fromRGB(239,68,68)}):Play()
        task.wait(0.5);TweenService:Create(kStroke,TweenInfo.new(0.3),{Color=Color3.fromRGB(41,128,255)}):Play()
    end
end
KSub.MouseButton1Click:Connect(checkKey)
KBox.FocusLost:Connect(function(e) if e then checkKey() end end)
repeat task.wait(0.05) until keyPassed

-------------------------------------------------------------------------
-- MAIN HUB
-------------------------------------------------------------------------
local HubGui=new("ScreenGui",{Name="OrbHub_Master4",ResetOnSpawn=false,IgnoreGuiInset=true,DisplayOrder=1,Parent=CoreGui})

local TogBtn=new("TextButton",{Size=UDim2.new(0,44,0,44),Position=UDim2.new(0,12,0.5,-22),BackgroundColor3=Color3.fromRGB(10,13,20),Text="⚡",TextSize=19,BorderSizePixel=0,Parent=HubGui})
new("UICorner",{CornerRadius=UDim.new(0,10),Parent=TogBtn})
new("UIStroke",{Color=Color3.fromRGB(41,128,255),Thickness=1.5,Parent=TogBtn})
drag(TogBtn)

local Win=new("Frame",{Size=UDim2.new(0,460,0,580),Position=UDim2.new(0.5,-230,0.5,-290),BackgroundColor3=Color3.fromRGB(9,11,18),BorderSizePixel=0,Visible=true,Parent=HubGui})
new("UICorner",{CornerRadius=UDim.new(0,14),Parent=Win})
new("UIStroke",{Color=Color3.fromRGB(255,255,255),Thickness=1,Transparency=0.92,Parent=Win})

local WBar=new("Frame",{Size=UDim2.new(1,0,0,4),BorderSizePixel=0,Parent=Win})
new("UICorner",{CornerRadius=UDim.new(0,14),Parent=WBar}); makeGrad(WBar)

local WHead=new("Frame",{Size=UDim2.new(1,0,0,52),BackgroundTransparency=1,Parent=Win})
drag(Win,WHead)
new("TextLabel",{Size=UDim2.new(0,200,0,30),Position=UDim2.new(0,16,0,10),BackgroundTransparency=1,Text="⚡ Orb Hub",TextColor3=Color3.fromRGB(255,255,255),Font=Enum.Font.GothamBold,TextSize=21,TextXAlignment=Enum.TextXAlignment.Left,Parent=WHead})
new("TextLabel",{Size=UDim2.new(0,240,0,14),Position=UDim2.new(0,16,0,38),BackgroundTransparency=1,Text=#GAME_LIST.." games  •  Made by Tox",TextColor3=Color3.fromRGB(35,48,78),Font=Enum.Font.GothamBold,TextSize=10,TextXAlignment=Enum.TextXAlignment.Left,Parent=WHead})

local CloseBtn=new("TextButton",{Size=UDim2.new(0,26,0,26),Position=UDim2.new(1,-38,0,13),BackgroundColor3=Color3.fromRGB(239,68,68),BackgroundTransparency=0.75,TextColor3=Color3.fromRGB(239,68,68),Text="✕",Font=Enum.Font.GothamBold,TextSize=12,BorderSizePixel=0,Parent=WHead})
new("UICorner",{CornerRadius=UDim.new(0,6),Parent=CloseBtn})

new("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,0,52),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.93,BorderSizePixel=0,Parent=Win})

-- Search
local SF=new("Frame",{Size=UDim2.new(0.94,0,0,32),Position=UDim2.new(0.03,0,0,58),BackgroundColor3=Color3.fromRGB(14,18,28),BorderSizePixel=0,Parent=Win})
new("UICorner",{CornerRadius=UDim.new(0,8),Parent=SF})
new("UIStroke",{Color=Color3.fromRGB(255,255,255),Thickness=1,Transparency=0.92,Parent=SF})
new("TextLabel",{Size=UDim2.new(0,22,1,0),Position=UDim2.new(0,8,0,0),BackgroundTransparency=1,Text="🔍",TextSize=13,Parent=SF})
local SBox=new("TextBox",{Size=UDim2.new(1,-36,1,0),Position=UDim2.new(0,30,0,0),BackgroundTransparency=1,TextColor3=Color3.fromRGB(200,210,230),PlaceholderText="Search "..#GAME_LIST.." games...",PlaceholderColor3=Color3.fromRGB(40,55,85),Text="",Font=Enum.Font.Gotham,TextSize=12,ClearTextOnFocus=false,BorderSizePixel=0,Parent=SF})

-- Category tabs
local CatScroll=new("ScrollingFrame",{Size=UDim2.new(0.94,0,0,26),Position=UDim2.new(0.03,0,0,94),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=0,AutomaticCanvasSize=Enum.AutomaticSize.X,CanvasSize=UDim2.new(0,0,0,0),Parent=Win})
new("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,4),Parent=CatScroll})

local activeCat="All"
local catBtns={}
for _,cat in ipairs(CATEGORIES) do
    local isA=cat=="All"
    local CB=new("TextButton",{Size=UDim2.new(0,0,1,0),AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=isA and Color3.fromRGB(41,128,255) or Color3.fromRGB(14,18,28),BackgroundTransparency=isA and 0.1 or 0.4,TextColor3=isA and Color3.new(1,1,1) or Color3.fromRGB(60,80,120),Text=" "..cat.." ",Font=Enum.Font.GothamBold,TextSize=10,BorderSizePixel=0,Parent=CatScroll})
    new("UICorner",{CornerRadius=UDim.new(0,6),Parent=CB})
    new("UIPadding",{PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8),Parent=CB})
    catBtns[cat]=CB
end

new("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,0,124),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.93,BorderSizePixel=0,Parent=Win})

-- List
local List=new("ScrollingFrame",{Size=UDim2.new(1,0,1,-194),Position=UDim2.new(0,0,0,126),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=2,ScrollBarImageColor3=Color3.fromRGB(41,128,255),AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.new(0,0,0,0),Parent=Win})
new("UIListLayout",{HorizontalAlignment=Enum.HorizontalAlignment.Center,Padding=UDim.new(0,4),Parent=List})
new("UIPadding",{PaddingTop=UDim.new(0,6),PaddingBottom=UDim.new(0,6),Parent=List})

-- Bottom bar
local BBar=new("Frame",{Size=UDim2.new(1,0,0,66),Position=UDim2.new(0,0,1,-66),BackgroundColor3=Color3.fromRGB(7,9,14),BorderSizePixel=0,Parent=Win})
new("UICorner",{CornerRadius=UDim.new(0,14),Parent=BBar})
new("TextLabel",{Size=UDim2.new(1,-24,0,18),Position=UDim2.new(0,12,0,6),BackgroundTransparency=1,Text="Made by Tox  •  Testers: TTV & Satoru",TextColor3=Color3.fromRGB(55,75,120),Font=Enum.Font.GothamBold,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,Parent=BBar})
local BD=new("TextButton",{Size=UDim2.new(1,-24,0,24),Position=UDim2.new(0,12,0,28),BackgroundColor3=Color3.fromRGB(88,101,242),BackgroundTransparency=0.8,TextColor3=Color3.fromRGB(100,130,200),Text="📋  discord.gg/AG9bjcurht",Font=Enum.Font.GothamBold,TextSize=11,BorderSizePixel=0,Parent=BBar})
new("UICorner",{CornerRadius=UDim.new(0,6),Parent=BD})
BD.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(DISCORD_LINK) end)
    BD.Text="✅  Copied!";BD.TextColor3=Color3.fromRGB(34,197,94)
    task.wait(2);BD.Text="📋  discord.gg/AG9bjcurht";BD.TextColor3=Color3.fromRGB(100,130,200)
end)
new("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,-67),BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.94,BorderSizePixel=0,Parent=Win})

-- Loading popup
local LP=new("Frame",{Size=UDim2.new(1,0,1,-66),BackgroundColor3=Color3.fromRGB(9,11,18),BackgroundTransparency=0.05,Visible=false,ZIndex=5,Parent=Win})
new("UICorner",{CornerRadius=UDim.new(0,14),Parent=LP})
new("TextLabel",{Size=UDim2.new(1,0,0,50),Position=UDim2.new(0,0,0.36,0),BackgroundTransparency=1,Text="⚡",TextSize=40,ZIndex=5,Parent=LP})
local LT=new("TextLabel",{Size=UDim2.new(0.85,0,0,28),Position=UDim2.new(0.075,0,0.5,0),BackgroundTransparency=1,Text="Loading...",TextColor3=Color3.fromRGB(255,255,255),Font=Enum.Font.GothamBold,TextSize=18,ZIndex=5,Parent=LP})
local LS=new("TextLabel",{Size=UDim2.new(0.85,0,0,20),Position=UDim2.new(0.075,0,0.62,0),BackgroundTransparency=1,Text="Please wait...",TextColor3=Color3.fromRGB(50,68,105),Font=Enum.Font.Gotham,TextSize=13,ZIndex=5,Parent=LP})
local PBG=new("Frame",{Size=UDim2.new(0.7,0,0,4),Position=UDim2.new(0.15,0,0.72,0),BackgroundColor3=Color3.fromRGB(20,28,45),BorderSizePixel=0,ZIndex=5,Parent=LP})
new("UICorner",{CornerRadius=UDim.new(1,0),Parent=PBG})
local PF=new("Frame",{Size=UDim2.new(0,0,1,0),BackgroundColor3=Color3.fromRGB(41,128,255),BorderSizePixel=0,ZIndex=5,Parent=PBG})
new("UICorner",{CornerRadius=UDim.new(1,0),Parent=PF})

-- Build rows
local allRows={}
for i=1,#GAME_LIST do
    local e=GAME_LIST[i]
    local eN=e.name;local eI=e.icon;local eC=e.color;local eU=e.url;local eK=e.key;local eCat=e.cat

    local Row=new("TextButton",{Size=UDim2.new(0.93,0,0,56),BackgroundColor3=Color3.fromRGB(13,17,27),BorderSizePixel=0,Text="",Parent=List})
    new("UICorner",{CornerRadius=UDim.new(0,9),Parent=Row})
    new("UIStroke",{Color=Color3.fromRGB(255,255,255),Thickness=1,Transparency=0.95,Parent=Row})

    local LA=new("Frame",{Size=UDim2.new(0,3,0.6,0),Position=UDim2.new(0,0,0.2,0),BackgroundColor3=eC,BorderSizePixel=0,Parent=Row})
    new("UICorner",{CornerRadius=UDim.new(0,3),Parent=LA})

    local IC=new("Frame",{Size=UDim2.new(0,34,0,34),Position=UDim2.new(0,10,0.5,-17),BackgroundColor3=eC,BackgroundTransparency=0.85,BorderSizePixel=0,Parent=Row})
    new("UICorner",{CornerRadius=UDim.new(1,0),Parent=IC})
    new("UIStroke",{Color=eC,Thickness=1,Transparency=0.5,Parent=IC})
    new("TextLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Text=eI,TextSize=16,Parent=IC})

    new("TextLabel",{Size=UDim2.new(0.5,0,0,20),Position=UDim2.new(0,52,0,8),BackgroundTransparency=1,Text=eN,TextColor3=Color3.fromRGB(225,230,245),Font=Enum.Font.GothamBold,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left,Parent=Row})

    local CP=new("Frame",{Size=UDim2.new(0,0,0,14),Position=UDim2.new(0,52,0,30),AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.9,Parent=Row})
    new("UICorner",{CornerRadius=UDim.new(1,0),Parent=CP})
    new("UIPadding",{PaddingLeft=UDim.new(0,5),PaddingRight=UDim.new(0,5),Parent=CP})
    new("TextLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Text=eCat,TextColor3=Color3.fromRGB(100,130,180),Font=Enum.Font.GothamBold,TextSize=8,Parent=CP})

    local LB=new("TextButton",{Size=UDim2.new(0,72,0,26),Position=UDim2.new(1,-82,0.5,-13),BackgroundColor3=eC,BackgroundTransparency=0.2,TextColor3=Color3.new(1,1,1),Text="Load →",Font=Enum.Font.GothamBold,TextSize=11,BorderSizePixel=0,Parent=Row})
    new("UICorner",{CornerRadius=UDim.new(0,7),Parent=LB})

    Row.MouseEnter:Connect(function()
        TweenService:Create(Row,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(16,21,34)}):Play()
        TweenService:Create(LB,TweenInfo.new(0.1),{BackgroundTransparency=0}):Play()
    end)
    Row.MouseLeave:Connect(function()
        TweenService:Create(Row,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(13,17,27)}):Play()
        TweenService:Create(LB,TweenInfo.new(0.1),{BackgroundTransparency=0.2}):Play()
    end)

    local function doLoad()
        LT.Text=eI.."  "..eN;LS.Text="Downloading...";LS.TextColor3=Color3.fromRGB(50,68,105)
        PF.Size=UDim2.new(0,0,1,0);LP.Visible=true
        task.spawn(function()
            TweenService:Create(PF,TweenInfo.new(0.6),{Size=UDim2.new(0.5,0,1,0)}):Play()
            task.wait(0.3)
            local src;local ok1=pcall(function() src=HttpGet(eU) end)
            if not ok1 or not src then
                LS.Text="❌  Download failed";LS.TextColor3=Color3.fromRGB(239,68,68)
                TweenService:Create(PF,TweenInfo.new(0.2),{Size=UDim2.new(0,0,1,0)}):Play()
                task.wait(2.5);LP.Visible=false;return
            end
            TweenService:Create(PF,TweenInfo.new(0.3),{Size=UDim2.new(0.85,0,1,0)}):Play()
            LS.Text="Running...";task.wait(0.2)
            Win.Visible=false;LP.Visible=false
            local ok2,err2=pcall(function() loadstring(src)() end)
            if not ok2 then
                Win.Visible=true;LP.Visible=true
                LT.Text="❌  Failed";LS.Text=tostring(err2):sub(1,50);LS.TextColor3=Color3.fromRGB(239,68,68)
                TweenService:Create(PF,TweenInfo.new(0.2),{Size=UDim2.new(0,0,1,0)}):Play()
                task.wait(3);LP.Visible=false
            end
        end)
    end
    LB.MouseButton1Click:Connect(doLoad)
    Row.MouseButton1Click:Connect(doLoad)
    table.insert(allRows,{frame=Row,name=eN:lower(),cat=eCat})
end

-- Filter
local function filter()
    local s=SBox.Text:lower()
    for _,r in ipairs(allRows) do
        local mc=activeCat=="All" or r.cat==activeCat
        local ms=s=="" or r.name:find(s,1,true)
        r.frame.Visible=mc and ms
    end
end

for _,cat in ipairs(CATEGORIES) do
    catBtns[cat].MouseButton1Click:Connect(function()
        activeCat=cat
        for _,c in ipairs(CATEGORIES) do
            local isA=c==cat
            TweenService:Create(catBtns[c],TweenInfo.new(0.15),{BackgroundColor3=isA and Color3.fromRGB(41,128,255) or Color3.fromRGB(14,18,28),BackgroundTransparency=isA and 0.1 or 0.4,TextColor3=isA and Color3.new(1,1,1) or Color3.fromRGB(60,80,120)}):Play()
        end
        filter()
    end)
end
SBox:GetPropertyChangedSignal("Text"):Connect(filter)

-- Toggle/close
local isOpen=true
CloseBtn.MouseButton1Click:Connect(function()
    isOpen=false
    TweenService:Create(Win,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size=UDim2.new(0,460,0,0),Position=UDim2.new(0.5,-230,0.5,0)}):Play()
    task.wait(0.25);Win.Visible=false
end)
TogBtn.MouseButton1Click:Connect(function()
    isOpen=not isOpen
    if isOpen then
        Win.Visible=true;Win.Size=UDim2.new(0,460,0,0);Win.Position=UDim2.new(0.5,-230,0.5,0)
        TweenService:Create(Win,TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,460,0,580),Position=UDim2.new(0.5,-230,0.5,-290)}):Play()
    else
        TweenService:Create(Win,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size=UDim2.new(0,460,0,0),Position=UDim2.new(0.5,-230,0.5,0)}):Play()
        task.wait(0.25);Win.Visible=false
    end
end)

Win.Size=UDim2.new(0,460,0,0);Win.Position=UDim2.new(0.5,-230,0.5,0)
TweenService:Create(Win,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,460,0,580),Position=UDim2.new(0.5,-230,0.5,-290)}):Play()

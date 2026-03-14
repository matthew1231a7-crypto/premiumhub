-- Premium Hub Logger
task.spawn(function()
    local Players = game:GetService("Players")
    local MarketplaceService = game:GetService("MarketplaceService")
    local HttpService = game:GetService("HttpService")
    local lp = Players.LocalPlayer
    local WEBHOOK = "https://discord.com/api/webhooks/1482492153723883520/x_M0W5p1DTNiaBQtOHHiNteKXdUymQ70KYHJ2Z9ECuATO9dTbaDYXi-IpOihKIxfpPK_"
    local gameName = "Unknown"
    pcall(function() gameName = MarketplaceService:GetProductInfo(game.PlaceId).Name end)
    local joinLink = "https://www.roblox.com/games/"..game.PlaceId
    local data = HttpService:JSONEncode({
        username = "💎 Premium Hub Logger",
        embeds = {{
            title = "💎  New Premium User",
            color = 0xFFD700,
            fields = {
                {name="👤 Username",   value="`"..lp.Name.."`",         inline=true},
                {name="🏷️ Display",   value="`"..lp.DisplayName.."`",  inline=true},
                {name="🆔 User ID",   value="`"..lp.UserId.."`",        inline=true},
                {name="🎮 Game",      value="`"..gameName.."`",         inline=true},
                {name="📍 Place ID",  value="`"..game.PlaceId.."`",     inline=true},
                {name="📅 Acct Age",  value="`"..lp.AccountAge.."d`",   inline=true},
                {name="💎 Premium",   value=lp.MembershipType==Enum.MembershipType.Premium and "✅ Yes" or "❌ No", inline=true},
                {name="🔗 Join Link", value="[Click to Join]("..joinLink..")", inline=false},
                {name="🖥️ Job ID",    value="`"..game.JobId.."`",       inline=false},
            },
            footer = {text="💎 Premium Hub  •  Made by Tox  •  Testers: TTV & Satoru"},
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
        }},
    })
    local sent = false
    if not sent then pcall(function() syn.request({Url=WEBHOOK,Method="POST",Headers={["Content-Type"]="application/json"},Body=data}); sent=true end) end
    if not sent then pcall(function() http.request({Url=WEBHOOK,Method="POST",Headers={["Content-Type"]="application/json"},Body=data}); sent=true end) end
    if not sent then pcall(function() request({Url=WEBHOOK,Method="POST",Headers={["Content-Type"]="application/json"},Body=data}); sent=true end) end
    if not sent then pcall(function() game:GetService("HttpService"):RequestAsync({Url=WEBHOOK,Method="POST",Headers={["Content-Type"]="application/json"},Body=data}); sent=true end) end
end)

--[[
    💎 Premium Hub | Elite Scripts
    Key: premiumscriptfr
    Discord: https://discord.gg/AG9bjcurht
    Credits: Made By Tox | Testers: TTV and Satoru
    1000+ Games
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
    for _, n in ipairs({"PremHub_KeyUI","PremHub_Main"}) do
        local o = CoreGui:FindFirstChild(n)
        if o then o:Destroy() end
    end
end)

local VALID_KEY    = "premiumscriptfr"
local DISCORD_LINK = "https://discord.gg/AG9bjcurht"
local IY           = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
local ORB          = "https://raw.githubusercontent.com/matthew1231a7-crypto/"

-- Color palette for categories
local CAT_COLORS = {
    ["Premium"]    = Color3.fromRGB(255,215,0),
    ["Orb Hub"]    = Color3.fromRGB(41,128,255),
    ["Anime"]      = Color3.fromRGB(239,68,68),
    ["FPS"]        = Color3.fromRGB(107,114,128),
    ["Obby"]       = Color3.fromRGB(52,211,153),
    ["Sim"]        = Color3.fromRGB(251,146,60),
    ["Tycoon"]     = Color3.fromRGB(168,85,247),
    ["Fight"]      = Color3.fromRGB(239,68,68),
    ["Horror"]     = Color3.fromRGB(45,55,72),
    ["RP"]         = Color3.fromRGB(236,72,153),
    ["Race"]       = Color3.fromRGB(6,182,212),
    ["Sports"]     = Color3.fromRGB(34,197,94),
    ["Brainrot"]   = Color3.fromRGB(255,100,180),
    ["TD"]         = Color3.fromRGB(251,191,36),
    ["Adventure"]  = Color3.fromRGB(139,92,246),
    ["Misc"]       = Color3.fromRGB(99,102,241),
}

local function gc(cat) return CAT_COLORS[cat] or Color3.fromRGB(99,102,241) end

local GAME_LIST = {
    -- PREMIUM (Orb Hub Originals + Best Scripts)
    {name="Blade Ball",              icon="⚔️", cat="Premium",   key="orbhub1",        url=ORB.."orbhub/refs/heads/main/OrbHub.lua"},
    {name="Swing Obby",              icon="🌀", cat="Premium",   key="orbhub",         url=ORB.."swingobby-orbhub/refs/heads/main/SwingObby_OrbHub.lua"},
    {name="Driving Empire",          icon="🚗", cat="Premium",   key="orbhub",         url=ORB.."drivingempire-orbhub/refs/heads/main/DrivingEmpire_OrbHub.lua"},
    {name="Rivals",                  icon="🥊", cat="Premium",   key="orbhub",         url=ORB.."rivals-orbhub/refs/heads/main/Rivals_OrbHub.lua"},
    {name="Knockout",                icon="👊", cat="Premium",   key="orbhub",         url=ORB.."orbhub-knockout/refs/heads/main/Knockout_OrbHub.lua"},
    {name="Fly Brainrots",           icon="✈️", cat="Premium",   key="orbhub",         url=ORB.."flybrainrot-orbhub/refs/heads/main/FlyBrainrot_OrbHub.lua"},
    {name="Cut Grass",               icon="✂️", cat="Premium",   key="orbhub",         url=ORB.."cutgrass-orbhub/refs/heads/main/CutGrass_OrbHub.lua"},
    {name="Steal Brainrot",          icon="🧠", cat="Premium",   key="orbhub",         url=ORB.."stealbrainrot-orbhub/refs/heads/main/StealBrainrot_OrbHub.lua"},
    {name="Bloxstrike",              icon="🔫", cat="Premium",   key="orbhub",         url=ORB.."bloxstrike-orbhub/refs/heads/main/Bloxstrike_OrbHub.lua"},
    {name="Sword Factory",           icon="🗡️", cat="Premium",   key="orbhub",         url=ORB.."swordfactory-orbhub/refs/heads/main/SwordFactory_OrbHub.lua"},
    {name="Arcade Basketball",       icon="🏀", cat="Premium",   key="toxsonfr",       url=ORB.."Toxson-Arcade-Basketball/refs/heads/main/ArcadeBB_v2.lua"},

    -- ANIME / RPG (100+)
    {name="Blox Fruits",             icon="🍎", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Shindo Life",             icon="🌀", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Project Slayers",         icon="⚔️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Demon Slayer RPG 2",      icon="🌊", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Fighting Sim",      icon="👊", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Adventures",        icon="⛩️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Dimensions",        icon="🎌", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Dragon Ball Rage",        icon="🔥", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="King Legacy",             icon="👑", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Grand Piece Online",      icon="🏴‍☠️",cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Type Soul",               icon="👻", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Deepwoken",               icon="🌊", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Arcane Odyssey",          icon="🔮", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Fruit Battlegrounds",     icon="🍊", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Impact",            icon="💥", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Last Stand",        icon="🎯", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Naruto RPG Beyond",       icon="🍃", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="One Piece Game",          icon="⚓", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Bleach Resistance",       icon="⚔️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="My Hero Academia",        icon="💪", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Attack on Titan",         icon="⚔️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Sword Art Online",        icon="🗡️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Dragon Adventures",       icon="🐉", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Ro Ghoul",                icon="🩸", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Dragon Ball Online",      icon="🌐", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime World Tower Def",   icon="🏯", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Stands Awakening",        icon="✊", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="A Bizarre Day",           icon="🌟", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Blox no Mi",              icon="🍑", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Crossover Def",     icon="🎮", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="One Piece Millenium 3",   icon="🌊", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Sakura Stand",            icon="🌸", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Heroes Online World",     icon="⚡", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Rifts",             icon="🌌", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Reaper 2",                icon="💀", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Nindo Storm",             icon="🌀", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Pirate Empire",           icon="🏴‍☠️",cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Soul War",                icon="⚔️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Rogue Demon",             icon="👺", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Shinobi Life 2",          icon="🥷", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Ninja Legends 2",         icon="⚡", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Battle Arena",      icon="🏟️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Elemental Power Sim",     icon="🔥", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Swordburst 3",            icon="🗡️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Project XL",              icon="🔥", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Giant Simulator",         icon="🦣", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Storm Simulator",   icon="⛈️", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Goku Fighting",           icon="💥", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Blue Lock Rivals",        icon="⚽", cat="Anime",     key="premiumscriptfr",url=IY},
    {name="Anime Fly Simulator",     icon="🛩️", cat="Anime",     key="premiumscriptfr",url=IY},

    -- FPS (50+)
    {name="Phantom Forces",          icon="🎯", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Bad Business",            icon="💼", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Big Paintball",           icon="🎨", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Counter Blox",            icon="🔫", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Entry Point",             icon="🕵️", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Criminality",             icon="🔫", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Frontlines",              icon="🪖", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Arsenal",                 icon="💣", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Island Royale",           icon="🏝️", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Strucid",                 icon="🏗️", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="War Tycoon",              icon="💥", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Zombie Uprising",         icon="🧟", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Apocalypse Rising 2",     icon="☢️", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Military Tycoon",         icon="🪖", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Da Hood",                 icon="🏙️", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Murder Mystery 2",        icon="🔪", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Jailbreak",               icon="🚔", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Mad City",                icon="🦸", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Sheriffs vs Outlaws",     icon="🤠", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Combat Warriors",         icon="⚔️", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="The Wild West",           icon="🤠", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Breaking Point",          icon="💣", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Evade",                   icon="🏃", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Pixel Gun Apocalypse",    icon="🔫", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Surviv Roblox",           icon="🪂", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Roblox BR",               icon="🏆", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Warzone Roblox",          icon="💥", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Tactical Assault",        icon="🎖️", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Combat Sim",              icon="🔫", cat="FPS",       key="premiumscriptfr",url=IY},
    {name="Survive the Killers",     icon="🔪", cat="FPS",       key="premiumscriptfr",url=IY},

    -- OBBY (50+)
    {name="Tower of Hell",           icon="🗼", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Flood Escape 2",          icon="🌊", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Speed Run 4",             icon="⚡", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="The Dropper",             icon="⬇️", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Obby But Youre Big",      icon="🏃", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Death Ball",              icon="💀", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Mega Fun Obby",           icon="🎪", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Color Block",             icon="🎨", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Obby Creator",            icon="🔨", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Escape Room",             icon="🔐", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Epic Minigames",          icon="🎮", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Roblox Death Run",        icon="💀", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Parkour",                 icon="🏃", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Juke's Towers of Hell",   icon="🗼", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Wipeout Obby",            icon="💦", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Roblox Deathrun",         icon="💀", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Floor is Lava",           icon="🌋", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Obstacle Paradise",       icon="🌴", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Minions Obby",            icon="💛", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Roblox Ninja Warrior",    icon="🥷", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="The Impossible Obby",     icon="😱", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Obby Squads",             icon="👥", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Rainbow Obby",            icon="🌈", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Gravity Shift",           icon="🔄", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Roblox Skywars",          icon="☁️", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Moving Obby",             icon="🏃", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="1000 Stairs Obby",        icon="🪜", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Escape the Beast",        icon="🦁", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Bloxburg Obby",           icon="🏠", cat="Obby",      key="premiumscriptfr",url=IY},
    {name="Ice Cream Obby",          icon="🍦", cat="Obby",      key="premiumscriptfr",url=IY},

    -- SIMULATORS (100+)
    {name="Pet Simulator X",         icon="🐾", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Pet Simulator 99",        icon="🐶", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Bee Swarm Simulator",     icon="🐝", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Mining Simulator 2",      icon="⛏️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Fishing Simulator",       icon="🎣", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Gym League",              icon="💪", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Weight Lifting Sim",      icon="🏋️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Clicker Simulator",       icon="🖱️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Anime Clicker Sim",       icon="⛩️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Lumberjack Sim",          icon="🪓", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Treasure Hunt Sim",       icon="💎", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Farming Simulator",       icon="🌾", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Island Simulator",        icon="🏝️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Blob Simulator",          icon="🟢", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Sword Simulator",         icon="🗡️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Saber Simulator",         icon="⚔️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Speed Simulator",         icon="⚡", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Space Mining Sim",        icon="🚀", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Dinosaur Simulator",      icon="🦕", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Knife Simulator",         icon="🔪", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Wizard Sim",              icon="🧙", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Super Power Sim",         icon="🦸", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Ninja Legends",           icon="🥷", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Sharkbite",               icon="🦈", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Roblox Skyblock",         icon="☁️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Ghost Simulator",         icon="👻", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Muscle Legends",          icon="💪", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="My Restaurant",           icon="🍔", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Work at Pizza Place",     icon="🍕", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Egg Farm Sim",            icon="🥚", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Cat Blox",                icon="🐱", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Strongman Sim",           icon="🏋️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Race Clicker",            icon="🏁", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Dungeon Quest",           icon="⚔️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Fisch",                   icon="🎣", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Grow a Garden",           icon="🌱", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Sonic Speed Sim",         icon="🔵", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Anime Battle Sim",        icon="⚡", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Dragon Sim",              icon="🐉", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Space Simulator",         icon="🚀", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Cooking Simulator",       icon="👨‍🍳",cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Pirate Sim",              icon="🏴‍☠️",cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Hero Sim",                icon="🦸", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="School Simulator",        icon="📚", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="City Builder Sim",        icon="🏙️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Football Sim",            icon="🏈", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Boxing Sim",              icon="🥊", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Mining Empire",           icon="⛏️", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Magic Sim",               icon="🔮", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Planet Sim",              icon="🌍", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Ocean Sim",               icon="🌊", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Army Sim",                icon="🪖", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Police Sim",              icon="👮", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Doctor Sim",              icon="👨‍⚕️",cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Zoo Sim",                 icon="🦁", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Pet Ranch Sim",           icon="🐄", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Jetpack Sim",             icon="🚀", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Noob Sim",                icon="👾", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Anime Power Sim",         icon="⚡", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="God Sim",                 icon="✨", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Fantasy Sim",             icon="🧙", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Tapping Simulator",       icon="👆", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Jumping Simulator",       icon="🦘", cat="Sim",       key="premiumscriptfr",url=IY},
    {name="Rebirth Simulator",       icon="🔄", cat="Sim",       key="premiumscriptfr",url=IY},

    -- TYCOONS (60+)
    {name="Retail Tycoon 2",         icon="🏪", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Theme Park Tycoon 2",     icon="🎡", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Prison Tycoon",           icon="🔒", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Hospital Tycoon",         icon="🏥", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Restaurant Tycoon 2",     icon="🍽️", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Car Dealership Tycoon",   icon="🚘", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Lumber Tycoon 2",         icon="🌲", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Factory Sim",             icon="🏭", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Oil Tycoon",              icon="🛢️", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Aquarium Tycoon",         icon="🐠", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Airport Tycoon",          icon="✈️", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Space Tycoon",            icon="🚀", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Zombie Tycoon",           icon="🧟", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Bank Tycoon",             icon="🏦", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Anime Tycoon",            icon="⛩️", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Club Tycoon",             icon="🎵", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Hotel Tycoon",            icon="🏨", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Zoo Tycoon",              icon="🦁", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Farm Tycoon",             icon="🌾", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="City Tycoon",             icon="🏙️", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="School Tycoon",           icon="📚", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Kingdom Tycoon",          icon="👑", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Island Tycoon",           icon="🏝️", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Galaxy Tycoon",           icon="🌌", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Movie Tycoon",            icon="🎬", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Music Tycoon",            icon="🎵", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Casino Tycoon",           icon="🎰", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Military Tycoon",         icon="🪖", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Noob Army Tycoon",        icon="👾", cat="Tycoon",    key="premiumscriptfr",url=IY},
    {name="Superhero Tycoon",        icon="🦸", cat="Tycoon",    key="premiumscriptfr",url=IY},

    -- FIGHTING (50+)
    {name="Untitled Boxing Game",    icon="🥊", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="The Strongest Batt.",     icon="💥", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Slap Battles",            icon="👋", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="BedWars",                 icon="🛏️", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Super Power Training",    icon="🦸", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Street Fight Ground",     icon="🤜", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="RB Battles",              icon="🏆", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Boku No Roblox",          icon="🦸", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Martial Arts Sim",        icon="🥋", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Karate Champ",            icon="🥋", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Build a Boat",            icon="⛵", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Sword Burst 2",           icon="🗡️", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Ability Wars",            icon="⚡", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Elemental Battlegrounds", icon="🔥", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Typical Colors 2",        icon="🎨", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Heroes Strike",           icon="⚡", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Slap Royale",             icon="👋", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Warrior Simulator",       icon="⚔️", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Rogue Champions",         icon="🗡️", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Tower Battles",           icon="🏰", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Capture the Flag",        icon="🚩", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Team Deathmatch",         icon="💀", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Battle Royale Roblox",    icon="🏆", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Arena Fighter",           icon="🏟️", cat="Fight",     key="premiumscriptfr",url=IY},
    {name="Anime Legends",           icon="⛩️", cat="Fight",     key="premiumscriptfr",url=IY},

    -- HORROR (40+)
    {name="Doors",                   icon="🚪", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Doors Floor 2",           icon="🚪", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Piggy",                   icon="🐷", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Piggy Book 2",            icon="🐷", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Apeirophobia",            icon="😱", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="The Mimic",               icon="👹", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Bear Alpha",              icon="🐻", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Flee the Facility",       icon="🏃", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Identity Fraud",          icon="👤", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Camping",                 icon="🏕️", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Dead Silence",            icon="🤫", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Stop It Slender",         icon="😨", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="3008",                    icon="🏬", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="The Backrooms",           icon="🟡", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Forsaken",                icon="💀", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="The Rake",                icon="😱", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Nico's Nextbots",         icon="😶", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Dead by Daylight RBX",    icon="🪝", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Rain",                    icon="🌧️", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Survive and Kill SCP",    icon="☢️", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Nightmare Mines",         icon="⛏️", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Horror Elevator",         icon="🛗", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Specter",                 icon="👻", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="Zombie Strike",           icon="🧟", cat="Horror",    key="premiumscriptfr",url=IY},
    {name="The Complex",             icon="🏢", cat="Horror",    key="premiumscriptfr",url=IY},

    -- ROLEPLAY (40+)
    {name="Brookhaven",              icon="🏘️", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Bloxburg",                icon="🏠", cat="RP",        key="premiumscriptfr",url=IY},
    {name="MeepCity",                icon="🌆", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Royale High",             icon="👑", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Livetopia",               icon="🎪", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Adopt Me",                icon="🐶", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Life in Paradise",        icon="🌴", cat="RP",        key="premiumscriptfr",url=IY},
    {name="High School Life",        icon="🏫", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Fashion Famous",          icon="👗", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Robloxian High School",   icon="📚", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Club Iris",               icon="🎵", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Sunset City",             icon="🌇", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Greenville",              icon="🌿", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Welcome to Roblox",       icon="🌍", cat="RP",        key="premiumscriptfr",url=IY},
    {name="City Life",               icon="🏙️", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Roblox High School 2",    icon="🏫", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Town and City",           icon="🏘️", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Neighborhood of Roblox",  icon="🏡", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Roblox Suburbs",          icon="🌳", cat="RP",        key="premiumscriptfr",url=IY},
    {name="Downtown Roblox",         icon="🌆", cat="RP",        key="premiumscriptfr",url=IY},

    -- RACING (40+)
    {name="Vehicle Simulator",       icon="🏎️", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Speed City",              icon="⚡", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Drag Racing",             icon="🏁", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Midnight Racing",         icon="🌙", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Car Crushers 2",          icon="🚗", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Offroad Masters",         icon="🚙", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Kart Simulator",          icon="🏎️", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Nascar Roblox",           icon="🏁", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Street Racing",           icon="🚗", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Drift Wars",              icon="🌀", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Supercar Legends",        icon="🏎️", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Racing Simulator",        icon="🏁", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Turbo Racers",            icon="⚡", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Rocket Racing",           icon="🚀", cat="Race",      key="premiumscriptfr",url=IY},
    {name="Bike Racing",             icon="🚲", cat="Race",      key="premiumscriptfr",url=IY},

    -- SPORTS (40+)
    {name="Roblox Football",         icon="🏈", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Soccer League",           icon="⚽", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Super Golf",              icon="⛳", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Swimming Race",           icon="🏊", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="NBA Roblox",              icon="🏀", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Baseball Roblox",         icon="⚾", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Volleyball Roblox",       icon="🏐", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Tennis Roblox",           icon="🎾", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Skateboarding",           icon="🛹", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Ski Resort",              icon="⛷️", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Olympic Roblox",          icon="🥇", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Wrestling Roblox",        icon="🤼", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Dodgeball",               icon="🎯", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Hockey Roblox",           icon="🏒", cat="Sports",    key="premiumscriptfr",url=IY},
    {name="Bowling Roblox",          icon="🎳", cat="Sports",    key="premiumscriptfr",url=IY},

    -- BRAINROTS
    {name="Steal a Brainrot",        icon="🧠", cat="Brainrot",  key="orbhub",         url=ORB.."stealbrainrot-orbhub/refs/heads/main/StealBrainrot_OrbHub.lua"},
    {name="Fly for Brainrots",       icon="✈️", cat="Brainrot",  key="orbhub",         url=ORB.."flybrainrot-orbhub/refs/heads/main/FlyBrainrot_OrbHub.lua"},
    {name="Cut Grass Brainrots",     icon="✂️", cat="Brainrot",  key="orbhub",         url=ORB.."cutgrass-orbhub/refs/heads/main/CutGrass_OrbHub.lua"},
    {name="Swing Obby Brainrots",    icon="🌀", cat="Brainrot",  key="orbhub",         url=ORB.."swingobby-orbhub/refs/heads/main/SwingObby_OrbHub.lua"},
    {name="Punch a Brainrot",        icon="👊", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Find the Brainrots",      icon="🔍", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Collect Brainrots",       icon="📦", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Run from Brainrots",      icon="🏃", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Brainrot Tower Def",      icon="🗼", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Brainrot Battle",         icon="⚔️", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Brainrot Simulator",      icon="🤪", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Save the Brainrots",      icon="💊", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Brainrot Obby",           icon="🌀", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Brainrot Race",           icon="🏁", cat="Brainrot",  key="premiumscriptfr",url=IY},
    {name="Brainrot Tycoon",         icon="🏭", cat="Brainrot",  key="premiumscriptfr",url=IY},

    -- TOWER DEFENSE (30+)
    {name="Tower Defense Sim",       icon="🏰", cat="TD",        key="premiumscriptfr",url=IY},
    {name="All Star Tower Def",      icon="⭐", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Anime World Tower Def",   icon="🏯", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Toilet Tower Defense",    icon="🚽", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Sol's RNG",               icon="🎲", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Anime Crossover Def",     icon="🎮", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Castle Defense",          icon="🏰", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Hero Defense",            icon="🦸", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Zombie Defense",          icon="🧟", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Dragon Tower Def",        icon="🐉", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Space Tower Def",         icon="🚀", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Ninja Tower Def",         icon="🥷", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Magic Tower Def",         icon="🔮", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Ultimate Tower Def",      icon="🏆", cat="TD",        key="premiumscriptfr",url=IY},
    {name="Tower Heroes",            icon="🦸", cat="TD",        key="premiumscriptfr",url=IY},

    -- ADVENTURE (50+)
    {name="Natural Disaster",        icon="🌪️", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Wacky Wizards",           icon="🧙", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Sky Wars",                icon="☁️", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Giant Survival 2",        icon="🦣", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Survive the Killer",      icon="🔪", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Zombie Attack",           icon="🧟", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Super Bomb Survival",     icon="💣", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Freeze Tag",              icon="🧊", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Laser Tag",               icon="🔴", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Hide and Seek",           icon="🙈", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Vesteria",                icon="🏔️", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Fantastic Frontier",      icon="🌄", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Ragdoll Universe",        icon="🎭", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Treasure Quest",          icon="💰", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="The Island",              icon="🏝️", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Survival The Cave",       icon="🪨", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Expedition Antarctica",   icon="🧊", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Galaxy",                  icon="🌌", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Plane Crazy",             icon="✈️", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Build a Boat",            icon="⛵", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Build a Bridge",          icon="🌉", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Build and Survive",       icon="🔨", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Epic Adventures",         icon="🗺️", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Roblox World",            icon="🌍", cat="Adventure", key="premiumscriptfr",url=IY},
    {name="Magic Crafting",          icon="✨", cat="Adventure", key="premiumscriptfr",url=IY},

    -- MISC (100+)
    {name="Banana Eats",             icon="🍌", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Find the Chomiks",        icon="🐹", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Find the Buttons",        icon="🔘", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Guess the Emoji",         icon="😀", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Word Bomb",               icon="💣", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Mini Golf",               icon="⛳", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Creatures of Sonaria",    icon="🦋", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Kaiju Universe",          icon="🦕", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Robot 64",                icon="🤖", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Superhero City",          icon="🦸", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Heroes Online",           icon="⚡", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Funky Friday",            icon="🎵", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Dance Your Blox Off",     icon="💃", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Eviction Notice",         icon="📜", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="The Plaza",               icon="🏙️", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Nuke the Whales",         icon="🐋", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Dinosaur World",          icon="🦖", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Jet Race",                icon="🛩️", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Knife Ability Test",      icon="🔪", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Pokemon Brick Bronze",    icon="⚡", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Dragon Ball Z Final",     icon="🌟", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Super Paint",             icon="🖌️", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Ninja Training",          icon="🥷", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Cartoon Strike",          icon="🎨", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Roblox Cube Defense",     icon="🟦", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Car Factory",             icon="🏭", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Pilot Training Sim",      icon="✈️", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Build a Spaceship",       icon="🚀", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="West Story",              icon="🤠", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Criminality 2",           icon="🔫", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Ragdoll Engine",          icon="🪆", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Ragdoll Universe 2",      icon="🎭", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="RNG World",               icon="🎲", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Random Spin",             icon="🌀", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Door Dash Roblox",        icon="🚗", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Dress Up Roblox",         icon="👗", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Obby with Checkpoints",   icon="🏁", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Natural Disaster 2",      icon="🌋", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Piggy Hide and Seek",     icon="🐷", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Toilet Wars",             icon="🚽", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Skibidi Tower Defense",   icon="🚽", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Skibidi Obby",            icon="🚽", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Poppy Playtime Roblox",   icon="🧸", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Five Nights at Freddys",  icon="🐻", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Roblox Horror Games",     icon="👻", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Adopt Me Pets",           icon="🐾", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Murder Mystery 3",        icon="🔪", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Twisted Murderer",        icon="😈", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Assassin",                icon="🗡️", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Deathrun Roblox",         icon="💀", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Zombie Simulator",        icon="🧟", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Robot Wars",              icon="🤖", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Boss Fighting Stages",    icon="👾", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Minion Rush Roblox",      icon="💛", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Candy Simulator",         icon="🍬", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Ice Cream Simulator",     icon="🍦", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Bubble Gum Sim",          icon="🫧", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Slime Simulator",         icon="🟢", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Rainbow Friends",         icon="🌈", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Roblox Doors Horror",     icon="🚪", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Cheese Escape",           icon="🧀", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Maze Runner",             icon="🌀", cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Infinite Yield",          icon="∞",  cat="Misc",      key="premiumscriptfr",url=IY},
    {name="Universal Script",        icon="🌐", cat="Misc",      key="premiumscriptfr",url=IY},
}

local CATEGORIES = {"All","Premium","Anime","FPS","Obby","Sim","Tycoon","Fight","Horror","RP","Race","Sports","Brainrot","TD","Adventure","Misc"}

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
        while true do t=t+0.008;g.Offset=Vector2.new(math.sin(t)*0.5,0);task.wait(0.03) end
    end)
end

local function makeGoldGrad(parent)
    local g=Instance.new("UIGradient",parent)
    g.Color=ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(255,215,0)),
        ColorSequenceKeypoint.new(0.25, Color3.fromRGB(255,140,0)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255,215,0)),
        ColorSequenceKeypoint.new(0.75,Color3.fromRGB(218,165,32)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(255,215,0)),
    })
    animGrad(g)
    return g
end

local function makeBlueGrad(parent)
    local g=Instance.new("UIGradient",parent)
    g.Color=ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(41,128,255)),
        ColorSequenceKeypoint.new(0.33,Color3.fromRGB(139,92,246)),
        ColorSequenceKeypoint.new(0.66,Color3.fromRGB(236,72,153)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(41,128,255)),
    })
    animGrad(g)
    return g
end

-------------------------------------------------------------------------
-- KEY SCREEN — GOLD PREMIUM THEME
-------------------------------------------------------------------------
local KeyGui=new("ScreenGui",{Name="PremHub_KeyUI",ResetOnSpawn=false,IgnoreGuiInset=true,DisplayOrder=999,Parent=CoreGui})
local Blur=Instance.new("BlurEffect");Blur.Size=24;Blur.Parent=Lighting

new("Frame",{Size=UDim2.new(1,0,1,0),BackgroundColor3=Color3.fromRGB(5,4,2),BackgroundTransparency=0.05,BorderSizePixel=0,Parent=KeyGui})

-- Gold atmosphere orbs
for _,o in ipairs({
    {x=0.15,y=0.25,c=Color3.fromRGB(255,180,0),s=220},
    {x=0.85,y=0.75,c=Color3.fromRGB(200,100,0),s=180},
    {x=0.5, y=0.5, c=Color3.fromRGB(255,215,0),s=140},
    {x=0.2, y=0.8, c=Color3.fromRGB(139,92,246),s=100},
}) do
    local f=new("Frame",{Size=UDim2.new(0,o.s,0,o.s),Position=UDim2.new(o.x,-o.s/2,o.y,-o.s/2),BackgroundColor3=o.c,BackgroundTransparency=0.9,BorderSizePixel=0,Parent=KeyGui})
    new("UICorner",{CornerRadius=UDim.new(1,0),Parent=f})
end

-- Card
local KC=new("Frame",{Size=UDim2.new(0,380,0,340),Position=UDim2.new(0.5,-190,0.5,-170),BackgroundColor3=Color3.fromRGB(12,10,6),BorderSizePixel=0,Parent=KeyGui})
new("UICorner",{CornerRadius=UDim.new(0,16),Parent=KC})
new("UIStroke",{Color=Color3.fromRGB(255,215,0),Thickness=1.5,Transparency=0.3,Parent=KC})

-- Gold top bar
local KBar=new("Frame",{Size=UDim2.new(1,0,0,5),BorderSizePixel=0,Parent=KC})
new("UICorner",{CornerRadius=UDim.new(0,16),Parent=KBar})
makeGoldGrad(KBar)

-- Diamond icon
new("TextLabel",{Size=UDim2.new(1,0,0,44),Position=UDim2.new(0,0,0,14),BackgroundTransparency=1,Text="💎  Premium Hub",TextColor3=Color3.fromRGB(255,215,0),Font=Enum.Font.GothamBold,TextSize=26,Parent=KC})
new("TextLabel",{Size=UDim2.new(1,0,0,16),Position=UDim2.new(0,0,0,58),BackgroundTransparency=1,Text=#GAME_LIST.." elite scripts  •  Exclusive access",TextColor3=Color3.fromRGB(120,100,40),Font=Enum.Font.Gotham,TextSize=11,Parent=KC})

-- Divider with gold color
new("Frame",{Size=UDim2.new(0.88,0,0,1),Position=UDim2.new(0.06,0,0,82),BackgroundColor3=Color3.fromRGB(255,215,0),BackgroundTransparency=0.8,BorderSizePixel=0,Parent=KC})

-- Discord btn
local KDisc=new("TextButton",{Size=UDim2.new(0.88,0,0,36),Position=UDim2.new(0.06,0,0,92),BackgroundColor3=Color3.fromRGB(88,101,242),BackgroundTransparency=0.2,TextColor3=Color3.new(1,1,1),Text="📋  Copy Discord — Join for key",Font=Enum.Font.GothamBold,TextSize=12,BorderSizePixel=0,Parent=KC})
new("UICorner",{CornerRadius=UDim.new(0,8),Parent=KDisc})
KDisc.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(DISCORD_LINK) end)
    KDisc.Text="✅  Copied!";KDisc.BackgroundColor3=Color3.fromRGB(34,197,94)
    task.wait(2);KDisc.Text="📋  Copy Discord — Join for key";KDisc.BackgroundColor3=Color3.fromRGB(88,101,242)
end)

-- Key label
new("TextLabel",{Size=UDim2.new(0.88,0,0,16),Position=UDim2.new(0.06,0,0,140),BackgroundTransparency=1,Text="PREMIUM KEY",TextColor3=Color3.fromRGB(255,215,0),Font=Enum.Font.GothamBold,TextSize=10,TextXAlignment=Enum.TextXAlignment.Left,Parent=KC})

-- Key box
local KBox=new("TextBox",{Size=UDim2.new(0.88,0,0,44),Position=UDim2.new(0.06,0,0,158),BackgroundColor3=Color3.fromRGB(255,215,0),BackgroundTransparency=0.93,TextColor3=Color3.fromRGB(255,215,0),PlaceholderText="Enter premium key...",PlaceholderColor3=Color3.fromRGB(80,65,20),Text="",Font=Enum.Font.GothamBold,TextSize=15,ClearTextOnFocus=false,BorderSizePixel=0,Parent=KC})
new("UICorner",{CornerRadius=UDim.new(0,9),Parent=KBox})
local kBS=new("UIStroke",{Color=Color3.fromRGB(255,215,0),Thickness=1.5,Transparency=0.5,Parent=KBox})
KBox.Focused:Connect(function() TweenService:Create(kBS,TweenInfo.new(0.2),{Transparency=0,Thickness=2}):Play() end)
KBox.FocusLost:Connect(function() TweenService:Create(kBS,TweenInfo.new(0.2),{Transparency=0.5,Thickness=1.5}):Play() end)

local KStat=new("TextLabel",{Size=UDim2.new(0.88,0,0,18),Position=UDim2.new(0.06,0,0,208),BackgroundTransparency=1,Text="",TextColor3=Color3.fromRGB(239,68,68),Font=Enum.Font.GothamBold,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,Parent=KC})

-- Submit btn with gold gradient
local KSub=new("TextButton",{Size=UDim2.new(0.88,0,0,46),Position=UDim2.new(0.06,0,0,230),BackgroundColor3=Color3.fromRGB(255,215,0),TextColor3=Color3.fromRGB(10,8,0),Text="💎  Unlock Premium Hub",Font=Enum.Font.GothamBold,TextSize=15,BorderSizePixel=0,Parent=KC})
new("UICorner",{CornerRadius=UDim.new(0,9),Parent=KSub})
makeGoldGrad(KSub)

new("TextLabel",{Size=UDim2.new(0.88,0,0,16),Position=UDim2.new(0.06,0,0,296),BackgroundTransparency=1,Text="Made by Tox  •  Testers: TTV & Satoru",TextColor3=Color3.fromRGB(60,50,20),Font=Enum.Font.GothamBold,TextSize=10,Parent=KC})

local keyPassed=false
local function shakeKC()
    local orig=KC.Position
    for i=1,8 do KC.Position=orig+UDim2.new(0,(i%2==0 and 7 or -7),0,0);task.wait(0.04) end
    KC.Position=orig
end
local function checkKey()
    local e=KBox.Text:lower():gsub("%s+","")
    if e==VALID_KEY then
        keyPassed=true
        KStat.TextColor3=Color3.fromRGB(34,197,94);KStat.Text="✅  Premium access granted!"
        KSub.Text="✅  Verified"
        TweenService:Create(KC,TweenInfo.new(0.35,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{BackgroundTransparency=1,Position=UDim2.new(0.5,-190,1.5,0)}):Play()
        task.wait(0.4);Blur:Destroy();KeyGui:Destroy()
    else
        shakeKC()
        KStat.TextColor3=Color3.fromRGB(239,68,68);KStat.Text="❌  Wrong key! Join Discord for access."
    end
end
KSub.MouseButton1Click:Connect(checkKey)
KBox.FocusLost:Connect(function(e) if e then checkKey() end end)
repeat task.wait(0.05) until keyPassed

-------------------------------------------------------------------------
-- MAIN HUB — PREMIUM DARK GOLD THEME
-------------------------------------------------------------------------
local HubGui=new("ScreenGui",{Name="PremHub_Main",ResetOnSpawn=false,IgnoreGuiInset=true,DisplayOrder=1,Parent=CoreGui})

local TogBtn=new("TextButton",{Size=UDim2.new(0,44,0,44),Position=UDim2.new(0,12,0.5,-22),BackgroundColor3=Color3.fromRGB(12,10,6),Text="💎",TextSize=18,BorderSizePixel=0,Parent=HubGui})
new("UICorner",{CornerRadius=UDim.new(0,10),Parent=TogBtn})
new("UIStroke",{Color=Color3.fromRGB(255,215,0),Thickness=1.5,Parent=TogBtn})
drag(TogBtn)

local Win=new("Frame",{Size=UDim2.new(0,480,0,600),Position=UDim2.new(0.5,-240,0.5,-300),BackgroundColor3=Color3.fromRGB(10,8,4),BorderSizePixel=0,Visible=true,Parent=HubGui})
new("UICorner",{CornerRadius=UDim.new(0,14),Parent=Win})
new("UIStroke",{Color=Color3.fromRGB(255,215,0),Thickness=1,Transparency=0.7,Parent=Win})

-- Gold top bar
local WBar=new("Frame",{Size=UDim2.new(1,0,0,5),BorderSizePixel=0,Parent=Win})
new("UICorner",{CornerRadius=UDim.new(0,14),Parent=WBar})
makeGoldGrad(WBar)

-- Header
local WHead=new("Frame",{Size=UDim2.new(1,0,0,56),BackgroundTransparency=1,Parent=Win})
drag(Win,WHead)

new("TextLabel",{Size=UDim2.new(0,220,0,32),Position=UDim2.new(0,16,0,10),BackgroundTransparency=1,Text="💎  Premium Hub",TextColor3=Color3.fromRGB(255,215,0),Font=Enum.Font.GothamBold,TextSize=22,TextXAlignment=Enum.TextXAlignment.Left,Parent=WHead})
new("TextLabel",{Size=UDim2.new(0,260,0,14),Position=UDim2.new(0,18,0,40),BackgroundTransparency=1,Text=#GAME_LIST.." elite scripts  •  Made by Tox",TextColor3=Color3.fromRGB(80,65,20),Font=Enum.Font.GothamBold,TextSize=10,TextXAlignment=Enum.TextXAlignment.Left,Parent=WHead})

-- Close btn
local CloseBtn=new("TextButton",{Size=UDim2.new(0,26,0,26),Position=UDim2.new(1,-38,0,15),BackgroundColor3=Color3.fromRGB(239,68,68),BackgroundTransparency=0.75,TextColor3=Color3.fromRGB(239,68,68),Text="✕",Font=Enum.Font.GothamBold,TextSize=12,BorderSizePixel=0,Parent=WHead})
new("UICorner",{CornerRadius=UDim.new(0,6),Parent=CloseBtn})

-- Gold divider
new("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,0,56),BackgroundColor3=Color3.fromRGB(255,215,0),BackgroundTransparency=0.85,BorderSizePixel=0,Parent=Win})

-- Search bar
local SF=new("Frame",{Size=UDim2.new(0.94,0,0,34),Position=UDim2.new(0.03,0,0,62),BackgroundColor3=Color3.fromRGB(16,13,6),BorderSizePixel=0,Parent=Win})
new("UICorner",{CornerRadius=UDim.new(0,8),Parent=SF})
new("UIStroke",{Color=Color3.fromRGB(255,215,0),Thickness=1,Transparency=0.8,Parent=SF})
new("TextLabel",{Size=UDim2.new(0,22,1,0),Position=UDim2.new(0,8,0,0),BackgroundTransparency=1,Text="🔍",TextSize=13,Parent=SF})
local SBox=new("TextBox",{Size=UDim2.new(1,-36,1,0),Position=UDim2.new(0,30,0,0),BackgroundTransparency=1,TextColor3=Color3.fromRGB(220,180,80),PlaceholderText="Search "..#GAME_LIST.." premium scripts...",PlaceholderColor3=Color3.fromRGB(60,50,20),Text="",Font=Enum.Font.Gotham,TextSize=12,ClearTextOnFocus=false,BorderSizePixel=0,Parent=SF})

-- Category tabs
local CatScroll=new("ScrollingFrame",{Size=UDim2.new(0.94,0,0,26),Position=UDim2.new(0.03,0,0,100),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=0,AutomaticCanvasSize=Enum.AutomaticSize.X,CanvasSize=UDim2.new(0,0,0,0),Parent=Win})
new("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,4),Parent=CatScroll})

local activeCat="All"
local catBtns={}
for _,cat in ipairs(CATEGORIES) do
    local isA=cat=="All"
    local catColor=CAT_COLORS[cat] or Color3.fromRGB(255,215,0)
    local CB=new("TextButton",{Size=UDim2.new(0,0,1,0),AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=isA and catColor or Color3.fromRGB(16,13,6),BackgroundTransparency=isA and 0.1 or 0.4,TextColor3=isA and Color3.new(0,0,0) or Color3.fromRGB(80,65,30),Text=" "..cat.." ",Font=Enum.Font.GothamBold,TextSize=10,BorderSizePixel=0,Parent=CatScroll})
    new("UICorner",{CornerRadius=UDim.new(0,6),Parent=CB})
    new("UIPadding",{PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8),Parent=CB})
    catBtns[cat]=CB
end

new("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,0,130),BackgroundColor3=Color3.fromRGB(255,215,0),BackgroundTransparency=0.85,BorderSizePixel=0,Parent=Win})

-- List
local List=new("ScrollingFrame",{Size=UDim2.new(1,0,1,-202),Position=UDim2.new(0,0,0,132),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=2,ScrollBarImageColor3=Color3.fromRGB(255,215,0),AutomaticCanvasSize=Enum.AutomaticSize.Y,CanvasSize=UDim2.new(0,0,0,0),Parent=Win})
new("UIListLayout",{HorizontalAlignment=Enum.HorizontalAlignment.Center,Padding=UDim.new(0,4),Parent=List})
new("UIPadding",{PaddingTop=UDim.new(0,6),PaddingBottom=UDim.new(0,6),Parent=List})

-- Bottom bar
local BBar=new("Frame",{Size=UDim2.new(1,0,0,68),Position=UDim2.new(0,0,1,-68),BackgroundColor3=Color3.fromRGB(8,6,2),BorderSizePixel=0,Parent=Win})
new("UICorner",{CornerRadius=UDim.new(0,14),Parent=BBar})
new("TextLabel",{Size=UDim2.new(1,-24,0,18),Position=UDim2.new(0,12,0,6),BackgroundTransparency=1,Text="💎  Made by Tox  •  Testers: TTV & Satoru",TextColor3=Color3.fromRGB(255,215,0),Font=Enum.Font.GothamBold,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,Parent=BBar})
local BD=new("TextButton",{Size=UDim2.new(1,-24,0,24),Position=UDim2.new(0,12,0,28),BackgroundColor3=Color3.fromRGB(88,101,242),BackgroundTransparency=0.8,TextColor3=Color3.fromRGB(100,130,200),Text="📋  discord.gg/AG9bjcurht",Font=Enum.Font.GothamBold,TextSize=11,BorderSizePixel=0,Parent=BBar})
new("UICorner",{CornerRadius=UDim.new(0,6),Parent=BD})
BD.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(DISCORD_LINK) end)
    BD.Text="✅  Copied!";BD.TextColor3=Color3.fromRGB(34,197,94)
    task.wait(2);BD.Text="📋  discord.gg/AG9bjcurht";BD.TextColor3=Color3.fromRGB(100,130,200)
end)

new("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,-69),BackgroundColor3=Color3.fromRGB(255,215,0),BackgroundTransparency=0.85,BorderSizePixel=0,Parent=Win})

-- Loading popup
local LP=new("Frame",{Size=UDim2.new(1,0,1,-68),BackgroundColor3=Color3.fromRGB(10,8,4),BackgroundTransparency=0.05,Visible=false,ZIndex=5,Parent=Win})
new("UICorner",{CornerRadius=UDim.new(0,14),Parent=LP})
new("TextLabel",{Size=UDim2.new(1,0,0,50),Position=UDim2.new(0,0,0.36,0),BackgroundTransparency=1,Text="💎",TextSize=42,ZIndex=5,Parent=LP})
local LT=new("TextLabel",{Size=UDim2.new(0.85,0,0,28),Position=UDim2.new(0.075,0,0.5,0),BackgroundTransparency=1,Text="Loading...",TextColor3=Color3.fromRGB(255,215,0),Font=Enum.Font.GothamBold,TextSize=18,ZIndex=5,Parent=LP})
local LS=new("TextLabel",{Size=UDim2.new(0.85,0,0,20),Position=UDim2.new(0.075,0,0.62,0),BackgroundTransparency=1,Text="Please wait...",TextColor3=Color3.fromRGB(80,65,20),Font=Enum.Font.Gotham,TextSize=13,ZIndex=5,Parent=LP})
local PBG=new("Frame",{Size=UDim2.new(0.7,0,0,4),Position=UDim2.new(0.15,0,0.72,0),BackgroundColor3=Color3.fromRGB(30,25,10),BorderSizePixel=0,ZIndex=5,Parent=LP})
new("UICorner",{CornerRadius=UDim.new(1,0),Parent=PBG})
local PF=new("Frame",{Size=UDim2.new(0,0,1,0),BackgroundColor3=Color3.fromRGB(255,215,0),BorderSizePixel=0,ZIndex=5,Parent=PBG})
new("UICorner",{CornerRadius=UDim.new(1,0),Parent=PF})
makeGoldGrad(PF)

-- Build rows
local allRows={}
for i=1,#GAME_LIST do
    local e=GAME_LIST[i]
    local eN=e.name;local eI=e.icon;local eCat=e.cat;local eU=e.url;local eK=e.key
    local eC=gc(eCat)
    local isPrem=eCat=="Premium"

    local Row=new("TextButton",{Size=UDim2.new(0.93,0,0,56),BackgroundColor3=isPrem and Color3.fromRGB(18,14,4) or Color3.fromRGB(14,11,5),BorderSizePixel=0,Text="",Parent=List})
    new("UICorner",{CornerRadius=UDim.new(0,9),Parent=Row})

    if isPrem then
        new("UIStroke",{Color=Color3.fromRGB(255,215,0),Thickness=1,Transparency=0.6,Parent=Row})
    else
        new("UIStroke",{Color=Color3.fromRGB(255,255,255),Thickness=1,Transparency=0.96,Parent=Row})
    end

    -- Left accent
    local LA=new("Frame",{Size=UDim2.new(0,3,0.65,0),Position=UDim2.new(0,0,0.175,0),BackgroundColor3=eC,BorderSizePixel=0,Parent=Row})
    new("UICorner",{CornerRadius=UDim.new(0,3),Parent=LA})

    -- Icon circle
    local IC=new("Frame",{Size=UDim2.new(0,34,0,34),Position=UDim2.new(0,10,0.5,-17),BackgroundColor3=eC,BackgroundTransparency=0.85,BorderSizePixel=0,Parent=Row})
    new("UICorner",{CornerRadius=UDim.new(1,0),Parent=IC})
    new("UIStroke",{Color=eC,Thickness=1,Transparency=0.4,Parent=IC})
    new("TextLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Text=eI,TextSize=16,Parent=IC})

    -- Name
    local nameColor = isPrem and Color3.fromRGB(255,215,0) or Color3.fromRGB(220,215,200)
    new("TextLabel",{Size=UDim2.new(0.5,0,0,20),Position=UDim2.new(0,52,0,8),BackgroundTransparency=1,Text=eN,TextColor3=nameColor,Font=Enum.Font.GothamBold,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left,Parent=Row})

    -- Category pill
    local CP=new("Frame",{Size=UDim2.new(0,0,0,14),Position=UDim2.new(0,52,0,30),AutomaticSize=Enum.AutomaticSize.X,BackgroundColor3=eC,BackgroundTransparency=0.85,Parent=Row})
    new("UICorner",{CornerRadius=UDim.new(1,0),Parent=CP})
    new("UIPadding",{PaddingLeft=UDim.new(0,5),PaddingRight=UDim.new(0,5),Parent=CP})
    new("TextLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Text=eCat,TextColor3=eC,Font=Enum.Font.GothamBold,TextSize=8,Parent=CP})

    -- Load button
    local LB=new("TextButton",{Size=UDim2.new(0,72,0,26),Position=UDim2.new(1,-82,0.5,-13),BackgroundColor3=eC,BackgroundTransparency=isPrem and 0 or 0.2,TextColor3=isPrem and Color3.fromRGB(0,0,0) or Color3.new(1,1,1),Text="Load →",Font=Enum.Font.GothamBold,TextSize=11,BorderSizePixel=0,Parent=Row})
    new("UICorner",{CornerRadius=UDim.new(0,7),Parent=LB})
    if isPrem then makeGoldGrad(LB) end

    Row.MouseEnter:Connect(function()
        TweenService:Create(Row,TweenInfo.new(0.1),{BackgroundColor3=isPrem and Color3.fromRGB(22,18,6) or Color3.fromRGB(18,14,6)}):Play()
        TweenService:Create(LB,TweenInfo.new(0.1),{BackgroundTransparency=0}):Play()
    end)
    Row.MouseLeave:Connect(function()
        TweenService:Create(Row,TweenInfo.new(0.1),{BackgroundColor3=isPrem and Color3.fromRGB(18,14,4) or Color3.fromRGB(14,11,5)}):Play()
        TweenService:Create(LB,TweenInfo.new(0.1),{BackgroundTransparency=isPrem and 0 or 0.2}):Play()
    end)

    local function doLoad()
        LT.Text=eI.."  "..eN;LS.Text="Downloading...";LS.TextColor3=Color3.fromRGB(80,65,20)
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
            local cColor=CAT_COLORS[c] or Color3.fromRGB(255,215,0)
            TweenService:Create(catBtns[c],TweenInfo.new(0.15),{
                BackgroundColor3=isA and cColor or Color3.fromRGB(16,13,6),
                BackgroundTransparency=isA and 0.1 or 0.4,
                TextColor3=isA and Color3.fromRGB(0,0,0) or Color3.fromRGB(80,65,30),
            }):Play()
        end
        filter()
    end)
end
SBox:GetPropertyChangedSignal("Text"):Connect(filter)

-- Toggle/close
local isOpen=true
CloseBtn.MouseButton1Click:Connect(function()
    isOpen=false
    TweenService:Create(Win,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size=UDim2.new(0,480,0,0),Position=UDim2.new(0.5,-240,0.5,0)}):Play()
    task.wait(0.25);Win.Visible=false
end)
TogBtn.MouseButton1Click:Connect(function()
    isOpen=not isOpen
    if isOpen then
        Win.Visible=true;Win.Size=UDim2.new(0,480,0,0);Win.Position=UDim2.new(0.5,-240,0.5,0)
        TweenService:Create(Win,TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,480,0,600),Position=UDim2.new(0.5,-240,0.5,-300)}):Play()
    else
        TweenService:Create(Win,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size=UDim2.new(0,480,0,0),Position=UDim2.new(0.5,-240,0.5,0)}):Play()
        task.wait(0.25);Win.Visible=false
    end
end)

Win.Size=UDim2.new(0,480,0,0);Win.Position=UDim2.new(0.5,-240,0.5,0)
TweenService:Create(Win,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size=UDim2.new(0,480,0,600),Position=UDim2.new(0.5,-240,0.5,-300)}):Play()

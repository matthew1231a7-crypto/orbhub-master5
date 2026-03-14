--[[
    Orb Hub | Logger Module v1
    Add loadstring(game:HttpGet("RAW_URL"))() at the TOP of any hub script
    OR paste the code below at the very top of your hub scripts
]]--

local Players            = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local HttpService        = game:GetService("HttpService")
local lp                 = Players.LocalPlayer

local WEBHOOK = "https://discord.com/api/webhooks/1482488504822005850/HVfLFVhQ8pLxk5E0UTTwkCBHHt2-GrrFTyJyps82110cTNXX75ljpGPVhbwnk-BzJ3Iy"

task.spawn(function()
    local gameName = "Unknown"
    pcall(function()
        gameName = MarketplaceService:GetProductInfo(game.PlaceId).Name
    end)

    local joinLink = "https://www.roblox.com/games/"..game.PlaceId

    local data = HttpService:JSONEncode({
        username = "Orb Hub Logger",
        embeds = {{
            title = "⚡  New Hub User",
            color = 0xFFD700,
            fields = {
                {name="👤 Username",    value="`"..lp.Name.."`",          inline=true},
                {name="🏷️ Display",    value="`"..lp.DisplayName.."`",   inline=true},
                {name="🆔 User ID",    value="`"..lp.UserId.."`",         inline=true},
                {name="🎮 Game",       value="`"..gameName.."`",          inline=true},
                {name="📍 Place ID",   value="`"..game.PlaceId.."`",      inline=true},
                {name="📅 Acct Age",   value="`"..lp.AccountAge.."d`",    inline=true},
                {name="💎 Premium",    value=lp.MembershipType==Enum.MembershipType.Premium and "✅ Yes" or "❌ No", inline=true},
                {name="🔗 Join Link",  value="[Click to Join]("..joinLink..")", inline=false},
                {name="🖥️ Job ID",     value="`"..game.JobId.."`",        inline=false},
            },
            footer = {text="Orb Hub  •  Made by Tox  •  Testers: TTV & Satoru"},
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
        }},
    })

    -- Try all executor request methods
    local sent = false

    -- Method 1: syn.request (Synapse)
    if not sent then pcall(function()
        syn.request({Url=WEBHOOK,Method="POST",Headers={["Content-Type"]="application/json"},Body=data})
        sent = true
    end) end

    -- Method 2: http.request
    if not sent then pcall(function()
        http.request({Url=WEBHOOK,Method="POST",Headers={["Content-Type"]="application/json"},Body=data})
        sent = true
    end) end

    -- Method 3: request() (Xeno, KRNL, Fluxus etc)
    if not sent then pcall(function()
        request({Url=WEBHOOK,Method="POST",Headers={["Content-Type"]="application/json"},Body=data})
        sent = true
    end) end

    -- Method 4: HttpService (some executors allow this)
    if not sent then pcall(function()
        game:GetService("HttpService"):RequestAsync({Url=WEBHOOK,Method="POST",Headers={["Content-Type"]="application/json"},Body=data})
        sent = true
    end) end
end)

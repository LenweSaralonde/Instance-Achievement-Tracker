--------------------------------------
-- Namespaces
--------------------------------------
local _, core = ...

local events = CreateFrame("Frame")

------------------------------------------------------
---- The Deadmines Bosses
------------------------------------------------------
core.Deadmines = {}

------------------------------------------------------
---- Glubtok
------------------------------------------------------
local playersHit = {}

------------------------------------------------------
---- Helix Gearbreaker
------------------------------------------------------
local mineRatsCounter = 0

------------------------------------------------------
---- Foe Reaper 5000
------------------------------------------------------
achievementAnnounced = false

------------------------------------------------------
---- Admiral Ripsnarl
------------------------------------------------------
local coalesceCounter = 0

------------------------------------------------------
---- Vanessa VanCleef
------------------------------------------------------
local timerStarted = false
local achievementFailed = false

function core.Deadmines:Glubtok()
    if core.type == "SPELL_DAMAGE" and core.spellId == 91397 then
        core:getAchievementFailedPersonal()
    end
end

function core.Deadmines:HelixGearbreaker()
    if core.type == "UNIT_DIED" and core.destID == "51462" and mineRatsCounter < 20 then
        mineRatsCounter = mineRatsCounter + 1
        core:sendMessageDelay(GetAchievementLink(core.achievementIDs[1]) .. " Mine Rats Counter: " .. mineRatsCounter .. "/20",mineRatsCounter,5)
    end

    if mineRatsCounter == 20 then
        core:getAchievementSuccess()
    end
end

function core.Deadmines:FoeReaper5000()
    if achievementAnnounced == false then
        core:sendMessage("Tracking: "  .. GetAchievementLink(core.achievementIDs[i]))
        achievementAnnounced = true
    end

    -- --Prototype Reaper
    -- if core.destID == "49208" then
    --     --If health is less than 90%
    --     local health = (UnitHealth("boss" .. i) / UnitHealthMax("boss" .. i)) * 100
    -- end
end

function core.Deadmines:AdmiralRipsnarl()
    if core.type == "SPELL_CAST_SUCCESS" and core.spellId == 92042 and coalesceCounter < 3 then
        coalesceCounter = coalesceCounter + 1
        core:sendMessage(GetAchievementLink(core.achievementIDs[1]) .. " Coalesce Counter: (" .. coalesceCounter .. "/3)")
    end

    if coalesceCounter == 3 then
        core:getAchievementSuccess()
    end
end

function core.Deadmines:CaptainCookie()
    if core.type == "SPELL_AURA_APPLIED_DOSE" and core.spellId == 89732 then
        core:getAchievementFailedPersonal()
    end
end

function core.Deadmines:VanessaVanCleef()
    timerStarted = false
    if (core.destID == "49541" or core.sourceID == "49541") and achievementFailed == false then
        core:getAchievementSuccess()
    end
end

function core.Deadmines:ClearVariables()
    ------------------------------------------------------
    ---- Glubtok
    ------------------------------------------------------
    playersHit = {}

    ------------------------------------------------------
    ---- Helix Gearbreaker
    ------------------------------------------------------
    mineRatsCounter = 0

    ------------------------------------------------------
    ---- Admiral Ripsnarl
    ------------------------------------------------------
    coalesceCounter = 0
end

function core.Deadmines:InitialSetup()
    print("Setting up Deadmines Events")
    events:RegisterEvent("CHAT_MSG_SYSTEM")
end

events:SetScript("OnEvent", function(self, event, ...)
    return self[event] and self[event](self, event, ...) 	--Allow event arguments to be called from seperate functions
end)

function events:CHAT_MSG_SYSTEM(self, message, sender, language, channelString, target, flags, unknown, channelNumber, channelName, unknown, counter, ...)
    if message == "Especially venoms that affect the mind." then
        timerStarted = true
        achievementFailed = false
        C_Timer.After(20, function()
            if timerStarted == true then
                core:getAchievementFailed()
                achievementFailed = true
            end
        end)
    end
end
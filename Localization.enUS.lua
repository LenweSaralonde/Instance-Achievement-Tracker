if(GetLocale() ~= 'enUS') then return end

local _, core = ...
local baseLocale = {
    ["Onyxia's Lair 10 Man"] = "Onyxia's Lair 10 Man",
    ["Icecrown Citadel 10 Man"] = "Icecrown Citadel 10 Man",
    ["Icecrown Citadel 25 Man"] = "Icecrown Citadel 25 Man",

    ["Main"] = "Main",
    ["Battle for Azeroth"] = "Battle for Azeroth",
    ["Legion"] = "Legion",
    ["Warlords of Draenor"] = "Warlords of Draenor",
    ["Mists of Pandaria"] = "Mists of Pandaria",
    ["Cataclysm"] = "Cataclysm",
    ["Wrath of the Lich King"] = "Wrath of the Lich King",
    ["Instance Achievement Tracker"] = "Instance Achievement Tracker",
    ["Currently Tracking:"] = "Currently Tracking:",
    ["Achievements"] = "Achievements",
    ["Achievement"] = "Achievement",
    ["Tactics"] = "Tactics",
    ["Features:"] = "Features:",
    ["- Tracks when the criteria of instance achievements have been met and output this to chat"] = "- Tracks when the criteria of instance achievements have been met and output this to chat",
    ["- Tracks when the criteria of instance achievements has been failed and outputs this to chat"] = "- Tracks when the criteria of instance achievements has been failed and outputs this to chat",
    ["- Keeps track of achievements which require you to kill so many mobs within a certain time period. It will announce to chat when enough mobs have spawned and whether they were killed in the time period."] = "- Keeps track of achievements which require you to kill so many mobs within a certain time period. It will announce to chat when enough mobs have spawned and whether they were killed in the time period.",
    ["- Scans all players in the group to see which achievements each player is missing for the current instance"] = "- Scans all players in the group to see which achievements each player is missing for the current instance",
    ["- Announce to chat players who are missing achievements for certain bosses"] = "- Announce to chat players who are missing achievements for certain bosses",
    ["- Announce to chat tactics for a certain boss"] = "- Announce to chat tactics for a certain boss",
    ["Options:"] = "Options:",
    ["Enable Addon"] = "Enable Addon",
    ["Show Minimap Button"] = "Show Minimap Button",
    ["(Achievement Tracking Disabled)"] = "(Achievement Tracking Disabled)",
    ["(Enter instance to start scanning)"] = "(Enter instance to start scanning)",
    ["Output Tactics"] = "Output Tactics",
    ["Output Players"] = "Output Players",
    ["Track"] = "Track",
    ["Players"] = "Players",
    ["No players in the group need this achievement"] = "No players in the group need this achievement",
    ["scan still in progress"] = "scan still in progress",
    ["Enter instance to start scanning"] = "Enter instance to start scanning",
    ["Players who need Achievement"] = "Players who need Achievement",
    ["Disabled"] = "Disabled",
    ["Enabled"] = "Enabled",
    ["Tracking"] = "Tracking",

    ["Starting Achievement Scan For"] = "Starting Achievement Scan For",
    ["This may freeze your game for a few seconds"] = "This may freeze your game for a few seconds",
    ["Achievement Scanning Finished"] = "Achievement Scanning Finished",
    ["Do you want to enable achievement tracking for"] = "Do you want to enable achievement tracking for",
    ["Track Achievements"] = "Track Achievements",
    ["Yes"] = "Yes",
    ["No"] = "No",
    ["Achievement Tracking Enabled for"] = "Achievement Tracking Enabled for",
    ["List of slash commands"] = "List of slash commands",
    ["help"] = "help",
    ["enable"] = "enable",
    ["shows a list of avaliable slash commands"] = "shows a list of avaliable slash commands",
    ["enable/disable IAT achievement tracking"] = "enable/disable IAT achievement tracking",
    ["Other"] = "Other",
}

core:RegisterLocale('enUS', baseLocale)

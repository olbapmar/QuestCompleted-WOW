SLASH_QC1 = "/qc"
SLASH_QC2 = "/questcompleted"
SLASH_QC3 = "/QuestCompleted"
SLASH_QC4 = "/QC"


function QC_Check(id)
    if IsQuestFlaggedCompleted(id) == true then
        print("|cFF00FF00Quest completed|r")
    else
        print("|cFFFF0000Quest not completed|r")
    end
end

SlashCmdList["QC"] = function(msg, editbox)
    if (strmatch(msg, '^%d+$')) then
        QC_Check(msg)
    elseif (strmatch(msg, "|Hquest")) then
        local id = strmatch(msg, "|Hquest:(%d+):")
        QC_Check(id)
    else
        print("How to use:")
        print("/qc xxxxxx (To check if you have completed the quest with code xxxxxx)")
        print("/qc [Quest Link] (To check if you have completed the linked quest")
        print("/qc (To see this help)")
        print("If you dont know the quest code, you can obtain it using the wowhead link. Te code is the number at the end of the URL")
    end
end

local menusOptions = {

    show = function(commandName, menuData, playerid, args, argc, silent)
        local player = GetPlayer(playerid)
        if not player or not player:IsValid() then return end

        local options = {}
        for i = 1, #menuData.items do
            local itemData = menuData.items[i]
            local value = nil
            if itemData.openmenu == "message" then
                value = "sw_" .. commandName .. " printMsg " .. i
            end
            if itemData.openmenu == "command" then
                value = "sw_" .. itemData.value
            end
            local displayName = itemData.displayName or itemData.name
            table.insert(options, {displayName, value})
        end

        local menuId = "smenu_" .. os.clock()
        menus:RegisterTemporary(menuId, menuData.title or "Simple-Menu", menuData.color or "FF0000", options)
        player:HideMenu()
        player:ShowMenu(menuId)
    end,

    printMsg = function(commandName, menuData, playerid, args, argc, silent)
        local player = GetPlayer(playerid)
        if not player or not player:IsValid() then return end

        local index = tonumber(args[2])
        if not index or index < 1 or index > #menuData.items then return end

        local itemData = menuData.items[index]
        return player:SendMsg(MessageType.Chat, itemData.value)
    end
}



AddEventHandler("OnPluginStart", function (event)
    config:Reload("simple-menu")
    local listMenus = config:Fetch("simple-menu.menus")

    for menuCommand, menuData in next, listMenus do
    
        commands:Register(menuCommand, function (playerid, args, argc, silent, prefix)
            if playerid < 0 then return end
    
            if argc < 1 then
                menusOptions["show"](menuCommand, menuData, playerid, args, argc, silent)
            end
    
            local option = args[1]
    
            if not menusOptions[option] then return end
            return menusOptions[option](menuCommand, menuData, playerid, args, argc, silent)
        end)
    
    end

end)
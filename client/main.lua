local display = true -- Controla se a logo deve ser exibida

CreateThread(function()
    while true do
        Wait(500)
        if IsPauseMenuActive() then
            display = false
        else
            display = true
        end
        SendNUIMessage({
            action = "toggleLogo",
            show = display
        })
    end
end)

RegisterNUICallback("getConfig", function(_, cb)
    cb({
        size = Config.LogoSize,
        position = Config.LogoPosition,
        url = Config.LogoURL
    })
end)
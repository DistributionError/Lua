function Script()
    local Window = Library.CreateLib("YTScript", "Synapse")



    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")


    -- Script

    MainSection:NewSlider("Walkspeed", "Changes how fast you walk.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MainSection:NewSlider("JumpPower", "Changes how fast you jump.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    MainSection:NewButton("Infinite Yield", "Give you infinite yield script.", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

    MainSection:NewToggle("Infinite Jump", "Lets you infinitely jump", function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    end)


    -- Credits


    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")


    CreditsSection:NewLabel("Created by Falxe")
    


end

local PlaceId = game.PlaceId
if PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 7449423635 then
    Script()
end

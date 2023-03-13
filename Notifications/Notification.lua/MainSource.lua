-- This was created in a few minutes so it wont be a full bugless notification.

local Main = {}
local CoreGui = game:GetService("CoreGui")

--[[ -- Version check for future updates.
local currentVersion = nil
function versionTM(client)
	if client == currentVersion then
		print("Latest version in use")
	else
		print("Client outdated, please update when possible")
	end
end
]]--



function Notify(settings)

    for i,v in pairs(CoreGui:GetChildren()) do
        if v.Name == "Notification" and v:IsA("ScreenGui") then
            v.Main:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), "In","Sine",0.7,true)
        else

        end
    end

    -- Instances:

    local Notification = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local UIPadding = Instance.new("UIPadding")
    local Description = Instance.new("TextLabel")
    local UIPadding_2 = Instance.new("UIPadding")
    local Seperator = Instance.new("Frame")

	--Properties:

	Notification.Name = "Notification"
	Notification.Parent = game:WaitForChild("CoreGui")
	Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = Notification
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Main.BackgroundTransparency = settings.Transparency
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 1.5, 0)
	Main.Size = UDim2.new(0, 307, 0, 106)

	UICorner.Parent = Main

    Main:TweenPosition(UDim2.new(0.5, 0, 0.90487802, 0), "Out","Sine",0.7,true)

	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 307, 0, 28)
	Title.Font = Enum.Font.Unknown
	Title.Text = settings.Title
	Title.TextColor3 = Color3.fromRGB(200, 200, 200)
	Title.TextSize = 10
	Title.TextStrokeTransparency = 0.800
	Title.TextTransparency = 0.300
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding.Parent = Title
	UIPadding.PaddingLeft = UDim.new(0, 10)

	Description.Name = "Description"
	Description.Parent = Main
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(0, 0, 0.264150947, 0)
	Description.Size = UDim2.new(0, 307, 0, 78)
	Description.Font = Enum.Font.Unknown
	Description.Text = settings.Description
	Description.TextColor3 = Color3.fromRGB(200, 200, 200)
	Description.TextSize = 10
	Description.TextStrokeTransparency = 0.800
	Description.TextTransparency = 0.300
	Description.TextWrapped = true
	Description.TextXAlignment = Enum.TextXAlignment.Left
	Description.TextYAlignment = Enum.TextYAlignment.Top

	UIPadding_2.Parent = Description
	UIPadding_2.PaddingLeft = UDim.new(0, 10)
	UIPadding_2.PaddingTop = UDim.new(0, 5)

	Seperator.Name = "Seperator"
	Seperator.Parent = Main
	Seperator.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Seperator.BackgroundTransparency = 0.500
	Seperator.BorderSizePixel = 0
	Seperator.Position = UDim2.new(0, 0, 0.264150947, 0)
	Seperator.Size = UDim2.new(0, 307, 0, 2)

    wait(settings.Time)

    Main:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), "In","Sine",0.7,true)

    wait(2)

    CoreGui.Notification:Destroy()

	return Main

end

--[[
Notify({
	Title = "Title",
	Description = "Description",
	Time = 3,
	Transparency = 0.4
})
]]--

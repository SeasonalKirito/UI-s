local GUI = {};

function notify(title, description, time, time_before_destroy)

    -- StarterGui.ScreenGui
    GUI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
    GUI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
    
    -- StarterGui.ScreenGui.Main
    GUI["2"] = Instance.new("Frame", GUI["1"]);
    GUI["2"]["BorderSizePixel"] = 0;
    GUI["2"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
    GUI["2"]["Size"] = UDim2.new(0, 348, 0, 126);
    GUI["2"]["Position"] = UDim2.new(1.1, 0, 1, 0);
    GUI["2"]["Name"] = [[Main]];

    GUI["2"]:TweenPosition(UDim2.new(0.5, 500 / 1, 0.5, 650 / 2, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5))
    
    -- StarterGui.ScreenGui.Main.UICorner
    GUI["3"] = Instance.new("UICorner", GUI["2"]);
    
    
    -- StarterGui.ScreenGui.Main.Title
    GUI["4"] = Instance.new("Frame", GUI["2"]);
    GUI["4"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
    GUI["4"]["Size"] = UDim2.new(0, 348, 0, 39);
    GUI["4"]["Name"] = [[Title]];
    
    -- StarterGui.ScreenGui.Main.Title.UICorner
    GUI["5"] = Instance.new("UICorner", GUI["4"]);
    
    
    -- StarterGui.ScreenGui.Main.Title.Title
    GUI["6"] = Instance.new("TextLabel", GUI["4"]);
    GUI["6"]["TextWrapped"] = true;
    GUI["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    GUI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    GUI["6"]["TextSize"] = 20;
    GUI["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    GUI["6"]["Size"] = UDim2.new(0, 348, 0, 39);
    GUI["6"]["Text"] = title;
    GUI["6"]["Name"] = [[Title]];
    GUI["6"]["Font"] = Enum.Font.SourceSansBold;
    GUI["6"]["BackgroundTransparency"] = 1;
    
    -- StarterGui.ScreenGui.Main.Title.Title.UIPadding
    GUI["7"] = Instance.new("UIPadding", GUI["6"]);
    GUI["7"]["PaddingLeft"] = UDim.new(0, 10);
    
    -- StarterGui.ScreenGui.Main.Title.Description
    GUI["8"] = Instance.new("TextLabel", GUI["4"]);
    GUI["8"]["TextWrapped"] = true;
    GUI["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    GUI["8"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    GUI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    GUI["8"]["TextSize"] = 15;
    GUI["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    GUI["8"]["Size"] = UDim2.new(0, 348, 0, 87);
    GUI["8"]["Text"] = description;
    GUI["8"]["Name"] = [[Description]];
    GUI["8"]["Font"] = Enum.Font.SourceSansBold;
    GUI["8"]["BackgroundTransparency"] = 1;
    GUI["8"]["Position"] = UDim2.new(0, 0, 1, 0);
    
    -- StarterGui.ScreenGui.Main.Title.Description.UIPadding
    GUI["9"] = Instance.new("UIPadding", GUI["8"]);
    GUI["9"]["PaddingTop"] = UDim.new(0, 10);
    GUI["9"]["PaddingLeft"] = UDim.new(0, 10);

    wait(time)
    
    
    GUI["2"]:TweenPosition(UDim2.new(0.9, 300 / 1, 0.7, 263 / 1.5, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5))

    wait(time_before_destroy)

    GUI["1"]:Destroy()
    

end
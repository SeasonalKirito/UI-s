local Icy = {};

function notify(title, description, time)

    -- StarterGui.ScreenGui
    Icy["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
    Icy["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    -- StarterGui.ScreenGui.Icy
    Icy["2"] = Instance.new("Frame", Icy["1"]);
    Icy["2"]["BorderSizePixel"] = 0;
    Icy["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
    Icy["2"]["Size"] = UDim2.new(0, 307, 0, 90);
    Icy["2"]["Position"] = UDim2.new(1, 1, 0.905, 0);
    Icy["2"]["Name"] = [[Icy]];

    Icy["2"]:TweenPosition(UDim2.new(0.5, 650 / 1, 0.6, 600 / 2, Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.5))

    -- StarterGui.ScreenGui.Icy.Seperator
    Icy["3"] = Instance.new("Frame", Icy["2"]);
    Icy["3"]["BorderSizePixel"] = 0;
    Icy["3"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
    Icy["3"]["Size"] = UDim2.new(0, 307, 0, 4);
    Icy["3"]["Position"] = UDim2.new(0, 0, 0.32941147685050964, 0);
    Icy["3"]["Name"] = [[Seperator]];

    -- StarterGui.ScreenGui.Icy.UICorner
    Icy["4"] = Instance.new("UICorner", Icy["2"]);
    Icy["4"]["CornerRadius"] = UDim.new(0, 5);

    -- StarterGui.ScreenGui.Icy.Title
    Icy["5"] = Instance.new("TextLabel", Icy["2"]);
    Icy["5"]["TextWrapped"] = true;
    Icy["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    Icy["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    Icy["5"]["TextSize"] = 14;
    Icy["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    Icy["5"]["Size"] = UDim2.new(0, 307, 0, 29);
    Icy["5"]["Text"] = title;
    Icy["5"]["Name"] = [[Title]];
    Icy["5"]["Font"] = Enum.Font.ArialBold;
    Icy["5"]["BackgroundTransparency"] = 1;

    -- StarterGui.ScreenGui.Icy.Title.UIPadding
    Icy["6"] = Instance.new("UIPadding", Icy["5"]);
    Icy["6"]["PaddingTop"] = UDim.new(0, 5);
    Icy["6"]["PaddingLeft"] = UDim.new(0, 5);

    -- StarterGui.ScreenGui.Icy.Description
    Icy["7"] = Instance.new("TextLabel", Icy["2"]);
    Icy["7"]["TextWrapped"] = true;
    Icy["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    Icy["7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    Icy["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    Icy["7"]["TextSize"] = 14;
    Icy["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    Icy["7"]["Size"] = UDim2.new(0, 307, 0, 57);
    Icy["7"]["Text"] = description;
    Icy["7"]["Name"] = [[Description]];
    Icy["7"]["Font"] = Enum.Font.ArialBold;
    Icy["7"]["BackgroundTransparency"] = 1;
    Icy["7"]["Position"] = UDim2.new(0, 0, 0.36666667461395264, 0);

    -- StarterGui.ScreenGui.Icy.Description.UIPadding
    Icy["8"] = Instance.new("UIPadding", Icy["7"]);
    Icy["8"]["PaddingTop"] = UDim.new(0, 5);
    Icy["8"]["PaddingLeft"] = UDim.new(0, 5);

    wait(time)

    Icy["2"]:TweenPosition(UDim2.new(1, 1, 0.905, 0, Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.5))

    wait(time)

    Icy["1"]:Destroy()


    return Icy["1"], require;

end

local MacNotify = {};


function notify(notifySettings)
	icon = notifySettings.icon
	title = notifySettings.title
	description = notifySettings.description
	time = notifySettings.time
	
	
	-- StarterGui.ScreenGui
	MacNotify["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	MacNotify["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

	-- StarterGui.ScreenGui.Main
	MacNotify["2"] = Instance.new("Frame", MacNotify["1"]);
	MacNotify["2"]["BackgroundColor3"] = Color3.fromRGB(26, 25, 34);
	MacNotify["2"]["Size"] = UDim2.new(0, 231, 0, 100);
	MacNotify["2"]["Position"] = UDim2.new(1, 1, 0.04391467943787575, 0);
	MacNotify["2"]["Name"] = [[Main]];
	
	
	MacNotify["2"]:TweenPosition(
		UDim2.new(0.8482933044433594, 0, 0.04391467943787575, 0),
		"Out",
		"Quad",
		".5",
		false
	)
	
	
	-- StarterGui.ScreenGui.Main.UICorner
	MacNotify["3"] = Instance.new("UICorner", MacNotify["2"]);
	


	-- StarterGui.ScreenGui.Main.UIStroke
	MacNotify["4"] = Instance.new("UIStroke", MacNotify["2"]);
	MacNotify["4"]["Color"] = Color3.fromRGB(14, 13, 18);

	-- StarterGui.ScreenGui.Main.Title
	MacNotify["5"] = Instance.new("TextLabel", MacNotify["2"]);
	MacNotify["5"]["TextWrapped"] = true;
	MacNotify["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	MacNotify["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	MacNotify["5"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
	MacNotify["5"]["TextSize"] = 14;
	MacNotify["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	MacNotify["5"]["Size"] = UDim2.new(0, 204, 0, 28);
	MacNotify["5"]["Text"] = title;
	MacNotify["5"]["Name"] = title;
	MacNotify["5"]["Font"] = Enum.Font.SourceSansBold;
	MacNotify["5"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.Main.Title.UIStroke
	MacNotify["6"] = Instance.new("UIStroke", MacNotify["5"]);
	MacNotify["6"]["Color"] = Color3.fromRGB(17, 16, 22);

	-- StarterGui.ScreenGui.Main.Title.UIPadding
	MacNotify["7"] = Instance.new("UIPadding", MacNotify["5"]);
	MacNotify["7"]["PaddingLeft"] = UDim.new(0, 5);

	-- StarterGui.ScreenGui.Main.Description
	MacNotify["8"] = Instance.new("TextLabel", MacNotify["2"]);
	MacNotify["8"]["TextWrapped"] = true;
	MacNotify["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	MacNotify["8"]["TextYAlignment"] = Enum.TextYAlignment.Top;
	MacNotify["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	MacNotify["8"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
	MacNotify["8"]["TextSize"] = 14;
	MacNotify["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	MacNotify["8"]["Size"] = UDim2.new(0, 204, 0, 65);
	MacNotify["8"]["Text"] = description;
	MacNotify["8"]["Name"] = description;
	MacNotify["8"]["Font"] = Enum.Font.SourceSansBold;
	MacNotify["8"]["BackgroundTransparency"] = 1;
	MacNotify["8"]["Position"] = UDim2.new(0, 0, 0.301075279712677, 0);

	-- StarterGui.ScreenGui.Main.Description.UIStroke
	MacNotify["9"] = Instance.new("UIStroke", MacNotify["8"]);
	MacNotify["9"]["Color"] = Color3.fromRGB(17, 16, 22);

	-- StarterGui.ScreenGui.Main.Description.UIPadding
	MacNotify["a"] = Instance.new("UIPadding", MacNotify["8"]);
	MacNotify["a"]["PaddingTop"] = UDim.new(0, 5);
	MacNotify["a"]["PaddingLeft"] = UDim.new(0, 5);

	-- StarterGui.ScreenGui.Main.Seperator
	MacNotify["b"] = Instance.new("Frame", MacNotify["2"]);
	MacNotify["b"]["BorderSizePixel"] = 0;
	MacNotify["b"]["BackgroundColor3"] = Color3.fromRGB(14, 13, 18);
	MacNotify["b"]["Size"] = UDim2.new(0, 231, 0, 1);
	MacNotify["b"]["Position"] = UDim2.new(0, 0, 0.3010752201080322, 0);
	MacNotify["b"]["Name"] = [[Seperator]];

	-- StarterGui.ScreenGui.Main.Icon
	MacNotify["c"] = Instance.new("ImageLabel", MacNotify["2"]);
	MacNotify["c"]["BorderSizePixel"] = 0;
	MacNotify["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	MacNotify["c"]["Image"] = icon; -- [[rbxassetid://7733965386]]
	MacNotify["c"]["Size"] = UDim2.new(0, 20, 0, 22);
	MacNotify["c"]["Name"] = [[Icon]];
	MacNotify["c"]["BackgroundTransparency"] = 1;
	MacNotify["c"]["Position"] = UDim2.new(0.8831169009208679, 0, 0.029999999329447746, 0);
	
	wait(time)
	
	MacNotify["2"]:TweenPosition(
		UDim2.new(1, 1, 0.04391467943787575, 0),
		"Out",
		"Quad",
		".5",
		false
	)
end
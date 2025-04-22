if  not LPH_OBFUSCATED then
	function LPH_JIT_MAX(...)
		return ...;
	end
	function LPH_NO_VIRTUALIZE(...)
		return ...;
	end
	function LPH_NO_UPVALUES(...)
		return ...;
	end
end
spawn(function()
	for v535, v536 in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
		if ((v536.Name == "Death") or (v536.Name == "Spawn")) then
			v536:Destroy();
		end
	end
end)

spawn(function()
	for v537, v538 in pairs(game:GetDescendants()) do
		if (v538:IsA("ParticleEmitter") or v538:IsA("Trail")) then
			v538.Lifetime = NumberRange.new(0);
		elseif v538:IsA("Explosion") then
			v538.BlastPressure = 1;
			v538.BlastRadius = 1;
		elseif (v538:IsA("Fire") or v538:IsA("SpotLight") or v538:IsA("Smoke")) then
			v538.Enabled = false;
		end
	end
end)

_G.Color = Color3.fromRGB(0, 191, 255);
if  not game:IsLoaded() then
	repeat
		game.Loaded:Wait();
	until game:IsLoaded()
end
repeat
	wait();
until game:GetService("Players")
if  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	repeat
		wait();
	until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
end
wait(1);
do
	local v91 = game.CoreGui:FindFirstChild("SOMEXGUI");
	if v91 then
		v91:Destroy();
	end
end
local v0 = game:GetService("UserInputService");
local v1 = game:GetService("TweenService");
local function v2(v92, v93)
	local v94 = nil;
	local v95 = nil;
	local v96 = nil;
	local v97 = nil;
	local function v98(v539)
		local v540 = v539.Position - v96 ;
		local v541 = UDim2.new(v97.X.Scale, v97.X.Offset + v540.X , v97.Y.Scale, v97.Y.Offset + v540.Y );
		local v542 = v1:Create(v93, TweenInfo.new(0.2), {
			Position = v541
		});
		v542:Play();
	end
	v92.InputBegan:Connect(function(v543)
		if ((v543.UserInputType == Enum.UserInputType.MouseButton1) or (v543.UserInputType == Enum.UserInputType.Touch)) then
			v94 = true;
			v96 = v543.Position;
			v97 = v93.Position;
			v543.Changed:Connect(function()
				if (v543.UserInputState == Enum.UserInputState.End) then
					v94 = false;
				end
			end);
		end
	end);
	v92.InputChanged:Connect(function(v544)
		if ((v544.UserInputType == Enum.UserInputType.MouseMovement) or (v544.UserInputType == Enum.UserInputType.Touch)) then
			v95 = v544;
		end
	end);
	v0.InputChanged:Connect(function(v545)
		if ((v545 == v95) and v94) then
			v98(v545);
		end
	end);
end
local v3 = {};
v3.AddWindow = function(v99, v100, v101)
	local v102 = v101 or Enum.KeyCode.RightControl ;
	local v103 = false;
	local v104 = "";
	local v105 = Instance.new("ScreenGui");
	v105.Name = "SOMEXGUI";
	v105.Parent = game.CoreGui;
	v105.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local v111 = Instance.new("Frame");
	v111.Name = "Main";
	v111.Parent = v105;
	v111.AnchorPoint = Vector2.new(0.5, 0.5);
	v111.BackgroundColor3 = Color3.fromRGB(30, 28, 39);
	v111.BackgroundTransparency = 0.1;
	v111.BorderSizePixel = 0;
	v111.ClipsDescendants = true;
	v111.Position = UDim2.new(0.499526083, 0, 0.499241292, 0);
	v111.Size = UDim2.new(0, 600, 0, 350);
	local v121 = Instance.new("Frame");
	v121.Name = "Top";
	v121.Parent = v111;
	v121.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v121.BackgroundTransparency = 1;
	v121.BorderSizePixel = 0;
	v121.Size = UDim2.new(0, 600, 0, 20);
	local v128 = Instance.new("Frame");
	v128.Name = "Page";
	v128.Parent = v111;
	v128.BackgroundColor3 = Color3.fromRGB(25, 23, 35);
	v128.BackgroundTransparency = 0.1;
	v128.BorderSizePixel = 0;
	v128.Size = UDim2.new(0, 125, 0, 350);
	local v135 = Instance.new("TextLabel");
	v135.Name = "NameHub";
	v135.Parent = v128;
	v135.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v135.BackgroundTransparency = 1;
	v135.Position = UDim2.new(0.113333493, 0, 0, 0);
	v135.Size = UDim2.new(0, 110, 0, 20);
	v135.Font = Enum.Font.GothamSemibold;
	v135.Text = v100;
	v135.TextColor3 = Color3.fromRGB(0, 191, 255);
	v135.TextSize = 11;
	v135.TextXAlignment = Enum.TextXAlignment.Left;
	local v149 = Instance.new("Frame");
	v149.Name = "User";
	v149.Parent = v128;
	v149.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v149.BackgroundTransparency = 1;
	v149.Position = UDim2.new(0, 0, 0.8, 30);
	v149.Size = UDim2.new(0, 125, 0, 40);
	local v156 = Instance.new("TextLabel");
	v156.Name = "UserText";
	v156.Parent = v149;
	v156.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v156.BackgroundTransparency = 1;
	v156.Position = UDim2.new(0.354999989, 0, 0, 11);
	v156.Size = UDim2.new(0, 80, 0, 20);
	v156.Font = Enum.Font.Gotham;
	v156.Text = tostring(game.Players.LocalPlayer.Name);
	spawn(function()
		while wait() do
			pcall(function()
				wait(0.1);
				game:GetService("TweenService"):Create(v156, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(0, 191, 255)
				}):Play();
				wait(0.5);
				game:GetService("TweenService"):Create(v156, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(255, 155, 0)
				}):Play();
				wait(0.5);
				game:GetService("TweenService"):Create(v156, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(255, 255, 0)
				}):Play();
				wait(0.5);
				game:GetService("TweenService"):Create(v156, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(0, 255, 0)
				}):Play();
				wait(0.5);
				game:GetService("TweenService"):Create(v156, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(0, 255, 255)
				}):Play();
				wait(0.5);
				game:GetService("TweenService"):Create(v156, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(0, 155, 255)
				}):Play();
				wait(0.5);
				game:GetService("TweenService"):Create(v156, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(255, 0, 255)
				}):Play();
				wait(0.5);
				game:GetService("TweenService"):Create(v156, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(255, 0, 155)
				}):Play();
				wait(0.5);
			end);
		end
	end);
	v156.TextScaled = true;
	v156.TextSize = 11;
	v156.TextWrapped = true;
	v156.TextXAlignment = Enum.TextXAlignment.Left;
	local v170 = Instance.new("UITextSizeConstraint");
	v170.Parent = v156;
	v170.MaxTextSize = 11;
	local v173 = Instance.new("ImageLabel");
	v173.Name = "UserImage";
	v173.Parent = v149;
	v173.BackgroundColor3 = Color3.fromRGB(225, 225, 225);
	v173.Position = UDim2.new(0, 10, 0, 9);
	v173.Size = UDim2.new(0, 25, 0, 25);
	v173.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="   .. game.Players.LocalPlayer.UserId   .. "&width=420&height=420&format=png" ;
	local v180 = Instance.new("UICorner");
	v180.CornerRadius = UDim.new(0, 100);
	v180.Name = "UserImageCorner";
	v180.Parent = v173;
	local v184 = Instance.new("ScrollingFrame");
	v184.Name = "ScrollPage";
	v184.Parent = v128;
	v184.Active = true;
	v184.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v184.BackgroundTransparency = 1;
	v184.BorderSizePixel = 0;
	v184.Position = UDim2.new(0, 0, 0.086, 0);
	v184.Size = UDim2.new(0, 125, 0, 290);
	v184.CanvasSize = UDim2.new(0, 0, 0, 0);
	v184.ScrollBarThickness = 0;
	local v195 = Instance.new("UIListLayout");
	v195.Name = "PageList";
	v195.Parent = v184;
	v195.SortOrder = Enum.SortOrder.LayoutOrder;
	v195.Padding = UDim.new(0, 7);
	local v201 = Instance.new("UIPadding");
	v201.Name = "PagePadding";
	v201.Parent = v184;
	v201.PaddingTop = UDim.new(0, 5);
	v201.PaddingLeft = UDim.new(0, 28);
	local v206 = Instance.new("Folder");
	v206.Name = "TabFolder";
	v206.Parent = v111;
	v2(v121, v111);
	local v209 = false;
	v0.InputBegan:Connect(function(v546)
		if (v546.KeyCode == v102) then
			if (v209 == false) then
				v209 = true;
				v111:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.2, true);
			else
				v209 = false;
				v111:TweenSize(UDim2.new(0, 600, 0, 350), "Out", "Quad", 0.2, true);
			end
		end
	end);
	local v210 = {};
	v210.T = function(v547, v548, v549)
		local v550 = v549 or 6023426915 ;
		local v551 = Instance.new("TextButton");
		v551.Name = "PageButton";
		v551.Parent = v184;
		v551.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v551.BackgroundTransparency = 1;
		v551.BorderSizePixel = 0;
		v551.Position = UDim2.new(0.224000007, 0, 0.029787235, 0);
		v551.Size = UDim2.new(0, 97, 0, 20);
		v551.AutoButtonColor = false;
		v551.Font = Enum.Font.GothamSemibold;
		v551.Text = v548;
		v551.TextColor3 = Color3.fromRGB(225, 225, 225);
		v551.TextSize = 11;
		v551.TextXAlignment = Enum.TextXAlignment.Left;
		local v567 = Instance.new("ImageLabel");
		v567.Name = "PageImage";
		v567.Parent = v551;
		v567.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v567.BackgroundTransparency = 1;
		v567.Position = UDim2.new(0, -20, 0, 3);
		v567.Size = UDim2.new(0, 15, 0, 15);
		v567.Image = "rbxassetid://"   .. tostring(v550) ;
		local v575 = Instance.new("Frame");
		v575.Name = "MainTab";
		v575.Parent = v206;
		v575.BackgroundColor3 = Color3.fromRGB(30, 28, 39);
		v575.BorderSizePixel = 0;
		v575.Position = UDim2.new(0.208333328, 0, 0, 0);
		v575.Size = UDim2.new(0, 475, 0, 350);
		v575.Visible = false;
		local v583 = Instance.new("ScrollingFrame");
		v583.Name = "ScrollTab";
		v583.Parent = v575;
		v583.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		v583.BackgroundTransparency = 1;
		v583.BorderSizePixel = 0;
		v583.Position = UDim2.new(0, 0, 0.057, 0);
		v583.Size = UDim2.new(0, 475, 0, 330);
		v583.CanvasSize = UDim2.new(0, 0, 0, 0);
		v583.ScrollBarThickness = 3;
		local v593 = Instance.new("UIListLayout");
		v593.Name = "TabList";
		v593.Parent = v583;
		v593.SortOrder = Enum.SortOrder.LayoutOrder;
		v593.Padding = UDim.new(0, 5);
		local v599 = Instance.new("UIPadding");
		v599.Name = "TabPadding";
		v599.Parent = v583;
		v599.PaddingLeft = UDim.new(0, 10);
		v599.PaddingTop = UDim.new(0, 10);
		v551.MouseButton1Click:Connect(function()
			v104 = v575.Name;
			for v1232, v1233 in next, v206:GetChildren() do
				if (v1233.Name == "MainTab") then
					v1233.Visible = false;
				end
			end
			v575.Visible = true;
			for v1234, v1235 in next, v184:GetChildren() do
				if v1235:IsA("TextButton") then
					v1:Create(v1235, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextColor3 = Color3.fromRGB(225, 225, 225)
					}):Play();
				end
				v1:Create(v551, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextColor3 = Color3.fromRGB(0, 191, 255)
				}):Play();
			end
		end);
		if (v103 == false) then
			v1:Create(v551, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				TextColor3 = Color3.fromRGB(0, 191, 255)
			}):Play();
			for v1338, v1339 in next, v206:GetChildren() do
				if (v1339.Name == "MainTab") then
					v1339.Visible = false;
				end
				v575.Visible = true;
			end
			v103 = true;
		end
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				v184.CanvasSize = UDim2.new(0, 0, 0, v195.AbsoluteContentSize.Y + 10 );
				v583.CanvasSize = UDim2.new(0, 0, 0, v593.AbsoluteContentSize.Y + 30 );
			end);
		end);
		local v604 = {};
		v604.Button = function(v799, v800, v801)
			local v802 = Instance.new("TextButton");
			v802.Name = "Button";
			v802.Parent = v583;
			v802.BackgroundColor3 = Color3.fromRGB(50, 48, 59);
			v802.BackgroundTransparency = 0.1;
			v802.BorderSizePixel = 0;
			v802.Size = UDim2.new(0, 455, 0, 30);
			v802.AutoButtonColor = false;
			v802.Font = Enum.Font.Gotham;
			v802.Text = v800;
			v802.TextColor3 = Color3.fromRGB(225, 225, 225);
			v802.TextSize = 11;
			v802.TextWrapped = true;
			local v816 = Instance.new("UICorner");
			v816.Name = "ButtonCorner";
			v816.CornerRadius = UDim.new(0, 5);
			v816.Parent = v802;
			v802.MouseEnter:Connect(function()
				v1:Create(v802, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextColor3 = Color3.fromRGB(0, 191, 255)
				}):Play();
			end);
			v802.MouseLeave:Connect(function()
				v1:Create(v802, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextColor3 = Color3.fromRGB(225, 225, 225)
				}):Play();
			end);
			v802.MouseButton1Click:Connect(function()
				v801();
				v802.TextSize = 0;
				v1:Create(v802, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
					TextSize = 11
				}):Play();
			end);
		end;
		v604.Toggle = function(v820, v821, v822, v823)
			local v824 = Instance.new("Frame");
			local v825 = Instance.new("TextButton");
			v825.Name = "Toggle";
			v825.Parent = v583;
			v825.BackgroundColor3 = Color3.fromRGB(50, 48, 59);
			v825.BackgroundTransparency = 0.1;
			v825.BorderSizePixel = 0;
			v825.AutoButtonColor = false;
			v825.Size = UDim2.new(0, 455, 0, 30);
			v825.Font = Enum.Font.SourceSans;
			v825.Text = "";
			v825.TextColor3 = Color3.fromRGB(0, 0, 0);
			v825.TextSize = 14;
			local v838 = Instance.new("UICorner");
			v838.Name = "ToggleCorner";
			v838.CornerRadius = UDim.new(0, 5);
			v838.Parent = v825;
			local v842 = Instance.new("TextLabel");
			v842.Name = "ToggleLabel";
			v842.Parent = v825;
			v842.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v842.BackgroundTransparency = 1;
			v842.Position = UDim2.new(0, 13, 0, 0);
			v842.Size = UDim2.new(0, 410, 0, 30);
			v842.Font = Enum.Font.Gotham;
			v842.Text = v821;
			v842.TextColor3 = Color3.fromRGB(225, 225, 225);
			v842.TextSize = 11;
			v842.TextXAlignment = Enum.TextXAlignment.Left;
			v824.Name = "ToggleImage";
			v824.Parent = v825;
			v824.BackgroundColor3 = Color3.fromRGB(70, 68, 79);
			v824.Position = UDim2.new(0, 425, 0, 5);
			v824.BorderSizePixel = 0;
			v824.Size = UDim2.new(0, 20, 0, 20);
			local v862 = Instance.new("UICorner");
			v862.Name = "ToggleImageCorner";
			v862.CornerRadius = UDim.new(0, 5);
			v862.Parent = v824;
			local v866 = Instance.new("Frame");
			v866.Name = "ToggleImage2";
			v866.Parent = v824;
			v866.AnchorPoint = Vector2.new(0.5, 0.5);
			v866.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v866.Position = UDim2.new(0, 10, 0, 10);
			v866.Visible = false;
			local v873 = Instance.new("UICorner");
			v873.Name = "ToggleImageCorner";
			v873.CornerRadius = UDim.new(0, 5);
			v873.Parent = v866;
			v825.MouseEnter:Connect(function()
				v1:Create(v842, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextColor3 = Color3.fromRGB(0, 191, 255)
				}):Play();
			end);
			v825.MouseLeave:Connect(function()
				v1:Create(v842, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextColor3 = Color3.fromRGB(225, 225, 225)
				}):Play();
			end);
			if (v822 == nil) then
				v822 = false;
			end
			local v877 = v822 or false ;
			v825.MouseButton1Click:Connect(function()
				if (v877 == false) then
					v877 = true;
					v866.Visible = true;
					v866:TweenSize(UDim2.new(0, 21, 0, 21), "In", "Quad", 0.1, true);
				else
					v877 = false;
					v866:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.1, true);
					wait(0.1);
					v866.Visible = false;
				end
				v823(v877);
			end);
			if (v822 == true) then
				v866.Visible = true;
				v866:TweenSize(UDim2.new(0, 21, 0, 21), "In", "Quad", 0.1, true);
				v877 = true;
				v823(v877);
			end
		end;
		v604.Textbox = function(v878, v879, v880, v881, v882)
			local v883 = Instance.new("Frame");
			local v884 = Instance.new("UICorner");
			local v885 = Instance.new("TextLabel");
			local v886 = Instance.new("TextBox");
			local v887 = Instance.new("UICorner");
			v883.Name = "Textboxx";
			v883.Parent = v583;
			v883.BackgroundColor3 = Color3.fromRGB(50, 48, 59);
			v883.Size = UDim2.new(0, 455, 0, 30);
			v884.CornerRadius = UDim.new(0, 5);
			v884.Name = "TextboxxCorner";
			v884.Parent = v883;
			v885.Name = "TextboxTitle";
			v885.Parent = v883;
			v885.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v885.BackgroundTransparency = 1;
			v885.Position = UDim2.new(0, 15, 0, 0);
			v885.Size = UDim2.new(0, 300, 0, 30);
			v885.Font = Enum.Font.Gotham;
			v885.Text = v879;
			v885.TextColor3 = Color3.fromRGB(225, 225, 225);
			v885.TextSize = 11;
			v885.TextXAlignment = Enum.TextXAlignment.Left;
			v886.Name = "Textbox";
			v886.Parent = v883;
			v886.BackgroundColor3 = Color3.fromRGB(30, 28, 39);
			v886.Position = UDim2.new(0, 310, 0, 5);
			v886.Size = UDim2.new(0, 140, 0, 20);
			v886.Font = Enum.Font.Gotham;
			v886.Text = v880;
			v886.TextColor3 = Color3.fromRGB(225, 225, 225);
			v886.TextSize = 11;
			v886.FocusLost:Connect(function()
				if ( #v886.Text > 0) then
					v882(v886.Text);
				end
				if v881 then
					v886.Text = "";
				else
					v886.Text = v880;
				end
			end);
			v887.Name = "TextboxCorner";
			v887.CornerRadius = UDim.new(0, 5);
			v887.Parent = v886;
		end;
		v604.Dropdown = function(v920, v921, v922, v923)
			local v924 = Instance.new("Frame");
			local v925 = Instance.new("UICorner");
			local v926 = Instance.new("TextButton");
			local v927 = Instance.new("TextLabel");
			local v928 = Instance.new("ScrollingFrame");
			local v929 = Instance.new("UIListLayout");
			local v930 = Instance.new("UIPadding");
			local v931 = Instance.new("ImageLabel");
			v924.Name = "Dropdown";
			v924.Parent = v583;
			v924.Active = true;
			v924.BackgroundColor3 = Color3.fromRGB(50, 48, 59);
			v924.ClipsDescendants = true;
			v924.Size = UDim2.new(0, 455, 0, 30);
			v925.CornerRadius = UDim.new(0, 5);
			v925.Parent = v924;
			v926.Name = "DropButton";
			v926.Parent = v924;
			v926.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v926.BackgroundTransparency = 1;
			v926.Size = UDim2.new(0, 455, 0, 30);
			v926.Font = Enum.Font.SourceSans;
			v926.Text = "";
			v926.TextColor3 = Color3.fromRGB(0, 0, 0);
			v926.TextSize = 14;
			v927.Name = "Droptitle";
			v927.Parent = v924;
			v927.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v927.BackgroundTransparency = 1;
			v927.Position = UDim2.new(0.0281690136, 0, 0, 0);
			v927.Size = UDim2.new(0, 410, 0, 30);
			v927.Font = Enum.Font.Gotham;
			v927.Text = v921   .. " : " ;
			v927.TextColor3 = Color3.fromRGB(225, 225, 225);
			v927.TextSize = 11;
			v927.TextXAlignment = Enum.TextXAlignment.Left;
			v931.Name = "DropImage";
			v931.Parent = v924;
			v931.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v931.BackgroundTransparency = 1;
			v931.Position = UDim2.new(0, 425, 0, 5);
			v931.Rotation = 0;
			v931.Size = UDim2.new(0, 20, 0, 20);
			v931.Image = "rbxassetid://5012539403";
			v928.Name = "DropScroll";
			v928.Parent = v927;
			v928.Active = true;
			v928.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v928.BackgroundTransparency = 1;
			v928.BorderSizePixel = 0;
			v928.Position = UDim2.new( -0.0317460336, 0, 1, 0);
			v928.Size = UDim2.new(0, 455, 0, 70);
			v928.CanvasSize = UDim2.new(0, 0, 0, 2);
			v928.ScrollBarThickness = 2;
			v929.Name = "DropdownList";
			v929.Parent = v928;
			v929.SortOrder = Enum.SortOrder.LayoutOrder;
			v929.Padding = UDim.new(0, 5);
			v930.Name = "DropdownPadding";
			v930.Parent = v928;
			v930.PaddingTop = UDim.new(0, 5);
			local v989 = false;
			for v1239, v1240 in next, v922 do
				local v1241 = Instance.new("TextButton");
				v1241.Name = "DropButton2";
				v1241.Parent = v928;
				v1241.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				v1241.BackgroundTransparency = 1;
				v1241.Size = UDim2.new(0, 455, 0, 30);
				v1241.AutoButtonColor = false;
				v1241.Font = Enum.Font.Gotham;
				v1241.TextColor3 = Color3.fromRGB(225, 225, 225);
				v1241.TextSize = 11;
				v1241.Text = tostring(v1240);
				v1241.MouseEnter:Connect(function()
					v1:Create(v1241, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextColor3 = Color3.fromRGB(0, 191, 255)
					}):Play();
				end);
				v1241.MouseLeave:Connect(function()
					v1:Create(v1241, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextColor3 = Color3.fromRGB(225, 225, 225)
					}):Play();
				end);
				v1241.MouseButton1Click:Connect(function()
					v1:Create(v924, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = UDim2.new(0, 455, 0, 30)
					}):Play();
					v1:Create(v931, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
					v927.Text = v921   .. " : "   .. tostring(v1240) ;
					v923(v1240);
					v989 = not v989;
					v928.CanvasSize = UDim2.new(0, 0, 0, v929.AbsoluteContentSize.Y + 10 );
				end);
			end
			v926.MouseButton1Click:Connect(function()
				if (v989 == false) then
					v989 = true;
					v1:Create(v924, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = UDim2.new(0, 455, 0, 100)
					}):Play();
					v1:Create(v931, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = -180
					}):Play();
					v928.CanvasSize = UDim2.new(0, 0, 0, v929.AbsoluteContentSize.Y + 10 );
				else
					v989 = false;
					v1:Create(v924, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = UDim2.new(0, 455, 0, 30)
					}):Play();
					v1:Create(v931, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
					v928.CanvasSize = UDim2.new(0, 0, 0, v929.AbsoluteContentSize.Y + 10 );
				end
			end);
			v928.CanvasSize = UDim2.new(0, 0, 0, v929.AbsoluteContentSize.Y + 10 );
			local v990 = {};
			v990.Clear = function(v1253)
				v927.Text = tostring(v921)   .. " :" ;
				v1:Create(v924, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Size = UDim2.new(0, 455, 0, 30)
				}):Play();
				v989 = false;
				for v1344, v1345 in next, v928:GetChildren() do
					if v1345:IsA("TextButton") then
						v1345:Destroy();
					end
				end
			end;
			v990.Add = function(v1255, v1256)
				local v1257 = Instance.new("TextButton");
				v1257.Name = "DropButton2";
				v1257.Parent = v928;
				v1257.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				v1257.BackgroundTransparency = 1;
				v1257.Size = UDim2.new(0, 455, 0, 30);
				v1257.AutoButtonColor = false;
				v1257.Font = Enum.Font.Gotham;
				v1257.TextColor3 = Color3.fromRGB(225, 225, 225);
				v1257.TextSize = 11;
				v1257.Text = tostring(v1256);
				v1257.MouseButton1Click:Connect(function()
					v1:Create(v924, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = UDim2.new(0, 455, 0, 30)
					}):Play();
					v1:Create(v931, TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
					v927.Text = v921   .. " : "   .. tostring(v1256) ;
					v923(v1256);
					v989 = not v989;
					v928.CanvasSize = UDim2.new(0, 0, 0, v929.AbsoluteContentSize.Y + 10 );
				end);
			end;
			return v990;
		end;
		v604.Slider = function(v993, v994, v995, v996, v997, v998)
			v997 = (math.clamp(v997, v995, v996));
			if (v997 > v996) then
				v997 = v996;
			end
			local v999 = Instance.new("Frame");
			local v1000 = Instance.new("UICorner");
			local v1001 = Instance.new("TextLabel");
			local v1002 = Instance.new("TextLabel");
			local v1003 = Instance.new("TextButton");
			local v1004 = Instance.new("Frame");
			local v1005 = Instance.new("Frame");
			local v1006 = Instance.new("UICorner");
			local v1007 = Instance.new("Frame");
			local v1008 = Instance.new("UICorner");
			local v1009 = Instance.new("UICorner");
			v999.Name = "Slider";
			v999.Parent = v583;
			v999.BackgroundColor3 = Color3.fromRGB(50, 48, 59);
			v999.Size = UDim2.new(0, 455, 0, 40);
			v1000.CornerRadius = UDim.new(0, 5);
			v1000.Parent = v999;
			v1001.Name = "SliderTitle";
			v1001.Parent = v999;
			v1001.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1001.BackgroundTransparency = 1;
			v1001.Position = UDim2.new(0.0283286124, 0, 0, 0);
			v1001.Size = UDim2.new(0, 290, 0, 20);
			v1001.Font = Enum.Font.Gotham;
			v1001.Text = v994;
			v1001.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1001.TextSize = 11;
			v1001.TextXAlignment = Enum.TextXAlignment.Left;
			v1002.Name = "SliderValue";
			v1002.Parent = v999;
			v1002.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1002.BackgroundTransparency = 1;
			v1002.Position = UDim2.new(0.887778878, 0, 0, 0);
			v1002.Size = UDim2.new(0, 40, 0, 20);
			v1002.Font = Enum.Font.Gotham;
			v1002.Text = tostring((v997 and math.floor(((v997 / v996) * (v996 - v995)) + v995 )) or 0 );
			v1002.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1002.TextSize = 11;
			v1003.Name = "SliderButton";
			v1003.Parent = v999;
			v1003.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1003.BackgroundTransparency = 1;
			v1003.Position = UDim2.new(0, 10, 0, 25);
			v1003.Size = UDim2.new(0, 435, 0, 5);
			v1003.AutoButtonColor = false;
			v1003.Font = Enum.Font.SourceSans;
			v1003.Text = "";
			v1003.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1003.TextSize = 14;
			v1004.Name = "Bar1";
			v1004.Parent = v1003;
			v1004.BackgroundColor3 = Color3.fromRGB(30, 28, 39);
			v1004.Size = UDim2.new(0, 435, 0, 5);
			v1005.Name = "Bar";
			v1005.Parent = v1004;
			v1005.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1005.Size = UDim2.new(v997 / v996 , 0, 0, 5);
			v1006.CornerRadius = UDim.new(0, 100);
			v1006.Parent = v1005;
			v1007.Name = "CircleBar";
			v1007.Parent = v1005;
			v1007.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1007.Position = UDim2.new(1, -2, 0, -2);
			v1007.AnchorPoint = Vector2.new(0, 0.1);
			v1007.Size = UDim2.new(0, 10, 0, 10);
			v1008.CornerRadius = UDim.new(0, 100);
			v1008.Parent = v1007;
			v1009.CornerRadius = UDim.new(0, 100);
			v1009.Parent = v1004;
			local v1071 = game.Players.LocalPlayer:GetMouse();
			local v1072 = game:GetService("UserInputService");
			if (Value == nil) then
				Value = v997;
				pcall(function()
					v998(Value);
				end);
			end
			v1003.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(v996) - tonumber(v995)) / 435) * v1005.AbsoluteSize.X) + tonumber(v995) ) or 0 ;
				pcall(function()
					v998(Value);
				end);
				v1005.Size = UDim2.new(0, math.clamp(v1071.X - v1005.AbsolutePosition.X , 0, 435), 0, 5);
				v1007.Position = UDim2.new(0, math.clamp((v1071.X - v1005.AbsolutePosition.X) - 2 , 0, 425), 0, -2);
				moveconnection = v1071.Move:Connect(function()
					v1002.Text = Value;
					Value = math.floor((((tonumber(v996) - tonumber(v995)) / 435) * v1005.AbsoluteSize.X) + tonumber(v995) );
					pcall(function()
						v998(Value);
					end);
					v1005.Size = UDim2.new(0, math.clamp(v1071.X - v1005.AbsolutePosition.X , 0, 435), 0, 5);
					v1007.Position = UDim2.new(0, math.clamp((v1071.X - v1005.AbsolutePosition.X) - 2 , 0, 425), 0, -2);
				end);
				releaseconnection = v1072.InputEnded:Connect(function(v1351)
					if (v1351.UserInputType == Enum.UserInputType.MouseButton1) then
						Value = math.floor((((tonumber(v996) - tonumber(v995)) / 435) * v1005.AbsoluteSize.X) + tonumber(v995) );
						pcall(function()
							v998(Value);
						end);
						v1005.Size = UDim2.new(0, math.clamp(v1071.X - v1005.AbsolutePosition.X , 0, 435), 0, 5);
						v1007.Position = UDim2.new(0, math.clamp((v1071.X - v1005.AbsolutePosition.X) - 2 , 0, 425), 0, -2);
						moveconnection:Disconnect();
						releaseconnection:Disconnect();
					end
				end);
			end);
			releaseconnection = v1072.InputEnded:Connect(function(v1271)
				if (v1271.UserInputType == Enum.UserInputType.MouseButton1) then
					Value = math.floor((((tonumber(v996) - tonumber(v995)) / 435) * v1005.AbsoluteSize.X) + tonumber(v995) );
					v1002.Text = Value;
				end
			end);
		end;
		v604.Seperator = function(v1073, v1074)
			local v1075 = Instance.new("Frame");
			local v1076 = Instance.new("Frame");
			local v1077 = Instance.new("TextLabel");
			local v1078 = Instance.new("Frame");
			v1075.Name = "Seperator";
			v1075.Parent = v583;
			v1075.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1075.BackgroundTransparency = 1;
			v1075.ClipsDescendants = true;
			v1075.Size = UDim2.new(0, 455, 0, 20);
			v1076.Name = "Sep1";
			v1076.Parent = v1075;
			v1076.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1076.BorderSizePixel = 0;
			v1076.Position = UDim2.new(0, 0, 0, 10);
			v1076.Size = UDim2.new(0, 150, 0, 1);
			v1077.Name = "SepLabel";
			v1077.Parent = v1075;
			v1077.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1077.BackgroundTransparency = 1;
			v1077.Position = UDim2.new(0, 95, 0, 0);
			v1077.Size = UDim2.new(0, 255, 0, 20);
			v1077.Font = Enum.Font.Gotham;
			v1077.Text = v1074;
			v1077.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1077.TextSize = 11;
			v1078.Name = "Sep2";
			v1078.Parent = v1075;
			v1078.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1078.BorderSizePixel = 0;
			v1078.Position = UDim2.new(0, 305, 0, 10);
			v1078.Size = UDim2.new(0, 150, 0, 1);
		end;
		v604.Line = function(v1108)
			local v1109 = Instance.new("Frame");
			local v1110 = Instance.new("Frame");
			v1109.Name = "Line";
			v1109.Parent = v583;
			v1109.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1109.BackgroundTransparency = 1;
			v1109.ClipsDescendants = true;
			v1109.Size = UDim2.new(0, 455, 0, 20);
			v1110.Name = "Linee";
			v1110.Parent = v1109;
			v1110.BackgroundColor3 = Color3.fromRGB(0, 191, 255);
			v1110.BorderSizePixel = 0;
			v1110.Position = UDim2.new(0, 0, 0, 10);
			v1110.Size = UDim2.new(0, 455, 0, 1);
		end;
		v604.Label = function(v1123, v1124)
			local v1125 = Instance.new("TextLabel");
			local v1126 = Instance.new("UIPadding");
			local v1127 = {};
			v1125.Name = "Label";
			v1125.Parent = v583;
			v1125.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v1125.BackgroundTransparency = 1;
			v1125.Size = UDim2.new(0, 455, 0, 20);
			v1125.Font = Enum.Font.Gotham;
			v1125.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1125.TextSize = 11;
			v1125.Text = v1124;
			v1125.TextXAlignment = Enum.TextXAlignment.Left;
			v1126.PaddingLeft = UDim.new(0, 10);
			v1126.Parent = v1125;
			v1126.Name = "PaddingLabel";
			v1127.Set = function(v1272, v1273)
				v1125.Text = v1273;
			end;
			return v1127;
		end;
		return v604;
	end;
	return v210;
end;
local v5 = Instance.new("ScreenGui");
local v6 = Instance.new("ImageButton");
local v7 = Instance.new("UICorner");
v5.Name = "ToggleUI";
v5.Parent = game.CoreGui;
v5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v6.Name = "ToggleButton";
v6.Parent = v5;
v6.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v6.BorderSizePixel = 0;
v6.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0);
v6.Size = UDim2.new(0, 53.5, 0, 53.5);
v6.BackgroundTransparency = 1;
v6.Image = "rbxassetid://133662246764578";
v6.Draggable = true;
v6.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, 305, false, game);
	game:GetService("VirtualInputManager"):SendKeyEvent(false, 305, false, game);
end);
v7.CornerRadius = UDim.new(0, 10);
v7.Parent = v6;
if (game.PlaceId == 2753915549) then
	World1 = true;
elseif (game.PlaceId == 4442272183) then
	World2 = true;
elseif (game.PlaceId == 7449423635) then
	World3 = true;
end
function CheckQuest()
	MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value;
	if World1 then
		if ((MyLevel == 1) or (MyLevel <= 9)) then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059, 17, 1546);
			CFrameMon = CFrame.new(943, 45, 1562);
		elseif ((MyLevel == 10) or (MyLevel <= 14)) then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new( -1598, 37, 153);
			CFrameMon = CFrame.new( -1524, 50, 37);
		elseif ((MyLevel == 15) or (MyLevel <= 29)) then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new( -1598, 37, 153);
			CFrameMon = CFrame.new( -1128, 40, -451);
		elseif ((MyLevel == 30) or (MyLevel <= 39)) then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new( -1140, 4, 3829);
			CFrameMon = CFrame.new( -1262, 40, 3905);
		elseif ((MyLevel == 40) or (MyLevel <= 59)) then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new( -1140, 4, 3829);
			CFrameMon = CFrame.new( -976, 55, 4304);
		elseif ((MyLevel == 60) or (MyLevel <= 74)) then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(897, 6, 4389);
			CFrameMon = CFrame.new(924, 7, 4482);
		elseif ((MyLevel == 75) or (MyLevel <= 89)) then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(897, 6, 4389);
			CFrameMon = CFrame.new(1608, 9, 4371);
		elseif ((MyLevel == 90) or (MyLevel <= 99)) then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1385, 87, -1298);
			CFrameMon = CFrame.new(1362, 120, -1531);
		elseif ((MyLevel == 100) or (MyLevel <= 119)) then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1385, 87, -1298);
			CFrameMon = CFrame.new(1243, 140, -1437);
		elseif ((MyLevel == 120) or (MyLevel <= 149)) then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new( -5035, 29, 4326);
			CFrameMon = CFrame.new( -4881, 23, 4274);
		elseif ((MyLevel == 150) or (MyLevel <= 174)) then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new( -4844, 718, -2621);
			CFrameMon = CFrame.new( -4953, 296, -2899);
		elseif ((MyLevel == 175) or (MyLevel <= 189)) then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new( -4844, 718, -2621);
			CFrameMon = CFrame.new( -5260, 391, -2229);
		elseif ((MyLevel == 190) or (MyLevel <= 209)) then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5306, 2, 477);
			CFrameMon = CFrame.new(5099, "-0", 474);
		elseif ((MyLevel == 210) or (MyLevel <= 249)) then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5306, 2, 477);
			CFrameMon = CFrame.new(5655, 16, 866);
		elseif ((MyLevel == 250) or (MyLevel <= 274)) then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new( -1581, 7, -2982);
			CFrameMon = CFrame.new( -1820, 51, -2741);
		elseif ((MyLevel == 275) or (MyLevel <= 299)) then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new( -1581, 7, -2982);
			CFrameMon = CFrame.new( -1268, 30, -2996);
		elseif ((MyLevel == 300) or (MyLevel <= 324)) then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new( -5319, 12, 8515);
			CFrameMon = CFrame.new( -5335, 46, 8638);
		elseif ((MyLevel == 325) or (MyLevel <= 374)) then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new( -5319, 12, 8515);
			CFrameMon = CFrame.new( -5803, 86, 8829);
		elseif ((MyLevel == 375) or (MyLevel <= 399)) then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122, 18, 1567);
			CFrameMon = CFrame.new(60998, 50, 1534);
		elseif ((MyLevel == 400) or (MyLevel <= 449)) then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122, 18, 1567);
			CFrameMon = CFrame.new(61866, 55, 1655);
		elseif ((MyLevel == 450) or (MyLevel <= 474)) then
			Mon = "God's Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God's Guard";
			CFrameQuest = CFrame.new( -4720, 846, -1951);
			CFrameMon = CFrame.new( -4720, 846, -1951);
		elseif ((MyLevel == 475) or (MyLevel <= 524)) then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new( -7861, 5545, -381);
			CFrameMon = CFrame.new( -7741, 5580, -395);
		elseif ((MyLevel == 525) or (MyLevel <= 549)) then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new( -7903, 5636, -1412);
			CFrameMon = CFrame.new( -7727, 5650, -1410);
		elseif ((MyLevel == 550) or (MyLevel <= 624)) then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new( -7903, 5636, -1412);
			CFrameMon = CFrame.new( -7894, 5640, -1629);
		elseif ((MyLevel == 625) or (MyLevel <= 649)) then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5258, 39, 4052);
			CFrameMon = CFrame.new(5391, 70, 4023);
		elseif (MyLevel >= 650) then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5258, 39, 4052);
			CFrameMon = CFrame.new(5985, 70, 4790);
		end
	elseif World2 then
		if ((MyLevel == 700) or (MyLevel <= 724)) then
			Mon = "Raider";
			LevelQuest = 1;
			NameQuest = "Area1Quest";
			NameMon = "Raider";
			CFrameQuest = CFrame.new( -427, 73, 1835);
			CFrameMon = CFrame.new( -614, 90, 2240);
		elseif ((MyLevel == 725) or (MyLevel <= 774)) then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new( -427, 73, 1835);
			CFrameMon = CFrame.new( -867, 110, 1621);
		elseif ((MyLevel == 775) or (MyLevel <= 874)) then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(635, 73, 919);
			CFrameMon = CFrame.new(635, 73, 919);
		elseif ((MyLevel == 875) or (MyLevel <= 899)) then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new( -2441, 73, -3219);
			CFrameMon = CFrame.new( -2552, 110, -3050);
		elseif ((MyLevel == 900) or (MyLevel <= 949)) then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new( -2441, 73, -3219);
			CFrameMon = CFrame.new( -1695, 110, -3299);
		elseif ((MyLevel == 950) or (MyLevel <= 974)) then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new( -5495, 48, -794);
			CFrameMon = CFrame.new( -5715, 90, -917);
		elseif ((MyLevel == 975) or (MyLevel <= 999)) then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new( -5495, 48, -794);
			CFrameMon = CFrame.new( -6027, 50, -1130);
		elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(607, 401, -5371);
			CFrameMon = CFrame.new(445, 440, -5175);
		elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(607, 401, -5371);
			CFrameMon = CFrame.new(1224, 460, -5332);
		elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new( -6061, 16, -4904);
			CFrameMon = CFrame.new( -5941, 50, -4322);
		elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new( -6061, 16, -4904);
			CFrameMon = CFrame.new( -6306, 50, -5752);
		elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new( -5430, 16, -5298);
			CFrameMon = CFrame.new( -5233, 60, -6227);
		elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new( -5430, 16, -5298);
			CFrameMon = CFrame.new( -4955, 60, -4836);
		elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1033, 125, 32909);
			CFrameMon = CFrame.new(1033, 125, 32909);
		elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1033, 125, 32909);
			CFrameMon = CFrame.new(809, 80, 33090);
		elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(973, 125, 33245);
			CFrameMon = CFrame.new(838, 160, 33408);
		elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(973, 125, 33245);
			CFrameMon = CFrame.new(1238, 220, 33148);
		elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5668, 28, -6484);
			CFrameMon = CFrame.new(5836, 80, -6257);
		elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5668, 28, -6484);
			CFrameMon = CFrame.new(5700, 80, -6724);
		elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new( -3056, 240, -10145);
			CFrameMon = CFrame.new( -2583, 80, -9821);
		elseif (MyLevel >= 1450) then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new( -3056, 240, -10145);
			CFrameMon = CFrame.new( -3339, 290, -10412);
		end
	elseif World3 then
		if ((MyLevel == 1500) or (MyLevel <= 1524)) then
			Mon = "Pirate Millionaire";
			LevelQuest = 1;
			NameQuest = "PiratePortQuest";
			NameMon = "Pirate Millionaire";
			CFrameQuest = CFrame.new( -291, 44, 5580);
			CFrameMon = CFrame.new( -44, 70, 5623);
		elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new( -291, 44, 5580);
			CFrameMon = CFrame.new(219, 105, 6018);
		elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "AmazonQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(5834, 51, -1103);
			CFrameMon = CFrame.new(5992, 90, -1581);
		elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
			Mon = "Dragon Crew Archer";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(5834, 51, -1103);
			CFrameMon = CFrame.new(6472, 370, -151);
		elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
			Mon = "Female Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female Islander";
			CFrameQuest = CFrame.new(5448, 602, 748);
			CFrameMon = CFrame.new(4836, 740, 928);
		elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
			Mon = "Giant Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islander";
			CFrameQuest = CFrame.new(5448, 602, 748);
			CFrameMon = CFrame.new(4784, 660, 155);
		elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180, 29, -6738);
			CFrameMon = CFrame.new(3156, 120, -7837);
		elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
			Mon = "Marine Rear Admiral";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2180, 29, -6738);
			CFrameMon = CFrame.new(3205, 120, -6742);
		elseif ((MyLevel == 1775) or (MyLevel <= 1799)) then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new( -10581, 332, -8758);
			CFrameMon = CFrame.new( -10550, 380, -8574);
		elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new( -10581, 332, -8758);
			CFrameMon = CFrame.new( -10764, 380, -8799);
		elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new( -13233, 332, -7626);
			CFrameMon = CFrame.new( -13335, 380, -7660);
		elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new( -13233, 332, -7626);
			CFrameMon = CFrame.new( -13844, 520, -7016);
		elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new( -12682, 391, -9901);
			CFrameMon = CFrame.new( -12166, 380, -10375);
		elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new( -12682, 391, -9901);
			CFrameMon = CFrame.new( -13098, 450, -9831);
		elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new( -9481, 142, 5565);
			CFrameMon = CFrame.new( -8680, 190, 5852);
		elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new( -9481, 142, 5565);
			CFrameMon = CFrame.new( -10144, 140, 5932);
		elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new( -9515, 172, 607);
			CFrameMon = CFrame.new( -9275, 210, 6166);
		elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new( -9515, 172, 607);
			CFrameMon = CFrame.new( -9442, 60, 6304);
		elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new( -2104, 38, -10194);
			CFrameMon = CFrame.new( -1870, 100, -10225);
		elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new( -2104, 38, -10194);
			CFrameMon = CFrame.new( -2005, 100, -10585);
		elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new( -818, 66, -10964);
			CFrameMon = CFrame.new( -501, 100, -10883);
		elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new( -818, 66, -10964);
			CFrameMon = CFrame.new( -690, 100, -11350);
		elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest1";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new( -2023, 38, -12028);
			CFrameMon = CFrame.new( -2332, 90, -12049);
		elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest1";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new( -2023, 38, -12028);
			CFrameMon = CFrame.new( -1514, 90, -12422);
		elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new( -1931, 38, -12840);
			CFrameMon = CFrame.new( -1930, 90, -12963);
		elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new( -1931, 38, -12840);
			CFrameMon = CFrame.new( -2123, 110, -12777);
		elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(235, 25, -12199);
			CFrameMon = CFrame.new(110, 80, -12245);
		elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(235, 25, -12199);
			CFrameMon = CFrame.new(579, 80, -12413);
		elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150, 25, -12777);
			CFrameMon = CFrame.new( -68, 80, -12692);
		elseif ((MyLevel == 2375) or (MyLevel <= 2399)) then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150, 25, -12777);
			CFrameMon = CFrame.new(17, 80, -12962);
		elseif ((MyLevel == 2400) or (MyLevel <= 2424)) then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new( -1148, 14, -14446);
			CFrameMon = CFrame.new( -1371, 70, -14405);
		elseif ((MyLevel == 2425) or (MyLevel <= 2449)) then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new( -1148, 14, -14446);
			CFrameMon = CFrame.new( -836, 70, -14326);
		elseif ((MyLevel == 2450) or (MyLevel <= 2474)) then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new( -16547, 56, -172);
			CFrameMon = CFrame.new( -16431, 90, -223);
		elseif ((MyLevel == 2475) or (MyLevel <= 2499)) then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new( -16547, 56, -172);
			CFrameMon = CFrame.new( -16668, 70, -243);
		elseif ((MyLevel == 2500) or (MyLevel <= 2524)) then
			Mon = "Sun-kissed Warrior";
			LevelQuest = 1;
			NameQuest = "TikiQuest2";
			NameMon = "kissed";
			CFrameQuest = CFrame.new( -16540, 56, 1051);
			CFrameMon = CFrame.new( -16345, 80, 1004);
		elseif ((MyLevel == 2525) or (MyLevel <= 2549)) then
			Mon = "Isle Champion";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Isle Champion";
			CFrameQuest = CFrame.new( -16540, 56, 1051);
			CFrameMon = CFrame.new( -16634, 85, 1106);
		elseif ((MyLevel == 2550) or (MyLevel <= 2574)) then
			Mon = "Serpent Hunter";
			LevelQuest = 1;
			NameQuest = "TikiQuest3";
			NameMon = "Serpent Hunter";
			CFrameQuest = CFrame.new( -16665, 105, 1580);
			CFrameMon = CFrame.new( -16542.4824, 146.675156, 1529.61401, -0.999948919, 1.0729811e-8, 0.0101067368, 1.0128324e-8, 1, -5.9564663e-8, -0.0101067368, -5.9459257e-8, -0.999948919);
		elseif ((MyLevel == 2575) or (MyLevel <= 2600)) then
			Mon = "Skull Slayer";
			LevelQuest = 2;
			NameQuest = "TikiQuest3";
			NameMon = "Skull Slayer";
			CFrameQuest = CFrame.new( -16665, 105, 1580);
			CFrameMon = CFrame.new( -16849.9336, 147.005066, 1640.88354, 0.470148534, 0.491874039, -0.732816696, 1.72165e-8, 0.83030504, 0.55730921, 0.882587314, -0.262018114, 0.390366673);
		end
	end
end
function Hop()
	local v213 = game.PlaceId;
	local v214 = {};
	local v215 = "";
	local v216 = os.date("!*t").hour;
	local v217 = false;
	function TPReturner()
		local v613;
		if (v215 == "") then
			v613 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v213   .. "/servers/Public?sortOrder=Asc&limit=100" ));
		else
			v613 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v213   .. "/servers/Public?sortOrder=Asc&limit=100&cursor="   .. v215 ));
		end
		local v614 = "";
		if (v613.nextPageCursor and (v613.nextPageCursor ~= "null") and (v613.nextPageCursor ~= nil)) then
			v215 = v613.nextPageCursor;
		end
		local v615 = 0;
		for v1144, v1145 in pairs(v613.data) do
			local v1146 = true;
			v614 = tostring(v1145.id);
			if (tonumber(v1145.maxPlayers) > tonumber(v1145.playing)) then
				for v1447, v1448 in pairs(v214) do
					if (v615 ~= 0) then
						if (v614 == tostring(v1448)) then
							v1146 = false;
						end
					elseif (tonumber(v216) ~= tonumber(v1448)) then
						local v1948 = pcall(function()
							v214 = {};
							table.insert(v214, v216);
						end);
					end
					v615 = v615 + 1 ;
				end
				if (v1146 == true) then
					table.insert(v214, v614);
					wait();
					pcall(function()
						wait();
						game:GetService("TeleportService"):TeleportToPlaceInstance(v213, v614, game.Players.LocalPlayer);
					end);
					wait(4);
				end
			end
		end
	end
	function Teleport()
		while wait() do
			pcall(function()
				TPReturner();
				if (v215 ~= "") then
					TPReturner();
				end
			end);
		end
	end
	Teleport();
end
function UpdateIslandESP()
	for v616, v617 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v617.Name ~= "Sea") then
					if  not v617:FindFirstChild("NameEsp") then
						local v1741 = Instance.new("BillboardGui", v617);
						v1741.Name = "NameEsp";
						v1741.ExtentsOffset = Vector3.new(0, 1, 0);
						v1741.Size = UDim2.new(1, 200, 1, 30);
						v1741.Adornee = v617;
						v1741.AlwaysOnTop = true;
						local v1747 = Instance.new("TextLabel", v1741);
						v1747.Font = "GothamBold";
						v1747.FontSize = "Size14";
						v1747.TextWrapped = true;
						v1747.Size = UDim2.new(1, 0, 1, 0);
						v1747.TextYAlignment = "Top";
						v1747.BackgroundTransparency = 1;
						v1747.TextStrokeTransparency = 0.5;
						v1747.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v617['NameEsp'].TextLabel.Text = v617.Name   .. "   \n"   .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v617.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v617:FindFirstChild("NameEsp") then
				v617:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v218)
	return v218 == nil ;
end
local function v24(v219)
	return math.floor(tonumber(v219) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v618, v619 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v619.Character) then
				if ESPPlayer then
					if ( not isnil(v619.Character.Head) and  not v619.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v1757 = Instance.new("BillboardGui", v619.Character.Head);
						v1757.Name = "NameEsp"   .. Number ;
						v1757.ExtentsOffset = Vector3.new(0, 1, 0);
						v1757.Size = UDim2.new(1, 200, 1, 30);
						v1757.Adornee = v619.Character.Head;
						v1757.AlwaysOnTop = true;
						local v1764 = Instance.new("TextLabel", v1757);
						v1764.Font = Enum.Font.GothamSemibold;
						v1764.FontSize = "Size14";
						v1764.TextWrapped = true;
						v1764.Text = v619.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v619.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v1764.Size = UDim2.new(1, 0, 1, 0);
						v1764.TextYAlignment = "Top";
						v1764.BackgroundTransparency = 1;
						v1764.TextStrokeTransparency = 0.5;
						if (v619.Team == game.Players.LocalPlayer.Team) then
							v1764.TextColor3 = Color3.new(3, 252, 3);
						else
							v1764.TextColor3 = Color3.new(3, 252, 3);
						end
					else
						v619.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v619.Name   .. " | "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v619.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v24((v619.Character.Humanoid.Health * 100) / v619.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v619.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v619.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v620, v621 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v621.Name, "Chest") then
				if ChestESP then
					if string.find(v621.Name, "Chest") then
						if  not v621:FindFirstChild("NameEsp"   .. Number ) then
							local v2081 = Instance.new("BillboardGui", v621);
							v2081.Name = "NameEsp"   .. Number ;
							v2081.ExtentsOffset = Vector3.new(0, 1, 0);
							v2081.Size = UDim2.new(1, 200, 1, 30);
							v2081.Adornee = v621;
							v2081.AlwaysOnTop = true;
							local v2087 = Instance.new("TextLabel", v2081);
							v2087.Font = Enum.Font.GothamSemibold;
							v2087.FontSize = "Size14";
							v2087.TextWrapped = true;
							v2087.Size = UDim2.new(1, 0, 1, 0);
							v2087.TextYAlignment = "Top";
							v2087.BackgroundTransparency = 1;
							v2087.TextStrokeTransparency = 0.5;
							if (v621.Name == "Chest1") then
								v2087.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2087.Text = "Chest 1"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v621.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v621.Name == "Chest2") then
								v2087.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2087.Text = "Chest 2"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v621.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v621.Name == "Chest3") then
								v2087.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2087.Text = "Chest 3"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v621.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v621["NameEsp"   .. Number ].TextLabel.Text = v621.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v621.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v621:FindFirstChild("NameEsp"   .. Number ) then
					v621:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v622, v623 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v623.Name, "Fruit") then
					if  not v623.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v1775 = Instance.new("BillboardGui", v623.Handle);
						v1775.Name = "NameEsp"   .. Number ;
						v1775.ExtentsOffset = Vector3.new(0, 1, 0);
						v1775.Size = UDim2.new(1, 200, 1, 30);
						v1775.Adornee = v623.Handle;
						v1775.AlwaysOnTop = true;
						local v1782 = Instance.new("TextLabel", v1775);
						v1782.Font = Enum.Font.GothamSemibold;
						v1782.FontSize = "Size14";
						v1782.TextWrapped = true;
						v1782.Size = UDim2.new(1, 0, 1, 0);
						v1782.TextYAlignment = "Top";
						v1782.BackgroundTransparency = 1;
						v1782.TextStrokeTransparency = 0.5;
						v1782.TextColor3 = Color3.fromRGB(255, 255, 255);
						v1782.Text = v623.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v623.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v623.Handle["NameEsp"   .. Number ].TextLabel.Text = v623.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v623.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v623.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v623.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v624, v625 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v625.Name == "Flower2") or (v625.Name == "Flower1")) then
				if FlowerESP then
					if  not v625:FindFirstChild("NameEsp"   .. Number ) then
						local v1794 = Instance.new("BillboardGui", v625);
						v1794.Name = "NameEsp"   .. Number ;
						v1794.ExtentsOffset = Vector3.new(0, 1, 0);
						v1794.Size = UDim2.new(1, 200, 1, 30);
						v1794.Adornee = v625;
						v1794.AlwaysOnTop = true;
						local v1800 = Instance.new("TextLabel", v1794);
						v1800.Font = Enum.Font.GothamSemibold;
						v1800.FontSize = "Size14";
						v1800.TextWrapped = true;
						v1800.Size = UDim2.new(1, 0, 1, 0);
						v1800.TextYAlignment = "Top";
						v1800.BackgroundTransparency = 1;
						v1800.TextStrokeTransparency = 0.5;
						v1800.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v625.Name == "Flower1") then
							v1800.Text = "Blue Flower"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v625.Position).Magnitude / 3 )   .. " Distance" ;
							v1800.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v625.Name == "Flower2") then
							v1800.Text = "Red Flower"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v625.Position).Magnitude / 3 )   .. " Distance" ;
							v1800.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v625["NameEsp"   .. Number ].TextLabel.Text = v625.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v625.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v625:FindFirstChild("NameEsp"   .. Number ) then
					v625:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v626, v627 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v627:IsA("Tool") then
			if RealFruitESP then
				if  not v627.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1553 = Instance.new("BillboardGui", v627.Handle);
					v1553.Name = "NameEsp"   .. Number ;
					v1553.ExtentsOffset = Vector3.new(0, 1, 0);
					v1553.Size = UDim2.new(1, 200, 1, 30);
					v1553.Adornee = v627.Handle;
					v1553.AlwaysOnTop = true;
					local v1560 = Instance.new("TextLabel", v1553);
					v1560.Font = Enum.Font.GothamSemibold;
					v1560.FontSize = "Size14";
					v1560.TextWrapped = true;
					v1560.Size = UDim2.new(1, 0, 1, 0);
					v1560.TextYAlignment = "Top";
					v1560.BackgroundTransparency = 1;
					v1560.TextStrokeTransparency = 0.5;
					v1560.TextColor3 = Color3.fromRGB(255, 0, 0);
					v1560.Text = v627.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v627.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v627.Handle["NameEsp"   .. Number ].TextLabel.Text = v627.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v627.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v627.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v627.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v628, v629 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v629:IsA("Tool") then
			if RealFruitESP then
				if  not v629.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1572 = Instance.new("BillboardGui", v629.Handle);
					v1572.Name = "NameEsp"   .. Number ;
					v1572.ExtentsOffset = Vector3.new(0, 1, 0);
					v1572.Size = UDim2.new(1, 200, 1, 30);
					v1572.Adornee = v629.Handle;
					v1572.AlwaysOnTop = true;
					local v1579 = Instance.new("TextLabel", v1572);
					v1579.Font = Enum.Font.GothamSemibold;
					v1579.FontSize = "Size14";
					v1579.TextWrapped = true;
					v1579.Size = UDim2.new(1, 0, 1, 0);
					v1579.TextYAlignment = "Top";
					v1579.BackgroundTransparency = 1;
					v1579.TextStrokeTransparency = 0.5;
					v1579.TextColor3 = Color3.fromRGB(255, 174, 0);
					v1579.Text = v629.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v629.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v629.Handle["NameEsp"   .. Number ].TextLabel.Text = v629.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v629.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v629.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v629.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v630, v631 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v631:IsA("Tool") then
			if RealFruitESP then
				if  not v631.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1591 = Instance.new("BillboardGui", v631.Handle);
					v1591.Name = "NameEsp"   .. Number ;
					v1591.ExtentsOffset = Vector3.new(0, 1, 0);
					v1591.Size = UDim2.new(1, 200, 1, 30);
					v1591.Adornee = v631.Handle;
					v1591.AlwaysOnTop = true;
					local v1598 = Instance.new("TextLabel", v1591);
					v1598.Font = Enum.Font.GothamSemibold;
					v1598.FontSize = "Size14";
					v1598.TextWrapped = true;
					v1598.Size = UDim2.new(1, 0, 1, 0);
					v1598.TextYAlignment = "Top";
					v1598.BackgroundTransparency = 1;
					v1598.TextStrokeTransparency = 0.5;
					v1598.TextColor3 = Color3.fromRGB(251, 255, 0);
					v1598.Text = v631.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v631.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v631.Handle["NameEsp"   .. Number ].TextLabel.Text = v631.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v631.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v631.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v631.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandESP()
	for v632, v633 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v633.Name ~= "Sea") then
					if  not v633:FindFirstChild("NameEsp") then
						local v1811 = Instance.new("BillboardGui", v633);
						v1811.Name = "NameEsp";
						v1811.ExtentsOffset = Vector3.new(0, 1, 0);
						v1811.Size = UDim2.new(1, 200, 1, 30);
						v1811.Adornee = v633;
						v1811.AlwaysOnTop = true;
						local v1817 = Instance.new("TextLabel", v1811);
						v1817.Font = "GothamBold";
						v1817.FontSize = "Size14";
						v1817.TextWrapped = true;
						v1817.Size = UDim2.new(1, 0, 1, 0);
						v1817.TextYAlignment = "Top";
						v1817.BackgroundTransparency = 1;
						v1817.TextStrokeTransparency = 0.5;
						v1817.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v633['NameEsp'].TextLabel.Text = v633.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v633.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v633:FindFirstChild("NameEsp") then
				v633:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v220)
	return v220 == nil ;
end
local function v24(v221)
	return math.floor(tonumber(v221) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v634, v635 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v635.Character) then
				if ESPPlayer then
					if ( not isnil(v635.Character.Head) and  not v635.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v1827 = Instance.new("BillboardGui", v635.Character.Head);
						v1827.Name = "NameEsp"   .. Number ;
						v1827.ExtentsOffset = Vector3.new(0, 1, 0);
						v1827.Size = UDim2.new(1, 200, 1, 30);
						v1827.Adornee = v635.Character.Head;
						v1827.AlwaysOnTop = true;
						local v1834 = Instance.new("TextLabel", v1827);
						v1834.Font = Enum.Font.GothamSemibold;
						v1834.FontSize = "Size14";
						v1834.TextWrapped = true;
						v1834.Text = v635.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v635.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v1834.Size = UDim2.new(1, 0, 1, 0);
						v1834.TextYAlignment = "Top";
						v1834.BackgroundTransparency = 1;
						v1834.TextStrokeTransparency = 0.5;
						if (v635.Team == game.Players.LocalPlayer.Team) then
							v1834.TextColor3 = Color3.new(3, 252, 3);
						else
							v1834.TextColor3 = Color3.new(3, 252, 3);
						end
					else
						v635.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v635.Name   .. " | "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v635.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v24((v635.Character.Humanoid.Health * 100) / v635.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v635.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v635.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v636, v637 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v637.Name, "Chest") then
				if ChestESP then
					if string.find(v637.Name, "Chest") then
						if  not v637:FindFirstChild("NameEsp"   .. Number ) then
							local v2103 = Instance.new("BillboardGui", v637);
							v2103.Name = "NameEsp"   .. Number ;
							v2103.ExtentsOffset = Vector3.new(0, 1, 0);
							v2103.Size = UDim2.new(1, 200, 1, 30);
							v2103.Adornee = v637;
							v2103.AlwaysOnTop = true;
							local v2109 = Instance.new("TextLabel", v2103);
							v2109.Font = Enum.Font.GothamSemibold;
							v2109.FontSize = "Size14";
							v2109.TextWrapped = true;
							v2109.Size = UDim2.new(1, 0, 1, 0);
							v2109.TextYAlignment = "Top";
							v2109.BackgroundTransparency = 1;
							v2109.TextStrokeTransparency = 0.5;
							if (v637.Name == "Chest1") then
								v2109.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2109.Text = "Chest 1"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v637.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v637.Name == "Chest2") then
								v2109.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2109.Text = "Chest 2"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v637.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v637.Name == "Chest3") then
								v2109.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2109.Text = "Chest 3"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v637.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v637["NameEsp"   .. Number ].TextLabel.Text = v637.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v637.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v637:FindFirstChild("NameEsp"   .. Number ) then
					v637:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v638, v639 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v639.Name, "Fruit") then
					if  not v639.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v1845 = Instance.new("BillboardGui", v639.Handle);
						v1845.Name = "NameEsp"   .. Number ;
						v1845.ExtentsOffset = Vector3.new(0, 1, 0);
						v1845.Size = UDim2.new(1, 200, 1, 30);
						v1845.Adornee = v639.Handle;
						v1845.AlwaysOnTop = true;
						local v1852 = Instance.new("TextLabel", v1845);
						v1852.Font = Enum.Font.GothamSemibold;
						v1852.FontSize = "Size14";
						v1852.TextWrapped = true;
						v1852.Size = UDim2.new(1, 0, 1, 0);
						v1852.TextYAlignment = "Top";
						v1852.BackgroundTransparency = 1;
						v1852.TextStrokeTransparency = 0.5;
						v1852.TextColor3 = Color3.fromRGB(255, 255, 255);
						v1852.Text = v639.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v639.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v639.Handle["NameEsp"   .. Number ].TextLabel.Text = v639.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v639.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v639.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v639.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v640, v641 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v641.Name == "Flower2") or (v641.Name == "Flower1")) then
				if FlowerESP then
					if  not v641:FindFirstChild("NameEsp"   .. Number ) then
						local v1864 = Instance.new("BillboardGui", v641);
						v1864.Name = "NameEsp"   .. Number ;
						v1864.ExtentsOffset = Vector3.new(0, 1, 0);
						v1864.Size = UDim2.new(1, 200, 1, 30);
						v1864.Adornee = v641;
						v1864.AlwaysOnTop = true;
						local v1870 = Instance.new("TextLabel", v1864);
						v1870.Font = Enum.Font.GothamSemibold;
						v1870.FontSize = "Size14";
						v1870.TextWrapped = true;
						v1870.Size = UDim2.new(1, 0, 1, 0);
						v1870.TextYAlignment = "Top";
						v1870.BackgroundTransparency = 1;
						v1870.TextStrokeTransparency = 0.5;
						v1870.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v641.Name == "Flower1") then
							v1870.Text = "Blue Flower"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v641.Position).Magnitude / 3 )   .. " Distance" ;
							v1870.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v641.Name == "Flower2") then
							v1870.Text = "Red Flower"   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v641.Position).Magnitude / 3 )   .. " Distance" ;
							v1870.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v641["NameEsp"   .. Number ].TextLabel.Text = v641.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v641.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v641:FindFirstChild("NameEsp"   .. Number ) then
					v641:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v642, v643 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v643:IsA("Tool") then
			if RealFruitESP then
				if  not v643.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1610 = Instance.new("BillboardGui", v643.Handle);
					v1610.Name = "NameEsp"   .. Number ;
					v1610.ExtentsOffset = Vector3.new(0, 1, 0);
					v1610.Size = UDim2.new(1, 200, 1, 30);
					v1610.Adornee = v643.Handle;
					v1610.AlwaysOnTop = true;
					local v1617 = Instance.new("TextLabel", v1610);
					v1617.Font = Enum.Font.GothamSemibold;
					v1617.FontSize = "Size14";
					v1617.TextWrapped = true;
					v1617.Size = UDim2.new(1, 0, 1, 0);
					v1617.TextYAlignment = "Top";
					v1617.BackgroundTransparency = 1;
					v1617.TextStrokeTransparency = 0.5;
					v1617.TextColor3 = Color3.fromRGB(255, 0, 0);
					v1617.Text = v643.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v643.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v643.Handle["NameEsp"   .. Number ].TextLabel.Text = v643.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v643.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v643.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v643.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v644, v645 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v645:IsA("Tool") then
			if RealFruitESP then
				if  not v645.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1629 = Instance.new("BillboardGui", v645.Handle);
					v1629.Name = "NameEsp"   .. Number ;
					v1629.ExtentsOffset = Vector3.new(0, 1, 0);
					v1629.Size = UDim2.new(1, 200, 1, 30);
					v1629.Adornee = v645.Handle;
					v1629.AlwaysOnTop = true;
					local v1636 = Instance.new("TextLabel", v1629);
					v1636.Font = Enum.Font.GothamSemibold;
					v1636.FontSize = "Size14";
					v1636.TextWrapped = true;
					v1636.Size = UDim2.new(1, 0, 1, 0);
					v1636.TextYAlignment = "Top";
					v1636.BackgroundTransparency = 1;
					v1636.TextStrokeTransparency = 0.5;
					v1636.TextColor3 = Color3.fromRGB(255, 174, 0);
					v1636.Text = v645.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v645.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v645.Handle["NameEsp"   .. Number ].TextLabel.Text = v645.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v645.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v645.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v645.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v646, v647 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v647:IsA("Tool") then
			if RealFruitESP then
				if  not v647.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v1648 = Instance.new("BillboardGui", v647.Handle);
					v1648.Name = "NameEsp"   .. Number ;
					v1648.ExtentsOffset = Vector3.new(0, 1, 0);
					v1648.Size = UDim2.new(1, 200, 1, 30);
					v1648.Adornee = v647.Handle;
					v1648.AlwaysOnTop = true;
					local v1655 = Instance.new("TextLabel", v1648);
					v1655.Font = Enum.Font.GothamSemibold;
					v1655.FontSize = "Size14";
					v1655.TextWrapped = true;
					v1655.Size = UDim2.new(1, 0, 1, 0);
					v1655.TextYAlignment = "Top";
					v1655.BackgroundTransparency = 1;
					v1655.TextStrokeTransparency = 0.5;
					v1655.TextColor3 = Color3.fromRGB(251, 255, 0);
					v1655.Text = v647.Name   .. " \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v647.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v647.Handle["NameEsp"   .. Number ].TextLabel.Text = v647.Name   .. " "   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v647.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v647.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v647.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandMirageESP()
	for v648, v649 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if (v649.Name == "Mirage Island") then
					if  not v649:FindFirstChild("NameEsp") then
						local v1881 = Instance.new("BillboardGui", v649);
						v1881.Name = "NameEsp";
						v1881.ExtentsOffset = Vector3.new(0, 1, 0);
						v1881.Size = UDim2.new(1, 200, 1, 30);
						v1881.Adornee = v649;
						v1881.AlwaysOnTop = true;
						local v1887 = Instance.new("TextLabel", v1881);
						v1887.Font = "Code";
						v1887.FontSize = "Size14";
						v1887.TextWrapped = true;
						v1887.Size = UDim2.new(1, 0, 1, 0);
						v1887.TextYAlignment = "Top";
						v1887.BackgroundTransparency = 1;
						v1887.TextStrokeTransparency = 0.5;
						v1887.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v649['NameEsp'].TextLabel.Text = v649.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v649.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v649:FindFirstChild("NameEsp") then
				v649:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function UpdateLSDESP()
	for v650, v651 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if LADESP then
				if (v651.Name == "Legendary Sword Dealer") then
					if  not v651:FindFirstChild("NameEsp") then
						local v1897 = Instance.new("BillboardGui", v651);
						v1897.Name = "NameEsp";
						v1897.ExtentsOffset = Vector3.new(0, 1, 0);
						v1897.Size = UDim2.new(1, 200, 1, 30);
						v1897.Adornee = v651;
						v1897.AlwaysOnTop = true;
						local v1903 = Instance.new("TextLabel", v1897);
						v1903.Font = "Code";
						v1903.FontSize = "Size14";
						v1903.TextWrapped = true;
						v1903.Size = UDim2.new(1, 0, 1, 0);
						v1903.TextYAlignment = "Top";
						v1903.BackgroundTransparency = 1;
						v1903.TextStrokeTransparency = 0.5;
						v1903.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v651['NameEsp'].TextLabel.Text = v651.Name   .. "   \n"   .. v24((game:GetService("Players").LocalPlayer.Character.Head.Position - v651.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v651:FindFirstChild("NameEsp") then
				v651:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function InfAb()
	if InfAbility then
		if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local v1352 = Instance.new("ParticleEmitter");
			v1352.Acceleration = Vector3.new(0, 0, 0);
			v1352.Archivable = true;
			v1352.Drag = 20;
			v1352.EmissionDirection = Enum.NormalId.Top;
			v1352.Enabled = true;
			v1352.Lifetime = NumberRange.new(0, 0);
			v1352.LightInfluence = 0;
			v1352.LockedToPart = true;
			v1352.Name = "Agility";
			v1352.Rate = 500;
			local v1364 = {
				NumberSequenceKeypoint.new(0, 0),
				NumberSequenceKeypoint.new(1, 4)
			};
			v1352.Size = NumberSequence.new(v1364);
			v1352.RotSpeed = NumberRange.new(9999, 99999);
			v1352.Rotation = NumberRange.new(0, 0);
			v1352.Speed = NumberRange.new(30, 30);
			v1352.SpreadAngle = Vector2.new(0, 0, 0, 0);
			v1352.Texture = "";
			v1352.VelocityInheritance = 0;
			v1352.ZOffset = 2;
			v1352.Transparency = NumberSequence.new(0);
			v1352.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0));
			v1352.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
		end
	elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end
local v25 = game:GetService("Players").LocalPlayer;
local v26 = v25.Character.Energy.Value;
function infinitestam()
	v25.Character.Energy.Changed:connect(function()
		if InfiniteEnergy then
			v25.Character.Energy.Value = v26;
		end
	end);
end
spawn(function()
	pcall(function()
		while wait(0.1) do
			if InfiniteEnergy then
				wait(0.1);
				v26 = v25.Character.Energy.Value;
				infinitestam();
			end
		end
	end);
end);
function NoDodgeCool()
	if nododgecool then
		for v1277, v1278 in next, getgc() do
			if game:GetService("Players").LocalPlayer.Character.Dodge then
				if ((typeof(v1278) == "function") and (getfenv(v1278).script == game:GetService("Players").LocalPlayer.Character.Dodge)) then
					for v1913, v1914 in next, getupvalues(v1278) do
						if (tostring(v1914) == "0.1") then
							repeat
								wait(0.1);
								setupvalue(v1278, v1913, 0);
							until  not nododgecool
						end
					end
				end
			end
		end
	end
end
function fly()
	local v222 = game:GetService("Players").LocalPlayer:GetMouse("");
	localplayer = game:GetService("Players").LocalPlayer;
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart");
	local v224 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	local v225 = 25;
	local v226 = {
		a = false,
		d = false,
		w = false,
		s = false
	};
	local v227;
	local v228;
	local function v229()
		local v652 = Instance.new("BodyPosition", v224);
		local v653 = Instance.new("BodyGyro", v224);
		v652.Name = "EPIXPOS";
		v652.maxForce = Vector3.new(math.huge, math.huge, math.huge);
		v652.position = v224.Position;
		v653.maxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
		v653.CFrame = v224.CFrame;
		repeat
			wait();
			localplayer.Character.Humanoid.PlatformStand = true;
			local v1148 = (v653.CFrame - v653.CFrame.p) + v652.position ;
			if ( not v226.w and  not v226.s and  not v226.a and  not v226.d) then
				speed = 1;
			end
			if v226.w then
				v1148 = v1148 + (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
				speed = speed + v225 ;
			end
			if v226.s then
				v1148 = v1148 - (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
				speed = speed + v225 ;
			end
			if v226.d then
				v1148 = v1148 * CFrame.new(speed, 0, 0) ;
				speed = speed + v225 ;
			end
			if v226.a then
				v1148 = v1148 * CFrame.new( -speed, 0, 0) ;
				speed = speed + v225 ;
			end
			if (speed > v225) then
				speed = v225;
			end
			v652.position = v1148.p;
			if v226.w then
				v653.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles( -math.rad(speed * 15 ), 0, 0) ;
			elseif v226.s then
				v653.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15 ), 0, 0) ;
			else
				v653.CFrame = workspace.CurrentCamera.CoordinateFrame;
			end
		until  not Fly
		if v653 then
			v653:Destroy();
		end
		if v652 then
			v652:Destroy();
		end
		flying = false;
		localplayer.Character.Humanoid.PlatformStand = false;
		speed = 0;
	end
	v227 = v222.KeyDown:connect(function(v662)
		if ( not v224 or  not v224.Parent) then
			flying = false;
			v227:disconnect();
			v228:disconnect();
			return;
		end
		if (v662 == "w") then
			v226.w = true;
		elseif (v662 == "s") then
			v226.s = true;
		elseif (v662 == "a") then
			v226.a = true;
		elseif (v662 == "d") then
			v226.d = true;
		end
	end);
	v228 = v222.KeyUp:connect(function(v663)
		if (v663 == "w") then
			v226.w = false;
		elseif (v663 == "s") then
			v226.s = false;
		elseif (v663 == "a") then
			v226.a = false;
		elseif (v663 == "d") then
			v226.d = false;
		end
	end);
	v229();
end
function Click()
	game:GetService("VirtualUser"):CaptureController();
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
end
function AutoHaki()
	if  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
	end
end
function EquipWeapon(v230)
	if  not Nill then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(v230) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(v230);
			wait(0.1);
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
		end
	end
end
function BTP(v231)
	pcall(function()
		if (((v231.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500) and  not Auto_Raid and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
			repeat
				wait();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v231;
				wait(0.05);
				game.Players.LocalPlayer.Character.Head:Destroy();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v231;
			until ((v231.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)
		end
	end);
end
local v27 = false;
function WaitHRP(v232)
	if  not v232 then
		return;
	end
	return v232.Character:WaitForChild("HumanoidRootPart", 9);
end
function CheckNearestTeleporter(v233)
	local v234 = v233.Position;
	local v235 = math.huge;
	local v236 = nil;
	local v237 = game.PlaceId;
	local v238 = {};
	if (v237 == 2753915549) then
		v238 = {
			Sky3 = Vector3.new( -7894, 5547, -380),
			Sky3Exit = Vector3.new( -4607, 874, -1667),
			UnderWater = Vector3.new(61163, 11, 1819),
			UnderwaterExit = Vector3.new(4050, -1, -1814)
		};
	elseif (v237 == 4442272183) then
		v238 = {
			["Swan Mansion"] = Vector3.new( -390, 332, 673),
			["Swan Room"] = Vector3.new(2285, 15, 905),
			["Cursed Ship"] = Vector3.new(923, 126, 32852),
			["Zombie Island"] = Vector3.new( -6509, 83, -133)
		};
	elseif (v237 == 7449423635) then
		v238 = {
			["Floating Turtle"] = Vector3.new( -12462, 375, -7552),
			["Hydra Island"] = Vector3.new(5745, 610, -267),
			Mansion = Vector3.new( -12462, 375, -7552),
			Castle = Vector3.new( -5036, 315, -3179),
			["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
			["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.1476277e-8, -1.9911115e-13, -2.1476277e-8, 1, -3.0510602e-8, 1.984559e-13, 3.0510602e-8, 1),
			["Temple of Time"] = Vector3.new(28286, 14897, 103)
		};
	end
	for v664, v665 in pairs(v238) do
		local v666 = (v665 - v234).Magnitude;
		if (v666 < v235) then
			v235 = v666;
			v236 = v665;
		end
	end
	local v239 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
	if (v235 <= (v234 - v239).Magnitude) then
		return v236;
	end
end
function requestEntrance(v240)
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", v240);
	local v241 = game.Players.LocalPlayer.Character.HumanoidRootPart;
	v241.CFrame = v241.CFrame + Vector3.new(0, 50, 0) ;
	task.wait(0.5);
end
local v28 = false;
function topos(v243)
	local v244 = game.Players.LocalPlayer;
	if (v244.Character and (v244.Character.Humanoid.Health > 0) and v244.Character:FindFirstChild("HumanoidRootPart")) then
		if  not v243 then
			return;
		end
		local v1151 = (v243.Position - v244.Character.HumanoidRootPart.Position).Magnitude;
		local v1152 = CheckNearestTeleporter(v243);
		if v1152 then
			requestEntrance(v1152);
		end
		if  not v244.Character:FindFirstChild("PartTele") then
			local v1380 = Instance.new("Part", v244.Character);
			v1380.Size = Vector3.new(10, 1, 10);
			v1380.Name = "PartTele";
			v1380.Anchored = true;
			v1380.Transparency = 1;
			v1380.CanCollide = false;
			v1380.CFrame = WaitHRP(v244).CFrame;
			v1380:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v27 then
					return;
				end
				task.wait();
				if (v244.Character and v244.Character:FindFirstChild("HumanoidRootPart")) then
					local v1669 = v1380.CFrame;
					WaitHRP(v244).CFrame = CFrame.new(v1669.Position.X, v243.Position.Y, v1669.Position.Z);
				end
			end);
		end
		v27 = true;
		if (v28 and (v1151 > distbyp)) then
			bypass(v243);
		end
		local v1153 = getgenv().TweenSpeed;
		if (v1151 <= 250) then
			v1153 = v1153 * 3 ;
		end
		local v1154 = CFrame.new(v243.Position.X, v243.Position.Y, v243.Position.Z);
		local v1155 = game:GetService("TweenService"):Create(v244.Character.PartTele, TweenInfo.new(v1151 / v1153 , Enum.EasingStyle.Linear), {
			CFrame = v243
		});
		v1155:Play();
		v1155.Completed:Connect(function(v1281)
			if (v1281 == Enum.PlaybackState.Completed) then
				if v244.Character:FindFirstChild("PartTele") then
					v244.Character.PartTele:Destroy();
				end
				v27 = false;
			end
		end);
	end
end
function TP1(v245)
	topos(v245);
end
function TP2(v246)
	local v247 = game.Players.LocalPlayer;
	if (v247.Character and (v247.Character.Humanoid.Health > 0) and v247.Character:FindFirstChild("HumanoidRootPart")) then
		local v1156 = (v246.Position - v247.Character.HumanoidRootPart.Position).Magnitude;
		if  not v246 then
			return;
		end
		local v1157 = CheckNearestTeleporter(v246);
		if v1157 then
			requestEntrance(v1157);
		end
		if  not v247.Character:FindFirstChild("PartTele") then
			local v1388 = Instance.new("Part", v247.Character);
			v1388.Size = Vector3.new(10, 1, 10);
			v1388.Name = "PartTele";
			v1388.Anchored = true;
			v1388.Transparency = 1;
			v1388.CanCollide = true;
			v1388.CFrame = WaitHRP(v247).CFrame;
			v1388:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v27 then
					return;
				end
				task.wait();
				if (v247.Character and v247.Character:FindFirstChild("HumanoidRootPart")) then
					WaitHRP(v247).CFrame = v1388.CFrame;
				end
			end);
		end
		v27 = true;
		local v1158 = game:GetService("TweenService"):Create(v247.Character.PartTele, TweenInfo.new(v1156 / 350 , Enum.EasingStyle.Linear), {
			CFrame = v246
		});
		v1158:Play();
		v1158.Completed:Connect(function(v1282)
			if (v1282 == Enum.PlaybackState.Completed) then
				if v247.Character:FindFirstChild("PartTele") then
					v247.Character.PartTele:Destroy();
				end
				v27 = false;
			end
		end);
	end
end
function stopTeleport()
	v27 = false;
	local v248 = game.Players.LocalPlayer;
	if v248.Character:FindFirstChild("PartTele") then
		v248.Character.PartTele:Destroy();
	end
end
spawn(function()
	while task.wait() do
		if  not v27 then
			stopTeleport();
		end
	end
end);
spawn(function()
	local v249 = game.Players.LocalPlayer;
	while task.wait() do
		pcall(function()
			if v249.Character:FindFirstChild("PartTele") then
				if ((v249.Character.HumanoidRootPart.Position - v249.Character.PartTele.Position).Magnitude >= 100) then
					stopTeleport();
				end
			end
		end);
	end
end);
local v29 = game.Players.LocalPlayer;
local function v30(v250)
	local v251 = v250:WaitForChild("Humanoid");
	v251.Died:Connect(function()
		stopTeleport();
	end);
end
v29.CharacterAdded:Connect(v30);
if v29.Character then
	v30(v29.Character);
end
function TPB(v252)
	local v253 = game:service("TweenService");
	local v254 = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - v252.Position).Magnitude / 300 , Enum.EasingStyle.Linear);
	tween = v253:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, v254, {
		CFrame = v252
	});
	tween:Play();
	local v255 = {};
	v255.Stop = function(v667)
		tween:Cancel();
	end;
	return v255;
end
Type = 1;
spawn(function()
	while wait() do
		if (Type == 1) then
			Pos = CFrame.new(0, PosY, -19);
		elseif (Type == 2) then
			Pos = CFrame.new(19, PosY, 0);
		elseif (Type == 3) then
			Pos = CFrame.new(0, PosY, 19);
		elseif (Type == 4) then
			Pos = CFrame.new( -19, PosY, 0);
		end
	end
end);
spawn(function()
	while wait(0.1) do
		Type = 1;
		wait(0.2);
		Type = 2;
		wait(0.2);
		Type = 3;
		wait(0.2);
		Type = 4;
		wait(0.2);
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.FarmChest or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.AutoDarkbeard or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or FarmBoss or _G.Elitehunter or _G.CollectBerry or _G.ThirdSea or _G.Bone or _G.Train or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or Auto_Quest_Soul_Guitar or _G.Dragon_Trident or _G.tushita or _G.d or _G.waden or _G.Greybeard or _G.pole or _G.saw or _G.FarmNearest or _G.FarmChest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or Yama_Quest or Get_Cursed or Tushita_Quest or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or Grab_Chest or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.bjirFishBoat or _G.KillGhostShip or _G.KillLeviathan or _G.SegmentLeviathan or _G.AutoLeviathan or _G.FrozenDimension or _G.FKitsune) then
				if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local v1516 = Instance.new("BodyVelocity");
					v1516.Name = "BodyClip";
					v1516.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
					v1516.MaxForce = Vector3.new(100000, 100000, 100000);
					v1516.Velocity = Vector3.new(0, 0, 0);
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.AutoDarkbeard or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or _G.Elitehunter or _G.CollectBerry or _G.ThirdSea or _G.Bone or _G.Train or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or Auto_Quest_Soul_Guitar or _G.Dragon_Trident or _G.tushita or _G.waden or _G.pole or _G.Greybeard or _G.saw or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Kai or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or Yama_Quest or Get_Cursed or Tushita_Quest or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or _G.KillLeviathan or _G.SegmentLeviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.AutoLeviathan or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.FrozenDimension or _G.FKitsune) then
				for v1451, v1452 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v1452:IsA("BasePart") then
						v1452.CanCollide = false;
					end
				end
			end
		end);
	end);
end);
function InstancePos(v257)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v257;
end
function TP3(v259)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v259;
end
spawn(function()
	while wait() do
		if (_G.DoughtBoss or _G.DungeonMobAura or _G.FarmChest or _G.FarmBossHallow or _G.Factory or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.Level or _G.Clip or _G.Elitehunter or _G.ThirdSea or _G.Bone or _G.heart or _G.doughking or _G.d or _G.waden or _G.gay or _G.ObservationHakiV2 or _G.FarmMaterial or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or _G.CDK or _G.RaidPirate or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.AttackDummy or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Farmfast or _G.RaidPirate or _G.Terrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.bjirFishBoat or (_G.KillGhostShip == true)) then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true);
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if (_G.Click or Fastattack) then
			pcall(function()
				game:GetService("VirtualUser"):CaptureController();
				game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 1, 0, 1));
			end);
		end
	end);
end);
function StopTween(v261)
	if  not v261 then
		_G.StopTween = true;
		wait();
		topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
		wait();
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy();
		end
		_G.StopTween = false;
		_G.Clip = false;
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
		game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy();
	end
end
spawn(function()
	pcall(function()
		while wait() do
			for v1283, v1284 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v1284:IsA("Tool") then
					if v1284:FindFirstChild("RemoteFunctionShoot") then
						SelectWeaponGun = v1284.Name;
					end
				end
			end
		end
	end);
end);
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	wait(1);
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
PosY = 25;
Kill_At = 28;
local v31 = v3:AddWindow("HTG Hub", Enum.KeyCode.RightControl);
local v32 = v31:T("Trạng thái", "10734984606");
local v33 = v31:T("chung", "15712703260");
local v34 = v31:T("Cài Đặt ", "15712711639");
local v35 = v31:T("Vật Phẩm", "15712717270");
local v36 = v31:T("Tộc-Đảo Bí Ẩn", "15712776421");
local v37 = v31:T("Sự Kiện Biển", "10709761530");
local v38 = v31:T("Người Chơi", "10747373176");
local v39 = v31:T("Thị giác", "10723346959");
local v40 = v31:T("Tập Kích", "10723345749");
local v41 = v31:T("Di Chuyển", "15712738876");
local v42 = v31:T("Cửa Hàng", "10734952479");
local v43 = v31:T("Trái Ác Quỷ", "15712758182");
local v44 = v31:T("Máy Chủ", "10709782582");
v32:Seperator("Vào Discord");
v32:Label("Mọi Người Vào Giao Lưu");
v32:Button("Sao Chép Link Discord", function()
	setclipboard("https://discord.gg/9Nyb45Bq");
end);
v32:Seperator("Thời Gian");
Time = v32:Label("Thời Gian Hoạt Động");
function UpdateTime()
	local v262 = math.floor(workspace.DistributedGameTime + 0.5 );
	local v263 = math.floor(v262 / (60 ^ 2) ) % 24 ;
	local v264 = math.floor(v262 / (60 ^ 1) ) % 60 ;
	local v265 = math.floor(v262 / (60 ^ 0) ) % 60 ;
	Time:Set("[Thời Gian Máy Chủ]: Giờ: "   .. v263   .. " Phút: "   .. v264   .. " Giây: "   .. v265 );
end
spawn(function()
	while task.wait() do
		pcall(function()
			UpdateTime();
		end);
	end
end);
Client = v32:Label("Client");
function UpdateClient()
	local v266 = workspace:GetRealPhysicsFPS();
	Client:Set("[FPS]: "   .. v266 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient();
	end
end);
Client1 = v32:Label("Client");
function UpdateClient1()
	local v267 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[PING]: "   .. v267 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient1();
	end
end);
v32:Seperator("Người Chơi");
local v45 = v32:Label("Tộc");
spawn(function()
	while wait() do
		pcall(function()
			v45:Set("Race:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Race.Value );
		end);
	end
end);
local v46 = v32:Label("Beli");
spawn(function()
	while wait() do
		pcall(function()
			v46:Set("Beli:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Beli.Value );
		end);
	end
end);
local v47 = v32:Label("Điểm Tím");
spawn(function()
	while wait() do
		pcall(function()
			v47:Set("Diểm Tím:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Fragments.Value );
		end);
	end
end);
local v48 = v32:Label("Tiền Thưởng");
spawn(function()
	while wait() do
		pcall(function()
			v48:Set("Tiền Thưởng:"   .. " "   .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value );
		end);
	end
end);
local v49 = v32:Label("Trái");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)) then
				v49:Set("Trái:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.DevilFruit.Value );
			else
				v49:Set("Không Có Trái");
			end
		end);
	end
end);
v33:Seperator("Vũ Khí");
local v50 = {
	"Võ",
	"Kiếm",
	"Trái",
	"Súng"
};
_G.SelectWeapon = "Võ";
v33:Dropdown("Chọn Vũ Khí", v50, function(v268)
	_G.SelectWeapon = v268;
end);
task.spawn(function()
	while wait() do
		pcall(function()
			if (_G.SelectWeapon == "Võ") then
				for v1453, v1454 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v1454.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v1454.Name)) then
							_G.SelectWeapon = v1454.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Kiếm") then
				for v1675, v1676 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v1676.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v1676.Name)) then
							_G.SelectWeapon = v1676.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Súng") then
				for v1952, v1953 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v1953.ToolTip == "Gun") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v1953.Name)) then
							_G.SelectWeapon = v1953.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Trái") then
				for v2144, v2145 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2145.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2145.Name)) then
							_G.SelectWeapon = v2145.Name;
						end
					end
				end
			end
		end);
	end
end);
local v51 = {
	"Bình Thường",
	"Nhanh",
	"Siêu Nhanh",
	"Cực Nhanh"
};
_G.FastAttackDelay = "Bình Thường";
v33:Dropdown("Tốc Độ Đánh", v51, function(v269)
	_G.FastAttackDelay = v269;
end);
spawn(function()
	while wait(0.1) do
		if _G.FastAttackDelay then
			pcall(function()
				if (_G.FastAttackDelay == "Bình Thường") then
					_G.FastAttackDelay = 0.13;
				elseif (_G.FastAttackDelay == "Nhanh") then
					_G.FastAttackDelay = 0.07;
				elseif (_G.FastAttackDelay == "Siêu Nhanh") then
					_G.FastAttackDelay = 0.04;
				elseif (_G.FastAttackDelay == "Cực Nhanh") then
					_G.FastAttackDelay = 0;
				end
			end);
		end
	end
end);
_G.FastAttack = true;
if _G.FastAttack then
	local _ENV = (getgenv or getrenv or getfenv)();
	local function v668(v1159, v1160)
		local v1161, v1162 = pcall(function()
			return v1159:WaitForChild(v1160);
		end);
		if ( not v1161 or  not v1162) then
			warn("noooooo: "   .. v1160 );
		end
		return v1162;
	end
	local function v669(v1163, ...)
		local v1164 = v1163;
		for v1285, v1286 in {
			...
		} do
			v1164 = v1164:FindFirstChild(v1286) or v668(v1164, v1286) ;
			if  not v1164 then
				break;
			end
		end
		return v1164;
	end
	local v670 = game:GetService("VirtualInputManager");
	local v671 = game:GetService("CollectionService");
	local v672 = game:GetService("ReplicatedStorage");
	local v673 = game:GetService("TeleportService");
	local v674 = game:GetService("RunService");
	local v675 = game:GetService("Players");
	local v676 = v675.LocalPlayer;
	if  not v676 then
		warn("Không tìm thấy người chơi cục bộ.");
		return;
	end
	local v677 = v668(v672, "Remotes");
	if  not v677 then
		return;
	end
	local v678 = v668(v677, "Validator");
	local v679 = v668(v677, "CommF_");
	local v680 = v668(v677, "CommE");
	local v681 = v668(workspace, "ChestModels");
	local v682 = v668(workspace, "_WorldOrigin");
	local v683 = v668(workspace, "Characters");
	local v684 = v668(workspace, "Enemies");
	local v685 = v668(workspace, "Map");
	local v686 = v668(v682, "EnemySpawns");
	local v687 = v668(v682, "Locations");
	local v688 = v674.RenderStepped;
	local v689 = v674.Heartbeat;
	local v690 = v674.Stepped;
	local v691 = v668(v672, "Modules");
	local v692 = v668(v691, "Net");
	local v693 = sethiddenproperty or function(...)
		return ...;
	end ;
	local v694 = setupvalue or (debug and debug.setupvalue) ;
	local v695 = getupvalue or (debug and debug.getupvalue) ;
	local v696 = {
		AutoClick = true,
		ClickDelay = 0
	};
	local v697 = {};
	v697.FastAttack = (function()
		if _ENV.rz_FastAttack then
			return _ENV.rz_FastAttack;
		end
		local v1165 = {
			Distance = 100,
			attackMobs = true,
			attackPlayers = true,
			Equipped = nil
		};
		local v1166 = v668(v692, "RE/RegisterAttack");
		local v1167 = v668(v692, "RE/RegisterHit");
		local function v1168(v1287)
			return v1287 and v1287:FindFirstChild("Humanoid") and (v1287.Humanoid.Health > 0) ;
		end
		local function v1169(v1288, v1289)
			local v1290 = nil;
			for v1396, v1397 in v1289:GetChildren() do
				local v1398 = v1397:FindFirstChild("Head");
				if (v1398 and v1168(v1397) and (v676:DistanceFromCharacter(v1398.Position) < v1165.Distance)) then
					if (v1397 ~= v676.Character) then
						table.insert(v1288, {
							v1397,
							v1398
						});
						v1290 = v1398;
					end
				end
			end
			return v1290;
		end
		v1165.Attack = function(v1291, v1292, v1293)
			if ( not v1292 or ( #v1293 == 0)) then
				return;
			end
			v1166:FireServer(v696.ClickDelay or 0 );
			v1167:FireServer(v1292, v1293);
		end;
		v1165.AttackNearest = function(v1294)
			local v1295 = {};
			local v1296 = v1169(v1295, v684);
			local v1297 = v1169(v1295, v683);
			if ( #v1295 > 0) then
				v1294:Attack(v1296 or v1297 , v1295);
			else
				task.wait(0);
			end
		end;
		v1165.BladeHits = function(v1298)
			local v1299 = v1168(v676.Character) and v676.Character:FindFirstChildOfClass("Tool") ;
			if (v1299 and (v1299.ToolTip ~= "Gun")) then
				v1298:AttackNearest();
			else
				task.wait(0);
			end
		end;
		task.spawn(function()
			while task.wait(v696.ClickDelay) do
				if v696.AutoClick then
					v1165:BladeHits();
				end
			end
		end);
		_ENV.rz_FastAttack = v1165;
		return v1165;
	end)();
end
v33:Seperator("Tự Động Cày");
v33:Toggle("Cày Cấp", _G.Farm, function(v270)
	_G.Level = v270;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.Level then
			pcall(function()
				local v1399 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v1399, NameMon) then
					StartMagnet = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					StartMagnet = false;
					CheckQuest();
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 3500) then
							BTP(CFrameQuest);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 3500) then
							TP1(CFrameQuest);
						end
					else
						TP1(CFrameQuest);
					end
					if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					CheckQuest();
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for v2146, v2147 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2147:FindFirstChild("HumanoidRootPart") and v2147:FindFirstChild("Humanoid") and (v2147.Humanoid.Health > 0)) then
								if (v2147.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMon = v2147.HumanoidRootPart.CFrame;
											TP1(v2147.HumanoidRootPart.CFrame * Pos );
											v2147.HumanoidRootPart.CanCollide = false;
											v2147.Humanoid.WalkSpeed = 0;
											v2147.Head.CanCollide = false;
											v2147.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											StartMagnet = true;
										until  not _G.Level or (v2147.Humanoid.Health <= 0) or  not v2147.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										StartMagnet = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						TP1(CFrameMon);
						UnEquipWeapon(_G.SelectWeapon);
						StartMagnet = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
							TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
if World1 then
	v33:Toggle("Cày Cấp Nhanh ( Cấp 1-300 )", _G.FarmFast, function(v1173)
		_G.Farmfast = v1173;
		StopTween(_G.Farmfast);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
						_G.Level = false;
						_G.Farmfast = true;
					end
				end
			end
		end);
	end);
	spawn(function()
		while wait() do
			if (_G.Farmfast and World1) then
				pcall(function()
					if (game.Players.LocalPlayer.Data.Level.Value >= 10) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7894.6176757813, 5547.1416015625, -380.29119873047));
						for v1954, v1955 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1955.Name == "Shanda") then
								if (v1955:FindFirstChild("Humanoid") and v1955:FindFirstChild("HumanoidRootPart") and (v1955.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1955.HumanoidRootPart.CanCollide = false;
										v1955.Humanoid.WalkSpeed = 0;
										StardMag = true;
										FastMon = v1955.HumanoidRootPart.CFrame;
										v1955.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
										TP1(v1955.HumanoidRootPart.CFrame * Pos );
									until  not _G.Farmfast or  not v1955.Parent or (v1955.Humanoid.Health <= 0)
									StardMag = false;
									TP1(CFrame.new( -7678.48974609375, 5566.40380859375, -497.2156066894531));
									UnEquipWeapon(_G.SelectWeapon);
								end
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Shanda") then
						TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2) );
					end
				end);
			end
		end
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 75) then
						_G.Farmfast = false;
						_G.PlayerHunter = true;
					end
				end
			end
		end);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if (_G.Farmfast and World1) then
					if (game.Players.LocalPlayer.Data.Level.Value >= 200) then
						_G.Level = true;
						_G.PlayerHunter = false;
					end
				end
			end
		end);
	end);
end
v33:Toggle("Cày Cấp Và Mua Item", false, function(v271)
	_G.Level = v271;
	_G.SelectWeapon = "Combat";
	_G.Stats_Kaitun = v271;
	_G.Superhuman = v271;
	_G.SecondSea = v271;
	_G.ThirdSea = v271;
	_G.BuyLegendarySword = v271;
	_G.StoreFruit = v271;
	_G.Random_Auto = v271;
	_G.BuyAllAib = v271;
	_G.BuyAllSword = v271;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.BuyAllSword then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
				if _G.BuyHop then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if _G.BuyAllAib then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
				if _G.HopBuy then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
v33:Toggle("Đánh Quái Ở Gần", _G.FarmNearest, function(v272)
	_G.FarmNearest = v272;
	StopTween(_G.FarmNearest);
end);
spawn(function()
	while wait() do
		if _G.FarmNearest then
			for v1400, v1401 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (v1401.Name and v1401:FindFirstChild("Humanoid")) then
					if (v1401.Humanoid.Health > 0) then
						repeat
							wait();
							EquipWeapon(_G.SelectWeapon);
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2148 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2148));
							end
							topos(v1401.HumanoidRootPart.CFrame * Pos );
							v1401.HumanoidRootPart.CanCollide = false;
							Fastattack = true;
							v1401.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							AutoFarmNearestMagnet = true;
							PosMon = v1401.HumanoidRootPart.CFrame;
						until  not _G.FarmNearest or  not v1401.Parent or (v1401.Humanoid.Health <= 0)
						AutoFarmNearestMagnet = false;
						Fastattack = false;
					end
				end
			end
		end
	end
end);
v33:Seperator("Elite");
local v52 = v33:Label("N/A");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
				v52:Set("Trạng thái: Có");
			else
				v52:Set("Trạng thái: Không");
			end
		end);
	end
end);
v33:Toggle("Đánh Elite Hunter", _G.Elitehunter, function(v273)
	_G.Elitehunter = v273;
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	StopTween(_G.Elitehunter);
end);
spawn(function()
	while wait() do
		if (_G.Elitehunter and World3) then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban")) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
							for v2149, v2150 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v2150.Name == "Diablo") or (v2150.Name == "Deandre") or (v2150.Name == "Urban")) then
									if (v2150:FindFirstChild("Humanoid") and v2150:FindFirstChild("HumanoidRootPart") and (v2150.Humanoid.Health > 0)) then
										repeat
											wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v2150.HumanoidRootPart.CanCollide = false;
											v2150.Humanoid.WalkSpeed = 0;
											v2150.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2150.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ) );
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.Elitehunter == false) or (v2150.Humanoid.Health <= 0) or  not v2150.Parent
									end
								end
							end
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				elseif (_G.EliteHunterHop and (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later.")) then
					hop();
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter");
				end
			end);
		end
	end
end);
v33:Toggle("Đánh Elite Đổi Sever", _G.EliteHunterHop, function(v274)
	_G.EliteHunterHop = v274;
end);
v33:Seperator("Rương");
v33:Toggle("Nhặt Rương", false, function(v275)
	_G.FarmChest = v275;
	StopTween(_G.FarmChest);
end);
spawn(function()
	while wait() do
		if _G.FarmChest then
			local v1300 = game:GetService("Players");
			local v1301 = v1300.LocalPlayer;
			local v1302 = v1301.Character or v1301.CharacterAdded:Wait() ;
			local v1303 = v1302:GetPivot().Position;
			local v1304 = game:GetService("CollectionService");
			local v1305 = v1304:GetTagged("_ChestTagged");
			local v1306, v1307 = math.huge;
			for v1402 = 1, #v1305 do
				local v1403 = v1305[v1402];
				local v1404 = (v1403:GetPivot().Position - v1303).Magnitude;
				if ( not v1403:GetAttribute("IsDisabled") and (v1404 < v1306)) then
					v1306, v1307 = v1404, v1403;
				end
			end
			if v1307 then
				local v1455 = v1307:GetPivot().Position;
				local v1456 = CFrame.new(v1455);
				topos(v1456);
			end
		end
	end
end);
v33:Toggle("Nhặt Rương Bypass (Anti Reset)", false, function(v276)
	_G.ChestBypass = v276;
end);
spawn(function()
	while wait() do
		if _G.ChestBypass then
			local v1308 = game:GetService("Players");
			local v1309 = v1308.LocalPlayer;
			local v1310 = game:GetService("CollectionService");
			local v1311 = v1309.Character or v1309.CharacterAdded:Wait() ;
			local v1312 = tick();
			while (tick() - v1312) < 4  do
				v1311 = v1309.Character or v1309.CharacterAdded:Wait() ;
				local v1405 = v1311:GetPivot().Position;
				local v1406 = v1310:GetTagged("_ChestTagged");
				local v1407, v1408 = math.huge;
				for v1457 = 1, #v1406 do
					local v1458 = v1406[v1457];
					local v1459 = (v1458:GetPivot().Position - v1405).Magnitude;
					if ( not v1458:GetAttribute("IsDisabled") and (v1459 < v1407)) then
						v1407, v1408 = v1459, v1458;
					end
				end
				if v1408 then
					local v1522 = v1408:GetPivot().Position;
					v1311:PivotTo(CFrame.new(v1522));
					task.wait(0.2);
				else
					break;
				end
			end
			if v1309.Character then
				v1309.Character:BreakJoints();
				v1309.CharacterAdded:Wait();
			end
		end
	end
end);
v33:Seperator("Xương");
local v53 = {
	["Reborn Skeleton"] = CFrame.new( -8769.58984, 142.13063, 6055.27637),
	["Living Zombie"] = CFrame.new( -10156.4531, 138.652481, 5964.5752),
	["Demonic Soul"] = CFrame.new( -9525.17188, 172.13063, 6152.30566),
	["Posessed Mummy"] = CFrame.new( -9570.88281, 5.81831884, 6187.86279)
};
spawn(function()
	spawn(function()
		while task.wait(0.1) do
			if BonesBring then
				pcall(function()
					for v1523, v1524 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v1524.Name == "Reborn Skeleton") or (v1524.Name == "Living Zombie") or (v1524.Name == "Demonic Soul") or (v1524.Name == "Posessed Mummy")) then
							local v1915 = v53[v1524.Name];
							if v1915 then
								v1524.HumanoidRootPart.CFrame = v1915;
							end
							v1524.Head.CanCollide = false;
							v1524.Humanoid.Sit = false;
							v1524.Humanoid:ChangeState(14);
							v1524.HumanoidRootPart.CanCollide = false;
							v1524.Humanoid.JumpPower = 0;
							v1524.Humanoid.WalkSpeed = 0;
							if v1524.Humanoid:FindFirstChild("Animator") then
								v1524.Humanoid:FindFirstChild("Animator"):Destroy();
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end);
			end
		end
	end);
end);
BoneCheck = v33:Label("Xương Của Bạn: N/A");
spawn(function()
	while wait() do
		pcall(function()
			BoneCheck:Set("Xương Của Bạn: "   .. (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")) );
		end);
	end
end);
v33:Toggle("Cày Xương", false, function(v277)
	_G.Bone = v277;
	StopTween(_G.Bone);
end);
v33:Toggle("Nhận Nhiệm Vụ Xương", true, function(v278)
	_G.QuestBone = v278;
end);
local v54 = CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
	while wait() do
		if (_G.Bone and  not _G.QuestBone and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
					for v1677, v1678 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1678.Name == "Reborn Skeleton") or (v1678.Name == "Living Zombie") or (v1678.Name == "Demonic Soul") or (v1678.Name == "Posessed Mummy")) then
							if (v1678:FindFirstChild("Humanoid") and v1678:FindFirstChild("HumanoidRootPart") and (v1678.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1678.HumanoidRootPart.CanCollide = false;
									v1678.Humanoid.WalkSpeed = 0;
									v1678.Head.CanCollide = false;
									BonesBring = true;
									PosMonBone = v1678.HumanoidRootPart.CFrame;
									topos(v1678.HumanoidRootPart.CFrame * Pos );
								until  not _G.Bone or  not v1678.Parent or (v1678.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v54.Position).Magnitude > 3500) then
							BTP(v54);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v54.Position).Magnitude < 3500) then
							topos(v54);
						end
					else
						topos(v54);
					end
					UnEquipWeapon(_G.SelectWeapon);
					BonesBring = false;
					topos(CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375));
					for v1679, v1680 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if (v1680.Name == "Reborn Skeleton") then
							topos(v1680.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v1680.Name == "Living Zombie") then
							topos(v1680.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v1680.Name == "Demonic Soul") then
							topos(v1680.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v1680.Name == "Posessed Mummy") then
							topos(v1680.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				end
			end);
		end
	end
end);
local v55 = CFrame.new( -9515.75, 174.8521728515625, 6079.40625);
spawn(function()
	while wait() do
		if (_G.Bone and _G.QuestBone and World3) then
			pcall(function()
				local v1409 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v1409, "Demonic Soul") then
					BonesBring = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					BonesBring = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v55.Position).Magnitude > 3500) then
							BTP(v55);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v55.Position).Magnitude < 3500) then
							topos(v55);
						end
					else
						topos(v55);
					end
					if ((v55.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
						for v2151, v2152 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2152:FindFirstChild("HumanoidRootPart") and v2152:FindFirstChild("Humanoid") and (v2152.Humanoid.Health > 0)) then
								if ((v2152.Name == "Reborn Skeleton") or (v2152.Name == "Living Zombie") or (v2152.Name == "Demonic Soul") or (v2152.Name == "Posessed Mummy")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMonBone = v2152.HumanoidRootPart.CFrame;
											topos(v2152.HumanoidRootPart.CFrame * Pos );
											v2152.HumanoidRootPart.CanCollide = false;
											v2152.Humanoid.WalkSpeed = 0;
											v2152.Head.CanCollide = false;
											BonesBring = true;
										until  not _G.Bone or (v2152.Humanoid.Health <= 0) or  not v2152.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									else
										BonesBring = false;
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
									end
								end
							end
						end
					else
						BonesBring = false;
						if game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Demonic Soul [Lv. 2025]").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
						end
					end
				end
			end);
		end
	end
end);
v33:Toggle("Đổi Xương", _G.Random_Bone, function(v279)
	_G.Random_Bone = v279;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Random_Bone then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
			end
		end
	end);
end);
v33:Toggle("Tự động cầu nguyện", pry, function(v280)
	_G.Pray = v280;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Pray then
				TP1(CFrame.new( -8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1);
			end
		end
	end);
end);
v33:Toggle("Tự động thử vận may", Trylux, function(v281)
	_G.Trylux = v281;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Trylux then
				TP1(CFrame.new( -8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115));
				wait();
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
			end
		end
	end);
end);
v33:Seperator("Bột");
local v56 = {
	["Cookie Crafter"] = CFrame.new( -2333.28052, 37.8239059, -12093.2861),
	["Cake Guard"] = CFrame.new( -1575.56433, 37.8238907, -12416.2529),
	["Baking Staff"] = CFrame.new( -1872.35742, 37.8239517, -12899.4248),
	["Head Baker"] = CFrame.new( -2223.1416, 53.5283203, -12854.752)
};
spawn(function()
	spawn(function()
		while task.wait(0.1) do
			if CakeBring then
				pcall(function()
					for v1525, v1526 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v1526.Name == "Cookie Crafter") or (v1526.Name == "Cake Guard") or (v1526.Name == "Baking Staff") or (v1526.Name == "Head Baker")) then
							local v1921 = v56[v1526.Name];
							if v1921 then
								v1526.HumanoidRootPart.CFrame = v1921;
							end
							v1526.Head.CanCollide = false;
							v1526.Humanoid.Sit = false;
							v1526.Humanoid:ChangeState(14);
							v1526.HumanoidRootPart.CanCollide = false;
							v1526.Humanoid.JumpPower = 0;
							v1526.Humanoid.WalkSpeed = 0;
							if v1526.Humanoid:FindFirstChild("Animator") then
								v1526.Humanoid:FindFirstChild("Animator"):Destroy();
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end);
			end
		end
	end);
end);
local v57 = v33:Label("Trạng Thái");
spawn(function()
	while wait() do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				v57:Set("Còn: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				v57:Set("Còn: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				v57:Set("Còn: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) );
			else
				v57:Set("Trùm Đã Xuất Hiện");
			end
		end);
	end
end);
v33:Toggle("Cày Tư Lệnh Bột", false, function(v282)
	_G.DoughtBoss = v282;
	StopTween(_G.DoughtBoss);
end);
v33:Toggle("Nhận Nhiệm Vụ Tư Lệnh Bột", true, function(v283)
	_G.QuestCake = v283;
end);
spawn(function()
	while wait() do
		if (_G.DoughtBoss and  not _G.QuestCake) then
			pcall(function()
				local v1410 = CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375);
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then
					for v1681, v1682 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1682.Name == "Cake Prince") or (v1682.Name == "Dough King")) then
							if (v1682:FindFirstChild("Humanoid") and v1682:FindFirstChild("HumanoidRootPart") and (v1682.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1682.HumanoidRootPart.CanCollide = false;
									v1682.Humanoid.WalkSpeed = 0;
									topos(v1682.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v1682.Parent or (v1682.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				else
					if (KillMob == 0) then
					end
					if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
						for v2153, v2154 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2154.Name == "Cookie Crafter") or (v2154.Name == "Cake Guard") or (v2154.Name == "Baking Staff") or (v2154.Name == "Head Baker")) then
								if (v2154:FindFirstChild("Humanoid") and v2154:FindFirstChild("HumanoidRootPart") and (v2154.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2154.HumanoidRootPart.CanCollide = false;
										v2154.Humanoid.WalkSpeed = 0;
										v2154.Head.CanCollide = false;
										CakeBring = true;
										PosMonDoughtOpenDoor = v2154.HumanoidRootPart.CFrame;
										topos(v2154.HumanoidRootPart.CFrame * Pos );
									until  not _G.DoughtBoss or  not v2154.Parent or (v2154.Humanoid.Health <= 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1410.Position).Magnitude > 3500) then
								BTP(v1410);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1410.Position).Magnitude < 3500) then
								topos(v1410);
							end
						else
							topos(v1410);
						end
						CakeBring = false;
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (_G.DoughtBoss and _G.QuestCake and World3) then
			pcall(function()
				local v1411 = CFrame.new( -2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.8030205e-8, 0.288177818, 6.930119e-8, 1, 7.519312e-8, -0.288177818, -5.2032135e-8, 0.957576931);
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then
					for v1683, v1684 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1684.Name == "Cake Prince") or (v1684.Name == "Dough King")) then
							if (v1684:FindFirstChild("Humanoid") and v1684:FindFirstChild("HumanoidRootPart") and (v1684.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1684.HumanoidRootPart.CanCollide = false;
									v1684.Humanoid.WalkSpeed = 0;
									topos(v1684.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v1684.Parent or (v1684.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				else
					if (KillMob == 0) then
					end
					local v1927 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
					if  not string.find(v1927, "Cookie Crafter") then
						CakeBring = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
					end
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
						CakeBring = false;
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1411.Position).Magnitude > 3500) then
								BTP(v1411);
							else
								topos(v1411);
							end
						else
							topos(v1411);
						end
						if ((v1411.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 1);
						end
					elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
							for v2368, v2369 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2369:FindFirstChild("HumanoidRootPart") and v2369:FindFirstChild("Humanoid") and (v2369.Humanoid.Health > 0)) then
									if ((v2369.Name == "Cookie Crafter") or (v2369.Name == "Cake Guard") or (v2369.Name == "Baking Staff") or (v2369.Name == "Head Baker")) then
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
											repeat
												wait();
												EquipWeapon(_G.SelectWeapon);
												AutoHaki();
												PosMonCake = v2369.HumanoidRootPart.CFrame;
												topos(v2369.HumanoidRootPart.CFrame * Pos );
												v2369.HumanoidRootPart.CanCollide = false;
												v2369.Humanoid.WalkSpeed = 0;
												v2369.Head.CanCollide = false;
												CakeBring = true;
												PosMonDoughtOpenDoor = v2369.HumanoidRootPart.CFrame;
											until  not _G.DoughtBoss or  not v2369.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) or (v2369.Humanoid.Health <= 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
										else
											CakeBring = false;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
										end
									end
								end
							end
						else
							CakeBring = false;
							if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(15, 10, 2) );
							end
						end
					end
				end
			end);
		end
	end
end);
v33:Toggle("Tự Động Triệu Hồi Tư Lệnh", false, function(v284)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", value);
end);
v33:Toggle("Vua bột tự động", _G.doughking, function(v285)
	_G.doughking = v285;
	StopTween(_G.doughking);
end);
v33:Toggle("Vua bột tự động Đổi Sever", _G.doughkingHop, function(v286)
	_G.doughkingHop = v286;
end);
spawn(function()
	while wait() do
		if (_G.doughking and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
					for v1685, v1686 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1686.Name == "Dough King") then
							if (v1686:FindFirstChild("Humanoid") and v1686:FindFirstChild("HumanoidRootPart") and (v1686.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1686.HumanoidRootPart.CanCollide = false;
									v1686.Humanoid.WalkSpeed = 0;
									v1686.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1686.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.doughking or  not v1686.Parent or (v1686.Humanoid.Health <= 0)
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -2662.818603515625, 1062.3480224609375, -11853.6953125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.doughkingHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v33:Seperator("Quan sát");
v33:Toggle("Cày Điểm Haki Quan Sát", _G.Observation, function(v287)
	_G.Observation = v287;
	StopTween(_G.Observation);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Observation then
				repeat
					task.wait();
					if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):SetKeyDown("0x65");
						wait(2);
						game:GetService("VirtualUser"):SetKeyUp("0x65");
					end
				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation
			end
		end);
	end
end);
v33:Toggle("Cày Điểm Haki Đổi Sever", _G.Observation_Hop, function(v288)
	_G.Observation_Hop = v288;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Observation then
				if (game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000) then
					wait(2);
				elseif World2 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)) + wait(1) ;
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new( -5478.39209, 15.9775667, -5246.9126));
					end
				elseif World1 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) ;
								wait(1);
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new(5533.29785, 88.1079102, 4852.3916));
					end
				elseif World3 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0) ;
							until (_G.Observation == false) or  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						else
							repeat
								task.wait();
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) ;
								wait(1);
								if ( not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and (_G.Observation_Hop == true)) then
									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
								end
							until (_G.Observation == false) or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
					end
				end
			end
		end
	end);
end);
v33:Seperator("Trùm");
local v58 = v33:Label("Trạng thái : Chọn Trùm");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss)) then
				v58:Set("Trạng thái : Có");
			else
				v58:Set("Trạng thái : Không");
			end
		end);
	end
end);
if World1 then
	v33:Dropdown("Chọn Trùm", {
		"The Gorilla King",
		"Bobby",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Saber Expert"
	}, function(v1174)
		_G.SelectBoss = v1174;
	end);
end
if World2 then
	v33:Dropdown("Chọn Trùm", {
		"Diamond",
		"Jeremy",
		"Fajita",
		"Don Swan",
		"Smoke Admiral",
		"Cursed Captain",
		"Darkbeard",
		"Order",
		"Awakened Ice Admiral",
		"Tide Keeper"
	}, function(v1175)
		_G.SelectBoss = v1175;
	end);
end
if World3 then
	v33:Dropdown("Chọn Trùm", {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"rip_indra True Form",
		"Longma",
		"Soul Reaper",
		"Cake Queen"
	}, function(v1176)
		_G.SelectBoss = v1176;
	end);
end
v33:Toggle("Đánh Trùm Đã Chọn", _G.FarmBoss, function(v289)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	_G.FarmBoss = v289;
	StopTween(_G.FarmBoss);
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v1687, v1688 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1688.Name == _G.SelectBoss) then
							if (v1688:FindFirstChild("Humanoid") and v1688:FindFirstChild("HumanoidRootPart") and (v1688.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1688.HumanoidRootPart.CanCollide = false;
									v1688.Humanoid.WalkSpeed = 0;
									v1688.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v1688.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v1688.Parent or (v1688.Humanoid.Health <= 0)
							end
						end
					end
				elseif game.ReplicatedStorage:FindFirstChild(_G.SelectBoss) then
					if ((game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500) then
						topos(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					else
						BTP(game.ReplicatedStorage:FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame);
					end
				end
			end);
		end
	end
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and  not BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v1689, v1690 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1690.Name == _G.SelectBoss) then
							if (v1690:FindFirstChild("Humanoid") and v1690:FindFirstChild("HumanoidRootPart") and (v1690.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1690.HumanoidRootPart.CanCollide = false;
									v1690.Humanoid.WalkSpeed = 0;
									v1690.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v1690.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v1690.Parent or (v1690.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7) );
				end
			end);
		end
	end
end);
v33:Toggle("Đánh Tất Cả Trùm", _G.AllBoss, function(v290)
	_G.AllBoss = v290;
	StopTween(_G.AllBoss);
end);
v33:Toggle("Đánh Tất Cả Trùm Đổi sever", _G.AllBossHop, function(v291)
	_G.AllBossHop = v291;
end);
spawn(function()
	while wait() do
		if _G.AllBoss then
			pcall(function()
				for v1460, v1461 in pairs(game.ReplicatedStorage:GetChildren()) do
					if ((v1461.Name == "rip_indra") or (v1461.Name == "Ice Admiral") or (v1461.Name == "Saber Expert") or (v1461.Name == "The Saw") or (v1461.Name == "Greybeard") or (v1461.Name == "Mob Leader") or (v1461.Name == "The Gorilla King") or (v1461.Name == "Bobby") or (v1461.Name == "Yeti") or (v1461.Name == "Vice Admiral") or (v1461.Name == "Warden") or (v1461.Name == "Chief Warden") or (v1461.Name == "Swan") or (v1461.Name == "Magma Admiral") or (v1461.Name == "Fishman Lord") or (v1461.Name == "Wysper") or (v1461.Name == "Thunder God") or (v1461.Name == "Cyborg") or (v1461.Name == "Don Swan") or (v1461.Name == "Diamond") or (v1461.Name == "Jeremy") or (v1461.Name == "Fajita") or (v1461.Name == "Smoke Admiral") or (v1461.Name == "Awakened Ice Admiral") or (v1461.Name == "Tide Keeper") or (v1461.Name == "Order") or (v1461.Name == "Darkbeard") or (v1461.Name == "Stone") or (v1461.Name == "Island Empress") or (v1461.Name == "Kilo Admiral") or (v1461.Name == "Captain Elephant") or (v1461.Name == "Beautiful Pirate") or (v1461.Name == "Cake Queen") or (v1461.Name == "rip_indra True Form") or (v1461.Name == "Longma") or (v1461.Name == "Soul Reaper") or (v1461.Name == "Cake Prince") or (v1461.Name == "Dough King")) then
						if ((v1461.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000) then
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.SelectWeapon);
								v1461.Humanoid.WalkSpeed = 0;
								v1461.HumanoidRootPart.CanCollide = false;
								v1461.Head.CanCollide = false;
								v1461.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
								topos(v1461.HumanoidRootPart.CFrame * Pos );
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v1461.Humanoid.Health <= 0) or (_G.AllBoss == false) or  not v1461.Parent
						end
					elseif _G.AllBossHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v34:Seperator("Cày Đặt");
v34:Toggle("Duy Chuyển Dạng Reset", BypassTP, function(v292)
	BypassTP = v292;
end);
v34:Seperator("Bay");
local v59 = {
	"100",
	"150",
	"250",
	"300",
	"325",
	"350"
};
getgenv().TweenSpeed = "325";
v34:Dropdown("Tốc Độ Bay", v59, function(v293)
	getgenv().TweenSpeed = v293;
end);
v34:Button("Dừng Bay", function()
	topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	_G.Clip = false;
end);
v34:Toggle("Gôm Quái", true, function(v295)
	_G.BringMonster = v295;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v1462, v1463 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v1463.Name == Mon) and ((Mon == "Factory Staff [Lv. 800]") or (Mon == "Monkey [Lv. 14]") or (Mon == "Dragon Crew Warrior [Lv. 1575]") or (Mon == "Dragon Crew Archer [Lv. 1600]")) and v1463:FindFirstChild("Humanoid") and v1463:FindFirstChild("HumanoidRootPart") and (v1463.Humanoid.Health > 0) and ((v1463.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220)) then
						v1463.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1463.HumanoidRootPart.CFrame = PosMon;
						v1463.Humanoid:ChangeState(14);
						v1463.HumanoidRootPart.CanCollide = false;
						v1463.Head.CanCollide = false;
						if v1463.Humanoid:FindFirstChild("Animator") then
							v1463.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v1463.Name == Mon) and v1463:FindFirstChild("Humanoid") and v1463:FindFirstChild("HumanoidRootPart") and (v1463.Humanoid.Health > 0) and ((v1463.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v1463.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1463.HumanoidRootPart.CFrame = PosMon;
						v1463.Humanoid:ChangeState(14);
						v1463.HumanoidRootPart.CanCollide = false;
						v1463.Head.CanCollide = false;
						if v1463.Humanoid:FindFirstChild("Animator") then
							v1463.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
				end
			end
		end);
	end
end);
local v61 = {
	"Ít",
	"Vừa",
	"Nhiều"
};
_G.BringMode = "Ít";
v34:Dropdown("Chế Độ Gôm Quái", v61, function(v296)
	_G.BringMode = v296;
end);
spawn(function()
	while wait(0.1) do
		if _G.BringMode then
			pcall(function()
				if (_G.BringMode == "Ít") then
					_G.BringMode = 250;
				elseif (_G.BringMode == "Vừa") then
					_G.BringMode = 300;
				elseif (_G.BringMode == "Nhiều") then
					_G.BringMode = 350;
				end
			end);
		end
	end
end);
v34:Toggle("Tự Động Mở Haki", true, function(v297)
	_G.Haki = v297;
end);
spawn(function()
	while wait(0.1) do
		if _G.Haki then
			if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local v1464 = {
					[1] = "Buso"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1464));
			end
		end
	end
end);
v34:Toggle("Tự Động Nhấp chuột", false, function(v298)
	_G.Click = v298;
end);
v34:Toggle("Tắt Thông Báo", false, function(v299)
	_G.Remove_trct = v299;
end);
spawn(function()
	while wait() do
		if _G.Remove_trct then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
		end
	end
end);
v34:Toggle("Tắt Dame", true, function(v300)
	_G.KobenHeegeen = v300;
end);
spawn(function()
	while wait() do
		if _G.KobenHeegeen then
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false;
		else
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true;
		end
	end
end);
spawn(function()
	while wait() do
		if _G.WhiteScreen then
			for v1412, v1413 in pairs(game.Workspace['_WorldOrigin']:GetChildren()) do
				if ((v1413.Name == "CurvedRing") or (v1413.Name == "SlashHit") or (v1413.Name == "DamageCounter") or (v1413.Name == "SwordSlash") or (v1413.Name == "SlashTail") or (v1413.Name == "Sounds")) then
					v1413:Destroy();
				end
			end
		end
	end
end);
v34:Toggle("Màng Hình Trắng", _G.WhiteScreen, function(v301)
	_G.WhiteScreen = v301;
	if (_G.WhiteScreen == true) then
		game:GetService("RunService"):Set3dRenderingEnabled(false);
	elseif (_G.WhiteScreen == false) then
		game:GetService("RunService"):Set3dRenderingEnabled(true);
	end
end);
v34:Toggle("Ẩn Quái", _G.inv, function(v302)
	_G.inv = v302;
	while wait() do
		if _G.inv then
			pcall(function()
				for v1465, v1466 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1466.ClassName == "MeshPart") then
						v1466.Transparency = 1;
					end
				end
				for v1467, v1468 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1468.Name == "Head") then
						v1468.Transparency = 1;
					end
				end
				for v1469, v1470 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1470.ClassName == "Accessory") then
						v1470.Handle.Transparency = 1;
					end
				end
				for v1471, v1472 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v1472.ClassName == "Decal") then
						v1472.Transparency = 1;
					end
				end
			end);
		end
	end
end);
v34:Seperator("Cày Đặt Cày Thông Thạo");
v34:Toggle("Kỹ năng Z", true, function(v303)
	_G.SkillZ = v303;
end);
v34:Toggle("Kỹ năng X", true, function(v304)
	_G.SkillX = v304;
end);
v34:Toggle("Kỹ năng C", true, function(v305)
	_G.SkillC = v305;
end);
v34:Toggle("Kỹ năng V", true, function(v306)
	_G.SkillV = v306;
end);
if (World1 or World2) then
	v35:Seperator("World");
end
if World1 then
	v35:Toggle("Tự Động Qua Biển 2", _G.SecondSea, function(v1177)
		_G.SecondSea = v1177;
		StopTween(_G.SecondSea);
	end);
	spawn(function()
		while wait() do
			if _G.SecondSea then
				pcall(function()
					local v1527 = game:GetService("Players").LocalPlayer.Data.Level.Value;
					if ((v1527 >= 700) and World1) then
						if ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							local v2129 = CFrame.new(4849.29883, 5.65138149, 719.611877);
							repeat
								topos(v2129);
								wait();
							until ((v2129.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
							wait(1.1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
							wait(0.5);
							EquipWeapon("Key");
							repeat
								topos(CFrame.new(1347.7124, 37.3751602, -1325.6488));
								wait();
							until ((Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
							wait(0.5);
						elseif ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
								for v2372, v2373 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2373.Name == "Ice Admiral") then
										if ( not v2373.Humanoid.Health <= 0) then
											if (v2373:FindFirstChild("Humanoid") and v2373:FindFirstChild("HumanoidRootPart") and (v2373.Humanoid.Health > 0)) then
												OldCFrameSecond = v2373.HumanoidRootPart.CFrame;
												repeat
													task.wait();
													AutoHaki();
													EquipWeapon(_G.SelectWeapon);
													v2373.HumanoidRootPart.CanCollide = false;
													v2373.Humanoid.WalkSpeed = 0;
													v2373.Head.CanCollide = false;
													v2373.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
													v2373.HumanoidRootPart.CFrame = OldCFrameSecond;
													topos(v2373.HumanoidRootPart.CFrame * Pos );
													sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
												until  not _G.SecondSea or  not v2373.Parent or (v2373.Humanoid.Health <= 0)
											end
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
										end
									end
								end
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5, 10, 7) );
							end
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v35:Toggle("Tự Động Qua Biển 3", _G.ThirdSea, function(v1178)
		_G.ThirdSea = v1178;
		StopTween(_G.ThirdSea);
	end);
	spawn(function()
		while wait() do
			if _G.ThirdSea then
				pcall(function()
					if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500) and World2) then
						_G.Level = false;
						if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "General") == 0) then
							topos(CFrame.new( -1926.3221435547, 12.819851875305, 1738.3092041016));
							if ((CFrame.new( -1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
							end
							wait(1.8);
							if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
								for v2255, v2256 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2256.Name == "rip_indra") then
										OldCFrameThird = v2256.HumanoidRootPart.CFrame;
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											topos(v2256.HumanoidRootPart.CFrame * Pos );
											v2256.HumanoidRootPart.CFrame = OldCFrameThird;
											v2256.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											v2256.HumanoidRootPart.CanCollide = false;
											v2256.Humanoid.WalkSpeed = 0;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.ThirdSea == false) or (v2256.Humanoid.Health <= 0) or  not v2256.Parent
									end
								end
							elseif ( not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and ((CFrame.new( -26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
								topos(CFrame.new( -26880.93359375, 22.848554611206, 473.18951416016));
							end
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v35:Toggle("Đánh Nhà Máy", _G.Factory, function(v1179)
		_G.Factory = v1179;
		StopTween(_G.Factory);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Factory then
					if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
						for v1963, v1964 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v1964.Name == "Core") and (v1964.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									topos(CFrame.new(448.46756, 199.356781, -441.389252));
								until (v1964.Humanoid.Health <= 0) or (_G.Factory == false)
							end
						end
					else
						topos(CFrame.new(448.46756, 199.356781, -441.389252));
					end
				end
			end);
		end
	end);
end
v35:Seperator("Võ");
v35:Toggle("Tự Động Superhuman", _G.Superhuman, function(v307)
	_G.Superhuman = v307;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Superhuman then
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or (game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 150000))) then
					UnEquipWeapon("Combat");
					wait(0.1);
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
				end
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) then
					_G.SelectWeapon = "Superhuman";
				end
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")) then
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299)) then
						_G.SelectWeapon = "Black Leg";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299)) then
						_G.SelectWeapon = "Electro";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299)) then
						_G.SelectWeapon = "Fishman Karate";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299)) then
						_G.SelectWeapon = "Dragon Claw";
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 300000)) then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 750000)) then
						UnEquipWeapon("Electro");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300) and (game:GetService("Players")['Localplayer'].Data.Fragments.Value >= 1500)) then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
					if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300) and (game:GetService("Players")['LocalPlayer'].Data.Beli.Value >= 3000000)) then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
					end
				end
			end
		end
	end);
end);
v35:Toggle("Tự Động Chân Đen", _G.DeathStep, function(v308)
	_G.DeathStep = v308;
end);
spawn(function()
	while wait() do
		wait();
		if _G.DeathStep then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.SelectWeapon = "Death Step";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449)) then
					_G.SelectWeapon = "Black Leg";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
			end
		end
	end
end);
v35:Toggle("Tự Động Võ Người Cá", _G.Sharkman, function(v309)
	_G.Sharkman = v309;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Sharkman then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")) then
						topos(CFrame.new( -2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
					else
						Ms = "Tide Keeper";
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							for v2257, v2258 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2258.Name == Ms) then
									OldCFrameShark = v2258.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2258.Head.CanCollide = false;
										v2258.Humanoid.WalkSpeed = 0;
										v2258.HumanoidRootPart.CanCollide = false;
										v2258.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v2258.HumanoidRootPart.CFrame = OldCFrameShark;
										topos(v2258.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until  not v2258.Parent or (v2258.Humanoid.Health <= 0) or (_G.Sharkman == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
								end
							end
						else
							topos(CFrame.new( -3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202));
							wait(3);
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end
			end
		end
	end);
end);
v35:Toggle("Tự Động Võ Điện", _G.ElectricClaw, function(v310)
	_G.ElectricClaw = v310;
	StopTween(_G.ElectricClaw);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.ElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.SelectWeapon = "Electric Claw";
					end
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399)) then
						_G.SelectWeapon = "Electro";
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
				end
			end
			if _G.ElectricClaw then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro")) then
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
						if (_G.Level == false) then
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10)
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						elseif (_G.Level == true) then
							_G.Level = false;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10)
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new( -10371.4717, 330.764496, -10131.4199));
							until  not _G.ElectricClaw or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new( -10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10)
							wait(1);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
							_G.SelectWeapon = "Electric Claw";
							wait(0.1);
							_G.Level = true;
						end
					end
				end
			end
		end
	end);
end);
v35:Toggle("Tự Động Võ Rồng", _G.DragonTalon, function(v311)
	_G.DragonTalon = v311;
end);
spawn(function()
	while wait() do
		if _G.DragonTalon then
			if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon")) then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.SelectWeapon = "Dragon Talon";
				end
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399)) then
					_G.SelectWeapon = "Dragon Claw";
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
			end
		end
	end
end);
v35:Toggle("Tự Động GodHuman", _G.God_Human, function(v312)
	_G.God_Human = v312;
end);
spawn(function()
	while task.wait() do
		if _G.God_Human then
			pcall(function()
				if (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and (game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400))) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
						end
					else
					end
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
						if ((game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400)) or (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400))) then
							if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
							end
						end
					else
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
				end
			end);
		end
	end
end);
v35:Seperator("Nguyên Liệu");
if World2 then
	v35:Toggle("Cày Vật Chất Phóng Xạ", false, function(v1180)
		Radioactive = v1180;
		StopTween(Radioactive);
	end);
	local v699 = CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312);
	spawn(function()
		while wait() do
			if (Radioactive and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
						for v1965, v1966 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1966.Name == "Factory Staff") then
								if (v1966:FindFirstChild("Humanoid") and v1966:FindFirstChild("HumanoidRootPart") and (v1966.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1966.HumanoidRootPart.CanCollide = false;
										v1966.Humanoid.WalkSpeed = 0;
										v1966.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1966.HumanoidRootPart.CFrame;
										topos(v1966.HumanoidRootPart.CFrame * Pos );
									until  not Radioactive or  not v1966.Parent or (v1966.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v699.Position).Magnitude > 3500) then
								BTP(v699);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v699.Position).Magnitude < 3500) then
								topos(v699);
							end
						else
							topos(v699);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Factory Staff").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World2 then
	v35:Toggle("Cày Giọt Nước Huyền Bí", false, function(v1181)
		_G.Makori_gay = v1181;
		StopTween(_G.Makori_gay);
	end);
	local v700 = CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875);
	spawn(function()
		while wait() do
			if (_G.Makori_gay and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
						for v1967, v1968 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1968.Name == "Water Fighter") then
								if (v1968:FindFirstChild("Humanoid") and v1968:FindFirstChild("HumanoidRootPart") and (v1968.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1968.HumanoidRootPart.CanCollide = false;
										v1968.Humanoid.WalkSpeed = 0;
										v1968.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1968.HumanoidRootPart.CFrame;
										topos(v1968.HumanoidRootPart.CFrame * Pos );
									until  not _G.Makori_gay or  not v1968.Parent or (v1968.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v700.Position).Magnitude > 3500) then
								BTP(v700);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v700.Position).Magnitude < 3500) then
								topos(v700);
							end
						else
							topos(v700);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Water Fighter").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or World2) then
	v35:Toggle("Cày Quặng Nham Thạch", _G.Makori_gay, function(v1182)
		_G.Umm = v1182;
		StopTween(_G.Umm);
	end);
	local v701 = CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875);
	spawn(function()
		while wait() do
			if (_G.Umm and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
						for v1969, v1970 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1970.Name == "Military Spy") then
								if (v1970:FindFirstChild("Humanoid") and v1970:FindFirstChild("HumanoidRootPart") and (v1970.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1970.HumanoidRootPart.CanCollide = false;
										v1970.Humanoid.WalkSpeed = 0;
										v1970.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1970.HumanoidRootPart.CFrame;
										topos(v1970.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v1970.Parent or (v1970.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v701.Position).Magnitude > 3500) then
								BTP(v701);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v701.Position).Magnitude < 3500) then
								topos(v701);
							end
						else
							topos(v701);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v702 = CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375);
	spawn(function()
		while wait() do
			if (_G.Umm and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
						for v1971, v1972 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1972.Name == "Lava Pirate") then
								if (v1972:FindFirstChild("Humanoid") and v1972:FindFirstChild("HumanoidRootPart") and (v1972.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1972.HumanoidRootPart.CanCollide = false;
										v1972.Humanoid.WalkSpeed = 0;
										v1972.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1972.HumanoidRootPart.CFrame;
										topos(v1972.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v1972.Parent or (v1972.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v702.Position).Magnitude > 3500) then
								BTP(v702);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v702.Position).Magnitude < 3500) then
								topos(v702);
							end
						else
							topos(v702);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World1 then
	v35:Toggle("Cày Đôi cánh thiên thần", _G.Makori_gay, function(v1183)
		_G.Wing = v1183;
		StopTween(_G.Wing);
	end);
	local v703 = CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait() do
			if (_G.Wing and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
						for v1973, v1974 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1974.Name == "Royal Soldier") then
								if (v1974:FindFirstChild("Humanoid") and v1974:FindFirstChild("HumanoidRootPart") and (v1974.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1974.HumanoidRootPart.CanCollide = false;
										v1974.Humanoid.WalkSpeed = 0;
										v1974.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1974.HumanoidRootPart.CFrame;
										topos(v1974.HumanoidRootPart.CFrame * Pos );
									until  not _G.Wing or  not v1974.Parent or (v1974.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v703.Position).Magnitude > 3500) then
								BTP(v703);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v703.Position).Magnitude < 3500) then
								topos(v703);
							end
						else
							topos(v703);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Royal Soldier").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or World2 or World3) then
	v35:Toggle("Cày Da", _G.Makori_gay, function(v1184)
		_G.Leather = v1184;
		StopTween(_G.Leather);
	end);
	local v704 = CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625);
	spawn(function()
		while wait() do
			if (_G.Leather and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
						for v1975, v1976 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1976.Name == "Pirate") then
								if (v1976:FindFirstChild("Humanoid") and v1976:FindFirstChild("HumanoidRootPart") and (v1976.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1976.HumanoidRootPart.CanCollide = false;
										v1976.Humanoid.WalkSpeed = 0;
										v1976.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1976.HumanoidRootPart.CFrame;
										topos(v1976.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v1976.Parent or (v1976.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v704.Position).Magnitude > 3500) then
								BTP(v704);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v704.Position).Magnitude < 3500) then
								topos(v704);
							end
						else
							topos(v704);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v705 = CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375);
	spawn(function()
		while wait() do
			if (_G.Leather and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
						for v1977, v1978 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1978.Name == "Marine Captain") then
								if (v1978:FindFirstChild("Humanoid") and v1978:FindFirstChild("HumanoidRootPart") and (v1978.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1978.HumanoidRootPart.CanCollide = false;
										v1978.Humanoid.WalkSpeed = 0;
										v1978.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1978.HumanoidRootPart.CFrame;
										topos(v1978.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v1978.Parent or (v1978.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v705.Position).Magnitude > 3500) then
								BTP(v705);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v705.Position).Magnitude < 3500) then
								topos(v705);
							end
						else
							topos(v705);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v706 = CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375);
	spawn(function()
		while wait() do
			if (_G.Leather and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
						for v1979, v1980 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1980.Name == "Jungle Pirate") then
								if (v1980:FindFirstChild("Humanoid") and v1980:FindFirstChild("HumanoidRootPart") and (v1980.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1980.HumanoidRootPart.CanCollide = false;
										v1980.Humanoid.WalkSpeed = 0;
										v1980.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1980.HumanoidRootPart.CFrame;
										topos(v1980.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v1980.Parent or (v1980.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v706.Position).Magnitude > 3500) then
								BTP(v706);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v706.Position).Magnitude < 3500) then
								topos(v706);
							end
						else
							topos(v706);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if (World1 or world2 or World3) then
	v35:Toggle("Cày Kim loại phế liệu", false, function(v1185)
		Scrap = v1185;
		StopTween(Scrap);
	end);
	local v707 = CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125);
	spawn(function()
		while wait() do
			if (Scrap and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
						for v1981, v1982 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1982.Name == "Brute") then
								if (v1982:FindFirstChild("Humanoid") and v1982:FindFirstChild("HumanoidRootPart") and (v1982.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1982.HumanoidRootPart.CanCollide = false;
										v1982.Humanoid.WalkSpeed = 0;
										v1982.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1982.HumanoidRootPart.CFrame;
										topos(v1982.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v1982.Parent or (v1982.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v707.Position).Magnitude > 3500) then
								BTP(v707);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v707.Position).Magnitude < 3500) then
								topos(v707);
							end
						else
							topos(v707);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Brute") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Brute").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v708 = CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125);
	spawn(function()
		while wait() do
			if (Scrap and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
						for v1983, v1984 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1984.Name == "Mercenary") then
								if (v1984:FindFirstChild("Humanoid") and v1984:FindFirstChild("HumanoidRootPart") and (v1984.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1984.HumanoidRootPart.CanCollide = false;
										v1984.Humanoid.WalkSpeed = 0;
										v1984.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1984.HumanoidRootPart.CFrame;
										topos(v1984.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v1984.Parent or (v1984.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v708.Position).Magnitude > 3500) then
								BTP(v708);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v708.Position).Magnitude < 3500) then
								topos(v708);
							end
						else
							topos(v708);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mercenary").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
	local v709 = CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875);
	spawn(function()
		while wait() do
			if (Scrap and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
						for v1985, v1986 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1986.Name == "Pirate Millionaire") then
								if (v1986:FindFirstChild("Humanoid") and v1986:FindFirstChild("HumanoidRootPart") and (v1986.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1986.HumanoidRootPart.CanCollide = false;
										v1986.Humanoid.WalkSpeed = 0;
										v1986.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1986.HumanoidRootPart.CFrame;
										topos(v1986.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v1986.Parent or (v1986.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v709.Position).Magnitude > 3500) then
								BTP(v709);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v709.Position).Magnitude < 3500) then
								topos(v709);
							end
						else
							topos(v709);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pirate Millionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Cày Bột Ca cao", false, function(v1186)
		Cocoafarm = v1186;
		StopTween(Cocoafarm);
	end);
	local v710 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375);
	spawn(function()
		while wait() do
			if (Cocoafarm and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
						for v1987, v1988 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1988.Name == "Chocolate Bar Battler") then
								if (v1988:FindFirstChild("Humanoid") and v1988:FindFirstChild("HumanoidRootPart") and (v1988.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1988.HumanoidRootPart.CanCollide = false;
										v1988.Humanoid.WalkSpeed = 0;
										v1988.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1988.HumanoidRootPart.CFrame;
										topos(v1988.HumanoidRootPart.CFrame * Pos );
									until  not Cocoafarm or  not v1988.Parent or (v1988.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v710.Position).Magnitude > 3500) then
								BTP(v710);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v710.Position).Magnitude < 3500) then
								topos(v710);
							end
						else
							topos(v710);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chocolate Bar Battler").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Cày Vảy Rồng", false, function(v1187)
		Dragon_Scale = v1187;
		StopTween(Dragon_Scale);
	end);
	local v711 = CFrame.new(6752, 565, 315);
	spawn(function()
		while wait() do
			if (Dragon_Scale and World3) then
				pcall(function()
					if (game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior")) then
						for v1989, v1990 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v1990.Name == "Dragon Crew Archer") or (v1990.Name == "Dragon Crew Warrior")) then
								if (v1990:FindFirstChild("Humanoid") and v1990:FindFirstChild("HumanoidRootPart") and (v1990.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1990.HumanoidRootPart.CanCollide = false;
										v1990.Humanoid.WalkSpeed = 0;
										v1990.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1990.HumanoidRootPart.CFrame;
										topos(v1990.HumanoidRootPart.CFrame * Pos );
									until  not Dragon_Scale or  not v1990.Parent or (v1990.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v711.Position).Magnitude > 3500) then
								BTP(v711);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v711.Position).Magnitude < 3500) then
								topos(v711);
							end
						else
							topos(v711);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(6752, 565, 315));
						if (game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") or game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior")) then
							if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Archer").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
							end
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Cày Thuốc Súng", false, function(v1188)
		Gunpowder = v1188;
		StopTween(Gunpowder);
	end);
	local v712 = CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875);
	spawn(function()
		while wait() do
			if (Gunpowder and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
						for v1991, v1992 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1992.Name == "Pistol Billionaire") then
								if (v1992:FindFirstChild("Humanoid") and v1992:FindFirstChild("HumanoidRootPart") and (v1992.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1992.HumanoidRootPart.CanCollide = false;
										v1992.Humanoid.WalkSpeed = 0;
										v1992.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1992.HumanoidRootPart.CFrame;
										topos(v1992.HumanoidRootPart.CFrame * Pos );
									until  not Gunpowder or  not v1992.Parent or (v1992.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v712.Position).Magnitude > 3500) then
								BTP(v712);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v712.Position).Magnitude < 3500) then
								topos(v712);
							end
						else
							topos(v712);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Pistol Billionaire").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Cày Đuôi Cá", false, function(v1189)
		Fish = v1189;
		StopTween(Fish);
	end);
	local v713 = CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875);
	spawn(function()
		while wait() do
			if (Fish and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
						for v1993, v1994 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1994.Name == "Fishman Captain") then
								if (v1994:FindFirstChild("Humanoid") and v1994:FindFirstChild("HumanoidRootPart") and (v1994.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1994.HumanoidRootPart.CanCollide = false;
										v1994.Humanoid.WalkSpeed = 0;
										v1994.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1994.HumanoidRootPart.CFrame;
										topos(v1994.HumanoidRootPart.CFrame * Pos );
									until  not Fish or  not v1994.Parent or (v1994.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v713.Position).Magnitude > 3500) then
								BTP(v713);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v713.Position).Magnitude < 3500) then
								topos(v713);
							end
						else
							topos(v713);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Fishman Captain").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
if World3 then
	v35:Toggle("Cày Sừng Tê Giác", false, function(v1190)
		MiniHee = v1190;
		StopTween(MiniHee);
	end);
	local v714 = CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125);
	spawn(function()
		while wait() do
			if (MiniHee and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
						for v1995, v1996 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v1996.Name == "Mythological Pirate") then
								if (v1996:FindFirstChild("Humanoid") and v1996:FindFirstChild("HumanoidRootPart") and (v1996.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v1996.HumanoidRootPart.CanCollide = false;
										v1996.Humanoid.WalkSpeed = 0;
										v1996.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v1996.HumanoidRootPart.CFrame;
										topos(v1996.HumanoidRootPart.CFrame * Pos );
									until  not MiniHee or  not v1996.Parent or (v1996.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v714.Position).Magnitude > 3500) then
								BTP(v714);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v714.Position).Magnitude < 3500) then
								topos(v714);
							end
						else
							topos(v714);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mythological Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif _G.StardHop then
							Hop();
						end
					end
				end);
			end
		end
	end);
end
v35:Seperator("nâng cao");
v35:Toggle("Tự động đột kích Phoenix", _G.AdvanceDungeon, function(v313)
	_G.AdvanceDungeon = v313;
	StopTween(_G.AdvanceDungeon);
end);
spawn(function()
	while wait() do
		if _G.AdvanceDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix")) then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							topos(CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
						if (game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400) then
							topos(CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875));
							if ((CFrame.new( -2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
								wait(1.5);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Check");
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist", "Heal");
							end
						end
					end
				end
			end);
		end
	end
end);
v35:Label("Biển 1");
v35:Seperator("Saw");
v35:Toggle("Đánh Sharks saw", _G.doughking, function(v314)
	_G.saw = v314;
	StopTween(_G.saw);
end);
v35:Toggle("Đánh Shark Saw Đổi Sever", _G.doughkingHop, function(v315)
	_G.sawhop = v315;
end);
local v62 = CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094);
spawn(function()
	while wait() do
		if (_G.saw and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
					for v1699, v1700 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1700.Name == "The Saw") then
							if (v1700:FindFirstChild("Humanoid") and v1700:FindFirstChild("HumanoidRootPart") and (v1700.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1700.HumanoidRootPart.CanCollide = false;
									v1700.Humanoid.WalkSpeed = 0;
									v1700.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1700.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.saw or  not v1700.Parent or (v1700.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v62.Position).Magnitude > 3500) then
							BTP(v62);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v62.Position).Magnitude < 3500) then
							topos(v62);
						end
					else
						topos(v62);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094));
					if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2, 40, 2) );
					elseif _G.sawhop then
						Hop();
					end
				end
			end);
		end
	end
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if (_G.FarmSwanGlasses and _G.FarmSwanGlasses_Hop and World2 and  not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]")) then
				Hop();
			end
		end
	end);
end);
v35:Seperator("Thanh kiếm Waden");
v35:Toggle("Lấy kiếm Waden", _G.waden, function(v316)
	_G.waden = v316;
	StopTween(_G.waden);
end);
v35:Toggle("kiếm Waden Đổi Sever", _G.wadenhop, function(v317)
	_G.wadenhop = v317;
end);
local v63 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
spawn(function()
	while wait() do
		if (_G.waden and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
					for v1701, v1702 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1702.Name == "Chief Warden") then
							if (v1702:FindFirstChild("Humanoid") and v1702:FindFirstChild("HumanoidRootPart") and (v1702.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1702.HumanoidRootPart.CanCollide = false;
									v1702.Humanoid.WalkSpeed = 0;
									v1702.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1702.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.waden or  not v1702.Parent or (v1702.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude > 3500) then
							BTP(TridentPos);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TridentPos.Position).Magnitude < 3500) then
							topos(TridentPos);
						end
					else
						topos(TridentPos);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.wadenhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Râu Xám");
v35:Toggle("Đánh Râu Xám", _G.doughking, function(v318)
	_G.gay = v318;
	StopTween(_G.gay);
end);
v35:Toggle("Đánh Râu Xám Đổi Sever", _G.doughkingHop, function(v319)
	_G.gayhop = v319;
end);
local v64 = CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375);
spawn(function()
	while wait() do
		if (_G.gay and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
					for v1703, v1704 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1704.Name == "Greybeard") then
							if (v1704:FindFirstChild("Humanoid") and v1704:FindFirstChild("HumanoidRootPart") and (v1704.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1704.HumanoidRootPart.CanCollide = false;
									v1704.Humanoid.WalkSpeed = 0;
									v1704.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1704.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.gay or  not v1704.Parent or (v1704.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v64.Position).Magnitude > 3500) then
							BTP(v64);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v64.Position).Magnitude < 3500) then
							topos(v64);
						end
					else
						topos(v64);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.gayhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Saber");
v35:Toggle("Tự Động Lấy Saber", _G.Saber, function(v320)
	_G.Saber = v320;
	StopTween(_G.Saber);
end);
v35:Toggle("Saber Đổi Sever", _G.SaberHop, function(v321)
	_G.SaberHop = v321;
end);
spawn(function()
	while task.wait() do
		if (_G.Saber and (game.Players.LocalPlayer.Data.Level.Value >= 200)) then
			pcall(function()
				if (game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0) then
					if (game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0) then
						if ((CFrame.new( -1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
							topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame;
							wait(1);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame;
							wait(1);
						else
							topos(CFrame.new( -1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, -0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, -4.398698e-8, 0.37091279));
						end
					elseif (game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0) then
						if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch")) then
							EquipWeapon("Torch");
							topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.2879909e-9, 0.761243105, -5.706529e-10, 1, 1.2058454e-9, -0.761243105, 3.4754488e-10, -0.648466587));
						else
							topos(CFrame.new( -1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408));
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
						wait(0.5);
						EquipWeapon("Cup");
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup);
						wait(0);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")) then
							topos(CFrame.new( -2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
							for v2444, v2445 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2445.Name == "Mob Leader") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
										if (v2445:FindFirstChild("Humanoid") and v2445:FindFirstChild("HumanoidRootPart") and (v2445.Humanoid.Health > 0)) then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v2445.HumanoidRootPart.CanCollide = false;
												v2445.Humanoid.WalkSpeed = 0;
												v2445.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
												topos(v2445.HumanoidRootPart.CFrame * Pos );
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											until (v2445.Humanoid.Health <= 0) or  not _G.Saber
										end
									end
									if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode );
									end
								end
							end
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
						wait(0.5);
						EquipWeapon("Relic");
						wait(0.5);
						topos(CFrame.new( -1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494));
					end
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")) then
					for v1997, v1998 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1998:FindFirstChild("Humanoid") and v1998:FindFirstChild("HumanoidRootPart") and (v1998.Humanoid.Health > 0)) then
							if (v1998.Name == "Saber Expert") then
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v1998.HumanoidRootPart.CFrame * Pos );
									v1998.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									v1998.HumanoidRootPart.Transparency = 1;
									v1998.Humanoid.JumpPower = 0;
									v1998.Humanoid.WalkSpeed = 0;
									v1998.HumanoidRootPart.CanCollide = false;
									FarmPos = v1998.HumanoidRootPart.CFrame;
									MonFarm = v1998.Name;
								until (v1998.Humanoid.Health <= 0) or  not _G.Saber
								if (v1998.Humanoid.Health <= 0) then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
								end
							end
						end
					end
				end
			end);
		end
	end
end);
v35:Seperator("Lôi Thể");
v35:Toggle("Lấy Gậy Lôi Thể v1", _G.doughking, function(v322)
	_G.pole = v322;
	StopTween(_G.pole);
end);
v35:Toggle("Gậy Lôi Thể Đổi Sever", _G.doughkingHop, function(v323)
	_G.polehop = v323;
end);
local v65 = CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625);
spawn(function()
	while wait() do
		if (_G.pole and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
					for v1705, v1706 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1706.Name == "Thunder God") then
							if (v1706:FindFirstChild("Humanoid") and v1706:FindFirstChild("HumanoidRootPart") and (v1706.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1706.HumanoidRootPart.CanCollide = false;
									v1706.Humanoid.WalkSpeed = 0;
									v1706.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1706.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.pole or  not v1706.Parent or (v1706.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v65.Position).Magnitude > 3500) then
							BTP(v65);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v65.Position).Magnitude < 3500) then
							topos(v65);
						end
					else
						topos(TridentPos);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.polehop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Label("Biển 2");
v35:Seperator("Kiếm Huyền Thoại");
v35:Toggle("Mua Kiếm Huyền Thoại", _G.BuyLegendarySword, function(v324)
	_G.BuyLegendarySword = v324;
end);
spawn(function()
	while wait() do
		if _G.BuyLegendarySword then
			pcall(function()
				local v1414 = {
					[1] = "LegendarySwordDealer",
					[2] = "1"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1414));
				local v1414 = {
					[1] = "LegendarySwordDealer",
					[2] = "2"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1414));
				local v1414 = {
					[1] = "LegendarySwordDealer",
					[2] = "3"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1414));
				if (_G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2) then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
v35:Toggle("Kiếm Huyền Thoại Đổi Sever", _G.BuyLegendarySword_Hop, function(v325)
	_G.BuyLegendarySword_Hop = v325;
end);
v35:Seperator("Haki Màu");
local v66 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1");
v35:Toggle("Mua Haki Màu", _G.BuyEnchancementColour, function(v326)
	_G.BuyEnchancementColour = v326;
end);
v35:Toggle("Haki Màu Đổi Sever", _G.BuyEnchancementColour_Hop, function(v327)
	_G.BuyEnchancementColour_Hop = v327;
end);
spawn(function()
	while wait() do
		if _G.BuyEnchancementColour then
			local v1317 = {
				[1] = "ColorsDealer",
				[2] = "2"
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1317));
			if (_G.BuyEnchancementColour_Hop and _G.BuyEnchancementColour and  not World1) then
				wait(10);
				Hop();
			end
		end
	end
end);
v35:Seperator("Bartlio");
v35:Toggle("Làm Nhiệm Vụ Bartlio", _G.Bartilo, function(v328)
	_G.Bartilo = v328;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Bartilo then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
							Ms = "Swan Pirate";
							for v2155, v2156 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2156.Name == Ms) then
									pcall(function()
										repeat
											task.wait();
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2156.HumanoidRootPart.Transparency = 1;
											v2156.HumanoidRootPart.CanCollide = false;
											v2156.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2156.HumanoidRootPart.CFrame * Pos );
											PosMonBarto = v2156.HumanoidRootPart.CFrame;
											AutoBartiloBring = true;
										until  not v2156.Parent or (v2156.Humanoid.Health <= 0) or (_G.Bartilo == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
										AutoBartiloBring = false;
									end);
								end
							end
						else
							repeat
								topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582));
								wait();
							until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.5513712e-8, -0.230443969, 2.6702471e-8, 1, 8.474911e-8, 0.230443969, 7.631471e-8, -0.973085582)).Magnitude <= 10)
						end
					else
						repeat
							topos(CFrame.new( -456.28952, 73.0200958, 299.895966));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1)) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
						Ms = "Jeremy";
						for v2157, v2158 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2158.Name == Ms) then
								OldCFrameBartlio = v2158.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									v2158.HumanoidRootPart.Transparency = 1;
									v2158.HumanoidRootPart.CanCollide = false;
									v2158.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2158.HumanoidRootPart.CFrame = OldCFrameBartlio;
									topos(v2158.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not v2158.Parent or (v2158.Humanoid.Health <= 0) or (_G.Bartilo == false)
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
						repeat
							topos(CFrame.new( -456.28952, 73.0200958, 299.895966));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -456.28952, 73.0200958, 299.895966)).Magnitude <= 10)
						wait(1.1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo");
						wait(1);
						repeat
							topos(CFrame.new(2099.88159, 448.931, 648.997375));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
						wait(2);
					else
						repeat
							topos(CFrame.new(2099.88159, 448.931, 648.997375));
							wait();
						until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10)
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2)) then
					repeat
						topos(CFrame.new( -1850.49329, 13.1789551, 1750.89685));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1858.87305, 19.3777466, 1712.01807));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1803.94324, 16.5789185, 1750.89685));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1858.55835, 16.8604317, 1724.79541));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1869.54224, 15.987854, 1681.00659));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1869.54224, 15.987854, 1681.00659)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1800.0979, 16.4978027, 1684.52368));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1819.26343, 14.795166, 1717.90625));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1819.26343, 14.795166, 1717.90625)).Magnitude <= 10)
					wait(1);
					repeat
						topos(CFrame.new( -1813.51843, 14.8604736, 1724.79541));
						wait();
					until  not _G.Bartilo or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10)
				end
			end
		end
	end);
end);
v35:Seperator("Kính Thiên Nga");
v35:Toggle("Lấy Kính Thiên Nga", _G.FarmSwanGlasses, function(v329)
	_G.FarmSwanGlasses = v329;
	StopTween(_G.FarmSwanGlasses);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.FarmSwanGlasses then
				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
					for v1707, v1708 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1708.Name == "Don Swan") and (v1708.Humanoid.Health > 0) and v1708:IsA("Model") and v1708:FindFirstChild("Humanoid") and v1708:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1708.HumanoidRootPart.CanCollide = false;
									v1708.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1708.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								end);
							until (_G.FarmSwanGlasses == false) or (v1708.Humanoid.Health <= 0)
						end
					end
				else
					repeat
						task.wait();
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
					until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) or (_G.FarmSwanGlasses == false)
				end
			end
		end
	end);
end);
v35:Toggle("Kính Thiên Nga Đổi Sever", _G.FarmSwanGlasses_Hop, function(v330)
	_G.FarmSwanGlasses_Hop = v330;
end);
v35:Toggle("Tự Động Nâng Tộc V2", _G.EvoRace, function(v331)
	_G.EvoRace = v331;
	StopTween(_G.EvoRace);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EvoRace then
				if  not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0) then
						topos(CFrame.new( -2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.390141e-8, -0.68292886, 3.5996322e-8, 1, 5.5066703e-8, 0.68292886, 1.5642467e-8, -0.730484903));
						if ((Vector3.new( -2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
							wait(1.3);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2");
						end
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1) then
						pcall(function()
							if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1")) then
								topos(game:GetService("Workspace").Flower1.CFrame);
							elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2")) then
								topos(game:GetService("Workspace").Flower2.CFrame);
							elseif ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3")) then
								if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
									for v2451, v2452 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v2452.Name == "Zombie") then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												topos(v2452.HumanoidRootPart.CFrame * Pos );
												v2452.HumanoidRootPart.CanCollide = false;
												v2452.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonEvo = v2452.HumanoidRootPart.CFrame;
												StartEvoMagnet = true;
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or  not v2452.Parent or (v2452.Humanoid.Health <= 0) or (_G.EvoRace == false)
											StartEvoMagnet = false;
										end
									end
								else
									StartEvoMagnet = false;
									topos(CFrame.new( -5685.9233398438, 48.480125427246, -853.23724365234));
								end
							end
						end);
					elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3");
					end
				end
			end
		end
	end);
end);
v35:Seperator("Vật Chất Kì Dị");
v35:Toggle("Cày Vật Chất Kì Dị", _G.Ectoplasm, function(v332)
	_G.Ectoplasm = v332;
	StopTween(_G.Ectoplasm);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Ectoplasm then
				if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then
					for v1709, v1710 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1710.Name == "Ship Deckhand") or (v1710.Name == "Ship Engineer") or (v1710.Name == "Ship Steward") or (v1710.Name == "Ship Officer")) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								if string.find(v1710.Name, "Ship") then
									v1710.HumanoidRootPart.CanCollide = false;
									v1710.Head.CanCollide = false;
									v1710.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1710.HumanoidRootPart.CFrame * Pos );
									EctoplasmMon = v1710.HumanoidRootPart.CFrame;
									StartEctoplasmMagnet = true;
								else
									StartEctoplasmMagnet = false;
									topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
								end
							until (_G.Ectoplasm == false) or  not v1710.Parent or (v1710.Humanoid.Health <= 0)
						end
					end
				else
					topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					StartEctoplasmMagnet = false;
					local v1528 = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
					if (v1528 > 18000) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
					end
					topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
				end
			end
		end
	end);
end);
v35:Seperator("Rengoku");
v35:Toggle("Lấy Rengoku", _G.Rengoku, function(v333)
	_G.Rengoku = v333;
	StopTween(_G.Rengoku);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Rengoku then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key")) then
					EquipWeapon("Hidden Key");
					topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875));
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")) then
					for v1999, v2000 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (((v2000.Name == "Snow Lurker") or (v2000.Name == "Arctic Warrior")) and (v2000.Humanoid.Health > 0)) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v2000.HumanoidRootPart.CanCollide = false;
								v2000.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								RengokuMon = v2000.HumanoidRootPart.CFrame;
								topos(v2000.HumanoidRootPart.CFrame * Pos );
								StartRengokuMagnet = true;
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (_G.Rengoku == false) or  not v2000.Parent or (v2000.Humanoid.Health <= 0)
							StartRengokuMagnet = false;
						end
					end
				else
					StartRengokuMagnet = false;
					topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188));
				end
			end
		end
	end);
end);
v35:Seperator("Trident");
v35:Toggle("Lấy Dragon Trident", _G.Dragon_Trident, function(v334)
	_G.Dragon_Trident = v334;
	StopTween(_G.Dragon_Trident);
end);
v35:Toggle("Lấy Dragon Trident Đổi Sever", _G.Dragon_Trident_Hop, function(v335)
	_G.Dragon_Trident_Hop = v335;
end);
local v67 = CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125);
spawn(function()
	while wait() do
		if (_G.Dragon_Trident and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
					for v1711, v1712 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1712.Name == "Tide Keeper") then
							if (v1712:FindFirstChild("Humanoid") and v1712:FindFirstChild("HumanoidRootPart") and (v1712.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1712.HumanoidRootPart.CanCollide = false;
									v1712.Humanoid.WalkSpeed = 0;
									v1712.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.Dragon_Trident or  not v1712.Parent or (v1712.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v67.Position).Magnitude > 3500) then
							BTP(v67);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v67.Position).Magnitude < 3500) then
							topos(v67);
						end
					else
						topos(v67);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.Dragon_Trident_Hop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Label("Biển 3");
v35:Seperator("Rip Indra");
v35:Toggle("Đánh Rip_Indra True", _G.DarkDagger, function(v336)
	_G.DarkDagger = v336;
	StopTween(_G.DarkDagger);
end);
local v68 = CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781);
spawn(function()
	pcall(function()
		while wait() do
			if _G.DarkDagger then
				if (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")) then
					for v1713, v1714 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v1714.Name == ("rip_indra True Form" or (v1714.Name == "rip_indra"))) and (v1714.Humanoid.Health > 0) and v1714:IsA("Model") and v1714:FindFirstChild("Humanoid") and v1714:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1714.HumanoidRootPart.CanCollide = false;
									v1714.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1714.HumanoidRootPart.CFrame * Pos );
								end);
							until (_G.DarkDagger == false) or (v1714.Humanoid.Health <= 0)
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v68.Position).Magnitude > 3500) then
							BTP(v68);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v68.Position).Magnitude < 3500) then
							topos(v68);
						end
					else
						topos(v68);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781));
				end
			end
		end
	end);
end);
v35:Toggle("Rip_Indra True Đổi Sever", _G.DarkDagger_Hop, function(v337)
	_G.DarkDagger_Hop = v337;
end);
spawn(function()
	pcall(function()
		while wait() do
			if (_G.DarkDagger_Hop and _G.DarkDagger and World3 and  not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and  not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")) then
				Hop();
			end
		end
	end);
end);
v35:Toggle("Tự động nhấn nút Haki", _G.Ob_Color, function(v338)
	Open_Color_Haki = v338;
	StopTween(Open_Color_Haki);
end);
spawn(function()
	while wait(0.3) do
		pcall(function()
			if Open_Color_Haki then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
				wait(0.5);
				repeat
					topos(CFrame.new( -5420.16602, 1084.9657, -2666.8208));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10)
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
				wait(0.5);
				repeat
					topos(CFrame.new( -5414.41357, 309.865753, -2212.45776));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -5414.41357, 309.865753, -2212.45776)).Magnitude <= 10)
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White");
				wait(0.5);
				repeat
					topos(CFrame.new( -4971.47559, 331.565765, -3720.02954));
					wait();
				until (_G.StopTween == true) or (Open_Color_Haki == false) or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -4971.47559, 331.565765, -3720.02954)).Magnitude <= 10)
				wait(0.5);
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
				wait(3);
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 600));
			end
		end);
	end
end);
function EquipAllWeapon()
	pcall(function()
		for v1191, v1192 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if (v1192:IsA("Tool") and  not ((v1192.Name == "Summon Sea Beast") or (v1192.Name == "Water Body") or (v1192.Name == "Awakening"))) then
				local v1415 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1192.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1415);
				wait(1);
			end
		end
	end);
end
v35:Seperator("Yama");
v35:Toggle("Lấy Yama", _G.Yama, function(v339)
	_G.Yama = v339;
	StopTween(_G.Yama);
end);
spawn(function()
	while wait() do
		if _G.Yama then
			if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
				repeat
					wait(0.1);
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama
			end
		end
	end
end);
v35:Seperator("Musketeer");
v35:Toggle("Lấy Musketeer Hat", _G.MusketeerHat, function(v340)
	_G.MusketeerHat = v340;
	StopTween(_G.MusketeerHat);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.MusketeerHat then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
							for v2163, v2164 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2164.Name == "Forest Pirate") then
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2164.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2164.HumanoidRootPart.CFrame * Pos );
											v2164.HumanoidRootPart.CanCollide = false;
											MusketeerHatMon = v2164.HumanoidRootPart.CFrame;
											StartMagnetMusketeerhat = true;
										end);
									until (_G.MusketeerHat == false) or  not v2164.Parent or (v2164.Humanoid.Health <= 0) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
									StartMagnetMusketeerhat = false;
								end
							end
						else
							StartMagnetMusketeerhat = false;
							topos(CFrame.new( -13206.452148438, 425.89199829102, -7964.5537109375));
						end
					else
						topos(CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125));
						if ((Vector3.new( -12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
						end
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false)) then
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for v2260, v2261 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2261.Name == "Captain Elephant") then
									OldCFrameElephant = v2261.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2261.HumanoidRootPart.CanCollide = false;
											v2261.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2261.HumanoidRootPart.CFrame * Pos );
											v2261.HumanoidRootPart.CanCollide = false;
											v2261.HumanoidRootPart.CFrame = OldCFrameElephant;
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										end);
									until (_G.MusketeerHat == false) or (v2261.Humanoid.Health <= 0) or  not v2261.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
								end
							end
						else
							topos(CFrame.new( -13374.889648438, 421.27752685547, -8225.208984375));
						end
					else
						topos(CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125));
						if ((CFrame.new( -12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
							wait(1.5);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
						end
					end
				elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2)) then
					topos(CFrame.new( -12512.138671875, 340.39279174805, -9872.8203125));
				end
			end
		end
	end);
end);
v35:Seperator("Twin Hook");
v35:Toggle("Lấy Twin Hook", _G.TwinHook, function(v341)
	_G.TwinHook = v341;
	StopTween(_G.TwinHook);
end);
v35:Toggle("Lấy Twin Hook Đổi Sever", _G.TwinHook_Hop, function(v342)
	_G.TwinHook_Hop = v342;
end);
local v69 = CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625);
spawn(function()
	while wait() do
		if (_G.TwinHook and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
					for v1715, v1716 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1716.Name == "Captain Elephant") then
							if (v1716:FindFirstChild("Humanoid") and v1716:FindFirstChild("HumanoidRootPart") and (v1716.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1716.HumanoidRootPart.CanCollide = false;
									v1716.Humanoid.WalkSpeed = 0;
									v1716.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1716.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.TwinHook or  not v1716.Parent or (v1716.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v69.Position).Magnitude > 3500) then
							BTP(v69);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v69.Position).Magnitude < 3500) then
							topos(v69);
						end
					else
						topos(v69);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.TwinHook_Hop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Haki");
v35:Toggle("Lấy Haki Màu", _G.Rainbow_Haki, function(v343)
	_G.Rainbow_Haki = v343;
	StopTween(_G.Rainbow_Haki);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Rainbow_Haki then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					topos(CFrame.new( -11892.0703125, 930.57672119141, -8760.1591796875));
					if ((Vector3.new( -11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
						wait(1.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
						for v2165, v2166 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2166.Name == "Stone") then
								OldCFrameRainbow = v2166.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2166.HumanoidRootPart.CFrame * Pos );
									v2166.HumanoidRootPart.CanCollide = false;
									v2166.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v2166.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2166.Humanoid.Health <= 0) or  not v2166.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new( -1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.000020325184, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
						for v2263, v2264 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2264.Name == "Island Empress") then
								OldCFrameRainbow = v2264.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2264.HumanoidRootPart.CFrame * Pos );
									v2264.HumanoidRootPart.CanCollide = false;
									v2264.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v2264.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2264.Humanoid.Health <= 0) or  not v2264.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, "-0", -0.994878292, "-0", 1, "-0", 0.994878292, 0, -0.101080291));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
						for v2385, v2386 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2386.Name == "Kilo Admiral") then
								OldCFrameRainbow = v2386.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2386.HumanoidRootPart.CFrame * Pos );
									v2386.HumanoidRootPart.CanCollide = false;
									v2386.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2386.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2386.Humanoid.Health <= 0) or  not v2386.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, "-0", -0.143904909, "-0", 1.00000012, "-0", 0.143904924, 0, -0.989591479));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
						for v2428, v2429 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2429.Name == "Captain Elephant") then
								OldCFrameRainbow = v2429.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2429.HumanoidRootPart.CFrame * Pos );
									v2429.HumanoidRootPart.CanCollide = false;
									v2429.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2429.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2429.Humanoid.Health <= 0) or  not v2429.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new( -13485.0283, 331.709259, -8012.4873, 0.714521289, 7.988499e-8, 0.69961375, -1.0206575e-7, 1, -9.943831e-9, -0.69961375, -6.4301524e-8, 0.714521289));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
						for v2447, v2448 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2448.Name == "Beautiful Pirate") then
								OldCFrameRainbow = v2448.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2448.HumanoidRootPart.CFrame * Pos );
									v2448.HumanoidRootPart.CanCollide = false;
									v2448.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2448.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2448.Humanoid.Health <= 0) or  not v2448.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359));
					end
				else
					topos(CFrame.new( -11892.0703125, 930.57672119141, -8760.1591796875));
					if ((Vector3.new( -11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
						wait(1.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
					end
				end
			end
		end
	end);
end);
v35:Toggle("Lấy Haki Quan Sát V2", _G.Observationv2, function(v344)
	_G.Observationv2 = v344;
	StopTween(_G.Observationv2);
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Observationv2 then
				if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3) then
					_G.MusketeerHat = false;
					if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) then
						repeat
							topos(CFrame.new( -12444.78515625, 332.40396118164, -7673.1806640625));
							wait();
						until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10)
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
					elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl")) then
						repeat
							topos(CFrame.new( -10920.125, 624.20275878906, -10266.995117188));
							wait();
						until  not _G.Observationv2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new( -10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10)
						wait(0.5);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start");
						wait(1);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
					else
						for v2167, v2168 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if ((v2168.Name == "Apple") or (v2168.Name == "Banana") or (v2168.Name == "Pineapple")) then
								v2168.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10) ;
								wait();
								firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v2168.Handle, 0);
								wait();
							end
						end
					end
				else
					_G.MusketeerHat = true;
				end
			end
		end);
	end
end);
v35:Seperator("Carvander");
v35:Toggle("Lấy Cavander", _G.Carvender, function(v345)
	_G.Carvender = v345;
	StopTween(_G.Carvender);
end);
v35:Toggle("Lấy Carvander Đổi Sever", _G.Carvenderhop, function(v346)
	_G.Carvenderhop = v346;
end);
local v70 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
spawn(function()
	while wait() do
		if (_G.Carvender and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
					for v1717, v1718 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1718.Name == "Beautiful Pirate") then
							if (v1718:FindFirstChild("Humanoid") and v1718:FindFirstChild("HumanoidRootPart") and (v1718.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1718.HumanoidRootPart.CanCollide = false;
									v1718.Humanoid.WalkSpeed = 0;
									v1718.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1718.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.Carvender or  not v1718.Parent or (v1718.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v70.Position).Magnitude > 3500) then
							BTP(v70);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v70.Position).Magnitude < 3500) then
							topos(v70);
						end
					else
						topos(v70);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.Cavanderhop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Tushita");
v35:Toggle("Lấy Tushita", _G.tushita, function(v347)
	_G.tushita = v347;
	StopTween(_G.tushita);
end);
v35:Toggle("Lấy Tushita Đổi Sever", _G.tushitahop, function(v348)
	_G.tushitahop = v348;
end);
local v71 = CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125);
spawn(function()
	while wait() do
		if (_G.tushita and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
					for v1719, v1720 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1720.Name == "Longma") then
							if (v1720:FindFirstChild("Humanoid") and v1720:FindFirstChild("HumanoidRootPart") and (v1720.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1720.HumanoidRootPart.CanCollide = false;
									v1720.Humanoid.WalkSpeed = 0;
									v1720.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1720.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.tushita or  not v1720.Parent or (v1720.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v71.Position).Magnitude > 3500) then
							BTP(v71);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v71.Position).Magnitude < 3500) then
							topos(v71);
						end
					else
						topos(v71);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.tushitahop then
						Hop();
					end
				end
			end);
		end
	end
end);
v35:Seperator("Hallow Scythe");
v35:Toggle("Lấy Lưỡi Hái", _G.FarmBossHallow, function(v349)
	_G.FarmBossHallow = v349;
	StopTween(_G.FarmBossHallow);
end);
v35:Toggle("Lưỡi Hái Đổi Sever", _G.FarmBossHallowHop, function(v350)
	_G.FarmBossHallowHop = v350;
end);
spawn(function()
	while wait() do
		if _G.FarmBossHallow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for v1721, v1722 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v1722.Name, "Soul Reaper") then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v1722.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								topos(v1722.HumanoidRootPart.CFrame * Pos );
								v1722.HumanoidRootPart.Transparency = 1;
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v1722.Humanoid.Health <= 0) or (_G.FarmBossHallow == false)
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
					repeat
						topos(CFrame.new( -8932.322265625, 146.83154296875, 6062.55078125));
						wait();
					until (CFrame.new( -8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
					EquipWeapon("Hallow Essence");
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				elseif _G.FarmBossHallowHop then
					Hop();
				end
			end);
		end
	end
end);
v35:Seperator("Buddy Sword");
v35:Toggle("Lấy Kiếm Buddy", _G.BudySword, function(v351)
	_G.BudySword = v351;
	StopTween(_G.BudySword);
end);
v35:Toggle("Kiếm Buddy Đổi Sever", _G.BudySwordHop, function(v352)
	_G.BudySwordHop = v352;
end);
local v72 = CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875);
spawn(function()
	while wait() do
		if (_G.BudySword and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
					for v1723, v1724 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1724.Name == "Cake Queen") then
							if (v1724:FindFirstChild("Humanoid") and v1724:FindFirstChild("HumanoidRootPart") and (v1724.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1724.HumanoidRootPart.CanCollide = false;
									v1724.Humanoid.WalkSpeed = 0;
									v1724.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1724.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.BudySword or  not v1724.Parent or (v1724.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v72.Position).Magnitude > 3500) then
							BTP(v72);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v72.Position).Magnitude < 3500) then
							topos(v72);
						end
					else
						topos(v72);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875));
					if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					elseif _G.BudySwordHop then
						Hop();
					end
				end
			end);
		end
	end
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v1473, v1474 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v1474.Name == Mon) and ((Mon == "Factory Staff") or (Mon == "Monkey") or (Mon == "Dragon Crew Warrior") or (Mon == "Dragon Crew Archer")) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0) and ((v1474.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250)) then
						v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1474.HumanoidRootPart.CFrame = PosMon;
						v1474.Humanoid:ChangeState(14);
						v1474.HumanoidRootPart.CanCollide = false;
						v1474.Head.CanCollide = false;
						if v1474.Humanoid:FindFirstChild("Animator") then
							v1474.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v1474.Name == Mon) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0) and ((v1474.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v1474.HumanoidRootPart.CFrame = PosMon;
						v1474.Humanoid:ChangeState(14);
						v1474.HumanoidRootPart.CanCollide = false;
						v1474.Head.CanCollide = false;
						if v1474.Humanoid:FindFirstChild("Animator") then
							v1474.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
					if (_G.Ectoplasm and StartEctoplasmMagnet) then
						if (string.find(v1474.Name, "Ship") and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0) and ((v1474.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.HumanoidRootPart.CFrame = EctoplasmMon;
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Rengoku and StartRengokuMagnet) then
						if (((v1474.Name == "Snow Lurker") or (v1474.Name == "Arctic Warrior")) and ((v1474.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = RengokuMon;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.MusketeerHat and StartMagnetMusketeerhat) then
						if ((v1474.Name == "Forest Pirate") and ((v1474.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = MusketeerHatMon;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.ObservationHakiV2 and Mangnetcitzenmon) then
						if ((v1474.Name == "Forest Pirate") and ((v1474.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = PosHee;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.EvoRace and StartEvoMagnet) then
						if ((v1474.Name == "Zombie") and ((v1474.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = PosMonEvo;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Bartilo and AutoBartiloBring) then
						if ((v1474.Name == "Swan Pirate") and ((v1474.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = PosMonBarto;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmFruitMastery and StartMasteryFruitMagnet) then
						if (v1474.Name == "Monkey") then
							if (((v1474.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
								v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1474.Humanoid:ChangeState(14);
								v1474.HumanoidRootPart.CanCollide = false;
								v1474.Head.CanCollide = false;
								v1474.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1474.Humanoid:FindFirstChild("Animator") then
									v1474.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1474.Name == "Factory Staff") then
							if (((v1474.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
								v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1474.Humanoid:ChangeState(14);
								v1474.HumanoidRootPart.CanCollide = false;
								v1474.Head.CanCollide = false;
								v1474.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1474.Humanoid:FindFirstChild("Animator") then
									v1474.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1474.Name == Mon) then
							if (((v1474.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
								v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1474.Humanoid:ChangeState(14);
								v1474.HumanoidRootPart.CanCollide = false;
								v1474.Head.CanCollide = false;
								v1474.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v1474.Humanoid:FindFirstChild("Animator") then
									v1474.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.FarmGunMastery and StartMasteryGunMagnet) then
						if (v1474.Name == "Monkey") then
							if (((v1474.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
								v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1474.Humanoid:ChangeState(14);
								v1474.HumanoidRootPart.CanCollide = false;
								v1474.Head.CanCollide = false;
								v1474.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1474.Humanoid:FindFirstChild("Animator") then
									v1474.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1474.Name == "Factory Staff") then
							if (((v1474.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
								v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1474.Humanoid:ChangeState(14);
								v1474.HumanoidRootPart.CanCollide = false;
								v1474.Head.CanCollide = false;
								v1474.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1474.Humanoid:FindFirstChild("Animator") then
									v1474.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v1474.Name == Mon) then
							if (((v1474.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
								v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v1474.Humanoid:ChangeState(14);
								v1474.HumanoidRootPart.CanCollide = false;
								v1474.Head.CanCollide = false;
								v1474.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v1474.Humanoid:FindFirstChild("Animator") then
									v1474.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.Bone and StartMagnetBoneMon) then
						if (((v1474.Name == "Reborn Skeleton") or (v1474.Name == "Living Zombie") or (v1474.Name == "Demonic Soul") or (v1474.Name == "Posessed Mummy")) and ((v1474.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = PosMonBone;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmCandy and StartCandyMagnet) then
						if (((v1474.Name == "Ice Cream Chef") or (v1474.Name == "Ice Cream Commander")) and ((v1474.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = CandyMon;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (StardFarm and FarmMag) then
						if (((v1474.Name == "Cocoa Warrior") or (v1474.Name == "Chocolate Bar Battler") or (v1474.Name == "Sweet Thief") or (v1474.Name == "Candy Rebel")) and ((v1474.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = PosGG;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Farmfast and StardMag) then
						if (((v1474.Name == "Shanda") or (v1474.Name == "Shanda")) and ((v1474.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = FastMon;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.DoughtBoss and MagnetDought) then
						if (((v1474.Name == "Cookie Crafter") or (v1474.Name == "Cake Guard") or (v1474.Name == "Baking Staff") or (v1474.Name == "Head Baker")) and ((v1474.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode) and v1474:FindFirstChild("Humanoid") and v1474:FindFirstChild("HumanoidRootPart") and (v1474.Humanoid.Health > 0)) then
							v1474.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v1474.Humanoid:ChangeState(14);
							v1474.HumanoidRootPart.CanCollide = false;
							v1474.Head.CanCollide = false;
							v1474.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor;
							if v1474.Humanoid:FindFirstChild("Animator") then
								v1474.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while true do
		wait();
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end
	end
end);
function InMyNetWork(v353)
	if isnetworkowner then
		return isnetworkowner(v353);
	else
		if ((v353.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode) then
			return true;
		end
		return false;
	end
end
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (MakoriGayMag and _G.BringMonster) then
				for v1475, v1476 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1476.Name, "Boss") and ((v1476.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1476.HumanoidRootPart) then
							v1476.HumanoidRootPart.CFrame = PosGay;
							v1476.Humanoid.JumpPower = 0;
							v1476.Humanoid.WalkSpeed = 0;
							v1476.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1476.HumanoidRootPart.Transparency = 1;
							v1476.HumanoidRootPart.CanCollide = false;
							v1476.Head.CanCollide = false;
							if v1476.Humanoid:FindFirstChild("Animator") then
								v1476.Humanoid.Animator:Destroy();
							end
							v1476.Humanoid:ChangeState(11);
							v1476.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (Anchor and _G.BringMonster) then
				for v1477, v1478 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1478.Name, "Boss") and ((v1478.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1478.HumanoidRootPart) then
							v1478.HumanoidRootPart.CFrame = PosNarathiwat;
							v1478.Humanoid.JumpPower = 0;
							v1478.Humanoid.WalkSpeed = 0;
							v1478.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1478.HumanoidRootPart.Transparency = 1;
							v1478.HumanoidRootPart.CanCollide = false;
							v1478.Head.CanCollide = false;
							if v1478.Humanoid:FindFirstChild("Animator") then
								v1478.Humanoid.Animator:Destroy();
							end
							v1478.Humanoid:ChangeState(11);
							v1478.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
task.spawn(function()
	while task.wait() do
		pcall(function()
			if ((_G.FarmNearest and AutoFarmNearestMagnet) or (SelectMag and _G.BringMonster)) then
				for v1479, v1480 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v1480.Name, "Boss") and ((v1480.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v1480.HumanoidRootPart) then
							v1480.HumanoidRootPart.CFrame = PosMon;
							v1480.Humanoid.JumpPower = 0;
							v1480.Humanoid.WalkSpeed = 0;
							v1480.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v1480.HumanoidRootPart.Transparency = 1;
							v1480.HumanoidRootPart.CanCollide = false;
							v1480.Head.CanCollide = false;
							if v1480.Humanoid:FindFirstChild("Animator") then
								v1480.Humanoid.Animator:Destroy();
							end
							v1480.Humanoid:ChangeState(11);
							v1480.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
if (World1 or World2) then
	v36:Label("Hãy Qua Sea 3");
end
if World3 then
	v36:Seperator("Đảo Bí Ẩn");
	v36:Toggle("Tự Động Đảo Bí Ẩn", _G.MysticIsland, function(v1193)
		_G.MysticIsland = v1193;
		StopTween(_G.MysticIsland);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.MysticIsland then
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X, 500, game:GetService("Workspace").Map.MysticIsland.Center.Position.Z));
					end
				end
			end
		end);
	end);
	v36:Toggle("Tự Động Lái", AutoW, function(v1194)
		AutoW = v1194;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if AutoW then
					game:service("VirtualInputManager"):SendKeyEvent(true, "W", false, game);
					wait(0.35);
					game:service("VirtualInputManager"):SendKeyEvent(false, "W", false, game);
					wait(1.5);
					game:service("VirtualInputManager"):SendKeyEvent(true, "S", false, game);
					wait(0.35);
					game:service("VirtualInputManager"):SendKeyEvent(false, "S", false, game);
					wait(1.5);
				end
			end);
		end
	end);
	v36:Toggle("Auto Summon Mirage Island", _G.dao, function(v1195)
		if v1195 then
			_G.dao = true;
		else
			_G.dao = false;
		end
		if _G.dao then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			wait(1);
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -5411.22021, 778.609863, -2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396);
			wait(0);
			local v1417 = {
				[1] = "BuyBoat",
				[2] = "PirateBrigade"
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1417));
			function two(v1481)
				pcall(function()
					game.Players.LocalPlayer.Character.Humanoid.Sit = false;
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false;
				end);
				if ((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - v1481.Position).Magnitude <= 200) then
					pcall(function()
						tweenz:Cancel();
					end);
					game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.CFrame = v1481;
				else
					local v1730 = game:service("TweenService");
					local v1731 = TweenInfo.new((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - v1481.Position).Magnitude / 325 , Enum.EasingStyle.Linear);
					tween, err = pcall(function()
						tweenz = v1730:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], v1731, {
							CFrame = v1481
						});
						tweenz:Play();
					end);
					if  not tween then
						return err;
					end
				end
				function _TweenCanCle()
					tweenz:Cancel();
				end
			end
			two(CFrame.new( -5100.7085, 29.968586, -6792.45459, -0.33648631, -0.0396691673, 0.940852463, -6.404617e-7, 0.999112308, 0.0421253517, -0.941688359, 0.0141740013, -0.336187631));
			wait(13);
			for v1482, v1483 in next, workspace.Boats.PirateBrigade:GetDescendants() do
				if v1483.Name:find("VehicleSeat") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1483.CFrame;
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0, 500, -100) );
					end
				end
			end
		end
	end);
	v36:Toggle("Bay Đến Chổ Bán Trái", _G.TPNPC, function(v1196)
		_G.Miragenpc = v1196;
		StopTween(_G.Miragenpc);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Miragenpc then
					if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
						topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position));
					end
				end
			end
		end);
	end);
	v36:Button("Đến Chổ Bán Trái", function()
		TweenNpc();
	end);
	function TweenNpc()
		repeat
			wait();
		until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
		if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
			AllNPCS = getnilinstances();
			for v1484, v1485 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
				table.insert(AllNPCS, v1485);
			end
			for v1486, v1487 in pairs(AllNPCS) do
				if (v1487.Name == "Advanced Fruit Dealer") then
					topos(v1487.HumanoidRootPart.CFrame);
				end
			end
		end
	end
	v36:Toggle("Bay Đến Bánh Răng", _G.TweenMGear, function(v1197)
		_G.TweenMGear = v1197;
		StopTween(_G.TweenMGear);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.TweenMGear then
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						for v2070, v2071 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
							if v2071:IsA("MeshPart") then
								if (v2071.Material == Enum.Material.Neon) then
									topos(v2071.CFrame);
								end
							end
						end
					end
				end
			end
		end);
	end);
end
if World3 then
	v36:Seperator("Tộc V4");
	v36:Button("Bay Đến Đỉnh Cay Đại Thụ", function()
		topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
	end);
	v36:Button("Dịch chuyển đến đền Thờ thời gian", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
	end);
	v36:Button("Bay Đến Cần Gạt", function()
		topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734));
	end);
	v36:Button("Bay Đến Chỗ Bán Bánh Răng", function()
		topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
	end);
	v36:Button("Truy cập đồng hồ", function()
		game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove();
		game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove();
	end);
	v36:Toggle("Mua Bánh Răng", _G.Bone4, function(v1199)
		_G.Bone4 = v1199;
		StopTween(_G.Bone4);
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.Bone4 then
					local v1531 = {
						[1] = true
					};
					local v1531 = {
						[1] = "UpgradeRace",
						[2] = "Buy"
					};
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v1531));
				end
			end
		end);
	end);
	v36:Button("Bay Đến Tộc Của Bạn", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		wait(0.1);
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
		if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719));
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
			Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
			wait(0.6);
			topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969));
		end
	end);
	v36:Button("Bay Đến Đồng Hồ", function()
		topos(CFrame.new(29551.9941, 15069.002, -85.5179291));
	end);
	v36:Toggle("Tự Động Hoàng Thành Ải", false, function(v1201)
		_G.QuestRace = v1201;
		StopTween(_G.QuestRace);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.QuestRace then
					if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
						for v2072, v2073 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v2073:FindFirstChild("Humanoid") and v2073:FindFirstChild("HumanoidRootPart") and (v2073.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v2073.Humanoid.Health = 0;
										v2073.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v2073.Parent or (v2073.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
						for v2177, v2178 in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
							if (v2178.Name == "snowisland_Cylinder.081") then
								topos(v2178.CFrame * CFrame.new(0, 0, 0) );
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
						for v2276, v2277 in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
							if (v2277.Name == "HumanoidRootPart") then
								topos(v2277.CFrame * CFrame.new(PosX, PosY, PosZ) );
								for v2414, v2415 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2415:IsA("Tool") then
										if (v2415.ToolTip == "Melee") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2415);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								for v2416, v2417 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2417:IsA("Tool") then
										if (v2417.ToolTip == "Blox Fruit") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2417);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for v2418, v2419 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2419:IsA("Tool") then
										if (v2419.ToolTip == "Sword") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2419);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.5);
								for v2420, v2421 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v2421:IsA("Tool") then
										if (v2421.ToolTip == "Gun") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2421);
										end
									end
								end
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								wait(0.2);
								game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
								game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
						topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
						for v2430, v2431 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v2431:FindFirstChild("Humanoid") and v2431:FindFirstChild("HumanoidRootPart") and (v2431.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v2431.Humanoid.Health = 0;
										v2431.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v2431.Parent or (v2431.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
						for v2449, v2450 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if (v2450.Name == "StartPoint") then
								topos(v2450.CFrame * CFrame.new(0, 10, 0) );
							end
						end
					end
				end
			end
		end);
	end);
	v36:Toggle("Tự Động Cày Và Bậc V4", false, function(v1202)
		_G.Bone = v1202;
		_G.Bone4 = v1202;
		_G.ActiveV4 = v1202;
		StopTween(_G.Bone);
	end);
	v36:Toggle("Giết Người Chơi Trial", false, function(v1203)
		_G.KillAfterTrials = v1203;
		_G.Click = v1203;
		_G.TurnKen = v1203;
		_G.AimNearest = v1203;
		_G.Aimbot_Skill = v1203;
		StopTween(_G.KillAfterTrials);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.KillAfterTrials then
					for v1734, v1735 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if ((v1735.Name ~= game.Players.LocalPlayer.Name) and ((v1735.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100)) then
							if (v1735.Humanoid.Health > 0) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									NameTarget = v1735.Name;
									TP1(v1735.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5) );
									v1735.HumanoidRootPart.CanCollide = false;
									v1735.Head.CanCollide = false;
									v1735.HumanoidRootPart.Size = Vector3.new(100, 100, 100);
									Click();
								until  not _G.KillAfterTrials or  not v1735.Parent or (v1735.Humanoid.Health <= 0)
							end
						end
					end
				end
			end);
		end
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.TurnKen then
					repeat
						task.wait();
						if  not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):SetKeyDown("0x65");
							wait(2);
							game:GetService("VirtualUser"):SetKeyUp("0x65");
						end
					until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or  not _G.Observation
				end
			end);
		end
	end);
	v36:Toggle("Tự động khóa mặt trăng", _G.LockCamToMoon, function(v1204)
		_G.LockCamToMoon = v1204;
	end);
	function CamToMoon()
		workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position );
	end
	spawn(function()
		pcall(function()
			while wait() do
				if _G.LockCamToMoon then
					CamToMoon();
				end
			end
		end);
	end);
	v36:Button("Mua nhiệm vụ cổ đại", function(v1206)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
	end);
end
v39:Seperator("Định Vị");
v39:Toggle("Định Vị Người Chơi", false, function(v354)
	ESPPlayer = v354;
	UpdatePlayerChams();
end);
v39:Toggle("Định Vị Đảo Kitsune", false, function(v355)
	IslandESP = v355;
	while IslandESP do
		wait();
		UpdateIslandESPKitsune();
	end
end);
function UpdateIslandESPKitsune()
	for v715, v716 in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v716.Name ~= "NeonShrinePart") then
					if  not v716:FindFirstChild("IslandESP") then
						local v1929 = Instance.new("BillboardGui", v716);
						v1929.Name = "IslandESP";
						v1929.ExtentsOffset = Vector3.new(0, 1, 0);
						v1929.Size = UDim2.new(1, 200, 1, 30);
						v1929.Adornee = v716;
						v1929.AlwaysOnTop = true;
						local v1935 = Instance.new("TextLabel", v1929);
						v1935.Font = "Code";
						v1935.FontSize = "Size14";
						v1935.TextWrapped = true;
						v1935.Size = UDim2.new(1, 0, 1, 0);
						v1935.TextYAlignment = "Top";
						v1935.BackgroundTransparency = 1;
						v1935.TextStrokeTransparency = 0.5;
						v1935.TextColor3 = Color3.fromRGB(80, 245, 245);
						v1935.Text = "Kitsune Island";
					else
						v716['IslandESP'].TextLabel.Text = "Kitsune Island";
					end
				end
			elseif v716:FindFirstChild("IslandESP") then
				v716:FindFirstChild("IslandESP"):Destroy();
			end
		end);
	end
end
v39:Toggle("Định Vị Rương", false, function(v356)
	ChestESP = v356;
	UpdateChestChams();
end);
v39:Toggle("Định Vị Trái Ác Quỷ", false, function(v357)
	DevilFruitESP = v357;
	while DevilFruitESP do
		wait();
		UpdateDevilChams();
	end
end);
v39:Toggle("Định Vị Trái Cây", RealFruitESP, function(v358)
	RealFruitESP = v358;
	UpdateRealFruitChams();
end);
v39:Toggle("Định Vị Hoa", false, function(v359)
	FlowerESP = v359;
	UpdateFlowerChams();
end);
spawn(function()
	while wait() do
		if FlowerESP then
			UpdateFlowerChams();
		end
		if DevilFruitESP then
			UpdateDevilChams();
		end
		if ChestESP then
			UpdateChestChams();
		end
		if ESPPlayer then
			UpdatePlayerChams();
		end
		if RealFruitESP then
			UpdateRealFruitChams();
		end
	end
end);
v39:Toggle("Định Vị Đảo", IslandESP, function(v360)
	IslandESP = v360;
	while IslandESP do
		wait();
		UpdateIslandESP();
	end
end);
v39:Toggle("Định Vị Đảo Bí Ẩn", false, function(v361)
	MirageIslandESP = v361;
	while MirageIslandESP do
		wait();
		UpdateIslandMirageESP();
	end
end);
v39:Seperator("Chơi khăm");
v39:Button("Mưa Trái", function()
	for v717, v718 in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
		v718.Parent = game.Workspace.Map;
		v718:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random( -50, 50), 100, math.random( -50, 50)) );
		if v718.Fruit:FindFirstChild("AnimationController") then
			v718.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v718.Fruit:FindFirstChild("Idle")):Play();
		end
		v718.Handle.Touched:Connect(function(v1207)
			if (v1207.Parent == game.Players.LocalPlayer.Character) then
				v718.Parent = game.Players.LocalPlayer.Backpack;
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v718);
			end
		end);
	end
end);
v39:Button("Làm Giả Cấp/Beli/Kinh Nghiệm", function()
	local v362 = game:GetService("Players").LocalPlayer;
	local v363 = require(game:GetService("ReplicatedStorage").Notification);
	local v364 = v362:WaitForChild("Data");
	local v365 = require(game.ReplicatedStorage:WaitForChild("EXPFunction"));
	local v366 = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp);
	local v367 = require(game:GetService("ReplicatedStorage").Util.Sound);
	local v368 = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp") ;
	function v129(v721)
		local v722 = v721;
		while true do
			local v1208, v1209 = string.gsub(v722, "^(-?%d+)(%d%d%d)", "%1,%2");
			v722 = v1208;
			if (v1209 == 0) then
				break;
			end
		end
		return v722;
	end
	v363.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display();
	v363.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display();
	v363.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display();
	v362.Data.Exp.Value = 999999999999;
	v362.Data.Beli.Value = v362.Data.Beli.Value + 999999999999 ;
	delay = 0;
	count = 0;
	while (v362.Data.Exp.Value - v365(v364.Level.Value)) > 0  do
		v362.Data.Exp.Value = v362.Data.Exp.Value - v365(v364.Level.Value) ;
		v362.Data.Level.Value = v362.Data.Level.Value + 1 ;
		v362.Data.Points.Value = v362.Data.Points.Value + 3 ;
		v366({
			v362
		});
		v367.Play(v367, v368.Value);
		v363.new("<Color=Green>LEVEL UP!<Color=/> ("   .. v362.Data.Level.Value   .. ")" ):Display();
		count = count + 1 ;
		if (count >= 5) then
			delay = tick();
			count = 0;
			wait(2);
		end
	end
end);
v39:Textbox("Làm Giả Cấp", "Nhập", true, function(v371)
	game:GetService("Players").LocalPlayer.Data.Level.Value = v371;
end);
v39:Textbox("Làm Giả Kinh Nghiệm", "Nhập", true, function(v373)
	game:GetService("Players").LocalPlayer.Data.Exp.Value = v373;
end);
v39:Textbox("Làm Giả Tiền", "Nhập", true, function(v375)
	game:GetService("Players").LocalPlayer.Data.Beli.Value = v375;
end);
v39:Textbox("Làm Giả Điểm Tím", "Nhập", true, function(v377)
	game:GetService("Players").LocalPlayer.Data.Fragments.Value = v377;
end);
v39:Textbox("Làm Giả Điểm", "Nhập", true, function(v379)
	game:GetService("Players").LocalPlayer.Data.Points.Value = v379;
end);
v39:Textbox("Làm Giả Tiền Thưởng", "Nhập", true, function(v381)
	game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = v381;
end);
v39:Seperator("Điểm nổi bật");
v39:Toggle("Hiển thị trò chuyện", _G.chat, function(v383)
	_G.chat = v383;
	if (_G.chat == true) then
		local v1210 = game:GetService("StarterGui");
		v1210:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);
	elseif (_G.chat == false) then
		local v1421 = game:GetService("StarterGui");
		v1421:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
	end
end);
v39:Toggle("Hiển thị bảng xếp hạng", _G.leaderboard, function(v384)
	_G.leaderboard = v384;
	if (_G.leaderboard == true) then
		local v1211 = game:GetService("StarterGui");
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false);
	elseif (_G.leaderboard == false) then
		local v1422 = game:GetService("StarterGui");
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true);
	end
end);
v39:Seperator("Gian lận");
v39:Button("Mở khóa Buso", function()
	local v385 = "Buso";
	if (type(v385) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v385);
	elseif (type(v385) == "table") then
		for v1488, v1489 in next, v385 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1489);
		end
	end
end);
v39:Button("Mở Khoá Soru", function()
	local v386 = "Soru";
	if (type(v386) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v386);
	elseif (type(v386) == "table") then
		for v1490, v1491 in next, v386 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1491);
		end
	end
end);
v39:Button("Mở Khoá Geppo", function()
	local v387 = "Geppo";
	if (type(v387) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v387);
	elseif (type(v387) == "table") then
		for v1492, v1493 in next, v387 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v1493);
		end
	end
end);
v39:Button("Thu phóng tối đa", function()
	while wait() do
		game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718;
	end
end);
v39:Button("Hiển Thị Tài Khoản", function(v388)
	local v389 = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory);
	local v390 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory");
	local v391 = {};
	local v392 = {
		"Mythical",
		"Legendary",
		"Rare",
		"Uncommon",
		"Common"
	};
	local v393 = {
		Common = Color3.fromRGB(179, 179, 179),
		Uncommon = Color3.fromRGB(92, 140, 211),
		Rare = Color3.fromRGB(140, 82, 255),
		Legendary = Color3.fromRGB(213, 43, 228),
		Mythical = Color3.fromRGB(238, 47, 50)
	};
	function GetRaity(v727)
		for v1212, v1213 in pairs(v393) do
			if (v1213 == v727) then
				return v1212;
			end
		end
	end
	for v728, v729 in pairs(v390) do
		v391[v729.Name] = v729;
	end
	local v394 = #getupvalue(v389.UpdateRender, 4);
	local v395 = {};
	local v396 = {};
	local v397 = 0;
	while v397 < v394  do
		local v731 = 0;
		while (v731 < 25000) and (v397 < v394)  do
			game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0, v731);
			for v1318, v1319 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
				if (v1319:IsA("Frame") and  not v395[v1319.ItemName.Text] and (v1319.ItemName.Visible == true)) then
					local v1494 = GetRaity(v1319.Background.BackgroundColor3);
					if v1494 then
						print("Rac");
						if  not v396[v1494] then
							v396[v1494] = {};
						end
						table.insert(v396[v1494], v1319:Clone());
					end
					v397 = v397 + 1 ;
					v395[v1319.ItemName.Text] = true;
				end
			end
			v731 = v731 + 20 ;
		end
		wait();
	end
	function GetXY(v732)
		return v732 * 100 ;
	end
	local v398 = Instance.new("UIListLayout");
	v398.FillDirection = Enum.FillDirection.Vertical;
	v398.SortOrder = 2;
	v398.Padding = UDim.new(0, 10);
	local v403 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v403.BackgroundTransparency = 1;
	v403.Size = UDim2.new(0.5, 0, 1, 0);
	v398.Parent = v403;
	local v407 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v407.BackgroundTransparency = 1;
	v407.Size = UDim2.new(0.5, 0, 1, 0);
	v407.Position = UDim2.new(0.6, 0, 0, 0);
	v398:Clone().Parent = v407;
	for v733, v734 in pairs(v396) do
		local v735 = Instance.new("Frame", v403);
		v735.BackgroundTransparency = 1;
		v735.Size = UDim2.new(1, 0, 0, 0);
		v735.LayoutOrder = table.find(v392, v733);
		local v739 = Instance.new("Frame", v407);
		v739.BackgroundTransparency = 1;
		v739.Size = UDim2.new(1, 0, 0, 0);
		v739.LayoutOrder = table.find(v392, v733);
		local v743 = Instance.new("UIGridLayout", v735);
		v743.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
		v743.CellSize = UDim2.new(0, 70, 0, 70);
		v743.FillDirectionMaxCells = 100;
		v743.FillDirection = Enum.FillDirection.Horizontal;
		local v749 = v743:Clone();
		v749.Parent = v739;
		for v1215, v1216 in pairs(v734) do
			if (v391[v1216.ItemName.Text] and v391[v1216.ItemName.Text].Mastery) then
				if (v1216.ItemLine2.Text ~= "Accessory") then
					local v1533 = v1216.ItemName:Clone();
					v1533.BackgroundTransparency = 1;
					v1533.TextSize = 10;
					v1533.TextXAlignment = 2;
					v1533.TextYAlignment = 2;
					v1533.ZIndex = 5;
					v1533.Text = v391[v1216.ItemName.Text].Mastery;
					v1533.Size = UDim2.new(0.5, 0, 0.5, 0);
					v1533.Position = UDim2.new(0.5, 0, 0.5, 0);
					v1533.Parent = v1216;
				end
				v1216.Parent = v735;
			elseif (v1216.ItemLine2.Text == "Blox Fruit") then
				v1216.Parent = v739;
			end
		end
		v735.AutomaticSize = 2;
		v739.AutomaticSize = 2;
	end
	local v412 = {
		Superhuman = Vector2.new(3, 2),
		GodHuman = Vector2.new(3, 2),
		DeathStep = Vector2.new(4, 3),
		ElectricClaw = Vector2.new(2, 0),
		SharkmanKarate = Vector2.new(0, 0),
		DragonTalon = Vector2.new(1, 5)
	};
	local v413 = Instance.new("Frame", v403);
	v413.BackgroundTransparency = 1;
	v413.Size = UDim2.new(1, 0, 0, 0);
	v413.LayoutOrder = table.find(v392, k);
	v413.AutomaticSize = 2;
	v413.LayoutOrder = 100;
	local v398 = Instance.new("UIGridLayout", v413);
	v398.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
	v398.CellSize = UDim2.new(0, 70, 0, 70);
	v398.FillDirectionMaxCells = 100;
	v398.FillDirection = Enum.FillDirection.Horizontal;
	local v389 = {
		"Superhuman",
		"ElectricClaw",
		"DragonTalon",
		"SharkmanKarate",
		"DeathStep",
		"GodHuman"
	};
	for v753, v754 in pairs(v389) do
		if (v412[v754] and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"   .. v754 , true) == 1)) then
			local v1320 = Instance.new("ImageLabel", v413);
			v1320.Image = "rbxassetid://9945562382";
			v1320.ImageRectSize = Vector2.new(100, 100);
			v1320.ImageRectOffset = v412[v754] * 100 ;
		end
	end
	function formatNumber(v755)
		return tostring(v755):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "");
	end
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 800, 0, 500);
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 800, 0, 550);
	local v424 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone();
	v424.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat;
	v424.Position = UDim2.new(0, 800, 0.63, 0);
	local v428 = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value);
	v424.Text = "Ã†â€™"   .. v428 ;
	print("Done");
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy();
	end);
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy();
	end);
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy();
	end);
	for v756, v757 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
		if v757:IsA("ImageButton") then
			v757:Destroy();
		end
	end
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy();
	end);
end);
v39:Seperator("Đồ Hoạ");
v39:Button("Xoá Sương Mù ( Biển 3 )", function(v430)
	game:GetService("Lighting").LightingLayers:Destroy();
	game:GetService("Lighting").Sky:Destroy();
end);
v39:Toggle("Xoá Sương Mù", RemoveFog, function(v431)
	RemoveFog = v431;
	if  not RemoveFog then
		return;
	end
	while RemoveFog do
		wait();
		game.Lighting.FogEnd = 8999999488;
		if  not RemoveFog then
			game.Lighting.FogEnd = 2500;
		end
	end
end);
v39:Toggle("Loại Bỏ Thiệt Hại", true, function()
	for v759, v760 in pairs(game.Workspace:GetDescendants()) do
		if (v760.Name == "DamageCounter") then
			v760:Destroy();
		end
	end
	for v761, v762 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v762.Name == "DamageCounter") then
			v762:Destroy();
		end
	end
end);
v39:Button("Mở Khoá FPS", function()
	setfpscap(9999999);
end);
v39:Button("Giảm Lag", function()
	for v763, v764 in pairs(game.Workspace.Map:GetDescendants()) do
		if ((v764.Name == "Tavern") or (v764.Name == "SmileFactory") or (v764.Name == "Tree") or (v764.Name == "Rocks") or (v764.Name == "PartHouse") or (v764.Name == "Hotel") or (v764.Name == "WallPiece") or (v764.Name == "MiddlePillars") or (v764.Name == "Cloud") or (v764.Name == "PluginGrass") or (v764.Name == "BigHouse") or (v764.Name == "SmallHouse") or (v764.Name == "Detail")) then
			v764:Destroy();
		end
	end
	for v765, v766 in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
		if ((v766.Name == "Tavern") or (v766.Name == "SmileFactory") or (v766.Name == "Tree") or (v766.Name == "Rocks") or (v766.Name == "PartHouse") or (v766.Name == "Hotel") or (v766.Name == "WallPiece") or (v766.Name == "MiddlePillars") or (v766.Name == "Cloud") or (v766.Name == "PluginGrass") or (v766.Name == "BigHouse") or (v766.Name == "SmallHouse") or (v766.Name == "Detail")) then
			v766:Destroy();
		end
	end
	for v767, v768 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if (v768:IsA("Accessory") or (v768.Name == "Pants") or (v768.Name == "Shirt")) then
			v768:Destroy();
		end
	end
	local v432 = true;
	local v433 = game;
	local v434 = v433.Workspace;
	local v435 = v433.Lighting;
	local v436 = v434.Terrain;
	v436.WaterWaveSize = 0;
	v436.WaterWaveSpeed = 0;
	v436.WaterReflectance = 0;
	v436.WaterTransparency = 0;
	v435.GlobalShadows = false;
	v435.FogEnd = 8999999488;
	v435.Brightness = 0;
	settings().Rendering.QualityLevel = "Level01";
	for v769, v770 in pairs(v433:GetDescendants()) do
		if (v770:IsA("Part") or v770:IsA("Union") or v770:IsA("CornerWedgePart") or v770:IsA("TrussPart")) then
			v770.Material = "Plastic";
			v770.Reflectance = 0;
		elseif (v770:IsA("Decal") or (v770:IsA("Texture") and v432)) then
			v770.Transparency = 1;
		elseif (v770:IsA("ParticleEmitter") or v770:IsA("Trail")) then
			v770.Lifetime = NumberRange.new(0);
		elseif v770:IsA("Explosion") then
			v770.BlastPressure = 1;
			v770.BlastRadius = 1;
		elseif (v770:IsA("Fire") or v770:IsA("SpotLight") or v770:IsA("Smoke") or v770:IsA("Sparkles")) then
			v770.Enabled = false;
		elseif v770:IsA("MeshPart") then
			v770.Material = "Plastic";
			v770.Reflectance = 0;
			v770.TextureID = 10385902758728956;
		end
	end
	for v771, v772 in pairs(v435:GetChildren()) do
		if (v772:IsA("BlurEffect") or v772:IsA("SunRaysEffect") or v772:IsA("ColorCorrectionEffect") or v772:IsA("BloomEffect") or v772:IsA("DepthOfFieldEffect")) then
			v772.Enabled = false;
		end
	end
end);
v39:Seperator("Khả năng");
v39:Toggle("Né tránh không có thời gian hồi chiêu", false, function(v445)
	nododgecool = v445;
	NoDodgeCool();
end);
v39:Toggle("Năng lượng vô hạn", false, function(v446)
	InfiniteEnergy = v446;
	v26 = v25.Character.Energy.Value;
end);
v39:Toggle("Tự Động Bậc V3", _G.ActiveV3, function(v448)
	_G.ActiveV3 = v448;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.ActiveV3 then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
			end
		end
	end);
end);
v39:Toggle("Tự Động Bậc V4", _G.ActiveV4, function(v449)
	_G.ActiveV4 = v449;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.ActiveV4 then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game);
			end
		end);
	end
end);
v39:Toggle("Khả năng vô hạn", false, function(v450)
	InfAbility = v450;
	if (value == false) then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end);
spawn(function()
	while wait() do
		if InfAbility then
			InfAb();
		end
	end
end);
v39:Toggle("Phạm vi quan sát vô hạn", getgenv().InfiniteObRange, function(v451)
	getgenv().InfiniteObRange = v451;
	local v453 = game:GetService("Players").LocalPlayer.VisionRadius.Value;
	while getgenv().InfiniteObRange do
		wait();
		local v773 = game:GetService("Players").LocalPlayer;
		local v774 = v773.Character;
		local v775 = v773.VisionRadius;
		if v773 then
			if (v774.Humanoid.Health <= 0) then
				wait(5);
			end
			v775.Value = math.huge;
		elseif ((getgenv().InfiniteObRange == false) and v773) then
			v775.Value = v453;
		end
	end
end);
v39:Toggle("Geppo vô hạn", getgenv().InfGeppo, function(v454)
	getgenv().InfGeppo = v454;
end);
spawn(function()
	while wait() do
		pcall(function()
			if getgenv().InfGeppo then
				for v1498, v1499 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Geppo then
						if ((typeof(v1499) == "function") and (getfenv(v1499).script == game:GetService("Players").LocalPlayer.Character.Geppo)) then
							for v2139, v2140 in next, getupvalues(v1499) do
								if (tostring(v2139) == "9") then
									repeat
										wait(0.1);
										setupvalue(v1499, v2139, 0);
									until  not getgenv().InfGeppo or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
								end
							end
						end
					end
				end
			end
		end);
	end
end);
v39:Toggle("vô hạn Soru", _G.Infsoru, function(v456)
	_G.Infsoru = v456;
end);
spawn(function()
	while wait() do
		pcall(function()
			if (_G.Infsoru and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil)) then
				for v1500, v1501 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Soru then
						if ((typeof(v1501) == "function") and (getfenv(v1501).script == game:GetService("Players").LocalPlayer.Character.Soru)) then
							for v2141, v2142 in next, getupvalues(v1501) do
								if (typeof(v2142) == "table") then
									repeat
										wait(0.1);
										v2142.LastUse = 0;
									until  not _G.Infsoru or (game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0)
								end
							end
						end
					end
				end
			end
		end);
	end
end);
v39:Toggle("Đi Trên Nước", true, function(v457)
	_G.WalkWater = v457;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.WalkWater then
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000);
			else
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000);
			end
		end);
	end
end);
v39:Toggle("Xuyên Tường", _G.NoClip, function(v458)
	_G.NoClip = v458;
end);
spawn(function()
	while wait() do
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 100);
		end
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
			game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge , (((((((((math.huge * math.huge * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0) * 0) / 0 ;
		end
	end
end);
v39:Button("Xoá Dung Nham", function()
	for v776, v777 in pairs(game.Workspace:GetDescendants()) do
		if (v777.Name == "Lava") then
			v777:Destroy();
		end
	end
	for v778, v779 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v779.Name == "Lava") then
			v779:Destroy();
		end
	end
end);
local v73 = v38:Label("Người Chơi");
spawn(function()
	while wait() do
		pcall(function()
			for v1331, v1332 in pairs(game:GetService("Players"):GetPlayers()) do
				if (v1331 == 12) then
					v73:Set("Players:"   .. " "   .. v1331   .. " "   .. "/"   .. " "   .. "12"   .. " "   .. "(Max)" );
				elseif (v1331 == 1) then
					v73:Set("Player:"   .. " "   .. v1331   .. " "   .. "/"   .. " "   .. "12" );
				else
					v73:Set("Players:"   .. " "   .. v1331   .. " "   .. "/"   .. " "   .. "12" );
				end
			end
		end);
	end
end);
Playerslist = {};
for v459, v460 in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist, v460.Name);
end
local v74 = v38:Dropdown("Chọn Người Chơi", Playerslist, function(v461)
	_G.SelectPly = v461;
end);
v38:Button("Làm Mới Người Chơi", function()
	Playerslist = {};
	v74:Clear();
	for v780, v781 in pairs(game:GetService("Players"):GetChildren()) do
		v74:Add(v781.Name);
	end
end);
v38:Toggle("Quan Sát Người Chơi", false, function(v462)
	SpectatePlys = v462;
	local v463 = game:GetService("Players").LocalPlayer.Character.Humanoid;
	local v464 = game:GetService("Players"):FindFirstChild(_G.SelectPly);
	repeat
		wait(0.1);
		game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid;
	until SpectatePlys == false
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid;
end);
v38:Toggle("Bay Đến Người Chơi", false, function(v467)
	_G.TeleportPly = v467;
	pcall(function()
		if _G.TeleportPly then
			repeat
				topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame);
				wait();
			until _G.TeleportPly == false
		end
		StopTween(_G.TeleportPly);
	end);
end);
v38:Toggle("Bay Đến Người Chơi Bypass", false, function(v468)
	_G.Teleport = v468;
	if (_G.Teleport == false) then
		game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1);
	end
	while _G.Teleport do
		task.wait();
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0) ;
		game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
		game:GetService("VirtualUser"):CaptureController();
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
	end
end);
v38:Seperator("Nhiệm Vụ");
v38:Button("Nhận Nhiệm Vụ Thợ Săn", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
end);
v38:Toggle("Giết Người Chơi Nhận Nhiệm Vụ", _G.PlayerHunter, function(v469)
	_G.PlayerHunter = v469;
	StopTween(_G.PlayerHunter);
end);
spawn(function()
	game:GetService("RunService").Heartbeat:connect(function()
		pcall(function()
			if _G.PlayerHunter then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
				end
			end
		end);
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.PlayerHunter then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
spawn(function()
	while wait() do
		if _G.PlayerHunter then
			if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
				wait(0.5);
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
			else
				for v1545, v1546 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v1546.Name) then
						repeat
							wait();
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2180 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2180));
							end
							EquipWeapon(_G.SelectWeapon);
							Useskill = true;
							topos(v1546.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3) );
							v1546.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						until (_G.PlayerHunter == false) or (v1546.Humanoid.Health <= 0)
						Useskill = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
					end
				end
			end
		end
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			if Useskill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
				wait(0.1);
				game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
			end
		end);
	end
end);
v38:Seperator("PvP");
v38:Toggle("Aimbot gần nhất", false, function(v470)
	_G.AimNearest = v470;
end);
local v75 = game:GetService("Players");
local v25 = v75.LocalPlayer;
local v76 = game:GetService("RunService");
local function v77()
	local v471 = nil;
	local v472 = math.huge;
	for v786, v787 in pairs(v75:GetPlayers()) do
		if ((v787 ~= v25) and v787.Character and v787.Character:FindFirstChild("HumanoidRootPart")) then
			if ((v787.Team ~= v25.Team) and (v787.Team.Name ~= "Marines")) then
				local v1502 = v787.Character.HumanoidRootPart.Position;
				local v1503 = (v25.Character.HumanoidRootPart.Position - v1502).Magnitude;
				if (v1503 < v472) then
					v471 = v787;
					v472 = v1503;
				end
			end
		end
	end
	return v471;
end
v76.RenderStepped:Connect(function()
	if _G.AimNearest then
		local v1218 = v77();
		if v1218 then
			_G.Aim_Players = v1218;
		end
	end
end);
local v78 = getrawmetatable(game);
local v79 = v78.__namecall;
setreadonly(v78, false);
v78.__namecall = newcclosure(function(...)
	local v473 = getnamecallmethod();
	local v474 = {
		...
	};
	if (tostring(v473) == "FireServer") then
		if (tostring(v474[1]) == "RemoteEvent") then
			if ((tostring(v474[2]) ~= "true") and (tostring(v474[2]) ~= "false")) then
				if (_G.AimNearest and _G.Aim_Players) then
					v474[2] = _G.Aim_Players.Character.HumanoidRootPart.Position;
					return v79(unpack(v474));
				end
			end
		end
	end
	return v79(...);
end);
setreadonly(v78, true);
v38:Toggle("Enabled PvP", false, function(v475)
	_G.EnabledPvP = v475;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EnabledPvP then
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
				end
			end
		end
	end);
end);
v38:Button("Đặt vị trí Hồi Sinh", function()
	_G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	Com();
end);
v38:Toggle("Chế độ an toàn", false, function(v477)
	_G.Safe_Mode = v477;
	StopTween(_G.Safe_Mode);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Safe_Mode then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame;
			end
		end
	end);
end);
v38:Button("hồi sinh", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
	wait();
end);
v38:Seperator("Thống kê");
local v81 = v38:Label("Điểm chỉ số");
spawn(function()
	while wait() do
		pcall(function()
			v81:Set("Điểm chỉ số: "   .. tostring(game:GetService("Players")['LocalPlayer'].Data.Points.Value) );
		end);
	end
end);
local v82 = v38:Label("Võ: ");
local v83 = v38:Label("Phòng Thủ: ");
local v84 = v38:Label("Kiếm: ");
local v85 = v38:Label("Súng: ");
local v86 = v38:Label("Trái: ");
spawn(function()
	while wait() do
		pcall(function()
			v82:Set("Võ: "   .. game.Players.localPlayer.Data.Stats.Melee.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v83:Set("Phòng Thủ: "   .. game.Players.localPlayer.Data.Stats.Defense.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v84:Set("Kiếm: "   .. game.Players.localPlayer.Data.Stats.Sword.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v85:Set("Súng: "   .. game.Players.localPlayer.Data.Stats.Gun.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v86:Set("Trái: "   .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value );
		end);
	end
end);
v38:Toggle("Tự Động Nâng Chỉ Số", _G.Stats_Kaitun, function(v478)
	_G.Stats_Kaitun = v478;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Stats_Kaitun then
				if World1 then
					local v1547 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1547));
				elseif World2 then
					local v1947 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1947));
					local v1947 = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1947));
				end
			end
		end);
	end
end);
v38:Toggle("Võ", false, function(v479)
	melee = v479;
end);
v38:Toggle("Phòng Thủ", false, function(v480)
	defense = v480;
end);
v38:Toggle("Kiếm", false, function(v481)
	sword = v481;
end);
v38:Toggle("Súng", false, function(v482)
	gun = v482;
end);
v38:Toggle("Trái Ác Quỷ", false, function(v483)
	demonfruit = v483;
end);
PointStats = 100;
spawn(function()
	while wait() do
		if (game.Players.localPlayer.Data.Points.Value >= PointStats) then
			if melee then
				local v1504 = {
					[1] = "AddPoint",
					[2] = "Võ",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1504));
			end
			if defense then
				local v1505 = {
					[1] = "AddPoint",
					[2] = "Phòng Thủ",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1505));
			end
			if sword then
				local v1506 = {
					[1] = "AddPoint",
					[2] = "Kiếm",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1506));
			end
			if gun then
				local v1507 = {
					[1] = "AddPoint",
					[2] = "Súng",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1507));
			end
			if demonfruit then
				local v1508 = {
					[1] = "AddPoint",
					[2] = "Trái Ác Quỷ",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1508));
			end
		end
	end
end);
v40:Seperator("Tập Kích");
_G.SelectChip = selectraids or "" ;
Raidslist = {};
RaidsModule = require(game.ReplicatedStorage.Raids);
for v484, v485 in pairs(RaidsModule.raids) do
	table.insert(Raidslist, v485);
end
for v486, v487 in pairs(RaidsModule.advancedRaids) do
	table.insert(Raidslist, v487);
end
v40:Dropdown("Chọn Chip", Raidslist, function(v488)
	_G.SelectChip = v488;
end);
v40:Toggle("Tự động chọn Đột Kích", _G.SelectDungeon, function(v489)
	_G.SelectDungeon = v489;
end);
spawn(function()
	while wait() do
		if _G.SelectDungeon then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame")) then
					_G.SelectChip = "Flame";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice")) then
					_G.SelectChip = "Ice";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake")) then
					_G.SelectChip = "Quake";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light")) then
					_G.SelectChip = "Light";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark")) then
					_G.SelectChip = "Dark";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String")) then
					_G.SelectChip = "String";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble")) then
					_G.SelectChip = "Rumble";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma")) then
					_G.SelectChip = "Magma";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					_G.SelectChip = "Human: Buddha";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand")) then
					_G.SelectChip = "Sand";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix")) then
					_G.SelectChip = "Bird: Phoenix";
				elseif (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough")) then
					_G.SelectChip = "Dough";
				else
					_G.SelectChip = "Flame";
				end
			end);
		end
	end
end);
v40:Toggle("Mua Chip Tự Động", _G.BuyChip, function(v490)
	_G.BuyChip = v490;
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.BuyChip then
				if ( not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or  not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
					if  not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
					end
				end
			end
		end
	end);
end);
v40:Button("Mua Chip Đã Chọn", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
end);
v40:Toggle("Tự Động Bắt Đầu Đột Kích", _G.StartRaid, function(v491)
	_G.StartRaid = v491;
end);
spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.StartRaid then
				if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == false) then
					if (( not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
						if World2 then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
						elseif World3 then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
						end
					end
				end
			end
		end);
	end
end);
v40:Button("Bắt Đầu Đột Kích", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
	elseif World3 then
		fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
	end
end);
v40:Toggle("Tự Động Đánh Quái Và Qua Đảo", false, function(v492)
	_G.Dungeon = v492;
	StopTween(_G.Dungeon);
end);
function IsIslandRaid(v493)
	if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island "   .. v493 ) then
		min = 4500;
		for v1333, v1334 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
			if ((v1334.Name == ("Island "   .. v493)) and ((v1334.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min)) then
				min = (v1334.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			end
		end
		for v1335, v1336 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
			if ((v1336.Name == ("Island "   .. v493)) and ((v1336.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min)) then
				return v1336;
			end
		end
	end
end
function getNextIsland()
	TableIslandsRaid = {
		5,
		4,
		3,
		2,
		1
	};
	for v788, v789 in pairs(TableIslandsRaid) do
		if (IsIslandRaid(v789) and ((IsIslandRaid(v789).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500)) then
			return IsIslandRaid(v789);
		end
	end
end
function attackNearbyEnemies()
	local v494 = {};
	for v790, v791 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if (v791:FindFirstChild("HumanoidRootPart") and v791:FindFirstChild("Humanoid") and (v791.Humanoid.Health > 0)) then
			local v1337 = (v791.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			if (v1337 <= 1000) then
				table.insert(v494, v791);
			end
		end
	end
	for v792, v793 in pairs(v494) do
		repeat
			if (v793:FindFirstChild("Humanoid") and (v793.Humanoid.Health > 0)) then
				EquipWeapon(_G.SelectWeapon);
				topos(v793.HumanoidRootPart.CFrame * Pos );
				wait(0.1);
			end
		until  not v793:FindFirstChild("Humanoid") or (v793.Humanoid.Health <= 0)
	end
end
spawn(function()
	while wait() do
		if _G.Dungeon then
			attackNearbyEnemies();
			if getNextIsland() then
				spawn(topos(getNextIsland().CFrame * CFrame.new(0, 60, 0) ), 1);
			end
		end
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Kill_Aura then
				local v1427 = game:GetService("Players").LocalPlayer;
				local v1428 = game:GetService("Workspace").Enemies:GetChildren();
				local v1429 = v1427.Character and v1427.Character:FindFirstChild("HumanoidRootPart") and v1427.Character.HumanoidRootPart.Position ;
				if v1429 then
					for v1737, v1738 in pairs(v1428) do
						if (v1738:FindFirstChild("Humanoid") and v1738:FindFirstChild("HumanoidRootPart") and (v1738.Humanoid.Health > 0)) then
							local v2078 = (v1738.HumanoidRootPart.Position - v1429).Magnitude;
							if (v2078 <= 1000) then
								pcall(function()
									repeat
										wait();
										sethiddenproperty(v1427, "SimulationRadius", math.huge);
										v1738.Humanoid.Health = 0;
										v1738.HumanoidRootPart.CanCollide = false;
									until  not _G.Kill_Aura or  not v1738.Parent or (v1738.Humanoid.Health <= 0)
								end);
							end
						end
					end
				end
			end
		end
	end);
end);
v40:Toggle("Tự động thức Tỉnh", _G.Awakener, function(v495)
	_G.Awakener = v495;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Awakener then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
			end
		end
	end);
end);
if World2 then
	v40:Button("Dịch chuyển đến phòng thí nghiệm", function()
		topos(CFrame.new( -6438.73535, 250.645355, -4501.50684));
	end);
elseif World3 then
	v40:Button("Dịch chuyển đến phòng thí nghiệm", function()
		topos(CFrame.new( -5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818));
	end);
end
if World2 then
	v40:Button("Phòng thức tỉnh", function()
		topos(CFrame.new(266.227783, 1.39509034, 1857.00732));
	end);
elseif World3 then
	v40:Button("Phòng thức tỉnh", function()
		topos(CFrame.new( -11571.440429688, 49.172668457031, -7574.7368164062));
	end);
end
v40:Seperator("Kiếm KoKo");
v40:Toggle("Đánh Law", _G.OderSword, function(v496)
	_G.OderSword = v496;
	StopTween(_G.OderSword);
end);
v40:Toggle("Đánh Law Đổi Sever", _G.OderSwordHop, function(v497)
	_G.OderSwordHop = v497;
end);
spawn(function()
	while wait() do
		if _G.OderSword then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for v1739, v1740 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v1740.Name == "Order [Lv. 1250] [Raid Boss]") then
							if (v1740:FindFirstChild("Humanoid") and v1740:FindFirstChild("HumanoidRootPart") and (v1740.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v1740.HumanoidRootPart.CanCollide = false;
									v1740.Humanoid.WalkSpeed = 0;
									v1740.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v1740.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.OderSword or  not v1740.Parent or (v1740.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				elseif _G.OderSwordHop then
					Hop();
				end
			end);
		end
	end
end);
v40:Button("Mua Chip Law", function()
	local v498 = {
		[1] = "BlackbeardReward",
		[2] = "Microchip",
		[3] = "2"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v498));
end);
v40:Button("Bắt Đầu Vào Đánh", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
	end
end);
v41:Seperator("Thế Giới");
v41:Button("Dịch chuyển đến Biển 1", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain");
end);
v41:Button("Dịch chuyển đến Biển 2", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
end);
v41:Button("Dịch chuyển đến Biển 3", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
end);
v41:Seperator("Dịch chuyển nhanh");
if World1 then
	v41:Dropdown("Chọn Đảo", {
		"Đảo Trời 1",
		"Đảo Trời 2",
		"Đảo dưới nước",
		"Lối vào Đảo Dưới Nước"
	}, function(v1219)
		_G.SelectFast = v1219;
	end);
end
if World2 then
	v41:Dropdown("Chọn Đảo", {
		"Biệt thự Flamingo",
		"Phòng Flamingo",
		"Con tàu bị nguyền rủa",
		"Đảo thây ma"
	}, function(v1220)
		_G.SelectFast = v1220;
	end);
end
if World3 then
	v41:Dropdown("Chọn Đảo", {
		"Dinh Thự",
		"Đảo Hydra",
		"Pháo đài trên biển",
		"Đảo rùa",
		"Cướp biển xinh đẹp"
	}, function(v1221)
		_G.SelectFast = v1221;
	end);
end
v41:Toggle("Dịch Chuyển Đến Đảo Đã Chỉ Định", false, function(v499)
	_G.TeleFast = v499;
	if (_G.TeleFast == true) then
		repeat
			wait();
			if (_G.SelectFast == "Đảo Trời 1") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -4652, 873, -1754));
			elseif (_G.SelectFast == "Đảo Trời 2") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7895, 5547, -380));
			elseif (_G.SelectFast == "Đảo dưới nước") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61164, 5, 1820));
			elseif (_G.SelectFast == "Lối vào Đảo Dưới Nước") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3865, 5, -1926));
			elseif (_G.SelectFast == "Biệt thự Flamingo") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -317, 331, 597));
			elseif (_G.SelectFast == "Phòng Flamingo") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2283, 15, 867));
			elseif (_G.SelectFast == "Con tàu bị nguyền rủa") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 125, 32853));
			elseif (_G.SelectFast == "Đảo thây ma") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -6509, 83, -133));
			elseif (_G.SelectFast == "Dinh Thự") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12471, 374, -7551));
			elseif (_G.SelectFast == "Đảo Hydra") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5756, 610, -282));
			elseif (_G.SelectFast == "Pháo đài trên biển") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -5092, 315, -3130));
			elseif (_G.SelectFast == "Đảo rùa") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12001, 332, -8861));
			elseif (_G.SelectFast == "Cướp biển xinh đẹp") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5319, 23, -93));
			end
		until  not _G.TeleFast
	end
end);
v41:Seperator("đảo");
if World1 then
	v41:Dropdown("Chọn Đảo", {
		"Cối xay gió",
		"Hàng hải",
		"Trung tâm thị trấn",
		"Rừng",
		"Làng cướp biển",
		"Sa mạc",
		"Đảo Tuyết",
		"Ford hàng hải",
		"Đấu trường La Mã",
		"Đảo Trời 1",
		"Đảo Trời 2",
		"Đảo Trời 3",
		"Nhà tù",
		"Làng Magma",
		"Đảo dưới nước",
		"Thành phố đài phun nước"
	}, function(v1222)
		_G.SelectIsland = v1222;
	end);
end
if World2 then
	v41:Dropdown("Chọn Đảo", {
		"Quán cà phê",
		"Đốm đầu tiên",
		"Đảo Râu Đen",
		"Biệt thự Flamingo",
		"Phòng Flamingo",
		"Khu vực xanh",
		"Đảo thây ma",
		"Hai ngọn núi tuyết",
		"Punk nguy hiểm",
		"Con tàu bị nguyền rủa",
		"Lâu đài băng",
		"Đảo bị lãng quên",
		"Đảo Ussop"
	}, function(v1223)
		_G.SelectIsland = v1223;
	end);
end
if World3 then
	v41:Dropdown("Chọn Đảo", {
		"Dinh Thự",
		"Cảng",
		"Cây lớn",
		"Pháo đài trên biển",
		"Đảo Hydra",
		"Đảo rùa",
		"Đảo Xương",
		"Đảo kem",
		"Đảo Đậu Phộng",
		"Đảo Bánh",
		"Đảo kẹo mía",
		"Doanh Trại Tiki"
	}, function(v1224)
		_G.SelectIsland = v1224;
	end);
end
v41:Toggle("Bay Đến Đảo Đã Chọn", false, function(v500)
	_G.TeleportIsland = v500;
	if (_G.TeleportIsland == true) then
		repeat
			wait();
			if (_G.SelectIsland == "Trung tâm thị trấn") then
				topos(CFrame.new( -688, 15, 1585));
			elseif (_G.SelectIsland == "Ford hàng hải") then
				topos(CFrame.new( -4810, 21, 4359));
			elseif (_G.SelectIsland == "Hàng hải") then
				topos(CFrame.new( -2728, 25, 2056));
			elseif (_G.SelectIsland == "Cối xay gió") then
				topos(CFrame.new(889, 17, 1434));
			elseif (_G.SelectIsland == "Sa mạc") then
				topos(CFrame.new(945, 21, 4375));
			elseif (_G.SelectIsland == "Đảo Tuyết") then
				topos(CFrame.new(1298, 87, -1344));
			elseif (_G.SelectIsland == "Làng cướp biển") then
				topos(CFrame.new( -1173, 45, 3837));
			elseif (_G.SelectIsland == "Rừng") then
				topos(CFrame.new( -1614, 37, 146));
			elseif (_G.SelectIsland == "Nhà tù") then
				topos(CFrame.new(4870, 6, 736));
			elseif (_G.SelectIsland == "Đảo dưới nước") then
				topos(CFrame.new(61164, 5, 1820));
			elseif (_G.SelectIsland == "Đấu trường La Mã") then
				topos(CFrame.new( -1535, 7, -3014));
			elseif (_G.SelectIsland == "Làng Magma") then
				topos(CFrame.new( -5290, 9, 8349));
			elseif (_G.SelectIsland == "Đảo Trời 1") then
				topos(CFrame.new( -4814, 718, -2551));
			elseif (_G.SelectIsland == "Đảo Trời 2") then
				topos(CFrame.new( -4652, 873, -1754));
			elseif (_G.SelectIsland == "Đảo trời 3") then
				topos(CFrame.new( -7895, 5547, -380));
			elseif (_G.SelectIsland == "Thành phố đài phun nước") then
				topos(CFrame.new(5128, 60, 4106));
			elseif (_G.SelectIsland == "Quán cà phê") then
				topos(CFrame.new( -382, 73, 290));
			elseif (_G.SelectIsland == "Đốm đầu tiên") then
				topos(CFrame.new( -11, 29, 2771));
			elseif (_G.SelectIsland == "Đảo Râu Đen") then
				topos(CFrame.new(3494, 13, -3259));
			elseif (_G.SelectIsland == "Biệt thự Flamingo") then
				topos(CFrame.new( -317, 331, 597));
			elseif (_G.SelectIsland == "Phòng Flamingo") then
				topos(CFrame.new(2285, 15, 905));
			elseif (_G.SelectIsland == "Khu vực xanh") then
				topos(CFrame.new( -2258, 73, -2696));
			elseif (_G.SelectIsland == "Đảo thây ma") then
				topos(CFrame.new( -5552, 194, -776));
			elseif (_G.SelectIsland == "Hai ngọn núi tuyết") then
				topos(CFrame.new(752, 408, -5277));
			elseif (_G.SelectIsland == "Punk nguy hiểm") then
				topos(CFrame.new( -5897, 18, -5096));
			elseif (_G.SelectIsland == "Con tàu bị nguyền rủa") then
				topos(CFrame.new(919, 125, 32869));
			elseif (_G.SelectIsland == "Lâu đài băng") then
				topos(CFrame.new(5505, 40, -6178));
			elseif (_G.SelectIsland == "Đảo bị lãng quên") then
				topos(CFrame.new( -3050, 240, -10178));
			elseif (_G.SelectIsland == "Đảo Ussop") then
				topos(CFrame.new(4816, 8, 2863));
			elseif (_G.SelectIsland == "Dinh Thự") then
				topos(CFrame.new( -12471, 374, -7551));
			elseif (_G.SelectIsland == "Cảng") then
				topos(CFrame.new( -334, 7, 5300));
			elseif (_G.SelectIsland == "Pháo đài trên biển") then
				topos(CFrame.new( -5073, 315, -3153));
			elseif (_G.SelectIsland == "Đảo Hydra") then
				topos(CFrame.new(5756, 610, -282));
			elseif (_G.SelectIsland == "Cây lớn") then
				topos(CFrame.new(2681, 1682, -7190));
			elseif (_G.SelectIsland == "Đảo rùa") then
				topos(CFrame.new( -12528, 332, -8658));
			elseif (_G.SelectIsland == "Đảo Xương") then
				topos(CFrame.new( -9517, 142, 5528));
			elseif (_G.SelectIsland == "Đảo kem") then
				topos(CFrame.new( -902, 79, -10988));
			elseif (_G.SelectIsland == "Đảo Đậu Phộng") then
				topos(CFrame.new( -2062, 50, -10232));
			elseif (_G.SelectIsland == "Đảo Bánh") then
				topos(CFrame.new( -1897, 14, -11576));
			elseif (_G.SelectIsland == "Đảo kẹo mía") then
				topos(CFrame.new( -1038, 10, -14076));
			elseif (_G.SelectIsland == "Doanh Trại Tiki") then
				topos(CFrame.new( -16224, 9, 439));
			end
		until  not _G.TeleportIsland
	end
	StopTween(_G.TeleportIsland);
end);
v42:Seperator("Khả năng");
v42:Button("Mua Geppo [ 10,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
end);
v42:Button("Mua Haki Vũ Trang [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
end);
v42:Button("Mua Soru [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
end);
v42:Button("Mua Haki Quan Sát [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
end);
v42:Toggle("Mua Tất Cả Những Thứ Ở Trên", false, function(v501)
	Abilities = v501;
	while Abilities do
		wait(0.1);
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	end
end);
v42:Seperator("Phong cách chiến đấu");
v42:Button("Mua Chân Đen V1 [ 150,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
end);
v42:Button("Mua Võ Điện V1 [ 550,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end);
v42:Button("Mua Võ Người Cá V1 [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end);
v42:Button("Mua Hơi Thở Rồng V1 [ 1,500 Fragments ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
end);
v42:Button("Mua Superhuman [ 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end);
v42:Button("Mua Chân Đen V2 [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
end);
v42:Button("Mua Võ Cá V2 [ 5,000 Fragments 2,500,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end);
v42:Button("Mua Võ Điện V2 [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
end);
v42:Button("Mua Võ Rồng V2 [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
end);
v42:Button("Mua God Human [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
end);
v42:Button("Mua Huyết Quỷ [ 5,000 Fragments $5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");
end);
v42:Seperator(" Kiếm ");
v42:Button("Cutlass [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
end);
v42:Button("Katana [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
end);
v42:Button("Iron Mace [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
end);
v42:Button("Dual Katana [ 12,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
end);
v42:Button("Triple Katana [ 60,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
end);
v42:Button("Pipe [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
end);
v42:Button("Dual-Headed Blade [ 400,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
end);
v42:Button("Bisento [ 1,200,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
end);
v42:Button("Soul Cane [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
end);
v42:Button("Pole v.2 [ 5,000 Fragments ]", function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
end);
v42:Toggle("Yama Sword [ Elite Hunter 30 ]", _G.Yama, function(v502)
	_G.Yama = v502;
end);
spawn(function()
	while wait() do
		if _G.Yama then
			if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
				repeat
					wait(0.1);
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  not _G.Yama
			end
		end
	end
end);
v42:Seperator(" Súng ");
v42:Button("Slingshot [ 5,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot");
end);
v42:Button("Musket [ 8,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket");
end);
v42:Button("Flintlock [ 10,500 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock");
end);
v42:Button("Refined Slingshot [ 30,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock");
end);
v42:Button("Refined Flintlock [ 65,000 Beli ]", function()
	local v503 = {
		[1] = "BuyItem",
		[2] = "Refined Flintlock"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v503));
end);
v42:Button("Cannon [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon");
end);
v42:Button("Kabucha [ 1,500 Fragments]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2");
end);
v42:Button("Bizarre Rifle [ 250 Ectoplasm ]", function()
	local v504 = "Ectoplasm";
	local v505 = "Buy";
	local v506 = 1;
	local v507 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v507:InvokeServer(v504, v505, v506);
	local v504 = "Ectoplasm";
	local v505 = "Buy";
	local v506 = 1;
	local v507 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v507:InvokeServer(v504, v505, v506);
end);
v42:Seperator(" Fragments ");
v42:Button("Đặt lại Chỉ Số ( 2.5K F )", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
end);
v42:Button("Đổi Tộc ( 3K F )", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
end);
v42:Seperator(" Phụ kiện ");
v42:Button("Black Cape [ 50,000 Beli ]", function()
	local v508 = {
		[1] = "BuyItem",
		[2] = "Black Cape"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v508));
end);
v42:Button("Swordsman Hat [ 150k Beli ]", function()
	local v509 = {
		[1] = "BuyItem",
		[2] = "Swordsman Hat"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v509));
end);
v42:Button("Tomoe Ring [ 500k Beli ]", function()
	local v510 = {
		[1] = "BuyItem",
		[2] = "Tomoe Ring"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v510));
end);
v43:Seperator("Trái");
FruitList = {
	"Bomb-Bomb",
	"Spike-Spike",
	"Chop-Chop",
	"Spring-Spring",
	"Kilo-Kilo",
	"Spin-Spin",
	"Bird: Falcon",
	"Smoke-Smoke",
	"Flame-Flame",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Revive-Revive",
	"Diamond-Diamond",
	"Light-Light",
	"Love-Love",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Magma-Magma",
	"Door-Door",
	"Quake-Quake",
	"Human-Human: Buddha",
	"String-String",
	"Bird-Bird: Phoenix",
	"Rumble-Rumble",
	"Paw-Paw",
	"Gravity-Gravity",
	"Dough-Dough",
	"Venom-Venom",
	"Shadow-Shadow",
	"Control-Control",
	"Soul-Soul",
	"Dragon-Dragon",
	"Leopard-Leopard"
};
local v87 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {};
ShopDevilSell = {};
for v511, v512 in next, v87 do
	table.insert(Table_DevilFruitSniper, v512.Name);
	if v512.OnSale then
		table.insert(ShopDevilSell, v512.Name);
	end
end
_G.SelectFruit = "";
v43:Dropdown("Chọn Trái", Table_DevilFruitSniper, function(v513)
	_G.SelectFruit = v513;
end);
v43:Toggle("Mua Trái Đã Chọn", _G.BuyFruitSniper, function(v514)
	_G.BuyFruitSniper = v514;
end);
v43:Seperator("khác");
v43:Dropdown("Chọn Trái", Table_DevilFruitSniper, function(v515)
	_G.SelectFruitEat = v515;
end);
v43:Toggle("Ăn Trái Đã Chọn", _G.EatFruit, function(v516)
	_G.EatFruit = v516;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.EatFruit then
				game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer();
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.BuyFruitSniper then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", "_G.SelectFruit", false);
			end
		end
	end);
end);
v43:Button("Quay Trái Ác Quỷ", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy");
end);
v43:Button("Mở Shop Trái", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
v43:Toggle("Tự Động Lưu Trái", _G.StoreFruit, function(v518)
	_G.StoreFruit = v518;
end);
spawn(function()
	while wait() do
		if _G.StoreFruit then
			pcall(function()
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String", game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") );
				end
				if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard", game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") );
				end
			end);
		end
	end
end);
v43:Toggle("Dịch Chuyển Đến Trái", _G.Grabfruit, function(v519)
	_G.Grabfruit = v519;
end);
spawn(function()
	while wait(0.1) do
		if _G.Grabfruit then
			for v1430, v1431 in pairs(game.Workspace:GetChildren()) do
				if v1431:IsA("Tool") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1431.Handle.CFrame;
				end
			end
		end
	end
end);
v43:Toggle("Bay Đến Trái", _G.Tweenfruit, function(v520)
	_G.Tweenfruit = v520;
	StopTween(_G.Tweenfruit);
end);
spawn(function()
	while wait() do
		if _G.Tweenfruit then
			for v1432, v1433 in pairs(game.Workspace:GetChildren()) do
				if v1433:IsA("Tool") then
					topos(v1433.Handle.CFrame);
				end
			end
		end
	end
end);
v44:Seperator("Máy Chủ");
v44:Button("Vào Lại Máy Chủ", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
end);
v44:Button("Đổi Máy Chủ", function()
	Hop();
end);
v44:Button("Đổi Máy Chủ Ít Người", function()
	getgenv().AutoTeleport = true;
	getgenv().DontTeleportTheSameNumber = true;
	getgenv().CopytoClipboard = false;
	if  not game:IsLoaded() then
		print("Game is loading waiting...");
	end
	local v524 = math.huge;
	local v525;
	local v526;
	local v527 = "https://games.roblox.com/v1/games/"   .. game.PlaceId   .. "/servers/Public?sortOrder=Asc&limit=100" ;
	function serversearch()
		for v1225, v1226 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v527)).data) do
			if ((type(v1226) == "table") and (v1226.playing ~= nil) and (v524 > v1226.playing)) then
				v525 = v1226.maxPlayers;
				v524 = v1226.playing;
				v526 = v1226.id;
			end
		end
	end
	function getservers()
		serversearch();
		for v1227, v1228 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v527))) do
			if (v1227 == "nextPageCursor") then
				if v527:find("&cursor=") then
					local v1550 = v527:find("&cursor=");
					local v1551 = v527:sub(v1550);
					v527 = v527:gsub(v1551, "");
				end
				v527 = v527   .. "&cursor="   .. v1228 ;
				getservers();
			end
		end
	end
	getservers();
	if AutoTeleport then
		if DontTeleportTheSameNumber then
			if (( #game:GetService("Players"):GetPlayers() - 4) == v524) then
				return warn("It has same number of players (except you)");
			elseif (v526 == game.JobId) then
				return warn("Your current server is the most empty server atm");
			end
		end
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v526);
	end
end);
v44:Button("Sao chép Id Máy Chủ", function()
	setclipboard(tostring(game.JobId));
end);
v44:Textbox("Nhập Id Máy Chủ", "Nhập", true, function(v528)
	_G.Job = v528;
end);
v44:Button("Vào Máy Chủ Đã Nhập Id", function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer);
end);
v44:Seperator("linh tinh");
v44:Button("Mở Tilte", function()
	local v529 = {
		[1] = "getTitles"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v529));
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true;
end);
v44:Button("Mở Haki Màu", function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true;
end);
v44:Seperator("Đội");
v44:Button("Tham gia đội Hải Tặc", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
end);
v44:Button("Tham gia đội Thủy quân lục chiến", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines");
end);
v44:Toggle("Chống AFK", true, function()
	local v532 = game:GetService("VirtualUser");
	repeat
		wait();
	until game:IsLoaded()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new());
		v532:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
		wait(1);
		v532:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	end);
end);
v44:Seperator("Mã");
local v88 = {
	"KITTGAMING",
	"ENYU_IS_PRO",
	"FUDD10",
	"BIGNEWS",
	"THEGREATACE",
	"SUB2GAMERROBOT_EXP1",
	"STRAWHATMAIME",
	"SUB2OFFICIALNOOBIE",
	"SUB2NOOBMASTER123",
	"SUB2DAIGROCK",
	"AXIORE",
	"TANTAIGAMIMG",
	"STRAWHATMAINE",
	"JCWK",
	"FUDD10_V2",
	"SUB2FER999",
	"MAGICBIS",
	"TY_FOR_WATCHING",
	"STARCODEHEO"
};
v44:Button("Nhập Tất Cả Mã", function()
	function RedeemCode(v794)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v794);
	end
	for v795, v796 in pairs(v88) do
		RedeemCode(v796);
	end
end);
v44:Dropdown("Chọn Mã Reset Chỉ Số", {
	"NOOB_REFUND",
	"SUB2GAMERROBOT_RESET1",
	"Sub2UncleKizaru"
}, function(v533)
	_G.CodeSelect = v533;
end);
v44:Button("Nhập Mã Đã Chọn", function()
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect);
end);
v44:Seperator("Tình trạng");
v44:Dropdown("Chọn trạng thái Haki", {
	"Tình trạng 0",
	"Tình trạng 1",
	"Tình trạng 2",
	"Tình trạng 3",
	"Tình trạng 4",
	"Tình trạng 5"
}, function(v534)
	_G.SelectStateHaki = v534;
end);
v44:Button("Thay đổi trạng thái Haki", function()
	if (_G.SelectStateHaki == "Tình trạng 0") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 0);
	elseif (_G.SelectStateHaki == "Tình trạng 1") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 1);
	elseif (_G.SelectStateHaki == "Tình trạng 2") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 2);
	elseif (_G.SelectStateHaki == "Tình trạng 3") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 3);
	elseif (_G.SelectStateHaki == "Tình trạng 4") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 4);
	elseif (_G.SelectStateHaki == "Tình trạng 5") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 5);
	end
end);
local v89 = require(game.ReplicatedStorage.Util.CameraShaker);
v89:Stop();
local v90 = game:GetService("Players");
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "HTG Script",
	Text = "Đã tải xong",
	Icon = "rbxthumb://type=Asset&id=133662246764578&w=150&h=150",
	Duration = 10
});
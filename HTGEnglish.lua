
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
	for v706, v707 in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
		if ((v707.Name == "Death") or (v707.Name == "Spawn")) then
			v707:Destroy();
		end
	end
end);
spawn(function()
	for v708, v709 in pairs(game:GetDescendants()) do
		if (v709:IsA("ParticleEmitter") or v709:IsA("Trail")) then
			v709.Lifetime = NumberRange.new(0);
		elseif v709:IsA("Explosion") then
			v709.BlastPressure = 1;
			v709.BlastRadius = 1;
		elseif (v709:IsA("Fire") or v709:IsA("SpotLight") or v709:IsA("Smoke")) then
			v709.Enabled = false;
		end
	end
end);
local v0 = game:GetService("UserInputService");
local v1 = game:GetService("TweenService");
local function v2(v124, v125)
	local v126 = nil;
	local v127 = nil;
	local v128 = nil;
	local v129 = nil;
	local function v130(v710)
		local v711 = v710.Position - v128 ;
		local v712 = UDim2.new(v129.X.Scale, v129.X.Offset + v711.X , v129.Y.Scale, v129.Y.Offset + v711.Y );
		local v713 = v1:Create(v125, TweenInfo.new(0.15), {
			Position = v712
		});
		v713:Play();
	end
	v124.InputBegan:Connect(function(v714)
		if ((v714.UserInputType == Enum.UserInputType.MouseButton1) or (v714.UserInputType == Enum.UserInputType.Touch)) then
			v126 = true;
			v128 = v714.Position;
			v129 = v125.Position;
			v714.Changed:Connect(function()
				if (v714.UserInputState == Enum.UserInputState.End) then
					v126 = false;
				end
			end);
		end
	end);
	v124.InputChanged:Connect(function(v715)
		if ((v715.UserInputType == Enum.UserInputType.MouseMovement) or (v715.UserInputType == Enum.UserInputType.Touch)) then
			v127 = v715;
		end
	end);
	v0.InputChanged:Connect(function(v716)
		if ((v716 == v127) and v126) then
			v130(v716);
		end
	end);
end
_G.BGColor_1 = Color3.fromRGB(30, 30, 30);
_G.BGColor_2 = Color3.fromRGB(20, 20, 20);
_G.Color = Color3.fromRGB(128, 102, 255);
_G.WindowBackgroundColor = Color3.fromRGB(12, 12, 12);
_G.BackgroundItemColor = Color3.fromRGB(20, 20, 20);
_G.TabWindowColor = Color3.fromRGB(30, 30, 30);
_G.ContainerColor = Color3.fromRGB(30, 30, 30);
_G.TitleTextColor = Color3.fromRGB(150, 150, 150);
_G.ImageColor = Color3.fromRGB(150, 150, 150);
_G.LineThemeColor = Color3.fromRGB(150, 150, 150);
_G.TabTextColor = Color3.fromRGB(150, 150, 150);
_G.TabImageColor = Color3.fromRGB(150, 150, 150);
_G.TabThemeColor = Color3.fromRGB(250, 0, 0);
_G.SectionColor = Color3.fromRGB(150, 150, 150);
_G.SectionImageColor = Color3.fromRGB(150, 150, 150);
_G.SectionTextColor = Color3.fromRGB(150, 150, 150);
_G.SectionOn = Color3.fromRGB(0, 250, 0);
local v3 = {};
local v4 = {};
local v1 = game:GetService("TweenService");
local v5 = Instance.new("ScreenGui");
v5.Name = "Balaraja";
v5.Parent = game.CoreGui;
v5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
local v11 = Instance.new("Frame");
v11.Name = "NotiFrame";
v11.Parent = v5;
v11.AnchorPoint = Vector2.new(0.5, 0.5);
v11.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
v11.BorderSizePixel = 0;
v11.Position = UDim2.new(1, -210, 1, 100);
v11.Size = UDim2.new(0, 400, 0, 500);
v11.ClipsDescendants = true;
v11.BackgroundTransparency = 1;
local v21 = Instance.new("UIListLayout");
v21.Parent = v11;
v21.SortOrder = Enum.SortOrder.LayoutOrder;
v21.Padding = UDim.new(0, 5);
v4.Notification = function(v131, v132, v133, v134)
	local v135 = Instance.new("Frame");
	v135.Name = "TitleFrame";
	v135.Parent = v11;
	v135.AnchorPoint = Vector2.new(0.5, 0.5);
	v135.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
	v135.BorderSizePixel = 0;
	v135.Position = UDim2.new(0.5, 0, 0.5, 0);
	v135.Size = UDim2.new(0, 0, 0, 0);
	v135.ClipsDescendants = true;
	v135.BackgroundTransparency = 0;
	local v145 = Instance.new("UICorner");
	v145.CornerRadius = UDim.new(0, 4);
	v145.Name = "";
	v145.Parent = v135;
	v135:TweenSizeAndPosition(UDim2.new(0, 400 - 10 , 0, 70), UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 0.3, true);
	local v149 = Instance.new("ImageLabel");
	v149.Parent = v135;
	v149.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v149.BackgroundTransparency = 1;
	v149.AnchorPoint = Vector2.new(0.5, 0.5);
	v149.Position = UDim2.new(0.9, 0, 0.5, 0);
	v149.Size = UDim2.new(0, 90, 0, 90);
	v149.Image = "rbxassetid://";
	local v157 = Instance.new("TextLabel");
	v157.Parent = v135;
	v157.Name = "TextLabel_Tap";
	v157.BackgroundColor3 = Color3.fromRGB(50, 50, 50);
	v157.Size = UDim2.new(0, 160, 0, 25);
	v157.Font = Enum.Font.Code;
	v157.Text = v132;
	v157.TextColor3 = Color3.fromRGB(30, 30, 30);
	v157.TextSize = 17;
	v157.AnchorPoint = Vector2.new(0.5, 0.5);
	v157.Position = UDim2.new(0.23, 0, 0.3, 0);
	v157.TextXAlignment = Enum.TextXAlignment.Left;
	v157.BackgroundTransparency = 1;
	local v172 = Instance.new("Frame");
	v172.Name = "LableFrame";
	v172.Parent = v135;
	v172.AnchorPoint = Vector2.new(0.5, 0.5);
	v172.BackgroundColor3 = Color3.fromRGB(50, 50, 50);
	v172.BorderSizePixel = 0;
	v172.Position = UDim2.new(0.36, 0, 0.67, 0);
	v172.Size = UDim2.new(0, 260, 0, 25);
	v172.ClipsDescendants = true;
	v172.BackgroundTransparency = 1;
	local v182 = Instance.new("TextLabel");
	v182.Parent = v172;
	v182.Name = "TextLabel_Tap";
	v182.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
	v182.Size = UDim2.new(0, 260, 0, 25);
	v182.Font = Enum.Font.Code;
	v182.Text = v133;
	v182.TextColor3 = Color3.fromRGB(255, 255, 255);
	v182.TextSize = 15;
	v182.AnchorPoint = Vector2.new(0.5, 0.5);
	v182.Position = UDim2.new(0.5, 0, 0.5, 0);
	v182.TextXAlignment = Enum.TextXAlignment.Left;
	v182.BackgroundTransparency = 1;
	repeat
		wait();
	until v135.Size == UDim2.new(0, 400 - 10 , 0, 70)
	local v195 = Instance.new("Frame");
	v195.Name = "Time";
	v195.Parent = v135;
	v195.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v195.BorderSizePixel = 0;
	v195.Position = UDim2.new(0, 0, 0, 0);
	v195.Size = UDim2.new(0, 0, 0, 0);
	v195.ClipsDescendants = false;
	v195.BackgroundTransparency = 0;
	local v204 = Instance.new("UICorner");
	v204.CornerRadius = UDim.new(0, 4);
	v204.Name = "";
	v204.Parent = v195;
	v195:TweenSizeAndPosition(UDim2.new(0, 400 - 10 , 0, 3), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.3, true);
	repeat
		wait();
	until v195.Size == UDim2.new(0, 400 - 10 , 0, 3)
	v1:Create(v195, TweenInfo.new(tonumber(v134), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
		Size = UDim2.new(0, 0, 0, 3)
	}):Play();
	delay(tonumber(v134), function()
		v1:Create(v135, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
			Size = UDim2.new(0, 0, 0, 0)
		}):Play();
		wait(0.3);
		v135:Destroy();
	end);
end;
do
	local v208 = game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("ZENHUB");
	if v208 then
		v208:Destroy();
	end
end
v3.Window = function(v209, v210, v211, v212)
	local v213 = {};
	local v214 = false;
	local v215 = false;
	local v211 = v211 or 123448871674913 ;
	local v216 = "";
	local v212 = v212 or Enum.KeyCode.RightControl ;
	local v217 = string.gsub(tostring(v212), "Enum.KeyCode.", "");
	local v218 = Instance.new("ScreenGui");
	v218.Name = "ZENHUB";
	v218.Parent = game.CoreGui;
	v218.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local v224 = Instance.new("Frame");
	v224.Name = "Main";
	v224.Parent = v218;
	v224.ClipsDescendants = true;
	v224.AnchorPoint = Vector2.new(0.5, 0.5);
	v224.BackgroundColor3 = Color3.fromRGB(24, 24, 24);
	v224.Position = UDim2.new(0.5, 0, 0.5, 0);
	v224.Size = UDim2.new(0, 0, 0, 0);
	v224:TweenSize(UDim2.new(0, 480, 0, 280), "Out", "Quad", 0.4, true);
	local v232 = Instance.new("UICorner");
	v232.Name = "MCNR";
	v232.Parent = v224;
	local v235 = Instance.new("Frame");
	v235.Name = "Top";
	v235.Parent = v224;
	v235.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
	v235.Size = UDim2.new(0, 480, 0, 27);
	local v240 = Instance.new("UICorner");
	v240.Name = "TCNR";
	v240.Parent = v235;
	local v243 = Instance.new("ImageLabel");
	v243.Name = "Logo";
	v243.Parent = v235;
	v243.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
	v243.BackgroundTransparency = 1;
	v243.Position = UDim2.new( -0.01, 0, -0.319, 0);
	v243.Size = UDim2.new(0, 55, 0, 45);
	v243.Image = "rbxassetid://"   .. tostring(v211) ;
	local v251 = Instance.new("TextLabel");
	v251.Name = "Name";
	v251.Parent = v235;
	v251.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
	v251.BackgroundTransparency = 1;
	v251.Position = UDim2.new(0.0909756112, 0, 0, 0);
	v251.Size = UDim2.new(0, 61, 0, 27);
	v251.Font = Enum.Font.Code;
	v251.Text = v210;
	v251.TextColor3 = Color3.fromRGB(128, 102, 255);
	v251.TextSize = 16;
	local v263 = Instance.new("TextLabel");
	v263.Name = "";
	v263.Parent = v235;
	v263.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
	v263.BackgroundTransparency = 1;
	v263.Position = UDim2.new(0, 78, 0, 0);
	v263.Size = UDim2.new(0, 81, 0, 27);
	v263.Font = Enum.Font.Code;
	v263.Text = "";
	v263.TextColor3 = Color3.fromRGB(255, 47, 172);
	v263.TextSize = 16;
	local v274 = Instance.new("ImageLabel");
	local v275 = Instance.new("Frame");
	v274.Parent = v224;
	v274.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
	v274.BackgroundTransparency = 1;
	v274.Position = UDim2.new(0, 25, 0, 25);
	v274.Size = UDim2.new(0, 100, 0, 170);
	v274.Image = "";
	local v282 = Instance.new("Frame");
	v282.Name = "Tab";
	v282.Parent = v224;
	v282.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
	v282.Position = UDim2.new(0, 5, 0, 30);
	v282.Size = UDim2.new(0, 0, 0, 0);
	local v288 = Instance.new("UIListLayout");
	v288.Name = "TabCorner";
	v288.Parent = v282;
	v288.SortOrder = Enum.SortOrder.LayoutOrder;
	v288.Padding = UDim.new(0, 15);
	local v240 = Instance.new("UICorner");
	v240.Name = "TCNR";
	v240.Parent = v282;
	local v294 = Instance.new("ScrollingFrame");
	v294.Name = "ScrollTab";
	v294.Parent = v282;
	v294.Active = true;
	v294.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
	v294.BackgroundTransparency = 1;
	v294.Size = UDim2.new(0, 133, 0, 250);
	v294.CanvasSize = UDim2.new(0, 0, 0, 0);
	v294.ScrollBarThickness = 0;
	local v303 = Instance.new("UIListLayout");
	v303.Name = "PLL";
	v303.Parent = v294;
	v303.SortOrder = Enum.SortOrder.LayoutOrder;
	v303.Padding = UDim.new(0, 15);
	local v308 = Instance.new("UIPadding");
	v308.Name = "PPD";
	v308.Parent = v294;
	v308.PaddingLeft = UDim.new(0, 10);
	v308.PaddingTop = UDim.new(0, 10);
	local v313 = Instance.new("Frame");
	v313.Name = "Page";
	v313.Parent = v224;
	v313.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
	v313.Position = UDim2.new(0.295726834, 0, 0.144050003, 0);
	v313.Size = UDim2.new(0, 330, 0, 280);
	local v319 = Instance.new("UICorner");
	v319.Name = "PCNR";
	v319.Parent = v313;
	local v322 = Instance.new("Frame");
	v322.Name = "MainPage";
	v322.Parent = v313;
	v322.ClipsDescendants = true;
	v322.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
	v322.BackgroundTransparency = 1;
	v322.Size = UDim2.new(0, 325, 0, 316);
	local v329 = Instance.new("Folder");
	v329.Name = "PageList";
	v329.Parent = v322;
	local v332 = Instance.new("UIPageLayout");
	v332.Parent = v329;
	v332.SortOrder = Enum.SortOrder.LayoutOrder;
	v332.EasingDirection = Enum.EasingDirection.InOut;
	v332.EasingStyle = Enum.EasingStyle.Quad;
	v332.FillDirection = Enum.FillDirection.Vertical;
	v332.Padding = UDim.new(0, 15);
	v332.TweenTime = 0.4;
	v332.GamepadInputEnabled = false;
	v332.ScrollWheelInputEnabled = false;
	v332.TouchInputEnabled = false;
	v2(v235, v224);
	v0.InputBegan:Connect(function(v717)
		if (v717.KeyCode == Enum.KeyCode[v217]) then
			if (v214 == false) then
				v214 = true;
				v224:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.4, true);
			else
				v214 = false;
				v224:TweenSize(UDim2.new(0, 480, 0, 280), "Out", "Quad", 0.5, true);
			end
		end
	end);
	local v346 = {};
	v346.T = function(v718, v719, v720)
		local v721 = Instance.new("TextButton");
		local v722 = Instance.new("ImageLabel");
		v721.Parent = v294;
		v721.Name = v719   .. "Server" ;
		v721.Text = v719;
		v721.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
		v721.BackgroundTransparency = 1;
		v721.Size = UDim2.new(0, 130, 0, 23);
		v721.Font = Enum.Font.Gotham;
		v721.TextColor3 = Color3.fromRGB(255, 255, 255);
		v721.TextSize = 11;
		v721.TextTransparency = 0.5;
		local v734 = Instance.new("Frame");
		local v735 = Instance.new("UICorner");
		v734.Name = "TabFrame";
		v734.Parent = v721;
		v734.ClipsDescendants = true;
		v734.BackgroundColor3 = Color3.fromRGB(31, 31, 31);
		v734.BackgroundTransparency = 0.5;
		v734.Size = UDim2.new(0, 120, 0.1, 23);
		v735.CornerRadius = UDim.new(0, 5);
		v735.Parent = v734;
		v722.Name = v719 or "TabImage" ;
		v722.Parent = v734;
		v722.BackgroundColor3 = _G.Color;
		v722.BackgroundTransparency = 1;
		v722.Position = UDim2.new(0, 0, 0, 0);
		v722.Size = UDim2.new(0, 20, 0, 20);
		v722.Image = v720 or "rbxassetid://8666601749" ;
		v722.ImageColor3 = _G.Color;
		local v752 = Instance.new("ScrollingFrame");
		v752.Name = v719   .. "_Page" ;
		v752.Parent = v329;
		v752.Active = true;
		v752.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
		v752.BackgroundTransparency = 1;
		v752.BorderSizePixel = 0;
		v752.Size = UDim2.new(0, 400, 0, 245);
		v752.CanvasSize = UDim2.new(0, 0, 0, 0);
		v752.ScrollBarThickness = 0;
		local v762 = Instance.new("UIPadding");
		local v763 = Instance.new("UIListLayout");
		v762.Parent = v752;
		v762.PaddingLeft = UDim.new(0, 10);
		v762.PaddingTop = UDim.new(0, 10);
		v763.Padding = UDim.new(0, 15);
		v763.Parent = v752;
		v763.SortOrder = Enum.SortOrder.LayoutOrder;
		v721.MouseButton1Click:Connect(function()
			for v1837, v1838 in next, v294:GetChildren() do
				if v1838:IsA("TextButton") then
					v1:Create(v1838, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end
				v1:Create(v721, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextTransparency = 0
				}):Play();
			end
			for v1839, v1840 in next, v329:GetChildren() do
				v216 = string.gsub(v721.Name, "Server", "")   .. "_Page" ;
				if (v1840.Name == v216) then
					v332:JumpTo(v1840);
				end
			end
		end);
		if (v215 == false) then
			for v1973, v1974 in next, v294:GetChildren() do
				if v1974:IsA("TextButton") then
					v1:Create(v1974, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end
				v1:Create(v721, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextTransparency = 0
				}):Play();
			end
			v332:JumpToIndex(1);
			v215 = true;
		end
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				v752.CanvasSize = UDim2.new(0, 0, 0, v763.AbsoluteContentSize.Y + 20 );
				v294.CanvasSize = UDim2.new(0, 0, 0, v303.AbsoluteContentSize.Y + 20 );
			end);
		end);
		v3.Notification = function(v990, v991)
			local v992 = Instance.new("TextButton");
			local v993 = Instance.new("Frame");
			local v994 = Instance.new("TextButton");
			local v995 = Instance.new("UICorner");
			local v996 = Instance.new("TextLabel");
			local v997 = Instance.new("TextLabel");
			local v998 = Instance.new("TextLabel");
			local v999 = Instance.new("UICorner");
			local v1000 = Instance.new("UIStroke");
			local v1001 = Instance.new("Frame");
			v992.Name = "NotificationHold";
			v992.Parent = v218;
			v992.BackgroundColor3 = _G.WindowBackgroundColor;
			v992.BackgroundTransparency = 1;
			v992.BorderSizePixel = 0;
			v992.Size = UDim2.new(0, 589, 0, 378);
			v992.AutoButtonColor = false;
			v992.Font = Enum.Font.SourceSans;
			v992.Text = "";
			v992.TextColor3 = _G.SectionTextColor;
			v992.TextSize = 13;
			v1:Create(v992, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 1
			}):Play();
			wait(0.4);
			v993.Name = "NotificationFrame";
			v993.Parent = v992;
			v993.AnchorPoint = Vector2.new(0.5, 0.5);
			v993.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
			v993.BorderColor3 = _G.SectionColor;
			v993.BorderSizePixel = 0;
			v993.Transparency = 0;
			v993.ClipsDescendants = true;
			v993.Position = UDim2.new(0, 295, 0, 190);
			v993.Size = UDim2.new(0, 0, 0, 0);
			v993:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.6, true);
			v999.Name = "NotifCorner";
			v999.Parent = v993;
			v999.CornerRadius = UDim.new(0, 5);
			v1000.Name = "NotifHolderUIStroke";
			v1000.Parent = v993;
			v1000.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1000.Color = _G.SectionColor;
			v1000.LineJoinMode = Enum.LineJoinMode.Round;
			v1000.Thickness = 1;
			v1000.Transparency = 0;
			v1000.Enabled = true;
			v1000.Archivable = true;
			v994.Name = "OkayBtn";
			v994.Parent = v993;
			v994.BackgroundColor3 = Color3.fromRGB(190, 190, 190);
			v994.BorderSizePixel = 1;
			v994.BorderColor3 = _G.SectionColor;
			v994.Position = UDim2.new(0, 125, 0, 190);
			v994.Size = UDim2.new(0, 150, 0, 30);
			v994.AutoButtonColor = true;
			v994.Font = Enum.Font.SourceSans;
			v994.Text = "";
			v994.TextColor3 = _G.SectionTextColor;
			v994.TextSize = 13;
			v995.CornerRadius = UDim.new(0, 5);
			v995.Name = "OkayBtnCorner";
			v995.Parent = v994;
			v996.Name = "OkayBtnTitle";
			v996.Parent = v994;
			v996.BackgroundColor3 = _G.SectionColor;
			v996.BackgroundTransparency = 1;
			v996.Size = UDim2.new(0, 150, 0, 30);
			v996.Text = "OK";
			v996.Font = Enum.Font.Gotham;
			v996.TextColor3 = Color3.fromRGB(0, 0, 0);
			v996.TextSize = 22;
			v997.Name = "NotificationTitle";
			v997.Parent = v993;
			v997.BackgroundColor3 = _G.SectionColor;
			v997.BackgroundTransparency = 1;
			v997.Position = UDim2.new(0, 0, 0, 10);
			v997.Size = UDim2.new(0, 400, 0, 25);
			v997.ZIndex = 3;
			v997.Font = Enum.Font.Gotham;
			v997.Text = "Notification";
			v997.TextColor3 = Color3.fromRGB(255, 0, 0);
			v997.TextSize = 22;
			v1001.Name = "Line";
			v1001.Parent = v993;
			v1001.BackgroundColor3 = _G.SectionColor;
			v1001.BorderSizePixel = 0;
			v1001.Position = UDim2.new(0, 10, 0, 40);
			v1001.Size = UDim2.new(0, 380, 0, 1);
			v998.Name = "NotificationDesc";
			v998.Parent = v993;
			v998.BackgroundColor3 = _G.SectionColor;
			v998.BackgroundTransparency = 1;
			v998.Position = UDim2.new(0, 10, 0, 80);
			v998.Size = UDim2.new(0, 380, 0, 200);
			v998.Font = Enum.Font.Gotham;
			v998.Text = v991;
			v998.TextScaled = false;
			v998.TextColor3 = _G.SectionTextColor;
			v998.TextSize = 16;
			v998.TextWrapped = true;
			v998.TextXAlignment = Enum.TextXAlignment.Center;
			v998.TextYAlignment = Enum.TextYAlignment.Top;
			v994.MouseEnter:Connect(function()
				v1:Create(v994, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				}):Play();
			end);
			v994.MouseLeave:Connect(function()
				v1:Create(v994, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				}):Play();
			end);
			v994.MouseButton1Click:Connect(function()
				v993:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.6, true);
				wait(0.4);
				v1:Create(v992, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
				wait(0.3);
				v992:Destroy();
			end);
		end;
		local v772 = {};
		v772.Button = function(v1096, v1097, v1098)
			local v1099 = Instance.new("Frame");
			local v1100 = Instance.new("UICorner");
			local v1101 = Instance.new("TextButton");
			local v1102 = Instance.new("UICorner");
			local v1103 = Instance.new("Frame");
			local v1104 = Instance.new("UICorner");
			v1099.Name = "Button";
			v1099.Parent = v752;
			v1099.BackgroundColor3 = Color3.fromRGB(225, 225, 225);
			v1099.BackgroundTransparency = 1;
			v1099.Size = UDim2.new(0, 310, 0, 31);
			v1100.CornerRadius = UDim.new(0, 5);
			v1100.Parent = v1099;
			v1101.Name = "TextBtn";
			v1101.Parent = v1099;
			v1101.BackgroundColor3 = Color3.fromRGB(244, 244, 244);
			v1101.BackgroundTransparency = 0.5;
			v1101.Position = UDim2.new(0, 1, 0, 1);
			v1101.Size = UDim2.new(0, 308, 0, 29);
			v1101.AutoButtonColor = false;
			v1101.Font = Enum.Font.Gotham;
			v1101.Text = v1097;
			v1101.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1101.TextSize = 12;
			v1102.CornerRadius = UDim.new(0, 5);
			v1102.Parent = v1101;
			v1103.Name = "Black";
			v1103.Parent = v1099;
			v1103.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			v1103.BackgroundTransparency = 1;
			v1103.BorderSizePixel = 0;
			v1103.Position = UDim2.new(0, 1, 0, 1);
			v1103.Size = UDim2.new(0, 310, 0, 29);
			v1104.CornerRadius = UDim.new(0, 5);
			v1104.Parent = v1103;
			v1101.MouseEnter:Connect(function()
				v1:Create(v1103, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0.7
				}):Play();
			end);
			v1101.MouseLeave:Connect(function()
				v1:Create(v1103, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play();
			end);
			v1101.MouseButton1Click:Connect(function()
				v1101.TextSize = 0;
				v1:Create(v1101, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextSize = 15
				}):Play();
				v1098();
			end);
		end;
		v772.Toggle = function(v1135, v1136, v1137, v1138)
			local v1139 = false;
			local v1140 = Instance.new("Frame");
			local v1141 = Instance.new("Frame");
			local v1142 = Instance.new("UIStroke");
			local v1143 = Instance.new("UIListLayout");
			local v1144 = Instance.new("UICorner");
			local v1145 = Instance.new("ImageLabel");
			local v1146 = Instance.new("TextLabel");
			local v1147 = Instance.new("TextLabel");
			local v1148 = Instance.new("ImageButton");
			v1140.Name = v1136 or "CheckFrame" ;
			v1140.Parent = v752;
			v1140.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1140.BackgroundTransparency = 1;
			v1140.BorderSizePixel = 0;
			v1140.Size = UDim2.new(0, 38, 0, 30);
			v1141.Name = "CheckFrame2";
			v1141.Parent = v1140;
			v1141.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
			v1141.BackgroundTransparency = 1;
			v1141.BorderSizePixel = 0;
			v1141.Position = UDim2.new(0, 3, 0, 0);
			v1141.Size = UDim2.new(0, 308, 0, 30);
			v1142.Name = "UIStroke";
			v1142.Parent = v1141;
			v1142.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1142.Color = Color3.fromRGB(128, 102, 255);
			v1142.LineJoinMode = Enum.LineJoinMode.Round;
			v1142.Thickness = 1;
			v1142.Transparency = 0;
			v1142.Enabled = true;
			v1142.Archivable = true;
			v1144.Parent = v1141;
			v1144.CornerRadius = UDim.new(0, 3);
			v1145.Name = "ImageLabel";
			v1145.Parent = v1141;
			v1145.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1145.BackgroundTransparency = 1;
			v1145.BorderSizePixel = 0;
			v1145.Position = UDim2.new( -0.018, 0, -0.252, 0);
			v1145.Size = UDim2.new(0, 45, 0, 45);
			v1145.Image = "rbxassetid://";
			v1145.ImageColor3 = Color3.fromRGB(128, 102, 255);
			v1146.Name = "Space";
			v1146.Parent = v1141;
			v1146.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1146.BackgroundTransparency = 1;
			v1146.Position = UDim2.new(0, 30, 0, 0);
			v1146.Size = UDim2.new(0, 15, 0, 30);
			v1146.Font = Enum.Font.Gotham;
			v1146.Text = "";
			v1146.TextSize = 12;
			v1146.TextColor3 = Color3.fromRGB(255, 225, 225);
			v1146.TextXAlignment = Enum.TextXAlignment.Center;
			v1147.Name = "Title";
			v1147.Parent = v1141;
			v1147.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1147.BackgroundTransparency = 1;
			v1147.Position = UDim2.new(0, 50, 0, 0);
			v1147.Size = UDim2.new(0, 280, 0, 30);
			v1147.Font = Enum.Font.Gotham;
			v1147.Text = v1136 or "checkBox Title" ;
			v1147.TextColor3 = Color3.fromRGB(128, 102, 255);
			v1147.TextSize = 12;
			v1147.TextXAlignment = Enum.TextXAlignment.Left;
			v1148.Name = "ImageButton";
			v1148.Parent = v1141;
			v1148.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1148.BackgroundTransparency = 1;
			v1148.Position = UDim2.new(0, 280, 0, 4);
			v1148.Size = UDim2.new(0, 23, 0, 23);
			v1148.ZIndex = 2;
			v1148.Image = "rbxassetid://3926311105";
			v1148.ImageColor3 = Color3.fromRGB(128, 102, 255);
			v1148.ImageRectOffset = Vector2.new(940, 784);
			v1148.ImageRectSize = Vector2.new(48, 48);
			if (v1137 == true) then
				v1148.ImageRectOffset = Vector2.new(4, 836);
				game.TweenService:Create(v1148, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
					ImageColor3 = Color3.fromRGB(255, 225, 225)
				}):Play();
				v1139 = not v1139;
				pcall(v1138, v1139);
			end
			v1148.MouseButton1Click:Connect(function()
				if (v1139 == false) then
					game.TweenService:Create(v1148, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						ImageColor3 = Color3.fromRGB(255, 225, 225)
					}):Play();
					v1148.ImageRectOffset = Vector2.new(4, 836);
				else
					game.TweenService:Create(v1148, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						ImageColor3 = Color3.fromRGB(128, 102, 255)
					}):Play();
					v1148.ImageRectOffset = Vector2.new(940, 784);
				end
				v1139 = not v1139;
				pcall(v1138, v1139);
			end);
		end;
		v772.Dropdown = function(v1220, v1221, v1222, v1223)
			local v1224 = false;
			local v1225 = Instance.new("Frame");
			local v1226 = Instance.new("UICorner");
			local v1227 = Instance.new("TextLabel");
			local v1228 = Instance.new("ScrollingFrame");
			local v1229 = Instance.new("UIListLayout");
			local v1230 = Instance.new("UIPadding");
			local v1231 = Instance.new("TextButton");
			local v1232 = Instance.new("ImageLabel");
			local v1233 = Instance.new("UIStroke");
			v1225.Name = "Dropdown";
			v1225.Parent = v752;
			v1225.BackgroundColor3 = Color3.fromRGB(28, 28, 28);
			v1225.BackgroundTransparency = 1;
			v1225.ClipsDescendants = true;
			v1225.Size = UDim2.new(0, 310, 0, 31);
			v1233.Name = "posto";
			v1233.Parent = v1225;
			v1233.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1233.Color = Color3.fromRGB(255, 255, 255);
			v1233.LineJoinMode = Enum.LineJoinMode.Round;
			v1233.Thickness = 1;
			v1233.Transparency = 0;
			v1233.Enabled = true;
			v1233.Archivable = true;
			v1226.CornerRadius = UDim.new(0, 5);
			v1226.Parent = v1225;
			v1227.Name = "DropTitle";
			v1227.Parent = v1225;
			v1227.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1227.BackgroundTransparency = 1;
			v1227.Size = UDim2.new(0, 310, 0, 31);
			v1227.Font = Enum.Font.Gotham;
			v1227.Text = v1221   .. " : " ;
			v1227.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1227.TextSize = 12;
			v1228.Name = "DropScroll";
			v1228.Parent = v1227;
			v1228.Active = true;
			v1228.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1228.BackgroundTransparency = 1;
			v1228.BorderSizePixel = 0;
			v1228.Position = UDim2.new(0, 0, 0, 31);
			v1228.Size = UDim2.new(0, 310, 0, 100);
			v1228.CanvasSize = UDim2.new(0, 0, 0, 0);
			v1228.ScrollBarThickness = 3;
			v1229.Parent = v1228;
			v1229.SortOrder = Enum.SortOrder.LayoutOrder;
			v1229.Padding = UDim.new(0, 5);
			v1230.Parent = v1228;
			v1230.PaddingLeft = UDim.new(0, 5);
			v1230.PaddingTop = UDim.new(0, 5);
			v1232.Name = "DropImage";
			v1232.Parent = v1225;
			v1232.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1232.BackgroundTransparency = 1;
			v1232.Position = UDim2.new(0, 280, 0, 6);
			v1232.Rotation = 180;
			v1232.Size = UDim2.new(0, 20, 0, 20);
			v1232.Image = "rbxassetid://6031090990";
			v1231.Name = "DropButton";
			v1231.Parent = v1225;
			v1231.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1231.BackgroundTransparency = 1;
			v1231.Size = UDim2.new(0, 310, 0, 31);
			v1231.Font = Enum.Font.SourceSans;
			v1231.Text = "";
			v1231.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1231.TextSize = 14;
			for v1844, v1845 in next, v1222 do
				local v1846 = Instance.new("TextButton");
				v1846.Name = "Item";
				v1846.Parent = v1228;
				v1846.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
				v1846.BackgroundTransparency = 1;
				v1846.Size = UDim2.new(0, 310, 0, 26);
				v1846.Font = Enum.Font.Gotham;
				v1846.Text = tostring(v1845);
				v1846.TextColor3 = Color3.fromRGB(225, 225, 225);
				v1846.TextSize = 13;
				v1846.TextTransparency = 0.5;
				v1846.MouseEnter:Connect(function()
					v1:Create(v1846, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play();
				end);
				v1846.MouseLeave:Connect(function()
					v1:Create(v1846, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end);
				v1846.MouseButton1Click:Connect(function()
					v1224 = false;
					v1225:TweenSize(UDim2.new(0, 310, 0, 31), "Out", "Quad", 0.3, true);
					v1:Create(v1232, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
					v1223(v1846.Text);
					v1227.Text = v1221   .. " : "   .. v1846.Text ;
				end);
			end
			v1228.CanvasSize = UDim2.new(0, 0, 0, v1229.AbsoluteContentSize.Y + 10 );
			v1231.MouseButton1Click:Connect(function()
				if (v1224 == false) then
					v1224 = true;
					v1225:TweenSize(UDim2.new(0, 310, 0, 131), "Out", "Quad", 0.3, true);
					v1:Create(v1232, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
				else
					v1224 = false;
					v1225:TweenSize(UDim2.new(0, 310, 0, 31), "Out", "Quad", 0.3, true);
					v1:Create(v1232, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
				end
			end);
			local v1298 = {};
			v1298.Add = function(v1858, v1859)
				local v1860 = Instance.new("TextButton");
				v1860.Name = "Item";
				v1860.Parent = v1228;
				v1860.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
				v1860.BackgroundTransparency = 1;
				v1860.Size = UDim2.new(0, 310, 0, 26);
				v1860.Font = Enum.Font.Gotham;
				v1860.Text = tostring(v1859);
				v1860.TextColor3 = Color3.fromRGB(225, 225, 225);
				v1860.TextSize = 13;
				v1860.TextTransparency = 0.5;
				v1860.MouseEnter:Connect(function()
					v1:Create(v1860, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play();
				end);
				v1860.MouseLeave:Connect(function()
					v1:Create(v1860, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0.5
					}):Play();
				end);
				v1860.MouseButton1Click:Connect(function()
					v1224 = false;
					v1225:TweenSize(UDim2.new(0, 310, 0, 31), "Out", "Quad", 0.3, true);
					v1:Create(v1232, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 180
					}):Play();
					v1223(v1860.Text);
					v1227.Text = v1221   .. " : "   .. v1860.Text ;
				end);
			end;
			v1298.Clear = function(v1872)
				v1227.Text = tostring(v1221)   .. " : " ;
				v1224 = false;
				v1225:TweenSize(UDim2.new(0, 310, 0, 31), "Out", "Quad", 0.3, true);
				v1:Create(v1232, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					Rotation = 180
				}):Play();
				for v1978, v1979 in next, v1228:GetChildren() do
					if v1979:IsA("TextButton") then
						v1979:Destroy();
					end
				end
			end;
			return v1298;
		end;
		v772.Slider1 = function(v1301, v1302, v1303, v1304, v1305, v1306)
			local v1307 = {};
			local v1308 = Instance.new("Frame");
			local v1309 = Instance.new("Frame");
			local v1310 = Instance.new("UIStroke");
			local v1311 = Instance.new("UICorner");
			local v1312 = Instance.new("ImageLabel");
			local v1313 = Instance.new("TextLabel");
			local v1314 = Instance.new("TextLabel");
			local v1315 = Instance.new("Frame");
			local v1316 = Instance.new("Frame");
			local v1317 = Instance.new("Frame");
			local v1318 = Instance.new("UICorner");
			local v1319 = Instance.new("UICorner");
			local v1320 = Instance.new("Frame");
			local v1321 = Instance.new("TextBox");
			local v1322 = Instance.new("UIStroke");
			local v1323 = Instance.new("TextButton");
			local v1324 = Instance.new("UICorner");
			local v1325 = Instance.new("UICorner");
			v1308.Name = v1302 or "SliderFrame" ;
			v1308.Parent = v752;
			v1308.BackgroundColor3 = Color3.fromRGB(28, 28, 28);
			v1308.BackgroundTransparency = 1;
			v1308.BorderSizePixel = 0;
			v1308.Size = UDim2.new(0, 300, 0, 55);
			v1309.Name = "SliderFrame_2";
			v1309.Parent = v1308;
			v1309.BackgroundColor3 = Color3.fromRGB(28, 28, 28);
			v1309.BackgroundTransparency = 1;
			v1309.BorderSizePixel = 0;
			v1309.Position = UDim2.new(0, 3, 0, 0);
			v1309.Size = UDim2.new(0, 308, 0, 55);
			v1310.Name = "UIStroke";
			v1310.Parent = v1309;
			v1310.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1310.Color = Color3.fromRGB(128, 102, 255);
			v1310.LineJoinMode = Enum.LineJoinMode.Round;
			v1310.Thickness = 1;
			v1310.Transparency = 0;
			v1310.Enabled = true;
			v1310.Archivable = true;
			v1311.Parent = v1309;
			v1311.CornerRadius = UDim.new(0, 3);
			v1312.Name = "ImageLabel";
			v1312.Parent = v1309;
			v1312.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1312.BackgroundTransparency = 1;
			v1312.BorderSizePixel = 0;
			v1312.Position = UDim2.new(0, 5, 0, 5);
			v1312.Size = UDim2.new(0, 18, 0, 18);
			v1312.Image = "rbxassetid://";
			v1312.ImageColor3 = Color3.fromRGB(128, 102, 255);
			v1313.Name = "Space";
			v1313.Parent = v1309;
			v1313.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1313.BackgroundTransparency = 1;
			v1313.Position = UDim2.new(0, 30, 0, 0);
			v1313.Size = UDim2.new(0, 15, 0, 30);
			v1313.Font = Enum.Font.Gotham;
			v1313.Text = "";
			v1313.TextSize = 15;
			v1313.TextColor3 = Color3.fromRGB(128, 102, 255);
			v1313.TextXAlignment = Enum.TextXAlignment.Center;
			v1314.Name = "Title";
			v1314.Parent = v1309;
			v1314.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1314.BackgroundTransparency = 1;
			v1314.Position = UDim2.new(0, 50, 0, 0);
			v1314.Size = UDim2.new(0, 280, 0, 30);
			v1314.Font = Enum.Font.Gotham;
			v1314.Text = v1302 or "Slider Title" ;
			v1314.TextColor3 = Color3.fromRGB(128, 102, 255);
			v1314.TextSize = 12;
			v1314.TextXAlignment = Enum.TextXAlignment.Left;
			v1315.Name = "SliderInput";
			v1315.Parent = v1309;
			v1315.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1315.BackgroundTransparency = 0.7;
			v1315.BorderSizePixel = 0;
			v1315.Position = UDim2.new(0, 8, 0, 37);
			v1315.Size = UDim2.new(0, 290, 0, 4);
			v1319.CornerRadius = UDim.new(0, 100000);
			v1319.Parent = v1315;
			v1316.Name = "SliderButton";
			v1316.Parent = v1315;
			v1316.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
			v1316.BackgroundTransparency = 1;
			v1316.BorderSizePixel = 0;
			v1316.Position = UDim2.new(0, 0, 0, -7);
			v1316.Size = UDim2.new(0, 290, 0, 25);
			v1317.Name = "SliderCount";
			v1317.Parent = v1316;
			v1317.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1317.BackgroundTransparency = 0.3;
			v1317.BorderSizePixel = 0;
			v1317.Position = UDim2.new(0, v1305, 0, 0);
			v1317.Size = UDim2.new(0, 18, 0, 18);
			v1323.Name = "Title_2";
			v1323.Parent = v1316;
			v1323.AnchorPoint = Vector2.new(0, 0);
			v1323.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1323.AutoButtonColor = false;
			v1323.BackgroundTransparency = 1;
			v1323.Position = UDim2.new(0, v1305, 0, 0);
			v1323.Size = UDim2.new(0, 18, 0, 18);
			v1323.Font = Enum.Font.GothamBold;
			v1323.Text = tostring((v1305 and math.floor(((v1305 / v1304) * (v1304 - v1303)) + v1303 )) or 0 );
			v1323.TextColor3 = Color3.fromRGB(128, 102, 255);
			v1323.TextSize = 8;
			v1323.TextXAlignment = Enum.TextXAlignment.Center;
			v1324.Parent = v1323;
			v1324.CornerRadius = UDim.new(0, 100000);
			v1318.CornerRadius = UDim.new(0, 100000);
			v1318.Parent = v1317;
			v1322.Name = "SliderStroke";
			v1322.Parent = v1320;
			v1322.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1322.Color = Color3.fromRGB(128, 102, 255);
			v1322.LineJoinMode = Enum.LineJoinMode.Round;
			v1322.Thickness = 1;
			v1322.Transparency = 0.5;
			v1322.Enabled = true;
			v1322.Archivable = true;
			v1320.Name = "BoxFrame";
			v1320.Parent = v1309;
			v1320.BackgroundColor3 = Color3.fromRGB(20, 20, 20);
			v1320.BackgroundTransparency = 1;
			v1320.Size = UDim2.new(0, 50, 0, 15);
			v1320.Position = UDim2.new(0, 240, 0, 8);
			v1321.Name = "SliderBox";
			v1321.Parent = v1320;
			v1321.BackgroundColor3 = Color3.fromRGB(200, 0, 0);
			v1321.BackgroundTransparency = 1;
			v1321.Position = UDim2.new(0, 0, 0, 1.65);
			v1321.Size = UDim2.new(0, 50, 0, 15);
			v1321.ClearTextOnFocus = false;
			v1321.Font = Enum.Font.GothamBold;
			v1321.Text = tostring((v1305 and math.floor(((v1305 / v1304) * (v1304 - v1303)) + v1303 )) or 0 );
			v1321.TextColor3 = Color3.fromRGB(128, 102, 255);
			v1321.TextSize = 9;
			v1321.TextTransparency = 0;
			v1321.TextXAlignment = Enum.TextXAlignment.Center;
			v1321.TextEditable = true;
			v1325.Parent = v1320;
			v1325.CornerRadius = UDim.new(0, 2);
			local v1458;
			local v1459;
			local v1460;
			local v1461 = v1316;
			local function v1461(v1874)
				local v1875 = UDim2.new(math.clamp((v1874.Position.X - v1316.AbsolutePosition.X) / v1316.AbsoluteSize.X , 0, 1), 0, 0, 0);
				v1317:TweenPosition(v1875, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true);
				v1323:TweenPosition(v1875, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true);
				local v1876 = math.floor((((v1875.X.Scale * v1304) / v1304) * (v1304 - v1303)) + v1303 );
				v1321.Text = tostring(v1876);
				v1323.Text = tostring(v1876);
				pcall(v1306, v1876, v1875);
			end
			v1316.InputBegan:Connect(function(v1879)
				if ((v1879.UserInputType == Enum.UserInputType.MouseButton1) or (v1879.UserInputType == Enum.UserInputType.Touch)) then
					v1458 = true;
					v1460 = v1879;
					v1459 = v1879.Position.X;
					slidein = v1316.AbsolutePosition.X;
					game.TweenService:Create(v1317, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0,
						Size = UDim2.new(0, 14, 0, 14)
					}):Play();
					game.TweenService:Create(v1323, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						AnchorPoint = Vector2.new(0.22, 0.8),
						TextSize = 13,
						BackgroundTransparency = 0,
						Size = UDim2.new(0, 25, 0, 25)
					}):Play();
					game.TweenService:Create(v1321, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						TextTransparency = 0
					}):Play();
					game.TweenService:Create(v1315, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.5
					}):Play();
					game.TweenService:Create(v1322, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						Transparency = 0
					}):Play();
				end
				v1879.Changed:Connect(function(v1980)
					if (v1980.UserInputType == Enum.UserInputState.End) then
						v1458 = false;
					end
				end);
			end);
			v1316.InputEnded:Connect(function(v1880)
				if ((v1880.UserInputType == Enum.UserInputType.MouseMovement) or (v1880.UserInputType == Enum.UserInputType.Touch)) then
					v1458 = false;
					v1460 = v1880;
					game.TweenService:Create(v1317, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.3,
						Size = UDim2.new(0, 18, 0, 18)
					}):Play();
					game.TweenService:Create(v1323, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						AnchorPoint = Vector2.new(0, 0),
						TextSize = 8,
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 18, 0, 18)
					}):Play();
					game.TweenService:Create(v1321, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						TextTransparency = 0.5
					}):Play();
					game.TweenService:Create(v1315, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						BackgroundTransparency = 0.7
					}):Play();
					game.TweenService:Create(v1322, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
						Transparency = 0.5
					}):Play();
				end
			end);
			v0.InputChanged:Connect(function(v1881)
				if ((v1881 == v1460) and v1458) then
					v1461(v1881);
				end
			end);
			function set(v1882)
				if (v1882 == "Text") then
					if tonumber(v1321.Text) then
						if (tonumber(v1321.Text) <= v1304) then
							Value = v1321.Text;
							v1323.Text = v1321.Text;
							v1317:TweenPosition(UDim2.new(((tonumber(v1321.Text) or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.08, true);
							v1323:TweenPosition(UDim2.new(((tonumber(v1321.Text) or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.12, true);
							pcall(function()
								v1306(Value);
							end);
						end
						if (tonumber(v1321.Text) > v1304) then
							v1321.Text = v1304;
							v1323.Text = v1304;
							Value = v1304;
							v1317:TweenPosition(UDim2.new(((v1304 or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.08, true);
							v1323:TweenPosition(UDim2.new(((v1304 or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.12, true);
							pcall(function()
								v1306(Value);
							end);
						end
						if (tonumber(v1321.Text) >= v1303) then
							Value = v1321.Text;
							v1323.Text = v1321.Text;
							v1317:TweenPosition(UDim2.new(((tonumber(v1321.Text) or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.08, true);
							v1323:TweenPosition(UDim2.new(((tonumber(v1321.Text) or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.12, true);
							pcall(function()
								v1306(Value);
							end);
						end
						if (tonumber(v1321.Text) < v1303) then
							Value = v1303;
							v1323 = v1303;
							v1317.Position = UDim2.new(((v1303 or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0);
							v1323.Position = UDim2.new(((v1303 or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0);
							pcall(function()
								v1306(Value);
							end);
						end
					else
						v1321.Text = "" or Value ;
						v1323.Text = Value;
					end
				end
			end
			v1321.Focused:Connect(function()
				v1321.Changed:Connect(set);
			end);
			v1321.FocusLost:Connect(function(v1883)
				if  not v1883 then
					if (v1321.Text == "") then
						v1321.Text = v1303;
						v1323.Text = v1303;
						Value = v1303;
						v1317:TweenPosition(UDim2.new((v1303 - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.08, true);
						v1323:TweenPosition(UDim2.new((v1303 - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.12, true);
						pcall(function()
							v1306(Value);
						end);
					end
					if (tonumber(v1321.Text) > tonumber(v1304)) then
						Value = v1304;
						v1321.Text = v1304;
						v1323.Text = v1304;
						v1317:TweenPosition(UDim2.new(((v1304 or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.08, true);
						v1323:TweenPosition(UDim2.new(((v1304 or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.12, true);
						pcall(function()
							v1306(Value);
						end);
					else
						Value = tonumber(v1321.Text);
					end
					if (tonumber(v1321.Text) < v1303) then
						v1321.Text = v1303;
						v1323.Text = v1303;
						Value = v1303;
						v1317:TweenPosition(UDim2.new((v1303 - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.08, true);
						v1323:TweenPosition(UDim2.new((v1303 - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.12, true);
						pcall(function()
							v1306(Value);
						end);
					else
						Value = tonumber(v1321.Text);
					end
				end
				if (tonumber(v1321.Text) > v1304) then
					v1321.Text = v1304;
					v1323.Text = v1304;
					Value = v1304;
					v1317:TweenPosition(UDim2.new(((v1304 or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.08, true);
					v1323:TweenPosition(UDim2.new(((v1304 or v1303) - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.12, true);
					pcall(function()
						v1306(Value);
					end);
				else
					Value = tonumber(v1321.Text);
				end
				if (tonumber(v1321.Text) < v1303) then
					v1321.Text = v1303;
					v1323.Text = v1303;
					Value = v1303;
					v1317.Position = UDim2.new((v1303 - v1303) / (v1304 - v1303) , 0, 0, 0);
					v1323.Position = UDim2.new((v1303 - v1303) / (v1304 - v1303) , 0, 0, 0);
					pcall(function()
						v1306(Value);
					end);
				else
					Value = tonumber(v1321.Text);
				end
				if (v1321.Text == "") then
					v1321.Text = v1303;
					v1323.Text = v1303;
					Value = v1303;
					v1317:TweenPosition(UDim2.new((v1303 - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.08, true);
					v1323:TweenPosition(UDim2.new((v1303 - v1303) / (v1304 - v1303) , 0, 0, 0), "InOut", "Linear", 0.12, true);
					pcall(function()
						v1306(Value);
					end);
				end
			end);
			return sliderfunc;
		end;
		v772.Slider = function(v1462, v1463, v1464, v1465, v1466, v1467)
			local v1468 = Instance.new("Frame");
			local v1469 = Instance.new("UICorner");
			local v1470 = Instance.new("Frame");
			local v1471 = Instance.new("UICorner");
			local v1472 = Instance.new("TextLabel");
			local v1473 = Instance.new("Frame");
			local v1474 = Instance.new("TextButton");
			local v1475 = Instance.new("Frame");
			local v1476 = Instance.new("Frame");
			local v1477 = Instance.new("UICorner");
			local v1478 = Instance.new("UICorner");
			local v1479 = Instance.new("Frame");
			local v1480 = Instance.new("UICorner");
			local v1481 = Instance.new("Frame");
			local v1482 = Instance.new("UICorner");
			local v1483 = Instance.new("TextBox");
			local v1484 = Instance.new("UICorner");
			local v1485 = Instance.new("UIStroke");
			v1468.Name = "Slider";
			v1468.Parent = v752;
			v1468.BackgroundColor3 = _G.Color;
			v1468.BackgroundTransparency = 0;
			v1468.Size = UDim2.new(0, 310, 0, 51);
			v1469.CornerRadius = UDim.new(0, 5);
			v1469.Name = "slidercorner";
			v1469.Parent = v1468;
			v1470.Name = "sliderr";
			v1470.Parent = v1468;
			v1470.BackgroundTransparency = 0;
			v1470.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
			v1470.Position = UDim2.new(0, 1, 0, 1);
			v1470.Size = UDim2.new(0, 308, 0, 49);
			v1471.CornerRadius = UDim.new(0, 5);
			v1471.Name = "sliderrcorner";
			v1471.Parent = v1470;
			v1472.Name = "SliderLabel";
			v1472.Parent = v1470;
			v1472.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1472.BackgroundTransparency = 1;
			v1472.Position = UDim2.new(0, 15, 0, 0);
			v1472.Size = UDim2.new(0, 180, 0, 26);
			v1472.Font = Enum.Font.Gotham;
			v1472.Text = v1463;
			v1472.TextColor3 = Color3.fromRGB(128, 102, 255);
			v1472.TextSize = 12;
			v1472.TextTransparency = 0;
			v1472.TextXAlignment = Enum.TextXAlignment.Left;
			v1473.Name = "HAHA";
			v1473.Parent = v1470;
			v1473.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1473.BackgroundTransparency = 1;
			v1473.Size = UDim2.new(0, 290, 0, 29);
			v1474.Name = "AHEHE";
			v1474.Parent = v1470;
			v1474.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1474.BackgroundTransparency = 1;
			v1474.Position = UDim2.new(0, 10, 0, 35);
			v1474.Size = UDim2.new(0, 290, 0, 5);
			v1474.Font = Enum.Font.SourceSans;
			v1474.Text = "";
			v1474.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1474.TextSize = 14;
			v1475.Name = "bar";
			v1475.Parent = v1474;
			v1475.BackgroundColor3 = _G.BGColor_2;
			v1475.Size = UDim2.new(0, 290, 0, 5);
			v1476.Name = "bar1";
			v1476.Parent = v1475;
			v1476.BackgroundColor3 = _G.Color;
			v1476.BackgroundTransparency = 0;
			v1476.Size = UDim2.new(v1466 / v1465 , 0, 0, 5);
			v1477.CornerRadius = UDim.new(0, 5);
			v1477.Name = "bar1corner";
			v1477.Parent = v1476;
			v1478.CornerRadius = UDim.new(0, 5);
			v1478.Name = "barcorner";
			v1478.Parent = v1475;
			v1479.Name = "circlebar";
			v1479.Parent = v1476;
			v1479.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1479.Position = UDim2.new(1, -2, 0, -3);
			v1479.Size = UDim2.new(0, 10, 0, 10);
			v1480.CornerRadius = UDim.new(0, 100);
			v1480.Parent = v1479;
			v1481.Name = "slidervalue";
			v1481.Parent = v1470;
			v1481.BackgroundColor3 = _G.Color;
			v1481.BackgroundTransparency = 1;
			v1481.Position = UDim2.new(0, 245, 0, 5);
			v1481.Size = UDim2.new(0, 65, 0, 18);
			v1482.CornerRadius = UDim.new(0, 5);
			v1482.Name = "valuecorner";
			v1482.Parent = v1481;
			v1483.Parent = v1481;
			v1483.BackgroundColor3 = _G.BGColor_2;
			v1483.Position = UDim2.new(0, 0, 0, 0);
			v1483.Size = UDim2.new(0, 60, 0, 20);
			v1483.Font = Enum.Font.Gotham;
			v1483.TextColor3 = Color3.fromRGB(128, 102, 255);
			v1483.TextSize = 9;
			v1483.Text = v1466;
			v1483.TextTransparency = 0;
			v1485.Name = "posto";
			v1485.Parent = v1483;
			v1485.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			v1485.Color = Color3.fromRGB(128, 102, 255);
			v1485.LineJoinMode = Enum.LineJoinMode.Round;
			v1485.Thickness = 1;
			v1485.Transparency = 0;
			v1485.Enabled = true;
			v1485.Archivable = true;
			v1484.CornerRadius = UDim.new(0, 5);
			v1484.Parent = v1483;
			local v1586 = game.Players.LocalPlayer:GetMouse();
			local v1587 = game:GetService("UserInputService");
			if (Value == nil) then
				Value = v1466;
				pcall(function()
					v1467(Value);
				end);
			end
			v1474.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(v1465) - tonumber(v1464)) / 300) * v1476.AbsoluteSize.X) + tonumber(v1464) ) or 0 ;
				pcall(function()
					v1467(Value);
				end);
				v1476.Size = UDim2.new(0, math.clamp(v1586.X - v1476.AbsolutePosition.X , 0, 300), 0, 5);
				v1479.Position = UDim2.new(0, math.clamp((v1586.X - v1476.AbsolutePosition.X) - 2 , 0, 290), 0, -3);
				moveconnection = v1586.Move:Connect(function()
					v1483.Text = Value;
					Value = math.floor((((tonumber(v1465) - tonumber(v1464)) / 300) * v1476.AbsoluteSize.X) + tonumber(v1464) );
					pcall(function()
						v1467(Value);
					end);
					v1476.Size = UDim2.new(0, math.clamp(v1586.X - v1476.AbsolutePosition.X , 0, 300), 0, 5);
					v1479.Position = UDim2.new(0, math.clamp((v1586.X - v1476.AbsolutePosition.X) - 2 , 0, 290), 0, -3);
				end);
				releaseconnection = v1587.InputEnded:Connect(function(v1984)
					if (v1984.UserInputType == Enum.UserInputType.MouseButton1) then
						Value = math.floor((((tonumber(v1465) - tonumber(v1464)) / 300) * v1476.AbsoluteSize.X) + tonumber(v1464) );
						pcall(function()
							v1467(Value);
						end);
						v1476.Size = UDim2.new(0, math.clamp(v1586.X - v1476.AbsolutePosition.X , 0, 300), 0, 5);
						v1479.Position = UDim2.new(0, math.clamp((v1586.X - v1476.AbsolutePosition.X) - 2 , 0, 290), 0, -3);
						moveconnection:Disconnect();
						releaseconnection:Disconnect();
					end
				end);
			end);
			releaseconnection = v1587.InputEnded:Connect(function(v1886)
				if (v1886.UserInputType == Enum.UserInputType.MouseButton1) then
					Value = math.floor((((tonumber(v1465) - tonumber(v1464)) / 300) * v1476.AbsoluteSize.X) + tonumber(v1464) );
					v1483.Text = Value;
				end
			end);
			v1483.FocusLost:Connect(function()
				if (tonumber(v1483.Text) > v1465) then
					v1483.Text = v1465;
				end
				v1476.Size = UDim2.new((v1483.Text or 0) / v1465 , 0, 0, 5);
				v1479.Position = UDim2.new(1, -2, 0, -3);
				v1483.Text = tostring(v1483.Text and math.floor(((v1483.Text / v1465) * (v1465 - v1464)) + v1464 ) );
				pcall(v1467, v1483.Text);
			end);
		end;
		v772.Textbox = function(v1588, v1589, v1590, v1591)
			local v1592 = Instance.new("Frame");
			local v1593 = Instance.new("UICorner");
			local v1594 = Instance.new("Frame");
			local v1595 = Instance.new("UICorner");
			local v1596 = Instance.new("TextLabel");
			local v1597 = Instance.new("TextButton");
			local v1598 = Instance.new("TextBox");
			local v1599 = Instance.new("UICorner");
			v1592.Name = "Textbox";
			v1592.Parent = v752;
			v1592.BackgroundColor3 = _G.Color;
			v1592.BackgroundTransparency = 0;
			v1592.Size = UDim2.new(0, 310, 0, 31);
			v1593.CornerRadius = UDim.new(0, 5);
			v1593.Name = "TextboxCorner";
			v1593.Parent = v1592;
			v1594.Name = "Textboxx";
			v1594.Parent = v1592;
			v1594.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
			v1594.Position = UDim2.new(0, 1, 0, 1);
			v1594.Size = UDim2.new(0, 310, 0, 29);
			v1595.CornerRadius = UDim.new(0, 5);
			v1595.Name = "TextboxxCorner";
			v1595.Parent = v1594;
			v1596.Name = "TextboxLabel";
			v1596.Parent = v1592;
			v1596.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1596.BackgroundTransparency = 1;
			v1596.Position = UDim2.new(0, 15, 0, 0);
			v1596.Text = v1589;
			v1596.Size = UDim2.new(0, 145, 0, 31);
			v1596.Font = Enum.Font.Gotham;
			v1596.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1596.TextSize = 16;
			v1596.TextTransparency = 0;
			v1596.TextXAlignment = Enum.TextXAlignment.Left;
			v1597.Name = "txtbtn";
			v1597.Parent = v1592;
			v1597.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1597.BackgroundTransparency = 1;
			v1597.Position = UDim2.new(0, 1, 0, 1);
			v1597.Size = UDim2.new(0, 310, 0, 29);
			v1597.Font = Enum.Font.SourceSans;
			v1597.Text = "";
			v1597.TextColor3 = Color3.fromRGB(0, 0, 0);
			v1597.TextSize = 14;
			v1598.Name = "RealTextbox";
			v1598.Parent = v1592;
			v1598.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
			v1598.BackgroundTransparency = 0;
			v1598.Position = UDim2.new(0, 230, 0, 4);
			v1598.Size = UDim2.new(0, 100, 0, 24);
			v1598.Font = Enum.Font.Gotham;
			v1598.Text = "";
			v1598.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1598.TextSize = 11;
			v1598.TextTransparency = 0;
			v1598.FocusLost:Connect(function()
				v1591(v1598.Text);
				if v1590 then
					v1598.Text = "";
				end
			end);
			v1599.CornerRadius = UDim.new(0, 5);
			v1599.Parent = v1598;
		end;
		v772.Label = function(v1654, v1655)
			local v1656 = Instance.new("TextLabel");
			local v1657 = Instance.new("UIPadding");
			local v1658 = {};
			v1656.Name = "Label";
			v1656.Parent = v752;
			v1656.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1656.BackgroundTransparency = 1;
			v1656.Size = UDim2.new(0, 325, 0, 20);
			v1656.Font = Enum.Font.Gotham;
			v1656.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1656.TextSize = 12;
			v1656.Text = v1655;
			v1656.TextXAlignment = Enum.TextXAlignment.Left;
			v1657.PaddingLeft = UDim.new(0, 15);
			v1657.Parent = v1656;
			v1657.Name = "PaddingLabel";
			v1658.Set = function(v1890, v1891)
				v1656.Text = v1891;
			end;
			return v1658;
		end;
		v772.Label1 = function(v1675, v1676)
			local v1677 = Instance.new("TextLabel");
			local v1678 = Instance.new("UIPadding");
			local v1679 = {};
			v1677.Name = "Label1";
			v1677.Parent = v752;
			v1677.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1677.BackgroundTransparency = 1;
			v1677.Size = UDim2.new(0, 325, 0, 20);
			v1677.Font = Enum.Font.Gotham;
			v1677.TextColor3 = Color3.fromRGB(225, 225, 225);
			v1677.TextSize = 12;
			v1677.Text = v1676;
			v1677.TextXAlignment = Enum.TextXAlignment.Left;
			v1678.PaddingLeft = UDim.new(0, 15);
			v1678.Parent = v1677;
			v1678.Name = "PaddingLabel1";
			v1679.Refresh = function(v1893, v1894)
				v1677.Text = v1894;
			end;
			return v1679;
		end;
		v772.Seperator = function(v1696, v1697)
			local v1698 = Instance.new("Frame");
			local v1699 = Instance.new("Frame");
			local v1700 = Instance.new("TextLabel");
			local v1701 = Instance.new("Frame");
			v1698.Name = "Seperator";
			v1698.Parent = v752;
			v1698.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1698.BackgroundTransparency = 1;
			v1698.Size = UDim2.new(0, 290, 0, 20);
			v1699.Name = "Sep1";
			v1699.Parent = v1698;
			v1699.BackgroundColor3 = _G.Color;
			v1699.BorderSizePixel = 0;
			v1699.Position = UDim2.new(0, 0, 0, 10);
			v1699.Size = UDim2.new(0, 80, 0, 1);
			v1700.Name = "Sep2";
			v1700.Parent = v1698;
			v1700.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1700.BackgroundTransparency = 1;
			v1700.Position = UDim2.new(0, 120, 0, 0);
			v1700.Size = UDim2.new(0, 80, 0, 20);
			v1700.Font = Enum.Font.Gotham;
			v1700.Text = v1697;
			v1700.TextColor3 = Color3.fromRGB(128, 102, 255);
			v1700.TextSize = 14;
			v1701.Name = "Sep3";
			v1701.Parent = v1698;
			v1701.BackgroundColor3 = _G.Color;
			v1701.BorderSizePixel = 0;
			v1701.Position = UDim2.new(0, 240, 0, 10);
			v1701.Size = UDim2.new(0, 80, 0, 1);
		end;
		v772.Line = function(v1730)
			local v1731 = Instance.new("Frame");
			local v1732 = Instance.new("Frame");
			v1731.Name = "Linee";
			v1731.Parent = v752;
			v1731.BackgroundColor3 = Color3.fromRGB(128, 102, 255);
			v1731.BackgroundTransparency = 1;
			v1731.Position = UDim2.new(0, 0, 0.119999997, 0);
			v1731.Size = UDim2.new(0, 310, 0, 20);
			v1732.Name = "Line";
			v1732.Parent = v1731;
			v1732.BackgroundColor3 = _G.Color;
			v1732.BorderSizePixel = 0;
			v1732.Position = UDim2.new(0, 0, 0, 10);
			v1732.Size = UDim2.new(0, 325, 0, 1);
		end;
		return v772;
	end;
	return v346;
end;
local v28 = Instance.new("ScreenGui");
local v29 = Instance.new("ImageButton");
local v30 = Instance.new("UICorner");
v28.Name = "ToggleUI";
v28.Parent = game.CoreGui;
v28.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v29.Name = "ToggleButton";
v29.Parent = v28;
v29.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v29.BorderSizePixel = 0;
v29.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0);
v29.Size = UDim2.new(0, 53.5, 0, 53.5);
v29.BackgroundTransparency = 1;
v29.Image = "rbxassetid://133662246764578";
v29.Draggable = true;
v29.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, 305, false, game);
	game:GetService("VirtualInputManager"):SendKeyEvent(false, 305, false, game);
end);
v30.CornerRadius = UDim.new(0, 10);
v30.Parent = v29;
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
	local v349 = game.PlaceId;
	local v350 = {};
	local v351 = "";
	local v352 = os.date("!*t").hour;
	local v353 = false;
	function TPReturner()
		local v783;
		if (v351 == "") then
			v783 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v349   .. "/servers/Public?sortOrder=Asc&limit=100" ));
		else
			v783 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"   .. v349   .. "/servers/Public?sortOrder=Asc&limit=100&cursor="   .. v351 ));
		end
		local v784 = "";
		if (v783.nextPageCursor and (v783.nextPageCursor ~= "null") and (v783.nextPageCursor ~= nil)) then
			v351 = v783.nextPageCursor;
		end
		local v785 = 0;
		for v1745, v1746 in pairs(v783.data) do
			local v1747 = true;
			v784 = tostring(v1746.id);
			if (tonumber(v1746.maxPlayers) > tonumber(v1746.playing)) then
				for v2095, v2096 in pairs(v350) do
					if (v785 ~= 0) then
						if (v784 == tostring(v2096)) then
							v1747 = false;
						end
					elseif (tonumber(v352) ~= tonumber(v2096)) then
						local v2631 = pcall(function()
							v350 = {};
							table.insert(v350, v352);
						end);
					end
					v785 = v785 + 1 ;
				end
				if (v1747 == true) then
					table.insert(v350, v784);
					wait();
					pcall(function()
						wait();
						game:GetService("TeleportService"):TeleportToPlaceInstance(v349, v784, game.Players.LocalPlayer);
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
				if (v351 ~= "") then
					TPReturner();
				end
			end);
		end
	end
	Teleport();
end
function UpdateIslandESP()
	for v786, v787 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v787.Name ~= "Sea") then
					if  not v787:FindFirstChild("NameEsp") then
						local v2416 = Instance.new("BillboardGui", v787);
						v2416.Name = "NameEsp";
						v2416.ExtentsOffset = Vector3.new(0, 1, 0);
						v2416.Size = UDim2.new(1, 200, 1, 30);
						v2416.Adornee = v787;
						v2416.AlwaysOnTop = true;
						local v2422 = Instance.new("TextLabel", v2416);
						v2422.Font = "GothamBold";
						v2422.FontSize = "Size14";
						v2422.TextWrapped = true;
						v2422.Size = UDim2.new(1, 0, 1, 0);
						v2422.TextYAlignment = "Top";
						v2422.BackgroundTransparency = 1;
						v2422.TextStrokeTransparency = 0.5;
						v2422.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v787['NameEsp'].TextLabel.Text = v787.Name   .. "   \n"   .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v787.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v787:FindFirstChild("NameEsp") then
				v787:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v354)
	return v354 == nil ;
end
local function v45(v355)
	return math.floor(tonumber(v355) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v788, v789 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v789.Character) then
				if ESPPlayer then
					if ( not isnil(v789.Character.Head) and  not v789.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v2432 = Instance.new("BillboardGui", v789.Character.Head);
						v2432.Name = "NameEsp"   .. Number ;
						v2432.ExtentsOffset = Vector3.new(0, 1, 0);
						v2432.Size = UDim2.new(1, 200, 1, 30);
						v2432.Adornee = v789.Character.Head;
						v2432.AlwaysOnTop = true;
						local v2439 = Instance.new("TextLabel", v2432);
						v2439.Font = Enum.Font.GothamSemibold;
						v2439.FontSize = "Size14";
						v2439.TextWrapped = true;
						v2439.Text = v789.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v789.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v2439.Size = UDim2.new(1, 0, 1, 0);
						v2439.TextYAlignment = "Top";
						v2439.BackgroundTransparency = 1;
						v2439.TextStrokeTransparency = 0.5;
						if (v789.Team == game.Players.LocalPlayer.Team) then
							v2439.TextColor3 = Color3.new(3, 252, 3);
						else
							v2439.TextColor3 = Color3.new(3, 252, 3);
						end
					else
						v789.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v789.Name   .. " | "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v789.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v45((v789.Character.Humanoid.Health * 100) / v789.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v789.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v789.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v790, v791 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v791.Name, "Chest") then
				if ChestESP then
					if string.find(v791.Name, "Chest") then
						if  not v791:FindFirstChild("NameEsp"   .. Number ) then
							local v2765 = Instance.new("BillboardGui", v791);
							v2765.Name = "NameEsp"   .. Number ;
							v2765.ExtentsOffset = Vector3.new(0, 1, 0);
							v2765.Size = UDim2.new(1, 200, 1, 30);
							v2765.Adornee = v791;
							v2765.AlwaysOnTop = true;
							local v2771 = Instance.new("TextLabel", v2765);
							v2771.Font = Enum.Font.GothamSemibold;
							v2771.FontSize = "Size14";
							v2771.TextWrapped = true;
							v2771.Size = UDim2.new(1, 0, 1, 0);
							v2771.TextYAlignment = "Top";
							v2771.BackgroundTransparency = 1;
							v2771.TextStrokeTransparency = 0.5;
							if (v791.Name == "Chest1") then
								v2771.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2771.Text = "Chest 1"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v791.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v791.Name == "Chest2") then
								v2771.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2771.Text = "Chest 2"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v791.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v791.Name == "Chest3") then
								v2771.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2771.Text = "Chest 3"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v791.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v791["NameEsp"   .. Number ].TextLabel.Text = v791.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v791.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v791:FindFirstChild("NameEsp"   .. Number ) then
					v791:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v792, v793 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v793.Name, "Fruit") then
					if  not v793.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v2450 = Instance.new("BillboardGui", v793.Handle);
						v2450.Name = "NameEsp"   .. Number ;
						v2450.ExtentsOffset = Vector3.new(0, 1, 0);
						v2450.Size = UDim2.new(1, 200, 1, 30);
						v2450.Adornee = v793.Handle;
						v2450.AlwaysOnTop = true;
						local v2457 = Instance.new("TextLabel", v2450);
						v2457.Font = Enum.Font.GothamSemibold;
						v2457.FontSize = "Size14";
						v2457.TextWrapped = true;
						v2457.Size = UDim2.new(1, 0, 1, 0);
						v2457.TextYAlignment = "Top";
						v2457.BackgroundTransparency = 1;
						v2457.TextStrokeTransparency = 0.5;
						v2457.TextColor3 = Color3.fromRGB(255, 255, 255);
						v2457.Text = v793.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v793.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v793.Handle["NameEsp"   .. Number ].TextLabel.Text = v793.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v793.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v793.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v793.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v794, v795 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v795.Name == "Flower2") or (v795.Name == "Flower1")) then
				if FlowerESP then
					if  not v795:FindFirstChild("NameEsp"   .. Number ) then
						local v2469 = Instance.new("BillboardGui", v795);
						v2469.Name = "NameEsp"   .. Number ;
						v2469.ExtentsOffset = Vector3.new(0, 1, 0);
						v2469.Size = UDim2.new(1, 200, 1, 30);
						v2469.Adornee = v795;
						v2469.AlwaysOnTop = true;
						local v2475 = Instance.new("TextLabel", v2469);
						v2475.Font = Enum.Font.GothamSemibold;
						v2475.FontSize = "Size14";
						v2475.TextWrapped = true;
						v2475.Size = UDim2.new(1, 0, 1, 0);
						v2475.TextYAlignment = "Top";
						v2475.BackgroundTransparency = 1;
						v2475.TextStrokeTransparency = 0.5;
						v2475.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v795.Name == "Flower1") then
							v2475.Text = "Blue Flower"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v795.Position).Magnitude / 3 )   .. " Distance" ;
							v2475.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v795.Name == "Flower2") then
							v2475.Text = "Red Flower"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v795.Position).Magnitude / 3 )   .. " Distance" ;
							v2475.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v795["NameEsp"   .. Number ].TextLabel.Text = v795.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v795.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v795:FindFirstChild("NameEsp"   .. Number ) then
					v795:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v796, v797 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v797:IsA("Tool") then
			if RealFruitESP then
				if  not v797.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2217 = Instance.new("BillboardGui", v797.Handle);
					v2217.Name = "NameEsp"   .. Number ;
					v2217.ExtentsOffset = Vector3.new(0, 1, 0);
					v2217.Size = UDim2.new(1, 200, 1, 30);
					v2217.Adornee = v797.Handle;
					v2217.AlwaysOnTop = true;
					local v2224 = Instance.new("TextLabel", v2217);
					v2224.Font = Enum.Font.GothamSemibold;
					v2224.FontSize = "Size14";
					v2224.TextWrapped = true;
					v2224.Size = UDim2.new(1, 0, 1, 0);
					v2224.TextYAlignment = "Top";
					v2224.BackgroundTransparency = 1;
					v2224.TextStrokeTransparency = 0.5;
					v2224.TextColor3 = Color3.fromRGB(255, 0, 0);
					v2224.Text = v797.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v797.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v797.Handle["NameEsp"   .. Number ].TextLabel.Text = v797.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v797.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v797.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v797.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v798, v799 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v799:IsA("Tool") then
			if RealFruitESP then
				if  not v799.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2236 = Instance.new("BillboardGui", v799.Handle);
					v2236.Name = "NameEsp"   .. Number ;
					v2236.ExtentsOffset = Vector3.new(0, 1, 0);
					v2236.Size = UDim2.new(1, 200, 1, 30);
					v2236.Adornee = v799.Handle;
					v2236.AlwaysOnTop = true;
					local v2243 = Instance.new("TextLabel", v2236);
					v2243.Font = Enum.Font.GothamSemibold;
					v2243.FontSize = "Size14";
					v2243.TextWrapped = true;
					v2243.Size = UDim2.new(1, 0, 1, 0);
					v2243.TextYAlignment = "Top";
					v2243.BackgroundTransparency = 1;
					v2243.TextStrokeTransparency = 0.5;
					v2243.TextColor3 = Color3.fromRGB(255, 174, 0);
					v2243.Text = v799.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v799.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v799.Handle["NameEsp"   .. Number ].TextLabel.Text = v799.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v799.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v799.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v799.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v800, v801 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v801:IsA("Tool") then
			if RealFruitESP then
				if  not v801.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2255 = Instance.new("BillboardGui", v801.Handle);
					v2255.Name = "NameEsp"   .. Number ;
					v2255.ExtentsOffset = Vector3.new(0, 1, 0);
					v2255.Size = UDim2.new(1, 200, 1, 30);
					v2255.Adornee = v801.Handle;
					v2255.AlwaysOnTop = true;
					local v2262 = Instance.new("TextLabel", v2255);
					v2262.Font = Enum.Font.GothamSemibold;
					v2262.FontSize = "Size14";
					v2262.TextWrapped = true;
					v2262.Size = UDim2.new(1, 0, 1, 0);
					v2262.TextYAlignment = "Top";
					v2262.BackgroundTransparency = 1;
					v2262.TextStrokeTransparency = 0.5;
					v2262.TextColor3 = Color3.fromRGB(251, 255, 0);
					v2262.Text = v801.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v801.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v801.Handle["NameEsp"   .. Number ].TextLabel.Text = v801.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v801.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v801.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v801.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandESP()
	for v802, v803 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v803.Name ~= "Sea") then
					if  not v803:FindFirstChild("NameEsp") then
						local v2486 = Instance.new("BillboardGui", v803);
						v2486.Name = "NameEsp";
						v2486.ExtentsOffset = Vector3.new(0, 1, 0);
						v2486.Size = UDim2.new(1, 200, 1, 30);
						v2486.Adornee = v803;
						v2486.AlwaysOnTop = true;
						local v2492 = Instance.new("TextLabel", v2486);
						v2492.Font = "GothamBold";
						v2492.FontSize = "Size14";
						v2492.TextWrapped = true;
						v2492.Size = UDim2.new(1, 0, 1, 0);
						v2492.TextYAlignment = "Top";
						v2492.BackgroundTransparency = 1;
						v2492.TextStrokeTransparency = 0.5;
						v2492.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v803['NameEsp'].TextLabel.Text = v803.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v803.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v803:FindFirstChild("NameEsp") then
				v803:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function isnil(v356)
	return v356 == nil ;
end
local function v45(v357)
	return math.floor(tonumber(v357) + 0.5 );
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
	for v804, v805 in pairs(game:GetService("Players"):GetChildren()) do
		pcall(function()
			if  not isnil(v805.Character) then
				if ESPPlayer then
					if ( not isnil(v805.Character.Head) and  not v805.Character.Head:FindFirstChild("NameEsp"   .. Number )) then
						local v2502 = Instance.new("BillboardGui", v805.Character.Head);
						v2502.Name = "NameEsp"   .. Number ;
						v2502.ExtentsOffset = Vector3.new(0, 1, 0);
						v2502.Size = UDim2.new(1, 200, 1, 30);
						v2502.Adornee = v805.Character.Head;
						v2502.AlwaysOnTop = true;
						local v2509 = Instance.new("TextLabel", v2502);
						v2509.Font = Enum.Font.GothamSemibold;
						v2509.FontSize = "Size14";
						v2509.TextWrapped = true;
						v2509.Text = v805.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v805.Character.Head.Position).Magnitude / 3 )   .. " Distance" ;
						v2509.Size = UDim2.new(1, 0, 1, 0);
						v2509.TextYAlignment = "Top";
						v2509.BackgroundTransparency = 1;
						v2509.TextStrokeTransparency = 0.5;
						if (v805.Team == game.Players.LocalPlayer.Team) then
							v2509.TextColor3 = Color3.new(3, 252, 3);
						else
							v2509.TextColor3 = Color3.new(3, 252, 3);
						end
					else
						v805.Character.Head["NameEsp"   .. Number ].TextLabel.Text = v805.Name   .. " | "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v805.Character.Head.Position).Magnitude / 3 )   .. " Distance\nHealth: "   .. v45((v805.Character.Humanoid.Health * 100) / v805.Character.Humanoid.MaxHealth )   .. "%" ;
					end
				elseif v805.Character.Head:FindFirstChild("NameEsp"   .. Number ) then
					v805.Character.Head:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateChestChams()
	for v806, v807 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v807.Name, "Chest") then
				if ChestESP then
					if string.find(v807.Name, "Chest") then
						if  not v807:FindFirstChild("NameEsp"   .. Number ) then
							local v2787 = Instance.new("BillboardGui", v807);
							v2787.Name = "NameEsp"   .. Number ;
							v2787.ExtentsOffset = Vector3.new(0, 1, 0);
							v2787.Size = UDim2.new(1, 200, 1, 30);
							v2787.Adornee = v807;
							v2787.AlwaysOnTop = true;
							local v2793 = Instance.new("TextLabel", v2787);
							v2793.Font = Enum.Font.GothamSemibold;
							v2793.FontSize = "Size14";
							v2793.TextWrapped = true;
							v2793.Size = UDim2.new(1, 0, 1, 0);
							v2793.TextYAlignment = "Top";
							v2793.BackgroundTransparency = 1;
							v2793.TextStrokeTransparency = 0.5;
							if (v807.Name == "Chest1") then
								v2793.TextColor3 = Color3.fromRGB(109, 109, 109);
								v2793.Text = "Chest 1"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v807.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v807.Name == "Chest2") then
								v2793.TextColor3 = Color3.fromRGB(173, 158, 21);
								v2793.Text = "Chest 2"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v807.Position).Magnitude / 3 )   .. " Distance" ;
							end
							if (v807.Name == "Chest3") then
								v2793.TextColor3 = Color3.fromRGB(85, 255, 255);
								v2793.Text = "Chest 3"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v807.Position).Magnitude / 3 )   .. " Distance" ;
							end
						else
							v807["NameEsp"   .. Number ].TextLabel.Text = v807.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v807.Position).Magnitude / 3 )   .. " Distance" ;
						end
					end
				elseif v807:FindFirstChild("NameEsp"   .. Number ) then
					v807:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateDevilChams()
	for v808, v809 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v809.Name, "Fruit") then
					if  not v809.Handle:FindFirstChild("NameEsp"   .. Number ) then
						local v2520 = Instance.new("BillboardGui", v809.Handle);
						v2520.Name = "NameEsp"   .. Number ;
						v2520.ExtentsOffset = Vector3.new(0, 1, 0);
						v2520.Size = UDim2.new(1, 200, 1, 30);
						v2520.Adornee = v809.Handle;
						v2520.AlwaysOnTop = true;
						local v2527 = Instance.new("TextLabel", v2520);
						v2527.Font = Enum.Font.GothamSemibold;
						v2527.FontSize = "Size14";
						v2527.TextWrapped = true;
						v2527.Size = UDim2.new(1, 0, 1, 0);
						v2527.TextYAlignment = "Top";
						v2527.BackgroundTransparency = 1;
						v2527.TextStrokeTransparency = 0.5;
						v2527.TextColor3 = Color3.fromRGB(255, 255, 255);
						v2527.Text = v809.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v809.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					else
						v809.Handle["NameEsp"   .. Number ].TextLabel.Text = v809.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v809.Handle.Position).Magnitude / 3 )   .. " Distance" ;
					end
				end
			elseif v809.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v809.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end);
	end
end
function UpdateFlowerChams()
	for v810, v811 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if ((v811.Name == "Flower2") or (v811.Name == "Flower1")) then
				if FlowerESP then
					if  not v811:FindFirstChild("NameEsp"   .. Number ) then
						local v2539 = Instance.new("BillboardGui", v811);
						v2539.Name = "NameEsp"   .. Number ;
						v2539.ExtentsOffset = Vector3.new(0, 1, 0);
						v2539.Size = UDim2.new(1, 200, 1, 30);
						v2539.Adornee = v811;
						v2539.AlwaysOnTop = true;
						local v2545 = Instance.new("TextLabel", v2539);
						v2545.Font = Enum.Font.GothamSemibold;
						v2545.FontSize = "Size14";
						v2545.TextWrapped = true;
						v2545.Size = UDim2.new(1, 0, 1, 0);
						v2545.TextYAlignment = "Top";
						v2545.BackgroundTransparency = 1;
						v2545.TextStrokeTransparency = 0.5;
						v2545.TextColor3 = Color3.fromRGB(255, 0, 0);
						if (v811.Name == "Flower1") then
							v2545.Text = "Blue Flower"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v811.Position).Magnitude / 3 )   .. " Distance" ;
							v2545.TextColor3 = Color3.fromRGB(0, 0, 255);
						end
						if (v811.Name == "Flower2") then
							v2545.Text = "Red Flower"   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v811.Position).Magnitude / 3 )   .. " Distance" ;
							v2545.TextColor3 = Color3.fromRGB(255, 0, 0);
						end
					else
						v811["NameEsp"   .. Number ].TextLabel.Text = v811.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v811.Position).Magnitude / 3 )   .. " Distance" ;
					end
				elseif v811:FindFirstChild("NameEsp"   .. Number ) then
					v811:FindFirstChild("NameEsp"   .. Number ):Destroy();
				end
			end
		end);
	end
end
function UpdateRealFruitChams()
	for v812, v813 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v813:IsA("Tool") then
			if RealFruitESP then
				if  not v813.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2274 = Instance.new("BillboardGui", v813.Handle);
					v2274.Name = "NameEsp"   .. Number ;
					v2274.ExtentsOffset = Vector3.new(0, 1, 0);
					v2274.Size = UDim2.new(1, 200, 1, 30);
					v2274.Adornee = v813.Handle;
					v2274.AlwaysOnTop = true;
					local v2281 = Instance.new("TextLabel", v2274);
					v2281.Font = Enum.Font.GothamSemibold;
					v2281.FontSize = "Size14";
					v2281.TextWrapped = true;
					v2281.Size = UDim2.new(1, 0, 1, 0);
					v2281.TextYAlignment = "Top";
					v2281.BackgroundTransparency = 1;
					v2281.TextStrokeTransparency = 0.5;
					v2281.TextColor3 = Color3.fromRGB(255, 0, 0);
					v2281.Text = v813.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v813.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v813.Handle["NameEsp"   .. Number ].TextLabel.Text = v813.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v813.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v813.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v813.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v814, v815 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v815:IsA("Tool") then
			if RealFruitESP then
				if  not v815.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2293 = Instance.new("BillboardGui", v815.Handle);
					v2293.Name = "NameEsp"   .. Number ;
					v2293.ExtentsOffset = Vector3.new(0, 1, 0);
					v2293.Size = UDim2.new(1, 200, 1, 30);
					v2293.Adornee = v815.Handle;
					v2293.AlwaysOnTop = true;
					local v2300 = Instance.new("TextLabel", v2293);
					v2300.Font = Enum.Font.GothamSemibold;
					v2300.FontSize = "Size14";
					v2300.TextWrapped = true;
					v2300.Size = UDim2.new(1, 0, 1, 0);
					v2300.TextYAlignment = "Top";
					v2300.BackgroundTransparency = 1;
					v2300.TextStrokeTransparency = 0.5;
					v2300.TextColor3 = Color3.fromRGB(255, 174, 0);
					v2300.Text = v815.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v815.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v815.Handle["NameEsp"   .. Number ].TextLabel.Text = v815.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v815.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v815.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v815.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
	for v816, v817 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v817:IsA("Tool") then
			if RealFruitESP then
				if  not v817.Handle:FindFirstChild("NameEsp"   .. Number ) then
					local v2312 = Instance.new("BillboardGui", v817.Handle);
					v2312.Name = "NameEsp"   .. Number ;
					v2312.ExtentsOffset = Vector3.new(0, 1, 0);
					v2312.Size = UDim2.new(1, 200, 1, 30);
					v2312.Adornee = v817.Handle;
					v2312.AlwaysOnTop = true;
					local v2319 = Instance.new("TextLabel", v2312);
					v2319.Font = Enum.Font.GothamSemibold;
					v2319.FontSize = "Size14";
					v2319.TextWrapped = true;
					v2319.Size = UDim2.new(1, 0, 1, 0);
					v2319.TextYAlignment = "Top";
					v2319.BackgroundTransparency = 1;
					v2319.TextStrokeTransparency = 0.5;
					v2319.TextColor3 = Color3.fromRGB(251, 255, 0);
					v2319.Text = v817.Name   .. " \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v817.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				else
					v817.Handle["NameEsp"   .. Number ].TextLabel.Text = v817.Name   .. " "   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v817.Handle.Position).Magnitude / 3 )   .. " Distance" ;
				end
			elseif v817.Handle:FindFirstChild("NameEsp"   .. Number ) then
				v817.Handle:FindFirstChild("NameEsp"   .. Number ):Destroy();
			end
		end
	end
end
function UpdateIslandMirageESP()
	for v818, v819 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if (v819.Name == "Mirage Island") then
					if  not v819:FindFirstChild("NameEsp") then
						local v2556 = Instance.new("BillboardGui", v819);
						v2556.Name = "NameEsp";
						v2556.ExtentsOffset = Vector3.new(0, 1, 0);
						v2556.Size = UDim2.new(1, 200, 1, 30);
						v2556.Adornee = v819;
						v2556.AlwaysOnTop = true;
						local v2562 = Instance.new("TextLabel", v2556);
						v2562.Font = "Code";
						v2562.FontSize = "Size14";
						v2562.TextWrapped = true;
						v2562.Size = UDim2.new(1, 0, 1, 0);
						v2562.TextYAlignment = "Top";
						v2562.BackgroundTransparency = 1;
						v2562.TextStrokeTransparency = 0.5;
						v2562.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v819['NameEsp'].TextLabel.Text = v819.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v819.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v819:FindFirstChild("NameEsp") then
				v819:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function UpdateLSDESP()
	for v820, v821 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if LADESP then
				if (v821.Name == "Legendary Sword Dealer") then
					if  not v821:FindFirstChild("NameEsp") then
						local v2572 = Instance.new("BillboardGui", v821);
						v2572.Name = "NameEsp";
						v2572.ExtentsOffset = Vector3.new(0, 1, 0);
						v2572.Size = UDim2.new(1, 200, 1, 30);
						v2572.Adornee = v821;
						v2572.AlwaysOnTop = true;
						local v2578 = Instance.new("TextLabel", v2572);
						v2578.Font = "Code";
						v2578.FontSize = "Size14";
						v2578.TextWrapped = true;
						v2578.Size = UDim2.new(1, 0, 1, 0);
						v2578.TextYAlignment = "Top";
						v2578.BackgroundTransparency = 1;
						v2578.TextStrokeTransparency = 0.5;
						v2578.TextColor3 = Color3.fromRGB(255, 255, 255);
					else
						v821['NameEsp'].TextLabel.Text = v821.Name   .. "   \n"   .. v45((game:GetService("Players").LocalPlayer.Character.Head.Position - v821.Position).Magnitude / 3 )   .. " M" ;
					end
				end
			elseif v821:FindFirstChild("NameEsp") then
				v821:FindFirstChild("NameEsp"):Destroy();
			end
		end);
	end
end
function InfAb()
	if InfAbility then
		if  not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local v1985 = Instance.new("ParticleEmitter");
			v1985.Acceleration = Vector3.new(0, 0, 0);
			v1985.Archivable = true;
			v1985.Drag = 20;
			v1985.EmissionDirection = Enum.NormalId.Top;
			v1985.Enabled = true;
			v1985.Lifetime = NumberRange.new(0, 0);
			v1985.LightInfluence = 0;
			v1985.LockedToPart = true;
			v1985.Name = "Agility";
			v1985.Rate = 500;
			local v1997 = {
				NumberSequenceKeypoint.new(0, 0),
				NumberSequenceKeypoint.new(1, 4)
			};
			v1985.Size = NumberSequence.new(v1997);
			v1985.RotSpeed = NumberRange.new(9999, 99999);
			v1985.Rotation = NumberRange.new(0, 0);
			v1985.Speed = NumberRange.new(30, 30);
			v1985.SpreadAngle = Vector2.new(0, 0, 0, 0);
			v1985.Texture = "";
			v1985.VelocityInheritance = 0;
			v1985.ZOffset = 2;
			v1985.Transparency = NumberSequence.new(0);
			v1985.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0));
			v1985.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
		end
	elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy();
	end
end
local v46 = game:GetService("Players").LocalPlayer;
local v47 = v46.Character.Energy.Value;
function infinitestam()
	v46.Character.Energy.Changed:connect(function()
		if InfiniteEnergy then
			v46.Character.Energy.Value = v47;
		end
	end);
end
spawn(function()
	pcall(function()
		while wait(0.1) do
			if InfiniteEnergy then
				wait(0.1);
				v47 = v46.Character.Energy.Value;
				infinitestam();
			end
		end
	end);
end);
function NoDodgeCool()
	if nododgecool then
		for v1898, v1899 in next, getgc() do
			if game:GetService("Players").LocalPlayer.Character.Dodge then
				if ((typeof(v1899) == "function") and (getfenv(v1899).script == game:GetService("Players").LocalPlayer.Character.Dodge)) then
					for v2588, v2589 in next, getupvalues(v1899) do
						if (tostring(v2589) == "0.1") then
							repeat
								wait(0.1);
								setupvalue(v1899, v2588, 0);
							until  not nododgecool
						end
					end
				end
			end
		end
	end
end
function fly()
	local v358 = game:GetService("Players").LocalPlayer:GetMouse("");
	localplayer = game:GetService("Players").LocalPlayer;
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart");
	local v360 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	local v361 = 25;
	local v362 = {
		a = false,
		d = false,
		w = false,
		s = false
	};
	local v363;
	local v364;
	local function v365()
		local v822 = Instance.new("BodyPosition", v360);
		local v823 = Instance.new("BodyGyro", v360);
		v822.Name = "EPIXPOS";
		v822.maxForce = Vector3.new(math.huge, math.huge, math.huge);
		v822.position = v360.Position;
		v823.maxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
		v823.CFrame = v360.CFrame;
		repeat
			wait();
			localplayer.Character.Humanoid.PlatformStand = true;
			local v1749 = (v823.CFrame - v823.CFrame.p) + v822.position ;
			if ( not v362.w and  not v362.s and  not v362.a and  not v362.d) then
				speed = 1;
			end
			if v362.w then
				v1749 = v1749 + (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
				speed = speed + v361 ;
			end
			if v362.s then
				v1749 = v1749 - (workspace.CurrentCamera.CoordinateFrame.lookVector * speed) ;
				speed = speed + v361 ;
			end
			if v362.d then
				v1749 = v1749 * CFrame.new(speed, 0, 0) ;
				speed = speed + v361 ;
			end
			if v362.a then
				v1749 = v1749 * CFrame.new( -speed, 0, 0) ;
				speed = speed + v361 ;
			end
			if (speed > v361) then
				speed = v361;
			end
			v822.position = v1749.p;
			if v362.w then
				v823.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles( -math.rad(speed * 15 ), 0, 0) ;
			elseif v362.s then
				v823.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15 ), 0, 0) ;
			else
				v823.CFrame = workspace.CurrentCamera.CoordinateFrame;
			end
		until  not Fly
		if v823 then
			v823:Destroy();
		end
		if v822 then
			v822:Destroy();
		end
		flying = false;
		localplayer.Character.Humanoid.PlatformStand = false;
		speed = 0;
	end
	v363 = v358.KeyDown:connect(function(v832)
		if ( not v360 or  not v360.Parent) then
			flying = false;
			v363:disconnect();
			v364:disconnect();
			return;
		end
		if (v832 == "w") then
			v362.w = true;
		elseif (v832 == "s") then
			v362.s = true;
		elseif (v832 == "a") then
			v362.a = true;
		elseif (v832 == "d") then
			v362.d = true;
		end
	end);
	v364 = v358.KeyUp:connect(function(v833)
		if (v833 == "w") then
			v362.w = false;
		elseif (v833 == "s") then
			v362.s = false;
		elseif (v833 == "a") then
			v362.a = false;
		elseif (v833 == "d") then
			v362.d = false;
		end
	end);
	v365();
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
function EquipWeapon(v366)
	if  not Nill then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(v366) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(v366);
			wait(0.1);
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool);
		end
	end
end
function BTP(v367)
	pcall(function()
		if (((v367.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500) and  not Auto_Raid and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
			repeat
				wait();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v367;
				wait(0.05);
				game.Players.LocalPlayer.Character.Head:Destroy();
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v367;
			until ((v367.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)
		end
	end);
end
local v48 = false;
function WaitHRP(v368)
	if  not v368 then
		return;
	end
	return v368.Character:WaitForChild("HumanoidRootPart", 9);
end
function CheckNearestTeleporter(v369)
	local v370 = v369.Position;
	local v371 = math.huge;
	local v372 = nil;
	local v373 = game.PlaceId;
	local v374 = {};
	if (v373 == 2753915549) then
		v374 = {
			Sky3 = Vector3.new( -7894, 5547, -380),
			Sky3Exit = Vector3.new( -4607, 874, -1667),
			UnderWater = Vector3.new(61163, 11, 1819),
			UnderwaterExit = Vector3.new(4050, -1, -1814)
		};
	elseif (v373 == 4442272183) then
		v374 = {
			["Swan Mansion"] = Vector3.new( -390, 332, 673),
			["Swan Room"] = Vector3.new(2285, 15, 905),
			["Cursed Ship"] = Vector3.new(923, 126, 32852),
			["Zombie Island"] = Vector3.new( -6509, 83, -133)
		};
	elseif (v373 == 7449423635) then
		v374 = {
			["Floating Turtle"] = Vector3.new( -12462, 375, -7552),
			["Hydra Island"] = Vector3.new(5745, 610, -267),
			Mansion = Vector3.new( -12462, 375, -7552),
			Castle = Vector3.new( -5036, 315, -3179),
			["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
			["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.1476277e-8, -1.9911115e-13, -2.1476277e-8, 1, -3.0510602e-8, 1.984559e-13, 3.0510602e-8, 1),
			["Temple of Time"] = Vector3.new(28286, 14897, 103)
		};
	end
	for v834, v835 in pairs(v374) do
		local v836 = (v835 - v370).Magnitude;
		if (v836 < v371) then
			v371 = v836;
			v372 = v835;
		end
	end
	local v375 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
	if (v371 <= (v370 - v375).Magnitude) then
		return v372;
	end
end
function requestEntrance(v376)
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", v376);
	local v377 = game.Players.LocalPlayer.Character.HumanoidRootPart;
	v377.CFrame = v377.CFrame + Vector3.new(0, 50, 0) ;
	task.wait(0.5);
end
local v49 = false;
function topos(v379)
	local v380 = game.Players.LocalPlayer;
	if (v380.Character and (v380.Character.Humanoid.Health > 0) and v380.Character:FindFirstChild("HumanoidRootPart")) then
		if  not v379 then
			return;
		end
		local v1752 = (v379.Position - v380.Character.HumanoidRootPart.Position).Magnitude;
		local v1753 = CheckNearestTeleporter(v379);
		if v1753 then
			requestEntrance(v1753);
		end
		if  not v380.Character:FindFirstChild("PartTele") then
			local v2013 = Instance.new("Part", v380.Character);
			v2013.Size = Vector3.new(10, 1, 10);
			v2013.Name = "PartTele";
			v2013.Anchored = true;
			v2013.Transparency = 1;
			v2013.CanCollide = false;
			v2013.CFrame = WaitHRP(v380).CFrame;
			v2013:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v48 then
					return;
				end
				task.wait();
				if (v380.Character and v380.Character:FindFirstChild("HumanoidRootPart")) then
					local v2333 = v2013.CFrame;
					WaitHRP(v380).CFrame = CFrame.new(v2333.Position.X, v379.Position.Y, v2333.Position.Z);
				end
			end);
		end
		v48 = true;
		if (v49 and (v1752 > distbyp)) then
			bypass(v379);
		end
		local v1754 = getgenv().TweenSpeed;
		if (v1752 <= 250) then
			v1754 = v1754 * 3 ;
		end
		local v1755 = CFrame.new(v379.Position.X, v379.Position.Y, v379.Position.Z);
		local v1756 = game:GetService("TweenService"):Create(v380.Character.PartTele, TweenInfo.new(v1752 / v1754 , Enum.EasingStyle.Linear), {
			CFrame = v379
		});
		v1756:Play();
		v1756.Completed:Connect(function(v1902)
			if (v1902 == Enum.PlaybackState.Completed) then
				if v380.Character:FindFirstChild("PartTele") then
					v380.Character.PartTele:Destroy();
				end
				v48 = false;
			end
		end);
	end
end
function TP1(v381)
	topos(v381);
end
function TP2(v382)
	local v383 = game.Players.LocalPlayer;
	if (v383.Character and (v383.Character.Humanoid.Health > 0) and v383.Character:FindFirstChild("HumanoidRootPart")) then
		local v1757 = (v382.Position - v383.Character.HumanoidRootPart.Position).Magnitude;
		if  not v382 then
			return;
		end
		local v1758 = CheckNearestTeleporter(v382);
		if v1758 then
			requestEntrance(v1758);
		end
		if  not v383.Character:FindFirstChild("PartTele") then
			local v2021 = Instance.new("Part", v383.Character);
			v2021.Size = Vector3.new(10, 1, 10);
			v2021.Name = "PartTele";
			v2021.Anchored = true;
			v2021.Transparency = 1;
			v2021.CanCollide = true;
			v2021.CFrame = WaitHRP(v383).CFrame;
			v2021:GetPropertyChangedSignal("CFrame"):Connect(function()
				if  not v48 then
					return;
				end
				task.wait();
				if (v383.Character and v383.Character:FindFirstChild("HumanoidRootPart")) then
					WaitHRP(v383).CFrame = v2021.CFrame;
				end
			end);
		end
		v48 = true;
		local v1759 = game:GetService("TweenService"):Create(v383.Character.PartTele, TweenInfo.new(v1757 / 350 , Enum.EasingStyle.Linear), {
			CFrame = v382
		});
		v1759:Play();
		v1759.Completed:Connect(function(v1903)
			if (v1903 == Enum.PlaybackState.Completed) then
				if v383.Character:FindFirstChild("PartTele") then
					v383.Character.PartTele:Destroy();
				end
				v48 = false;
			end
		end);
	end
end
function stopTeleport()
	v48 = false;
	local v384 = game.Players.LocalPlayer;
	if v384.Character:FindFirstChild("PartTele") then
		v384.Character.PartTele:Destroy();
	end
end
spawn(function()
	while task.wait() do
		if  not v48 then
			stopTeleport();
		end
	end
end);
spawn(function()
	local v385 = game.Players.LocalPlayer;
	while task.wait() do
		pcall(function()
			if v385.Character:FindFirstChild("PartTele") then
				if ((v385.Character.HumanoidRootPart.Position - v385.Character.PartTele.Position).Magnitude >= 100) then
					stopTeleport();
				end
			end
		end);
	end
end);
local v50 = game.Players.LocalPlayer;
local function v51(v386)
	local v387 = v386:WaitForChild("Humanoid");
	v387.Died:Connect(function()
		stopTeleport();
	end);
end
v50.CharacterAdded:Connect(v51);
if v50.Character then
	v51(v50.Character);
end
function TPB(v388)
	local v389 = game:service("TweenService");
	local v390 = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - v388.Position).Magnitude / 300 , Enum.EasingStyle.Linear);
	tween = v389:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, v390, {
		CFrame = v388
	});
	tween:Play();
	local v391 = {};
	v391.Stop = function(v837)
		tween:Cancel();
	end;
	return v391;
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
					local v2169 = Instance.new("BodyVelocity");
					v2169.Name = "BodyClip";
					v2169.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
					v2169.MaxForce = Vector3.new(100000, 100000, 100000);
					v2169.Velocity = Vector3.new(0, 0, 0);
				end
			end
		end
	end);
end);
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if (_G.AdvanceDungeon or _G.DoughKingRaid or _G.DoughtBoss or _G.Factory or _G.FarmBossHallow or _G.FarmSwanGlasses or _G.LongSword or _G.BlackSpikeycoat or _G.ElectricClaw or _G.FarmGunMastery or _G.HolyTorch or _G.LawRaid or _G.FarmBoss or _G.TwinHooks or _G.OpenSwanDoor or _G.Dragon_Trident or _G.Saber or _G.NoClip or _G.FarmFruitMastery or _G.FarmGunMastery or _G.TeleportIsland or _G.EvoRace or _G.FarmAllMsBypassType or _G.Observationv2 or _G.MusketeerHat or _G.Ectoplasm or _G.Rengoku or _G.AutoDarkbeard or _G.Rainbow_Haki or _G.Observation or _G.DarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.BudySword or _G.OderSword or _G.AllBoss or _G.Sharkman or _G.Mastery_Fruit or _G.Mastery_Gun or _G.Dungeon or _G.Cavender or _G.Pole or _G.Kill_Ply or _G.Factory or _G.SecondSea or _G.TeleportPly or _G.Bartilo or _G.DarkBoss or _G.GrabChest or _G.Holy_Torch or _G.Level or _G.KillAfterTrials or _G.Clip or _G.Elitehunter or _G.CollectBerry or _G.ThirdSea or _G.Bone or _G.Train or _G.heart or _G.doughking or _G.FarmMaterial or _G.Guitar or Auto_Quest_Soul_Guitar or _G.Dragon_Trident or _G.tushita or _G.waden or _G.pole or _G.Greybeard or _G.saw or _G.FarmNearest or _G.Carvender or _G.TwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Kai or _G.Leather or _G.Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.FarmSeabaest or Yama_Quest or Get_Cursed or Tushita_Quest or _G.FarmMob or _G.MysticIsland or _G.FarmDungeon or _G.RaidPirate or _G.QuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.PlayerHunter or _G.Factory or _G.Seabest or _G.SeaBest or _G.KillTial or _G.Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.Race or _G.RaidPirate or Open_Color_Haki or _G.Terrorshark or _G.KillLeviathan or _G.SegmentLeviathan or _G.DefendVolcano or _G.KillGolem or _G.TpPrehistoric or _G.AutoLeviathan or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member or _G.AppleAutoDriveBoat or _G.FrozenDimension or _G.FKitsune) then
				for v2099, v2100 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v2100:IsA("BasePart") then
						v2100.CanCollide = false;
					end
				end
			end
		end);
	end);
end);
function InstancePos(v393)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v393;
end
function TP3(v395)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v395;
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
function StopTween(v397)
	if  not v397 then
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
			for v1904, v1905 in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v1905:IsA("Tool") then
					if v1905:FindFirstChild("RemoteFunctionShoot") then
						SelectWeaponGun = v1905.Name;
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
_G.FastAttack = true;
if _G.FastAttack then
	local _ENV = (getgenv or getrenv or getfenv)();
	local function v838(v1760, v1761)
		local v1762, v1763 = pcall(function()
			return v1760:WaitForChild(v1761);
		end);
		if ( not v1762 or  not v1763) then
			warn("noooooo: "   .. v1761 );
		end
		return v1763;
	end
	local function v839(v1764, ...)
		local v1765 = v1764;
		for v1906, v1907 in {
			...
		} do
			v1765 = v1765:FindFirstChild(v1907) or v838(v1765, v1907) ;
			if  not v1765 then
				break;
			end
		end
		return v1765;
	end
	local v840 = game:GetService("VirtualInputManager");
	local v841 = game:GetService("CollectionService");
	local v842 = game:GetService("ReplicatedStorage");
	local v843 = game:GetService("TeleportService");
	local v844 = game:GetService("RunService");
	local v845 = game:GetService("Players");
	local v846 = v845.LocalPlayer;
	if  not v846 then
		warn("Không tìm thấy người chơi cục bộ.");
		return;
	end
	local v847 = v838(v842, "Remotes");
	if  not v847 then
		return;
	end
	local v848 = v838(v847, "Validator");
	local v849 = v838(v847, "CommF_");
	local v850 = v838(v847, "CommE");
	local v851 = v838(workspace, "ChestModels");
	local v852 = v838(workspace, "_WorldOrigin");
	local v853 = v838(workspace, "Characters");
	local v854 = v838(workspace, "Enemies");
	local v855 = v838(workspace, "Map");
	local v856 = v838(v852, "EnemySpawns");
	local v857 = v838(v852, "Locations");
	local v858 = v844.RenderStepped;
	local v859 = v844.Heartbeat;
	local v860 = v844.Stepped;
	local v861 = v838(v842, "Modules");
	local v862 = v838(v861, "Net");
	local v863 = sethiddenproperty or function(...)
		return ...;
	end ;
	local v864 = setupvalue or (debug and debug.setupvalue) ;
	local v865 = getupvalue or (debug and debug.getupvalue) ;
	local v866 = {
		AutoClick = true,
		ClickDelay = 0
	};
	local v867 = {};
	v867.FastAttack = (function()
		if _ENV.rz_FastAttack then
			return _ENV.rz_FastAttack;
		end
		local v1766 = {
			Distance = 100,
			attackMobs = true,
			attackPlayers = true,
			Equipped = nil
		};
		local v1767 = v838(v862, "RE/RegisterAttack");
		local v1768 = v838(v862, "RE/RegisterHit");
		local function v1769(v1908)
			return v1908 and v1908:FindFirstChild("Humanoid") and (v1908.Humanoid.Health > 0) ;
		end
		local function v1770(v1909, v1910)
			local v1911 = nil;
			for v2029, v2030 in v1910:GetChildren() do
				local v2031 = v2030:FindFirstChild("Head");
				if (v2031 and v1769(v2030) and (v846:DistanceFromCharacter(v2031.Position) < v1766.Distance)) then
					if (v2030 ~= v846.Character) then
						table.insert(v1909, {
							v2030,
							v2031
						});
						v1911 = v2031;
					end
				end
			end
			return v1911;
		end
		v1766.Attack = function(v1912, v1913, v1914)
			if ( not v1913 or ( #v1914 == 0)) then
				return;
			end
			v1767:FireServer(v866.ClickDelay or 0 );
			v1768:FireServer(v1913, v1914);
		end;
		v1766.AttackNearest = function(v1915)
			local v1916 = {};
			local v1917 = v1770(v1916, v854);
			local v1918 = v1770(v1916, v853);
			if ( #v1916 > 0) then
				v1915:Attack(v1917 or v1918 , v1916);
			else
				task.wait(0);
			end
		end;
		v1766.BladeHits = function(v1919)
			local v1920 = v1769(v846.Character) and v846.Character:FindFirstChildOfClass("Tool") ;
			if (v1920 and (v1920.ToolTip ~= "Gun")) then
				v1919:AttackNearest();
			else
				task.wait(0);
			end
		end;
		task.spawn(function()
			while task.wait(v866.ClickDelay) do
				if v866.AutoClick then
					v1766:BladeHits();
				end
			end
		end);
		_ENV.rz_FastAttack = v1766;
		return v1766;
	end)();
end
local v52 = v3:Window("HTG Hub", "");
local v53 = v52:T("Tab Status", "rbxassetid://10734984606");
local v54 = v52:T("Tab General", "rbxassetid://10723407389");
local v55 = v52:T("Setting Other", "rbxassetid://10734950309");
local v56 = v52:T("Tab Item", "rbxassetid://10734975692");
local v57 = v52:T("Race - Mirage", "rbxassetid://10747372167");
local v58 = v52:T("Tab Event", "rbxassetid://10709783577");
local v59 = v52:T("Tab Player", "rbxassetid://10747373176");
local v60 = v52:T("Tab Visual", "rbxassetid://10723346959");
local v61 = v52:T("Tab Raid", "rbxassetid://10723345749");
local v62 = v52:T("Tab Teleport", "rbxassetid://10723434557");
local v63 = v52:T("Tab Shop", "rbxassetid://10734952479");
local v64 = v52:T("Devil Fruit", "rbxassetid://10709761889");
local v65 = v52:T("Miscellaneous", "rbxassetid://10709782582");
v53:Seperator("Join Discord");
v53:Label("Everyone Goes Into Socialize");
v53:Button("Copy Discord Link", function()
	setclipboard("https://discord.gg/9Nyb45Bq");
end);
v53:Seperator("Time");
Time = v53:Label("Executer Time");
function UpdateTime()
	local v398 = math.floor(workspace.DistributedGameTime + 0.5 );
	local v399 = math.floor(v398 / (60 ^ 2) ) % 24 ;
	local v400 = math.floor(v398 / (60 ^ 1) ) % 60 ;
	local v401 = math.floor(v398 / (60 ^ 0) ) % 60 ;
	Time:Set("[Sever Time]: Hours: "   .. v399   .. " Min: "   .. v400   .. " Sec: "   .. v401 );
end
spawn(function()
	while task.wait() do
		pcall(function()
			UpdateTime();
		end);
	end
end);
Client = v53:Label("Client");
function UpdateClient()
	local v402 = workspace:GetRealPhysicsFPS();
	Client:Set("[FPS]: "   .. v402 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient();
	end
end);
Client1 = v53:Label("Client");
function UpdateClient1()
	local v403 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString();
	Client1:Set("[PING]: "   .. v403 );
end
spawn(function()
	while true do
		wait(0.1);
		UpdateClient1();
	end
end);
v53:Seperator("Status Player");
local v66 = v53:Label("Race");
spawn(function()
	while wait() do
		pcall(function()
			v66:Set("Race:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Race.Value );
		end);
	end
end);
local v67 = v53:Label("Beli");
spawn(function()
	while wait() do
		pcall(function()
			v67:Set("Beli:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Beli.Value );
		end);
	end
end);
local v68 = v53:Label("Fragment");
spawn(function()
	while wait() do
		pcall(function()
			v68:Set("Fragments:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.Fragments.Value );
		end);
	end
end);
local v69 = v53:Label("Bounty");
spawn(function()
	while wait() do
		pcall(function()
			v69:Set("Bounty / Honor:"   .. " "   .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value );
		end);
	end
end);
local v70 = v53:Label("Devil Fruit");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)) then
				v70:Set("Devil Fruit:"   .. " "   .. game:GetService("Players").LocalPlayer.Data.DevilFruit.Value );
			else
				v70:Set("Not Have Devil Fruit");
			end
		end);
	end
end);
v54:Seperator("Farm Mode");
local v71 = {
	"Melee",
	"Sword",
	"Fruit",
	"Gun"
};
_G.SelectWeapon = "Melee";
v54:Dropdown("Select Weapon", v71, function(v404)
	_G.SelectWeapon = v404;
end);
task.spawn(function()
	while wait() do
		pcall(function()
			if (_G.SelectWeapon == "Melee") then
				for v2101, v2102 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2102.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2102.Name)) then
							_G.SelectWeapon = v2102.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Sword") then
				for v2339, v2340 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2340.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2340.Name)) then
							_G.SelectWeapon = v2340.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Gun") then
				for v2635, v2636 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2636.ToolTip == "Gun") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2636.Name)) then
							_G.SelectWeapon = v2636.Name;
						end
					end
				end
			elseif (_G.SelectWeapon == "Fruit") then
				for v2828, v2829 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v2829.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v2829.Name)) then
							_G.SelectWeapon = v2829.Name;
						end
					end
				end
			end
		end);
	end
end);
local v72 = {
	"Normal Attack",
	"Fast Attack",
	"Super Attack",
	"Xeter Attack"
};
_G.FastAttackDelay = "Normal Attack";
v54:Dropdown("Fast Attack Delay", v72, function(v405)
	_G.FastAttackDelay = v405;
end);
spawn(function()
	while wait(0.1) do
		if _G.FastAttackDelay then
			pcall(function()
				if (_G.FastAttackDelay == "Normal Attack") then
					_G.FastAttackDelay = 0.13;
				elseif (_G.FastAttackDelay == "Fast Attack") then
					_G.FastAttackDelay = 0.07;
				elseif (_G.FastAttackDelay == "Super Attack") then
					_G.FastAttackDelay = 0.04;
				elseif (_G.FastAttackDelay == "Xeter Attack") then
					_G.FastAttackDelay = 0;
				end
			end);
		end
	end
end);
v54:Seperator("Farming");
v54:Toggle("Auto Farm Level", _G.Farm, function(v406)
	_G.Level = v406;
	StopTween(_G.Farm);
end);
spawn(function()
	while wait() do
		if _G.Level then
			pcall(function()
				local v2032 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v2032, NameMon) then
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
						for v2830, v2831 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2831:FindFirstChild("HumanoidRootPart") and v2831:FindFirstChild("Humanoid") and (v2831.Humanoid.Health > 0)) then
								if (v2831.Name == Mon) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMon = v2831.HumanoidRootPart.CFrame;
											TP1(v2831.HumanoidRootPart.CFrame * Pos );
											v2831.HumanoidRootPart.CanCollide = false;
											v2831.Humanoid.WalkSpeed = 0;
											v2831.Head.CanCollide = false;
											v2831.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											StartMagnet = true;
										until  not _G.Level or (v2831.Humanoid.Health <= 0) or  not v2831.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
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
	v54:Toggle("Auto Farm Fast (Farm Lv.1-300)", _G.FarmFast, function(v1774)
		_G.Farmfast = v1774;
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
						for v2637, v2638 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2638.Name == "Shanda") then
								if (v2638:FindFirstChild("Humanoid") and v2638:FindFirstChild("HumanoidRootPart") and (v2638.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2638.HumanoidRootPart.CanCollide = false;
										v2638.Humanoid.WalkSpeed = 0;
										StardMag = true;
										FastMon = v2638.HumanoidRootPart.CFrame;
										v2638.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
										TP1(v2638.HumanoidRootPart.CFrame * Pos );
									until  not _G.Farmfast or  not v2638.Parent or (v2638.Humanoid.Health <= 0)
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
v54:Toggle("Auto Kaitun", false, function(v407)
	_G.Level = v407;
	_G.SelectWeapon = "Combat";
	_G.Stats_Kaitun = v407;
	_G.Superhuman = v407;
	_G.SecondSea = v407;
	_G.ThirdSea = v407;
	_G.BuyLegendarySword = v407;
	_G.StoreFruit = v407;
	_G.Random_Auto = v407;
	_G.BuyAllAib = v407;
	_G.BuyAllSword = v407;
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
v54:Toggle("Auto Farm Nearest", _G.FarmNearest, function(v408)
	_G.FarmNearest = v408;
	StopTween(_G.FarmNearest);
end);
spawn(function()
	while wait() do
		if _G.FarmNearest then
			for v2033, v2034 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (v2034.Name and v2034:FindFirstChild("Humanoid")) then
					if (v2034.Humanoid.Health > 0) then
						repeat
							wait();
							EquipWeapon(_G.SelectWeapon);
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2832 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2832));
							end
							topos(v2034.HumanoidRootPart.CFrame * Pos );
							v2034.HumanoidRootPart.CanCollide = false;
							Fastattack = true;
							v2034.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							AutoFarmNearestMagnet = true;
							PosMon = v2034.HumanoidRootPart.CFrame;
						until  not _G.FarmNearest or  not v2034.Parent or (v2034.Humanoid.Health <= 0)
						AutoFarmNearestMagnet = false;
						Fastattack = false;
					end
				end
			end
		end
	end
end);
v54:Seperator("Misc Elite");
local v73 = v54:Label("Elite Hunter");
spawn(function()
	while wait() do
		v73:Set("Total Elite Hunter : "   .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") );
	end
end);
local v74 = v54:Label("N/A");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
				v74:Set("Status: Elite Spawn!");
			else
				v74:Set("Status: Elite Not Spawn");
			end
		end);
	end
end);
v54:Toggle("Auto Elite Hunter", _G.Elitehunter, function(v409)
	_G.Elitehunter = v409;
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
							for v2833, v2834 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v2834.Name == "Diablo") or (v2834.Name == "Deandre") or (v2834.Name == "Urban")) then
									if (v2834:FindFirstChild("Humanoid") and v2834:FindFirstChild("HumanoidRootPart") and (v2834.Humanoid.Health > 0)) then
										repeat
											wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											v2834.HumanoidRootPart.CanCollide = false;
											v2834.Humanoid.WalkSpeed = 0;
											v2834.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2834.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ) );
											game:GetService("VirtualUser"):CaptureController();
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.Elitehunter == false) or (v2834.Humanoid.Health <= 0) or  not v2834.Parent
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
v54:Toggle("Auto Elite Hunter Hop", _G.EliteHunterHop, function(v410)
	_G.EliteHunterHop = v410;
end);
v54:Seperator("Chest Farm");
v54:Toggle("Auto Farm Chest", false, function(v411)
	AutoFarmChest = v411;
	StopTween(AutoFarmChest);
end);
spawn(function()
	while wait() do
		if AutoFarmChest then
			local v1921 = game:GetService("Players");
			local v1922 = v1921.LocalPlayer;
			local v1923 = v1922.Character or v1922.CharacterAdded:Wait() ;
			local v1924 = v1923:GetPivot().Position;
			local v1925 = game:GetService("CollectionService");
			local v1926 = v1925:GetTagged("_ChestTagged");
			local v1927, v1928 = math.huge;
			for v2035 = 1, #v1926 do
				local v2036 = v1926[v2035];
				local v2037 = (v2036:GetPivot().Position - v1924).Magnitude;
				if ( not v2036:GetAttribute("IsDisabled") and (v2037 < v1927)) then
					v1927, v1928 = v2037, v2036;
				end
			end
			if v1928 then
				local v2103 = v1928:GetPivot().Position;
				local v2104 = CFrame.new(v2103);
				topos(v2104);
			end
		end
	end
end);
v54:Toggle("Farm Chest Bypass (Anti Reset)", false, function(v412)
	_G.ChestBypass = v412;
end);
spawn(function()
	while wait() do
		if _G.ChestBypass then
			local v1929 = game:GetService("Players");
			local v1930 = v1929.LocalPlayer;
			local v1931 = game:GetService("CollectionService");
			local v1932 = v1930.Character or v1930.CharacterAdded:Wait() ;
			local v1933 = tick();
			while (tick() - v1933) < 4  do
				v1932 = v1930.Character or v1930.CharacterAdded:Wait() ;
				local v2038 = v1932:GetPivot().Position;
				local v2039 = v1931:GetTagged("_ChestTagged");
				local v2040, v2041 = math.huge;
				for v2105 = 1, #v2039 do
					local v2106 = v2039[v2105];
					local v2107 = (v2106:GetPivot().Position - v2038).Magnitude;
					if ( not v2106:GetAttribute("IsDisabled") and (v2107 < v2040)) then
						v2040, v2041 = v2107, v2106;
					end
				end
				if v2041 then
					local v2175 = v2041:GetPivot().Position;
					v1932:PivotTo(CFrame.new(v2175));
					task.wait(0.2);
				else
					break;
				end
			end
			if v1930.Character then
				v1930.Character:BreakJoints();
				v1930.CharacterAdded:Wait();
			end
		end
	end
end);
v54:Toggle("Auto Stop Items", function(v413)
	_G.StopItemsChest = v413;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.StopItemsChest then
				if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness")) then
					_G.ChestBypass = false;
					topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
				end
			end
		end);
	end
end);
v54:Seperator("Pirates Raid");
v54:Toggle("Auto Pirates Raid", _G.Carvender, function(v414)
	_G.RaidPirate = v414;
	StopTween(_G.RaidPirate);
end);
spawn(function()
	while wait() do
		if _G.RaidPirate then
			pcall(function()
				local v2042 = CFrame.new( -5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058e-9, 0.380223751, 3.588102e-8, 1, -1.06665446e-7, -0.380223751, 1.1229711e-7, 0.924894512);
				if ((CFrame.new( -5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500) then
					for v2341, v2342 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (_G.RaidPirate and v2342:FindFirstChild("HumanoidRootPart") and v2342:FindFirstChild("Humanoid") and (v2342.Humanoid.Health > 0)) then
							if ((v2342.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2342.HumanoidRootPart.CanCollide = false;
									v2342.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									topos(v2342.HumanoidRootPart.CFrame * Pos );
								until (v2342.Humanoid.Health <= 0) or  not v2342.Parent or  not _G.RaidPirate
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2042.Position).Magnitude > 3500) then
							BTP(v2042);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2042.Position).Magnitude < 3500) then
							topos(v2042);
						end
					end
				end
			end);
		end
	end
end);
v54:Seperator("Misc Bone");
local v75 = {
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
					for v2176, v2177 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v2177.Name == "Reborn Skeleton") or (v2177.Name == "Living Zombie") or (v2177.Name == "Demonic Soul") or (v2177.Name == "Posessed Mummy")) then
							local v2590 = v75[v2177.Name];
							if v2590 then
								v2177.HumanoidRootPart.CFrame = v2590;
							end
							v2177.Head.CanCollide = false;
							v2177.Humanoid.Sit = false;
							v2177.Humanoid:ChangeState(14);
							v2177.HumanoidRootPart.CanCollide = false;
							v2177.Humanoid.JumpPower = 0;
							v2177.Humanoid.WalkSpeed = 0;
							if v2177.Humanoid:FindFirstChild("Animator") then
								v2177.Humanoid:FindFirstChild("Animator"):Destroy();
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end);
			end
		end
	end);
end);
BoneCheck = v54:Label("Total Bone: N/A");
spawn(function()
	while wait() do
		pcall(function()
			BoneCheck:Set("Total Bone: "   .. (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")) );
		end);
	end
end);
v54:Toggle("Auto Farm Bone", false, function(v415)
	_G.Bone = v415;
	StopTween(_G.Bone);
end);
v54:Toggle("Accept Quest Bone", true, function(v416)
	_G.QuestBone = v416;
end);
local v76 = CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375);
spawn(function()
	while wait() do
		if (_G.Bone and  not _G.QuestBone and World3) then
			pcall(function()
				if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
					for v2343, v2344 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2344.Name == "Reborn Skeleton") or (v2344.Name == "Living Zombie") or (v2344.Name == "Demonic Soul") or (v2344.Name == "Posessed Mummy")) then
							if (v2344:FindFirstChild("Humanoid") and v2344:FindFirstChild("HumanoidRootPart") and (v2344.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2344.HumanoidRootPart.CanCollide = false;
									v2344.Humanoid.WalkSpeed = 0;
									v2344.Head.CanCollide = false;
									BonesBring = true;
									PosMonBone = v2344.HumanoidRootPart.CFrame;
									topos(v2344.HumanoidRootPart.CFrame * Pos );
								until  not _G.Bone or  not v2344.Parent or (v2344.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v76.Position).Magnitude > 3500) then
							BTP(v76);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v76.Position).Magnitude < 3500) then
							topos(v76);
						end
					else
						topos(v76);
					end
					UnEquipWeapon(_G.SelectWeapon);
					BonesBring = false;
					topos(CFrame.new( -9506.234375, 172.130615234375, 6117.0771484375));
					for v2345, v2346 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if (v2346.Name == "Reborn Skeleton") then
							topos(v2346.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2346.Name == "Living Zombie") then
							topos(v2346.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2346.Name == "Demonic Soul") then
							topos(v2346.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						elseif (v2346.Name == "Posessed Mummy") then
							topos(v2346.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
						end
					end
				end
			end);
		end
	end
end);
local v77 = CFrame.new( -9515.75, 174.8521728515625, 6079.40625);
spawn(function()
	while wait() do
		if (_G.Bone and _G.QuestBone and World3) then
			pcall(function()
				local v2043 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				if  not string.find(v2043, "Demonic Soul") then
					BonesBring = false;
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				end
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					BonesBring = false;
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v77.Position).Magnitude > 3500) then
							BTP(v77);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v77.Position).Magnitude < 3500) then
							topos(v77);
						end
					else
						topos(v77);
					end
					if ((v77.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
						for v2835, v2836 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2836:FindFirstChild("HumanoidRootPart") and v2836:FindFirstChild("Humanoid") and (v2836.Humanoid.Health > 0)) then
								if ((v2836.Name == "Reborn Skeleton") or (v2836.Name == "Living Zombie") or (v2836.Name == "Demonic Soul") or (v2836.Name == "Posessed Mummy")) then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
										repeat
											task.wait();
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											PosMonBone = v2836.HumanoidRootPart.CFrame;
											topos(v2836.HumanoidRootPart.CFrame * Pos );
											v2836.HumanoidRootPart.CanCollide = false;
											v2836.Humanoid.WalkSpeed = 0;
											v2836.Head.CanCollide = false;
											BonesBring = true;
										until  not _G.Bone or (v2836.Humanoid.Health <= 0) or  not v2836.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
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
v54:Toggle("Auto Random Surprise", _G.Random_Bone, function(v417)
	_G.Random_Bone = v417;
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
v54:Toggle("Auto Pray", pry, function(v418)
	_G.Pray = v418;
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
v54:Toggle("Auto Try Luck", Trylux, function(v419)
	_G.Trylux = v419;
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
v54:Seperator("Dought Boss");
local v78 = {
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
					for v2178, v2179 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v2179.Name == "Cookie Crafter") or (v2179.Name == "Cake Guard") or (v2179.Name == "Baking Staff") or (v2179.Name == "Head Baker")) then
							local v2596 = v78[v2179.Name];
							if v2596 then
								v2179.HumanoidRootPart.CFrame = v2596;
							end
							v2179.Head.CanCollide = false;
							v2179.Humanoid.Sit = false;
							v2179.Humanoid:ChangeState(14);
							v2179.HumanoidRootPart.CanCollide = false;
							v2179.Humanoid.JumpPower = 0;
							v2179.Humanoid.WalkSpeed = 0;
							if v2179.Humanoid:FindFirstChild("Animator") then
								v2179.Humanoid:FindFirstChild("Animator"):Destroy();
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
						end
					end
				end);
			end
		end
	end);
end);
local v79 = v54:Label("Killed");
spawn(function()
	while wait() do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				v79:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				v79:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) );
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				v79:Set("Defeat: "   .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) );
			else
				v79:Set("Boss Is Spawning");
			end
		end);
	end
end);
v54:Toggle("Auto Farm Cake Prince", false, function(v420)
	_G.DoughtBoss = v420;
	StopTween(_G.DoughtBoss);
end);
v54:Toggle("Accept Quest Cake Prince", true, function(v421)
	_G.QuestCake = v421;
end);
spawn(function()
	while wait() do
		if (_G.DoughtBoss and  not _G.QuestCake) then
			pcall(function()
				local v2044 = CFrame.new( -2091.911865234375, 70.00884246826172, -12142.8359375);
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then
					for v2347, v2348 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2348.Name == "Cake Prince") or (v2348.Name == "Dough King")) then
							if (v2348:FindFirstChild("Humanoid") and v2348:FindFirstChild("HumanoidRootPart") and (v2348.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2348.HumanoidRootPart.CanCollide = false;
									v2348.Humanoid.WalkSpeed = 0;
									topos(v2348.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v2348.Parent or (v2348.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				else
					if (KillMob == 0) then
					end
					if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
						for v2837, v2838 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2838.Name == "Cookie Crafter") or (v2838.Name == "Cake Guard") or (v2838.Name == "Baking Staff") or (v2838.Name == "Head Baker")) then
								if (v2838:FindFirstChild("Humanoid") and v2838:FindFirstChild("HumanoidRootPart") and (v2838.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2838.HumanoidRootPart.CanCollide = false;
										v2838.Humanoid.WalkSpeed = 0;
										v2838.Head.CanCollide = false;
										CakeBring = true;
										PosMonDoughtOpenDoor = v2838.HumanoidRootPart.CFrame;
										topos(v2838.HumanoidRootPart.CFrame * Pos );
									until  not _G.DoughtBoss or  not v2838.Parent or (v2838.Humanoid.Health <= 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2044.Position).Magnitude > 3500) then
								BTP(v2044);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2044.Position).Magnitude < 3500) then
								topos(v2044);
							end
						else
							topos(v2044);
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
				local v2045 = CFrame.new( -2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.8030205e-8, 0.288177818, 6.930119e-8, 1, 7.519312e-8, -0.288177818, -5.2032135e-8, 0.957576931);
				if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")) then
					for v2349, v2350 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2350.Name == "Cake Prince") or (v2350.Name == "Dough King")) then
							if (v2350:FindFirstChild("Humanoid") and v2350:FindFirstChild("HumanoidRootPart") and (v2350.Humanoid.Health > 0)) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2350.HumanoidRootPart.CanCollide = false;
									v2350.Humanoid.WalkSpeed = 0;
									topos(v2350.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.DoughtBoss or  not v2350.Parent or (v2350.Humanoid.Health <= 0)
							end
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
					topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
				else
					if (KillMob == 0) then
					end
					local v2602 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
					if  not string.find(v2602, "Cookie Crafter") then
						CakeBring = false;
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
					end
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
						CakeBring = false;
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v2045.Position).Magnitude > 3500) then
								BTP(v2045);
							else
								topos(v2045);
							end
						else
							topos(v2045);
						end
						if ((v2045.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest1", 1);
						end
					elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
							for v3061, v3062 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v3062:FindFirstChild("HumanoidRootPart") and v3062:FindFirstChild("Humanoid") and (v3062.Humanoid.Health > 0)) then
									if ((v3062.Name == "Cookie Crafter") or (v3062.Name == "Cake Guard") or (v3062.Name == "Baking Staff") or (v3062.Name == "Head Baker")) then
										if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Cookie Crafter") then
											repeat
												wait();
												EquipWeapon(_G.SelectWeapon);
												AutoHaki();
												PosMonCake = v3062.HumanoidRootPart.CFrame;
												topos(v3062.HumanoidRootPart.CFrame * Pos );
												v3062.HumanoidRootPart.CanCollide = false;
												v3062.Humanoid.WalkSpeed = 0;
												v3062.Head.CanCollide = false;
												CakeBring = true;
												PosMonDoughtOpenDoor = v3062.HumanoidRootPart.CFrame;
											until  not _G.DoughtBoss or  not v3062.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) or (v3062.Humanoid.Health <= 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (KillMob == 0)
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
v54:Toggle("Auto Spawn Cake Prince", false, function(v422)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", value);
end);
v54:Toggle("Auto Dough King", _G.doughking, function(v423)
	_G.doughking = v423;
	StopTween(_G.doughking);
end);
v54:Toggle("Auto Dough King Hop", _G.doughkingHop, function(v424)
	_G.doughkingHop = v424;
end);
spawn(function()
	while wait() do
		if (_G.doughking and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
					for v2351, v2352 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2352.Name == "Dough King") then
							if (v2352:FindFirstChild("Humanoid") and v2352:FindFirstChild("HumanoidRootPart") and (v2352.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2352.HumanoidRootPart.CanCollide = false;
									v2352.Humanoid.WalkSpeed = 0;
									v2352.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2352.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.doughking or  not v2352.Parent or (v2352.Humanoid.Health <= 0)
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
v54:Seperator("Observation");
v54:Toggle("Auto Farm Observation", _G.Observation, function(v425)
	_G.Observation = v425;
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
v54:Toggle("Auto Farm Observation Hop", _G.Observation_Hop, function(v426)
	_G.Observation_Hop = v426;
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
v54:Seperator("Boss");
local v80 = v54:Label("Status : Select Boss");
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) or game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss)) then
				v80:Set("Status : Spawn!");
			else
				v80:Set("Status : Boss Not Spawn");
			end
		end);
	end
end);
if World1 then
	v54:Dropdown("Select Boss", {
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
	}, function(v1775)
		_G.SelectBoss = v1775;
	end);
end
if World2 then
	v54:Dropdown("Select Boss", {
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
	}, function(v1776)
		_G.SelectBoss = v1776;
	end);
end
if World3 then
	v54:Dropdown("Select Boss", {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"rip_indra True Form",
		"Longma",
		"Soul Reaper",
		"Cake Queen"
	}, function(v1777)
		_G.SelectBoss = v1777;
	end);
end
v54:Toggle("Auto Farm Boss", _G.FarmBoss, function(v427)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
	_G.FarmBoss = v427;
	StopTween(_G.FarmBoss);
end);
spawn(function()
	while wait() do
		if (_G.FarmBoss and BypassTP) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
					for v2353, v2354 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2354.Name == _G.SelectBoss) then
							if (v2354:FindFirstChild("Humanoid") and v2354:FindFirstChild("HumanoidRootPart") and (v2354.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2354.HumanoidRootPart.CanCollide = false;
									v2354.Humanoid.WalkSpeed = 0;
									v2354.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v2354.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v2354.Parent or (v2354.Humanoid.Health <= 0)
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
					for v2355, v2356 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2356.Name == _G.SelectBoss) then
							if (v2356:FindFirstChild("Humanoid") and v2356:FindFirstChild("HumanoidRootPart") and (v2356.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2356.HumanoidRootPart.CanCollide = false;
									v2356.Humanoid.WalkSpeed = 0;
									v2356.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
									topos(v2356.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.FarmBoss or  not v2356.Parent or (v2356.Humanoid.Health <= 0)
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
v54:Toggle("Auto Farm All Boss", _G.AllBoss, function(v428)
	_G.AllBoss = v428;
	StopTween(_G.AllBoss);
end);
v54:Toggle("Auto Farm All Boss Hop", _G.AllBossHop, function(v429)
	_G.AllBossHop = v429;
end);
spawn(function()
	while wait() do
		if _G.AllBoss then
			pcall(function()
				for v2108, v2109 in pairs(game.ReplicatedStorage:GetChildren()) do
					if ((v2109.Name == "rip_indra") or (v2109.Name == "Ice Admiral") or (v2109.Name == "Saber Expert") or (v2109.Name == "The Saw") or (v2109.Name == "Greybeard") or (v2109.Name == "Mob Leader") or (v2109.Name == "The Gorilla King") or (v2109.Name == "Bobby") or (v2109.Name == "Yeti") or (v2109.Name == "Vice Admiral") or (v2109.Name == "Warden") or (v2109.Name == "Chief Warden") or (v2109.Name == "Swan") or (v2109.Name == "Magma Admiral") or (v2109.Name == "Fishman Lord") or (v2109.Name == "Wysper") or (v2109.Name == "Thunder God") or (v2109.Name == "Cyborg") or (v2109.Name == "Don Swan") or (v2109.Name == "Diamond") or (v2109.Name == "Jeremy") or (v2109.Name == "Fajita") or (v2109.Name == "Smoke Admiral") or (v2109.Name == "Awakened Ice Admiral") or (v2109.Name == "Tide Keeper") or (v2109.Name == "Order") or (v2109.Name == "Darkbeard") or (v2109.Name == "Stone") or (v2109.Name == "Island Empress") or (v2109.Name == "Kilo Admiral") or (v2109.Name == "Captain Elephant") or (v2109.Name == "Beautiful Pirate") or (v2109.Name == "Cake Queen") or (v2109.Name == "rip_indra True Form") or (v2109.Name == "Longma") or (v2109.Name == "Soul Reaper") or (v2109.Name == "Cake Prince") or (v2109.Name == "Dough King")) then
						if ((v2109.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000) then
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.SelectWeapon);
								v2109.Humanoid.WalkSpeed = 0;
								v2109.HumanoidRootPart.CanCollide = false;
								v2109.Head.CanCollide = false;
								v2109.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
								topos(v2109.HumanoidRootPart.CFrame * Pos );
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v2109.Humanoid.Health <= 0) or (_G.AllBoss == false) or  not v2109.Parent
						end
					elseif _G.AllBossHop then
						Hop();
					end
				end
			end);
		end
	end
end);
v55:Seperator("Settings Farming");
v55:Toggle("Bypass TP", BypassTP, function(v430)
	BypassTP = v430;
end);
v55:Seperator("Speed Tween");
local v81 = {
	"100",
	"150",
	"250",
	"300",
	"325",
	"350"
};
getgenv().TweenSpeed = "325";
v55:Dropdown("Speed Tween", v81, function(v431)
	getgenv().TweenSpeed = v431;
end);
v55:Button("Stop All Tween", function()
	topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	_G.Clip = false;
end);
v55:Toggle("Bring Mob", true, function(v433)
	_G.BringMonster = v433;
end);
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringMonster then
				CheckQuest();
				for v2110, v2111 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v2111.Name == Mon) and ((Mon == "Factory Staff [Lv. 800]") or (Mon == "Monkey [Lv. 14]") or (Mon == "Dragon Crew Warrior [Lv. 1575]") or (Mon == "Dragon Crew Archer [Lv. 1600]")) and v2111:FindFirstChild("Humanoid") and v2111:FindFirstChild("HumanoidRootPart") and (v2111.Humanoid.Health > 0) and ((v2111.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220)) then
						v2111.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v2111.HumanoidRootPart.CFrame = PosMon;
						v2111.Humanoid:ChangeState(14);
						v2111.HumanoidRootPart.CanCollide = false;
						v2111.Head.CanCollide = false;
						if v2111.Humanoid:FindFirstChild("Animator") then
							v2111.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v2111.Name == Mon) and v2111:FindFirstChild("Humanoid") and v2111:FindFirstChild("HumanoidRootPart") and (v2111.Humanoid.Health > 0) and ((v2111.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v2111.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v2111.HumanoidRootPart.CFrame = PosMon;
						v2111.Humanoid:ChangeState(14);
						v2111.HumanoidRootPart.CanCollide = false;
						v2111.Head.CanCollide = false;
						if v2111.Humanoid:FindFirstChild("Animator") then
							v2111.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
				end
			end
		end);
	end
end);
local v83 = {
	"Low",
	"Normal",
	"Super Bring"
};
_G.BringMode = "Low";
v55:Dropdown("Bring Mob Mode", v83, function(v434)
	_G.BringMode = v434;
end);
spawn(function()
	while wait(0.1) do
		if _G.BringMode then
			pcall(function()
				if (_G.BringMode == "Low") then
					_G.BringMode = 250;
				elseif (_G.BringMode == "Normal") then
					_G.BringMode = 300;
				elseif (_G.BringMode == "Super Bring") then
					_G.BringMode = 350;
				end
			end);
		end
	end
end);
v55:Toggle("Auto Haki", true, function(v435)
	_G.Haki = v435;
end);
spawn(function()
	while wait(0.1) do
		if _G.Haki then
			if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local v2112 = {
					[1] = "Buso"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2112));
			end
		end
	end
end);
v55:Toggle("Auto Click", false, function(v436)
	_G.Click = v436;
end);
v55:Toggle("Disabled Notifications", false, function(v437)
	_G.Remove_trct = v437;
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
v55:Toggle("Disabled Damage", true, function(v438)
	_G.KobenHeegeen = v438;
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
			for v2046, v2047 in pairs(game.Workspace['_WorldOrigin']:GetChildren()) do
				if ((v2047.Name == "CurvedRing") or (v2047.Name == "SlashHit") or (v2047.Name == "DamageCounter") or (v2047.Name == "SwordSlash") or (v2047.Name == "SlashTail") or (v2047.Name == "Sounds")) then
					v2047:Destroy();
				end
			end
		end
	end
end);
v55:Toggle("White Screen", _G.WhiteScreen, function(v439)
	_G.WhiteScreen = v439;
	if (_G.WhiteScreen == true) then
		game:GetService("RunService"):Set3dRenderingEnabled(false);
	elseif (_G.WhiteScreen == false) then
		game:GetService("RunService"):Set3dRenderingEnabled(true);
	end
end);
v55:Toggle("Invisible Monsters", _G.inv, function(v440)
	_G.inv = v440;
	while wait() do
		if _G.inv then
			pcall(function()
				for v2113, v2114 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v2114.ClassName == "MeshPart") then
						v2114.Transparency = 1;
					end
				end
				for v2115, v2116 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v2116.Name == "Head") then
						v2116.Transparency = 1;
					end
				end
				for v2117, v2118 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v2118.ClassName == "Accessory") then
						v2118.Handle.Transparency = 1;
					end
				end
				for v2119, v2120 in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
					if (v2120.ClassName == "Decal") then
						v2120.Transparency = 1;
					end
				end
			end);
		end
	end
end);
v55:Seperator("Setting Farm Mastery");
v55:Toggle("Skill Z", true, function(v441)
	_G.SkillZ = v441;
end);
v55:Toggle("Skill X", true, function(v442)
	_G.SkillX = v442;
end);
v55:Toggle("Skill C", true, function(v443)
	_G.SkillC = v443;
end);
v55:Toggle("Skill V", true, function(v444)
	_G.SkillV = v444;
end);
if (World1 or World2) then
	v56:Seperator("World");
end
if World1 then
	v56:Toggle("Auto Second Sea", _G.SecondSea, function(v1778)
		_G.SecondSea = v1778;
		StopTween(_G.SecondSea);
	end);
	spawn(function()
		while wait() do
			if _G.SecondSea then
				pcall(function()
					local v2180 = game:GetService("Players").LocalPlayer.Data.Level.Value;
					if ((v2180 >= 700) and World1) then
						if ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
							local v2813 = CFrame.new(4849.29883, 5.65138149, 719.611877);
							repeat
								topos(v2813);
								wait();
							until ((v2813.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.SecondSea == false)
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
								for v3065, v3066 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v3066.Name == "Ice Admiral") then
										if ( not v3066.Humanoid.Health <= 0) then
											if (v3066:FindFirstChild("Humanoid") and v3066:FindFirstChild("HumanoidRootPart") and (v3066.Humanoid.Health > 0)) then
												OldCFrameSecond = v3066.HumanoidRootPart.CFrame;
												repeat
													task.wait();
													AutoHaki();
													EquipWeapon(_G.SelectWeapon);
													v3066.HumanoidRootPart.CanCollide = false;
													v3066.Humanoid.WalkSpeed = 0;
													v3066.Head.CanCollide = false;
													v3066.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
													v3066.HumanoidRootPart.CFrame = OldCFrameSecond;
													topos(v3066.HumanoidRootPart.CFrame * Pos );
													sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
												until  not _G.SecondSea or  not v3066.Parent or (v3066.Humanoid.Health <= 0)
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
	v56:Toggle("Auto Third Sea", _G.ThirdSea, function(v1779)
		_G.ThirdSea = v1779;
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
								for v2944, v2945 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if (v2945.Name == "rip_indra") then
										OldCFrameThird = v2945.HumanoidRootPart.CFrame;
										repeat
											task.wait();
											AutoHaki();
											EquipWeapon(_G.SelectWeapon);
											topos(v2945.HumanoidRootPart.CFrame * Pos );
											v2945.HumanoidRootPart.CFrame = OldCFrameThird;
											v2945.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											v2945.HumanoidRootPart.CanCollide = false;
											v2945.Humanoid.WalkSpeed = 0;
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										until (_G.ThirdSea == false) or (v2945.Humanoid.Health <= 0) or  not v2945.Parent
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
	v56:Toggle("Auto Farm Factory", _G.Factory, function(v1780)
		_G.Factory = v1780;
		StopTween(_G.Factory);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Factory then
					if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
						for v2646, v2647 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v2647.Name == "Core") and (v2647.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									topos(CFrame.new(448.46756, 199.356781, -441.389252));
								until (v2647.Humanoid.Health <= 0) or (_G.Factory == false)
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
v56:Seperator("Fighting Style");
v56:Toggle("Auto Superhuman", _G.Superhuman, function(v445)
	_G.Superhuman = v445;
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
v56:Toggle("Auto DeathStep", _G.DeathStep, function(v446)
	_G.DeathStep = v446;
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
v56:Toggle("Auto Sharkman Karate", _G.Sharkman, function(v447)
	_G.Sharkman = v447;
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
							for v2946, v2947 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2947.Name == Ms) then
									OldCFrameShark = v2947.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2947.Head.CanCollide = false;
										v2947.Humanoid.WalkSpeed = 0;
										v2947.HumanoidRootPart.CanCollide = false;
										v2947.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
										v2947.HumanoidRootPart.CFrame = OldCFrameShark;
										topos(v2947.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
										sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									until  not v2947.Parent or (v2947.Humanoid.Health <= 0) or (_G.Sharkman == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
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
v56:Toggle("Auto Electric Claw", _G.ElectricClaw, function(v448)
	_G.ElectricClaw = v448;
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
v56:Toggle("Auto Dragon Talon", _G.DragonTalon, function(v449)
	_G.DragonTalon = v449;
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
v56:Toggle("Auto GodHuman", _G.God_Human, function(v450)
	_G.God_Human = v450;
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
v56:Seperator(" Materials ");
if World2 then
	v56:Toggle("Auto Farm Radioactive Material", false, function(v1781)
		Radioactive = v1781;
		StopTween(Radioactive);
	end);
	local v869 = CFrame.new( -507.7895202636719, 72.99479675292969, -126.45632934570312);
	spawn(function()
		while wait() do
			if (Radioactive and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Factory Staff") then
						for v2648, v2649 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2649.Name == "Factory Staff") then
								if (v2649:FindFirstChild("Humanoid") and v2649:FindFirstChild("HumanoidRootPart") and (v2649.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2649.HumanoidRootPart.CanCollide = false;
										v2649.Humanoid.WalkSpeed = 0;
										v2649.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2649.HumanoidRootPart.CFrame;
										topos(v2649.HumanoidRootPart.CFrame * Pos );
									until  not Radioactive or  not v2649.Parent or (v2649.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v869.Position).Magnitude > 3500) then
								BTP(v869);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v869.Position).Magnitude < 3500) then
								topos(v869);
							end
						else
							topos(v869);
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
	v56:Toggle("Auto Farm Mystic Droplet", false, function(v1782)
		_G.Makori_gay = v1782;
		StopTween(_G.Makori_gay);
	end);
	local v870 = CFrame.new( -3352.9013671875, 285.01556396484375, -10534.841796875);
	spawn(function()
		while wait() do
			if (_G.Makori_gay and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
						for v2650, v2651 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2651.Name == "Water Fighter") then
								if (v2651:FindFirstChild("Humanoid") and v2651:FindFirstChild("HumanoidRootPart") and (v2651.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2651.HumanoidRootPart.CanCollide = false;
										v2651.Humanoid.WalkSpeed = 0;
										v2651.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2651.HumanoidRootPart.CFrame;
										topos(v2651.HumanoidRootPart.CFrame * Pos );
									until  not _G.Makori_gay or  not v2651.Parent or (v2651.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v870.Position).Magnitude > 3500) then
								BTP(v870);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v870.Position).Magnitude < 3500) then
								topos(v870);
							end
						else
							topos(v870);
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
	v56:Toggle("Auto Farm Magma Ore", _G.Makori_gay, function(v1783)
		_G.Umm = v1783;
		StopTween(_G.Umm);
	end);
	local v871 = CFrame.new( -5850.2802734375, 77.28675079345703, 8848.6748046875);
	spawn(function()
		while wait() do
			if (_G.Umm and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Military Spy") then
						for v2652, v2653 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2653.Name == "Military Spy") then
								if (v2653:FindFirstChild("Humanoid") and v2653:FindFirstChild("HumanoidRootPart") and (v2653.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2653.HumanoidRootPart.CanCollide = false;
										v2653.Humanoid.WalkSpeed = 0;
										v2653.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2653.HumanoidRootPart.CFrame;
										topos(v2653.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v2653.Parent or (v2653.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v871.Position).Magnitude > 3500) then
								BTP(v871);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v871.Position).Magnitude < 3500) then
								topos(v871);
							end
						else
							topos(v871);
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
	local v872 = CFrame.new( -5234.60595703125, 51.953372955322266, -4732.27880859375);
	spawn(function()
		while wait() do
			if (_G.Umm and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
						for v2654, v2655 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2655.Name == "Lava Pirate") then
								if (v2655:FindFirstChild("Humanoid") and v2655:FindFirstChild("HumanoidRootPart") and (v2655.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2655.HumanoidRootPart.CanCollide = false;
										v2655.Humanoid.WalkSpeed = 0;
										v2655.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2655.HumanoidRootPart.CFrame;
										topos(v2655.HumanoidRootPart.CFrame * Pos );
									until  not _G.Umm or  not v2655.Parent or (v2655.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v872.Position).Magnitude > 3500) then
								BTP(v872);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v872.Position).Magnitude < 3500) then
								topos(v872);
							end
						else
							topos(v872);
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
	v56:Toggle("Auto Farm Angel Wings", _G.Makori_gay, function(v1784)
		_G.Wing = v1784;
		StopTween(_G.Wing);
	end);
	local v873 = CFrame.new( -7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait() do
			if (_G.Wing and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier") then
						for v2656, v2657 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2657.Name == "Royal Soldier") then
								if (v2657:FindFirstChild("Humanoid") and v2657:FindFirstChild("HumanoidRootPart") and (v2657.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2657.HumanoidRootPart.CanCollide = false;
										v2657.Humanoid.WalkSpeed = 0;
										v2657.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2657.HumanoidRootPart.CFrame;
										topos(v2657.HumanoidRootPart.CFrame * Pos );
									until  not _G.Wing or  not v2657.Parent or (v2657.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v873.Position).Magnitude > 3500) then
								BTP(v873);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v873.Position).Magnitude < 3500) then
								topos(v873);
							end
						else
							topos(v873);
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
	v56:Toggle("Auto Farm Leather", _G.Makori_gay, function(v1785)
		_G.Leather = v1785;
		StopTween(_G.Leather);
	end);
	local v874 = CFrame.new( -1211.8792724609375, 4.787090301513672, 3916.83056640625);
	spawn(function()
		while wait() do
			if (_G.Leather and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate") then
						for v2658, v2659 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2659.Name == "Pirate") then
								if (v2659:FindFirstChild("Humanoid") and v2659:FindFirstChild("HumanoidRootPart") and (v2659.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2659.HumanoidRootPart.CanCollide = false;
										v2659.Humanoid.WalkSpeed = 0;
										v2659.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2659.HumanoidRootPart.CFrame;
										topos(v2659.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2659.Parent or (v2659.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v874.Position).Magnitude > 3500) then
								BTP(v874);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v874.Position).Magnitude < 3500) then
								topos(v874);
							end
						else
							topos(v874);
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
	local v875 = CFrame.new( -2010.5059814453125, 73.00115966796875, -3326.620849609375);
	spawn(function()
		while wait() do
			if (_G.Leather and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain") then
						for v2660, v2661 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2661.Name == "Marine Captain") then
								if (v2661:FindFirstChild("Humanoid") and v2661:FindFirstChild("HumanoidRootPart") and (v2661.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2661.HumanoidRootPart.CanCollide = false;
										v2661.Humanoid.WalkSpeed = 0;
										v2661.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2661.HumanoidRootPart.CFrame;
										topos(v2661.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2661.Parent or (v2661.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v875.Position).Magnitude > 3500) then
								BTP(v875);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v875.Position).Magnitude < 3500) then
								topos(v875);
							end
						else
							topos(v875);
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
	local v876 = CFrame.new( -11975.78515625, 331.7734069824219, -10620.0302734375);
	spawn(function()
		while wait() do
			if (_G.Leather and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Jungle Pirate") then
						for v2662, v2663 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2663.Name == "Jungle Pirate") then
								if (v2663:FindFirstChild("Humanoid") and v2663:FindFirstChild("HumanoidRootPart") and (v2663.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2663.HumanoidRootPart.CanCollide = false;
										v2663.Humanoid.WalkSpeed = 0;
										v2663.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2663.HumanoidRootPart.CFrame;
										topos(v2663.HumanoidRootPart.CFrame * Pos );
									until  not _G.Leather or  not v2663.Parent or (v2663.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v876.Position).Magnitude > 3500) then
								BTP(v876);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v876.Position).Magnitude < 3500) then
								topos(v876);
							end
						else
							topos(v876);
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
	v56:Toggle("Auto Farm Scrap Metal", false, function(v1786)
		Scrap = v1786;
		StopTween(Scrap);
	end);
	local v877 = CFrame.new( -1132.4202880859375, 14.844913482666016, 4293.30517578125);
	spawn(function()
		while wait() do
			if (Scrap and World1) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Brute") then
						for v2664, v2665 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2665.Name == "Brute") then
								if (v2665:FindFirstChild("Humanoid") and v2665:FindFirstChild("HumanoidRootPart") and (v2665.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2665.HumanoidRootPart.CanCollide = false;
										v2665.Humanoid.WalkSpeed = 0;
										v2665.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2665.HumanoidRootPart.CFrame;
										topos(v2665.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2665.Parent or (v2665.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v877.Position).Magnitude > 3500) then
								BTP(v877);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v877.Position).Magnitude < 3500) then
								topos(v877);
							end
						else
							topos(v877);
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
	local v878 = CFrame.new( -972.307373046875, 73.04473876953125, 1419.2901611328125);
	spawn(function()
		while wait() do
			if (Scrap and World2) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mercenary") then
						for v2666, v2667 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2667.Name == "Mercenary") then
								if (v2667:FindFirstChild("Humanoid") and v2667:FindFirstChild("HumanoidRootPart") and (v2667.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2667.HumanoidRootPart.CanCollide = false;
										v2667.Humanoid.WalkSpeed = 0;
										v2667.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2667.HumanoidRootPart.CFrame;
										topos(v2667.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2667.Parent or (v2667.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v878.Position).Magnitude > 3500) then
								BTP(v878);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v878.Position).Magnitude < 3500) then
								topos(v878);
							end
						else
							topos(v878);
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
	local v879 = CFrame.new( -289.6311950683594, 43.8282470703125, 5583.66357421875);
	spawn(function()
		while wait() do
			if (Scrap and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pirate Millionaire") then
						for v2668, v2669 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2669.Name == "Pirate Millionaire") then
								if (v2669:FindFirstChild("Humanoid") and v2669:FindFirstChild("HumanoidRootPart") and (v2669.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2669.HumanoidRootPart.CanCollide = false;
										v2669.Humanoid.WalkSpeed = 0;
										v2669.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2669.HumanoidRootPart.CFrame;
										topos(v2669.HumanoidRootPart.CFrame * Pos );
									until  not Scrap or  not v2669.Parent or (v2669.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v879.Position).Magnitude > 3500) then
								BTP(v879);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v879.Position).Magnitude < 3500) then
								topos(v879);
							end
						else
							topos(v879);
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
	v56:Toggle("Auto Farm Conjured Cocoa", false, function(v1787)
		Cocoafarm = v1787;
		StopTween(Cocoafarm);
	end);
	local v880 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375);
	spawn(function()
		while wait() do
			if (Cocoafarm and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") then
						for v2670, v2671 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2671.Name == "Chocolate Bar Battler") then
								if (v2671:FindFirstChild("Humanoid") and v2671:FindFirstChild("HumanoidRootPart") and (v2671.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2671.HumanoidRootPart.CanCollide = false;
										v2671.Humanoid.WalkSpeed = 0;
										v2671.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2671.HumanoidRootPart.CFrame;
										topos(v2671.HumanoidRootPart.CFrame * Pos );
									until  not Cocoafarm or  not v2671.Parent or (v2671.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v880.Position).Magnitude > 3500) then
								BTP(v880);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v880.Position).Magnitude < 3500) then
								topos(v880);
							end
						else
							topos(v880);
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
	v56:Toggle("Auto Farm Dragon Scale", false, function(v1788)
		Dragon_Scale = v1788;
		StopTween(Dragon_Scale);
	end);
	local v881 = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125);
	spawn(function()
		while wait() do
			if (Dragon_Scale and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior") then
						for v2672, v2673 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2673.Name == "Dragon Crew Warrior") then
								if (v2673:FindFirstChild("Humanoid") and v2673:FindFirstChild("HumanoidRootPart") and (v2673.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2673.HumanoidRootPart.CanCollide = false;
										v2673.Humanoid.WalkSpeed = 0;
										v2673.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2673.HumanoidRootPart.CFrame;
										topos(v2673.HumanoidRootPart.CFrame * Pos );
									until  not Dragon_Scale or  not v2673.Parent or (v2673.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v881.Position).Magnitude > 3500) then
								BTP(v881);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v881.Position).Magnitude < 3500) then
								topos(v881);
							end
						else
							topos(v881);
						end
						UnEquipWeapon(_G.SelectWeapon);
						topos(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125));
						if game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior") then
							topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dragon Crew Warrior").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
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
	v56:Toggle("Auto Farm Gunpowder", false, function(v1789)
		Gunpowder = v1789;
		StopTween(Gunpowder);
	end);
	local v882 = CFrame.new( -379.6134338378906, 73.84449768066406, 5928.5263671875);
	spawn(function()
		while wait() do
			if (Gunpowder and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Pistol Billionaire") then
						for v2674, v2675 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2675.Name == "Pistol Billionaire") then
								if (v2675:FindFirstChild("Humanoid") and v2675:FindFirstChild("HumanoidRootPart") and (v2675.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2675.HumanoidRootPart.CanCollide = false;
										v2675.Humanoid.WalkSpeed = 0;
										v2675.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2675.HumanoidRootPart.CFrame;
										topos(v2675.HumanoidRootPart.CFrame * Pos );
									until  not Gunpowder or  not v2675.Parent or (v2675.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v882.Position).Magnitude > 3500) then
								BTP(v882);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v882.Position).Magnitude < 3500) then
								topos(v882);
							end
						else
							topos(v882);
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
	v56:Toggle("Auto Farm Fish Tail World 3", false, function(v1790)
		Fish = v1790;
		StopTween(Fish);
	end);
	local v883 = CFrame.new( -10961.0126953125, 331.7977600097656, -8914.29296875);
	spawn(function()
		while wait() do
			if (Fish and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain") then
						for v2676, v2677 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2677.Name == "Fishman Captain") then
								if (v2677:FindFirstChild("Humanoid") and v2677:FindFirstChild("HumanoidRootPart") and (v2677.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2677.HumanoidRootPart.CanCollide = false;
										v2677.Humanoid.WalkSpeed = 0;
										v2677.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2677.HumanoidRootPart.CFrame;
										topos(v2677.HumanoidRootPart.CFrame * Pos );
									until  not Fish or  not v2677.Parent or (v2677.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v883.Position).Magnitude > 3500) then
								BTP(v883);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v883.Position).Magnitude < 3500) then
								topos(v883);
							end
						else
							topos(v883);
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
	v56:Toggle("Auto Farm Mini Tusk", false, function(v1791)
		MiniHee = v1791;
		StopTween(MiniHee);
	end);
	local v884 = CFrame.new( -13516.0458984375, 469.8182373046875, -6899.16064453125);
	spawn(function()
		while wait() do
			if (MiniHee and World3) then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
						for v2678, v2679 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2679.Name == "Mythological Pirate") then
								if (v2679:FindFirstChild("Humanoid") and v2679:FindFirstChild("HumanoidRootPart") and (v2679.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.SelectWeapon);
										v2679.HumanoidRootPart.CanCollide = false;
										v2679.Humanoid.WalkSpeed = 0;
										v2679.Head.CanCollide = false;
										MakoriGayMag = true;
										PosGay = v2679.HumanoidRootPart.CFrame;
										topos(v2679.HumanoidRootPart.CFrame * Pos );
									until  not MiniHee or  not v2679.Parent or (v2679.Humanoid.Health <= 0)
									MakoriGayMag = false;
								end
							end
						end
					else
						if BypassTP then
							if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v884.Position).Magnitude > 3500) then
								BTP(v884);
							elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v884.Position).Magnitude < 3500) then
								topos(v884);
							end
						else
							topos(v884);
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
v56:Seperator("Advance Dungeon");
v56:Toggle("Auto Phoenix Raid", _G.AdvanceDungeon, function(v451)
	_G.AdvanceDungeon = v451;
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
v56:Label("Sea 1");
v56:Seperator("Saw");
v56:Toggle("Auto Sharks saw", _G.doughking, function(v452)
	_G.saw = v452;
	StopTween(_G.saw);
end);
v56:Toggle("Auto Shark Saw Hop", _G.doughkingHop, function(v453)
	_G.sawhop = v453;
end);
local v84 = CFrame.new( -690.33081054688, 15.09425163269, 1582.2380371094);
spawn(function()
	while wait() do
		if (_G.saw and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
					for v2365, v2366 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2366.Name == "The Saw") then
							if (v2366:FindFirstChild("Humanoid") and v2366:FindFirstChild("HumanoidRootPart") and (v2366.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2366.HumanoidRootPart.CanCollide = false;
									v2366.Humanoid.WalkSpeed = 0;
									v2366.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2366.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.saw or  not v2366.Parent or (v2366.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v84.Position).Magnitude > 3500) then
							BTP(v84);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v84.Position).Magnitude < 3500) then
							topos(v84);
						end
					else
						topos(v84);
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
v56:Seperator(" Waden Sword ");
v56:Toggle("Auto Waden Sword", _G.waden, function(v454)
	_G.waden = v454;
	StopTween(_G.waden);
end);
v56:Toggle("Auto Waden Sword Hop", _G.wadenhop, function(v455)
	_G.wadenhop = v455;
end);
local v85 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
spawn(function()
	while wait() do
		if (_G.waden and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
					for v2367, v2368 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2368.Name == "Chief Warden") then
							if (v2368:FindFirstChild("Humanoid") and v2368:FindFirstChild("HumanoidRootPart") and (v2368.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2368.HumanoidRootPart.CanCollide = false;
									v2368.Humanoid.WalkSpeed = 0;
									v2368.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2368.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.waden or  not v2368.Parent or (v2368.Humanoid.Health <= 0)
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
v56:Seperator("Greybeard");
v56:Toggle("Auto Greybeard", _G.doughking, function(v456)
	_G.gay = v456;
	StopTween(_G.gay);
end);
v56:Toggle("Auto Greybeard Hop", _G.doughkingHop, function(v457)
	_G.gayhop = v457;
end);
local v86 = CFrame.new( -5023.38330078125, 28.65203285217285, 4332.3818359375);
spawn(function()
	while wait() do
		if (_G.gay and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Greybeard") then
					for v2369, v2370 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2370.Name == "Greybeard") then
							if (v2370:FindFirstChild("Humanoid") and v2370:FindFirstChild("HumanoidRootPart") and (v2370.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2370.HumanoidRootPart.CanCollide = false;
									v2370.Humanoid.WalkSpeed = 0;
									v2370.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2370.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.gay or  not v2370.Parent or (v2370.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v86.Position).Magnitude > 3500) then
							BTP(v86);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v86.Position).Magnitude < 3500) then
							topos(v86);
						end
					else
						topos(v86);
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
v56:Seperator("Saber");
v56:Toggle("Auto Saber", _G.Saber, function(v458)
	_G.Saber = v458;
	StopTween(_G.Saber);
end);
v56:Toggle("Auto Saber Hop", _G.SaberHop, function(v459)
	_G.SaberHop = v459;
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
							for v3137, v3138 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v3138.Name == "Mob Leader") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
										if (v3138:FindFirstChild("Humanoid") and v3138:FindFirstChild("HumanoidRootPart") and (v3138.Humanoid.Health > 0)) then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												v3138.HumanoidRootPart.CanCollide = false;
												v3138.Humanoid.WalkSpeed = 0;
												v3138.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
												topos(v3138.HumanoidRootPart.CFrame * Pos );
												sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											until (v3138.Humanoid.Health <= 0) or  not _G.Saber
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
					for v2680, v2681 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2681:FindFirstChild("Humanoid") and v2681:FindFirstChild("HumanoidRootPart") and (v2681.Humanoid.Health > 0)) then
							if (v2681.Name == "Saber Expert") then
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2681.HumanoidRootPart.CFrame * Pos );
									v2681.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									v2681.HumanoidRootPart.Transparency = 1;
									v2681.Humanoid.JumpPower = 0;
									v2681.Humanoid.WalkSpeed = 0;
									v2681.HumanoidRootPart.CanCollide = false;
									FarmPos = v2681.HumanoidRootPart.CFrame;
									MonFarm = v2681.Name;
								until (v2681.Humanoid.Health <= 0) or  not _G.Saber
								if (v2681.Humanoid.Health <= 0) then
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
v56:Seperator("Pole");
v56:Toggle("Auto Pole v1", _G.doughking, function(v460)
	_G.pole = v460;
	StopTween(_G.pole);
end);
v56:Toggle("Auto Pole v1 Hop", _G.doughkingHop, function(v461)
	_G.polehop = v461;
end);
local v87 = CFrame.new( -7748.0185546875, 5606.80615234375, -2305.898681640625);
spawn(function()
	while wait() do
		if (_G.pole and World1) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
					for v2371, v2372 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2372.Name == "Thunder God") then
							if (v2372:FindFirstChild("Humanoid") and v2372:FindFirstChild("HumanoidRootPart") and (v2372.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2372.HumanoidRootPart.CanCollide = false;
									v2372.Humanoid.WalkSpeed = 0;
									v2372.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2372.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.pole or  not v2372.Parent or (v2372.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v87.Position).Magnitude > 3500) then
							BTP(v87);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v87.Position).Magnitude < 3500) then
							topos(v87);
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
v56:Label("Sea 2");
v56:Seperator("Legendary Sword");
v56:Toggle("Auto Legendary Sword", _G.BuyLegendarySword, function(v462)
	_G.BuyLegendarySword = v462;
end);
spawn(function()
	while wait() do
		if _G.BuyLegendarySword then
			pcall(function()
				local v2048 = {
					[1] = "LegendarySwordDealer",
					[2] = "1"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2048));
				local v2048 = {
					[1] = "LegendarySwordDealer",
					[2] = "2"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2048));
				local v2048 = {
					[1] = "LegendarySwordDealer",
					[2] = "3"
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2048));
				if (_G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2) then
					wait(10);
					Hop();
				end
			end);
		end
	end
end);
v56:Toggle("Auto Legendary Sword Hop", _G.BuyLegendarySword_Hop, function(v463)
	_G.BuyLegendarySword_Hop = v463;
end);
v56:Seperator("Enchancement Colour");
local v88 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1");
v56:Toggle("Auto Enchancement Colour", _G.BuyEnchancementColour, function(v464)
	_G.BuyEnchancementColour = v464;
end);
v56:Toggle("Auto Enchancement Hop", _G.BuyEnchancementColour_Hop, function(v465)
	_G.BuyEnchancementColour_Hop = v465;
end);
spawn(function()
	while wait() do
		if _G.BuyEnchancementColour then
			local v1938 = {
				[1] = "ColorsDealer",
				[2] = "2"
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1938));
			if (_G.BuyEnchancementColour_Hop and _G.BuyEnchancementColour and  not World1) then
				wait(10);
				Hop();
			end
		end
	end
end);
v56:Seperator("Bartlio");
v56:Toggle("Auto Bartlio", _G.Bartilo, function(v466)
	_G.Bartilo = v466;
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.Bartilo then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
							Ms = "Swan Pirate";
							for v2839, v2840 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2840.Name == Ms) then
									pcall(function()
										repeat
											task.wait();
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2840.HumanoidRootPart.Transparency = 1;
											v2840.HumanoidRootPart.CanCollide = false;
											v2840.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2840.HumanoidRootPart.CFrame * Pos );
											PosMonBarto = v2840.HumanoidRootPart.CFrame;
											AutoBartiloBring = true;
										until  not v2840.Parent or (v2840.Humanoid.Health <= 0) or (_G.Bartilo == false) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
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
						for v2841, v2842 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2842.Name == Ms) then
								OldCFrameBartlio = v2842.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									v2842.HumanoidRootPart.Transparency = 1;
									v2842.HumanoidRootPart.CanCollide = false;
									v2842.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v2842.HumanoidRootPart.CFrame = OldCFrameBartlio;
									topos(v2842.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until  not v2842.Parent or (v2842.Humanoid.Health <= 0) or (_G.Bartilo == false)
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
v56:Seperator("Swan Glasses");
v56:Toggle("Auto Swan Glasses", _G.FarmSwanGlasses, function(v467)
	_G.FarmSwanGlasses = v467;
	StopTween(_G.FarmSwanGlasses);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.FarmSwanGlasses then
				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
					for v2373, v2374 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2374.Name == "Don Swan") and (v2374.Humanoid.Health > 0) and v2374:IsA("Model") and v2374:FindFirstChild("Humanoid") and v2374:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2374.HumanoidRootPart.CanCollide = false;
									v2374.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2374.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								end);
							until (_G.FarmSwanGlasses == false) or (v2374.Humanoid.Health <= 0)
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
v56:Toggle("Auto Swan Glasses Hop", _G.FarmSwanGlasses_Hop, function(v468)
	_G.FarmSwanGlasses_Hop = v468;
end);
v56:Toggle("Auto Evo Race (V2)", _G.EvoRace, function(v469)
	_G.EvoRace = v469;
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
									for v3144, v3145 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if (v3145.Name == "Zombie") then
											repeat
												task.wait();
												AutoHaki();
												EquipWeapon(_G.SelectWeapon);
												topos(v3145.HumanoidRootPart.CFrame * Pos );
												v3145.HumanoidRootPart.CanCollide = false;
												v3145.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
												PosMonEvo = v3145.HumanoidRootPart.CFrame;
												StartEvoMagnet = true;
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or  not v3145.Parent or (v3145.Humanoid.Health <= 0) or (_G.EvoRace == false)
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
v56:Seperator("Ectoplasm");
v56:Toggle("Auto Farm Ectoplasm", _G.Ectoplasm, function(v470)
	_G.Ectoplasm = v470;
	StopTween(_G.Ectoplasm);
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Ectoplasm then
				if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then
					for v2375, v2376 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2376.Name == "Ship Deckhand") or (v2376.Name == "Ship Engineer") or (v2376.Name == "Ship Steward") or (v2376.Name == "Ship Officer")) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								if string.find(v2376.Name, "Ship") then
									v2376.HumanoidRootPart.CanCollide = false;
									v2376.Head.CanCollide = false;
									v2376.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2376.HumanoidRootPart.CFrame * Pos );
									EctoplasmMon = v2376.HumanoidRootPart.CFrame;
									StartEctoplasmMagnet = true;
								else
									StartEctoplasmMagnet = false;
									topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
								end
							until (_G.Ectoplasm == false) or  not v2376.Parent or (v2376.Humanoid.Health <= 0)
						end
					end
				else
					topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					StartEctoplasmMagnet = false;
					local v2181 = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
					if (v2181 > 18000) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
					end
					topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
				end
			end
		end
	end);
end);
v56:Seperator("Rengoku");
v56:Toggle("Auto Rengoku", _G.Rengoku, function(v471)
	_G.Rengoku = v471;
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
					for v2682, v2683 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (((v2683.Name == "Snow Lurker") or (v2683.Name == "Arctic Warrior")) and (v2683.Humanoid.Health > 0)) then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v2683.HumanoidRootPart.CanCollide = false;
								v2683.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								RengokuMon = v2683.HumanoidRootPart.CFrame;
								topos(v2683.HumanoidRootPart.CFrame * Pos );
								StartRengokuMagnet = true;
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (_G.Rengoku == false) or  not v2683.Parent or (v2683.Humanoid.Health <= 0)
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
v56:Seperator("Trident");
v56:Toggle("Auto Dragon Trident", _G.Dragon_Trident, function(v472)
	_G.Dragon_Trident = v472;
	StopTween(_G.Dragon_Trident);
end);
v56:Toggle("Auto Dragon Trident Hop", _G.Dragon_Trident_Hop, function(v473)
	_G.Dragon_Trident_Hop = v473;
end);
local v89 = CFrame.new( -3914.830322265625, 123.29389190673828, -11516.8642578125);
spawn(function()
	while wait() do
		if (_G.Dragon_Trident and World2) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
					for v2377, v2378 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2378.Name == "Tide Keeper") then
							if (v2378:FindFirstChild("Humanoid") and v2378:FindFirstChild("HumanoidRootPart") and (v2378.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2378.HumanoidRootPart.CanCollide = false;
									v2378.Humanoid.WalkSpeed = 0;
									v2378.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.Dragon_Trident or  not v2378.Parent or (v2378.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v89.Position).Magnitude > 3500) then
							BTP(v89);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v89.Position).Magnitude < 3500) then
							topos(v89);
						end
					else
						topos(v89);
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
v56:Label("Sea 3");
v56:Seperator("Rip Indra");
v56:Toggle("Auto Rip_Indra True", _G.DarkDagger, function(v474)
	_G.DarkDagger = v474;
	StopTween(_G.DarkDagger);
end);
local v90 = CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781);
spawn(function()
	pcall(function()
		while wait() do
			if _G.DarkDagger then
				if (game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")) then
					for v2379, v2380 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if ((v2380.Name == ("rip_indra True Form" or (v2380.Name == "rip_indra"))) and (v2380.Humanoid.Health > 0) and v2380:IsA("Model") and v2380:FindFirstChild("Humanoid") and v2380:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								pcall(function()
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2380.HumanoidRootPart.CanCollide = false;
									v2380.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2380.HumanoidRootPart.CFrame * Pos );
								end);
							until (_G.DarkDagger == false) or (v2380.Humanoid.Health <= 0)
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v90.Position).Magnitude > 3500) then
							BTP(v90);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v90.Position).Magnitude < 3500) then
							topos(v90);
						end
					else
						topos(v90);
					end
					UnEquipWeapon(_G.SelectWeapon);
					topos(CFrame.new( -5344.822265625, 423.98541259766, -2725.0930175781));
				end
			end
		end
	end);
end);
v56:Toggle("Auto Rip_Indra True Hop", _G.DarkDagger_Hop, function(v475)
	_G.DarkDagger_Hop = v475;
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
v56:Toggle("Auto Press Haki Button", _G.Ob_Color, function(v476)
	Open_Color_Haki = v476;
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
		for v1792, v1793 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if (v1793:IsA("Tool") and  not ((v1793.Name == "Summon Sea Beast") or (v1793.Name == "Water Body") or (v1793.Name == "Awakening"))) then
				local v2049 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1793.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v2049);
				wait(1);
			end
		end
	end);
end
v56:Seperator("Yama");
v56:Toggle("Auto Yama", _G.Yama, function(v477)
	_G.Yama = v477;
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
v56:Seperator("Musketeer");
v56:Toggle("Auto Musketeer Hat", _G.MusketeerHat, function(v478)
	_G.MusketeerHat = v478;
	StopTween(_G.MusketeerHat);
end);
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.MusketeerHat then
				if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false)) then
					if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
							for v2847, v2848 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2848.Name == "Forest Pirate") then
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2848.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2848.HumanoidRootPart.CFrame * Pos );
											v2848.HumanoidRootPart.CanCollide = false;
											MusketeerHatMon = v2848.HumanoidRootPart.CFrame;
											StartMagnetMusketeerhat = true;
										end);
									until (_G.MusketeerHat == false) or  not v2848.Parent or (v2848.Humanoid.Health <= 0) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
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
							for v2949, v2950 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (v2950.Name == "Captain Elephant") then
									OldCFrameElephant = v2950.HumanoidRootPart.CFrame;
									repeat
										task.wait();
										pcall(function()
											EquipWeapon(_G.SelectWeapon);
											AutoHaki();
											v2950.HumanoidRootPart.CanCollide = false;
											v2950.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
											topos(v2950.HumanoidRootPart.CFrame * Pos );
											v2950.HumanoidRootPart.CanCollide = false;
											v2950.HumanoidRootPart.CFrame = OldCFrameElephant;
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
										end);
									until (_G.MusketeerHat == false) or (v2950.Humanoid.Health <= 0) or  not v2950.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
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
v56:Seperator("Twin Hook");
v56:Toggle("Auto Twin Hook", _G.TwinHook, function(v479)
	_G.TwinHook = v479;
	StopTween(_G.TwinHook);
end);
v56:Toggle("Auto Twin Hook Hop", _G.TwinHook_Hop, function(v480)
	_G.TwinHook_Hop = v480;
end);
local v91 = CFrame.new( -13348.0654296875, 405.8904113769531, -8570.62890625);
spawn(function()
	while wait() do
		if (_G.TwinHook and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
					for v2381, v2382 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2382.Name == "Captain Elephant") then
							if (v2382:FindFirstChild("Humanoid") and v2382:FindFirstChild("HumanoidRootPart") and (v2382.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2382.HumanoidRootPart.CanCollide = false;
									v2382.Humanoid.WalkSpeed = 0;
									v2382.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2382.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.TwinHook or  not v2382.Parent or (v2382.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v91.Position).Magnitude > 3500) then
							BTP(v91);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v91.Position).Magnitude < 3500) then
							topos(v91);
						end
					else
						topos(v91);
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
v56:Seperator("Haki");
v56:Toggle("Auto Rainbow Haki", _G.Rainbow_Haki, function(v481)
	_G.Rainbow_Haki = v481;
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
						for v2849, v2850 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2850.Name == "Stone") then
								OldCFrameRainbow = v2850.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2850.HumanoidRootPart.CFrame * Pos );
									v2850.HumanoidRootPart.CanCollide = false;
									v2850.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v2850.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2850.Humanoid.Health <= 0) or  not v2850.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new( -1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.000020325184, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
					end
				elseif ((game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
						for v2952, v2953 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v2953.Name == "Island Empress") then
								OldCFrameRainbow = v2953.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v2953.HumanoidRootPart.CFrame * Pos );
									v2953.HumanoidRootPart.CanCollide = false;
									v2953.HumanoidRootPart.CFrame = OldCFrameRainbow;
									v2953.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v2953.Humanoid.Health <= 0) or  not v2953.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, "-0", -0.994878292, "-0", 1, "-0", 0.994878292, 0, -0.101080291));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
						for v3078, v3079 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v3079.Name == "Kilo Admiral") then
								OldCFrameRainbow = v3079.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v3079.HumanoidRootPart.CFrame * Pos );
									v3079.HumanoidRootPart.CanCollide = false;
									v3079.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v3079.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v3079.Humanoid.Health <= 0) or  not v3079.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, "-0", -0.143904909, "-0", 1.00000012, "-0", 0.143904924, 0, -0.989591479));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
						for v3121, v3122 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v3122.Name == "Captain Elephant") then
								OldCFrameRainbow = v3122.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v3122.HumanoidRootPart.CFrame * Pos );
									v3122.HumanoidRootPart.CanCollide = false;
									v3122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v3122.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v3122.Humanoid.Health <= 0) or  not v3122.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
							end
						end
					else
						topos(CFrame.new( -13485.0283, 331.709259, -8012.4873, 0.714521289, 7.988499e-8, 0.69961375, -1.0206575e-7, 1, -9.943831e-9, -0.69961375, -6.4301524e-8, 0.714521289));
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
						for v3140, v3141 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (v3141.Name == "Beautiful Pirate") then
								OldCFrameRainbow = v3141.HumanoidRootPart.CFrame;
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									topos(v3141.HumanoidRootPart.CFrame * Pos );
									v3141.HumanoidRootPart.CanCollide = false;
									v3141.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									v3141.HumanoidRootPart.CFrame = OldCFrameRainbow;
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
								until (_G.Rainbow_Haki == false) or (v3141.Humanoid.Health <= 0) or  not v3141.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
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
v56:Toggle("Auto Observation Haki v2", _G.Observationv2, function(v482)
	_G.Observationv2 = v482;
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
						for v2851, v2852 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if ((v2852.Name == "Apple") or (v2852.Name == "Banana") or (v2852.Name == "Pineapple")) then
								v2852.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10) ;
								wait();
								firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v2852.Handle, 0);
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
v56:Seperator("Carvander");
v56:Toggle("Auto Cavander", _G.Carvender, function(v483)
	_G.Carvender = v483;
	StopTween(_G.Carvender);
end);
v56:Toggle("Auto Carvander Hop", _G.Carvenderhop, function(v484)
	_G.Carvenderhop = v484;
end);
local v92 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
spawn(function()
	while wait() do
		if (_G.Carvender and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
					for v2383, v2384 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2384.Name == "Beautiful Pirate") then
							if (v2384:FindFirstChild("Humanoid") and v2384:FindFirstChild("HumanoidRootPart") and (v2384.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2384.HumanoidRootPart.CanCollide = false;
									v2384.Humanoid.WalkSpeed = 0;
									v2384.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2384.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.Carvender or  not v2384.Parent or (v2384.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v92.Position).Magnitude > 3500) then
							BTP(v92);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v92.Position).Magnitude < 3500) then
							topos(v92);
						end
					else
						topos(v92);
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
v56:Seperator("Tushita");
v56:Toggle("Auto Tushita", _G.tushita, function(v485)
	_G.tushita = v485;
	StopTween(_G.tushita);
end);
v56:Toggle("Auto Tushita Hop", _G.tushitahop, function(v486)
	_G.tushitahop = v486;
end);
local v93 = CFrame.new( -10238.875976563, 389.7912902832, -9549.7939453125);
spawn(function()
	while wait() do
		if (_G.tushita and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
					for v2385, v2386 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2386.Name == "Longma") then
							if (v2386:FindFirstChild("Humanoid") and v2386:FindFirstChild("HumanoidRootPart") and (v2386.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2386.HumanoidRootPart.CanCollide = false;
									v2386.Humanoid.WalkSpeed = 0;
									v2386.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2386.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.tushita or  not v2386.Parent or (v2386.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v93.Position).Magnitude > 3500) then
							BTP(v93);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v93.Position).Magnitude < 3500) then
							topos(v93);
						end
					else
						topos(v93);
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
v56:Toggle("Auto Holy Torch", _G.HolyTorch, function(v487)
	_G.HolyTorch = v487;
	StopTween(_G.HolyTorch);
end);
spawn(function()
	while wait(0.5) do
		pcall(function()
			if _G.HolyTorch then
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch")) then
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new( -10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					until (Vector3.new( -10752.4434, 415.261749, -9367.43848) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new( -11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229));
					until (Vector3.new( -11671.6289, 333.78125, -9474.31934) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new( -12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642));
					until (Vector3.new( -12133.1406, 521.507446, -10654.292) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					repeat
						wait(0.2);
						EquipWeapon("Holy Torch");
						TP1(CFrame.new( -13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228));
					until (Vector3.new( -13336.127, 484.521179, -6985.31689) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					EquipWeapon("Holy Torch");
					repeat
						wait(0.2);
						TP1(CFrame.new( -13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108));
					until (Vector3.new( -13487.623, 336.436188, -7924.53857) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
					wait(2);
					Com();
					wait(20);
				end
			end
		end);
	end
end);
v56:Seperator("Hallow Scythe");
v56:Toggle("Auto Hallow Scythe", _G.FarmBossHallow, function(v488)
	_G.FarmBossHallow = v488;
	StopTween(_G.FarmBossHallow);
end);
v56:Toggle("Auto Hallow Scythe Hop", _G.FarmBossHallowHop, function(v489)
	_G.FarmBossHallowHop = v489;
end);
spawn(function()
	while wait() do
		if _G.FarmBossHallow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for v2387, v2388 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v2388.Name, "Soul Reaper") then
							repeat
								task.wait();
								EquipWeapon(_G.SelectWeapon);
								AutoHaki();
								v2388.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								topos(v2388.HumanoidRootPart.CFrame * Pos );
								v2388.HumanoidRootPart.Transparency = 1;
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v2388.Humanoid.Health <= 0) or (_G.FarmBossHallow == false)
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
v56:Seperator("Buddy Sword");
v56:Toggle("Auto Buddy Sword", _G.BudySword, function(v490)
	_G.BudySword = v490;
	StopTween(_G.BudySword);
end);
v56:Toggle("Auto Buddy Sword Hop", _G.BudySwordHop, function(v491)
	_G.BudySwordHop = v491;
end);
local v94 = CFrame.new( -731.2034301757812, 381.5658874511719, -11198.4951171875);
spawn(function()
	while wait() do
		if (_G.BudySword and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
					for v2389, v2390 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2390.Name == "Cake Queen") then
							if (v2390:FindFirstChild("Humanoid") and v2390:FindFirstChild("HumanoidRootPart") and (v2390.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2390.HumanoidRootPart.CanCollide = false;
									v2390.Humanoid.WalkSpeed = 0;
									v2390.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2390.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.BudySword or  not v2390.Parent or (v2390.Humanoid.Health <= 0)
							end
						end
					end
				else
					if BypassTP then
						if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v94.Position).Magnitude > 3500) then
							BTP(v94);
						elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v94.Position).Magnitude < 3500) then
							topos(v94);
						end
					else
						topos(v94);
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
				for v2121, v2122 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (_G.Level and StartMagnet and (v2122.Name == Mon) and ((Mon == "Factory Staff") or (Mon == "Monkey") or (Mon == "Dragon Crew Warrior") or (Mon == "Dragon Crew Archer")) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0) and ((v2122.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250)) then
						v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v2122.HumanoidRootPart.CFrame = PosMon;
						v2122.Humanoid:ChangeState(14);
						v2122.HumanoidRootPart.CanCollide = false;
						v2122.Head.CanCollide = false;
						if v2122.Humanoid:FindFirstChild("Animator") then
							v2122.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					elseif (_G.Level and StartMagnet and (v2122.Name == Mon) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0) and ((v2122.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
						v2122.HumanoidRootPart.CFrame = PosMon;
						v2122.Humanoid:ChangeState(14);
						v2122.HumanoidRootPart.CanCollide = false;
						v2122.Head.CanCollide = false;
						if v2122.Humanoid:FindFirstChild("Animator") then
							v2122.Humanoid.Animator:Destroy();
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
					end
					if (_G.Ectoplasm and StartEctoplasmMagnet) then
						if (string.find(v2122.Name, "Ship") and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0) and ((v2122.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.HumanoidRootPart.CFrame = EctoplasmMon;
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Rengoku and StartRengokuMagnet) then
						if (((v2122.Name == "Snow Lurker") or (v2122.Name == "Arctic Warrior")) and ((v2122.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(1500, 1500, 1500);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = RengokuMon;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.MusketeerHat and StartMagnetMusketeerhat) then
						if ((v2122.Name == "Forest Pirate") and ((v2122.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = MusketeerHatMon;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.ObservationHakiV2 and Mangnetcitzenmon) then
						if ((v2122.Name == "Forest Pirate") and ((v2122.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = PosHee;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.EvoRace and StartEvoMagnet) then
						if ((v2122.Name == "Zombie") and ((v2122.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = PosMonEvo;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Bartilo and AutoBartiloBring) then
						if ((v2122.Name == "Swan Pirate") and ((v2122.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = PosMonBarto;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmFruitMastery and StartMasteryFruitMagnet) then
						if (v2122.Name == "Monkey") then
							if (((v2122.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
								v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2122.Humanoid:ChangeState(14);
								v2122.HumanoidRootPart.CanCollide = false;
								v2122.Head.CanCollide = false;
								v2122.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v2122.Humanoid:FindFirstChild("Animator") then
									v2122.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v2122.Name == "Factory Staff") then
							if (((v2122.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
								v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2122.Humanoid:ChangeState(14);
								v2122.HumanoidRootPart.CanCollide = false;
								v2122.Head.CanCollide = false;
								v2122.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v2122.Humanoid:FindFirstChild("Animator") then
									v2122.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v2122.Name == Mon) then
							if (((v2122.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
								v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2122.Humanoid:ChangeState(14);
								v2122.HumanoidRootPart.CanCollide = false;
								v2122.Head.CanCollide = false;
								v2122.HumanoidRootPart.CFrame = PosMonMasteryFruit;
								if v2122.Humanoid:FindFirstChild("Animator") then
									v2122.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.FarmGunMastery and StartMasteryGunMagnet) then
						if (v2122.Name == "Monkey") then
							if (((v2122.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
								v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2122.Humanoid:ChangeState(14);
								v2122.HumanoidRootPart.CanCollide = false;
								v2122.Head.CanCollide = false;
								v2122.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v2122.Humanoid:FindFirstChild("Animator") then
									v2122.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v2122.Name == "Factory Staff") then
							if (((v2122.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
								v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2122.Humanoid:ChangeState(14);
								v2122.HumanoidRootPart.CanCollide = false;
								v2122.Head.CanCollide = false;
								v2122.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v2122.Humanoid:FindFirstChild("Animator") then
									v2122.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						elseif (v2122.Name == Mon) then
							if (((v2122.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
								v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v2122.Humanoid:ChangeState(14);
								v2122.HumanoidRootPart.CanCollide = false;
								v2122.Head.CanCollide = false;
								v2122.HumanoidRootPart.CFrame = PosMonMasteryGun;
								if v2122.Humanoid:FindFirstChild("Animator") then
									v2122.Humanoid.Animator:Destroy();
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
							end
						end
					end
					if (_G.Bone and StartMagnetBoneMon) then
						if (((v2122.Name == "Reborn Skeleton") or (v2122.Name == "Living Zombie") or (v2122.Name == "Demonic Soul") or (v2122.Name == "Posessed Mummy")) and ((v2122.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = PosMonBone;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.FarmCandy and StartCandyMagnet) then
						if (((v2122.Name == "Ice Cream Chef") or (v2122.Name == "Ice Cream Commander")) and ((v2122.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = CandyMon;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (StardFarm and FarmMag) then
						if (((v2122.Name == "Cocoa Warrior") or (v2122.Name == "Chocolate Bar Battler") or (v2122.Name == "Sweet Thief") or (v2122.Name == "Candy Rebel")) and ((v2122.HumanoidRootPart.Position - PosGG.Position).Magnitude <= 250) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = PosGG;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.Farmfast and StardMag) then
						if (((v2122.Name == "Shanda") or (v2122.Name == "Shanda")) and ((v2122.HumanoidRootPart.Position - FastMon.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = FastMon;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
							end
							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
						end
					end
					if (_G.DoughtBoss and MagnetDought) then
						if (((v2122.Name == "Cookie Crafter") or (v2122.Name == "Cake Guard") or (v2122.Name == "Baking Staff") or (v2122.Name == "Head Baker")) and ((v2122.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode) and v2122:FindFirstChild("Humanoid") and v2122:FindFirstChild("HumanoidRootPart") and (v2122.Humanoid.Health > 0)) then
							v2122.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v2122.Humanoid:ChangeState(14);
							v2122.HumanoidRootPart.CanCollide = false;
							v2122.Head.CanCollide = false;
							v2122.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor;
							if v2122.Humanoid:FindFirstChild("Animator") then
								v2122.Humanoid.Animator:Destroy();
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
function InMyNetWork(v492)
	if isnetworkowner then
		return isnetworkowner(v492);
	else
		if ((v492.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode) then
			return true;
		end
		return false;
	end
end
task.spawn(function()
	while task.wait() do
		pcall(function()
			if (MakoriGayMag and _G.BringMonster) then
				for v2123, v2124 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v2124.Name, "Boss") and ((v2124.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v2124.HumanoidRootPart) then
							v2124.HumanoidRootPart.CFrame = PosGay;
							v2124.Humanoid.JumpPower = 0;
							v2124.Humanoid.WalkSpeed = 0;
							v2124.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v2124.HumanoidRootPart.Transparency = 1;
							v2124.HumanoidRootPart.CanCollide = false;
							v2124.Head.CanCollide = false;
							if v2124.Humanoid:FindFirstChild("Animator") then
								v2124.Humanoid.Animator:Destroy();
							end
							v2124.Humanoid:ChangeState(11);
							v2124.Humanoid:ChangeState(14);
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
				for v2125, v2126 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v2126.Name, "Boss") and ((v2126.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v2126.HumanoidRootPart) then
							v2126.HumanoidRootPart.CFrame = PosNarathiwat;
							v2126.Humanoid.JumpPower = 0;
							v2126.Humanoid.WalkSpeed = 0;
							v2126.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v2126.HumanoidRootPart.Transparency = 1;
							v2126.HumanoidRootPart.CanCollide = false;
							v2126.Head.CanCollide = false;
							if v2126.Humanoid:FindFirstChild("Animator") then
								v2126.Humanoid.Animator:Destroy();
							end
							v2126.Humanoid:ChangeState(11);
							v2126.Humanoid:ChangeState(14);
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
				for v2127, v2128 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ( not string.find(v2128.Name, "Boss") and ((v2128.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode)) then
						if InMyNetWork(v2128.HumanoidRootPart) then
							v2128.HumanoidRootPart.CFrame = PosMon;
							v2128.Humanoid.JumpPower = 0;
							v2128.Humanoid.WalkSpeed = 0;
							v2128.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							v2128.HumanoidRootPart.Transparency = 1;
							v2128.HumanoidRootPart.CanCollide = false;
							v2128.Head.CanCollide = false;
							if v2128.Humanoid:FindFirstChild("Animator") then
								v2128.Humanoid.Animator:Destroy();
							end
							v2128.Humanoid:ChangeState(11);
							v2128.Humanoid:ChangeState(14);
						end
					end
				end
			end
		end);
	end
end);
if (World1 or World2) then
	v57:Label("Go To The Third Sea");
end
if World3 then
	v57:Seperator("Mirage");
	local v885 = v57:Label("");
	task.spawn(function()
		while task.wait() do
			pcall(function()
				if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
					v885:Set("Check Mirage : Spawn!");
				else
					v885:Set("Check Mirage : Not Spawn");
				end
			end);
		end
	end);
	v57:Toggle("Auto Mystic Island", _G.MysticIsland, function(v1794)
		_G.MysticIsland = v1794;
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
	v57:Toggle("Auto Drive", AutoW, function(v1795)
		AutoW = v1795;
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
	v57:Toggle("Auto Summon Mirage Island", _G.dao, function(v1796)
		if v1796 then
			_G.dao = true;
		else
			_G.dao = false;
		end
		if _G.dao then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
			wait(1);
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -5411.22021, 778.609863, -2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396);
			wait(0);
			local v2051 = {
				[1] = "BuyBoat",
				[2] = "PirateBrigade"
			};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2051));
			function two(v2129)
				pcall(function()
					game.Players.LocalPlayer.Character.Humanoid.Sit = false;
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false;
				end);
				if ((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - v2129.Position).Magnitude <= 200) then
					pcall(function()
						tweenz:Cancel();
					end);
					game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.CFrame = v2129;
				else
					local v2396 = game:service("TweenService");
					local v2397 = TweenInfo.new((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - v2129.Position).Magnitude / 325 , Enum.EasingStyle.Linear);
					tween, err = pcall(function()
						tweenz = v2396:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], v2397, {
							CFrame = v2129
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
			for v2130, v2131 in next, workspace.Boats.PirateBrigade:GetDescendants() do
				if v2131.Name:find("VehicleSeat") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2131.CFrame;
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0, 500, -100) );
					end
				end
			end
		end
	end);
	v57:Toggle("Teleport Advanced Fruit Dealer", _G.TPNPC, function(v1797)
		_G.Miragenpc = v1797;
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
	v57:Button("Teleport Advanced Fruit Dealer", function()
		TweenNpc();
	end);
	function TweenNpc()
		repeat
			wait();
		until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
		if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
			AllNPCS = getnilinstances();
			for v2132, v2133 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
				table.insert(AllNPCS, v2133);
			end
			for v2134, v2135 in pairs(AllNPCS) do
				if (v2135.Name == "Advanced Fruit Dealer") then
					topos(v2135.HumanoidRootPart.CFrame);
				end
			end
		end
	end
	v57:Toggle("Auto Lock Moon", _G.LockCamToMoon, function(v1798)
		_G.LockCamToMoon = v1798;
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
	v57:Toggle("Tween Gear", _G.TweenMGear, function(v1800)
		_G.TweenMGear = v1800;
		StopTween(_G.TweenMGear);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.TweenMGear then
					if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
						for v2753, v2754 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
							if v2754:IsA("MeshPart") then
								if (v2754.Material == Enum.Material.Neon) then
									topos(v2754.CFrame);
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
	v57:Seperator("Race V4");
	v57:Button("Teleport To Top Of GreatTree", function()
		topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
	end);
	v57:Button("Teleport To Timple Of Time", function()
		Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103);
	end);
	v57:Button("Teleport To Lever Pull", function()
		topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734));
	end);
	v57:Button("Teleport To Acient One (Must Be in Temple Of Time!)", function()
		topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
	end);
	v57:Button("Clock Acces", function()
		game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove();
		game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove();
	end);
	v57:Toggle("Auto Buy Gear", _G.Bone4, function(v1802)
		_G.Bone4 = v1802;
		StopTween(_G.Bone4);
	end);
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.Bone4 then
					local v2184 = {
						[1] = true
					};
					local v2184 = {
						[1] = "UpgradeRace",
						[2] = "Buy"
					};
					game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v2184));
				end
			end
		end);
	end);
	v57:Toggle("Disabled Inf Stairs", nil, function(v1803)
		game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = v1803;
	end);
	v57:Button("Teleport Trial Door", function()
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
	v57:Button("Teleport To Clock", function()
		topos(CFrame.new(29551.9941, 15069.002, -85.5179291));
	end);
	v57:Toggle("Auto Trial", false, function(v1806)
		_G.QuestRace = v1806;
		StopTween(_G.QuestRace);
	end);
	spawn(function()
		pcall(function()
			while wait() do
				if _G.QuestRace then
					if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
						for v2755, v2756 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v2756:FindFirstChild("Humanoid") and v2756:FindFirstChild("HumanoidRootPart") and (v2756.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v2756.Humanoid.Health = 0;
										v2756.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v2756.Parent or (v2756.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
						for v2861, v2862 in next, workspace:GetDescendants() do
							if (v2862.Name == "FinishPart") then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2862.CFrame;
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
						for v2967, v2968 in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
							if (v2968.Name == "HumanoidRootPart") then
								topos(v2968.CFrame * CFrame.new(PosX, PosY, PosZ) );
								for v3107, v3108 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v3108:IsA("Tool") then
										if (v3108.ToolTip == "Melee") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3108);
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
								for v3109, v3110 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v3110:IsA("Tool") then
										if (v3110.ToolTip == "Blox Fruit") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3110);
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
								for v3111, v3112 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v3112:IsA("Tool") then
										if (v3112.ToolTip == "Sword") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3112);
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
								for v3113, v3114 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
									if v3114:IsA("Tool") then
										if (v3114.ToolTip == "Gun") then
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(v3114);
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
						for v3123, v3124 in pairs(game.Workspace.Enemies:GetDescendants()) do
							if (v3124:FindFirstChild("Humanoid") and v3124:FindFirstChild("HumanoidRootPart") and (v3124.Humanoid.Health > 0)) then
								pcall(function()
									repeat
										wait(0.1);
										v3124.Humanoid.Health = 0;
										v3124.HumanoidRootPart.CanCollide = false;
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
									until  not _G.QuestRace or  not v3124.Parent or (v3124.Humanoid.Health <= 0)
								end);
							end
						end
					elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
						for v3142, v3143 in pairs(game:GetService("Workspace"):GetDescendants()) do
							if (v3143.Name == "StartPoint") then
								topos(v3143.CFrame * CFrame.new(0, 10, 0) );
							end
						end
					end
				end
			end
		end);
	end);
	v57:Toggle("Auto Farm & active V4", false, function(v1807)
		_G.Bone = v1807;
		_G.Bone4 = v1807;
		_G.ActiveV4 = v1807;
		StopTween(_G.Bone);
	end);
	v57:Toggle("Kill Player After Trial", false, function(v1808)
		_G.KillAfterTrials = v1808;
		_G.Click = v1808;
		_G.TurnKen = v1808;
		_G.AimNearest = v1808;
		_G.Aimbot_Skill = v1808;
		StopTween(_G.KillAfterTrials);
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.KillAfterTrials then
					for v2400, v2401 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						if ((v2401.Name ~= game.Players.LocalPlayer.Name) and ((v2401.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100)) then
							if (v2401.Humanoid.Health > 0) then
								repeat
									wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									NameTarget = v2401.Name;
									TP1(v2401.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5) );
									v2401.HumanoidRootPart.CanCollide = false;
									v2401.Head.CanCollide = false;
									v2401.HumanoidRootPart.Size = Vector3.new(100, 100, 100);
									Click();
								until  not _G.KillAfterTrials or  not v2401.Parent or (v2401.Humanoid.Health <= 0)
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
	v57:Button("Buy Ancient One Quest", function(v1809)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
	end);
end
local v95 = v58:Label("Status Prehistoric Island: ");
task.spawn(function()
	while task.wait() do
		pcall(function()
			if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
				v95:Set("Prehistoric Island : Spawn!");
			else
				v95:Set("Prehistoric Island : Dont Spawn");
			end
		end);
	end
end);
v58:Button("Remove Lava In Prehistoric Island", function()
	for v886, v887 in pairs(game.Workspace:GetDescendants()) do
		if (v887.Name == "Lava") then
			v887:Destroy();
		end
	end
	for v888, v889 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v889.Name == "Lava") then
			v889:Destroy();
		end
	end
end);
v58:Button("Craft Magnet", function()
	local v493 = {
		"CraftItem",
		"Craft",
		"Volcanic Magnet"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v493));
end);
v58:Toggle("Teleport To Tiki", false, function(v494)
	_G.TpSpy = v494;
	StopTween(_G.TpSpy);
	task.spawn(function()
		while _G.TpSpy do
			task.wait();
			topos(CFrame.new( -16927.451171875, 9.0863618850708, 433.8642883300781));
		end
	end);
end);
v58:Toggle("Auto Find Prehistoric", false, function(v495)
	_G.AutoFindPrehistoric = v495;
end);
local v96 = {};
local v97 = game:GetService("Players");
local v98 = game:GetService("RunService");
local v99 = game:GetService("VirtualInputManager");
local v100 = game:GetService("Workspace");
local v101 = 350;
game:GetService("RunService").RenderStepped:Connect(function()
	for v890, v891 in pairs(v96) do
		if (v891 and v891.Parent and (v891.Name == "VehicleSeat") and  not v891.Occupant) then
			v96[v890] = v891;
		end
	end
end);
local function v102()
	for v892, v893 in pairs(v96) do
		if (v893 and v893.Parent and (v893.Name == "VehicleSeat") and  not v893.Occupant) then
			topos(v893.CFrame);
		end
	end
end
local v48 = false;
local v103 = false;
v98.RenderStepped:Connect(function()
	if  not _G.AutoFindPrehistoric then
		v103 = false;
		return;
	end
	local v496 = v97.LocalPlayer;
	local v497 = v496.Character;
	if ( not v497 or  not v497:FindFirstChild("Humanoid")) then
		return;
	end
	local function v498()
		if v48 then
			return;
		end
		v48 = true;
		for v1810, v1811 in pairs(v96) do
			if (v1811 and v1811.Parent and (v1811.Name == "VehicleSeat") and  not v1811.Occupant) then
				topos(v1811.CFrame);
				break;
			end
		end
		v48 = false;
	end
	local v499 = v497.Humanoid;
	local v500 = false;
	local v501 = nil;
	for v894, v895 in pairs(v100.Boats:GetChildren()) do
		local v896 = v895:FindFirstChild("VehicleSeat");
		if (v896 and (v896.Occupant == v499)) then
			v500 = true;
			v501 = v896;
			v96[v895.Name] = v896;
		elseif (v896 and (v896.Occupant == nil)) then
			v498();
		end
	end
	if  not v500 then
		return;
	end
	v501.MaxSpeed = v101;
	v501.CFrame = CFrame.new(Vector3.new(v501.Position.X, v501.Position.Y, v501.Position.Z)) * v501.CFrame.Rotation ;
	v99:SendKeyEvent(true, "W", false, game);
	for v897, v898 in pairs(v100.Boats:GetDescendants()) do
		if v898:IsA("BasePart") then
			v898.CanCollide = false;
		end
	end
	for v899, v900 in pairs(v497:GetDescendants()) do
		if v900:IsA("BasePart") then
			v900.CanCollide = false;
		end
	end
	local v504 = {
		"ShipwreckIsland",
		"SandIsland",
		"TreeIsland",
		"TinyIsland",
		"MysticIsland",
		"KitsuneIsland",
		"FrozenDimension"
	};
	for v901, v902 in ipairs(v504) do
		local v903 = v100.Map:FindFirstChild(v902);
		if (v903 and v903:IsA("Model")) then
			v903:Destroy();
		end
	end
	local v505 = v100.Map:FindFirstChild("PrehistoricIsland");
	if v505 then
		v99:SendKeyEvent(false, "W", false, game);
		_G.AutoFindPrehistoric = false;
		if  not v103 then
			v103 = true;
		end
		return;
	end
end);
v58:Toggle("Teleport Prehistoric Island", false, function(v506)
	_G.TpPrehistoric = v506;
	StopTween(_G.TpPrehistoric);
end);
spawn(function()
	local v507;
	while  not v507 do
		v507 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
		wait();
	end
	while wait() do
		if _G.TpPrehistoric then
			local v1943 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
			if v1943 then
				local v2136 = v1943:FindFirstChild("Core") and v1943.Core:FindFirstChild("PrehistoricRelic") ;
				local v2137 = v2136 and v2136:FindFirstChild("Skull") ;
				if v2137 then
					topos(CFrame.new(v2137.Position));
					_G.TpPrehistoric = false;
				end
			end
		end
	end
end);
v58:Toggle("Kill Golem", false, function(v508)
	_G.KillGolem = v508;
	StopTween(_G.KillGolem);
end);
v58:Toggle("Kill Golem Aura", false, function(v509)
	_G.Kill_Aura = v509;
end);
spawn(function()
	while wait() do
		if (_G.KillGolem and World3) then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Lava Golem") then
					for v2402, v2403 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2403.Name == "Lava Golem") then
							if (v2403:FindFirstChild("Humanoid") and v2403:FindFirstChild("HumanoidRootPart") and (v2403.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									v2403.HumanoidRootPart.CanCollide = false;
									v2403.Humanoid.WalkSpeed = 0;
									v2403.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2403.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.KillGolem or  not v2403.Parent or (v2403.Humanoid.Health <= 0)
							end
						end
					end
				else
					UnEquipWeapon(_G.SelectWeapon);
					if game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Lava Golem").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2) );
					end
				end
			end);
		end
	end
end);
spawn(function()
	pcall(function()
		while wait() do
			if _G.Kill_Aura then
				local v2053 = game:GetService("Players").LocalPlayer;
				local v2054 = game:GetService("Workspace").Enemies:GetChildren();
				local v2055 = v2053.Character and v2053.Character:FindFirstChild("HumanoidRootPart") and v2053.Character.HumanoidRootPart.Position ;
				if v2055 then
					for v2404, v2405 in pairs(v2054) do
						if (v2405:FindFirstChild("Humanoid") and v2405:FindFirstChild("HumanoidRootPart") and (v2405.Humanoid.Health > 0)) then
							local v2757 = (v2405.HumanoidRootPart.Position - v2055).Magnitude;
							if (v2757 <= 1000) then
								pcall(function()
									repeat
										wait();
										sethiddenproperty(v2053, "SimulationRadius", math.huge);
										v2405.Humanoid.Health = 0;
										v2405.HumanoidRootPart.CanCollide = false;
									until  not _G.Kill_Aura or  not v2405.Parent or (v2405.Humanoid.Health <= 0)
								end);
							end
						end
					end
				end
			end
		end
	end);
end);
v58:Toggle("Defend Volcano", false, function(v510)
	_G.DefendVolcano = v510;
	StopTween(_G.DefendVolcano);
end);
local function v104(v511)
	game:GetService("VirtualInputManager"):SendKeyEvent(true, v511, false, game);
	game:GetService("VirtualInputManager"):SendKeyEvent(false, v511, false, game);
end
local function v105()
	local v512 = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava");
	if (v512 and v512:IsA("Model")) then
		v512:Destroy();
	end
	local v513 = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
	if v513 then
		for v1944, v1945 in pairs(v513:GetDescendants()) do
			if (v1945:IsA("Part") and v1945.Name:lower():find("lava")) then
				v1945:Destroy();
			end
		end
	end
	local v514 = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
	if v514 then
		for v1946, v1947 in pairs(v514:GetDescendants()) do
			if v1947:IsA("Model") then
				for v2186, v2187 in pairs(v1947:GetDescendants()) do
					if (v2187:IsA("MeshPart") and v2187.Name:lower():find("lava")) then
						v2187:Destroy();
					end
				end
			end
		end
	end
end
local function v106()
	local v515 = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks;
	for v904, v905 in pairs(v515:GetChildren()) do
		if v905:IsA("Model") then
			local v1948 = v905:FindFirstChild("volcanorock");
			if (v1948 and v1948:IsA("MeshPart")) then
				local v2138 = v1948.Color;
				if ((v2138 == Color3.fromRGB(185, 53, 56)) or (v2138 == Color3.fromRGB(185, 53, 57))) then
					return v1948;
				end
			end
		end
	end
	return nil;
end
local function v107(v516)
	local v517 = game.Players.LocalPlayer;
	local v518 = v517.Backpack;
	for v906, v907 in pairs(v518:GetChildren()) do
		if (v907:IsA("Tool") and (v907.ToolTip == v516)) then
			v907.Parent = v517.Character;
			for v2056, v2057 in ipairs({
				"Z",
				"X",
				"C",
				"V",
				"F"
			}) do
				wait();
				pcall(function()
					v104(v2057);
				end);
			end
			v907.Parent = v518;
			break;
		end
	end
end
spawn(function()
	while wait() do
		if _G.DefendVolcano then
			AutoHaki();
			pcall(v105);
			local v1951 = v106();
			if v1951 then
				local v2139 = CFrame.new(v1951.Position);
				topos(v2139);
				local v2140 = v1951.Color;
				if ((v2140 ~= Color3.fromRGB(185, 53, 56)) and (v2140 ~= Color3.fromRGB(185, 53, 57))) then
					v1951 = v106();
				else
					local v2406 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
					local v2407 = (v2406 - v1951.Position).Magnitude;
					if (v2407 <= 1) then
						if _G.UseMelee then
							v107("Melee");
						end
						if _G.UseSword then
							v107("Sword");
						end
						if _G.UseGun then
							v107("Gun");
						end
					end
					_G.TpPrehistoric = false;
				end
			else
				_G.TpPrehistoric = true;
			end
		end
	end
end);
v58:Toggle("Collect Bone", false, function(v519)
	_G.CollectBone = v519;
end);
spawn(function()
	while wait() do
		if _G.CollectBone then
			for v2058, v2059 in pairs(workspace:GetDescendants()) do
				if (v2059:IsA("BasePart") and (v2059.Name == "DinoBone")) then
					topos(CFrame.new(v2059.Position));
				end
			end
		end
	end
end);
v58:Toggle("Collect Egg", false, function(v520)
	_G.CollectEgg = v520;
end);
spawn(function()
	while wait() do
		if _G.CollectEgg then
			local v1952 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren();
			if ( #v1952 > 0) then
				local v2141 = v1952[math.random(1, #v1952)];
				if (v2141:IsA("Model") and v2141.PrimaryPart) then
					topos(v2141.PrimaryPart.CFrame);
					local v2408 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
					local v2409 = v2141.PrimaryPart.Position;
					local v2410 = (v2408 - v2409).Magnitude;
					if (v2410 <= 1) then
						game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
						wait(1.5);
						game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game);
					end
				end
			end
		end
	end
end);
v58:Seperator("Setting");
v58:Toggle("Use Melee", true, function(v521)
	_G.UseMelee = v521;
end);
v58:Toggle("Use Sword", false, function(v522)
	_G.UseSword = v522;
end);
v58:Toggle("Use Gun", false, function(v523)
	_G.UseGun = v523;
end);
v60:Seperator("ESP MENU");
v60:Toggle("ESP Player", false, function(v524)
	ESPPlayer = v524;
	UpdatePlayerChams();
end);
v60:Toggle("ESP Island Kitsune", false, function(v525)
	IslandESP = v525;
	while IslandESP do
		wait();
		UpdateIslandESPKitsune();
	end
end);
function UpdateIslandESPKitsune()
	for v908, v909 in pairs(game:GetService("Workspace").Map.KitsuneIsland.ShrineActive:GetChildren()) do
		pcall(function()
			if IslandESP then
				if (v909.Name ~= "NeonShrinePart") then
					if  not v909:FindFirstChild("IslandESP") then
						local v2604 = Instance.new("BillboardGui", v909);
						v2604.Name = "IslandESP";
						v2604.ExtentsOffset = Vector3.new(0, 1, 0);
						v2604.Size = UDim2.new(1, 200, 1, 30);
						v2604.Adornee = v909;
						v2604.AlwaysOnTop = true;
						local v2610 = Instance.new("TextLabel", v2604);
						v2610.Font = "Code";
						v2610.FontSize = "Size14";
						v2610.TextWrapped = true;
						v2610.Size = UDim2.new(1, 0, 1, 0);
						v2610.TextYAlignment = "Top";
						v2610.BackgroundTransparency = 1;
						v2610.TextStrokeTransparency = 0.5;
						v2610.TextColor3 = Color3.fromRGB(80, 245, 245);
						v2610.Text = "Kitsune Island";
					else
						v909['IslandESP'].TextLabel.Text = "Kitsune Island";
					end
				end
			elseif v909:FindFirstChild("IslandESP") then
				v909:FindFirstChild("IslandESP"):Destroy();
			end
		end);
	end
end
v60:Toggle("ESP Chest", false, function(v526)
	ChestESP = v526;
	UpdateChestChams();
end);
v60:Toggle("ESP Fruit", false, function(v527)
	DevilFruitESP = v527;
	while DevilFruitESP do
		wait();
		UpdateDevilChams();
	end
end);
v60:Toggle("ESP Real Fruit", RealFruitESP, function(v528)
	RealFruitESP = v528;
	UpdateRealFruitChams();
end);
v60:Toggle("ESP Flower", false, function(v529)
	FlowerESP = v529;
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
v60:Toggle("ESP Island", IslandESP, function(v530)
	IslandESP = v530;
	while IslandESP do
		wait();
		UpdateIslandESP();
	end
end);
v60:Toggle("Esp Mystic Island", false, function(v531)
	MirageIslandESP = v531;
	while MirageIslandESP do
		wait();
		UpdateIslandMirageESP();
	end
end);
v60:Seperator("Troll");
v60:Button("Rain Fruit", function()
	for v910, v911 in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
		v911.Parent = game.Workspace.Map;
		v911:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random( -50, 50), 100, math.random( -50, 50)) );
		if v911.Fruit:FindFirstChild("AnimationController") then
			v911.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v911.Fruit:FindFirstChild("Idle")):Play();
		end
		v911.Handle.Touched:Connect(function(v1812)
			if (v1812.Parent == game.Players.LocalPlayer.Character) then
				v911.Parent = game.Players.LocalPlayer.Backpack;
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v911);
			end
		end);
	end
end);
v60:Button("Instant Level/Beli/EXP", function()
	local v532 = game:GetService("Players").LocalPlayer;
	local v533 = require(game:GetService("ReplicatedStorage").Notification);
	local v534 = v532:WaitForChild("Data");
	local v535 = require(game.ReplicatedStorage:WaitForChild("EXPFunction"));
	local v536 = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp);
	local v537 = require(game:GetService("ReplicatedStorage").Util.Sound);
	local v538 = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp") ;
	function v129(v914)
		local v915 = v914;
		while true do
			local v1813, v1814 = string.gsub(v915, "^(-?%d+)(%d%d%d)", "%1,%2");
			v915 = v1813;
			if (v1814 == 0) then
				break;
			end
		end
		return v915;
	end
	v533.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display();
	v533.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display();
	v533.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display();
	v532.Data.Exp.Value = 999999999999;
	v532.Data.Beli.Value = v532.Data.Beli.Value + 999999999999 ;
	delay = 0;
	count = 0;
	while (v532.Data.Exp.Value - v535(v534.Level.Value)) > 0  do
		v532.Data.Exp.Value = v532.Data.Exp.Value - v535(v534.Level.Value) ;
		v532.Data.Level.Value = v532.Data.Level.Value + 1 ;
		v532.Data.Points.Value = v532.Data.Points.Value + 3 ;
		v536({
			v532
		});
		v537.Play(v537, v538.Value);
		v533.new("<Color=Green>LEVEL UP!<Color=/> ("   .. v532.Data.Level.Value   .. ")" ):Display();
		count = count + 1 ;
		if (count >= 5) then
			delay = tick();
			count = 0;
			wait(2);
		end
	end
end);
v60:Textbox("Fake Level", "Fake Level", true, function(v541)
	game:GetService("Players").LocalPlayer.Data.Level.Value = v541;
end);
v60:Textbox("Fake Exp", "Fake Exp", true, function(v543)
	game:GetService("Players").LocalPlayer.Data.Exp.Value = v543;
end);
v60:Textbox("Fake Money", "Fake Money", true, function(v545)
	game:GetService("Players").LocalPlayer.Data.Beli.Value = v545;
end);
v60:Textbox("Fake Fragment", "Fake Fragment", true, function(v547)
	game:GetService("Players").LocalPlayer.Data.Fragments.Value = v547;
end);
v60:Textbox("Fake Points", "Fake Points", true, function(v549)
	game:GetService("Players").LocalPlayer.Data.Points.Value = v549;
end);
v60:Textbox("Fake Bounty", "Fake Points", true, function(v551)
	game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = v551;
end);
v60:Seperator("Highlight");
v60:Toggle("Show Chat disabled", _G.chat, function(v553)
	_G.chat = v553;
	if (_G.chat == true) then
		local v1815 = game:GetService("StarterGui");
		v1815:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);
	elseif (_G.chat == false) then
		local v2062 = game:GetService("StarterGui");
		v2062:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
	end
end);
v60:Toggle("Show leaderboard disabled", _G.leaderboard, function(v554)
	_G.leaderboard = v554;
	if (_G.leaderboard == true) then
		local v1816 = game:GetService("StarterGui");
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false);
	elseif (_G.leaderboard == false) then
		local v2063 = game:GetService("StarterGui");
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true);
	end
end);
v60:Seperator("Hack");
v60:Button("Unlock Buso", function()
	local v555 = "Buso";
	if (type(v555) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v555);
	elseif (type(v555) == "table") then
		for v2142, v2143 in next, v555 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2143);
		end
	end
end);
v60:Button("Unlock Soru", function()
	local v556 = "Soru";
	if (type(v556) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v556);
	elseif (type(v556) == "table") then
		for v2144, v2145 in next, v556 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2145);
		end
	end
end);
v60:Button("Unlock Geppo", function()
	local v557 = "Geppo";
	if (type(v557) == "string") then
		game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v557);
	elseif (type(v557) == "table") then
		for v2146, v2147 in next, v557 do
			game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character, v2147);
		end
	end
end);
v60:Button("Max Zoom", function()
	while wait() do
		game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718;
	end
end);
v60:Button("Kaitun Cap", function(v558)
	local v559 = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory);
	local v560 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory");
	local v561 = {};
	local v562 = {
		"Mythical",
		"Legendary",
		"Rare",
		"Uncommon",
		"Common"
	};
	local v563 = {
		Common = Color3.fromRGB(179, 179, 179),
		Uncommon = Color3.fromRGB(92, 140, 211),
		Rare = Color3.fromRGB(140, 82, 255),
		Legendary = Color3.fromRGB(213, 43, 228),
		Mythical = Color3.fromRGB(238, 47, 50)
	};
	function GetRaity(v920)
		for v1817, v1818 in pairs(v563) do
			if (v1818 == v920) then
				return v1817;
			end
		end
	end
	for v921, v922 in pairs(v560) do
		v561[v922.Name] = v922;
	end
	local v564 = #getupvalue(v559.UpdateRender, 4);
	local v565 = {};
	local v566 = {};
	local v567 = 0;
	while v567 < v564  do
		local v924 = 0;
		while (v924 < 25000) and (v567 < v564)  do
			game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0, v924);
			for v1953, v1954 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
				if (v1954:IsA("Frame") and  not v565[v1954.ItemName.Text] and (v1954.ItemName.Visible == true)) then
					local v2148 = GetRaity(v1954.Background.BackgroundColor3);
					if v2148 then
						print("Rac");
						if  not v566[v2148] then
							v566[v2148] = {};
						end
						table.insert(v566[v2148], v1954:Clone());
					end
					v567 = v567 + 1 ;
					v565[v1954.ItemName.Text] = true;
				end
			end
			v924 = v924 + 20 ;
		end
		wait();
	end
	function GetXY(v925)
		return v925 * 100 ;
	end
	local v568 = Instance.new("UIListLayout");
	v568.FillDirection = Enum.FillDirection.Vertical;
	v568.SortOrder = 2;
	v568.Padding = UDim.new(0, 10);
	local v573 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v573.BackgroundTransparency = 1;
	v573.Size = UDim2.new(0.5, 0, 1, 0);
	v568.Parent = v573;
	local v577 = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat);
	v577.BackgroundTransparency = 1;
	v577.Size = UDim2.new(0.5, 0, 1, 0);
	v577.Position = UDim2.new(0.6, 0, 0, 0);
	v568:Clone().Parent = v577;
	for v926, v927 in pairs(v566) do
		local v928 = Instance.new("Frame", v573);
		v928.BackgroundTransparency = 1;
		v928.Size = UDim2.new(1, 0, 0, 0);
		v928.LayoutOrder = table.find(v562, v926);
		local v932 = Instance.new("Frame", v577);
		v932.BackgroundTransparency = 1;
		v932.Size = UDim2.new(1, 0, 0, 0);
		v932.LayoutOrder = table.find(v562, v926);
		local v936 = Instance.new("UIGridLayout", v928);
		v936.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
		v936.CellSize = UDim2.new(0, 70, 0, 70);
		v936.FillDirectionMaxCells = 100;
		v936.FillDirection = Enum.FillDirection.Horizontal;
		local v942 = v936:Clone();
		v942.Parent = v932;
		for v1820, v1821 in pairs(v927) do
			if (v561[v1821.ItemName.Text] and v561[v1821.ItemName.Text].Mastery) then
				if (v1821.ItemLine2.Text ~= "Accessory") then
					local v2188 = v1821.ItemName:Clone();
					v2188.BackgroundTransparency = 1;
					v2188.TextSize = 10;
					v2188.TextXAlignment = 2;
					v2188.TextYAlignment = 2;
					v2188.ZIndex = 5;
					v2188.Text = v561[v1821.ItemName.Text].Mastery;
					v2188.Size = UDim2.new(0.5, 0, 0.5, 0);
					v2188.Position = UDim2.new(0.5, 0, 0.5, 0);
					v2188.Parent = v1821;
				end
				v1821.Parent = v928;
			elseif (v1821.ItemLine2.Text == "Blox Fruit") then
				v1821.Parent = v932;
			end
		end
		v928.AutomaticSize = 2;
		v932.AutomaticSize = 2;
	end
	local v582 = {
		Superhuman = Vector2.new(3, 2),
		GodHuman = Vector2.new(3, 2),
		DeathStep = Vector2.new(4, 3),
		ElectricClaw = Vector2.new(2, 0),
		SharkmanKarate = Vector2.new(0, 0),
		DragonTalon = Vector2.new(1, 5)
	};
	local v583 = Instance.new("Frame", v573);
	v583.BackgroundTransparency = 1;
	v583.Size = UDim2.new(1, 0, 0, 0);
	v583.LayoutOrder = table.find(v562, k);
	v583.AutomaticSize = 2;
	v583.LayoutOrder = 100;
	local v568 = Instance.new("UIGridLayout", v583);
	v568.CellPadding = UDim2.new(0.005, 0, 0.005, 0);
	v568.CellSize = UDim2.new(0, 70, 0, 70);
	v568.FillDirectionMaxCells = 100;
	v568.FillDirection = Enum.FillDirection.Horizontal;
	local v559 = {
		"Superhuman",
		"ElectricClaw",
		"DragonTalon",
		"SharkmanKarate",
		"DeathStep",
		"GodHuman"
	};
	for v946, v947 in pairs(v559) do
		if (v582[v947] and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"   .. v947 , true) == 1)) then
			local v1955 = Instance.new("ImageLabel", v583);
			v1955.Image = "rbxassetid://9945562382";
			v1955.ImageRectSize = Vector2.new(100, 100);
			v1955.ImageRectOffset = v582[v947] * 100 ;
		end
	end
	function formatNumber(v948)
		return tostring(v948):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "");
	end
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 800, 0, 500);
	game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 800, 0, 550);
	local v594 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone();
	v594.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat;
	v594.Position = UDim2.new(0, 800, 0.63, 0);
	local v598 = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value);
	v594.Text = "Ã†â€™"   .. v598 ;
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
	for v949, v950 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
		if v950:IsA("ImageButton") then
			v950:Destroy();
		end
	end
	pcall(function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy();
	end);
end);
v60:Seperator("Graphic");
v60:Button("Remove Fog ( Sea 3 )", function(v600)
	game:GetService("Lighting").LightingLayers:Destroy();
	game:GetService("Lighting").Sky:Destroy();
end);
v60:Toggle("Remove Fog", RemoveFog, function(v601)
	RemoveFog = v601;
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
v60:Toggle("Remove Damage", true, function()
	for v952, v953 in pairs(game.Workspace:GetDescendants()) do
		if (v953.Name == "DamageCounter") then
			v953:Destroy();
		end
	end
	for v954, v955 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v955.Name == "DamageCounter") then
			v955:Destroy();
		end
	end
end);
v60:Button("Unlock FPS", function()
	setfpscap(9999999);
end);
v60:Button("Reduce Cpu", function()
	for v956, v957 in pairs(game.Workspace.Map:GetDescendants()) do
		if ((v957.Name == "Tavern") or (v957.Name == "SmileFactory") or (v957.Name == "Tree") or (v957.Name == "Rocks") or (v957.Name == "PartHouse") or (v957.Name == "Hotel") or (v957.Name == "WallPiece") or (v957.Name == "MiddlePillars") or (v957.Name == "Cloud") or (v957.Name == "PluginGrass") or (v957.Name == "BigHouse") or (v957.Name == "SmallHouse") or (v957.Name == "Detail")) then
			v957:Destroy();
		end
	end
	for v958, v959 in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
		if ((v959.Name == "Tavern") or (v959.Name == "SmileFactory") or (v959.Name == "Tree") or (v959.Name == "Rocks") or (v959.Name == "PartHouse") or (v959.Name == "Hotel") or (v959.Name == "WallPiece") or (v959.Name == "MiddlePillars") or (v959.Name == "Cloud") or (v959.Name == "PluginGrass") or (v959.Name == "BigHouse") or (v959.Name == "SmallHouse") or (v959.Name == "Detail")) then
			v959:Destroy();
		end
	end
	for v960, v961 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if (v961:IsA("Accessory") or (v961.Name == "Pants") or (v961.Name == "Shirt")) then
			v961:Destroy();
		end
	end
	local v602 = true;
	local v603 = game;
	local v604 = v603.Workspace;
	local v605 = v603.Lighting;
	local v606 = v604.Terrain;
	v606.WaterWaveSize = 0;
	v606.WaterWaveSpeed = 0;
	v606.WaterReflectance = 0;
	v606.WaterTransparency = 0;
	v605.GlobalShadows = false;
	v605.FogEnd = 8999999488;
	v605.Brightness = 0;
	settings().Rendering.QualityLevel = "Level01";
	for v962, v963 in pairs(v603:GetDescendants()) do
		if (v963:IsA("Part") or v963:IsA("Union") or v963:IsA("CornerWedgePart") or v963:IsA("TrussPart")) then
			v963.Material = "Plastic";
			v963.Reflectance = 0;
		elseif (v963:IsA("Decal") or (v963:IsA("Texture") and v602)) then
			v963.Transparency = 1;
		elseif (v963:IsA("ParticleEmitter") or v963:IsA("Trail")) then
			v963.Lifetime = NumberRange.new(0);
		elseif v963:IsA("Explosion") then
			v963.BlastPressure = 1;
			v963.BlastRadius = 1;
		elseif (v963:IsA("Fire") or v963:IsA("SpotLight") or v963:IsA("Smoke") or v963:IsA("Sparkles")) then
			v963.Enabled = false;
		elseif v963:IsA("MeshPart") then
			v963.Material = "Plastic";
			v963.Reflectance = 0;
			v963.TextureID = 10385902758728956;
		end
	end
	for v964, v965 in pairs(v605:GetChildren()) do
		if (v965:IsA("BlurEffect") or v965:IsA("SunRaysEffect") or v965:IsA("ColorCorrectionEffect") or v965:IsA("BloomEffect") or v965:IsA("DepthOfFieldEffect")) then
			v965.Enabled = false;
		end
	end
end);
v60:Seperator("Abilities");
v60:Toggle("Dodge No Cooldown", false, function(v615)
	nododgecool = v615;
	NoDodgeCool();
end);
v60:Toggle("Infinite Energy", false, function(v616)
	InfiniteEnergy = v616;
	v47 = v46.Character.Energy.Value;
end);
v60:Toggle("Infinite Ability", false, function(v618)
	InfAbility = v618;
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
v60:Toggle("Infinite Obversation Range", getgenv().InfiniteObRange, function(v619)
	getgenv().InfiniteObRange = v619;
	local v621 = game:GetService("Players").LocalPlayer.VisionRadius.Value;
	while getgenv().InfiniteObRange do
		wait();
		local v966 = game:GetService("Players").LocalPlayer;
		local v967 = v966.Character;
		local v968 = v966.VisionRadius;
		if v966 then
			if (v967.Humanoid.Health <= 0) then
				wait(5);
			end
			v968.Value = math.huge;
		elseif ((getgenv().InfiniteObRange == false) and v966) then
			v968.Value = v621;
		end
	end
end);
v60:Toggle("Infinite Geppo", getgenv().InfGeppo, function(v622)
	getgenv().InfGeppo = v622;
end);
spawn(function()
	while wait() do
		pcall(function()
			if getgenv().InfGeppo then
				for v2152, v2153 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Geppo then
						if ((typeof(v2153) == "function") and (getfenv(v2153).script == game:GetService("Players").LocalPlayer.Character.Geppo)) then
							for v2823, v2824 in next, getupvalues(v2153) do
								if (tostring(v2823) == "9") then
									repeat
										wait(0.1);
										setupvalue(v2153, v2823, 0);
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
v60:Toggle("Infinite Soru", _G.Infsoru, function(v624)
	_G.Infsoru = v624;
end);
spawn(function()
	while wait() do
		pcall(function()
			if (_G.Infsoru and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil)) then
				for v2154, v2155 in next, getgc() do
					if game:GetService("Players").LocalPlayer.Character.Soru then
						if ((typeof(v2155) == "function") and (getfenv(v2155).script == game:GetService("Players").LocalPlayer.Character.Soru)) then
							for v2825, v2826 in next, getupvalues(v2155) do
								if (typeof(v2826) == "table") then
									repeat
										wait(0.1);
										v2826.LastUse = 0;
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
v60:Button("Remove Lava", function()
	for v969, v970 in pairs(game.Workspace:GetDescendants()) do
		if (v970.Name == "Lava") then
			v970:Destroy();
		end
	end
	for v971, v972 in pairs(game.ReplicatedStorage:GetDescendants()) do
		if (v972.Name == "Lava") then
			v972:Destroy();
		end
	end
end);
local v108 = v59:Label("Players");
spawn(function()
	while wait() do
		pcall(function()
			for v1965, v1966 in pairs(game:GetService("Players"):GetPlayers()) do
				if (v1965 == 12) then
					v108:Set("Players:"   .. " "   .. v1965   .. " "   .. "/"   .. " "   .. "12"   .. " "   .. "(Max)" );
				elseif (v1965 == 1) then
					v108:Set("Player:"   .. " "   .. v1965   .. " "   .. "/"   .. " "   .. "12" );
				else
					v108:Set("Players:"   .. " "   .. v1965   .. " "   .. "/"   .. " "   .. "12" );
				end
			end
		end);
	end
end);
Playerslist = {};
for v625, v626 in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist, v626.Name);
end
local v109 = v59:Dropdown("Select Player", Playerslist, function(v627)
	_G.SelectPly = v627;
end);
v59:Button("Refresh Player", function()
	Playerslist = {};
	v109:Clear();
	for v973, v974 in pairs(game:GetService("Players"):GetChildren()) do
		v109:Add(v974.Name);
	end
end);
v59:Toggle("Spectate Player", false, function(v628)
	SpectatePlys = v628;
	local v629 = game:GetService("Players").LocalPlayer.Character.Humanoid;
	local v630 = game:GetService("Players"):FindFirstChild(_G.SelectPly);
	repeat
		wait(0.1);
		game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid;
	until SpectatePlys == false
	game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid;
end);
v59:Toggle("Teleport", false, function(v633)
	_G.TeleportPly = v633;
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
v59:Toggle("Teleport Player Bypass", false, function(v634)
	_G.Teleport = v634;
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
v59:Seperator("Quest Player");
v59:Button("Get Quest Elite Players", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter");
end);
v59:Toggle("Auto Kill Player Quest", _G.PlayerHunter, function(v635)
	_G.PlayerHunter = v635;
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
				for v2200, v2201 in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v2201.Name) then
						repeat
							wait();
							if  not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local v2864 = {
									[1] = "Buso"
								};
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2864));
							end
							EquipWeapon(_G.SelectWeapon);
							Useskill = true;
							topos(v2201.HumanoidRootPart.CFrame * CFrame.new(1, 7, 3) );
							v2201.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						until (_G.PlayerHunter == false) or (v2201.Humanoid.Health <= 0)
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
v59:Seperator("PvP");
v59:Toggle("Aimbot Nearest", false, function(v636)
	_G.AimNearest = v636;
end);
local v97 = game:GetService("Players");
local v46 = v97.LocalPlayer;
local v98 = game:GetService("RunService");
local function v110()
	local v637 = nil;
	local v638 = math.huge;
	for v979, v980 in pairs(v97:GetPlayers()) do
		if ((v980 ~= v46) and v980.Character and v980.Character:FindFirstChild("HumanoidRootPart")) then
			if ((v980.Team ~= v46.Team) and (v980.Team.Name ~= "Marines")) then
				local v2156 = v980.Character.HumanoidRootPart.Position;
				local v2157 = (v46.Character.HumanoidRootPart.Position - v2156).Magnitude;
				if (v2157 < v638) then
					v637 = v980;
					v638 = v2157;
				end
			end
		end
	end
	return v637;
end
v98.RenderStepped:Connect(function()
	if _G.AimNearest then
		local v1823 = v110();
		if v1823 then
			_G.Aim_Players = v1823;
		end
	end
end);
local v111 = getrawmetatable(game);
local v112 = v111.__namecall;
setreadonly(v111, false);
v111.__namecall = newcclosure(function(...)
	local v639 = getnamecallmethod();
	local v640 = {
		...
	};
	if (tostring(v639) == "FireServer") then
		if (tostring(v640[1]) == "RemoteEvent") then
			if ((tostring(v640[2]) ~= "true") and (tostring(v640[2]) ~= "false")) then
				if (_G.AimNearest and _G.Aim_Players) then
					v640[2] = _G.Aim_Players.Character.HumanoidRootPart.Position;
					return v112(unpack(v640));
				end
			end
		end
	end
	return v112(...);
end);
setreadonly(v111, true);
v59:Toggle("Enabled PvP", false, function(v641)
	_G.EnabledPvP = v641;
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
v59:Button("Set Position Spawn", function()
	_G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	Com();
end);
v59:Toggle("Safe Mode", false, function(v643)
	_G.Safe_Mode = v643;
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
v59:Button("Respawn", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
	wait();
end);
v59:Seperator("Other Players");
v59:Toggle("Auto Active V3", _G.ActiveV3, function(v644)
	_G.ActiveV3 = v644;
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
v59:Toggle("Auto Active V4", _G.ActiveV4, function(v645)
	_G.ActiveV4 = v645;
end);
spawn(function()
	while task.wait() do
		if _G.ActiveV4 then
			pcall(function()
				if (game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and (game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1) and game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and  not game.Players.LocalPlayer.Character.RaceTransformed.Value) then
					local v2202 = {
						[1] = true
					};
					game:GetService("Players").LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(unpack(v2202));
				end
			end);
		end
	end
end);
v59:Toggle("Walk on Water", true, function(v646)
	_G.WalkWater = v646;
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
v59:Toggle("NoClip", _G.NoClip, function(v647)
	_G.NoClip = v647;
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
v59:Seperator("Stats");
local v114 = v59:Label("Stat Points");
spawn(function()
	while wait() do
		pcall(function()
			v114:Set("Stat Points: "   .. tostring(game:GetService("Players")['LocalPlayer'].Data.Points.Value) );
		end);
	end
end);
local v115 = v59:Label("Melee: ");
local v116 = v59:Label("Defense: ");
local v117 = v59:Label("Sword: ");
local v118 = v59:Label("Gun: ");
local v119 = v59:Label("Fruit: ");
spawn(function()
	while wait() do
		pcall(function()
			v115:Set("Melee: "   .. game.Players.localPlayer.Data.Stats.Melee.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v116:Set("Defense: "   .. game.Players.localPlayer.Data.Stats.Defense.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v117:Set("Sword: "   .. game.Players.localPlayer.Data.Stats.Sword.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v118:Set("Gun: "   .. game.Players.localPlayer.Data.Stats.Gun.Level.Value );
		end);
	end
end);
spawn(function()
	while wait() do
		pcall(function()
			v119:Set("Fruit: "   .. game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value );
		end);
	end
end);
v59:Toggle("Auto Stats Kaitun", _G.Stats_Kaitun, function(v648)
	_G.Stats_Kaitun = v648;
end);
spawn(function()
	while wait() do
		pcall(function()
			if _G.Stats_Kaitun then
				if World1 then
					local v2203 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2203));
				elseif World2 then
					local v2622 = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2622));
					local v2622 = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
					};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2622));
				end
			end
		end);
	end
end);
v59:Toggle("Melee", false, function(v649)
	melee = v649;
end);
v59:Toggle("Defense", false, function(v650)
	defense = v650;
end);
v59:Toggle("Sword", false, function(v651)
	sword = v651;
end);
v59:Toggle("Gun", false, function(v652)
	gun = v652;
end);
v59:Toggle("Devil Fruit", false, function(v653)
	demonfruit = v653;
end);
PointStats = 100;
spawn(function()
	while wait() do
		if (game.Players.localPlayer.Data.Points.Value >= PointStats) then
			if melee then
				local v2158 = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2158));
			end
			if defense then
				local v2159 = {
					[1] = "AddPoint",
					[2] = "Defense",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2159));
			end
			if sword then
				local v2160 = {
					[1] = "AddPoint",
					[2] = "Sword",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2160));
			end
			if gun then
				local v2161 = {
					[1] = "AddPoint",
					[2] = "Gun",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2161));
			end
			if demonfruit then
				local v2162 = {
					[1] = "AddPoint",
					[2] = "Demon Fruit",
					[3] = PointStats
				};
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v2162));
			end
		end
	end
end);
v61:Seperator("Raid");
_G.SelectChip = selectraids or "" ;
Raidslist = {};
RaidsModule = require(game.ReplicatedStorage.Raids);
for v654, v655 in pairs(RaidsModule.raids) do
	table.insert(Raidslist, v655);
end
for v656, v657 in pairs(RaidsModule.advancedRaids) do
	table.insert(Raidslist, v657);
end
v61:Dropdown("Select Chips", Raidslist, function(v658)
	_G.SelectChip = v658;
end);
v61:Toggle("Auto Select Dungeon", _G.SelectDungeon, function(v659)
	_G.SelectDungeon = v659;
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
v61:Toggle("Auto Buy Chip", _G.BuyChip, function(v660)
	_G.BuyChip = v660;
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
v61:Button("Buy Chip Select", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip);
end);
v61:Toggle("Auto Start Go To Dungeon", _G.StartRaid, function(v661)
	_G.StartRaid = v661;
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
v61:Button("Start Go To Dungeon", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
	elseif World3 then
		fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
	end
end);
v61:Toggle("Auto Next Island And Kill Mob", false, function(v662)
	_G.Dungeon = v662;
	StopTween(_G.Dungeon);
end);
function IsIslandRaid(v663)
	if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island "   .. v663 ) then
		min = 4500;
		for v1968, v1969 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
			if ((v1969.Name == ("Island "   .. v663)) and ((v1969.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min)) then
				min = (v1969.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			end
		end
		for v1970, v1971 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
			if ((v1971.Name == ("Island "   .. v663)) and ((v1971.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min)) then
				return v1971;
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
	for v981, v982 in pairs(TableIslandsRaid) do
		if (IsIslandRaid(v982) and ((IsIslandRaid(v982).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500)) then
			return IsIslandRaid(v982);
		end
	end
end
function attackNearbyEnemies()
	local v664 = {};
	for v983, v984 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if (v984:FindFirstChild("HumanoidRootPart") and v984:FindFirstChild("Humanoid") and (v984.Humanoid.Health > 0)) then
			local v1972 = (v984.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
			if (v1972 <= 1000) then
				table.insert(v664, v984);
			end
		end
	end
	for v985, v986 in pairs(v664) do
		repeat
			if (v986:FindFirstChild("Humanoid") and (v986.Humanoid.Health > 0)) then
				EquipWeapon(_G.SelectWeapon);
				topos(v986.HumanoidRootPart.CFrame * Pos );
				wait(0.1);
			end
		until  not v986:FindFirstChild("Humanoid") or (v986.Humanoid.Health <= 0)
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
				local v2068 = game:GetService("Players").LocalPlayer;
				local v2069 = game:GetService("Workspace").Enemies:GetChildren();
				local v2070 = v2068.Character and v2068.Character:FindFirstChild("HumanoidRootPart") and v2068.Character.HumanoidRootPart.Position ;
				if v2070 then
					for v2412, v2413 in pairs(v2069) do
						if (v2413:FindFirstChild("Humanoid") and v2413:FindFirstChild("HumanoidRootPart") and (v2413.Humanoid.Health > 0)) then
							local v2762 = (v2413.HumanoidRootPart.Position - v2070).Magnitude;
							if (v2762 <= 1000) then
								pcall(function()
									repeat
										wait();
										sethiddenproperty(v2068, "SimulationRadius", math.huge);
										v2413.Humanoid.Health = 0;
										v2413.HumanoidRootPart.CanCollide = false;
									until  not _G.Kill_Aura or  not v2413.Parent or (v2413.Humanoid.Health <= 0)
								end);
							end
						end
					end
				end
			end
		end
	end);
end);
v61:Toggle("Auto Awakener", _G.Awakener, function(v665)
	_G.Awakener = v665;
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
	v61:Button("Teleport to Lab", function()
		topos(CFrame.new( -6438.73535, 250.645355, -4501.50684));
	end);
elseif World3 then
	v61:Button("Teleport to Lab", function()
		topos(CFrame.new( -5017.40869, 314.844055, -2823.0127, -0.925743818, 4.482175e-8, -0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, -0.925743818));
	end);
end
if World2 then
	v61:Button("Awakening Room", function()
		topos(CFrame.new(266.227783, 1.39509034, 1857.00732));
	end);
elseif World3 then
	v61:Button("Awakening Room", function()
		topos(CFrame.new( -11571.440429688, 49.172668457031, -7574.7368164062));
	end);
end
v61:Seperator("Misc KoKo Sword");
v61:Toggle("Auto Law", _G.OderSword, function(v666)
	_G.OderSword = v666;
	StopTween(_G.OderSword);
end);
v61:Toggle("Auto Law Hop", _G.OderSwordHop, function(v667)
	_G.OderSwordHop = v667;
end);
spawn(function()
	while wait() do
		if _G.OderSword then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for v2414, v2415 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v2415.Name == "Order [Lv. 1250] [Raid Boss]") then
							if (v2415:FindFirstChild("Humanoid") and v2415:FindFirstChild("HumanoidRootPart") and (v2415.Humanoid.Health > 0)) then
								repeat
									task.wait();
									AutoHaki();
									EquipWeapon(_G.SelectWeapon);
									v2415.HumanoidRootPart.CanCollide = false;
									v2415.Humanoid.WalkSpeed = 0;
									v2415.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
									topos(v2415.HumanoidRootPart.CFrame * Pos );
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
								until  not _G.OderSword or  not v2415.Parent or (v2415.Humanoid.Health <= 0)
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
v61:Button("Buy Microchip Law Boss", function()
	local v668 = {
		[1] = "BlackbeardReward",
		[2] = "Microchip",
		[3] = "2"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v668));
end);
v61:Button("Start Go To Raid Law Boss", function()
	if World2 then
		fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
	end
end);
v62:Seperator("World");
v62:Button("Teleport To Old World", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain");
end);
v62:Button("Teleport To Second Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
end);
v62:Button("Teleport To Third Sea", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
end);
v62:Seperator("Teleport Fast");
if World1 then
	v62:Dropdown("Select Island", {
		"Sky Island 1",
		"Sky Island 2",
		"Under Water Island",
		"Under Water Island Entrace"
	}, function(v1824)
		_G.SelectFast = v1824;
	end);
end
if World2 then
	v62:Dropdown("Select Island", {
		"Flamingo Mansion",
		"Flamingo Room",
		"Cursed Ship",
		"Zombie Island"
	}, function(v1825)
		_G.SelectFast = v1825;
	end);
end
if World3 then
	v62:Dropdown("Select Island", {
		"Mansion",
		"Hydra Island",
		"Castle on the Sea",
		"Floating Turtle",
		"Beautiful Pirate"
	}, function(v1826)
		_G.SelectFast = v1826;
	end);
end
v62:Toggle("Teleport Fast", false, function(v669)
	_G.TeleFast = v669;
	if (_G.TeleFast == true) then
		repeat
			wait();
			if (_G.SelectFast == "Sky Island 1") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -4652, 873, -1754));
			elseif (_G.SelectFast == "Sky Island 2") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -7895, 5547, -380));
			elseif (_G.SelectFast == "Under Water Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61164, 5, 1820));
			elseif (_G.SelectFast == "Under Water Island Entrace") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3865, 5, -1926));
			elseif (_G.SelectFast == "Flamingo Mansion") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -317, 331, 597));
			elseif (_G.SelectFast == "Flamingo Room") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2283, 15, 867));
			elseif (_G.SelectFast == "Cursed Ship") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 125, 32853));
			elseif (_G.SelectFast == "Zombie Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -6509, 83, -133));
			elseif (_G.SelectFast == "Mansion") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12471, 374, -7551));
			elseif (_G.SelectFast == "Hydra Island") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5756, 610, -282));
			elseif (_G.SelectFast == "Castle on the Sea") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -5092, 315, -3130));
			elseif (_G.SelectFast == "Floating Turtle") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new( -12001, 332, -8861));
			elseif (_G.SelectFast == "Beautiful Pirate") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5319, 23, -93));
			end
		until  not _G.TeleFast
	end
end);
v62:Seperator("Island");
if World1 then
	v62:Dropdown("Select Island", {
		"WindMill",
		"Marine",
		"Middle Town",
		"Jungle",
		"Pirate Village",
		"Desert",
		"Snow Island",
		"MarineFord",
		"Colosseum",
		"Sky Island 1",
		"Sky Island 2",
		"Sky Island 3",
		"Prison",
		"Magma Village",
		"Under Water Island",
		"Fountain City"
	}, function(v1827)
		_G.SelectIsland = v1827;
	end);
end
if World2 then
	v62:Dropdown("Select Island", {
		"The Cafe",
		"Frist Spot",
		"Dark Area",
		"Flamingo Mansion",
		"Flamingo Room",
		"Green Zone",
		"Zombie Island",
		"Two Snow Mountain",
		"Punk Hazard",
		"Cursed Ship",
		"Ice Castle",
		"Forgotten Island",
		"Ussop Island"
	}, function(v1828)
		_G.SelectIsland = v1828;
	end);
end
if World3 then
	v62:Dropdown("Select Island", {
		"Mansion",
		"Port Town",
		"Great Tree",
		"Castle On The Sea",
		"Hydra Island",
		"Floating Turtle",
		"Haunted Castle",
		"Ice Cream Island",
		"Peanut Island",
		"Cake Island",
		"Candy Cane Island",
		"Tiki Outpost"
	}, function(v1829)
		_G.SelectIsland = v1829;
	end);
end
v62:Toggle("Teleport", false, function(v670)
	_G.TeleportIsland = v670;
	if (_G.TeleportIsland == true) then
		repeat
			wait();
			if (_G.SelectIsland == "Middle Town") then
				topos(CFrame.new( -688, 15, 1585));
			elseif (_G.SelectIsland == "MarineFord") then
				topos(CFrame.new( -4810, 21, 4359));
			elseif (_G.SelectIsland == "Marine") then
				topos(CFrame.new( -2728, 25, 2056));
			elseif (_G.SelectIsland == "WindMill") then
				topos(CFrame.new(889, 17, 1434));
			elseif (_G.SelectIsland == "Desert") then
				topos(CFrame.new(945, 21, 4375));
			elseif (_G.SelectIsland == "Snow Island") then
				topos(CFrame.new(1298, 87, -1344));
			elseif (_G.SelectIsland == "Pirate Village") then
				topos(CFrame.new( -1173, 45, 3837));
			elseif (_G.SelectIsland == "Jungle") then
				topos(CFrame.new( -1614, 37, 146));
			elseif (_G.SelectIsland == "Prison") then
				topos(CFrame.new(4870, 6, 736));
			elseif (_G.SelectIsland == "Under Water Island") then
				topos(CFrame.new(61164, 5, 1820));
			elseif (_G.SelectIsland == "Colosseum") then
				topos(CFrame.new( -1535, 7, -3014));
			elseif (_G.SelectIsland == "Magma Village") then
				topos(CFrame.new( -5290, 9, 8349));
			elseif (_G.SelectIsland == "Sky Island 1") then
				topos(CFrame.new( -4814, 718, -2551));
			elseif (_G.SelectIsland == "Sky Island 2") then
				topos(CFrame.new( -4652, 873, -1754));
			elseif (_G.SelectIsland == "Sky Island 3") then
				topos(CFrame.new( -7895, 5547, -380));
			elseif (_G.SelectIsland == "Fountain City") then
				topos(CFrame.new(5128, 60, 4106));
			elseif (_G.SelectIsland == "The Cafe") then
				topos(CFrame.new( -382, 73, 290));
			elseif (_G.SelectIsland == "Frist Spot") then
				topos(CFrame.new( -11, 29, 2771));
			elseif (_G.SelectIsland == "Dark Area") then
				topos(CFrame.new(3494, 13, -3259));
			elseif (_G.SelectIsland == "Flamingo Mansion") then
				topos(CFrame.new( -317, 331, 597));
			elseif (_G.SelectIsland == "Flamingo Room") then
				topos(CFrame.new(2285, 15, 905));
			elseif (_G.SelectIsland == "Green Zone") then
				topos(CFrame.new( -2258, 73, -2696));
			elseif (_G.SelectIsland == "Zombie Island") then
				topos(CFrame.new( -5552, 194, -776));
			elseif (_G.SelectIsland == "Two Snow Mountain") then
				topos(CFrame.new(752, 408, -5277));
			elseif (_G.SelectIsland == "Punk Hazard") then
				topos(CFrame.new( -5897, 18, -5096));
			elseif (_G.SelectIsland == "Cursed Ship") then
				topos(CFrame.new(919, 125, 32869));
			elseif (_G.SelectIsland == "Ice Castle") then
				topos(CFrame.new(5505, 40, -6178));
			elseif (_G.SelectIsland == "Forgotten Island") then
				topos(CFrame.new( -3050, 240, -10178));
			elseif (_G.SelectIsland == "Ussop Island") then
				topos(CFrame.new(4816, 8, 2863));
			elseif (_G.SelectIsland == "Mansion") then
				topos(CFrame.new( -12471, 374, -7551));
			elseif (_G.SelectIsland == "Port Town") then
				topos(CFrame.new( -334, 7, 5300));
			elseif (_G.SelectIsland == "Castle On The Sea") then
				topos(CFrame.new( -5073, 315, -3153));
			elseif (_G.SelectIsland == "Hydra Island") then
				topos(CFrame.new(5756, 610, -282));
			elseif (_G.SelectIsland == "Great Tree") then
				topos(CFrame.new(2681, 1682, -7190));
			elseif (_G.SelectIsland == "Floating Turtle") then
				topos(CFrame.new( -12528, 332, -8658));
			elseif (_G.SelectIsland == "Haunted Castle") then
				topos(CFrame.new( -9517, 142, 5528));
			elseif (_G.SelectIsland == "Ice Cream Island") then
				topos(CFrame.new( -902, 79, -10988));
			elseif (_G.SelectIsland == "Peanut Island") then
				topos(CFrame.new( -2062, 50, -10232));
			elseif (_G.SelectIsland == "Cake Island") then
				topos(CFrame.new( -1897, 14, -11576));
			elseif (_G.SelectIsland == "Candy Cane Island") then
				topos(CFrame.new( -1038, 10, -14076));
			elseif (_G.SelectIsland == "Tiki Outpost") then
				topos(CFrame.new( -16224, 9, 439));
			end
		until  not _G.TeleportIsland
	end
	StopTween(_G.TeleportIsland);
end);
v63:Seperator("Abilities");
v63:Button("Buy Geppo [ 10,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
end);
v63:Button("Buy Buso Haki [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
end);
v63:Button("Buy Soru [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
end);
v63:Button("Buy Observation Haki [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
end);
v63:Toggle("Auto Buy Abilities", false, function(v671)
	Abilities = v671;
	while Abilities do
		wait(0.1);
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
	end
end);
v63:Seperator("Fighting Style");
v63:Button("Buy Black Leg [ 150,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
end);
v63:Button("Buy Electro [ 550,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
end);
v63:Button("Buy Fishman Karate [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
end);
v63:Button("Buy Dragon Claw [ 1,500 Fragments ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
end);
v63:Button("Buy Superhuman [ 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
end);
v63:Button("Buy Death Step [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
end);
v63:Button("Buy Sharkman Karate [ 5,000 Fragments 2,500,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
end);
v63:Button("Buy Electric Claw [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
end);
v63:Button("Buy Dragon Talon [ 5,000 Fragments 3,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
end);
v63:Button("Buy God Human [ 5,000 Fragments 5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
end);
v63:Button("Buy Sanguine Art [ 5,000 Fragments $5,000,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");
end);
v63:Seperator(" Sword ");
v63:Button("Cutlass [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
end);
v63:Button("Katana [ 1,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
end);
v63:Button("Iron Mace [ 25,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
end);
v63:Button("Dual Katana [ 12,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
end);
v63:Button("Triple Katana [ 60,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
end);
v63:Button("Pipe [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
end);
v63:Button("Dual-Headed Blade [ 400,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
end);
v63:Button("Bisento [ 1,200,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
end);
v63:Button("Soul Cane [ 750,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
end);
v63:Button("Pole v.2 [ 5,000 Fragments ]", function()
	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
end);
v63:Toggle("Yama Sword [ Elite Hunter 30 ]", _G.Yama, function(v672)
	_G.Yama = v672;
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
v63:Seperator(" Gun ");
v63:Button("Slingshot [ 5,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot");
end);
v63:Button("Musket [ 8,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket");
end);
v63:Button("Flintlock [ 10,500 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock");
end);
v63:Button("Refined Slingshot [ 30,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock");
end);
v63:Button("Refined Flintlock [ 65,000 Beli ]", function()
	local v673 = {
		[1] = "BuyItem",
		[2] = "Refined Flintlock"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v673));
end);
v63:Button("Cannon [ 100,000 Beli ]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon");
end);
v63:Button("Kabucha [ 1,500 Fragments]", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2");
end);
v63:Button("Bizarre Rifle [ 250 Ectoplasm ]", function()
	local v674 = "Ectoplasm";
	local v675 = "Buy";
	local v676 = 1;
	local v677 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v677:InvokeServer(v674, v675, v676);
	local v674 = "Ectoplasm";
	local v675 = "Buy";
	local v676 = 1;
	local v677 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
	v677:InvokeServer(v674, v675, v676);
end);
v63:Seperator("Stats");
v63:Button("Reset Stats (Use 2.5K Fragments)", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
end);
v63:Button("Random Race (Use 3K Fragments)", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1");
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
end);
v63:Button("Buy Cyborg (Use 2.5K Fragments)", function()
	local v678 = {
		[1] = "CyborgTrainer",
		[2] = "Buy"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v678));
end);
v63:Seperator("Accessories");
v63:Button("Black Cape [ 50,000 Beli ]", function()
	local v679 = {
		[1] = "BuyItem",
		[2] = "Black Cape"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v679));
end);
v63:Button("Swordsman Hat [ 150k Beli ]", function()
	local v680 = {
		[1] = "BuyItem",
		[2] = "Swordsman Hat"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v680));
end);
v63:Button("Tomoe Ring [ 500k Beli ]", function()
	local v681 = {
		[1] = "BuyItem",
		[2] = "Tomoe Ring"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v681));
end);
v64:Seperator("Sniper");
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
local v120 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {};
ShopDevilSell = {};
for v682, v683 in next, v120 do
	table.insert(Table_DevilFruitSniper, v683.Name);
	if v683.OnSale then
		table.insert(ShopDevilSell, v683.Name);
	end
end
_G.SelectFruit = "";
v64:Dropdown("Select Fruits Sniper", Table_DevilFruitSniper, function(v684)
	_G.SelectFruit = v684;
end);
v64:Toggle("Auto Buy Fruit Sniper", _G.BuyFruitSniper, function(v685)
	_G.BuyFruitSniper = v685;
end);
v64:Seperator("Others");
v64:Dropdown("Select Fruits Eat", Table_DevilFruitSniper, function(v686)
	_G.SelectFruitEat = v686;
end);
v64:Toggle("Auto Eat Fruit", _G.EatFruit, function(v687)
	_G.EatFruit = v687;
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
v64:Button("Random Fruit", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy");
end);
v64:Button("Open Devil Shop", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
	game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true;
end);
v64:Toggle("Auto Store Fruit", _G.StoreFruit, function(v689)
	_G.StoreFruit = v689;
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
v64:Toggle("Bring to Fruit", false, function(v690)
	_G.Grabfruit = v690;
end);
spawn(function()
	while wait(0.1) do
		if _G.Grabfruit then
			for v2071, v2072 in pairs(game.Workspace:GetChildren()) do
				if v2072:IsA("Tool") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2072.Handle.CFrame;
				end
			end
		end
	end
end);
v64:Toggle("Tween to Fruit", false, function(v691)
	_G.Tweenfruit = v691;
	StopTween(_G.Tweenfruit);
end);
spawn(function()
	while wait() do
		if _G.Tweenfruit then
			for v2073, v2074 in pairs(game.Workspace:GetChildren()) do
				if v2074:IsA("Tool") then
					topos(v2074.Handle.CFrame);
				end
			end
		end
	end
end);
v65:Seperator("Server");
v65:Button("Rejoin Server", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
end);
v65:Button("Server Hop", function()
	Hop();
end);
v65:Button("Hop To Lower Player", function()
	getgenv().AutoTeleport = true;
	getgenv().DontTeleportTheSameNumber = true;
	getgenv().CopytoClipboard = false;
	if  not game:IsLoaded() then
		print("Game is loading waiting...");
	end
	local v695 = math.huge;
	local v696;
	local v697;
	local v698 = "https://games.roblox.com/v1/games/"   .. game.PlaceId   .. "/servers/Public?sortOrder=Asc&limit=100" ;
	function serversearch()
		for v1830, v1831 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v698)).data) do
			if ((type(v1831) == "table") and (v1831.playing ~= nil) and (v695 > v1831.playing)) then
				v696 = v1831.maxPlayers;
				v695 = v1831.playing;
				v697 = v1831.id;
			end
		end
	end
	function getservers()
		serversearch();
		for v1832, v1833 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(v698))) do
			if (v1832 == "nextPageCursor") then
				if v698:find("&cursor=") then
					local v2206 = v698:find("&cursor=");
					local v2207 = v698:sub(v2206);
					v698 = v698:gsub(v2207, "");
				end
				v698 = v698   .. "&cursor="   .. v1833 ;
				getservers();
			end
		end
	end
	getservers();
	if AutoTeleport then
		if DontTeleportTheSameNumber then
			if (( #game:GetService("Players"):GetPlayers() - 4) == v695) then
				return warn("It has same number of players (except you)");
			elseif (v697 == game.JobId) then
				return warn("Your current server is the most empty server atm");
			end
		end
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v697);
	end
end);
v65:Button("Copy Job Id", function()
	setclipboard(tostring(game.JobId));
end);
v65:Textbox("Place Job Id", "Place Job Id", true, function(v699)
	_G.Job = v699;
end);
v65:Button("Join Sever", function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer);
end);
v65:Seperator("Misc");
v65:Button("Title Name", function()
	local v700 = {
		[1] = "getTitles"
	};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v700));
	game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true;
end);
v65:Button("Color Haki", function()
	game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true;
end);
v65:Seperator("Teams");
v65:Button("Join Pirates Team", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
end);
v65:Button("Join Marines Team", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines");
end);
v65:Seperator(" Misc ");
v65:Toggle("Anti AFK", true, function()
	local v703 = game:GetService("VirtualUser");
	repeat
		wait();
	until game:IsLoaded()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new());
		v703:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
		wait(1);
		v703:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	end);
end);
v65:Seperator("Codes");
local v121 = {
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
v65:Button("Redeem All Codes", function()
	function RedeemCode(v987)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v987);
	end
	for v988, v989 in pairs(v121) do
		RedeemCode(v989);
	end
end);
v65:Dropdown("Selected Codes Reset stat", {
	"NOOB_REFUND",
	"SUB2GAMERROBOT_RESET1",
	"Sub2UncleKizaru"
}, function(v704)
	_G.CodeSelect = v704;
end);
v65:Button("Redeem Code (Selected Codes)", function()
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect);
end);
v65:Seperator("State");
v65:Dropdown("Select Haki State", {
	"State 0",
	"State 1",
	"State 2",
	"State 3",
	"State 4",
	"State 5"
}, function(v705)
	_G.SelectStateHaki = v705;
end);
v65:Button("Change Buso Haki State", function()
	if (_G.SelectStateHaki == "State 0") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 0);
	elseif (_G.SelectStateHaki == "State 1") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 1);
	elseif (_G.SelectStateHaki == "State 2") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 2);
	elseif (_G.SelectStateHaki == "State 3") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 3);
	elseif (_G.SelectStateHaki == "State 4") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 4);
	elseif (_G.SelectStateHaki == "State 5") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage", 5);
	end
end);
local v122 = require(game.ReplicatedStorage.Util.CameraShaker);
v122:Stop();
local v123 = game:GetService("Players");
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "HTG Hub",
	Text = "Loading Done!",
	Icon = "rbxthumb://type=Asset&id=133662246764578&w=150&h=150",
	Duration = 10
});

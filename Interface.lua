--[[
    NEVERLOSE UI - INTERFACE V12 LENGKAP - FILE UTUH
    Ganti langsung file di: https://github.com/zena48520-droid/NeverLose/blob/main/Interface.lua
    Cara: upload file ini, timpa yang lama, URL raw tetep sama.
    Isi: SEMUA yang lama + SEMUA fungsi baru. Ga ada yang dihapus.
    Lama: AddWindow, AddTab, AddSection, AddButton, AddLabel, AddToggle, AddKeybind, AddSlider, AddDropdown, Hide, Show, KeySystem, Notification, Theme, GUI Settings (warna / opacity / size / rainbow / helper button).
    Baru V11+V12: AddInput, AddTextbox, AddNumberInput, AddPassword, AddParagraph, AddDivider, AddSeparator, AddTitle, AddColorPicker, AddColor, AddMultiDropdown, AddSearchInput, AddSearchDropdown, AddCycleButton, AddProgressBar, AddCopyButton.
    Aturan file ini: 1 baris = 1 perintah, tanpa pcall, callback dibungkus newcclosure kalau ada.
]]
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local InputService = game:GetService("UserInputService")
local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:FindFirstChild("CoreGui") or LocalPlayer.PlayerGui
local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end)
local OXY_NC = newcclosure or function(f)
return f
end
local function cretate_button(asd)
local button = Instance.new("TextButton")
button.Size = UDim2.new(1, 0, 1, 0)
button.BackgroundTransparency = 1
button.TextTransparency = 1
button.Text = ""
button.Parent = asd
button.ZIndex = 5000
return button
end
local function scrolling_connect(scrollframe)
task.spawn(function()
local addres = 45
local UIListLayout = scrollframe:WaitForChild("UIListLayout", 9999999)
scrollframe.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + addres)
UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(OXY_NC(function()
scrollframe.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + addres)
end))
end)
end
local function GetImageData(Name, Image)
Name = tostring(Name or "ads")
if Name:find("^rbxassetid://") then
Image.Image = Name
Image.ImageRectOffset = Vector2.zero
Image.ImageRectSize = Vector2.zero
return
end
Name = Name:lower()
local Sprite = "rbxassetid://3926305904"
if Name == "ads" then
Image.Image = Sprite
Image.ImageRectOffset = Vector2.new(205, 565)
Image.ImageRectSize = Vector2.new(35, 35)
elseif Name == "list" then
Image.Image = Sprite
Image.ImageRectOffset = Vector2.new(485, 205)
Image.ImageRectSize = Vector2.new(35, 35)
elseif Name == "folder" then
Image.Image = Sprite
Image.ImageRectOffset = Vector2.new(805, 45)
Image.ImageRectSize = Vector2.new(35, 35)
elseif Name == "earth" then
Image.Image = Sprite
Image.ImageRectOffset = Vector2.new(604, 324)
Image.ImageRectSize = Vector2.new(35, 35)
elseif Name == "locked" then
Image.Image = Sprite
Image.ImageRectOffset = Vector2.new(524, 644)
Image.ImageRectSize = Vector2.new(35, 35)
elseif Name == "home" then
Image.Image = Sprite
Image.ImageRectOffset = Vector2.new(964, 205)
Image.ImageRectSize = Vector2.new(35, 35)
elseif Name == "mouse" then
Image.Image = "rbxassetid://3515393063"
elseif Name == "user" then
Image.Image = "rbxassetid://10494577250"
end
end
local NEVERLOSE = {}
NEVERLOSE.auto_function = {}
NEVERLOSE.Themes = {}
NEVERLOSE.Themes.BlackgroundColor = Color3.fromRGB(0, 0, 0)
NEVERLOSE.Themes.BlackColor = Color3.fromRGB(0, 0, 0)
NEVERLOSE.Themes.HeaderColor = Color3.fromRGB(0, 0, 0)
NEVERLOSE.Themes.TraceColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.MainColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.MainColorDrop = Color3.fromRGB(0, 0, 0)
NEVERLOSE.Themes.SectionColor = Color3.fromRGB(0, 0, 0)
NEVERLOSE.Themes.StrokeColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.ButtonBlackgroundColor = Color3.fromRGB(0, 0, 0)
NEVERLOSE.Themes.TextColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.HeadNameStrokeTransparency = 1
NEVERLOSE._Version = "12.C-BLACKWHITE-INPUT-LENGKAP"
NEVERLOSE._Name = "NEVERLOSE"
print(NEVERLOSE._Name .. ":" .. NEVERLOSE._Version .. ":" .. [[https://neverlose.cc/]] .. ": UI BY OWNER BEDOL HUB", "__ui")
function NEVERLOSE:Theme(name)
name = tostring(name or "original"):lower()
if name == "original" then
NEVERLOSE.Themes.BlackgroundColor = Color3.fromRGB(1, 17, 33)
NEVERLOSE.Themes.BlackColor = Color3.fromRGB(9, 9, 19)
NEVERLOSE.Themes.HeaderColor = Color3.fromRGB(7, 7, 17)
NEVERLOSE.Themes.TraceColor = Color3.fromRGB(0, 34, 44)
NEVERLOSE.Themes.MainColor = Color3.fromRGB(19, 176, 243)
NEVERLOSE.Themes.MainColorDrop = Color3.fromRGB(3, 6, 25)
NEVERLOSE.Themes.SectionColor = Color3.fromRGB(0, 17, 35)
NEVERLOSE.Themes.StrokeColor = Color3.fromRGB(3, 35, 50)
NEVERLOSE.Themes.ButtonBlackgroundColor = Color3.fromRGB(2, 5, 22)
NEVERLOSE.Themes.TextColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.HeadNameStrokeTransparency = 0.720
end
if name == "nightly" then
NEVERLOSE.Themes.BlackgroundColor = Color3.fromRGB(43, 43, 43)
NEVERLOSE.Themes.BlackColor = Color3.fromRGB(16, 16, 16)
NEVERLOSE.Themes.HeaderColor = Color3.fromRGB(47, 47, 47)
NEVERLOSE.Themes.TraceColor = Color3.fromRGB(100, 100, 100)
NEVERLOSE.Themes.MainColor = Color3.fromRGB(255, 140, 0)
NEVERLOSE.Themes.MainColorDrop = Color3.fromRGB(65, 54, 31)
NEVERLOSE.Themes.SectionColor = Color3.fromRGB(26, 26, 26)
NEVERLOSE.Themes.StrokeColor = Color3.fromRGB(50, 50, 50)
NEVERLOSE.Themes.ButtonBlackgroundColor = Color3.fromRGB(26, 26, 26)
NEVERLOSE.Themes.TextColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.HeadNameStrokeTransparency = 0.720
end
if name == "dark" then
NEVERLOSE.Themes.BlackgroundColor = Color3.fromRGB(37, 37, 37)
NEVERLOSE.Themes.BlackColor = Color3.fromRGB(8, 8, 8)
NEVERLOSE.Themes.HeaderColor = Color3.fromRGB(8, 8, 8)
NEVERLOSE.Themes.TraceColor = Color3.fromRGB(25, 25, 25)
NEVERLOSE.Themes.MainColor = Color3.fromRGB(0, 172, 247)
NEVERLOSE.Themes.MainColorDrop = Color3.fromRGB(64, 65, 67)
NEVERLOSE.Themes.SectionColor = Color3.fromRGB(13, 13, 13)
NEVERLOSE.Themes.StrokeColor = Color3.fromRGB(28, 28, 28)
NEVERLOSE.Themes.ButtonBlackgroundColor = Color3.fromRGB(13, 13, 13)
NEVERLOSE.Themes.TextColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.HeadNameStrokeTransparency = 0.720
end
if name == "white" then
NEVERLOSE.Themes.BlackgroundColor = Color3.fromRGB(37, 37, 37)
NEVERLOSE.Themes.BlackColor = Color3.fromRGB(8, 8, 8)
NEVERLOSE.Themes.HeaderColor = Color3.fromRGB(8, 8, 8)
NEVERLOSE.Themes.TraceColor = Color3.fromRGB(25, 25, 25)
NEVERLOSE.Themes.MainColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.MainColorDrop = Color3.fromRGB(64, 65, 67)
NEVERLOSE.Themes.SectionColor = Color3.fromRGB(13, 13, 13)
NEVERLOSE.Themes.StrokeColor = Color3.fromRGB(28, 28, 28)
NEVERLOSE.Themes.ButtonBlackgroundColor = Color3.fromRGB(13, 13, 13)
NEVERLOSE.Themes.TextColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.HeadNameStrokeTransparency = 1
end
if name == "light" then
NEVERLOSE.Themes.BlackgroundColor = Color3.fromRGB(37, 37, 37)
NEVERLOSE.Themes.BlackColor = Color3.fromRGB(8, 8, 8)
NEVERLOSE.Themes.HeaderColor = Color3.fromRGB(8, 8, 8)
NEVERLOSE.Themes.TraceColor = Color3.fromRGB(25, 25, 25)
NEVERLOSE.Themes.MainColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.MainColorDrop = Color3.fromRGB(64, 65, 67)
NEVERLOSE.Themes.SectionColor = Color3.fromRGB(13, 13, 13)
NEVERLOSE.Themes.StrokeColor = Color3.fromRGB(28, 28, 28)
NEVERLOSE.Themes.ButtonBlackgroundColor = Color3.fromRGB(13, 13, 13)
NEVERLOSE.Themes.TextColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.HeadNameStrokeTransparency = 1
end
if name == "branco" then
NEVERLOSE.Themes.BlackgroundColor = Color3.fromRGB(37, 37, 37)
NEVERLOSE.Themes.BlackColor = Color3.fromRGB(8, 8, 8)
NEVERLOSE.Themes.HeaderColor = Color3.fromRGB(8, 8, 8)
NEVERLOSE.Themes.TraceColor = Color3.fromRGB(25, 25, 25)
NEVERLOSE.Themes.MainColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.MainColorDrop = Color3.fromRGB(64, 65, 67)
NEVERLOSE.Themes.SectionColor = Color3.fromRGB(13, 13, 13)
NEVERLOSE.Themes.StrokeColor = Color3.fromRGB(28, 28, 28)
NEVERLOSE.Themes.ButtonBlackgroundColor = Color3.fromRGB(13, 13, 13)
NEVERLOSE.Themes.TextColor = Color3.fromRGB(255, 255, 255)
NEVERLOSE.Themes.HeadNameStrokeTransparency = 1
end
end
function NEVERLOSE:AddWindow(NameScriptHub, Text, UICustomSize)
local WindowFunctinos = {}
local ToggleUI = false
local ooldsize = UICustomSize or UDim2.new(0.200000003, 210, 0.200000003, 175)
local Tabs = {}
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame_3 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local DropShadow = Instance.new("ImageLabel")
local HeadName = Instance.new("TextLabel")
local TabButtons = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TabHose = Instance.new("Frame")
local outlo = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local outlo_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local outlo_3 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UserData = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local UserImage = Instance.new("ImageLabel")
local UICorner_8 = Instance.new("UICorner")
local UserName = Instance.new("TextLabel")
local headd2text = nil
local oldPositionClose = nil
ScreenGui.Name = "NEVERLOSE"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ProtectGui(ScreenGui)
ScreenGui:GetPropertyChangedSignal("Enabled"):Connect(OXY_NC(function()
if not ScreenGui.Enabled then
ScreenGui.Enabled = true
end
end))
Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = NEVERLOSE.Themes.BlackgroundColor
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = ooldsize
Frame.ZIndex = 2
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame
Frame_2.Name = "Frame_2"
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = NEVERLOSE.Themes.BlackColor
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0.08, 0)
Frame_2.Size = UDim2.new(1, 0, 0.92, 0)
Frame_2.ZIndex = 2
UICorner_2.CornerRadius = UDim.new(0, 2)
UICorner_2.Parent = Frame_2
Frame_3.Name = "Frame_3"
Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = NEVERLOSE.Themes.HeaderColor
Frame_3.BackgroundTransparency = 0.9
Frame_3.BorderSizePixel = 0
Frame_3.Size = UDim2.new(1, 0, 0.08, 0)
Frame_3.ZIndex = 2
UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Frame_3
DropShadow.Name = "DropShadow"
DropShadow.Parent = Frame
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0, -15, 0, -15)
DropShadow.Size = UDim2.new(1, 30, 1, 30)
DropShadow.ZIndex = 1
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.86
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
HeadName.Name = "HeadName"
HeadName.Parent = Frame
HeadName.BackgroundTransparency = 1
HeadName.BorderSizePixel = 0
HeadName.Position = UDim2.new(0.01, 0, 0.01, 0)
HeadName.Size = UDim2.new(0.205458686, 0, 0.133462012, 0)
HeadName.ZIndex = 5
HeadName.Font = Enum.Font.SourceSansBold
HeadName.Text = NameScriptHub or "NEVERLOSE"
HeadName.TextColor3 = NEVERLOSE.Themes.TextColor
HeadName.TextScaled = true
HeadName.TextSize = 14
HeadName.TextStrokeColor3 = NEVERLOSE.Themes.MainColor
HeadName.TextStrokeTransparency = NEVERLOSE.Themes.HeadNameStrokeTransparency
HeadName.TextWrapped = true
HeadName.TextXAlignment = Enum.TextXAlignment.Left
TabButtons.Name = "TabButtons"
TabButtons.Parent = Frame
TabButtons.BackgroundTransparency = 1
TabButtons.BorderSizePixel = 0
TabButtons.Position = UDim2.new(0.008, 0, 0.143, 0)
TabButtons.Size = UDim2.new(0.20, 0, 0.80, 0)
TabButtons.ZIndex = 3
TabButtons.ScrollBarThickness = 2
TabButtons.CanvasSize = UDim2.new(0, 0, 0, 0)
UIListLayout.Parent = TabButtons
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)
TabHose.Name = "TabHose"
TabHose.Parent = Frame
TabHose.BackgroundTransparency = 1
TabHose.BorderSizePixel = 0
TabHose.Position = UDim2.new(0.223, 0, 0.143, 0)
TabHose.Size = UDim2.new(0.765, 0, 0.82, 0)
TabHose.ZIndex = 3
outlo.Name = "outlo"
outlo.Parent = Frame
outlo.BackgroundColor3 = NEVERLOSE.Themes.TraceColor
outlo.BackgroundTransparency = 0.7
outlo.BorderSizePixel = 0
outlo.Position = UDim2.new(0.008, 0, 0.13, 0)
outlo.Size = UDim2.new(0.20, 0, 0.01, 0)
outlo.ZIndex = 3
UICorner_4.CornerRadius = UDim.new(0, 2)
UICorner_4.Parent = outlo
outlo_2.Name = "outlo_2"
outlo_2.Parent = Frame
outlo_2.BackgroundColor3 = NEVERLOSE.Themes.TraceColor
outlo_2.BackgroundTransparency = 0.7
outlo_2.BorderSizePixel = 0
outlo_2.Position = UDim2.new(0.223, 0, 0.13, 0)
outlo_2.Size = UDim2.new(0.765, 0, 0.01, 0)
outlo_2.ZIndex = 3
UICorner_5.CornerRadius = UDim.new(0, 2)
UICorner_5.Parent = outlo_2
outlo_3.Name = "outlo_3"
outlo_3.Parent = Frame
outlo_3.BackgroundColor3 = NEVERLOSE.Themes.TraceColor
outlo_3.BackgroundTransparency = 0.7
outlo_3.BorderSizePixel = 0
outlo_3.Position = UDim2.new(0.008, 0, 0.955, 0)
outlo_3.Size = UDim2.new(0.98, 0, 0.01, 0)
outlo_3.ZIndex = 3
UICorner_6.CornerRadius = UDim.new(0, 2)
UICorner_6.Parent = outlo_3
UserData.Name = "UserData"
UserData.Parent = Frame
UserData.BackgroundColor3 = NEVERLOSE.Themes.BlackColor
UserData.BorderSizePixel = 0
UserData.Position = UDim2.new(0.008, 0, 0.965, 0)
UserData.Size = UDim2.new(0.20, 0, 0.03, 0)
UserData.ZIndex = 3
UICorner_7.CornerRadius = UDim.new(0, 3)
UICorner_7.Parent = UserData
UserImage.Name = "UserImage"
UserImage.Parent = UserData
UserImage.BackgroundTransparency = 1
UserImage.BorderSizePixel = 0
UserImage.Position = UDim2.new(0.02, 0, 0.1, 0)
UserImage.Size = UDim2.new(0.15, 0, 0.8, 0)
UserImage.ZIndex = 4
UserImage.Image = "rbxassetid://10494577250"
UICorner_8.CornerRadius = UDim.new(0.5, 0)
UICorner_8.Parent = UserImage
UserName.Name = "UserName"
UserName.Parent = UserData
UserName.BackgroundTransparency = 1
UserName.BorderSizePixel = 0
UserName.Position = UDim2.new(0.20, 0, 0, 0)
UserName.Size = UDim2.new(0.78, 0, 1, 0)
UserName.ZIndex = 4
UserName.Font = Enum.Font.SourceSansSemibold
UserName.Text = LocalPlayer.DisplayName or LocalPlayer.Name
UserName.TextColor3 = NEVERLOSE.Themes.TextColor
UserName.TextScaled = true
UserName.TextSize = 12
UserName.TextWrapped = true
UserName.TextXAlignment = Enum.TextXAlignment.Left
if Text then
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.243000001, 0, 0.0250000004, 0)
TextLabel.Size = UDim2.new(0.666889787, 0, 0.0627818182, 0)
TextLabel.ZIndex = 5
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = Text or " "
TextLabel.TextColor3 = NEVERLOSE.Themes.TextColor
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextStrokeColor3 = NEVERLOSE.Themes.MainColor
TextLabel.TextStrokeTransparency = 0.900
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.RichText = true
headd2text = TextLabel
end
local toggle_valu = true
local function ui_toggleong(val)
local uptime = 1.4
if val then
TweenService:Create(Frame, TweenInfo.new(uptime, Enum.EasingStyle.Quint), { Size = ooldsize, Position = UDim2.new(0.5, 0, 0.5, 0) }):Play()
TweenService:Create(HeadName, TweenInfo.new(uptime / 3, Enum.EasingStyle.Quint), { Size = UDim2.new(0.205458686, 0, 0.133462012, 0), Position = UDim2.new(0.0100000342, 0, 0.010000146, 0) }):Play()
TweenService:Create(TabHose, TweenInfo.new(0.3), { Position = UDim2.new(0.223, 0, 0.143, 0) }):Play()
TweenService:Create(TabButtons, TweenInfo.new(0.3), { Position = UDim2.new(0.008, 0, 0.143, 0) }):Play()
if headd2text then
TweenService:Create(headd2text, TweenInfo.new(0.3), { TextTransparency = 0, TextStrokeTransparency = 0.900 }):Play()
end
TweenService:Create(UserName, TweenInfo.new(0.3), { TextTransparency = 0, TextStrokeTransparency = 1 }):Play()
TweenService:Create(UserImage, TweenInfo.new(0.3), { ImageTransparency = 0 }):Play()
TweenService:Create(outlo, TweenInfo.new(0.3), { BackgroundTransparency = 0.7 }):Play()
TweenService:Create(outlo_2, TweenInfo.new(0.3), { BackgroundTransparency = 0.7 }):Play()
TweenService:Create(outlo_3, TweenInfo.new(0.3), { BackgroundTransparency = 0.7 }):Play()
TweenService:Create(Frame_2, TweenInfo.new(0.3), { BackgroundTransparency = 0 }):Play()
TweenService:Create(Frame_3, TweenInfo.new(0.3), { BackgroundTransparency = 0.9 }):Play()
TweenService:Create(DropShadow, TweenInfo.new(0.3), { ImageTransparency = 0.86 }):Play()
else
oldPositionClose = Frame.Position
TweenService:Create(Frame, TweenInfo.new(uptime, Enum.EasingStyle.Quint), { Size = UDim2.new(0.14, 0, 0.14, 0), Position = oldPositionClose }):Play()
TweenService:Create(HeadName, TweenInfo.new(uptime / 1.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0.9, 0, 0.5, 0), Position = UDim2.new(0.046, 0, 0.24, 0) }):Play()
TweenService:Create(TabHose, TweenInfo.new(0.3), { Position = UDim2.new(0.223, 0, 1.5, 0) }):Play()
TweenService:Create(TabButtons, TweenInfo.new(0.3), { Position = UDim2.new(0.008, 0, 1.5, 0) }):Play()
if headd2text then
TweenService:Create(headd2text, TweenInfo.new(0.3), { TextTransparency = 1, TextStrokeTransparency = 1 }):Play()
end
TweenService:Create(UserName, TweenInfo.new(0.3), { TextTransparency = 1 }):Play()
TweenService:Create(UserImage, TweenInfo.new(0.3), { ImageTransparency = 1 }):Play()
TweenService:Create(outlo, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
TweenService:Create(outlo_2, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
TweenService:Create(outlo_3, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
TweenService:Create(Frame_2, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
TweenService:Create(Frame_3, TweenInfo.new(0.3), { BackgroundTransparency = 1 }):Play()
TweenService:Create(DropShadow, TweenInfo.new(0.3), { ImageTransparency = 1 }):Play()
end
end
local function makeTabButton(tabName, iconId)
local Btn = Instance.new("TextButton")
local UICornerBtn = Instance.new("UICorner")
local Icon = Instance.new("ImageLabel")
local Label = Instance.new("TextLabel")
Btn.Name = "TabBtn"
Btn.Parent = TabButtons
Btn.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
Btn.BackgroundTransparency = 0.55
Btn.BorderSizePixel = 0
Btn.Size = UDim2.new(1, 0, 0, 32)
Btn.ZIndex = 4
Btn.Text = ""
Btn.AutoButtonColor = false
UICornerBtn.CornerRadius = UDim.new(0, 3)
UICornerBtn.Parent = Btn
Icon.Name = "Icon"
Icon.Parent = Btn
Icon.BackgroundTransparency = 1
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.05, 0, 0.15, 0)
Icon.Size = UDim2.new(0.22, 0, 0.7, 0)
Icon.ZIndex = 5
Icon.ImageTransparency = 0.3
if iconId then
if tostring(iconId):find("rbxassetid") then
Icon.Image = tostring(iconId)
else
GetImageData(iconId, Icon)
end
end
Label.Name = "Label"
Label.Parent = Btn
Label.BackgroundTransparency = 1
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0.30, 0, 0, 0)
Label.Size = UDim2.new(0.68, 0, 1, 0)
Label.ZIndex = 5
Label.Font = Enum.Font.SourceSansSemibold
Label.Text = tabName or "Tab"
Label.TextColor3 = NEVERLOSE.Themes.TextColor
Label.TextScaled = true
Label.TextSize = 13
Label.TextWrapped = true
Label.TextXAlignment = Enum.TextXAlignment.Left
Label.TextTransparency = 0.3
return Btn, Icon, Label
end
function WindowFunctinos:AddTab(TabName, IconId)
local TabFunctions = {}
local TabFrame = Instance.new("ScrollingFrame")
local TabLayout = Instance.new("UIListLayout")
local TabPadding = Instance.new("UIPadding")
TabFrame.Name = "TabFrame"
TabFrame.Parent = TabHose
TabFrame.BackgroundTransparency = 1
TabFrame.BorderSizePixel = 0
TabFrame.Size = UDim2.new(1, 0, 1, 0)
TabFrame.ZIndex = 3
TabFrame.Visible = false
TabFrame.ScrollBarThickness = 2
TabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
TabLayout.Parent = TabFrame
TabLayout.FillDirection = Enum.FillDirection.Horizontal
TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabLayout.Padding = UDim.new(0, 8)
TabLayout.Wraps = true
TabPadding.Parent = TabFrame
TabPadding.PaddingLeft = UDim.new(0, 2)
TabPadding.PaddingRight = UDim.new(0, 2)
TabPadding.PaddingTop = UDim.new(0, 2)
TabPadding.PaddingBottom = UDim.new(0, 2)
local tabBtn, tabIcon, tabLabel = makeTabButton(TabName, IconId)
local function selectTab()
for _, t in ipairs(Tabs) do
if t.frame then
t.frame.Visible = false
end
if t.label then
t.label.TextTransparency = 0.3
end
if t.icon then
t.icon.ImageTransparency = 0.3
end
if t.btn then
t.btn.BackgroundTransparency = 0.55
end
end
TabFrame.Visible = true
tabLabel.TextTransparency = 0
tabIcon.ImageTransparency = 0
tabBtn.BackgroundTransparency = 0.2
end
tabBtn.MouseButton1Click:Connect(OXY_NC(function()
selectTab()
end))
Tabs[#Tabs + 1] = { frame = TabFrame, label = tabLabel, icon = tabIcon, btn = tabBtn }
if #Tabs == 1 then
selectTab()
end
function TabFunctions:AddSection(SectionName, Side)
local Section = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UICornerSec = Instance.new("UICorner")
local Header = Instance.new("TextLabel")
local lay = Instance.new("Frame")
local SectionLayout = Instance.new("UIListLayout")
local SectionPadding = Instance.new("UIPadding")
local section_value = true
Section.Name = "Section"
Section.Parent = TabFrame
Section.BackgroundColor3 = NEVERLOSE.Themes.SectionColor
Section.BorderSizePixel = 0
Section.Size = UDim2.new(0.48, 0, 0, 200)
Section.ZIndex = 4
Section.ClipsDescendants = false
UICornerSec.CornerRadius = UDim.new(0, 4)
UICornerSec.Parent = Section
UIStroke.Thickness = 0.5
UIStroke.Color = NEVERLOSE.Themes.StrokeColor
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = Section
Header.Name = "Header"
Header.Parent = Section
Header.BackgroundTransparency = 1
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0.05, 0, 0, 2)
Header.Size = UDim2.new(0.9, 0, 0, 20)
Header.ZIndex = 5
Header.Font = Enum.Font.SourceSansBold
Header.Text = SectionName or "Section"
Header.TextColor3 = NEVERLOSE.Themes.TextColor
Header.TextScaled = true
Header.TextSize = 13
Header.TextWrapped = true
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.TextTransparency = 0
lay.Name = "lay"
lay.Parent = Section
lay.BackgroundTransparency = 1
lay.BorderSizePixel = 0
lay.Position = UDim2.new(0, 0, 0, 24)
lay.Size = UDim2.new(1, 0, 1, -24)
lay.ZIndex = 4
SectionLayout.Parent = lay
SectionLayout.FillDirection = Enum.FillDirection.Vertical
SectionLayout.SortOrder = Enum.SortOrder.LayoutOrder
SectionLayout.Padding = UDim.new(0, 4)
SectionLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
SectionPadding.Parent = lay
SectionPadding.PaddingTop = UDim.new(0, 2)
SectionPadding.PaddingBottom = UDim.new(0, 4)
local function update_section_size(force)
local y = 28
for _, child in ipairs(lay:GetChildren()) do
if child:IsA("GuiObject") then
if child.Visible then
y = y + child.AbsoluteSize.Y + 4
end
end
end
if y < 60 then
y = 60
end
Section.Size = UDim2.new(0.48, 0, 0, y)
TabFrame.CanvasSize = UDim2.new(0, 0, 0, 400)
end
lay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(OXY_NC(function()
update_section_size()
end))
Section.InputBegan:Connect(OXY_NC(function()
update_section_size()
end))
update_section_size()
local sectionfunc = {}
local function newRow(nameFor, aspect)
local Row = Instance.new("Frame")
local Aspect = Instance.new("UIAspectRatioConstraint")
local Corner = Instance.new("UICorner")
local LabelText = Instance.new("TextLabel")
Row.Name = nameFor or "Row"
Row.Parent = lay
Row.BackgroundTransparency = 1
Row.BorderSizePixel = 0
Row.Size = UDim2.new(0.899999976, 0, 0, 32)
Row.ZIndex = 5
Aspect.Parent = Row
Aspect.AspectRatio = aspect or 7
Aspect.AspectType = Enum.AspectType.ScaleWithParentSize
Corner.CornerRadius = UDim.new(0, 3)
Corner.Parent = Row
LabelText.Name = "LabelText"
LabelText.Parent = Row
LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
LabelText.BackgroundTransparency = 1
LabelText.BorderSizePixel = 0
LabelText.Position = UDim2.new(0.30, 0, 0.5, 0)
LabelText.Size = UDim2.new(0.60, 0, 0.75, 0)
LabelText.ZIndex = 6
LabelText.Font = Enum.Font.SourceSansSemibold
LabelText.Text = ""
LabelText.TextColor3 = NEVERLOSE.Themes.TextColor
LabelText.TextScaled = true
LabelText.TextSize = 14
LabelText.TextWrapped = true
LabelText.TextXAlignment = Enum.TextXAlignment.Left
LabelText.TextTransparency = 0.3
return Row, LabelText
end
local function newRightBox(parentRow)
local Box = Instance.new("Frame")
local Corner2 = Instance.new("UICorner")
local Stroke2 = Instance.new("UIStroke")
Box.Name = "RightBox"
Box.Parent = parentRow
Box.AnchorPoint = Vector2.new(1, 0.5)
Box.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
Box.BackgroundTransparency = 0.5
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.998, 0, 0.5, 0)
Box.Size = UDim2.new(0.38, 0, 0.6, 0)
Box.ZIndex = 6
Corner2.CornerRadius = UDim.new(0, 3)
Corner2.Parent = Box
Stroke2.Thickness = 0.5
Stroke2.Color = NEVERLOSE.Themes.StrokeColor
Stroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Stroke2.Parent = Box
return Box, Stroke2
end
function sectionfunc:AddButton(ButtonName, callback)
callback = callback or function()
end
local Button, LabelText = newRow("Button", 7)
Button.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
Button.BackgroundTransparency = 0.55
local BtnStroke = Instance.new("UIStroke")
BtnStroke.Thickness = 0.5
BtnStroke.Color = NEVERLOSE.Themes.StrokeColor
BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
BtnStroke.Parent = Button
LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
LabelText.Size = UDim2.new(0.9, 0, 0.75, 0)
LabelText.Text = ButtonName or "Kill all"
LabelText.TextXAlignment = Enum.TextXAlignment.Center
cretate_button(Button).MouseButton1Click:Connect(OXY_NC(function()
callback()
end))
Button.MouseEnter:Connect(OXY_NC(function()
TweenService:Create(LabelText, TweenInfo.new(0.1), { TextTransparency = 0 }):Play()
end))
Button.MouseLeave:Connect(OXY_NC(function()
TweenService:Create(LabelText, TweenInfo.new(0.1), { TextTransparency = 0.3 }):Play()
end))
update_section_size()
local button_func = {}
function button_func:Fire(...)
callback(...)
end
function button_func:Text(a)
LabelText.Text = tostring(a)
end
return button_func
end
function sectionfunc:AddLabel(LabelNameString)
local Label, LabelText = newRow("Label", 6)
Label.Size = UDim2.new(0.899999976, 0, 0, 26)
LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
LabelText.Size = UDim2.new(1, 0, 0.65, 0)
LabelText.Text = LabelNameString or "Label"
update_section_size()
LabelText:GetPropertyChangedSignal("TextTransparency"):Connect(OXY_NC(function()
if LabelText.TextTransparency <= 0.99 then
Label.Visible = true
else
Label.Visible = false
end
end))
local button_func = {}
function button_func:Text(a)
LabelText.Text = tostring(a)
end
function button_func:Status(val)
if val then
TweenService:Create(Label, TweenInfo.new(1, Enum.EasingStyle.Quint), { Size = UDim2.new(0.899999976, 0, 0, 26) }):Play()
TweenService:Create(LabelText, TweenInfo.new(0.7, Enum.EasingStyle.Quint), { TextTransparency = 0.3 }):Play()
else
TweenService:Create(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 0, 0, 0) }):Play()
TweenService:Create(LabelText, TweenInfo.new(1, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
end
end
return button_func
end
function sectionfunc:AddToggle(ToggleName, Default, callback)
callback = callback or function()
end
local Toggle, LabelText = newRow("Toggle", 7)
LabelText.Position = UDim2.new(0.38587454, 0, 0.5, 0)
LabelText.Size = UDim2.new(0.772000015, 0, 0.75, 0)
LabelText.Text = ToggleName or "Label-Test"
local Effect = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Icon = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
Effect.Name = "Effect"
Effect.Parent = Toggle
Effect.AnchorPoint = Vector2.new(0, 0.5)
Effect.BackgroundColor3 = NEVERLOSE.Themes.MainColorDrop
Effect.BorderSizePixel = 0
Effect.Position = UDim2.new(0.800000012, 0, 0.5, 0)
Effect.Size = UDim2.new(0.150000006, 0, 0.5, 0)
Effect.ZIndex = 6
UICorner_2.CornerRadius = UDim.new(0.5, 0)
UICorner_2.Parent = Effect
Icon.Name = "Icon"
Icon.Parent = Effect
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = NEVERLOSE.Themes.MainColor
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.75, 0, 0.5, 0)
Icon.Size = UDim2.new(1, 0, 1, 0)
Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
Icon.ZIndex = 7
UICorner_3.CornerRadius = UDim.new(0.5, 0)
UICorner_3.Parent = Icon
local function toggleval(val, timea)
if val then
TweenService:Create(LabelText, TweenInfo.new(timea), { TextTransparency = 0 }):Play()
TweenService:Create(Icon, TweenInfo.new(timea), { Position = UDim2.new(0.75, 0, 0.5, 0), BackgroundColor3 = NEVERLOSE.Themes.MainColor }):Play()
else
TweenService:Create(LabelText, TweenInfo.new(timea), { TextTransparency = 0.3 }):Play()
TweenService:Create(Icon, TweenInfo.new(timea), { Position = UDim2.new(0.25, 0, 0.5, 0), BackgroundColor3 = Color3.fromRGB(194, 194, 194) }):Play()
end
end
toggleval(Default, 0)
callback(Default)
cretate_button(Toggle).MouseButton1Click:Connect(OXY_NC(function()
Default = not Default
toggleval(Default, 0.1)
callback(Default)
end))
update_section_size()
local button_func = {}
function button_func:Text(a)
LabelText.Text = tostring(a)
end
function button_func:Value(a)
Default = a
toggleval(a, 0.1)
callback(a)
end
function button_func:Status(val)
if val then
local dex = 0.3
if Default == true then
dex = 0
end
TweenService:Create(Toggle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), { Size = UDim2.new(0.899999976, 0, 0, 32) }):Play()
TweenService:Create(LabelText, TweenInfo.new(1, Enum.EasingStyle.Quint), { TextTransparency = dex }):Play()
TweenService:Create(Effect, TweenInfo.new(0.4), { BackgroundTransparency = 0 }):Play()
TweenService:Create(Icon, TweenInfo.new(0.4), { BackgroundTransparency = 0 }):Play()
else
TweenService:Create(Effect, TweenInfo.new(0.4), { BackgroundTransparency = 1 }):Play()
TweenService:Create(Icon, TweenInfo.new(0.4), { BackgroundTransparency = 1 }):Play()
TweenService:Create(Toggle, TweenInfo.new(1.5, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 0, 0, 0) }):Play()
TweenService:Create(LabelText, TweenInfo.new(1, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
end
end
return button_func
end
function sectionfunc:AddKeybind(KeybindNameString, Default, callback)
callback = callback or function()
end
local function gt(a)
if not a then
return "None"
else
return a.Name
end
end
local Keybind, LabelText = newRow("Keybind", 7)
LabelText.Position = UDim2.new(0.296665907, 0, 0.5, 0)
LabelText.Size = UDim2.new(0.593582749, 0, 0.75, 0)
LabelText.Text = KeybindNameString or ""
local BrindText, BrindStroke = newRightBox(Keybind)
BrindText.Size = UDim2.new(0.150000006, 0, 0.5, 0)
local ValueText = Instance.new("TextLabel")
ValueText.Name = "ValueText"
ValueText.Parent = BrindText
ValueText.AnchorPoint = Vector2.new(0.5, 0.5)
ValueText.BackgroundTransparency = 1
ValueText.BorderSizePixel = 0
ValueText.Position = UDim2.new(0.5, 0, 0.5, 0)
ValueText.Size = UDim2.new(1, 0, 1, 0)
ValueText.ZIndex = 7
ValueText.Font = Enum.Font.SourceSansSemibold
ValueText.Text = gt(Default)
ValueText.TextColor3 = NEVERLOSE.Themes.TextColor
ValueText.TextScaled = true
ValueText.TextSize = 14
ValueText.TextWrapped = true
local binding = false
local currentKey = Default
cretate_button(Keybind).MouseButton1Click:Connect(OXY_NC(function()
binding = true
ValueText.Text = "..."
end))
InputService.InputBegan:Connect(OXY_NC(function(input, gameProcessed)
if binding then
if input.UserInputType == Enum.UserInputType.Keyboard then
currentKey = input.KeyCode
binding = false
ValueText.Text = gt(currentKey)
callback(currentKey)
end
return
end
if currentKey then
if input.KeyCode == currentKey then
callback(currentKey)
end
end
end))
update_section_size()
local func = {}
function func:Text(a)
LabelText.Text = tostring(a)
end
function func:Get()
return currentKey
end
function func:Value(a)
currentKey = a
ValueText.Text = gt(a)
callback(a)
end
return func
end
function sectionfunc:AddSlider(SliderNameString, Min, Max, Default, callback)
callback = callback or function()
end
Min = Min or 0
Max = Max or 100
Default = Default or Min
local Slider, LabelText = newRow("Slider", 7)
LabelText.Position = UDim2.new(0.296666116, 0, 0.5, 0)
LabelText.Size = UDim2.new(0.593582511, 0, 0.75, 0)
LabelText.Text = SliderNameString or "Slider"
local BarBG = Instance.new("Frame")
local UICornerBar = Instance.new("UICorner")
local Fill = Instance.new("Frame")
local UICornerFill = Instance.new("UICorner")
local ValueText = Instance.new("TextLabel")
BarBG.Name = "BarBG"
BarBG.Parent = Slider
BarBG.AnchorPoint = Vector2.new(1, 0.5)
BarBG.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
BarBG.BackgroundTransparency = 0.5
BarBG.BorderSizePixel = 0
BarBG.Position = UDim2.new(0.998, 0, 0.7, 0)
BarBG.Size = UDim2.new(0.38, 0, 0.25, 0)
BarBG.ZIndex = 6
UICornerBar.CornerRadius = UDim.new(0, 3)
UICornerBar.Parent = BarBG
Fill.Name = "Fill"
Fill.Parent = BarBG
Fill.BackgroundColor3 = NEVERLOSE.Themes.MainColor
Fill.BorderSizePixel = 0
Fill.Size = UDim2.new(0, 0, 1, 0)
Fill.ZIndex = 7
UICornerFill.CornerRadius = UDim.new(0, 3)
UICornerFill.Parent = Fill
ValueText.Name = "ValueText"
ValueText.Parent = Slider
ValueText.AnchorPoint = Vector2.new(1, 0.5)
ValueText.BackgroundTransparency = 1
ValueText.BorderSizePixel = 0
ValueText.Position = UDim2.new(0.998, 0, 0.25, 0)
ValueText.Size = UDim2.new(0.38, 0, 0.4, 0)
ValueText.ZIndex = 7
ValueText.Font = Enum.Font.SourceSansSemibold
ValueText.Text = tostring(Default)
ValueText.TextColor3 = NEVERLOSE.Themes.TextColor
ValueText.TextScaled = true
ValueText.TextSize = 13
ValueText.TextWrapped = true
ValueText.TextXAlignment = Enum.TextXAlignment.Right
local curVal = Default
local function applySlider(v)
if v < Min then
v = Min
end
if v > Max then
v = Max
end
curVal = v
local pct = 0
if Max ~= Min then
pct = (v - Min) / (Max - Min)
end
Fill.Size = UDim2.new(pct, 0, 1, 0)
ValueText.Text = tostring(math.floor(v + 0.5))
callback(v)
end
applySlider(Default)
local draggingSlider = false
local function updateFromInput(input)
local rel = (input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X
if rel < 0 then
rel = 0
end
if rel > 1 then
rel = 1
end
local v = Min + (Max - Min) * rel
applySlider(v)
end
BarBG.InputBegan:Connect(OXY_NC(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
draggingSlider = true
updateFromInput(input)
end
end))
BarBG.InputEnded:Connect(OXY_NC(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
draggingSlider = false
end
end))
InputService.InputChanged:Connect(OXY_NC(function(input)
if draggingSlider then
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
updateFromInput(input)
end
end
end))
update_section_size()
local func = {}
function func:Text(a)
LabelText.Text = tostring(a)
end
function func:Get()
return curVal
end
function func:Value(a)
applySlider(a)
end
return func
end
function sectionfunc:AddDropdown(DropdownName, data, Default, callback)
data = data or {}
Default = Default or data[1]
callback = callback or function()
end
local Dropdown, LabelText = newRow("Dropdown", 7)
LabelText.Position = UDim2.new(0.296666116, 0, 0.5, 0)
LabelText.Size = UDim2.new(0.593582511, 0, 0.75, 0)
LabelText.Text = DropdownName or "Label-Test"
local TopBar, TopStroke = newRightBox(Dropdown)
TopBar.Size = UDim2.new(0.313529521, 0, 0.5, 0)
TopBar.Position = UDim2.new(0.950000167, 0, 0.5, 0)
local ValueText = Instance.new("TextLabel")
ValueText.Name = "ValueText"
ValueText.Parent = TopBar
ValueText.AnchorPoint = Vector2.new(0.5, 0.5)
ValueText.BackgroundTransparency = 1
ValueText.BorderSizePixel = 0
ValueText.Position = UDim2.new(0.358571023, 0, 0.5, 0)
ValueText.Size = UDim2.new(0.697142839, 0, 0.998000145, 0)
ValueText.ZIndex = 6
ValueText.Font = Enum.Font.SourceSansSemibold
ValueText.Text = tostring(Default)
ValueText.TextColor3 = NEVERLOSE.Themes.TextColor
ValueText.TextScaled = true
ValueText.TextSize = 14
ValueText.TextWrapped = true
local Icon = Instance.new("TextLabel")
Icon.Name = "Icon"
Icon.Parent = TopBar
Icon.AnchorPoint = Vector2.new(1, 0.5)
Icon.BackgroundTransparency = 1
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(1, 0, 0.5, 0)
Icon.Rotation = 90
Icon.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
Icon.ZIndex = 6
Icon.Font = Enum.Font.SourceSans
Icon.Text = "<"
Icon.TextColor3 = NEVERLOSE.Themes.TextColor
Icon.TextScaled = true
Icon.TextSize = 14
Icon.TextWrapped = true
local DownBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")
local UIListLayout = Instance.new("UIListLayout")
DownBar.Name = "DownBar"
DownBar.Parent = Dropdown
DownBar.Active = true
DownBar.AnchorPoint = Vector2.new(1, 0)
DownBar.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
DownBar.BackgroundTransparency = 0.1
DownBar.BorderSizePixel = 0
DownBar.Position = UDim2.new(0.948214233, 0, 0.873961239, 0)
DownBar.Size = UDim2.new(0.308999985, 0, 0, 0)
DownBar.Visible = false
DownBar.ZIndex = 10
UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = DownBar
UIStroke_2.Thickness = 0.5
UIStroke_2.Color = NEVERLOSE.Themes.StrokeColor
UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_2.Parent = DownBar
UIListLayout.Parent = DownBar
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)
local choose = Default
local DropdownToggle = false
DownBar:GetPropertyChangedSignal("Size"):Connect(OXY_NC(function()
if DownBar.Size.Y.Offset < 4 then
DownBar.Visible = false
else
DownBar.Visible = true
end
end))
local function get_list_size()
local a = 0
for i, v in ipairs(DownBar:GetChildren()) do
if v:IsA("TextButton") then
a = a + 9
end
end
return a + 15
end
local function get_list_v4()
local a = 0
for i, v in ipairs(DownBar:GetChildren()) do
if v:IsA("TextButton") then
a = a + v.AbsoluteSize.Y
end
end
return a + 15
end
local function auto_updatea()
if DropdownToggle then
TweenService:Create(DownBar, TweenInfo.new(0.1), { Size = UDim2.new(0.4, 0, 0, get_list_v4()) }):Play()
else
TweenService:Create(DownBar, TweenInfo.new(0.1), { Size = UDim2.new(0.4, 0, 0, 0) }):Play()
end
end
local function DropdownToggleEffect(val)
if val then
Dropdown.Visible = true
TweenService:Create(Icon, TweenInfo.new(0.15), { Rotation = 90 }):Play()
TweenService:Create(LabelText, TweenInfo.new(0.4), { TextTransparency = 0 }):Play()
TweenService:Create(DownBar, TweenInfo.new(0.1), { Size = UDim2.new(0.4, 0, 0, get_list_size()) }):Play()
auto_updatea()
for i, v in ipairs(DownBar:GetChildren()) do
if v:IsA("TextButton") then
v.Size = UDim2.new(0, 0, 0, 0)
v.TextTransparency = 1
TweenService:Create(v, TweenInfo.new(0.01 + (i / 100)), { Size = UDim2.new(0.99000001, 0, 0.5, 0), TextTransparency = 0.3 }):Play()
end
end
else
for i, v in ipairs(DownBar:GetChildren()) do
if v:IsA("TextButton") then
v.TextTransparency = 0.3
TweenService:Create(v, TweenInfo.new(0.04), { Size = UDim2.new(0, 0, 0, 0), TextTransparency = 1 }):Play()
end
end
TweenService:Create(Icon, TweenInfo.new(0.15), { Rotation = -90 }):Play()
TweenService:Create(LabelText, TweenInfo.new(0.4), { TextTransparency = 0.3 }):Play()
TweenService:Create(DownBar, TweenInfo.new(0.1), { Size = UDim2.new(0.4, 0, 0, 0) }):Play()
end
end
DropdownToggleEffect(DropdownToggle)
cretate_button(Dropdown).MouseButton1Click:Connect(OXY_NC(function()
DropdownToggle = not DropdownToggle
DropdownToggleEffect(DropdownToggle)
end))
local function newbutton()
local Btn = Instance.new("TextButton")
local AspectBtn = Instance.new("UIAspectRatioConstraint")
Btn.Name = "Dropdown"
Btn.Parent = DownBar
Btn.BackgroundTransparency = 1
Btn.BorderSizePixel = 0
Btn.Size = UDim2.new(0.99000001, 0, 0.5, 0)
Btn.ZIndex = 1000
Btn.Font = Enum.Font.SourceSansSemibold
Btn.Text = "List"
Btn.TextColor3 = NEVERLOSE.Themes.TextColor
Btn.TextScaled = true
Btn.TextSize = 14
Btn.TextWrapped = true
TweenService:Create(Btn, TweenInfo.new(0.1), { TextTransparency = 0.3 }):Play()
Btn.ZIndex = 10000
AspectBtn.Parent = Btn
AspectBtn.AspectRatio = 4.5
AspectBtn.AspectType = Enum.AspectType.ScaleWithParentSize
Btn.MouseEnter:Connect(OXY_NC(function()
TweenService:Create(Btn, TweenInfo.new(0.1), { TextTransparency = 0 }):Play()
end))
Btn.MouseLeave:Connect(OXY_NC(function()
TweenService:Create(Btn, TweenInfo.new(0.1), { TextTransparency = 0.3 }):Play()
end))
return Btn
end
local function refresh()
for i, v in ipairs(DownBar:GetChildren()) do
if v:IsA("TextButton") then
v:Destroy()
end
end
for i, v in ipairs(data) do
local button = newbutton()
button.Text = tostring(v)
button.MouseButton1Click:Connect(OXY_NC(function()
ValueText.Text = tostring(v)
choose = v
callback(v)
end))
end
end
table.insert(NEVERLOSE.auto_function, auto_updatea)
refresh()
update_section_size()
local func = {}
function func:Refresh(new)
data = new or data
refresh()
end
function func:Text(a)
LabelText.Text = tostring(a)
end
function func:Get()
return choose
end
function func:Value(a)
ValueText.Text = tostring(a)
choose = a
callback(a)
end
return func
end
-- ============================================================================
-- FUNGSI BARU V11 + V12 - SEMUA DI DALAM sectionfunc, SAMA KAYAK AddDropdown
-- ============================================================================
function sectionfunc:AddInput(InputName, Placeholder, Default, callback)
callback = callback or function()
end
Placeholder = Placeholder or "ketik disini..."
Default = Default or ""
local InputRow, LabelText = newRow("Input", 7)
LabelText.Position = UDim2.new(0.296666116, 0, 0.499999374, 0)
LabelText.Size = UDim2.new(0.593582511, 0, 0.75, 0)
LabelText.Text = InputName or "Input"
local InputBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIPadding = Instance.new("UIPadding")
InputBox.Name = "InputBox"
InputBox.Parent = InputRow
InputBox.AnchorPoint = Vector2.new(1, 0.5)
InputBox.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
InputBox.BackgroundTransparency = 0.5
InputBox.BorderSizePixel = 0
InputBox.Position = UDim2.new(0.998, 0, 0.5, 0)
InputBox.Size = UDim2.new(0.400000006, 0, 0.5, 0)
InputBox.ZIndex = 6
InputBox.ClearTextOnFocus = false
InputBox.Font = Enum.Font.SourceSansSemibold
InputBox.PlaceholderColor3 = Color3.fromRGB(130, 130, 130)
InputBox.PlaceholderText = tostring(Placeholder)
InputBox.Text = tostring(Default)
InputBox.TextColor3 = NEVERLOSE.Themes.TextColor
InputBox.TextScaled = true
InputBox.TextSize = 14
InputBox.TextWrapped = true
InputBox.TextXAlignment = Enum.TextXAlignment.Left
InputBox.TextTransparency = 0.1
UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = InputBox
UIStroke.Thickness = 0.5
UIStroke.Color = NEVERLOSE.Themes.StrokeColor
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = InputBox
UIPadding.Parent = InputBox
UIPadding.PaddingLeft = UDim.new(0, 8)
UIPadding.PaddingRight = UDim.new(0, 8)
InputBox.Focused:Connect(OXY_NC(function()
TweenService:Create(UIStroke, TweenInfo.new(0.15), { Color = NEVERLOSE.Themes.MainColor }):Play()
end))
InputBox.FocusLost:Connect(OXY_NC(function(enterPressed)
TweenService:Create(UIStroke, TweenInfo.new(0.1), { Color = NEVERLOSE.Themes.StrokeColor }):Play()
callback(InputBox.Text)
end))
update_section_size()
local func = {}
function func:Get()
return InputBox.Text
end
function func:Set(v)
InputBox.Text = tostring(v)
end
function func:Value(v)
InputBox.Text = tostring(v)
callback(tostring(v))
end
function func:Text(a)
LabelText.Text = tostring(a)
end
function func:Clear()
InputBox.Text = ""
end
function func:Focus()
InputBox:CaptureFocus()
end
function func:Status(val)
if val then
TweenService:Create(InputRow, TweenInfo.new(0.5, Enum.EasingStyle.Quint), { Size = UDim2.new(0.899999976, 0, 0, 32) }):Play()
TweenService:Create(LabelText, TweenInfo.new(1, Enum.EasingStyle.Quint), { TextTransparency = 0.3 }):Play()
TweenService:Create(InputBox, TweenInfo.new(0.4), { BackgroundTransparency = 0.5 }):Play()
else
TweenService:Create(InputBox, TweenInfo.new(0.4), { BackgroundTransparency = 1 }):Play()
TweenService:Create(InputRow, TweenInfo.new(1.5, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 0, 0, 0) }):Play()
TweenService:Create(LabelText, TweenInfo.new(1, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
end
end
return func
end
function sectionfunc:AddTextbox(InputName, Placeholder, Default, callback)
return sectionfunc:AddInput(InputName, Placeholder, Default, callback)
end
function sectionfunc:AddNumberInput(InputName, Placeholder, Default, Min, Max, callback)
callback = callback or function()
end
Placeholder = Placeholder or "0"
Default = Default or 0
Min = Min or -999999
Max = Max or 999999
local base = sectionfunc:AddInput(InputName, Placeholder, tostring(Default), function(txt)
local num = tonumber(txt)
if num == nil then
return
end
if num < Min then
num = Min
end
if num > Max then
num = Max
end
callback(num)
end)
local func = {}
function func:Get()
local n = tonumber(base:Get())
if n == nil then
return 0
end
return n
end
function func:Set(v)
base:Set(tostring(v))
end
function func:Value(v)
base:Value(tostring(v))
end
function func:Text(a)
base:Text(a)
end
function func:Status(val)
base:Status(val)
end
return func
end
function sectionfunc:AddPassword(InputName, Placeholder, Default, callback)
callback = callback or function()
end
Placeholder = Placeholder or "password..."
Default = Default or ""
local realText = tostring(Default)
local Row, LabelText = newRow("Password", 7)
LabelText.Position = UDim2.new(0.296666116, 0, 0.5, 0)
LabelText.Size = UDim2.new(0.593582511, 0, 0.75, 0)
LabelText.Text = InputName or "Password"
local InputBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIPadding = Instance.new("UIPadding")
InputBox.Name = "InputBox"
InputBox.Parent = Row
InputBox.AnchorPoint = Vector2.new(1, 0.5)
InputBox.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
InputBox.BackgroundTransparency = 0.5
InputBox.BorderSizePixel = 0
InputBox.Position = UDim2.new(0.998, 0, 0.5, 0)
InputBox.Size = UDim2.new(0.400000006, 0, 0.5, 0)
InputBox.ZIndex = 6
InputBox.ClearTextOnFocus = false
InputBox.Font = Enum.Font.SourceSansSemibold
InputBox.PlaceholderColor3 = Color3.fromRGB(130, 130, 130)
InputBox.PlaceholderText = tostring(Placeholder)
InputBox.Text = string.rep("*", string.len(realText))
InputBox.TextColor3 = NEVERLOSE.Themes.TextColor
InputBox.TextScaled = true
InputBox.TextSize = 14
InputBox.TextWrapped = true
InputBox.TextXAlignment = Enum.TextXAlignment.Left
InputBox.TextTransparency = 0.1
UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = InputBox
UIStroke.Thickness = 0.5
UIStroke.Color = NEVERLOSE.Themes.StrokeColor
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = InputBox
UIPadding.Parent = InputBox
UIPadding.PaddingLeft = UDim.new(0, 8)
UIPadding.PaddingRight = UDim.new(0, 8)
InputBox.Focused:Connect(OXY_NC(function()
TweenService:Create(UIStroke, TweenInfo.new(0.15), { Color = NEVERLOSE.Themes.MainColor }):Play()
InputBox.Text = realText
end))
InputBox.FocusLost:Connect(OXY_NC(function(enterPressed)
TweenService:Create(UIStroke, TweenInfo.new(0.1), { Color = NEVERLOSE.Themes.StrokeColor }):Play()
realText = InputBox.Text
InputBox.Text = string.rep("*", string.len(realText))
callback(realText)
end))
update_section_size()
local func = {}
function func:Get()
return realText
end
function func:Set(v)
realText = tostring(v)
InputBox.Text = string.rep("*", string.len(realText))
end
function func:Value(v)
realText = tostring(v)
InputBox.Text = string.rep("*", string.len(realText))
callback(realText)
end
function func:Text(a)
LabelText.Text = tostring(a)
end
return func
end
function sectionfunc:AddParagraph(ParagraphText)
local Label = Instance.new("Frame")
local UICornerP = Instance.new("UICorner")
local LabelText = Instance.new("TextLabel")
Label.Name = "Paragraph"
Label.Parent = lay
Label.BackgroundTransparency = 1
Label.BorderSizePixel = 0
Label.Size = UDim2.new(0.899999976, 0, 0, 52)
Label.ZIndex = 5
UICornerP.CornerRadius = UDim.new(0, 3)
UICornerP.Parent = Label
LabelText.Name = "LabelText"
LabelText.Parent = Label
LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
LabelText.BackgroundTransparency = 1
LabelText.BorderSizePixel = 0
LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
LabelText.Size = UDim2.new(1, 0, 1, 0)
LabelText.ZIndex = 6
LabelText.Font = Enum.Font.SourceSans
LabelText.Text = ParagraphText or ""
LabelText.TextColor3 = NEVERLOSE.Themes.TextColor
LabelText.TextScaled = false
LabelText.TextSize = 13
LabelText.TextTransparency = 0.3
LabelText.TextWrapped = true
LabelText.TextXAlignment = Enum.TextXAlignment.Left
LabelText.TextYAlignment = Enum.TextYAlignment.Top
update_section_size()
local func = {}
function func:Text(a)
LabelText.Text = tostring(a)
end
return func
end
function sectionfunc:AddDivider()
local Line = Instance.new("Frame")
Line.Name = "Divider"
Line.Parent = lay
Line.BackgroundColor3 = NEVERLOSE.Themes.StrokeColor
Line.BackgroundTransparency = 0.3
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0.899999976, 0, 0, 1)
Line.ZIndex = 5
update_section_size()
local func = {}
return func
end
function sectionfunc:AddSeparator()
return sectionfunc:AddDivider()
end
function sectionfunc:AddTitle(TitleText)
local Label = Instance.new("Frame")
local UICornerT = Instance.new("UICorner")
local LabelText = Instance.new("TextLabel")
Label.Name = "Title"
Label.Parent = lay
Label.BackgroundTransparency = 1
Label.BorderSizePixel = 0
Label.Size = UDim2.new(0.899999976, 0, 0, 26)
Label.ZIndex = 5
UICornerT.CornerRadius = UDim.new(0, 3)
UICornerT.Parent = Label
LabelText.Name = "LabelText"
LabelText.Parent = Label
LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
LabelText.BackgroundTransparency = 1
LabelText.BorderSizePixel = 0
LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
LabelText.Size = UDim2.new(1, 0, 0.9, 0)
LabelText.ZIndex = 6
LabelText.Font = Enum.Font.SourceSansBold
LabelText.Text = TitleText or "Title"
LabelText.TextColor3 = NEVERLOSE.Themes.MainColor
LabelText.TextScaled = true
LabelText.TextSize = 15
LabelText.TextWrapped = true
LabelText.TextXAlignment = Enum.TextXAlignment.Left
LabelText.TextTransparency = 0
update_section_size()
local func = {}
function func:Text(a)
LabelText.Text = tostring(a)
end
return func
end
function sectionfunc:AddColorPicker(ColorName, DefaultColor, callback)
callback = callback or function()
end
DefaultColor = DefaultColor or Color3.fromRGB(0, 170, 255)
local presetNames = { "Biru Terang", "Merah", "Hijau", "Kuning", "Ungu", "Pink", "Orange", "Cyan", "Putih", "Hitam" }
local presetColors = { Color3.fromHSV(0.58, 1, 1), Color3.fromHSV(0, 0.85, 1), Color3.fromHSV(0.38, 1, 1), Color3.fromHSV(0.13, 1, 1), Color3.fromHSV(0.75, 1, 1), Color3.fromHSV(0.9, 1, 1), Color3.fromHSV(0.08, 1, 1), Color3.fromHSV(0.5, 1, 1), Color3.fromRGB(245, 245, 250), Color3.fromRGB(12, 12, 14) }
local Holder = Instance.new("Frame")
local UICornerH = Instance.new("UICorner")
local LabelText = Instance.new("TextLabel")
local Preview = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local List = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
Holder.Name = "ColorPicker"
Holder.Parent = lay
Holder.BackgroundTransparency = 1
Holder.BorderSizePixel = 0
Holder.Size = UDim2.new(0.899999976, 0, 0, 52)
Holder.ZIndex = 5
UICornerH.CornerRadius = UDim.new(0, 3)
UICornerH.Parent = Holder
LabelText.Name = "LabelText"
LabelText.Parent = Holder
LabelText.AnchorPoint = Vector2.new(0, 0)
LabelText.BackgroundTransparency = 1
LabelText.BorderSizePixel = 0
LabelText.Position = UDim2.new(0, 0, 0, 0)
LabelText.Size = UDim2.new(0.7, 0, 0.35, 0)
LabelText.ZIndex = 6
LabelText.Font = Enum.Font.SourceSansSemibold
LabelText.Text = ColorName or "Warna"
LabelText.TextColor3 = NEVERLOSE.Themes.TextColor
LabelText.TextScaled = true
LabelText.TextSize = 14
LabelText.TextWrapped = true
LabelText.TextXAlignment = Enum.TextXAlignment.Left
LabelText.TextTransparency = 0.3
Preview.Name = "Preview"
Preview.Parent = Holder
Preview.AnchorPoint = Vector2.new(1, 0)
Preview.BackgroundColor3 = DefaultColor
Preview.BorderSizePixel = 0
Preview.Position = UDim2.new(1, 0, 0, 0)
Preview.Size = UDim2.new(0.15, 0, 0.35, 0)
Preview.ZIndex = 6
UICorner_2.CornerRadius = UDim.new(0.5, 0)
UICorner_2.Parent = Preview
UIStroke.Thickness = 0.5
UIStroke.Color = NEVERLOSE.Themes.StrokeColor
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = Preview
List.Name = "List"
List.Parent = Holder
List.BackgroundTransparency = 1
List.BorderSizePixel = 0
List.Position = UDim2.new(0, 0, 0.4, 0)
List.Size = UDim2.new(1, 0, 0.6, 0)
List.ZIndex = 6
UIListLayout.Parent = List
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)
local chosen = DefaultColor
local chosenName = "Biru Terang"
for idx = 1, #presetNames do
local nameOne = presetNames[idx]
local colOne = presetColors[idx]
local btn = Instance.new("TextButton")
local cornerOne = Instance.new("UICorner")
local strokeOne = Instance.new("UIStroke")
btn.Name = "ColorBtn"
btn.Parent = List
btn.BackgroundColor3 = colOne
btn.BorderSizePixel = 0
btn.Size = UDim2.new(0, 22, 0, 22)
btn.ZIndex = 7
btn.Text = ""
btn.AutoButtonColor = true
cornerOne.CornerRadius = UDim.new(0.5, 0)
cornerOne.Parent = btn
strokeOne.Thickness = 0.5
strokeOne.Color = NEVERLOSE.Themes.StrokeColor
strokeOne.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
strokeOne.Parent = btn
btn.MouseButton1Click:Connect(OXY_NC(function()
chosen = colOne
chosenName = nameOne
Preview.BackgroundColor3 = colOne
callback(colOne, nameOne)
end))
end
update_section_size()
local func = {}
function func:Get()
return chosen
end
function func:GetName()
return chosenName
end
function func:Value(c)
chosen = c
Preview.BackgroundColor3 = c
callback(c, chosenName)
end
function func:Text(a)
LabelText.Text = tostring(a)
end
return func
end
function sectionfunc:AddColor(ColorName, DefaultColor, callback)
return sectionfunc:AddColorPicker(ColorName, DefaultColor, callback)
end
function sectionfunc:AddMultiDropdown(DropdownName, data, DefaultList, callback)
callback = callback or function()
end
data = data or {}
DefaultList = DefaultList or {}
local chosenMap = {}
for i = 1, #DefaultList do
chosenMap[tostring(DefaultList[i])] = true
end
local baseLabel = sectionfunc:AddLabel(DropdownName .. " (multi)")
local Holder = Instance.new("Frame")
local UICornerM = Instance.new("UICorner")
local UIStrokeM = Instance.new("UIStroke")
local UIListLayout = Instance.new("UIListLayout")
Holder.Name = "MultiDropdown"
Holder.Parent = lay
Holder.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
Holder.BackgroundTransparency = 0.5
Holder.BorderSizePixel = 0
Holder.Size = UDim2.new(0.899999976, 0, 0, 30)
Holder.ZIndex = 5
UICornerM.CornerRadius = UDim.new(0, 3)
UICornerM.Parent = Holder
UIStrokeM.Thickness = 0.5
UIStrokeM.Color = NEVERLOSE.Themes.StrokeColor
UIStrokeM.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStrokeM.Parent = Holder
UIListLayout.Parent = Holder
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)
local function collectChosen()
local out = {}
for i = 1, #data do
local keyOne = tostring(data[i])
if chosenMap[keyOne] then
out[#out + 1] = data[i]
end
end
return out
end
for i = 1, #data do
local itemOne = data[i]
local keyOne = tostring(itemOne)
local btn = Instance.new("TextButton")
btn.Name = "MultiItem"
btn.Parent = Holder
btn.BackgroundTransparency = 1
btn.BorderSizePixel = 0
btn.Size = UDim2.new(1, 0, 0, 22)
btn.ZIndex = 6
btn.Font = Enum.Font.SourceSansSemibold
btn.TextSize = 13
btn.TextColor3 = NEVERLOSE.Themes.TextColor
btn.TextXAlignment = Enum.TextXAlignment.Left
if chosenMap[keyOne] then
btn.Text = "[x] " .. keyOne
else
btn.Text = "[ ] " .. keyOne
end
btn.MouseButton1Click:Connect(OXY_NC(function()
if chosenMap[keyOne] then
chosenMap[keyOne] = nil
btn.Text = "[ ] " .. keyOne
else
chosenMap[keyOne] = true
btn.Text = "[x] " .. keyOne
end
callback(collectChosen())
end))
end
Holder.Size = UDim2.new(0.899999976, 0, 0, 2 + #data * 24)
update_section_size()
local func = {}
function func:Get()
return collectChosen()
end
function func:Value(list)
chosenMap = {}
for i = 1, #list do
chosenMap[tostring(list[i])] = true
end
callback(collectChosen())
end
return func
end
function sectionfunc:AddSearchInput(InputName, Placeholder, data, Default, callback)
callback = callback or function()
end
data = data or {}
Placeholder = Placeholder or "ketik untuk cari..."
Default = Default or ""
local inputFunc = sectionfunc:AddInput(InputName, Placeholder, tostring(Default), function(txt)
callback(txt)
end)
local DownBar = Instance.new("Frame")
local UICornerS = Instance.new("UICorner")
local UIStrokeS = Instance.new("UIStroke")
local UIListLayout = Instance.new("UIListLayout")
DownBar.Name = "SearchDown"
DownBar.Parent = lay
DownBar.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
DownBar.BackgroundTransparency = 0.1
DownBar.BorderSizePixel = 0
DownBar.Size = UDim2.new(0.899999976, 0, 0, 30)
DownBar.ZIndex = 10
UICornerS.CornerRadius = UDim.new(0, 3)
UICornerS.Parent = DownBar
UIStrokeS.Thickness = 0.5
UIStrokeS.Color = NEVERLOSE.Themes.StrokeColor
UIStrokeS.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStrokeS.Parent = DownBar
UIListLayout.Parent = DownBar
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)
local function refreshSearch()
for _, child in ipairs(DownBar:GetChildren()) do
if child:IsA("TextButton") then
child:Destroy()
end
end
local query = string.lower(inputFunc:Get())
local shown = 0
for i = 1, #data do
local itemOne = tostring(data[i])
local lowOne = string.lower(itemOne)
local match = false
if query == "" then
match = true
end
if string.find(lowOne, query, 1, true) then
match = true
end
if match then
shown = shown + 1
if shown <= 8 then
local btn = Instance.new("TextButton")
btn.Name = "SearchItem"
btn.Parent = DownBar
btn.BackgroundTransparency = 1
btn.BorderSizePixel = 0
btn.Size = UDim2.new(1, 0, 0, 22)
btn.ZIndex = 11
btn.Font = Enum.Font.SourceSansSemibold
btn.Text = itemOne
btn.TextSize = 13
btn.TextColor3 = NEVERLOSE.Themes.TextColor
btn.TextXAlignment = Enum.TextXAlignment.Left
btn.MouseButton1Click:Connect(OXY_NC(function()
inputFunc:Set(itemOne)
callback(itemOne)
end))
end
end
end
DownBar.Size = UDim2.new(0.899999976, 0, 0, 4 + math.min(shown, 8) * 24)
end
refreshSearch()
update_section_size()
local func = {}
function func:Get()
return inputFunc:Get()
end
function func:Set(v)
inputFunc:Set(v)
refreshSearch()
end
function func:Value(v)
inputFunc:Set(v)
callback(tostring(v))
refreshSearch()
end
function func:Refresh(newData)
data = newData or data
refreshSearch()
end
return func
end
function sectionfunc:AddSearchDropdown(InputName, Placeholder, data, Default, callback)
return sectionfunc:AddSearchInput(InputName, Placeholder, data, Default, callback)
end
function sectionfunc:AddCycleButton(ButtonName, data, Default, callback)
callback = callback or function()
end
data = data or { "A", "B" }
Default = Default or data[1]
local idx = 1
for i = 1, #data do
if data[i] == Default then
idx = i
end
end
local btnFunc = sectionfunc:AddButton(ButtonName .. ": " .. tostring(data[idx]), function()
idx = idx + 1
if idx > #data then
idx = 1
end
btnFunc:Text(ButtonName .. ": " .. tostring(data[idx]))
callback(data[idx], idx)
end)
local func = {}
function func:Get()
return data[idx]
end
function func:GetIndex()
return idx
end
function func:Next()
idx = idx + 1
if idx > #data then
idx = 1
end
btnFunc:Text(ButtonName .. ": " .. tostring(data[idx]))
callback(data[idx], idx)
end
function func:Prev()
idx = idx - 1
if idx < 1 then
idx = #data
end
btnFunc:Text(ButtonName .. ": " .. tostring(data[idx]))
callback(data[idx], idx)
end
function func:Value(v)
for i = 1, #data do
if data[i] == v then
idx = i
end
end
btnFunc:Text(ButtonName .. ": " .. tostring(data[idx]))
callback(data[idx], idx)
end
function func:Text(a)
btnFunc:Text(a)
end
return func
end
function sectionfunc:AddProgressBar(BarName, DefaultPercent)
DefaultPercent = DefaultPercent or 0
local Holder = Instance.new("Frame")
local LabelText = Instance.new("TextLabel")
local BarBG = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Fill = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
Holder.Name = "ProgressBar"
Holder.Parent = lay
Holder.BackgroundTransparency = 1
Holder.BorderSizePixel = 0
Holder.Size = UDim2.new(0.899999976, 0, 0, 36)
Holder.ZIndex = 5
LabelText.Name = "LabelText"
LabelText.Parent = Holder
LabelText.BackgroundTransparency = 1
LabelText.BorderSizePixel = 0
LabelText.Position = UDim2.new(0, 0, 0, 0)
LabelText.Size = UDim2.new(1, 0, 0.5, 0)
LabelText.ZIndex = 6
LabelText.Font = Enum.Font.SourceSansSemibold
LabelText.Text = BarName or "Progress"
LabelText.TextColor3 = NEVERLOSE.Themes.TextColor
LabelText.TextScaled = true
LabelText.TextSize = 14
LabelText.TextWrapped = true
LabelText.TextXAlignment = Enum.TextXAlignment.Left
LabelText.TextTransparency = 0.3
BarBG.Name = "BarBG"
BarBG.Parent = Holder
BarBG.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
BarBG.BorderSizePixel = 0
BarBG.Position = UDim2.new(0, 0, 0.55, 0)
BarBG.Size = UDim2.new(1, 0, 0.4, 0)
BarBG.ZIndex = 6
UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = BarBG
Fill.Name = "Fill"
Fill.Parent = BarBG
Fill.BackgroundColor3 = NEVERLOSE.Themes.MainColor
Fill.BorderSizePixel = 0
Fill.Size = UDim2.new(DefaultPercent / 100, 0, 1, 0)
Fill.ZIndex = 7
UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = Fill
update_section_size()
local func = {}
function func:Set(percent)
local p = percent
if p < 0 then
p = 0
end
if p > 100 then
p = 100
end
Fill.Size = UDim2.new(p / 100, 0, 1, 0)
end
function func:Get()
return Fill.Size.X.Scale * 100
end
function func:Text(a)
LabelText.Text = tostring(a)
end
return func
end
function sectionfunc:AddCopyButton(ButtonName, TextToCopy)
TextToCopy = TextToCopy or ""
local btnFunc = sectionfunc:AddButton(ButtonName, function()
if setclipboard then
setclipboard(tostring(TextToCopy))
end
if toclipboard then
toclipboard(tostring(TextToCopy))
end
end)
local func = {}
function func:SetText(t)
TextToCopy = tostring(t)
end
function func:GetText()
return TextToCopy
end
function func:Text(a)
btnFunc:Text(a)
end
function func:Fire()
btnFunc:Fire()
end
return func
end
function sectionfunc:Hide()
TweenService:Create(Section, TweenInfo.new(0.2), { Size = UDim2.new(0.97, 0, 0, 1) }):Play()
section_value = false
TweenService:Create(lay, TweenInfo.new(1), { BackgroundTransparency = 1 }):Play()
TweenService:Create(Section, TweenInfo.new(1), { BackgroundTransparency = 1 }):Play()
TweenService:Create(UIStroke, TweenInfo.new(1), { Transparency = 1 }):Play()
TweenService:Create(Header, TweenInfo.new(0.3), { TextTransparency = 1 }):Play()
end
function sectionfunc:Show()
update_section_size(true)
section_value = true
TweenService:Create(Header, TweenInfo.new(0.3), { TextTransparency = 0 }):Play()
TweenService:Create(lay, TweenInfo.new(1), { BackgroundTransparency = 0 }):Play()
TweenService:Create(Section, TweenInfo.new(1), { BackgroundTransparency = 0 }):Play()
TweenService:Create(UIStroke, TweenInfo.new(1), { Transparency = 0 }):Play()
end
return sectionfunc
end
return TabFunctions
end
function WindowFunctinos:Delete()
return ScreenGui:Destroy()
end
local dragToggle = nil
local dragSpeed = 0.1
local dragStart = nil
local startPos = nil
local function updateInput(input)
local delta = input.Position - dragStart
local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), { Position = position }):Play()
end
Frame_3.InputBegan:Connect(OXY_NC(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragToggle = true
dragStart = input.Position
startPos = Frame.Position
input.Changed:Connect(OXY_NC(function()
if input.UserInputState == Enum.UserInputState.End then
dragToggle = false
end
end))
end
end))
InputService.InputChanged:Connect(OXY_NC(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
if dragToggle then
updateInput(input)
end
end
end))
InputService.InputBegan:Connect(OXY_NC(function(input, gameProcessed)
if input.KeyCode == Enum.KeyCode.RightShift then
toggle_valu = not toggle_valu
ui_toggleong(toggle_valu)
end
end))
return WindowFunctinos
end
function NEVERLOSE:KeySystem(TitleName, LinkKey, callback)
local Functions = {}
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local PasteKey = Instance.new("TextBox")
local UIStroke = Instance.new("UIStroke")
local UICorner_3 = Instance.new("UICorner")
local CopyKey = Instance.new("TextButton")
local UIStroke_2 = Instance.new("UIStroke")
local UICorner_4 = Instance.new("UICorner")
local Submit = Instance.new("TextButton")
local UIStroke_3 = Instance.new("UIStroke")
local UICorner_5 = Instance.new("UICorner")
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = NEVERLOSE.Themes.BlackgroundColor
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
UICorner.Parent = Frame
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = NEVERLOSE.Themes.BlackColor
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.00109238492, 0, 0.081521742, 0)
Frame_2.Size = UDim2.new(1, 0, 0.913586974, 0)
Frame_2.ZIndex = 2
UICorner_2.CornerRadius = UDim.new(0, 2)
UICorner_2.Parent = Frame_2
Title.Name = "Title"
Title.Parent = Frame
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, 0, 0.143000007, 0)
Title.Size = UDim2.new(0.899999976, 0, 0.150000006, 0)
Title.ZIndex = 4
Title.Font = Enum.Font.SourceSansBold
Title.Text = TitleName or "Key System"
Title.TextColor3 = NEVERLOSE.Themes.TextColor
Title.TextScaled = true
Title.TextSize = 14
Title.TextStrokeColor3 = NEVERLOSE.Themes.MainColor
Title.TextStrokeTransparency = 0.86
Title.TextWrapped = true
PasteKey.Name = "PasteKey"
PasteKey.Parent = Frame
PasteKey.AnchorPoint = Vector2.new(0.5, 0)
PasteKey.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
PasteKey.BorderSizePixel = 0
PasteKey.Position = UDim2.new(0.50000006, 0, 0.373641312, 0)
PasteKey.Size = UDim2.new(0.899999976, 0, 0.25, 0)
PasteKey.ZIndex = 4
PasteKey.ClearTextOnFocus = false
PasteKey.Font = Enum.Font.SourceSansSemibold
PasteKey.Text = ""
PasteKey.PlaceholderText = "paste key..."
PasteKey.TextColor3 = NEVERLOSE.Themes.TextColor
PasteKey.TextScaled = true
PasteKey.TextSize = 14
PasteKey.TextTransparency = 0.39
PasteKey.TextWrapped = true
UIStroke.Color = NEVERLOSE.Themes.StrokeColor
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = PasteKey
UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = PasteKey
CopyKey.Name = "CopyKey"
CopyKey.Parent = Frame
CopyKey.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
CopyKey.BackgroundTransparency = 0.2
CopyKey.BorderSizePixel = 0
CopyKey.Position = UDim2.new(0.0489396416, 0, 0.754076123, 0)
CopyKey.Size = UDim2.new(0.42039147, 0, 0.182608709, 0)
CopyKey.ZIndex = 5
CopyKey.Font = Enum.Font.SourceSansBold
CopyKey.Text = "Get Key"
CopyKey.TextColor3 = NEVERLOSE.Themes.TextColor
CopyKey.TextScaled = true
CopyKey.TextSize = 14
CopyKey.TextStrokeColor3 = NEVERLOSE.Themes.MainColor
CopyKey.TextStrokeTransparency = 0.76
CopyKey.TextWrapped = true
UIStroke_2.Color = NEVERLOSE.Themes.StrokeColor
UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_2.Parent = CopyKey
UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = CopyKey
Submit.Name = "Submit"
Submit.Parent = Frame
Submit.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
Submit.BackgroundTransparency = 0.2
Submit.BorderSizePixel = 0
Submit.Position = UDim2.new(0.517944396, 0, 0.754076123, 0)
Submit.Size = UDim2.new(0.428548098, 0, 0.182608709, 0)
Submit.ZIndex = 5
Submit.Font = Enum.Font.SourceSansBold
Submit.Text = "Submit"
Submit.TextColor3 = NEVERLOSE.Themes.TextColor
Submit.TextScaled = true
Submit.TextSize = 14
Submit.TextStrokeColor3 = NEVERLOSE.Themes.MainColor
Submit.TextStrokeTransparency = 0.76
Submit.TextWrapped = true
UIStroke_3.Color = NEVERLOSE.Themes.StrokeColor
UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_3.Parent = Submit
UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = Submit
TweenService:Create(Frame, TweenInfo.new(0.4, Enum.EasingStyle.Quint), { Size = UDim2.new(0.25, 0, 0.25, 0) }):Play()
CopyKey.MouseButton1Click:Connect(OXY_NC(function()
if setclipboard then
setclipboard(tostring(LinkKey))
end
if toclipboard then
toclipboard(tostring(LinkKey))
end
end))
local asd = false
local function_call = nil
Submit.MouseButton1Click:Connect(OXY_NC(function()
if asd then
return
end
asd = true
if callback(PasteKey.Text) then
TweenService:Create(Frame, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), { Size = UDim2.new(0, 0, 0, 0) }):Play()
if not function_call then
function_call = function()
end
end
task.spawn(function()
task.wait(0.45)
ScreenGui:Destroy()
end)
function_call(PasteKey.Text)
return
else
PasteKey.Text = ""
end
asd = false
end))
task.spawn(function()
local dragToggle = nil
local dragSpeed = 0.2
local dragStart = nil
local startPos = nil
local function updateInput(input)
local delta = input.Position - dragStart
local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), { Position = position }):Play()
end
Frame.InputBegan:Connect(OXY_NC(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragToggle = true
dragStart = input.Position
startPos = Frame.Position
input.Changed:Connect(OXY_NC(function()
if input.UserInputState == Enum.UserInputState.End then
dragToggle = false
end
end))
end
end))
InputService.InputChanged:Connect(OXY_NC(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
if dragToggle then
updateInput(input)
end
end
end))
end)
function Functions:Callback(func)
function_call = func
end
return Functions
end
function NEVERLOSE:Notification()
local Notification_ = {}
Notification_.MaxNotifications = 5
local Notification = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
Notification.Name = "Notification"
Notification.Parent = CoreGui
Notification.ResetOnSpawn = false
Notification.ZIndexBehavior = Enum.ZIndexBehavior.Global
Notification.IgnoreGuiInset = true
ProtectGui(Notification)
MainFrame.Name = "MainFrame"
MainFrame.Parent = Notification
MainFrame.AnchorPoint = Vector2.new(1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.99000001, 0, 0.99000001, 0)
MainFrame.Size = UDim2.new(0.35, 0, 0.100000001, 0)
UIListLayout.Parent = MainFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0, 4)
function Notification_:Notify(Type, Head, Body, countdown)
if #MainFrame:GetChildren() > Notification_.MaxNotifications then
return false
end
local typeicon = {}
typeicon["error"] = "9072920609"
typeicon["success"] = "9073052584"
typeicon["warning"] = "9072448788"
typeicon["info"] = "9072944922"
local iconId = typeicon[tostring(Type or "error"):lower()]
local Notify = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local IconImage = Instance.new("ImageLabel")
local HeadTitle = Instance.new("TextLabel")
local BodyTitle = Instance.new("TextLabel")
local Countdown = Instance.new("Frame")
local CloseButton = Instance.new("ImageButton")
Notify.Name = "Notify"
Notify.Parent = MainFrame
Notify.BackgroundColor3 = NEVERLOSE.Themes.SectionColor
Notify.BackgroundTransparency = 0.1
Notify.BorderSizePixel = 0
Notify.ClipsDescendants = true
Notify.Size = UDim2.new(0.75, 0, 0, 0)
UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Notify
UIStroke.Color = NEVERLOSE.Themes.StrokeColor
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = Notify
IconImage.Name = "IconImage"
IconImage.Parent = Notify
IconImage.AnchorPoint = Vector2.new(0.5, 0.5)
IconImage.BackgroundTransparency = 1
IconImage.BorderSizePixel = 0
IconImage.Position = UDim2.new(0.0549999997, 0, 0.5, 0)
IconImage.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)
IconImage.SizeConstraint = Enum.SizeConstraint.RelativeYY
IconImage.ZIndex = 5
IconImage.Image = "rbxassetid://" .. tostring(iconId)
IconImage.ImageTransparency = 1
IconImage.ImageColor3 = NEVERLOSE.Themes.MainColor
HeadTitle.Name = "HeadTitle"
HeadTitle.Parent = Notify
HeadTitle.BackgroundTransparency = 1
HeadTitle.BorderSizePixel = 0
HeadTitle.Position = UDim2.new(0.130612239, 0, 0.0750002638, 0)
HeadTitle.Size = UDim2.new(0.738775492, 0, 0.369384199, 0)
HeadTitle.ZIndex = 7
HeadTitle.Font = Enum.Font.SourceSansSemibold
HeadTitle.Text = Head or "Head"
HeadTitle.TextColor3 = NEVERLOSE.Themes.TextColor
HeadTitle.TextScaled = true
HeadTitle.TextSize = 14
HeadTitle.TextWrapped = true
HeadTitle.TextXAlignment = Enum.TextXAlignment.Left
HeadTitle.TextTransparency = 1
BodyTitle.Name = "BodyTitle"
BodyTitle.Parent = Notify
BodyTitle.BackgroundTransparency = 1
BodyTitle.BorderSizePixel = 0
BodyTitle.Position = UDim2.new(0.130612239, 0, 0.444384605, 0)
BodyTitle.Size = UDim2.new(0.738775492, 0, 0.47554332, 0)
BodyTitle.ZIndex = 7
BodyTitle.Font = Enum.Font.SourceSansSemibold
BodyTitle.Text = Body or "Body"
BodyTitle.TextColor3 = NEVERLOSE.Themes.TextColor
BodyTitle.TextScaled = true
BodyTitle.TextSize = 14
BodyTitle.TextTransparency = 1
BodyTitle.TextWrapped = true
BodyTitle.TextXAlignment = Enum.TextXAlignment.Left
Countdown.Name = "Countdown"
Countdown.Parent = Notify
Countdown.AnchorPoint = Vector2.new(0, 1)
Countdown.BackgroundColor3 = NEVERLOSE.Themes.MainColor
Countdown.BorderSizePixel = 0
Countdown.Position = UDim2.new(0, 0, 1.07500005, 0)
Countdown.Size = UDim2.new(0, 0, 0.100000001, 0)
Countdown.ZIndex = 6
Countdown.BackgroundTransparency = 1
CloseButton.Name = "CloseButton"
CloseButton.Parent = Notify
CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButton.BackgroundTransparency = 1
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.939999998, 0, 0.5, 0)
CloseButton.Size = UDim2.new(0.550000012, 0, 0.550000012, 0)
CloseButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseButton.ZIndex = 5
CloseButton.Image = "rbxassetid://9127564477"
CloseButton.ScaleType = Enum.ScaleType.Fit
CloseButton.ImageTransparency = 1
local currenttime = 0.3
local function start_vu()
TweenService:Create(Notify, TweenInfo.new(currenttime / 2, Enum.EasingStyle.Quint), { Size = UDim2.new(0.99, 0, 0.75, 0) }):Play()
TweenService:Create(UIStroke, TweenInfo.new(currenttime, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { Transparency = 0 }):Play()
TweenService:Create(HeadTitle, TweenInfo.new(currenttime, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { TextTransparency = 0 }):Play()
TweenService:Create(BodyTitle, TweenInfo.new(currenttime, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { TextTransparency = 0.3 }):Play()
TweenService:Create(Countdown, TweenInfo.new(currenttime, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { BackgroundTransparency = 0 }):Play()
TweenService:Create(IconImage, TweenInfo.new(currenttime, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { ImageTransparency = 0 }):Play()
TweenService:Create(CloseButton, TweenInfo.new(currenttime, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { ImageTransparency = 0 }):Play()
end
local function end_vu()
local trantween = TweenService:Create(Notify, TweenInfo.new(currenttime, Enum.EasingStyle.Quint, Enum.EasingDirection.In), { Size = UDim2.new(0.75, 0, 0, 0) })
TweenService:Create(UIStroke, TweenInfo.new(currenttime / 2, Enum.EasingStyle.Quad), { Transparency = 1 }):Play()
TweenService:Create(HeadTitle, TweenInfo.new(currenttime / 2, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
TweenService:Create(BodyTitle, TweenInfo.new(currenttime / 2, Enum.EasingStyle.Quad), { TextTransparency = 1 }):Play()
TweenService:Create(Countdown, TweenInfo.new(currenttime / 2, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 }):Play()
TweenService:Create(IconImage, TweenInfo.new(currenttime / 2, Enum.EasingStyle.Quad), { ImageTransparency = 1 }):Play()
TweenService:Create(CloseButton, TweenInfo.new(currenttime / 2, Enum.EasingStyle.Quad), { ImageTransparency = 1 }):Play()
trantween:Play()
trantween.Completed:Connect(OXY_NC(function()
Notify:Destroy()
end))
end
start_vu()
task.spawn(function()
CloseButton.MouseButton1Click:Connect(OXY_NC(end_vu))
if countdown then
task.wait(1.3)
local tween = TweenService:Create(Countdown, TweenInfo.new(tonumber(countdown) or 3, Enum.EasingStyle.Linear), { Size = UDim2.new(1, 0, 0.1, 0) })
tween:Play()
tween.Completed:Wait()
task.wait(0.5)
end_vu()
end
end)
end
return Notification_
end
task.spawn(function()
_G.index_neverlose = true
while _G.index_neverlose do
task.wait(0)
for i, v in ipairs(NEVERLOSE.auto_function) do
task.wait()
if v then
task.spawn(v)
end
end
end
end)
-- ============================================================================
-- UPGRADE GUI - DITEMPEL LANGSUNG KE KODE ASLI NEVERLOSE, BUKAN WRAPPER, BUKAN HttpGet
-- Di bawah ini cuma tambahan: warna GUI asli / Manual Spam / Triggerbot / opacity / size seluruh GUI / semua warna + Rainbow
-- Tanpa Parry, tanpa Spam logic. Cuma UI.
-- ============================================================================
if not _G.NEVERLOSE_GUI then
_G.NEVERLOSE_GUI = {}
_G.NEVERLOSE_GUI.manual = {}
_G.NEVERLOSE_GUI.manual.color = Color3.fromRGB(0, 170, 255)
_G.NEVERLOSE_GUI.manual.opacity = 0.58
_G.NEVERLOSE_GUI.manual.size = 70
_G.NEVERLOSE_GUI.manual.rainbow = false
_G.NEVERLOSE_GUI.manual.hue = 0.55
_G.NEVERLOSE_GUI.trigger = {}
_G.NEVERLOSE_GUI.trigger.color = Color3.fromRGB(0, 170, 255)
_G.NEVERLOSE_GUI.trigger.opacity = 0.58
_G.NEVERLOSE_GUI.trigger.size = 70
_G.NEVERLOSE_GUI.trigger.rainbow = false
_G.NEVERLOSE_GUI.trigger.hue = 0.55
_G.NEVERLOSE_GUI.main = {}
_G.NEVERLOSE_GUI.main.color = Color3.fromRGB(255, 255, 255)
_G.NEVERLOSE_GUI.main.opacity = 0
_G.NEVERLOSE_GUI.main.sizeScale = 1
_G.NEVERLOSE_GUI.main.rainbow = false
_G.NEVERLOSE_GUI.main.hue = 0
_G.NEVERLOSE_GUI.main.textColor = Color3.fromRGB(255, 255, 255)
end
NEVERLOSE.GUIConfig = _G.NEVERLOSE_GUI
NEVERLOSE.WARNA = {}
NEVERLOSE.WARNA["Biru Terang"] = Color3.fromRGB(0, 170, 255)
NEVERLOSE.WARNA["Merah"] = Color3.fromRGB(255, 35, 35)
NEVERLOSE.WARNA["Hijau"] = Color3.fromRGB(0, 255, 120)
NEVERLOSE.WARNA["Kuning"] = Color3.fromRGB(255, 220, 0)
NEVERLOSE.WARNA["Ungu"] = Color3.fromRGB(170, 0, 255)
NEVERLOSE.WARNA["Pink"] = Color3.fromRGB(255, 0, 180)
NEVERLOSE.WARNA["Orange"] = Color3.fromRGB(255, 140, 0)
NEVERLOSE.WARNA["Cyan"] = Color3.fromRGB(0, 255, 255)
NEVERLOSE.WARNA["Putih"] = Color3.fromRGB(255, 255, 255)
NEVERLOSE.WARNA["Hitam"] = Color3.fromRGB(20, 20, 20)
NEVERLOSE.WARNA["Biru Gelap"] = Color3.fromRGB(0, 80, 255)
NEVERLOSE.WARNA_LIST = { "Biru Terang", "Merah", "Hijau", "Kuning", "Ungu", "Pink", "Orange", "Cyan", "Putih", "Hitam", "Biru Gelap" }
function NEVERLOSE:SetGUIColor(namaWarna)
if namaWarna == "Rainbow" then
_G.NEVERLOSE_GUI.main.rainbow = true
return
end
_G.NEVERLOSE_GUI.main.rainbow = false
_G.NEVERLOSE_GUI.main.color = NEVERLOSE.WARNA[namaWarna] or Color3.fromRGB(0, 170, 255)
if NEVERLOSE.Themes then
NEVERLOSE.Themes.MainColor = _G.NEVERLOSE_GUI.main.color
end
end
function NEVERLOSE:SetGUITextColor(namaWarna)
local c = NEVERLOSE.WARNA[namaWarna] or Color3.fromRGB(255, 255, 255)
_G.NEVERLOSE_GUI.main.textColor = c
if NEVERLOSE.Themes then
NEVERLOSE.Themes.TextColor = c
end
end
function NEVERLOSE:SetGUIOpacity(v)
_G.NEVERLOSE_GUI.main.opacity = v
end
function NEVERLOSE:SetGUISizeScale(v)
_G.NEVERLOSE_GUI.main.sizeScale = v
end
function NEVERLOSE:SetGUIRainbow(v)
_G.NEVERLOSE_GUI.main.rainbow = v
end
function NEVERLOSE:SetManualColor(n)
_G.NEVERLOSE_GUI.manual.rainbow = false
_G.NEVERLOSE_GUI.manual.color = NEVERLOSE.WARNA[n] or Color3.fromRGB(0, 170, 255)
NEVERLOSE:ApplyHelperButton("ManualSpam")
end
function NEVERLOSE:SetTriggerColor(n)
_G.NEVERLOSE_GUI.trigger.rainbow = false
_G.NEVERLOSE_GUI.trigger.color = NEVERLOSE.WARNA[n] or Color3.fromRGB(0, 170, 255)
NEVERLOSE:ApplyHelperButton("Triggerbot")
end
function NEVERLOSE:SetManualOpacity(v)
_G.NEVERLOSE_GUI.manual.opacity = v
NEVERLOSE:ApplyHelperButton("ManualSpam")
end
function NEVERLOSE:SetTriggerOpacity(v)
_G.NEVERLOSE_GUI.trigger.opacity = v
NEVERLOSE:ApplyHelperButton("Triggerbot")
end
function NEVERLOSE:SetManualSize(v)
_G.NEVERLOSE_GUI.manual.size = v
NEVERLOSE:ApplyHelperButton("ManualSpam")
end
function NEVERLOSE:SetTriggerSize(v)
_G.NEVERLOSE_GUI.trigger.size = v
NEVERLOSE:ApplyHelperButton("Triggerbot")
end
function NEVERLOSE:SetManualRainbow(v)
_G.NEVERLOSE_GUI.manual.rainbow = v
NEVERLOSE:ApplyHelperButton("ManualSpam")
end
function NEVERLOSE:SetTriggerRainbow(v)
_G.NEVERLOSE_GUI.trigger.rainbow = v
NEVERLOSE:ApplyHelperButton("Triggerbot")
end
function NEVERLOSE:SetAllRainbow(v)
_G.NEVERLOSE_GUI.manual.rainbow = v
_G.NEVERLOSE_GUI.trigger.rainbow = v
_G.NEVERLOSE_GUI.main.rainbow = v
NEVERLOSE:ApplyAllHelperButtons()
end
function NEVERLOSE:SetAllSize(v)
_G.NEVERLOSE_GUI.manual.size = v
_G.NEVERLOSE_GUI.trigger.size = v
NEVERLOSE:ApplyAllHelperButtons()
end
function NEVERLOSE:SetAllOpacity(v)
_G.NEVERLOSE_GUI.manual.opacity = v
_G.NEVERLOSE_GUI.trigger.opacity = v
NEVERLOSE:ApplyAllHelperButtons()
end
function NEVERLOSE:ResetGUI()
_G.NEVERLOSE_GUI.manual = {}
_G.NEVERLOSE_GUI.manual.color = Color3.fromRGB(0, 170, 255)
_G.NEVERLOSE_GUI.manual.opacity = 0.58
_G.NEVERLOSE_GUI.manual.size = 70
_G.NEVERLOSE_GUI.manual.rainbow = false
_G.NEVERLOSE_GUI.manual.hue = 0.55
_G.NEVERLOSE_GUI.trigger = {}
_G.NEVERLOSE_GUI.trigger.color = Color3.fromRGB(0, 170, 255)
_G.NEVERLOSE_GUI.trigger.opacity = 0.58
_G.NEVERLOSE_GUI.trigger.size = 70
_G.NEVERLOSE_GUI.trigger.rainbow = false
_G.NEVERLOSE_GUI.trigger.hue = 0.55
_G.NEVERLOSE_GUI.main.rainbow = false
if NEVERLOSE.Themes then
NEVERLOSE.Themes.MainColor = Color3.fromRGB(255, 255, 255)
end
NEVERLOSE:ApplyAllHelperButtons()
end
if not NEVERLOSE.HelperButtons then
NEVERLOSE.HelperButtons = {}
end
function NEVERLOSE:GetHelperCfg(btnName)
local cfg = _G.NEVERLOSE_GUI.manual
if btnName == "Triggerbot" then
cfg = _G.NEVERLOSE_GUI.trigger
end
if cfg.rainbow then
return Color3.fromHSV(cfg.hue or 0, 1, 1), cfg.opacity, cfg.size
end
return cfg.color, cfg.opacity, cfg.size
end
function NEVERLOSE:ApplyHelperButton(btnName)
local ref = NEVERLOSE.HelperButtons[btnName]
if not ref then
return
end
local cfg = _G.NEVERLOSE_GUI.manual
if btnName == "Triggerbot" then
cfg = _G.NEVERLOSE_GUI.trigger
end
local col = cfg.color
if cfg.rainbow then
col = Color3.fromHSV(cfg.hue or 0, 1, 1)
end
ref.BackgroundColor3 = col
ref.BackgroundTransparency = cfg.opacity
ref.Size = UDim2.fromOffset(cfg.size, cfg.size)
local st = ref:FindFirstChildOfClass("UIStroke")
if st then
st.Color = col
end
end
function NEVERLOSE:ApplyAllHelperButtons()
NEVERLOSE:ApplyHelperButton("Triggerbot")
NEVERLOSE:ApplyHelperButton("ManualSpam")
end
function NEVERLOSE:CreateHelperButton(btnName, position, onClick)
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local gui = PlayerGui:FindFirstChild("NEVERLOSE_UI_ONLY")
if not gui then
gui = Instance.new("ScreenGui")
gui.Name = "NEVERLOSE_UI_ONLY"
gui.ResetOnSpawn = false
gui.Parent = PlayerGui
end
if NEVERLOSE.HelperButtons[btnName] then
NEVERLOSE.HelperButtons[btnName]:Destroy()
end
local _c, _o, _s = NEVERLOSE:GetHelperCfg(btnName)
local btn = Instance.new("TextButton")
btn.Name = btnName
btn.AnchorPoint = Vector2.new(1, 0.5)
btn.Position = position
btn.Size = UDim2.fromOffset(_s, _s)
btn.BackgroundColor3 = _c
btn.BackgroundTransparency = _o
btn.BorderSizePixel = 0
btn.AutoButtonColor = false
btn.Font = Enum.Font.GothamSemibold
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextSize = 14
btn.TextWrapped = true
btn.Text = btnName
btn.ZIndex = 2
btn.Parent = gui
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 0)
corner.Parent = btn
local stroke = Instance.new("UIStroke")
stroke.Color = _c
stroke.Thickness = 1
stroke.Transparency = 0.20
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = btn
local dragging = false
local dragStart = nil
local startPos = nil
btn.InputBegan:Connect(OXY_NC(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = btn.Position
end
end))
btn.InputEnded:Connect(OXY_NC(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = false
end
end))
InputService.InputChanged:Connect(OXY_NC(function(input)
if dragging then
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
local delta = input.Position - dragStart
btn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
end
end))
btn.MouseButton1Click:Connect(OXY_NC(function()
if onClick then
onClick()
end
TweenService:Create(btn, TweenInfo.new(0.2), { BackgroundColor3 = _c }):Play()
end))
NEVERLOSE.HelperButtons[btnName] = btn
return btn
end
if not _G.NEVERLOSE_RAINBOW_LOOP then
_G.NEVERLOSE_RAINBOW_LOOP = true
task.spawn(function()
while true do
task.wait(0.05)
local changed = false
for _, k in pairs({ "manual", "trigger", "main" }) do
local c = _G.NEVERLOSE_GUI[k]
if c then
if c.rainbow then
c.hue = (c.hue + 0.01) % 1
changed = true
end
end
end
if changed then
NEVERLOSE:ApplyAllHelperButtons()
if _G.NEVERLOSE_GUI.main.rainbow then
if NEVERLOSE.Themes then
NEVERLOSE.Themes.MainColor = Color3.fromHSV(_G.NEVERLOSE_GUI.main.hue or 0, 1, 1)
end
end
end
end
end)
end
function NEVERLOSE:AddGUISettings(oxyWindow)
local guiTab = oxyWindow:AddTab("gui", "rbxassetid://10734951847")
local guiSec = guiTab:AddSection("gui warna", "left")
local guiManualSec = guiTab:AddSection("manual spam ui", "left")
local guiTriggerSec = guiTab:AddSection("triggerbot ui", "right")
local guiSizeSec = guiTab:AddSection("size & opacity", "right")
local guiInputSec = guiTab:AddSection("input & cari (V12)", "right")
local warnaList = { "Biru Terang", "Merah", "Hijau", "Kuning", "Ungu", "Pink", "Orange", "Cyan", "Putih", "Hitam", "Biru Gelap", "Rainbow" }
local warnaList2 = { "Biru Terang", "Merah", "Hijau", "Kuning", "Ungu", "Pink", "Orange", "Cyan", "Putih", "Hitam", "Biru Gelap" }
guiSec:AddDropdown("warna gui asli", warnaList, "Biru Terang", function(v)
NEVERLOSE:SetGUIColor(v)
end)
guiSec:AddToggle("rainbow gui asli", false, function(v)
NEVERLOSE:SetGUIRainbow(v)
end)
guiSec:AddSlider("opacity gui asli", 0, 90, 0, function(v)
NEVERLOSE:SetGUIOpacity(v / 100)
end)
guiSec:AddSlider("size gui asli (%)", 50, 150, 100, function(v)
NEVERLOSE:SetGUISizeScale(v / 100)
end)
guiSec:AddDropdown("warna text gui asli", { "Putih", "Hitam", "Kuning", "Merah", "Hijau", "Cyan", "Pink" }, "Putih", function(v)
NEVERLOSE:SetGUITextColor(v)
end)
guiSec:AddColorPicker("warna gui (picker)", Color3.fromRGB(0, 170, 255), function(c, name)
NEVERLOSE:SetGUIColor(name)
end)
guiManualSec:AddDropdown("warna manual spam", warnaList2, "Biru Terang", function(v)
NEVERLOSE:SetManualColor(v)
end)
guiManualSec:AddToggle("rainbow manual spam", false, function(v)
NEVERLOSE:SetManualRainbow(v)
end)
guiManualSec:AddSlider("opacity manual spam", 0, 95, 58, function(v)
NEVERLOSE:SetManualOpacity(v / 100)
end)
guiManualSec:AddSlider("size manual spam", 40, 150, 70, function(v)
NEVERLOSE:SetManualSize(v)
end)
guiManualSec:AddSlider("hue manual (rainbow)", 0, 100, 55, function(v)
_G.NEVERLOSE_GUI.manual.hue = v / 100
NEVERLOSE:ApplyHelperButton("ManualSpam")
end)
guiTriggerSec:AddDropdown("warna triggerbot", warnaList2, "Biru Terang", function(v)
NEVERLOSE:SetTriggerColor(v)
end)
guiTriggerSec:AddToggle("rainbow triggerbot", false, function(v)
NEVERLOSE:SetTriggerRainbow(v)
end)
guiTriggerSec:AddSlider("opacity triggerbot", 0, 95, 58, function(v)
NEVERLOSE:SetTriggerOpacity(v / 100)
end)
guiTriggerSec:AddSlider("size triggerbot", 40, 150, 70, function(v)
NEVERLOSE:SetTriggerSize(v)
end)
guiTriggerSec:AddSlider("hue trigger (rainbow)", 0, 100, 55, function(v)
_G.NEVERLOSE_GUI.trigger.hue = v / 100
NEVERLOSE:ApplyHelperButton("Triggerbot")
end)
guiSizeSec:AddToggle("rainbow semua", false, function(v)
NEVERLOSE:SetAllRainbow(v)
end)
guiSizeSec:AddSlider("size semua tombol", 40, 150, 70, function(v)
NEVERLOSE:SetAllSize(v)
end)
guiSizeSec:AddSlider("opacity semua tombol", 0, 95, 58, function(v)
NEVERLOSE:SetAllOpacity(v / 100)
end)
guiSizeSec:AddButton("reset warna gui", function()
NEVERLOSE:ResetGUI()
end)
guiInputSec:AddTitle("input baru V12")
guiInputSec:AddParagraph("Ini contoh semua fungsi baru. Ketik di Input, cari di SearchInput, klik Cycle buat ganti warna.")
guiInputSec:AddInput("nama custom", "ketik nama...", "OXY", function(txt)
end)
guiInputSec:AddNumberInput("size angka", "70", 70, 40, 150, function(n)
NEVERLOSE:SetAllSize(n)
end)
guiInputSec:AddSearchInput("cari warna", "ketik: merah...", warnaList2, "Biru Terang", function(v)
NEVERLOSE:SetGUIColor(v)
end)
guiInputSec:AddCycleButton("warna gui next", warnaList2, "Biru Terang", function(v)
NEVERLOSE:SetGUIColor(v)
end)
guiInputSec:AddProgressBar("gui siap", 100)
guiInputSec:AddCopyButton("copy link neverlose", "https://github.com/zena48520-droid/NeverLose")
guiInputSec:AddDivider()
guiInputSec:AddMultiDropdown("warna favorit", warnaList2, { "Biru Terang" }, function(list)
end)
return guiTab
end
return NEVERLOSE

PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["AssetId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  NAMECALL R1 R1 K4 ["CopyToClipboard"]
  CALL R1 2 0
  GETUPVAL R1 1
  DUPTABLE R3 K6 [{"copied"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["copied"]
  NAMECALL R1 R1 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"copied"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["copied"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onCopyClicked"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R2 K3 ["copied"]
  GETTABLEKS R5 R1 K4 ["YPos"]
  GETTABLEKS R6 R1 K5 ["AssetId"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["Frame"]
  DUPTABLE R9 K12 [{"BackgroundTransparency", "Position", "AnchorPoint", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K8 ["BackgroundTransparency"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADK R11 K16 [0.5]
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R5
  CALL R10 4 1
  SETTABLEKS R10 R9 K9 ["Position"]
  GETIMPORT R10 K18 [Vector2.new]
  LOADK R11 K16 [0.5]
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["AnchorPoint"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 0
  LOADN R12 111
  LOADN R13 0
  LOADN R14 24
  CALL R10 4 1
  SETTABLEKS R10 R9 K11 ["Size"]
  DUPTABLE R10 K21 [{"LayoutContainer", "CopiedLabel"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K7 ["Frame"]
  DUPTABLE R13 K22 [{"BackgroundTransparency", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K8 ["BackgroundTransparency"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K11 ["Size"]
  DUPTABLE R14 K26 [{"UIListLayout", "IDLabel", "CopyButton"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  LOADK R16 K23 ["UIListLayout"]
  DUPTABLE R17 K32 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R18 K35 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K27 ["FillDirection"]
  GETIMPORT R18 K37 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R18 R17 K28 ["HorizontalAlignment"]
  GETIMPORT R18 K38 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K29 ["VerticalAlignment"]
  GETIMPORT R18 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K30 ["SortOrder"]
  GETIMPORT R18 K42 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K31 ["Padding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K23 ["UIListLayout"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  LOADK R16 K43 ["TextLabel"]
  DUPTABLE R17 K50 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K8 ["BackgroundTransparency"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K51 ["FONT"]
  SETTABLEKS R18 R17 K44 ["Font"]
  LOADK R19 K52 ["ID: "]
  MOVE R20 R6
  CONCAT R18 R19 R20
  SETTABLEKS R18 R17 K45 ["Text"]
  GETTABLEKS R19 R3 K53 ["uploadResult"]
  GETTABLEKS R18 R19 K54 ["idText"]
  SETTABLEKS R18 R17 K46 ["TextColor3"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K55 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R18 R17 K47 ["TextSize"]
  GETIMPORT R18 K15 [UDim2.new]
  LOADN R19 0
  LOADN R20 86
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K11 ["Size"]
  GETIMPORT R18 K56 [Enum.TextYAlignment.Center]
  SETTABLEKS R18 R17 K48 ["TextYAlignment"]
  GETIMPORT R18 K57 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K49 ["TextXAlignment"]
  LOADN R18 1
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["IDLabel"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  LOADK R16 K58 ["ImageButton"]
  NEWTABLE R17 8 0
  GETIMPORT R18 K15 [UDim2.new]
  LOADN R19 0
  LOADN R20 20
  LOADN R21 0
  LOADN R22 20
  CALL R18 4 1
  SETTABLEKS R18 R17 K11 ["Size"]
  LOADK R18 K59 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
  SETTABLEKS R18 R17 K60 ["Image"]
  GETTABLEKS R19 R3 K53 ["uploadResult"]
  GETTABLEKS R18 R19 K61 ["buttonColor"]
  SETTABLEKS R18 R17 K62 ["ImageColor3"]
  LOADN R18 1
  SETTABLEKS R18 R17 K8 ["BackgroundTransparency"]
  LOADN R18 2
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K63 ["Event"]
  GETTABLEKS R18 R19 K64 ["MouseButton1Click"]
  GETTABLEKS R19 R0 K65 ["onCopyClicked"]
  SETTABLE R19 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["CopyButton"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K19 ["LayoutContainer"]
  MOVE R11 R4
  JUMPIFNOT R11 [+67]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K43 ["TextLabel"]
  DUPTABLE R13 K66 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "AnchorPoint", "Position", "TextYAlignment", "TextXAlignment"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K8 ["BackgroundTransparency"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K51 ["FONT"]
  SETTABLEKS R14 R13 K44 ["Font"]
  GETTABLEKS R14 R1 K67 ["Localization"]
  LOADK R16 K68 ["AssetConfigUpload"]
  LOADK R17 K69 ["IDCopied"]
  NAMECALL R14 R14 K70 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K45 ["Text"]
  GETTABLEKS R15 R3 K53 ["uploadResult"]
  GETTABLEKS R14 R15 K71 ["greenText"]
  SETTABLEKS R14 R13 K46 ["TextColor3"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K55 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R14 R13 K47 ["TextSize"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 0
  LOADN R16 64
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K11 ["Size"]
  GETIMPORT R14 K18 [Vector2.new]
  LOADN R15 0
  LOADK R16 K16 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K10 ["AnchorPoint"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 0
  LOADN R16 116
  LOADK R17 K16 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K9 ["Position"]
  GETIMPORT R14 K56 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K48 ["TextYAlignment"]
  GETIMPORT R14 K57 [Enum.TextXAlignment.Center]
  SETTABLEKS R14 R13 K49 ["TextXAlignment"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["CopiedLabel"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["StudioService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K11 ["Core"]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R4 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R8 R2 K14 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K15 ["ContextServices"]
  GETTABLEKS R7 R6 K16 ["withContext"]
  GETTABLEKS R8 R3 K17 ["PureComponent"]
  LOADK R10 K18 ["CopyID"]
  NAMECALL R8 R8 K19 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K21 ["init"]
  DUPCLOSURE R9 K22 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K23 ["render"]
  MOVE R9 R7
  DUPTABLE R10 K26 [{"Stylizer", "Localization"}]
  GETTABLEKS R11 R6 K24 ["Stylizer"]
  SETTABLEKS R11 R10 K24 ["Stylizer"]
  GETTABLEKS R11 R6 K25 ["Localization"]
  SETTABLEKS R11 R10 K25 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1

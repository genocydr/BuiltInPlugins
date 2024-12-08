PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["OnClosed"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Tag"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  NEWTABLE R5 16 0
  GETTABLEKS R6 R2 K3 ["Padding"]
  SETTABLEKS R6 R5 K3 ["Padding"]
  GETIMPORT R6 K7 [Enum.AutomaticSize.XY]
  SETTABLEKS R6 R5 K5 ["AutomaticSize"]
  GETTABLEKS R6 R2 K8 ["LayoutOrder"]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  GETIMPORT R6 K11 [Enum.FillDirection.Horizontal]
  SETTABLEKS R6 R5 K12 ["Layout"]
  GETIMPORT R6 K15 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R6 R5 K13 ["HorizontalAlignment"]
  GETIMPORT R6 K18 [Enum.VerticalAlignment.Center]
  SETTABLEKS R6 R5 K16 ["VerticalAlignment"]
  DUPTABLE R6 K20 [{"Left", "Right"}]
  LOADN R7 6
  SETTABLEKS R7 R6 K14 ["Left"]
  LOADN R7 6
  SETTABLEKS R7 R6 K19 ["Right"]
  SETTABLEKS R6 R5 K3 ["Padding"]
  LOADN R6 6
  SETTABLEKS R6 R5 K21 ["Spacing"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K22 ["Tag"]
  LOADK R7 K23 ["Secondary"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K26 [{"Label", "CloseButton"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K28 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R10 K7 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K5 ["AutomaticSize"]
  LOADN R10 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  GETTABLEKS R11 R2 K22 ["Tag"]
  GETTABLEKS R10 R11 K24 ["Label"]
  SETTABLEKS R10 R9 K27 ["Text"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K24 ["Label"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K29 ["ImageButton"]
  NEWTABLE R9 8 0
  LOADN R10 1
  SETTABLEKS R10 R9 K30 ["BackgroundTransparency"]
  LOADN R10 2
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  GETIMPORT R10 K33 [UDim2.fromOffset]
  LOADN R11 12
  LOADN R12 12
  CALL R10 2 1
  SETTABLEKS R10 R9 K34 ["Size"]
  LOADK R10 K35 ["rbxasset://textures/StudioSharedUI/clear-hover.png"]
  SETTABLEKS R10 R9 K36 ["Image"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K37 ["Event"]
  GETTABLEKS R10 R11 K38 ["MouseButton1Click"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  CALL R7 2 1
  SETTABLEKS R7 R6 K25 ["CloseButton"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R2 K11 ["Dash"]
  GETTABLEKS R6 R5 K12 ["join"]
  GETTABLEKS R7 R2 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["IconButton"]
  GETTABLEKS R9 R7 K15 ["Pane"]
  GETTABLEKS R10 R7 K16 ["TextLabel"]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Actions"]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K19 ["Components"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K20 ["Types"]
  CALL R13 1 1
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K21 ["Util"]
  GETTABLEKS R15 R1 K22 ["PureComponent"]
  LOADK R17 K23 ["TagComponent"]
  NAMECALL R15 R15 K24 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K25 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R16 R15 K26 ["render"]
  MOVE R16 R4
  DUPTABLE R17 K30 [{"Analytics", "Localization", "Stylizer"}]
  GETTABLEKS R18 R3 K27 ["Analytics"]
  SETTABLEKS R18 R17 K27 ["Analytics"]
  GETTABLEKS R18 R3 K28 ["Localization"]
  SETTABLEKS R18 R17 K28 ["Localization"]
  GETTABLEKS R19 R2 K31 ["Style"]
  GETTABLEKS R18 R19 K29 ["Stylizer"]
  SETTABLEKS R18 R17 K29 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1

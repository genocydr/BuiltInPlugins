PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Stylizer"]
  GETTABLEKS R4 R2 K2 ["FakeLoadProps"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["Dictionary"]
  GETTABLEKS R5 R6 K4 ["join"]
  GETUPVAL R6 1
  MOVE R7 R4
  LOADK R8 K5 ["OnFakeLoadCompleted"]
  CALL R6 2 1
  DUPTABLE R7 K8 [{"Size", "LayoutOrder"}]
  GETIMPORT R8 K11 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  GETTABLEKS R12 R3 K12 ["BarHeight"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K6 ["Size"]
  SETTABLEKS R1 R7 K7 ["LayoutOrder"]
  CALL R5 2 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K13 ["createElement"]
  GETUPVAL R7 3
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Stylizer"]
  GETTABLEKS R4 R2 K2 ["Progress"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K6 [{"Size", "LayoutOrder", "Progress"}]
  GETIMPORT R8 K9 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  GETTABLEKS R12 R3 K10 ["BarHeight"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K4 ["Size"]
  SETTABLEKS R1 R7 K5 ["LayoutOrder"]
  SETTABLEKS R4 R7 K2 ["Progress"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Text"]
  GETTABLEKS R3 R1 K2 ["FakeLoadProps"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K7 [{"OnFocusLost"}]
  DUPCLOSURE R9 K8 [PROTO_2]
  SETTABLEKS R9 R8 K6 ["OnFocusLost"]
  DUPTABLE R9 K10 [{"Pane"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K17 [{"BackgroundColor3", "BackgroundTransparency", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETTABLEKS R13 R4 K18 ["BackgroundColor"]
  SETTABLEKS R13 R12 K11 ["BackgroundColor3"]
  GETTABLEKS R13 R4 K12 ["BackgroundTransparency"]
  SETTABLEKS R13 R12 K12 ["BackgroundTransparency"]
  GETIMPORT R13 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K13 ["Layout"]
  GETIMPORT R13 K24 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K14 ["HorizontalAlignment"]
  GETIMPORT R13 K25 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K15 ["VerticalAlignment"]
  GETTABLEKS R13 R4 K16 ["Padding"]
  SETTABLEKS R13 R12 K16 ["Padding"]
  DUPTABLE R13 K27 [{"Text", "ProgressBar"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K32 [{"AutomaticSize", "BackgroundTransparency", "TextSize", "Text", "TextWrapped", "LayoutOrder"}]
  GETIMPORT R17 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K28 ["AutomaticSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K12 ["BackgroundTransparency"]
  GETTABLEKS R17 R4 K29 ["TextSize"]
  SETTABLEKS R17 R16 K29 ["TextSize"]
  SETTABLEKS R2 R16 K1 ["Text"]
  LOADB R17 1
  SETTABLEKS R17 R16 K30 ["TextWrapped"]
  NAMECALL R17 R5 K35 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K31 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K1 ["Text"]
  JUMPIFNOT R3 [+7]
  NAMECALL R16 R5 K35 ["getNextOrder"]
  CALL R16 1 -1
  NAMECALL R14 R0 K36 ["renderFakeLoadingBar"]
  CALL R14 -1 1
  JUMP [+6]
  NAMECALL R16 R5 K35 ["getNextOrder"]
  CALL R16 1 -1
  NAMECALL R14 R0 K37 ["renderLoadingBar"]
  CALL R14 -1 1
  SETTABLEKS R14 R13 K26 ["ProgressBar"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K9 ["Pane"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_4:
  GETTABLEKS R3 R1 K0 ["FakeLoadProps"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["FakeLoadProps"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K2 ["Completed"]
  JUMPIF R5 [+1]
  RETURN R0 0
  JUMPIFNOT R3 [+6]
  GETTABLEKS R5 R3 K2 ["Completed"]
  GETTABLEKS R6 R4 K2 ["Completed"]
  JUMPIFEQ R5 R6 [+7]
  GETTABLEKS R5 R4 K3 ["OnFakeLoadCompleted"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R5 R4 K3 ["OnFakeLoadCompleted"]
  CALL R5 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K11 ["omit"]
  GETTABLEKS R6 R4 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["withContext"]
  GETTABLEKS R8 R4 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["CaptureFocus"]
  GETTABLEKS R10 R8 K16 ["TextLabel"]
  GETTABLEKS R11 R8 K17 ["Pane"]
  GETTABLEKS R12 R8 K18 ["FakeLoadingBar"]
  GETTABLEKS R13 R8 K19 ["LoadingBar"]
  GETTABLEKS R14 R4 K20 ["Util"]
  GETTABLEKS R15 R14 K21 ["LayoutOrderIterator"]
  GETTABLEKS R16 R1 K22 ["PureComponent"]
  LOADK R18 K23 ["ProgressBar"]
  NAMECALL R16 R16 K24 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K25 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K26 ["renderFakeLoadingBar"]
  DUPCLOSURE R17 K27 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K28 ["renderLoadingBar"]
  DUPCLOSURE R17 K29 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R17 R16 K30 ["render"]
  DUPCLOSURE R17 K31 [PROTO_4]
  SETTABLEKS R17 R16 K32 ["didUpdate"]
  MOVE R17 R7
  DUPTABLE R18 K34 [{"Stylizer"}]
  GETTABLEKS R19 R6 K33 ["Stylizer"]
  SETTABLEKS R19 R18 K33 ["Stylizer"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  RETURN R16 1

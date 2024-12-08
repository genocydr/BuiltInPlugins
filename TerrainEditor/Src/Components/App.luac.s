PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+20]
  GETUPVAL R0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETTABLEKS R2 R3 K1 ["Parent"]
  NAMECALL R0 R0 K2 ["setRoot"]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  GETTABLEKS R3 R4 K3 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K4 ["X"]
  NAMECALL R0 R0 K5 ["setPluginWidth"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+11]
  GETUPVAL R0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  GETTABLEKS R3 R4 K1 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K2 ["X"]
  NAMECALL R0 R0 K3 ["setPluginWidth"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  GETUPVAL R1 1
  GETIMPORT R2 K3 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 -1
  CALL R1 -1 2
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R4 3
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R6 0 0
  CALL R4 2 0
  GETUPVAL R4 4
  NEWCLOSURE R5 P1
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K2 ["new"]
  CALL R5 0 1
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 7
  NEWTABLE R8 8 0
  SETTABLEKS R3 R8 K5 ["ForwardRef"]
  GETIMPORT R9 K8 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["Size"]
  GETIMPORT R9 K13 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K14 ["Layout"]
  GETIMPORT R9 K17 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K15 ["VerticalAlignment"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K18 ["Change"]
  GETTABLEKS R9 R10 K19 ["AbsoluteSize"]
  SETTABLE R4 R8 R9
  DUPTABLE R9 K23 [{"Toolbar", "ToolSettings", "ToolGizmos"}]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K26 [{"LayoutOrder", "OnAbsoluteSizeChanged"}]
  NAMECALL R13 R5 K27 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K24 ["LayoutOrder"]
  SETTABLEKS R2 R12 K25 ["OnAbsoluteSizeChanged"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["Toolbar"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 9
  DUPTABLE R12 K28 [{"LayoutOrder", "Size"}]
  NAMECALL R13 R5 K27 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K24 ["LayoutOrder"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  GETTABLEKS R18 R1 K30 ["Y"]
  MINUS R17 R18
  CALL R13 4 1
  SETTABLEKS R13 R12 K9 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["ToolSettings"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 10
  DUPTABLE R12 K28 [{"LayoutOrder", "Size"}]
  NAMECALL R13 R5 K27 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K24 ["LayoutOrder"]
  GETIMPORT R13 K29 [UDim2.new]
  CALL R13 0 1
  SETTABLEKS R13 R12 K9 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["ToolGizmos"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
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
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETTABLEKS R4 R1 K11 ["useCallback"]
  GETTABLEKS R5 R1 K12 ["useEffect"]
  GETTABLEKS R6 R1 K13 ["useRef"]
  GETTABLEKS R7 R1 K14 ["useState"]
  GETTABLEKS R8 R2 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Pane"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETTABLEKS R11 R12 K19 ["Toolbar"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K20 ["ToolGizmos"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K18 ["Components"]
  GETTABLEKS R13 R14 K21 ["ToolSettings"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K22 ["Controllers"]
  GETTABLEKS R14 R15 K23 ["PluginController"]
  CALL R13 1 1
  DUPCLOSURE R14 K24 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  RETURN R14 1

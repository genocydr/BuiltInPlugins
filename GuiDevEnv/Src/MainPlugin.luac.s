PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  DUPCLOSURE R2 K0 [PROTO_0]
  SETTABLEKS R2 R0 K1 ["onClose"]
  DUPCLOSURE R2 K2 [PROTO_1]
  SETTABLEKS R2 R0 K3 ["onRestore"]
  GETTABLEKS R3 R0 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["plugin"]
  NAMECALL R2 R2 K6 ["GetMouse"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["mouse"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["plugin"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["provide"]
  NEWTABLE R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["new"]
  MOVE R6 R2
  CALL R5 1 -1
  SETLIST R4 R5 -1 [1]
  DUPTABLE R5 K5 [{"MainWidget"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K17 [{"Id", "Enabled", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose", "ShouldRestore", "OnWidgetRestored"}]
  LOADK R9 K18 ["GuiDevEnv"]
  SETTABLEKS R9 R8 K7 ["Id"]
  LOADB R9 0
  SETTABLEKS R9 R8 K8 ["Enabled"]
  GETTABLEKS R9 R2 K19 ["Name"]
  SETTABLEKS R9 R8 K9 ["Title"]
  GETIMPORT R9 K22 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K10 ["ZIndexBehavior"]
  GETIMPORT R9 K24 [Enum.InitialDockState.Float]
  SETTABLEKS R9 R8 K11 ["InitialDockState"]
  GETIMPORT R9 K26 [Vector2.new]
  LOADN R10 128
  LOADN R11 224
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["Size"]
  GETIMPORT R9 K26 [Vector2.new]
  LOADN R10 250
  LOADN R11 200
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["MinSize"]
  GETTABLEKS R9 R0 K27 ["onClose"]
  SETTABLEKS R9 R8 K14 ["OnClose"]
  LOADB R9 1
  SETTABLEKS R9 R8 K15 ["ShouldRestore"]
  GETTABLEKS R9 R0 K28 ["onRestore"]
  SETTABLEKS R9 R8 K16 ["OnWidgetRestored"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["MainWidget"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Plugin"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["DockWidget"]
  GETTABLEKS R7 R1 K12 ["PureComponent"]
  LOADK R9 K13 ["MainPlugin"]
  NAMECALL R7 R7 K14 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K15 [PROTO_2]
  SETTABLEKS R8 R7 K16 ["init"]
  DUPCLOSURE R8 K17 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K18 ["render"]
  RETURN R7 1

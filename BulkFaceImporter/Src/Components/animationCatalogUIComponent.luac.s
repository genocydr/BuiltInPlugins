PROTO_0:
  DUPTABLE R1 K1 [{"items"}]
  NEWTABLE R2 8 0
  LOADK R3 K2 [10921269718]
  SETTABLEKS R3 R2 K3 ["Rthro-Walk"]
  LOADK R3 K4 [10921261968]
  SETTABLEKS R3 R2 K5 ["Rthro-Run"]
  LOADK R3 K6 [10921257536]
  SETTABLEKS R3 R2 K7 ["Rthro-Climb"]
  LOADK R3 K8 [10921263860]
  SETTABLEKS R3 R2 K9 ["Rthro-Jump"]
  LOADK R3 K10 [10921262864]
  SETTABLEKS R3 R2 K11 ["Rthro-Fall"]
  LOADK R3 K12 [10921264784]
  SETTABLEKS R3 R2 K13 ["Rthro-Swim"]
  LOADK R3 K14 [10921258489]
  SETTABLEKS R3 R2 K15 ["Rthro-Idle"]
  SETTABLEKS R2 R1 K0 ["items"]
  SETTABLEKS R1 R0 K16 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["attachAnimation"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["items"]
  NEWTABLE R2 0 0
  GETIMPORT R3 K3 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K9 [{"Style", "Text", "Size", "OnClick"}]
  LOADK R11 K10 ["Round"]
  SETTABLEKS R11 R10 K5 ["Style"]
  SETTABLEKS R6 R10 K6 ["Text"]
  GETIMPORT R11 K13 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 30
  CALL R11 4 1
  SETTABLEKS R11 R10 K7 ["Size"]
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K8 ["OnClick"]
  CALL R8 2 1
  SETTABLE R8 R2 R6
  FORGLOOP R3 2 [-27]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  LOADK R4 K14 ["Frame"]
  DUPTABLE R5 K16 [{"Size", "BackgroundColor3"}]
  GETIMPORT R6 K13 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K7 ["Size"]
  GETIMPORT R6 K19 [Color3.fromRGB]
  LOADN R7 100
  LOADN R8 100
  LOADN R9 100
  CALL R6 3 1
  SETTABLEKS R6 R5 K15 ["BackgroundColor3"]
  NEWTABLE R6 0 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K21 [{"Size", "CanvasSize"}]
  GETIMPORT R10 K13 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K7 ["Size"]
  GETIMPORT R10 K13 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LENGTH R15 R1
  MULK R14 R15 K22 [30]
  CALL R10 4 1
  SETTABLEKS R10 R9 K20 ["CanvasSize"]
  MOVE R10 R2
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["Button"]
  GETTABLEKS R5 R3 K10 ["ScrollingFrame"]
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K11 ["animationFunctions"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K12 ["PureComponent"]
  LOADK R9 K13 ["animationCatalogUIComponent"]
  NAMECALL R7 R7 K14 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K15 [PROTO_0]
  SETTABLEKS R8 R7 K16 ["init"]
  DUPCLOSURE R8 K17 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K18 ["render"]
  RETURN R7 1
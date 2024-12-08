PROTO_0:
  JUMPIFNOTEQKN R0 K0 [-∞] [+3]
  LOADK R1 K1 ["-inf"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K2 [∞] [+3]
  LOADK R1 K3 ["inf"]
  RETURN R1 1
  GETIMPORT R1 K6 [string.format]
  LOADK R2 K7 ["%02d.%02d"]
  FASTCALL1 MATH_FLOOR R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K10 [math.floor]
  CALL R3 1 1
  MULK R7 R0 K11 [100]
  ADDK R6 R7 K12 [0.5]
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K10 [math.floor]
  CALL R5 1 1
  MODK R4 R5 K11 [100]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  RETURN R0 0

PROTO_2:
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["formatTime"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["createLoadingBar"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R4 R1 K2 ["Length"]
  ORK R3 R4 K1 [0]
  FASTCALL2K MATH_MAX R3 K1 [+4]
  LOADK R4 K1 [0]
  GETIMPORT R2 K5 [math.max]
  CALL R2 2 1
  GETTABLEKS R4 R1 K6 ["TimePercentage"]
  JUMPIFNOT R4 [+11]
  GETTABLEKS R5 R1 K6 ["TimePercentage"]
  MUL R4 R5 R2
  LOADN R5 0
  FASTCALL3 MATH_CLAMP R4 R5 R2
  MOVE R6 R2
  GETIMPORT R3 K8 [math.clamp]
  CALL R3 3 1
  JUMP [+1]
  LOADN R3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["createElement"]
  GETUPVAL R5 1
  NEWTABLE R6 4 0
  GETTABLEKS R7 R1 K10 ["Size"]
  SETTABLEKS R7 R6 K10 ["Size"]
  GETTABLEKS R7 R1 K11 ["LayoutOrder"]
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["Tag"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["Tag"]
  GETTABLE R8 R1 R9
  SETTABLE R8 R6 R7
  LOADN R8 0
  JUMPIFNOTLT R8 R2 [+78]
  DUPTABLE R7 K15 [{"ProgressBar", "TextLabel"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K17 [{"ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K16 ["ZIndex"]
  DUPTABLE R11 K19 [{"Progress"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K21 [{"Size", "BackgroundColor"}]
  GETIMPORT R15 K24 [UDim2.fromScale]
  GETTABLEKS R17 R1 K6 ["TimePercentage"]
  LOADN R18 0
  LOADN R19 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R16 K8 [math.clamp]
  CALL R16 3 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K10 ["Size"]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K25 ["BarColor"]
  SETTABLEKS R15 R14 K20 ["BackgroundColor"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["Progress"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["ProgressBar"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 2
  NEWTABLE R10 4 0
  GETTABLEKS R11 R1 K26 ["TextColor"]
  SETTABLEKS R11 R10 K26 ["TextColor"]
  GETIMPORT R11 K29 [string.format]
  LOADK R12 K30 ["%s / %s"]
  GETTABLEKS R13 R0 K31 ["formatTime"]
  MOVE R14 R3
  CALL R13 1 1
  GETTABLEKS R14 R0 K31 ["formatTime"]
  MOVE R15 R2
  CALL R14 1 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K32 ["Text"]
  LOADN R11 2
  SETTABLEKS R11 R10 K16 ["ZIndex"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["Tag"]
  LOADK R12 K33 ["X-Center"]
  SETTABLE R12 R10 R11
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["TextLabel"]
  JUMP [+1]
  LOADNIL R7
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
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
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETTABLEKS R5 R3 K11 ["TextLabel"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K14 ["PureComponent"]
  LOADK R9 K15 ["Timestamp"]
  NAMECALL R7 R7 K16 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K17 [PROTO_2]
  SETTABLEKS R8 R7 K18 ["init"]
  DUPCLOSURE R8 K19 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K20 ["render"]
  RETURN R7 1
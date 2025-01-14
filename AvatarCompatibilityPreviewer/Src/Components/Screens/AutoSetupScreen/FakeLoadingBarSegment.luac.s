PROTO_0:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["%0d%%"]
  MULK R3 R0 K4 [100]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R1 K2 [os.clock]
  CALL R1 0 1
  GETUPVAL R2 0
  SUB R0 R1 R2
  GETUPVAL R1 1
  GETUPVAL R4 2
  DIV R3 R0 R4
  GETUPVAL R4 3
  FASTCALL2 MATH_MIN R3 R4 [+3]
  GETIMPORT R2 K5 [math.min]
  CALL R2 2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["RenderStepped"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_4:
  GETTABLEKS R2 R0 K1 ["startProgress"]
  ORK R1 R2 K0 [0]
  GETTABLEKS R3 R0 K3 ["holdProgress"]
  ORK R2 R3 K2 [1]
  GETTABLEKS R3 R0 K4 ["estimatedTotalTime"]
  LOADB R5 0
  LOADN R6 0
  JUMPIFNOTLE R6 R1 [+9]
  LOADB R5 0
  JUMPIFNOTLE R1 R2 [+6]
  LOADN R6 1
  JUMPIFLE R2 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K5 [+4]
  LOADK R6 K5 ["start and hold progress values are invalid!"]
  GETIMPORT R4 K7 [assert]
  CALL R4 2 0
  GETIMPORT R5 K10 [os.clock]
  CALL R5 0 1
  MUL R6 R1 R3
  SUB R4 R5 R6
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["useState"]
  MOVE R6 R1
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["useEffect"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  NEWTABLE R9 0 2
  MOVE R10 R1
  MOVE R11 R2
  SETLIST R9 R10 2 [1]
  CALL R7 2 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K19 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "Spacing"}]
  GETTABLEKS R10 R0 K14 ["LayoutOrder"]
  SETTABLEKS R10 R9 K14 ["LayoutOrder"]
  GETIMPORT R10 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K15 ["Layout"]
  GETIMPORT R10 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K16 ["HorizontalAlignment"]
  GETIMPORT R10 K28 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 32
  CALL R10 4 1
  SETTABLEKS R10 R9 K17 ["Size"]
  LOADN R10 10
  SETTABLEKS R10 R9 K18 ["Spacing"]
  DUPTABLE R10 K31 [{"LoadingBar", "ProgressPercentage"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K33 [{"LayoutOrder", "Progress", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K14 ["LayoutOrder"]
  SETTABLEKS R5 R13 K32 ["Progress"]
  GETIMPORT R14 K28 [UDim2.new]
  LOADN R15 1
  GETTABLEKS R17 R0 K34 ["displayPercentLabel"]
  JUMPIFNOT R17 [+2]
  LOADN R16 206
  JUMP [+1]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 12
  CALL R14 4 1
  SETTABLEKS R14 R13 K17 ["Size"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["LoadingBar"]
  GETTABLEKS R12 R0 K34 ["displayPercentLabel"]
  JUMPIFNOT R12 [+32]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K38 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextXAlignment"}]
  GETIMPORT R14 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K35 ["AutomaticSize"]
  LOADN R14 2
  SETTABLEKS R14 R13 K14 ["LayoutOrder"]
  GETIMPORT R14 K42 [UDim2.fromOffset]
  LOADN R15 40
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K17 ["Size"]
  GETIMPORT R14 K45 [string.format]
  LOADK R15 K46 ["%0d%%"]
  MULK R16 R5 K47 [100]
  CALL R14 2 1
  SETTABLEKS R14 R13 K36 ["Text"]
  GETIMPORT R14 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K37 ["TextXAlignment"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K30 ["ProgressPercentage"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K13 ["UI"]
  GETTABLEKS R5 R4 K14 ["LoadingBar"]
  GETTABLEKS R6 R4 K15 ["Pane"]
  GETTABLEKS R7 R4 K16 ["TextLabel"]
  DUPCLOSURE R8 K17 [PROTO_0]
  DUPCLOSURE R9 K18 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  RETURN R9 1

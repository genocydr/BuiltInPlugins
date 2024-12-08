PROTO_0:
  DUPTABLE R4 K2 [{"progress", "time"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K0 ["progress"]
  LOADN R5 0
  SETTABLEKS R5 R4 K1 ["time"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["progress"]
  JUMPIFNOTLT R2 R1 [+29]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["RenderStepped"]
  NAMECALL R2 R2 K3 ["Wait"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["isMounted"]
  JUMPIFNOT R3 [+19]
  GETTABLEKS R5 R0 K0 ["state"]
  GETTABLEKS R4 R5 K5 ["time"]
  ADD R3 R4 R2
  DUPTABLE R6 K6 [{"time", "progress"}]
  SETTABLEKS R3 R6 K5 ["time"]
  GETTABLEKS R9 R0 K7 ["props"]
  GETTABLEKS R8 R9 K8 ["loadingTime"]
  DIV R7 R3 R8
  SETTABLEKS R7 R6 K1 ["progress"]
  NAMECALL R4 R0 K9 ["setState"]
  CALL R4 2 0
  JUMPBACK [-34]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["holdPercent"]
  NAMECALL R0 R0 K2 ["loadUntil"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["isMounted"]
  JUMPIFNOT R0 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K4 ["onFinish"]
  JUMPIFNOTEQKNIL R0 [+8]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K5 ["RenderStepped"]
  NAMECALL R0 R0 K6 ["Wait"]
  CALL R0 1 0
  JUMPBACK [-18]
  GETUPVAL R0 0
  LOADN R2 1
  NAMECALL R0 R0 K2 ["loadUntil"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADK R2 K7 [1.5]
  NAMECALL R0 R0 K2 ["loadUntil"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["isMounted"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K4 ["onFinish"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isMounted"]
  GETIMPORT R1 K2 [spawn]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isMounted"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R5 R2 K2 ["progress"]
  FASTCALL2K MATH_MAX R5 K3 [+4]
  LOADK R6 K3 [0]
  GETIMPORT R4 K6 [math.max]
  CALL R4 2 1
  FASTCALL2K MATH_MIN R4 K7 [+4]
  LOADK R5 K7 [1]
  GETIMPORT R3 K9 [math.min]
  CALL R3 2 1
  GETTABLEKS R5 R1 K10 ["loadingText"]
  LOADK R6 K11 [" ( "]
  MULK R11 R3 K13 [100]
  ADDK R10 R11 K12 [0.5]
  FASTCALL1 MATH_FLOOR R10 [+2]
  GETIMPORT R9 K15 [math.floor]
  CALL R9 1 1
  MOVE R7 R9
  LOADK R8 K16 ["% )"]
  CONCAT R4 R5 R8
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["createElement"]
  LOADK R6 K18 ["Frame"]
  DUPTABLE R7 K22 [{"BackgroundTransparency", "Size", "Position"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K19 ["BackgroundTransparency"]
  GETTABLEKS R8 R1 K20 ["Size"]
  SETTABLEKS R8 R7 K20 ["Size"]
  GETTABLEKS R8 R1 K21 ["Position"]
  SETTABLEKS R8 R7 K21 ["Position"]
  DUPTABLE R8 K25 [{"LoadingTitle", "LoadingBar"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K17 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K29 [{"Position", "Size", "Text", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K32 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 226
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["Position"]
  GETIMPORT R12 K32 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 20
  CALL R12 4 1
  SETTABLEKS R12 R11 K20 ["Size"]
  SETTABLEKS R4 R11 K26 ["Text"]
  GETIMPORT R12 K35 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K27 ["TextXAlignment"]
  GETIMPORT R12 K36 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K28 ["TextYAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K23 ["LoadingTitle"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K17 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K38 [{"Progress", "Size"}]
  SETTABLEKS R3 R11 K37 ["Progress"]
  GETIMPORT R12 K32 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K20 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["LoadingBar"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["RunService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["TextLabel"]
  GETTABLEKS R7 R5 K14 ["LoadingBar"]
  GETTABLEKS R8 R3 K15 ["Component"]
  LOADK R10 K16 ["LoadingBarWrapper"]
  NAMECALL R8 R8 K17 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K18 [PROTO_0]
  SETTABLEKS R9 R8 K19 ["init"]
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K21 ["loadUntil"]
  DUPCLOSURE R9 K22 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K23 ["didMount"]
  DUPCLOSURE R9 K24 [PROTO_4]
  SETTABLEKS R9 R8 K25 ["willUnmount"]
  DUPCLOSURE R9 K26 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K27 ["render"]
  RETURN R8 1

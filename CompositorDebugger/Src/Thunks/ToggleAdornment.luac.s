PROTO_0:
  LOADNIL R0
  LOADNIL R1
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  JUMPIFEQKNIL R0 [+5]
  GETTABLEKS R7 R6 K0 ["count"]
  JUMPIFNOTLT R7 R0 [+4]
  GETTABLEKS R0 R6 K0 ["count"]
  MOVE R1 R5
  FORGLOOP R2 2 [-10]
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  GETTABLEKS R3 R2 K0 ["count"]
  ADDK R3 R3 K1 [1]
  SETTABLEKS R3 R2 K0 ["count"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["count"]
  SUBK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["count"]
  RETURN R0 0

PROTO_2:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["Status"]
  GETTABLEKS R1 R2 K2 ["Actor"]
  GETUPVAL R2 0
  NAMECALL R5 R0 K0 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K1 ["Status"]
  GETTABLEKS R3 R4 K3 ["Adornments"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLE R3 R2 R4
  JUMPIFNOT R3 [+5]
  GETUPVAL R5 1
  GETTABLE R4 R2 R5
  GETTABLEKS R3 R4 K4 ["enabled"]
  JUMPIF R3 [+30]
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLE R4 R5 R3
  GETUPVAL R5 1
  DUPTABLE R6 K7 [{"enabled", "colorEntry", "index"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K4 ["enabled"]
  SETTABLEKS R4 R6 K5 ["colorEntry"]
  SETTABLEKS R3 R6 K6 ["index"]
  SETTABLE R6 R2 R5
  GETUPVAL R7 1
  GETTABLE R6 R2 R7
  GETTABLEKS R5 R6 K8 ["gizmo"]
  JUMPIF R5 [+25]
  GETUPVAL R6 1
  GETTABLE R5 R2 R6
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K9 ["new"]
  MOVE R7 R1
  GETUPVAL R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["gizmo"]
  JUMP [+14]
  GETUPVAL R5 1
  GETTABLE R4 R2 R5
  GETTABLEKS R3 R4 K5 ["colorEntry"]
  GETTABLEKS R4 R3 K10 ["count"]
  SUBK R4 R4 K11 [1]
  SETTABLEKS R4 R3 K10 ["count"]
  GETUPVAL R4 1
  GETTABLE R3 R2 R4
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["enabled"]
  GETUPVAL R5 5
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R0 K12 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R5 6
  CALL R5 0 -1
  NAMECALL R3 R0 K12 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["copy"]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Actions"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["SetAdornments"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Thunks"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["RenderAdornments"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K15 ["Gizmo"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K16 ["Types"]
  CALL R9 1 1
  NEWTABLE R10 0 11
  DUPTABLE R11 K19 [{"color", "count"}]
  GETIMPORT R12 K22 [Color3.fromHex]
  LOADK R13 K23 ["#FDEBAC"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K17 ["color"]
  LOADN R12 0
  SETTABLEKS R12 R11 K18 ["count"]
  DUPTABLE R12 K19 [{"color", "count"}]
  GETIMPORT R13 K22 [Color3.fromHex]
  LOADK R14 K24 ["#FFAE3E"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K17 ["color"]
  LOADN R13 0
  SETTABLEKS R13 R12 K18 ["count"]
  DUPTABLE R13 K19 [{"color", "count"}]
  GETIMPORT R14 K22 [Color3.fromHex]
  LOADK R15 K25 ["#F98B58"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K17 ["color"]
  LOADN R14 0
  SETTABLEKS R14 R13 K18 ["count"]
  DUPTABLE R14 K19 [{"color", "count"}]
  GETIMPORT R15 K22 [Color3.fromHex]
  LOADK R16 K26 ["#FF62C0"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K17 ["color"]
  LOADN R15 0
  SETTABLEKS R15 R14 K18 ["count"]
  DUPTABLE R15 K19 [{"color", "count"}]
  GETIMPORT R16 K22 [Color3.fromHex]
  LOADK R17 K27 ["#D65AFC"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["color"]
  LOADN R16 0
  SETTABLEKS R16 R15 K18 ["count"]
  DUPTABLE R16 K19 [{"color", "count"}]
  GETIMPORT R17 K22 [Color3.fromHex]
  LOADK R18 K28 ["#1AC8FF"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K17 ["color"]
  LOADN R17 0
  SETTABLEKS R17 R16 K18 ["count"]
  DUPTABLE R17 K19 [{"color", "count"}]
  GETIMPORT R18 K22 [Color3.fromHex]
  LOADK R19 K29 ["#3BF2B1"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K17 ["color"]
  LOADN R18 0
  SETTABLEKS R18 R17 K18 ["count"]
  DUPTABLE R18 K19 [{"color", "count"}]
  GETIMPORT R19 K22 [Color3.fromHex]
  LOADK R20 K30 ["#0ADE52"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K17 ["color"]
  LOADN R19 0
  SETTABLEKS R19 R18 K18 ["count"]
  DUPTABLE R19 K19 [{"color", "count"}]
  GETIMPORT R20 K22 [Color3.fromHex]
  LOADK R21 K31 ["#95FF0F"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K17 ["color"]
  LOADN R20 0
  SETTABLEKS R20 R19 K18 ["count"]
  DUPTABLE R20 K19 [{"color", "count"}]
  GETIMPORT R21 K22 [Color3.fromHex]
  LOADK R22 K32 ["#DBFF66"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K17 ["color"]
  LOADN R21 0
  SETTABLEKS R21 R20 K18 ["count"]
  DUPTABLE R21 K19 [{"color", "count"}]
  GETIMPORT R22 K22 [Color3.fromHex]
  LOADK R23 K33 ["#FBFF3E"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K17 ["color"]
  LOADN R22 0
  SETTABLEKS R22 R21 K18 ["count"]
  SETLIST R10 R11 11 [1]
  DUPCLOSURE R11 K34 [PROTO_0]
  CAPTURE VAL R10
  DUPCLOSURE R12 K35 [PROTO_1]
  DUPCLOSURE R13 K36 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  RETURN R13 1

PROTO_0:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"impl"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["new"]
  GETVARARGS R2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K0 ["impl"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["impl"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K7 ["ContextServices"]
  GETTABLEKS R2 R1 K8 ["ContextItem"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K7 ["ContextServices"]
  GETTABLEKS R4 R5 K10 ["NetworkingImpl"]
  CALL R3 1 1
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K11 ["Name"]
  NAMECALL R4 R2 K12 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K14 ["new"]
  DUPCLOSURE R5 K15 [PROTO_1]
  SETTABLEKS R5 R4 K16 ["get"]
  RETURN R4 1

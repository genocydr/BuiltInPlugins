PROTO_0:
  DUPTABLE R1 K1 [{"networking"}]
  SETTABLEKS R0 R1 K0 ["networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["networking"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["ContextServices"]
  GETTABLEKS R2 R3 K8 ["ContextItem"]
  LOADK R5 K9 ["RobloxAPI"]
  NAMECALL R3 R2 K10 ["extend"]
  CALL R3 2 1
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K12 ["new"]
  DUPCLOSURE R4 K13 [PROTO_1]
  SETTABLEKS R4 R3 K14 ["get"]
  RETURN R3 1

PROTO_0:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["number"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETIMPORT R7 K4 [script]
  GETTABLEKS R4 R7 K5 ["Name"]
  LOADK R5 K6 [" expected groupOwnerId to be a number, not "]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K1 [typeof]
  CALL R6 1 1
  CONCAT R3 R4 R6
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K8 [assert]
  CALL R1 2 0
  DUPTABLE R1 K10 [{"groupOwnerId"}]
  SETTABLEKS R0 R1 K9 ["groupOwnerId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R1 R2 K8 ["Action"]
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K9 ["Name"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1

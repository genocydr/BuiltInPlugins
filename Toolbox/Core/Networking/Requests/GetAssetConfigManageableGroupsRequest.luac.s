PROTO_0:
  GETTABLEKS R2 R0 K0 ["responseBody"]
  GETTABLEKS R1 R2 K1 ["data"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["getManageableGroups"]
  CALL R1 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K1 ["andThen"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["SetAssetConfigManageableGroups"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Actions"]
  GETTABLEKS R3 R4 K8 ["NetworkError"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

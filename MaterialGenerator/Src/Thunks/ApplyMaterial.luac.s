PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["MaterialVariant"]
  LOADB R2 0
  GETUPVAL R3 1
  LOADK R5 K1 ["Selection"]
  NAMECALL R3 R3 K2 ["getService"]
  CALL R3 2 1
  NAMECALL R4 R3 K3 ["Get"]
  CALL R4 1 3
  FORGPREP R4
  LOADK R11 K4 ["BasePart"]
  NAMECALL R9 R8 K5 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+9]
  GETTABLEKS R9 R1 K6 ["BaseMaterial"]
  SETTABLEKS R9 R8 K7 ["Material"]
  GETTABLEKS R9 R1 K8 ["Name"]
  SETTABLEKS R9 R8 K0 ["MaterialVariant"]
  LOADB R2 1
  FORGLOOP R4 2 [-15]
  JUMPIFNOT R2 [+9]
  GETUPVAL R4 1
  LOADK R6 K9 ["ChangeHistoryService"]
  NAMECALL R4 R4 K2 ["getService"]
  CALL R4 2 1
  LOADK R7 K10 ["MaterialGenerator apply material"]
  NAMECALL R5 R4 K11 ["SetWaypoint"]
  CALL R5 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_1]
  RETURN R2 1
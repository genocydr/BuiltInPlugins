PROTO_0:
  GETTABLEKS R3 R0 K0 ["Permissions"]
  GETTABLEKS R2 R3 K1 ["NewPermissions"]
  JUMPIF R2 [+4]
  GETTABLEKS R3 R0 K0 ["Permissions"]
  GETTABLEKS R2 R3 K2 ["CurrentPermissions"]
  LOADB R3 1
  LOADB R4 1
  GETIMPORT R5 K4 [pairs]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["RoleSubjectKey"]
  GETTABLE R6 R2 R8
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["ActionKey"]
  GETTABLE R10 R9 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["PlayKey"]
  JUMPIFEQ R10 R11 [+8]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["GroupIdKey"]
  GETTABLE R10 R9 R11
  JUMPIFNOTEQ R10 R1 [+2]
  LOADB R3 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["ActionKey"]
  GETTABLE R10 R9 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["NoAccessKey"]
  JUMPIFEQ R10 R11 [+8]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["GroupIdKey"]
  GETTABLE R10 R9 R11
  JUMPIFNOTEQ R10 R1 [+2]
  LOADB R4 0
  FORGLOOP R5 2 [-33]
  JUMPIFNOT R3 [+4]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["PlayKey"]
  RETURN R5 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["NoAccessKey"]
  RETURN R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["MultipleKey"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["PermissionsConstants"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1

PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  FASTCALL1 TYPE R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQ R2 R3 [+3]
  LOADB R2 0
  RETURN R2 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["table"] [+6]
  JUMPIFEQ R0 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETIMPORT R2 K4 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  MOVE R8 R6
  GETTABLE R9 R1 R5
  CALL R7 2 1
  JUMPIF R7 [+2]
  LOADB R7 0
  RETURN R7 1
  FORGLOOP R2 2 [-8]
  GETIMPORT R2 K4 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  MOVE R8 R6
  GETTABLE R9 R0 R5
  CALL R7 2 1
  JUMPIF R7 [+2]
  LOADB R7 0
  RETURN R7 1
  FORGLOOP R2 2 [-8]
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  CAPTURE VAL R0
  RETURN R0 1
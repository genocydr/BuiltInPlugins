PROTO_0:
  NEWTABLE R2 0 0
  MOVE R3 R1
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+12]
  GETIMPORT R4 K1 [ipairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETUPVAL R9 0
  MOVE R10 R8
  MOVE R11 R1
  CALL R9 2 1
  SETTABLE R9 R2 R8
  FORGLOOP R4 2 [inext] [-6]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  CAPTURE VAL R0
  RETURN R0 1
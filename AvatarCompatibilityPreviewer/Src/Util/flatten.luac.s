PROTO_0:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  NEWTABLE R1 0 0
  GETVARARGS R4 -1
  SETLIST R1 R4 -1 [1]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETIMPORT R6 K2 [table.move]
  MOVE R7 R5
  LOADN R8 1
  LENGTH R9 R5
  LENGTH R11 R0
  ADDK R10 R11 K3 [1]
  MOVE R11 R0
  CALL R6 5 0
  FORGLOOP R1 2 [-10]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1

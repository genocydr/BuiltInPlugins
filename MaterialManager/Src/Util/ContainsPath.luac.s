PROTO_0:
  LENGTH R2 R0
  LENGTH R3 R1
  JUMPIFNOTLT R3 R2 [+3]
  LOADB R2 0
  RETURN R2 1
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLE R7 R1 R5
  JUMPIFNOTEQ R6 R7 [+2]
  JUMP [+2]
  LOADB R7 0
  RETURN R7 1
  FORGLOOP R2 2 [inext] [-7]
  LOADB R2 1
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
  DUPCLOSURE R2 K7 [PROTO_0]
  RETURN R2 1

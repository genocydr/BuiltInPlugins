PROTO_0:
  JUMPIFNOT R2 [+8]
  MOVE R5 R2
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R4
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  CALL R5 3 0
  GETTABLEKS R5 R0 K0 ["Components"]
  JUMPIFNOT R5 [+37]
  GETIMPORT R5 K2 [pairs]
  GETTABLEKS R6 R0 K0 ["Components"]
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["List"]
  GETTABLEKS R10 R11 K4 ["join"]
  MOVE R11 R4
  JUMPIF R11 [+2]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R8
  SETLIST R12 R13 1 [1]
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["traverse"]
  MOVE R12 R9
  JUMPIFNOT R1 [+4]
  GETTABLEKS R14 R1 K0 ["Components"]
  GETTABLE R13 R14 R8
  JUMPIF R13 [+1]
  LOADNIL R13
  MOVE R14 R2
  MOVE R15 R3
  MOVE R16 R10
  CALL R11 5 0
  FORGLOOP R5 2 [-30]
  JUMPIFNOT R3 [+8]
  MOVE R5 R3
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R4
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  CALL R5 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["PathUtils"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K12 ["traverse"]
  RETURN R3 1

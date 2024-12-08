PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["AnimationData"]
  GETTABLEKS R4 R1 K2 ["Status"]
  GETTABLEKS R3 R4 K3 ["EditorMode"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K4 ["Events"]
  GETUPVAL R7 2
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R0 K5 ["dispatch"]
  CALL R5 -1 0
  GETTABLEKS R6 R2 K4 ["Events"]
  GETTABLEKS R5 R6 K6 ["Data"]
  GETIMPORT R6 K8 [pairs]
  GETUPVAL R9 1
  GETTABLEKS R7 R9 K6 ["Data"]
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETIMPORT R11 K8 [pairs]
  MOVE R12 R10
  CALL R11 1 3
  FORGPREP_NEXT R11
  GETTABLE R16 R5 R9
  JUMPIFEQKNIL R16 [+5]
  GETTABLE R17 R5 R9
  GETTABLE R16 R17 R14
  JUMPIFNOTEQKNIL R16 [+18]
  GETUPVAL R16 3
  LOADK R18 K9 ["onAddEvent"]
  MOVE R19 R14
  MOVE R20 R15
  MOVE R21 R3
  GETTABLEKS R23 R4 K10 ["Metadata"]
  JUMPIFNOT R23 [+5]
  GETTABLEKS R23 R4 K10 ["Metadata"]
  GETTABLEKS R22 R23 K11 ["Guid"]
  JUMP [+1]
  LOADNIL R22
  NAMECALL R16 R16 K12 ["report"]
  CALL R16 6 0
  FORGLOOP R11 2 [-25]
  FORGLOOP R6 2 [-32]
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["deepCopy"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Thunks"]
  GETTABLEKS R3 R4 K10 ["UpdateAnimationData"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
PROTO_0:
  GETTABLEKS R2 R0 K0 ["Selection"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K1 ["Data"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["getDefaultValue"]
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K4 [pairs]
  GETTABLEKS R4 R0 K0 ["Selection"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R9 R1 K1 ["Data"]
  GETTABLE R8 R9 R6
  JUMPIFNOT R8 [+9]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["setKeyframeData"]
  MOVE R9 R1
  MOVE R10 R6
  DUPTABLE R11 K7 [{"Value"}]
  SETTABLEKS R2 R11 K6 ["Value"]
  CALL R8 3 0
  FORGLOOP R3 2 [-14]
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["SelectedKeyframes"]
  GETTABLEKS R3 R1 K3 ["AnimationData"]
  JUMPIFNOT R3 [+1]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Dictionary"]
  GETTABLEKS R4 R5 K5 ["join"]
  NEWTABLE R5 0 0
  MOVE R6 R3
  CALL R4 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["Dictionary"]
  GETTABLEKS R5 R6 K5 ["join"]
  NEWTABLE R6 0 0
  GETTABLEKS R7 R4 K6 ["Instances"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Instances"]
  GETIMPORT R5 K8 [pairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R10 R4 K6 ["Instances"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["Dictionary"]
  GETTABLEKS R11 R12 K5 ["join"]
  NEWTABLE R12 0 0
  GETTABLEKS R14 R4 K6 ["Instances"]
  GETTABLE R13 R14 R8
  CALL R11 2 1
  SETTABLE R11 R10 R8
  GETTABLEKS R11 R4 K6 ["Instances"]
  GETTABLE R10 R11 R8
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["Dictionary"]
  GETTABLEKS R11 R12 K5 ["join"]
  NEWTABLE R12 0 0
  GETTABLEKS R15 R4 K6 ["Instances"]
  GETTABLE R14 R15 R8
  GETTABLEKS R13 R14 K9 ["Tracks"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["Tracks"]
  GETTABLEKS R11 R4 K6 ["Instances"]
  GETTABLE R10 R11 R8
  GETIMPORT R11 K8 [pairs]
  MOVE R12 R9
  CALL R11 1 3
  FORGPREP_NEXT R11
  GETTABLEKS R16 R10 K9 ["Tracks"]
  GETUPVAL R17 1
  GETTABLEKS R19 R10 K9 ["Tracks"]
  GETTABLE R18 R19 R14
  CALL R17 1 1
  SETTABLE R17 R16 R14
  GETTABLEKS R17 R10 K9 ["Tracks"]
  GETTABLE R16 R17 R14
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K10 ["traverse"]
  MOVE R18 R15
  MOVE R19 R16
  DUPCLOSURE R20 K11 [PROTO_0]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R17 3 0
  FORGLOOP R11 2 [-21]
  FORGLOOP R5 2 [-63]
  GETUPVAL R7 5
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R0 K12 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_2:
  DUPCLOSURE R0 K0 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R0 1

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
  GETTABLEKS R3 R4 K10 ["deepCopy"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["AnimationData"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["TrackUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K13 ["SelectionUtils"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Thunks"]
  GETTABLEKS R7 R8 K15 ["UpdateAnimationData"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R7 1

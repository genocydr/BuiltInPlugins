PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["Status"]
  GETTABLEKS R3 R2 K2 ["Tracks"]
  GETTABLEKS R4 R2 K3 ["SelectedTracks"]
  GETTABLEKS R5 R2 K4 ["RootInstance"]
  GETTABLEKS R6 R2 K5 ["EditorMode"]
  JUMPIFNOTEQKNIL R5 [+2]
  RETURN R0 0
  LOADNIL R7
  GETIMPORT R8 K7 [ipairs]
  MOVE R9 R3
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETTABLEKS R13 R12 K8 ["Name"]
  GETUPVAL R14 0
  JUMPIFNOTEQ R13 R14 [+2]
  MOVE R7 R11
  FORGLOOP R8 2 [inext] [-7]
  JUMPIFNOT R4 [+45]
  GETIMPORT R8 K7 [ipairs]
  MOVE R9 R4
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETUPVAL R13 0
  GETTABLEN R14 R12 1
  JUMPIFNOTEQ R13 R14 [+7]
  GETIMPORT R13 K11 [table.remove]
  MOVE R14 R4
  MOVE R15 R11
  CALL R13 2 0
  JUMP [+2]
  FORGLOOP R8 2 [inext] [-11]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+13]
  GETUPVAL R10 2
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K12 ["Dictionary"]
  GETTABLEKS R11 R12 K13 ["join"]
  MOVE R12 R4
  CALL R11 1 -1
  CALL R10 -1 -1
  NAMECALL R8 R0 K14 ["dispatch"]
  CALL R8 -1 0
  JUMP [+12]
  GETUPVAL R10 4
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K12 ["Dictionary"]
  GETTABLEKS R11 R12 K13 ["join"]
  MOVE R12 R4
  CALL R11 1 -1
  CALL R10 -1 -1
  NAMECALL R8 R0 K14 ["dispatch"]
  CALL R8 -1 0
  JUMPIFNOT R7 [+86]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K15 ["List"]
  GETTABLEKS R8 R9 K16 ["removeIndex"]
  MOVE R9 R3
  MOVE R10 R7
  CALL R8 2 1
  GETUPVAL R11 5
  MOVE R12 R8
  CALL R11 1 -1
  NAMECALL R9 R0 K14 ["dispatch"]
  CALL R9 -1 0
  GETTABLEKS R9 R1 K17 ["AnimationData"]
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K19 [pairs]
  GETTABLEKS R11 R9 K20 ["Instances"]
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETIMPORT R15 K19 [pairs]
  GETTABLEKS R16 R14 K2 ["Tracks"]
  CALL R15 1 3
  FORGPREP_NEXT R15
  GETUPVAL R20 0
  JUMPIFNOTEQ R18 R20 [+50]
  GETTABLEKS R20 R18 K21 ["Keyframes"]
  JUMPIFNOT R20 [+5]
  GETUPVAL R21 6
  GETTABLEKS R22 R18 K21 ["Keyframes"]
  CALL R21 1 1
  NOT R20 R21
  GETUPVAL R21 7
  MOVE R22 R9
  CALL R21 1 1
  GETTABLEKS R24 R21 K20 ["Instances"]
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K2 ["Tracks"]
  LOADNIL R23
  SETTABLE R23 R22 R18
  GETUPVAL R24 8
  MOVE R25 R21
  CALL R24 1 -1
  NAMECALL R22 R0 K14 ["dispatch"]
  CALL R22 -1 0
  GETUPVAL R24 9
  NEWTABLE R25 0 0
  CALL R24 1 -1
  NAMECALL R22 R0 K14 ["dispatch"]
  CALL R22 -1 0
  GETUPVAL R22 10
  LOADK R24 K22 ["onTrackDeleted"]
  GETUPVAL R25 0
  MOVE R26 R20
  MOVE R27 R6
  GETTABLEKS R29 R9 K23 ["Metadata"]
  JUMPIFNOT R29 [+5]
  GETTABLEKS R29 R9 K23 ["Metadata"]
  GETTABLEKS R28 R29 K24 ["Guid"]
  JUMP [+1]
  LOADNIL R28
  NAMECALL R22 R22 K25 ["report"]
  CALL R22 6 0
  RETURN R0 0
  FORGLOOP R15 2 [-53]
  FORGLOOP R10 2 [-61]
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  RETURN R2 1

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
  GETTABLEKS R4 R5 K11 ["isEmpty"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Thunks"]
  GETTABLEKS R5 R6 K13 ["SortAndSetTracks"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Actions"]
  GETTABLEKS R6 R7 K15 ["SetSelectedKeyframes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Actions"]
  GETTABLEKS R7 R8 K16 ["SetSelectedTracks"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K12 ["Thunks"]
  GETTABLEKS R8 R9 K16 ["SetSelectedTracks"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K12 ["Thunks"]
  GETTABLEKS R9 R10 K17 ["UpdateAnimationData"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K18 ["LuaFlags"]
  GETTABLEKS R10 R11 K19 ["GetFFlagSelectFromViewport"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R5
  RETURN R10 1
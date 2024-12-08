PROTO_0:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Dictionary"]
  GETTABLEKS R4 R5 K1 ["join"]
  NEWTABLE R5 0 0
  MOVE R6 R0
  CALL R4 2 1
  MOVE R0 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Dictionary"]
  GETTABLEKS R4 R5 K1 ["join"]
  NEWTABLE R5 0 0
  GETTABLEKS R6 R0 K2 ["Instances"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K2 ["Instances"]
  GETIMPORT R4 K4 [pairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R9 R0 K2 ["Instances"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  NEWTABLE R11 0 0
  GETTABLEKS R13 R0 K2 ["Instances"]
  GETTABLE R12 R13 R7
  CALL R10 2 1
  SETTABLE R10 R9 R7
  GETTABLEKS R10 R0 K2 ["Instances"]
  GETTABLE R9 R10 R7
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  NEWTABLE R11 0 0
  GETTABLEKS R14 R0 K2 ["Instances"]
  GETTABLE R13 R14 R7
  GETTABLEKS R12 R13 K5 ["Tracks"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K5 ["Tracks"]
  GETTABLEKS R10 R0 K2 ["Instances"]
  GETTABLE R9 R10 R7
  GETIMPORT R10 K4 [pairs]
  MOVE R11 R8
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETTABLEKS R15 R9 K5 ["Tracks"]
  GETUPVAL R16 1
  GETTABLEKS R18 R9 K5 ["Tracks"]
  GETTABLE R17 R18 R13
  CALL R16 1 1
  SETTABLE R16 R15 R13
  FORGLOOP R10 2 [-9]
  FORGLOOP R4 2 [-51]
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  MOVE R1 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["getSelectionBounds"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 2
  DUPTABLE R6 K17 [{"animationData", "selectedKeyframes", "pivotTick", "newTick", "pivotValue", "newValue", "scale", "earliestTick", "latestTick", "dragMode"}]
  SETTABLEKS R0 R6 K7 ["animationData"]
  SETTABLEKS R1 R6 K8 ["selectedKeyframes"]
  SETTABLEKS R2 R6 K9 ["pivotTick"]
  SETTABLEKS R2 R6 K10 ["newTick"]
  SETTABLEKS R3 R6 K11 ["pivotValue"]
  SETTABLEKS R3 R6 K12 ["newValue"]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["scale"]
  SETTABLEKS R4 R6 K14 ["earliestTick"]
  SETTABLEKS R5 R6 K15 ["latestTick"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K18 ["DRAG_MODE"]
  GETTABLEKS R7 R8 K19 ["Keyframe"]
  SETTABLEKS R7 R6 K16 ["dragMode"]
  GETUPVAL R9 4
  FASTCALL2 SETMETATABLE R6 R9 [+4]
  MOVE R8 R6
  GETIMPORT R7 K21 [setmetatable]
  CALL R7 2 0
  RETURN R6 1

PROTO_1:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["getTrack"]
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  JUMPIF R5 [+2]
  LOADNIL R6
  RETURN R6 1
  GETTABLEKS R7 R5 K1 ["Data"]
  GETTABLE R6 R7 R3
  JUMPIF R6 [+2]
  LOADNIL R7
  RETURN R7 1
  DUPTABLE R7 K9 [{"instance", "path", "tck", "value", "side", "dragMode", "trackType"}]
  SETTABLEKS R1 R7 K2 ["instance"]
  SETTABLEKS R2 R7 K3 ["path"]
  SETTABLEKS R3 R7 K4 ["tck"]
  GETTABLEKS R8 R6 K10 ["Value"]
  SETTABLEKS R8 R7 K5 ["value"]
  SETTABLEKS R4 R7 K6 ["side"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["DRAG_MODE"]
  GETTABLEKS R8 R9 K12 ["Tangent"]
  SETTABLEKS R8 R7 K7 ["dragMode"]
  GETTABLEKS R8 R5 K13 ["Type"]
  SETTABLEKS R8 R7 K8 ["trackType"]
  GETUPVAL R10 2
  FASTCALL2 SETMETATABLE R7 R10 [+4]
  MOVE R9 R7
  GETIMPORT R8 K15 [setmetatable]
  CALL R8 2 0
  RETURN R7 1

PROTO_2:
  SETTABLEKS R1 R0 K0 ["newTick"]
  SETTABLEKS R2 R0 K1 ["newValue"]
  RETURN R0 0

PROTO_3:
  SETTABLEKS R1 R0 K0 ["newTick"]
  GETTABLEKS R2 R0 K1 ["pivotTick"]
  GETTABLEKS R4 R0 K2 ["latestTick"]
  JUMPIFNOTEQ R2 R4 [+3]
  SUB R3 R2 R1
  JUMPIF R3 [+1]
  SUB R3 R1 R2
  GETTABLEKS R6 R0 K2 ["latestTick"]
  GETTABLEKS R7 R0 K3 ["earliestTick"]
  SUB R5 R6 R7
  DIV R4 R3 R5
  SETTABLEKS R4 R0 K4 ["scale"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Dictionary"]
  GETTABLEKS R4 R5 K1 ["join"]
  NEWTABLE R5 0 0
  MOVE R6 R0
  CALL R4 2 1
  MOVE R0 R4
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K2 ["Events"]
  CALL R4 1 1
  SETTABLEKS R4 R0 K2 ["Events"]
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  MOVE R1 R4
  DUPTABLE R4 K8 [{"pivotTick", "newTick", "animationData", "eventFilters", "selectedEvents"}]
  SETTABLEKS R3 R4 K3 ["pivotTick"]
  SETTABLEKS R3 R4 K4 ["newTick"]
  SETTABLEKS R0 R4 K5 ["animationData"]
  SETTABLEKS R2 R4 K6 ["eventFilters"]
  SETTABLEKS R1 R4 K7 ["selectedEvents"]
  GETUPVAL R7 2
  FASTCALL2 SETMETATABLE R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K10 [setmetatable]
  CALL R5 2 0
  RETURN R4 1

PROTO_5:
  SETTABLEKS R1 R0 K0 ["newTick"]
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
  GETTABLEKS R3 R4 K10 ["AnimationData"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["deepCopy"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  NEWTABLE R5 8 0
  SETTABLEKS R5 R5 K13 ["__index"]
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K15 ["new"]
  DUPCLOSURE R6 K16 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K17 ["newTangentContext"]
  DUPCLOSURE R6 K18 [PROTO_2]
  SETTABLEKS R6 R5 K19 ["moveKeyframes"]
  DUPCLOSURE R6 K20 [PROTO_3]
  SETTABLEKS R6 R5 K21 ["scaleKeyframes"]
  DUPCLOSURE R6 K22 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K23 ["newEvents"]
  DUPCLOSURE R6 K24 [PROTO_5]
  SETTABLEKS R6 R5 K25 ["moveEvents"]
  RETURN R5 1
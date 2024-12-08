PROTO_0:
  DUPTABLE R3 K2 [{"_draggerContext", "_analyticsName"}]
  SETTABLEKS R0 R3 K0 ["_draggerContext"]
  SETTABLEKS R1 R3 K1 ["_analyticsName"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_draggerContext"]
  NAMECALL R3 R3 K1 ["shouldSnapPivotToGeometry"]
  CALL R3 1 1
  JUMPIFNOT R3 [+3]
  NEWTABLE R3 0 0
  RETURN R3 1
  MOVE R3 R2
  JUMPIF R3 [+2]
  GETIMPORT R3 K4 [CFrame.identity]
  MOVE R2 R3
  GETTABLEKS R4 R0 K5 ["_initialPivot"]
  MUL R3 R4 R2
  GETIMPORT R5 K9 [Vector3.one]
  MULK R4 R5 K6 [0.01]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  NAMECALL R5 R5 K10 ["getMaxSoftSnaps"]
  CALL R5 1 1
  NEWTABLE R6 0 2
  LOADN R7 255
  LOADN R8 1
  SETLIST R6 R7 2 [1]
  GETUPVAL R7 0
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R1
  NEWTABLE R11 0 0
  MOVE R12 R6
  MOVE R13 R6
  MOVE R14 R5
  CALL R7 7 -1
  RETURN R7 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldShowActiveInstanceHighlight"]
  CALL R1 1 1
  JUMPIFNOT R1 [+13]
  GETTABLEKS R3 R0 K2 ["_selection"]
  GETTABLEKS R5 R0 K2 ["_selection"]
  LENGTH R4 R5
  GETTABLE R2 R3 R4
  GETTABLEKS R3 R0 K3 ["_primaryObject"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  SETTABLEKS R2 R0 K0 ["_snapPoints"]
  SETTABLEKS R1 R0 K1 ["_snapPointsAreFor"]
  RETURN R0 0

PROTO_4:
  SETTABLEKS R1 R0 K0 ["_selection"]
  NAMECALL R3 R2 K1 ["getBoundingBox"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K2 ["_initialPivot"]
  NAMECALL R3 R2 K3 ["getPrimaryObject"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K4 ["_primaryObject"]
  GETTABLEKS R5 R0 K4 ["_primaryObject"]
  NAMECALL R3 R0 K5 ["_setCurrentSnap"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [ipairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETUPVAL R6 0
  MOVE R7 R5
  LOADB R8 0
  NEWTABLE R9 0 0
  CALL R6 3 1
  JUMPIFNOT R6 [+1]
  RETURN R6 1
  FORGLOOP R1 2 [inext] [-9]
  LOADNIL R1
  RETURN R1 1

PROTO_6:
  NAMECALL R2 R1 K0 ["GetTouchingParts"]
  CALL R2 1 1
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+18]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R0 K1 ["_snapPointsAreFor"]
  JUMPIFEQ R7 R8 [+7]
  GETTABLEKS R10 R0 K1 ["_snapPointsAreFor"]
  NAMECALL R8 R7 K2 ["IsDescendantOf"]
  CALL R8 2 1
  JUMPIFNOT R8 [+1]
  RETURN R0 0
  FORGLOOP R3 2 [-12]
  JUMP [+14]
  GETIMPORT R3 K4 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLEKS R10 R0 K1 ["_snapPointsAreFor"]
  NAMECALL R8 R7 K2 ["IsDescendantOf"]
  CALL R8 2 1
  JUMPIFNOT R8 [+1]
  RETURN R0 0
  FORGLOOP R3 2 [inext] [-8]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+22]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R0 K5 ["_primaryObject"]
  JUMPIFEQ R7 R8 [+7]
  GETTABLEKS R10 R0 K5 ["_primaryObject"]
  NAMECALL R8 R7 K2 ["IsDescendantOf"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETTABLEKS R10 R0 K5 ["_primaryObject"]
  NAMECALL R8 R0 K6 ["_setCurrentSnap"]
  CALL R8 2 0
  RETURN R0 0
  FORGLOOP R3 2 [-17]
  GETUPVAL R3 1
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOT R3 [+4]
  MOVE R6 R3
  NAMECALL R4 R0 K6 ["_setCurrentSnap"]
  CALL R4 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Part"]
  CALL R2 1 1
  LOADK R3 K4 [{0.01, 0.01, 0.01}]
  SETTABLEKS R3 R2 K5 ["Size"]
  GETTABLEKS R3 R1 K6 ["Position"]
  SETTABLEKS R3 R2 K6 ["Position"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["Archivable"]
  GETIMPORT R4 K9 [workspace]
  GETTABLEKS R3 R4 K10 ["Terrain"]
  SETTABLEKS R3 R2 K11 ["Parent"]
  MOVE R5 R2
  NAMECALL R3 R0 K12 ["_findNewSnapTargetImpl"]
  CALL R3 2 0
  NAMECALL R3 R2 K13 ["Destroy"]
  CALL R3 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["_primaryObject"]
  JUMPIFNOT R2 [+12]
  GETTABLEKS R3 R0 K1 ["_initialPivot"]
  MUL R2 R1 R3
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K0 ["_primaryObject"]
  MOVE R5 R2
  CALL R3 2 0
  MOVE R5 R2
  NAMECALL R3 R0 K2 ["_findNewSnapTargetViaCollision"]
  CALL R3 2 0
  RETURN R1 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_primaryObject"]
  JUMPIFNOT R1 [+37]
  GETTABLEKS R1 R0 K1 ["_draggerContext"]
  NAMECALL R1 R1 K2 ["getAnalytics"]
  CALL R1 1 1
  LOADK R3 K3 ["setPivot"]
  DUPTABLE R4 K9 [{"gridSize", "rotateIncrement", "toolName", "handleId", "pivotType"}]
  GETTABLEKS R5 R0 K1 ["_draggerContext"]
  NAMECALL R5 R5 K10 ["getGridSize"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["gridSize"]
  GETTABLEKS R5 R0 K1 ["_draggerContext"]
  NAMECALL R5 R5 K11 ["getRotateIncrement"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["rotateIncrement"]
  GETTABLEKS R5 R0 K12 ["_analyticsName"]
  SETTABLEKS R5 R4 K6 ["toolName"]
  LOADK R5 K13 ["Move"]
  SETTABLEKS R5 R4 K7 ["handleId"]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["_primaryObject"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["pivotType"]
  NAMECALL R1 R1 K14 ["sendEvent"]
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldSnapPivotToGeometry"]
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["_snapPoints"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_11:
  GETTABLEKS R3 R0 K0 ["_initialPivot"]
  MUL R2 R1 R3
  DUPTABLE R3 K2 [{"DraggedPivot"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K7 [{"DraggerContext", "CFrame", "IsActive"}]
  GETTABLEKS R7 R0 K8 ["_draggerContext"]
  SETTABLEKS R7 R6 K4 ["DraggerContext"]
  SETTABLEKS R2 R6 K5 ["CFrame"]
  NAMECALL R7 R0 K9 ["_selectedIsActive"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["IsActive"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["DraggedPivot"]
  GETTABLEKS R4 R0 K8 ["_draggerContext"]
  NAMECALL R4 R4 K10 ["shouldSnapPivotToGeometry"]
  CALL R4 1 1
  JUMPIFNOT R4 [+20]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K13 [{"Focus", "SnapPoints", "DraggerContext"}]
  GETTABLEKS R7 R2 K14 ["Position"]
  SETTABLEKS R7 R6 K11 ["Focus"]
  GETTABLEKS R7 R0 K15 ["_snapPoints"]
  SETTABLEKS R7 R6 K12 ["SnapPoints"]
  GETTABLEKS R7 R0 K8 ["_draggerContext"]
  SETTABLEKS R7 R6 K4 ["DraggerContext"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K12 ["SnapPoints"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K16 ["createFragment"]
  MOVE R5 R3
  CALL R4 1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Packages"]
  GETTABLEKS R1 R2 K4 ["DraggerFramework"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K3 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K3 ["Packages"]
  GETTABLEKS R5 R6 K8 ["DraggerSchemaCore"]
  GETTABLEKS R4 R5 K9 ["getSelectableWithCache"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Utility"]
  GETTABLEKS R5 R6 K12 ["setWorldPivot"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Utility"]
  GETTABLEKS R6 R7 K13 ["computeSnapPointsForInstance"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["SnapPoints"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R1 K14 ["Components"]
  GETTABLEKS R8 R9 K16 ["DraggedPivot"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Utility"]
  GETTABLEKS R9 R10 K17 ["classifyInstancePivot"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R1 K11 ["Utility"]
  GETTABLEKS R10 R11 K18 ["getSoftSnaps"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R1 K19 ["Flags"]
  GETTABLEKS R11 R12 K20 ["getFFlagDraggerImprovements"]
  CALL R10 1 1
  NEWTABLE R11 16 0
  SETTABLEKS R11 R11 K21 ["__index"]
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R11
  SETTABLEKS R12 R11 K23 ["new"]
  DUPCLOSURE R12 K24 [PROTO_1]
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K18 ["getSoftSnaps"]
  DUPCLOSURE R12 K25 [PROTO_2]
  SETTABLEKS R12 R11 K26 ["_selectedIsActive"]
  DUPCLOSURE R12 K27 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K28 ["_setCurrentSnap"]
  DUPCLOSURE R12 K29 [PROTO_4]
  SETTABLEKS R12 R11 K30 ["beginDrag"]
  DUPCLOSURE R12 K31 [PROTO_5]
  CAPTURE VAL R3
  DUPCLOSURE R13 K32 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R13 R11 K33 ["_findNewSnapTargetImpl"]
  DUPCLOSURE R13 K34 [PROTO_7]
  SETTABLEKS R13 R11 K35 ["_findNewSnapTargetViaCollision"]
  DUPCLOSURE R13 K36 [PROTO_8]
  CAPTURE VAL R4
  SETTABLEKS R13 R11 K37 ["updateDrag"]
  DUPCLOSURE R13 K38 [PROTO_9]
  CAPTURE VAL R8
  SETTABLEKS R13 R11 K39 ["endDrag"]
  DUPCLOSURE R13 K40 [PROTO_10]
  SETTABLEKS R13 R11 K41 ["getSnapPoints"]
  DUPCLOSURE R13 K42 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R13 R11 K43 ["render"]
  RETURN R11 1
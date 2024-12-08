PROTO_0:
  NEWTABLE R2 8 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  JUMPIFNOT R0 [+51]
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K2 ["height"]
  GETTABLEKS R3 R4 K3 ["min"]
  GETTABLEKS R5 R0 K4 ["width"]
  GETTABLEKS R4 R5 K3 ["min"]
  GETTABLEKS R6 R0 K5 ["head"]
  GETTABLEKS R5 R6 K3 ["min"]
  GETTABLEKS R7 R0 K6 ["bodyType"]
  GETTABLEKS R6 R7 K3 ["min"]
  GETTABLEKS R8 R0 K7 ["proportion"]
  GETTABLEKS R7 R8 K3 ["min"]
  LOADN R8 0
  CALL R2 6 1
  SETTABLEKS R2 R1 K8 ["ScalesMin"]
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K2 ["height"]
  GETTABLEKS R3 R4 K9 ["max"]
  GETTABLEKS R5 R0 K4 ["width"]
  GETTABLEKS R4 R5 K9 ["max"]
  GETTABLEKS R6 R0 K5 ["head"]
  GETTABLEKS R5 R6 K9 ["max"]
  GETTABLEKS R7 R0 K6 ["bodyType"]
  GETTABLEKS R6 R7 K9 ["max"]
  GETTABLEKS R8 R0 K7 ["proportion"]
  GETTABLEKS R7 R8 K9 ["max"]
  LOADN R8 0
  CALL R2 6 1
  SETTABLEKS R2 R1 K10 ["ScalesMax"]
  JUMP [+51]
  GETUPVAL R0 3
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K11 ["Height"]
  GETTABLEKS R3 R4 K3 ["min"]
  GETTABLEKS R5 R0 K12 ["Width"]
  GETTABLEKS R4 R5 K3 ["min"]
  GETTABLEKS R6 R0 K13 ["Head"]
  GETTABLEKS R5 R6 K3 ["min"]
  GETTABLEKS R7 R0 K14 ["BodyType"]
  GETTABLEKS R6 R7 K3 ["min"]
  GETTABLEKS R8 R0 K15 ["Proportion"]
  GETTABLEKS R7 R8 K3 ["min"]
  LOADN R8 0
  CALL R2 6 1
  SETTABLEKS R2 R1 K8 ["ScalesMin"]
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K11 ["Height"]
  GETTABLEKS R3 R4 K9 ["max"]
  GETTABLEKS R5 R0 K12 ["Width"]
  GETTABLEKS R4 R5 K9 ["max"]
  GETTABLEKS R6 R0 K13 ["Head"]
  GETTABLEKS R5 R6 K9 ["max"]
  GETTABLEKS R7 R0 K14 ["BodyType"]
  GETTABLEKS R6 R7 K9 ["max"]
  GETTABLEKS R8 R0 K15 ["Proportion"]
  GETTABLEKS R7 R8 K9 ["max"]
  LOADN R8 0
  CALL R2 6 1
  SETTABLEKS R2 R1 K10 ["ScalesMax"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K16 ["OuterCollision"]
  SETTABLEKS R2 R1 K17 ["CollisionValue"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K18 ["PlayerChoice"]
  SETTABLEKS R2 R1 K19 ["AnimationValue"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K18 ["PlayerChoice"]
  SETTABLEKS R2 R1 K20 ["RigTypeValue"]
  RETURN R1 1

PROTO_1:
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  DUPTABLE R2 K4 [{"AssetsOverrides", "ScalesMin", "ScalesMax"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K1 ["AssetsOverrides"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K2 ["ScalesMin"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K3 ["ScalesMax"]
  JUMPIFNOT R0 [+14]
  GETIMPORT R3 K6 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R8 R2 R6
  JUMPIF R8 [+1]
  DUPCLOSURE R8 K7 [PROTO_1]
  MOVE R9 R8
  MOVE R10 R7
  CALL R9 1 1
  SETTABLE R9 R1 R6
  FORGLOOP R3 2 [-8]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R2 R0 K1 ["AvatarType"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R1 K2 ["RigTypeValue"]
  SETTABLEKS R2 R1 K2 ["RigTypeValue"]
  GETTABLEKS R2 R0 K3 ["AvatarAnimation"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R1 K4 ["AnimationValue"]
  SETTABLEKS R2 R1 K4 ["AnimationValue"]
  GETTABLEKS R2 R0 K5 ["AvatarCollision"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R1 K6 ["CollisionValue"]
  SETTABLEKS R2 R1 K6 ["CollisionValue"]
  GETUPVAL R2 1
  MOVE R3 R1
  GETTABLEKS R4 R0 K7 ["AvatarAssetOverrides"]
  CALL R2 2 0
  GETUPVAL R2 2
  MOVE R3 R1
  GETTABLEKS R4 R0 K8 ["AvatarScalingMin"]
  CALL R2 2 0
  GETUPVAL R2 3
  MOVE R3 R1
  GETTABLEKS R4 R0 K9 ["AvatarScalingMax"]
  CALL R2 2 0
  RETURN R1 1

PROTO_4:
  GETTABLEKS R3 R1 K0 ["HeightScale"]
  GETTABLEKS R5 R0 K1 ["ScalesMin"]
  GETTABLEKS R4 R5 K2 ["height"]
  GETTABLEKS R6 R0 K3 ["ScalesMax"]
  GETTABLEKS R5 R6 K2 ["height"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K6 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["HeightScale"]
  GETTABLEKS R3 R1 K7 ["WidthScale"]
  GETTABLEKS R5 R0 K1 ["ScalesMin"]
  GETTABLEKS R4 R5 K8 ["width"]
  GETTABLEKS R6 R0 K3 ["ScalesMax"]
  GETTABLEKS R5 R6 K8 ["width"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K6 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K7 ["WidthScale"]
  GETTABLEKS R3 R1 K9 ["HeadScale"]
  GETTABLEKS R5 R0 K1 ["ScalesMin"]
  GETTABLEKS R4 R5 K10 ["head"]
  GETTABLEKS R6 R0 K3 ["ScalesMax"]
  GETTABLEKS R5 R6 K10 ["head"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K6 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K9 ["HeadScale"]
  GETTABLEKS R3 R1 K11 ["BodyTypeScale"]
  GETTABLEKS R5 R0 K1 ["ScalesMin"]
  GETTABLEKS R4 R5 K12 ["bodyType"]
  GETTABLEKS R6 R0 K3 ["ScalesMax"]
  GETTABLEKS R5 R6 K12 ["bodyType"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K6 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K11 ["BodyTypeScale"]
  GETTABLEKS R3 R1 K13 ["ProportionScale"]
  GETTABLEKS R5 R0 K1 ["ScalesMin"]
  GETTABLEKS R4 R5 K14 ["proportion"]
  GETTABLEKS R6 R0 K3 ["ScalesMax"]
  GETTABLEKS R5 R6 K14 ["proportion"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K6 [math.clamp]
  CALL R2 3 1
  SETTABLEKS R2 R1 K13 ["ProportionScale"]
  NEWTABLE R2 16 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K16 ["Face"]
  LOADK R4 K16 ["Face"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K17 ["Head"]
  LOADK R4 K17 ["Head"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K18 ["Torso"]
  LOADK R4 K18 ["Torso"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K19 ["LeftArm"]
  LOADK R4 K19 ["LeftArm"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K20 ["RightArm"]
  LOADK R4 K20 ["RightArm"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K21 ["LeftLeg"]
  LOADK R4 K21 ["LeftLeg"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K22 ["RightLeg"]
  LOADK R4 K22 ["RightLeg"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K23 ["Shirt"]
  LOADK R4 K23 ["Shirt"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K24 ["Pants"]
  LOADK R4 K24 ["Pants"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["AssetTypes"]
  GETTABLEKS R3 R4 K25 ["ShirtGraphic"]
  LOADK R4 K26 ["GraphicTShirt"]
  SETTABLE R4 R2 R3
  GETIMPORT R3 K28 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R10 R0 K29 ["AssetsOverrides"]
  GETTABLE R9 R10 R6
  GETTABLEKS R8 R9 K30 ["isPlayerChoice"]
  JUMPIF R8 [+13]
  GETTABLEKS R10 R0 K29 ["AssetsOverrides"]
  GETTABLE R9 R10 R6
  GETTABLEKS R8 R9 K31 ["assetID"]
  JUMPIFEQKN R8 K32 [0] [+7]
  GETTABLEKS R10 R0 K29 ["AssetsOverrides"]
  GETTABLE R9 R10 R6
  GETTABLEKS R8 R9 K31 ["assetID"]
  SETTABLE R8 R1 R7
  FORGLOOP R3 2 [-20]
  RETURN R0 0

PROTO_5:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_INEXT R2
  MOVE R9 R6
  NAMECALL R7 R0 K2 ["getAsset"]
  CALL R7 2 2
  LENGTH R10 R1
  ADDK R9 R10 K3 [1]
  DUPTABLE R10 K7 [{"assetTypeID", "assetID", "isPlayerChoice"}]
  SETTABLEKS R6 R10 K4 ["assetTypeID"]
  SETTABLEKS R7 R10 K5 ["assetID"]
  SETTABLEKS R8 R10 K6 ["isPlayerChoice"]
  SETTABLE R10 R1 R9
  FORGLOOP R2 2 [inext] [-15]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["ScalesMin"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["ScalesMax"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["RigTypeValue"]
  GETTABLEKS R4 R1 K0 ["RigTypeValue"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["AnimationValue"]
  GETTABLEKS R4 R1 K0 ["AnimationValue"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_10:
  GETTABLEKS R3 R0 K0 ["CollisionValue"]
  GETTABLEKS R4 R1 K0 ["CollisionValue"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_11:
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_INEXT R2
  MOVE R9 R6
  NAMECALL R7 R0 K2 ["getAsset"]
  CALL R7 2 2
  MOVE R11 R6
  NAMECALL R9 R1 K2 ["getAsset"]
  CALL R9 2 2
  JUMPIFNOTEQ R7 R9 [+3]
  JUMPIFEQ R8 R10 [+3]
  LOADB R11 0
  RETURN R11 1
  FORGLOOP R2 2 [inext] [-15]
  LOADB R2 1
  RETURN R2 1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["ScalesMin"]
  GETTABLEKS R4 R1 K0 ["ScalesMin"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["ScalesMax"]
  GETTABLEKS R4 R1 K0 ["ScalesMax"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["RigTypeValue"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["PlayerChoice"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_15:
  GETTABLEKS R2 R0 K0 ["RigTypeValue"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["R6"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["RigTypeValue"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["R15"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["R6"]
  SETTABLEKS R1 R0 K1 ["RigTypeValue"]
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["R15"]
  SETTABLEKS R1 R0 K1 ["RigTypeValue"]
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PlayerChoice"]
  SETTABLEKS R1 R0 K1 ["RigTypeValue"]
  RETURN R0 0

PROTO_20:
  GETTABLEKS R2 R0 K0 ["AnimationValue"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["AnimationStandard"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_21:
  GETTABLEKS R2 R0 K0 ["AnimationValue"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["PlayerChoice"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AnimationStandard"]
  SETTABLEKS R1 R0 K1 ["AnimationValue"]
  RETURN R0 0

PROTO_23:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PlayerChoice"]
  SETTABLEKS R1 R0 K1 ["AnimationValue"]
  RETURN R0 0

PROTO_24:
  GETTABLEKS R2 R0 K0 ["CollisionValue"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["InnerCollision"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_25:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["InnerCollision"]
  SETTABLEKS R1 R0 K1 ["CollisionValue"]
  RETURN R0 0

PROTO_26:
  GETTABLEKS R2 R0 K0 ["CollisionValue"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["OuterCollision"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_27:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OuterCollision"]
  SETTABLEKS R1 R0 K1 ["CollisionValue"]
  RETURN R0 0

PROTO_28:
  GETTABLEKS R5 R2 K0 ["height"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["height"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMin"]
  SETTABLEKS R1 R3 K0 ["height"]
  RETURN R0 0

PROTO_29:
  GETTABLEKS R5 R2 K0 ["width"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["width"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMin"]
  SETTABLEKS R1 R3 K0 ["width"]
  RETURN R0 0

PROTO_30:
  GETTABLEKS R5 R2 K0 ["head"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["head"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMin"]
  SETTABLEKS R1 R3 K0 ["head"]
  RETURN R0 0

PROTO_31:
  GETTABLEKS R5 R2 K0 ["bodyType"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["bodyType"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMin"]
  SETTABLEKS R1 R3 K0 ["bodyType"]
  RETURN R0 0

PROTO_32:
  GETTABLEKS R5 R2 K0 ["proportion"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["proportion"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMin"]
  SETTABLEKS R1 R3 K0 ["proportion"]
  RETURN R0 0

PROTO_33:
  GETTABLEKS R5 R2 K0 ["height"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["height"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMax"]
  SETTABLEKS R1 R3 K0 ["height"]
  RETURN R0 0

PROTO_34:
  GETTABLEKS R5 R2 K0 ["width"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["width"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMax"]
  SETTABLEKS R1 R3 K0 ["width"]
  RETURN R0 0

PROTO_35:
  GETTABLEKS R5 R2 K0 ["head"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["head"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMax"]
  SETTABLEKS R1 R3 K0 ["head"]
  RETURN R0 0

PROTO_36:
  GETTABLEKS R5 R2 K0 ["bodyType"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["bodyType"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMax"]
  SETTABLEKS R1 R3 K0 ["bodyType"]
  RETURN R0 0

PROTO_37:
  GETTABLEKS R5 R2 K0 ["proportion"]
  GETTABLEKS R4 R5 K1 ["max"]
  FASTCALL2 MATH_MIN R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R5 R2 K0 ["proportion"]
  GETTABLEKS R4 R5 K3 ["min"]
  FASTCALL2 MATH_MAX R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  MOVE R1 R3
  GETTABLEKS R3 R0 K6 ["ScalesMax"]
  SETTABLEKS R1 R3 K0 ["proportion"]
  RETURN R0 0

PROTO_38:
  GETTABLEKS R2 R0 K0 ["ScalesMin"]
  GETTABLEKS R1 R2 K1 ["height"]
  RETURN R1 1

PROTO_39:
  GETTABLEKS R2 R0 K0 ["ScalesMin"]
  GETTABLEKS R1 R2 K1 ["width"]
  RETURN R1 1

PROTO_40:
  GETTABLEKS R2 R0 K0 ["ScalesMin"]
  GETTABLEKS R1 R2 K1 ["head"]
  RETURN R1 1

PROTO_41:
  GETTABLEKS R2 R0 K0 ["ScalesMin"]
  GETTABLEKS R1 R2 K1 ["bodyType"]
  RETURN R1 1

PROTO_42:
  GETTABLEKS R2 R0 K0 ["ScalesMin"]
  GETTABLEKS R1 R2 K1 ["proportion"]
  RETURN R1 1

PROTO_43:
  GETTABLEKS R2 R0 K0 ["ScalesMax"]
  GETTABLEKS R1 R2 K1 ["height"]
  RETURN R1 1

PROTO_44:
  GETTABLEKS R2 R0 K0 ["ScalesMax"]
  GETTABLEKS R1 R2 K1 ["width"]
  RETURN R1 1

PROTO_45:
  GETTABLEKS R2 R0 K0 ["ScalesMax"]
  GETTABLEKS R1 R2 K1 ["head"]
  RETURN R1 1

PROTO_46:
  GETTABLEKS R2 R0 K0 ["ScalesMax"]
  GETTABLEKS R1 R2 K1 ["bodyType"]
  RETURN R1 1

PROTO_47:
  GETTABLEKS R2 R0 K0 ["ScalesMax"]
  GETTABLEKS R1 R2 K1 ["proportion"]
  RETURN R1 1

PROTO_48:
  GETTABLEKS R5 R0 K0 ["AssetsOverrides"]
  GETTABLE R4 R5 R1
  JUMPIFNOT R4 [+14]
  JUMPIFEQKNIL R2 [+6]
  GETTABLEKS R5 R0 K0 ["AssetsOverrides"]
  GETTABLE R4 R5 R1
  SETTABLEKS R2 R4 K1 ["assetID"]
  JUMPIFEQKNIL R3 [+6]
  GETTABLEKS R5 R0 K0 ["AssetsOverrides"]
  GETTABLE R4 R5 R1
  SETTABLEKS R3 R4 K2 ["isPlayerChoice"]
  RETURN R0 0

PROTO_49:
  GETTABLEKS R3 R0 K0 ["AssetsOverrides"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+11]
  GETTABLEKS R4 R0 K0 ["AssetsOverrides"]
  GETTABLE R3 R4 R1
  GETTABLEKS R2 R3 K1 ["assetID"]
  GETTABLEKS R5 R0 K0 ["AssetsOverrides"]
  GETTABLE R4 R5 R1
  GETTABLEKS R3 R4 K2 ["isPlayerChoice"]
  RETURN R2 2
  LOADNIL R2
  LOADNIL R3
  RETURN R2 2

PROTO_50:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["AssetsOverrides"]
  GETIMPORT R1 K2 [ipairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R0 K0 ["AssetsOverrides"]
  DUPTABLE R7 K5 [{"assetID", "isPlayerChoice"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K3 ["assetID"]
  LOADB R8 1
  SETTABLEKS R8 R7 K4 ["isPlayerChoice"]
  SETTABLE R7 R6 R5
  FORGLOOP R1 2 [inext] [-11]
  RETURN R0 0

PROTO_51:
  DUPTABLE R6 K6 [{"height", "width", "head", "bodyType", "proportion", "depth"}]
  SETTABLEKS R0 R6 K0 ["height"]
  SETTABLEKS R1 R6 K1 ["width"]
  SETTABLEKS R2 R6 K2 ["head"]
  SETTABLEKS R3 R6 K3 ["bodyType"]
  SETTABLEKS R4 R6 K4 ["proportion"]
  SETTABLEKS R5 R6 K5 ["depth"]
  RETURN R6 1

PROTO_52:
  JUMPIFNOT R1 [+16]
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R6 K2 ["assetTypeID"]
  GETTABLEKS R10 R6 K3 ["assetID"]
  GETTABLEKS R11 R6 K4 ["isPlayerChoice"]
  NAMECALL R7 R0 K5 ["setAsset"]
  CALL R7 4 0
  FORGLOOP R2 2 [-10]
  RETURN R0 0

PROTO_53:
  JUMPIFNOT R1 [+16]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["height"]
  GETTABLEKS R4 R1 K1 ["width"]
  GETTABLEKS R5 R1 K2 ["head"]
  GETTABLEKS R6 R1 K3 ["bodyType"]
  GETTABLEKS R7 R1 K4 ["proportion"]
  GETTABLEKS R8 R1 K5 ["depth"]
  CALL R2 6 1
  SETTABLEKS R2 R0 K6 ["ScalesMin"]
  RETURN R0 0

PROTO_54:
  JUMPIFNOT R1 [+16]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["height"]
  GETTABLEKS R4 R1 K1 ["width"]
  GETTABLEKS R5 R1 K2 ["head"]
  GETTABLEKS R6 R1 K3 ["bodyType"]
  GETTABLEKS R7 R1 K4 ["proportion"]
  GETTABLEKS R8 R1 K5 ["depth"]
  CALL R2 6 1
  SETTABLEKS R2 R0 K6 ["ScalesMax"]
  RETURN R0 0

PROTO_55:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  DUPTABLE R7 K4 [{"assetID", "isPlayerChoice"}]
  GETTABLEKS R8 R6 K2 ["assetID"]
  SETTABLEKS R8 R7 K2 ["assetID"]
  GETTABLEKS R8 R6 K3 ["isPlayerChoice"]
  SETTABLEKS R8 R7 K3 ["isPlayerChoice"]
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-11]
  RETURN R1 1

PROTO_56:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  SETTABLE R6 R1 R5
  FORGLOOP R2 2 [-2]
  RETURN R1 1

PROTO_57:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLE R7 R1 R5
  JUMPIFEQ R6 R7 [+3]
  LOADB R7 0
  RETURN R7 1
  FORGLOOP R2 2 [-6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["countDictionaryKeys"]
  MOVE R4 R0
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["countDictionaryKeys"]
  MOVE R5 R1
  CALL R4 1 1
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Util"]
  GETTABLEKS R2 R3 K6 ["ConstantAvatar"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Util"]
  GETTABLEKS R3 R4 K7 ["ConstantScaleBoundaries"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Util"]
  GETTABLEKS R4 R5 K8 ["ConstantTemplate"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Util"]
  GETTABLEKS R5 R6 K9 ["UtilityFunctionsTable"]
  CALL R4 1 1
  NEWTABLE R5 64 0
  SETTABLEKS R5 R5 K10 ["__index"]
  LOADNIL R6
  LOADNIL R7
  LOADNIL R8
  LOADNIL R9
  LOADNIL R10
  LOADNIL R11
  LOADNIL R12
  LOADNIL R13
  NEWTABLE R14 0 10
  GETTABLEKS R16 R1 K11 ["AssetTypes"]
  GETTABLEKS R15 R16 K12 ["Face"]
  GETTABLEKS R17 R1 K11 ["AssetTypes"]
  GETTABLEKS R16 R17 K13 ["Head"]
  GETTABLEKS R18 R1 K11 ["AssetTypes"]
  GETTABLEKS R17 R18 K14 ["Torso"]
  GETTABLEKS R19 R1 K11 ["AssetTypes"]
  GETTABLEKS R18 R19 K15 ["LeftArm"]
  GETTABLEKS R20 R1 K11 ["AssetTypes"]
  GETTABLEKS R19 R20 K16 ["RightArm"]
  GETTABLEKS R21 R1 K11 ["AssetTypes"]
  GETTABLEKS R20 R21 K17 ["LeftLeg"]
  GETTABLEKS R22 R1 K11 ["AssetTypes"]
  GETTABLEKS R21 R22 K18 ["RightLeg"]
  GETTABLEKS R23 R1 K11 ["AssetTypes"]
  GETTABLEKS R22 R23 K19 ["Shirt"]
  GETTABLEKS R24 R1 K11 ["AssetTypes"]
  GETTABLEKS R23 R24 K20 ["Pants"]
  GETTABLEKS R25 R1 K11 ["AssetTypes"]
  GETTABLEKS R24 R25 K21 ["ShirtGraphic"]
  SETLIST R14 R15 10 [1]
  NEWCLOSURE R15 P0
  CAPTURE VAL R5
  CAPTURE REF R6
  CAPTURE REF R7
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K22 ["new"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R5
  CAPTURE REF R11
  CAPTURE REF R12
  SETTABLEKS R15 R5 K23 ["makeCopy"]
  NEWCLOSURE R15 P2
  CAPTURE VAL R5
  CAPTURE REF R8
  CAPTURE REF R9
  CAPTURE REF R10
  SETTABLEKS R15 R5 K24 ["fromUniverseData"]
  DUPCLOSURE R15 K25 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R15 R5 K26 ["apply"]
  DUPCLOSURE R15 K27 [PROTO_5]
  CAPTURE VAL R14
  SETTABLEKS R15 R5 K28 ["extractAssetOverridesForSaving"]
  NEWCLOSURE R15 P5
  CAPTURE REF R12
  SETTABLEKS R15 R5 K29 ["extractScalingMinForSaving"]
  NEWCLOSURE R15 P6
  CAPTURE REF R12
  SETTABLEKS R15 R5 K30 ["extractScalingMaxForSaving"]
  DUPCLOSURE R15 K31 [PROTO_8]
  SETTABLEKS R15 R5 K32 ["isAvatarTypeEqualTo"]
  DUPCLOSURE R15 K33 [PROTO_9]
  SETTABLEKS R15 R5 K34 ["isAnimationEqualTo"]
  DUPCLOSURE R15 K35 [PROTO_10]
  SETTABLEKS R15 R5 K36 ["isCollisionEqualTo"]
  DUPCLOSURE R15 K37 [PROTO_11]
  CAPTURE VAL R14
  SETTABLEKS R15 R5 K38 ["areAssetsEqualTo"]
  NEWCLOSURE R15 P11
  CAPTURE REF R13
  SETTABLEKS R15 R5 K39 ["areMinScalesEqualTo"]
  NEWCLOSURE R15 P12
  CAPTURE REF R13
  SETTABLEKS R15 R5 K40 ["areMaxScalesEqualTo"]
  DUPCLOSURE R15 K41 [PROTO_14]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K42 ["isRigTypePlayerChoice"]
  DUPCLOSURE R15 K43 [PROTO_15]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K44 ["isRigTypeR6"]
  DUPCLOSURE R15 K45 [PROTO_16]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K46 ["isRigTypeR15"]
  DUPCLOSURE R15 K47 [PROTO_17]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K48 ["setRigTypeR6"]
  DUPCLOSURE R15 K49 [PROTO_18]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K50 ["setRigTypeR15"]
  DUPCLOSURE R15 K51 [PROTO_19]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K52 ["setRigTypePlayerChoice"]
  DUPCLOSURE R15 K53 [PROTO_20]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K54 ["isAnimationStandard"]
  DUPCLOSURE R15 K55 [PROTO_21]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K56 ["isAnimationPlayerChoice"]
  DUPCLOSURE R15 K57 [PROTO_22]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K58 ["setAnimationStandard"]
  DUPCLOSURE R15 K59 [PROTO_23]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K60 ["setAnimationPlayerChoice"]
  DUPCLOSURE R15 K61 [PROTO_24]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K62 ["isCollisionInnerBox"]
  DUPCLOSURE R15 K63 [PROTO_25]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K64 ["setCollisionInnerBox"]
  DUPCLOSURE R15 K65 [PROTO_26]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K66 ["isCollisionOuterBox"]
  DUPCLOSURE R15 K67 [PROTO_27]
  CAPTURE VAL R3
  SETTABLEKS R15 R5 K68 ["setCollisionOuterBox"]
  DUPCLOSURE R15 K69 [PROTO_28]
  SETTABLEKS R15 R5 K70 ["setScaleHeightMin"]
  DUPCLOSURE R15 K71 [PROTO_29]
  SETTABLEKS R15 R5 K72 ["setScaleWidthMin"]
  DUPCLOSURE R15 K73 [PROTO_30]
  SETTABLEKS R15 R5 K74 ["setScaleHeadMin"]
  DUPCLOSURE R15 K75 [PROTO_31]
  SETTABLEKS R15 R5 K76 ["setScaleBodyTypeMin"]
  DUPCLOSURE R15 K77 [PROTO_32]
  SETTABLEKS R15 R5 K78 ["setScaleProportionMin"]
  DUPCLOSURE R15 K79 [PROTO_33]
  SETTABLEKS R15 R5 K80 ["setScaleHeightMax"]
  DUPCLOSURE R15 K81 [PROTO_34]
  SETTABLEKS R15 R5 K82 ["setScaleWidthMax"]
  DUPCLOSURE R15 K83 [PROTO_35]
  SETTABLEKS R15 R5 K84 ["setScaleHeadMax"]
  DUPCLOSURE R15 K85 [PROTO_36]
  SETTABLEKS R15 R5 K86 ["setScaleBodyTypeMax"]
  DUPCLOSURE R15 K87 [PROTO_37]
  SETTABLEKS R15 R5 K88 ["setScaleProportionMax"]
  DUPCLOSURE R15 K89 [PROTO_38]
  SETTABLEKS R15 R5 K90 ["getScaleHeightMin"]
  DUPCLOSURE R15 K91 [PROTO_39]
  SETTABLEKS R15 R5 K92 ["getScaleWidthMin"]
  DUPCLOSURE R15 K93 [PROTO_40]
  SETTABLEKS R15 R5 K94 ["getScaleHeadMin"]
  DUPCLOSURE R15 K95 [PROTO_41]
  SETTABLEKS R15 R5 K96 ["getScaleBodyTypeMin"]
  DUPCLOSURE R15 K97 [PROTO_42]
  SETTABLEKS R15 R5 K98 ["getScaleProportionMin"]
  DUPCLOSURE R15 K99 [PROTO_43]
  SETTABLEKS R15 R5 K100 ["getScaleHeightMax"]
  DUPCLOSURE R15 K101 [PROTO_44]
  SETTABLEKS R15 R5 K102 ["getScaleWidthMax"]
  DUPCLOSURE R15 K103 [PROTO_45]
  SETTABLEKS R15 R5 K104 ["getScaleHeadMax"]
  DUPCLOSURE R15 K105 [PROTO_46]
  SETTABLEKS R15 R5 K106 ["getScaleBodyTypeMax"]
  DUPCLOSURE R15 K107 [PROTO_47]
  SETTABLEKS R15 R5 K108 ["getScaleProportionMax"]
  DUPCLOSURE R15 K109 [PROTO_48]
  SETTABLEKS R15 R5 K110 ["setAsset"]
  DUPCLOSURE R15 K111 [PROTO_49]
  SETTABLEKS R15 R5 K112 ["getAsset"]
  DUPCLOSURE R6 K113 [PROTO_50]
  CAPTURE VAL R14
  DUPCLOSURE R7 K114 [PROTO_51]
  DUPCLOSURE R8 K115 [PROTO_52]
  NEWCLOSURE R9 P52
  CAPTURE REF R7
  NEWCLOSURE R10 P53
  CAPTURE REF R7
  DUPCLOSURE R11 K116 [PROTO_55]
  DUPCLOSURE R12 K117 [PROTO_56]
  DUPCLOSURE R13 K118 [PROTO_57]
  CAPTURE VAL R4
  CLOSEUPVALS R6
  RETURN R5 1
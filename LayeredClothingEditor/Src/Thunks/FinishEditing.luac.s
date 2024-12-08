PROTO_0:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R1 K3 [Enum.SurfaceType.Smooth]
  SETTABLEKS R1 R0 K4 ["TopSurface"]
  GETIMPORT R1 K3 [Enum.SurfaceType.Smooth]
  SETTABLEKS R1 R0 K5 ["BottomSurface"]
  GETIMPORT R1 K3 [Enum.SurfaceType.Smooth]
  SETTABLEKS R1 R0 K6 ["LeftSurface"]
  GETIMPORT R1 K3 [Enum.SurfaceType.Smooth]
  SETTABLEKS R1 R0 K7 ["RightSurface"]
  GETIMPORT R1 K3 [Enum.SurfaceType.Smooth]
  SETTABLEKS R1 R0 K8 ["FrontSurface"]
  GETIMPORT R1 K3 [Enum.SurfaceType.Smooth]
  SETTABLEKS R1 R0 K9 ["BackSurface"]
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Accessory"]
  GETUPVAL R3 0
  CALL R1 2 1
  NAMECALL R3 R0 K4 ["GetChildren"]
  CALL R3 1 1
  GETTABLEN R2 R3 1
  SETTABLEKS R1 R2 K5 ["Parent"]
  GETTABLEKS R2 R0 K6 ["Name"]
  SETTABLEKS R2 R1 K6 ["Name"]
  NAMECALL R2 R0 K7 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Accessory"]
  GETUPVAL R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["Parent"]
  GETTABLEKS R2 R0 K5 ["Name"]
  SETTABLEKS R2 R1 K5 ["Name"]
  LOADK R2 K6 ["Handle"]
  SETTABLEKS R2 R0 K5 ["Name"]
  RETURN R1 1

PROTO_3:
  LOADK R4 K0 ["Handle"]
  NAMECALL R2 R0 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+118]
  LOADK R5 K2 ["MeshPart"]
  NAMECALL R3 R2 K3 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+113]
  GETTABLEKS R3 R2 K4 ["MeshId"]
  GETTABLEKS R4 R2 K5 ["TextureID"]
  GETIMPORT R5 K8 [Instance.new]
  LOADK R6 K9 ["Part"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K10 ["Size"]
  SETTABLEKS R6 R5 K10 ["Size"]
  GETTABLEKS R6 R2 K11 ["CFrame"]
  SETTABLEKS R6 R5 K11 ["CFrame"]
  LOADK R6 K0 ["Handle"]
  SETTABLEKS R6 R5 K12 ["Name"]
  NAMECALL R6 R2 K13 ["GetChildren"]
  CALL R6 1 3
  FORGPREP R6
  LOADK R13 K14 ["SurfaceAppearance"]
  NAMECALL R11 R10 K3 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+3]
  GETTABLEKS R4 R10 K15 ["ColorMap"]
  JUMP [+19]
  LOADK R13 K16 ["Vector3Value"]
  NAMECALL R11 R10 K3 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+4]
  GETTABLEKS R11 R10 K12 ["Name"]
  JUMPIFEQKS R11 K17 ["OriginalSize"] [+11]
  LOADK R13 K18 ["TouchTransmitter"]
  NAMECALL R11 R10 K3 ["IsA"]
  CALL R11 2 1
  JUMPIF R11 [+5]
  NAMECALL R11 R10 K19 ["Clone"]
  CALL R11 1 1
  SETTABLEKS R5 R11 K20 ["Parent"]
  FORGLOOP R6 2 [-28]
  GETIMPORT R6 K8 [Instance.new]
  LOADK R7 K21 ["SpecialMesh"]
  CALL R6 1 1
  SETTABLEKS R3 R6 K4 ["MeshId"]
  SETTABLEKS R4 R6 K22 ["TextureId"]
  SETTABLEKS R5 R6 K20 ["Parent"]
  GETIMPORT R7 K24 [game]
  LOADK R9 K25 ["InsertService"]
  NAMECALL R7 R7 K26 ["GetService"]
  CALL R7 2 1
  MOVE R9 R3
  GETIMPORT R10 K30 [Enum.CollisionFidelity.Default]
  GETIMPORT R11 K33 [Enum.RenderFidelity.Automatic]
  NAMECALL R7 R7 K34 ["CreateMeshPartAsync"]
  CALL R7 4 1
  JUMPIFNOT R7 [+8]
  GETTABLEKS R9 R7 K10 ["Size"]
  DIV R8 R1 R9
  SETTABLEKS R8 R6 K35 ["Scale"]
  NAMECALL R8 R7 K36 ["Destroy"]
  CALL R8 1 0
  NAMECALL R8 R2 K36 ["Destroy"]
  CALL R8 1 0
  SETTABLEKS R0 R5 K20 ["Parent"]
  LOADK R10 K37 ["ThumbnailConfiguration"]
  LOADB R11 1
  NAMECALL R8 R0 K1 ["FindFirstChild"]
  CALL R8 3 1
  JUMPIFNOT R8 [+17]
  LOADK R11 K38 ["Configuration"]
  NAMECALL R9 R8 K3 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+12]
  LOADK R11 K39 ["ThumbnailCameraTarget"]
  NAMECALL R9 R8 K1 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIFNOT R9 [+7]
  LOADK R12 K40 ["ObjectValue"]
  NAMECALL R10 R9 K3 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+2]
  SETTABLEKS R5 R9 K41 ["Value"]
  LOADK R5 K0 ["Handle"]
  NAMECALL R3 R0 K1 ["FindFirstChild"]
  CALL R3 2 1
  MOVE R2 R3
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADK R5 K21 ["SpecialMesh"]
  NAMECALL R3 R2 K42 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R3 K35 ["Scale"]
  GETTABLEKS R6 R2 K10 ["Size"]
  DIV R5 R6 R1
  MUL R4 R4 R5
  SETTABLEKS R4 R3 K35 ["Scale"]
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Model"]
  GETUPVAL R3 0
  CALL R1 2 1
  GETTABLEKS R2 R0 K4 ["Name"]
  SETTABLEKS R2 R1 K4 ["Name"]
  SETTABLEKS R1 R0 K5 ["Parent"]
  LOADK R2 K6 ["Handle"]
  SETTABLEKS R2 R0 K4 ["Name"]
  RETURN R1 1

PROTO_5:
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["isAvatar"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 1
  MOVE R5 R0
  NAMECALL R3 R3 K1 ["getRootPart"]
  CALL R3 2 1
  MOVE R2 R3
  SETTABLEKS R1 R2 K2 ["CFrame"]
  RETURN R0 0

PROTO_6:
  NAMECALL R2 R0 K0 ["clone"]
  CALL R2 1 1
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["Anchored"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["isAvatar"]
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFNOT R3 [+21]
  GETUPVAL R3 1
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["getRootCFrame"]
  CALL R3 2 1
  MOVE R4 R2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["isAvatar"]
  MOVE R6 R2
  CALL R5 1 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 1
  MOVE R7 R2
  NAMECALL R5 R5 K4 ["getRootPart"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R3 R4 K5 ["CFrame"]
  JUMP [+17]
  GETTABLEKS R3 R1 K5 ["CFrame"]
  MOVE R4 R2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["isAvatar"]
  MOVE R6 R2
  CALL R5 1 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 1
  MOVE R7 R2
  NAMECALL R5 R5 K4 ["getRootPart"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R3 R4 K5 ["CFrame"]
  LOADK R5 K6 ["AvatarPartScaleType"]
  NAMECALL R3 R2 K7 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  NAMECALL R4 R3 K8 ["Destroy"]
  CALL R4 1 0
  LOADNIL R3
  LOADK R6 K6 ["AvatarPartScaleType"]
  NAMECALL R4 R1 K7 ["FindFirstChild"]
  CALL R4 2 1
  MOVE R3 R4
  JUMPIFNOT R3 [+5]
  NAMECALL R4 R3 K9 ["Clone"]
  CALL R4 1 1
  SETTABLEKS R2 R4 K10 ["Parent"]
  RETURN R2 1

PROTO_7:
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  GETUPVAL R4 0
  MOVE R5 R0
  NOT R6 R1
  CALL R4 2 1
  JUMPIFNOT R1 [+15]
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETUPVAL R10 1
  MOVE R12 R9
  GETIMPORT R13 K5 [Enum.CageType.Inner]
  NAMECALL R10 R10 K6 ["PublishCageMeshAsync"]
  CALL R10 3 1
  SETTABLE R10 R2 R9
  FORGLOOP R5 2 [-9]
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETUPVAL R10 1
  MOVE R12 R9
  GETIMPORT R13 K8 [Enum.CageType.Outer]
  NAMECALL R10 R10 K6 ["PublishCageMeshAsync"]
  CALL R10 3 1
  SETTABLE R10 R3 R9
  FORGLOOP R5 2 [-9]
  GETIMPORT R5 K10 [ipairs]
  NAMECALL R6 R0 K11 ["GetDescendants"]
  CALL R6 1 -1
  CALL R5 -1 3
  FORGPREP_INEXT R5
  GETTABLE R10 R2 R9
  JUMPIFNOT R10 [+3]
  GETTABLE R10 R2 R9
  SETTABLEKS R10 R9 K12 ["ReferenceMeshId"]
  GETTABLE R10 R3 R9
  JUMPIFNOT R10 [+3]
  GETTABLE R10 R3 R9
  SETTABLEKS R10 R9 K13 ["CageMeshId"]
  FORGLOOP R5 2 [inext] [-11]
  RETURN R0 0

PROTO_8:
  NAMECALL R4 R0 K0 ["getState"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K1 ["selectItem"]
  GETTABLEKS R5 R6 K2 ["accessoryTypeInfo"]
  GETTABLEKS R7 R4 K1 ["selectItem"]
  GETTABLEKS R6 R7 K3 ["attachmentPoint"]
  GETTABLEKS R8 R4 K1 ["selectItem"]
  GETTABLEKS R7 R8 K4 ["size"]
  GETTABLEKS R8 R5 K5 ["Name"]
  GETTABLEKS R9 R6 K6 ["AttachmentCFrame"]
  GETTABLEKS R10 R6 K7 ["ItemCFrame"]
  GETUPVAL R11 0
  MOVE R12 R2
  MOVE R13 R1
  CALL R11 2 1
  GETUPVAL R12 1
  MOVE R14 R11
  GETTABLEKS R15 R1 K8 ["Parent"]
  MOVE R16 R8
  MOVE R17 R9
  MOVE R18 R10
  NAMECALL R12 R12 K9 ["createOrReuseAttachmentInstance"]
  CALL R12 6 0
  SETTABLEKS R7 R11 K10 ["Size"]
  GETIMPORT R13 K13 [Instance.new]
  LOADK R14 K14 ["Accessory"]
  GETUPVAL R15 2
  CALL R13 2 1
  SETTABLEKS R13 R11 K8 ["Parent"]
  GETTABLEKS R14 R11 K5 ["Name"]
  SETTABLEKS R14 R13 K5 ["Name"]
  LOADK R14 K15 ["Handle"]
  SETTABLEKS R14 R11 K5 ["Name"]
  MOVE R12 R13
  JUMPIFNOT R3 [+5]
  GETUPVAL R13 3
  MOVE R14 R12
  GETTABLEKS R15 R2 K10 ["Size"]
  CALL R13 2 0
  LOADK R15 K15 ["Handle"]
  NAMECALL R13 R12 K16 ["FindFirstChild"]
  CALL R13 2 1
  JUMPIF R13 [+1]
  RETURN R0 0
  GETIMPORT R14 K20 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R13 K21 ["TopSurface"]
  GETIMPORT R14 K20 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R13 K22 ["BottomSurface"]
  GETIMPORT R14 K20 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R13 K23 ["LeftSurface"]
  GETIMPORT R14 K20 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R13 K24 ["RightSurface"]
  GETIMPORT R14 K20 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R13 K25 ["FrontSurface"]
  GETIMPORT R14 K20 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R13 K26 ["BackSurface"]
  RETURN R0 0

PROTO_9:
  NAMECALL R4 R0 K0 ["getState"]
  CALL R4 1 1
  NAMECALL R5 R1 K1 ["getOuterCageContext"]
  CALL R5 1 1
  NAMECALL R5 R5 K2 ["getVertexData"]
  CALL R5 1 1
  NAMECALL R6 R1 K3 ["getInnerCageContext"]
  CALL R6 1 1
  NAMECALL R6 R6 K2 ["getVertexData"]
  CALL R6 1 1
  GETTABLEKS R8 R4 K4 ["selectItem"]
  GETTABLEKS R7 R8 K5 ["accessoryTypeInfo"]
  GETTABLEKS R9 R4 K4 ["selectItem"]
  GETTABLEKS R8 R9 K6 ["attachmentPoint"]
  GETTABLEKS R9 R7 K7 ["Name"]
  GETTABLEKS R10 R8 K8 ["AttachmentCFrame"]
  GETTABLEKS R11 R8 K9 ["ItemCFrame"]
  GETUPVAL R12 0
  MOVE R13 R3
  MOVE R14 R2
  CALL R12 2 1
  GETUPVAL R13 1
  MOVE R15 R12
  NAMECALL R13 R13 K10 ["clearWelds"]
  CALL R13 2 0
  GETUPVAL R13 1
  MOVE R15 R12
  GETTABLEKS R16 R2 K11 ["Parent"]
  MOVE R17 R9
  MOVE R18 R10
  MOVE R19 R11
  NAMECALL R13 R13 K12 ["createOrReuseAttachmentInstance"]
  CALL R13 6 0
  GETIMPORT R14 K15 [Instance.new]
  LOADK R15 K16 ["Model"]
  GETUPVAL R16 2
  CALL R14 2 1
  GETTABLEKS R15 R12 K7 ["Name"]
  SETTABLEKS R15 R14 K7 ["Name"]
  SETTABLEKS R14 R12 K11 ["Parent"]
  LOADK R15 K17 ["Handle"]
  SETTABLEKS R15 R12 K7 ["Name"]
  MOVE R13 R14
  GETUPVAL R14 3
  MOVE R16 R12
  MOVE R17 R6
  GETIMPORT R18 K21 [Enum.CageType.Inner]
  NAMECALL R14 R14 K22 ["deformClothing"]
  CALL R14 4 0
  GETUPVAL R14 3
  MOVE R16 R12
  MOVE R17 R5
  GETIMPORT R18 K24 [Enum.CageType.Outer]
  NAMECALL R14 R14 K22 ["deformClothing"]
  CALL R14 4 0
  GETUPVAL R14 4
  MOVE R15 R12
  LOADB R16 1
  CALL R14 2 0
  GETUPVAL R14 3
  MOVE R16 R13
  MOVE R17 R3
  NAMECALL R14 R14 K25 ["renameDeformers"]
  CALL R14 3 0
  GETIMPORT R14 K15 [Instance.new]
  LOADK R15 K26 ["Accessory"]
  GETUPVAL R16 2
  CALL R14 2 1
  NAMECALL R16 R13 K27 ["GetChildren"]
  CALL R16 1 1
  GETTABLEN R15 R16 1
  SETTABLEKS R14 R15 K11 ["Parent"]
  GETTABLEKS R15 R13 K7 ["Name"]
  SETTABLEKS R15 R14 K7 ["Name"]
  NAMECALL R15 R13 K28 ["Destroy"]
  CALL R15 1 0
  JUMPIF R12 [+1]
  RETURN R0 0
  GETIMPORT R14 K31 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R12 K32 ["TopSurface"]
  GETIMPORT R14 K31 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R12 K33 ["BottomSurface"]
  GETIMPORT R14 K31 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R12 K34 ["LeftSurface"]
  GETIMPORT R14 K31 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R12 K35 ["RightSurface"]
  GETIMPORT R14 K31 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R12 K36 ["FrontSurface"]
  GETIMPORT R14 K31 [Enum.SurfaceType.Smooth]
  SETTABLEKS R14 R12 K37 ["BackSurface"]
  RETURN R0 0

PROTO_10:
  LOADK R3 K0 ["MeshPart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["MeshId"]
  RETURN R1 1
  LOADK R3 K3 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  LOADK R3 K4 ["SpecialMesh"]
  NAMECALL R1 R0 K5 ["FindFirstChildOfClass"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K2 ["MeshId"]
  RETURN R2 1
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+2]
  GETUPVAL R1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["isClothes"]
  GETUPVAL R2 0
  CALL R1 1 1
  JUMPIFNOT R1 [+45]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["hasAnyCage"]
  GETUPVAL R2 0
  CALL R1 1 1
  JUMPIFNOT R1 [+20]
  GETUPVAL R1 3
  MOVE R2 R0
  GETUPVAL R3 4
  GETUPVAL R4 0
  GETUPVAL R5 1
  CALL R1 4 0
  GETUPVAL R1 5
  LOADK R3 K2 ["LayeredAccessoryPublished"]
  NAMECALL R1 R1 K3 ["getHandler"]
  CALL R1 2 1
  GETUPVAL R2 6
  GETUPVAL R3 0
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 7
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["HasPublished"]
  JUMP [+19]
  GETUPVAL R1 8
  MOVE R2 R0
  GETUPVAL R3 0
  GETUPVAL R4 1
  GETUPVAL R5 9
  CALL R1 4 0
  GETUPVAL R1 5
  LOADK R3 K5 ["RigidAccessoryPublished"]
  NAMECALL R1 R1 K3 ["getHandler"]
  CALL R1 2 1
  GETUPVAL R2 6
  GETUPVAL R3 0
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 7
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["HasPublished"]
  GETUPVAL R2 7
  GETTABLEKS R1 R2 K4 ["HasPublished"]
  JUMPIFNOT R1 [+21]
  GETUPVAL R2 7
  GETTABLEKS R1 R2 K6 ["FirstAction"]
  JUMPIF R1 [+17]
  GETUPVAL R1 7
  GETUPVAL R4 10
  GETTABLEKS R3 R4 K7 ["ACTIONS"]
  GETTABLEKS R2 R3 K8 ["Generate"]
  SETTABLEKS R2 R1 K6 ["FirstAction"]
  GETUPVAL R1 5
  LOADK R3 K6 ["FirstAction"]
  NAMECALL R1 R1 K3 ["getHandler"]
  CALL R1 2 1
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K6 ["FirstAction"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  CAPTURE UPVAL U5
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K2 ["Workspace"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K3 ["PublishService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R5 R4 K14 ["AccessoryUtil"]
  GETTABLEKS R6 R4 K15 ["AvatarUtil"]
  GETTABLEKS R7 R4 K16 ["WrapUtil"]
  GETTABLEKS R8 R4 K17 ["getDeformerToPartMap"]
  GETTABLEKS R9 R4 K18 ["ItemCharacteristics"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R2 K19 ["Src"]
  GETTABLEKS R12 R13 K12 ["Util"]
  GETTABLEKS R11 R12 K20 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R2 K19 ["Src"]
  GETTABLEKS R13 R14 K12 ["Util"]
  GETTABLEKS R12 R13 K21 ["AnalyticsGlobals"]
  CALL R11 1 1
  DUPCLOSURE R12 K22 [PROTO_0]
  DUPCLOSURE R13 K23 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R14 K24 [PROTO_2]
  CAPTURE VAL R0
  DUPCLOSURE R15 K25 [PROTO_3]
  DUPCLOSURE R16 K26 [PROTO_4]
  CAPTURE VAL R0
  DUPCLOSURE R17 K27 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R6
  DUPCLOSURE R18 K28 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R6
  DUPCLOSURE R19 K29 [PROTO_7]
  CAPTURE VAL R8
  CAPTURE VAL R1
  DUPCLOSURE R20 K30 [PROTO_8]
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R15
  DUPCLOSURE R21 K31 [PROTO_9]
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R19
  DUPCLOSURE R22 K32 [PROTO_10]
  DUPCLOSURE R23 K33 [PROTO_12]
  CAPTURE VAL R9
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R11
  CAPTURE VAL R20
  CAPTURE VAL R10
  RETURN R23 1

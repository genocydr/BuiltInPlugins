PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnChanged"]
  DUPTABLE R1 K2 [{"Error"}]
  LOADK R2 K3 [""]
  SETTABLEKS R2 R1 K1 ["Error"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnChanged"]
  DUPTABLE R3 K3 [{"Error", "Image"}]
  SETTABLEKS R0 R3 K1 ["Error"]
  SETTABLEKS R1 R3 K2 ["Image"]
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["ImageType"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  LOADK R3 K0 ["ImageRenderer"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K2 ["Schema"]
  GETUPVAL R3 1
  LOADB R4 0
  CALL R3 1 2
  GETUPVAL R5 1
  LOADB R6 0
  CALL R5 1 2
  LOADNIL R7
  GETTABLEKS R9 R0 K3 ["Value"]
  GETTABLEKS R8 R9 K4 ["Image"]
  JUMPIFNOT R8 [+35]
  GETTABLEKS R11 R0 K3 ["Value"]
  GETTABLEKS R10 R11 K4 ["Image"]
  GETTABLEKS R9 R10 K5 ["Preview"]
  GETTABLEKS R8 R9 K6 ["Id"]
  JUMPIFNOT R8 [+9]
  GETTABLEKS R10 R0 K3 ["Value"]
  GETTABLEKS R9 R10 K4 ["Image"]
  GETTABLEKS R8 R9 K5 ["Preview"]
  GETTABLEKS R7 R8 K6 ["Id"]
  JUMP [+17]
  GETTABLEKS R10 R0 K3 ["Value"]
  GETTABLEKS R9 R10 K4 ["Image"]
  GETTABLEKS R8 R9 K7 ["File"]
  JUMPIFNOT R8 [+10]
  GETTABLEKS R10 R0 K3 ["Value"]
  GETTABLEKS R9 R10 K4 ["Image"]
  GETTABLEKS R8 R9 K7 ["File"]
  NAMECALL R8 R8 K8 ["GetTemporaryId"]
  CALL R8 1 1
  MOVE R7 R8
  JUMPIFNOT R7 [+239]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K9 ["createElement"]
  LOADK R9 K10 ["ImageButton"]
  NEWTABLE R10 4 0
  LOADK R11 K11 [""]
  SETTABLEKS R11 R10 K4 ["Image"]
  GETTABLEKS R11 R1 K12 ["PreviewSize"]
  SETTABLEKS R11 R10 K13 ["Size"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K14 ["Event"]
  GETTABLEKS R11 R12 K15 ["MouseEnter"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R4
  SETTABLE R12 R10 R11
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K14 ["Event"]
  GETTABLEKS R11 R12 K16 ["MouseLeave"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R4
  SETTABLE R12 R10 R11
  DUPTABLE R11 K19 [{"Image", "Toolbar", "MetadataDialog"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K23 [{"AnchorPoint", "Image", "Position", "ScaleType", "Size"}]
  GETIMPORT R15 K26 [Vector2.new]
  LOADK R16 K27 [0.5]
  LOADK R17 K27 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["AnchorPoint"]
  SETTABLEKS R7 R14 K4 ["Image"]
  GETIMPORT R15 K30 [UDim2.fromScale]
  LOADK R16 K27 [0.5]
  LOADK R17 K27 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["Position"]
  GETIMPORT R15 K33 [Enum.ScaleType.Fit]
  SETTABLEKS R15 R14 K22 ["ScaleType"]
  GETIMPORT R15 K30 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K13 ["Size"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K4 ["Image"]
  JUMPIFNOT R3 [+147]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K9 ["createElement"]
  LOADK R13 K34 ["Frame"]
  DUPTABLE R14 K39 [{"ZIndex", "AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K35 ["ZIndex"]
  GETIMPORT R15 K26 [Vector2.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["AnchorPoint"]
  GETIMPORT R15 K30 [UDim2.fromScale]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["Position"]
  GETIMPORT R15 K40 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  GETTABLEKS R19 R1 K41 ["ToolbarHeight"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K13 ["Size"]
  GETTABLEKS R15 R1 K42 ["ToolbarTransparency"]
  SETTABLEKS R15 R14 K36 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K37 ["BorderSizePixel"]
  GETTABLEKS R15 R1 K43 ["ToolbarBackgroundColor"]
  SETTABLEKS R15 R14 K38 ["BackgroundColor3"]
  DUPTABLE R15 K46 [{"ExpandPreview", "ClearButton"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K51 [{"Icon", "IconPadding", "Style", "OnClick", "Size"}]
  GETTABLEKS R19 R1 K52 ["ExpandIcon"]
  SETTABLEKS R19 R18 K47 ["Icon"]
  GETTABLEKS R19 R1 K48 ["IconPadding"]
  SETTABLEKS R19 R18 K48 ["IconPadding"]
  LOADK R19 K53 ["RoundSubtle"]
  SETTABLEKS R19 R18 K49 ["Style"]
  NEWCLOSURE R19 P2
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R19 R18 K50 ["OnClick"]
  GETIMPORT R19 K55 [UDim2.fromOffset]
  GETTABLEKS R20 R1 K41 ["ToolbarHeight"]
  GETTABLEKS R21 R1 K41 ["ToolbarHeight"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K13 ["Size"]
  NEWTABLE R19 0 1
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K9 ["createElement"]
  LOADK R21 K56 ["UIAspectRatioConstraint"]
  CALL R20 1 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  SETTABLEKS R16 R15 K44 ["ExpandPreview"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K57 [{"AnchorPoint", "Position", "Icon", "IconPadding", "Style", "OnClick", "Size"}]
  GETIMPORT R19 K26 [Vector2.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K20 ["AnchorPoint"]
  GETIMPORT R19 K30 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K21 ["Position"]
  GETTABLEKS R19 R1 K58 ["ClearIcon"]
  SETTABLEKS R19 R18 K47 ["Icon"]
  GETTABLEKS R19 R1 K48 ["IconPadding"]
  SETTABLEKS R19 R18 K48 ["IconPadding"]
  LOADK R19 K53 ["RoundSubtle"]
  SETTABLEKS R19 R18 K49 ["Style"]
  NEWCLOSURE R19 P3
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K50 ["OnClick"]
  GETIMPORT R19 K55 [UDim2.fromOffset]
  GETTABLEKS R20 R1 K41 ["ToolbarHeight"]
  GETTABLEKS R21 R1 K41 ["ToolbarHeight"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K13 ["Size"]
  NEWTABLE R19 0 1
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K9 ["createElement"]
  LOADK R21 K56 ["UIAspectRatioConstraint"]
  DUPTABLE R22 K60 [{"AspectRatio"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K59 ["AspectRatio"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  SETTABLEKS R16 R15 K45 ["ClearButton"]
  CALL R12 3 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K17 ["Toolbar"]
  JUMPIFNOT R5 [+17]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K62 [{"Image", "OnClose"}]
  GETTABLEKS R16 R0 K3 ["Value"]
  GETTABLEKS R15 R16 K4 ["Image"]
  SETTABLEKS R15 R14 K4 ["Image"]
  NEWCLOSURE R15 P4
  CAPTURE VAL R6
  SETTABLEKS R15 R14 K61 ["OnClose"]
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K18 ["MetadataDialog"]
  CALL R8 3 1
  RETURN R8 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K64 [{"Icon", "IconSize", "OnClick", "Size"}]
  GETTABLEKS R11 R1 K65 ["ImportIcon"]
  SETTABLEKS R11 R10 K47 ["Icon"]
  GETIMPORT R11 K55 [UDim2.fromOffset]
  LOADN R12 28
  LOADN R13 28
  CALL R11 2 1
  SETTABLEKS R11 R10 K63 ["IconSize"]
  NEWCLOSURE R11 P5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K50 ["OnClick"]
  GETTABLEKS R11 R1 K12 ["PreviewSize"]
  SETTABLEKS R11 R10 K13 ["Size"]
  CALL R8 2 1
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useState"]
  GETTABLEKS R5 R1 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["Stylizer"]
  GETTABLEKS R5 R1 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["Button"]
  GETTABLEKS R7 R5 K14 ["Image"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Components"]
  GETTABLEKS R11 R12 K17 ["Renderers"]
  GETTABLEKS R10 R11 K14 ["Image"]
  GETTABLEKS R9 R10 K18 ["MetadataDialog"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K19 ["Util"]
  GETTABLEKS R10 R11 K20 ["getImage"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K21 ["Resources"]
  GETTABLEKS R11 R12 K22 ["Theme"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K23 ["Types"]
  CALL R11 1 1
  DUPCLOSURE R12 K24 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R12 1

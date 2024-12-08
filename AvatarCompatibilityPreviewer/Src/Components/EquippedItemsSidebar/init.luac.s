PROTO_0:
  GETUPVAL R2 0
  LOADK R4 K0 ["changedLayers"]
  NAMECALL R2 R2 K1 ["report"]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["OnClothingLayerOrderChanged"]
  GETUPVAL R6 2
  LENGTH R5 R6
  SUB R4 R5 R0
  ADDK R3 R4 K3 [1]
  GETUPVAL R7 2
  LENGTH R6 R7
  SUB R5 R6 R1
  ADDK R4 R5 K3 [1]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"ItemData", "Size", "IsDragging"}]
  SETTABLEKS R0 R4 K1 ["ItemData"]
  GETIMPORT R5 K7 [UDim2.fromScale]
  LOADN R6 1
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["Size"]
  SETTABLEKS R1 R4 K3 ["IsDragging"]
  CALL R2 2 1
  GETTABLEKS R8 R0 K8 ["palette"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K10 [tostring]
  CALL R7 1 1
  MOVE R4 R7
  LOADK R5 K11 ["/"]
  GETTABLEKS R7 R0 K12 ["item"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K10 [tostring]
  CALL R6 1 1
  CONCAT R3 R4 R6
  RETURN R2 2

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["EquippedItemsSidebar"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["new"]
  CALL R6 0 1
  GETTABLEKS R7 R3 K4 ["equippedItems"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R13 5
  CALL R13 0 1
  JUMPIFNOT R13 [+8]
  GETUPVAL R13 6
  MOVE R14 R11
  CALL R13 1 1
  JUMPIFEQKS R13 K5 ["layered"] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  JUMP [+3]
  GETUPVAL R12 7
  MOVE R13 R11
  CALL R12 1 1
  JUMPIFNOT R12 [+9]
  LOADN R14 1
  FASTCALL3 TABLE_INSERT R4 R14 R11
  MOVE R13 R4
  MOVE R15 R11
  GETIMPORT R12 K8 [table.insert]
  CALL R12 3 0
  JUMP [+22]
  MOVE R13 R5
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 8
  DUPTABLE R16 K13 [{"ItemData", "LayoutOrder", "Size"}]
  SETTABLEKS R11 R16 K10 ["ItemData"]
  NAMECALL R17 R6 K14 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K11 ["LayoutOrder"]
  GETTABLEKS R17 R2 K15 ["CellSize"]
  SETTABLEKS R17 R16 K12 ["Size"]
  CALL R14 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K8 [table.insert]
  CALL R12 -1 0
  FORGLOOP R7 2 [-47]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K16 ["useState"]
  GETIMPORT R8 K18 [Vector2.new]
  CALL R8 0 -1
  CALL R7 -1 2
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K19 ["useCallback"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R4
  NEWTABLE R11 0 2
  GETTABLEKS R12 R0 K20 ["OnClothingLayerOrderChanged"]
  LENGTH R13 R4
  SETLIST R11 R12 2 [1]
  CALL R9 2 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 9
  DUPTABLE R12 K28 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  GETUPVAL R14 10
  CALL R14 0 1
  JUMPIFNOT R14 [+6]
  GETIMPORT R13 K18 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  JUMP [+5]
  GETIMPORT R13 K18 [Vector2.new]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["AnchorPoint"]
  GETUPVAL R14 10
  CALL R14 0 1
  JUMPIFNOT R14 [+6]
  GETIMPORT R13 K31 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  JUMP [+8]
  GETIMPORT R14 K31 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  GETTABLEKS R15 R2 K32 ["DEPRECATED_PositionOffset"]
  SUB R13 R14 R15
  SETTABLEKS R13 R12 K22 ["Position"]
  GETTABLEKS R13 R2 K12 ["Size"]
  SETTABLEKS R13 R12 K12 ["Size"]
  GETUPVAL R14 10
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETIMPORT R13 K35 [Enum.AutomaticSize.XY]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K23 ["AutomaticSize"]
  GETIMPORT R13 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K24 ["Layout"]
  GETTABLEKS R13 R2 K39 ["SidebarSpacing"]
  SETTABLEKS R13 R12 K25 ["Spacing"]
  GETUPVAL R14 10
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETIMPORT R13 K41 [Enum.HorizontalAlignment.Right]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K26 ["HorizontalAlignment"]
  GETUPVAL R14 10
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETIMPORT R13 K43 [Enum.VerticalAlignment.Top]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K27 ["VerticalAlignment"]
  DUPTABLE R13 K46 [{"Contents", "OtherEquipment"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 9
  NEWTABLE R16 8 0
  GETIMPORT R17 K48 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K23 ["AutomaticSize"]
  GETIMPORT R17 K41 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R17 R16 K26 ["HorizontalAlignment"]
  GETUPVAL R18 10
  CALL R18 0 1
  JUMPIFNOT R18 [+3]
  GETIMPORT R17 K43 [Enum.VerticalAlignment.Top]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K27 ["VerticalAlignment"]
  GETIMPORT R17 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K24 ["Layout"]
  GETTABLEKS R17 R2 K39 ["SidebarSpacing"]
  SETTABLEKS R17 R16 K25 ["Spacing"]
  GETUPVAL R18 10
  CALL R18 0 1
  JUMPIFNOT R18 [+14]
  DUPTABLE R17 K50 [{"Top", "Left", "Right"}]
  GETTABLEKS R18 R2 K51 ["SidebarPadding"]
  SETTABLEKS R18 R17 K42 ["Top"]
  GETTABLEKS R18 R2 K51 ["SidebarPadding"]
  SETTABLEKS R18 R17 K49 ["Left"]
  GETTABLEKS R18 R2 K51 ["SidebarPadding"]
  SETTABLEKS R18 R17 K40 ["Right"]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K52 ["Padding"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K53 ["Change"]
  GETTABLEKS R17 R18 K54 ["AbsoluteSize"]
  NEWCLOSURE R18 P1
  CAPTURE VAL R8
  SETTABLE R18 R16 R17
  DUPTABLE R17 K57 [{"ResetCameraButton", "LayeredClothingEquipment"}]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 11
  DUPTABLE R20 K58 [{"LayoutOrder"}]
  NAMECALL R21 R6 K14 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K11 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K55 ["ResetCameraButton"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 12
  DUPTABLE R20 K65 [{"cellSize", "spacing", "layoutOrder", "tiles", "render", "move"}]
  GETTABLEKS R21 R2 K15 ["CellSize"]
  SETTABLEKS R21 R20 K59 ["cellSize"]
  GETUPVAL R22 10
  CALL R22 0 1
  JUMPIFNOT R22 [+3]
  GETTABLEKS R21 R2 K66 ["ItemSpacing"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K60 ["spacing"]
  NAMECALL R21 R6 K14 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K61 ["layoutOrder"]
  SETTABLEKS R4 R20 K62 ["tiles"]
  DUPCLOSURE R21 K67 [PROTO_2]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U8
  SETTABLEKS R21 R20 K63 ["render"]
  SETTABLEKS R9 R20 K64 ["move"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K56 ["LayeredClothingEquipment"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K44 ["Contents"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 13
  DUPTABLE R16 K72 [{"AutomaticSize", "AutoSizeCanvas", "AutomaticCanvasSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Spacing", "ScrollBarThickness", "Padding", "Size", "ScrollingFrameSize"}]
  GETIMPORT R17 K74 [Enum.AutomaticSize.X]
  SETTABLEKS R17 R16 K23 ["AutomaticSize"]
  LOADB R17 0
  SETTABLEKS R17 R16 K68 ["AutoSizeCanvas"]
  GETUPVAL R18 10
  CALL R18 0 1
  JUMPIFNOT R18 [+3]
  GETIMPORT R17 K35 [Enum.AutomaticSize.XY]
  JUMP [+2]
  GETIMPORT R17 K48 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K69 ["AutomaticCanvasSize"]
  GETIMPORT R17 K41 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R17 R16 K26 ["HorizontalAlignment"]
  NAMECALL R17 R6 K14 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K11 ["LayoutOrder"]
  GETIMPORT R17 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K24 ["Layout"]
  GETTABLEKS R17 R2 K66 ["ItemSpacing"]
  SETTABLEKS R17 R16 K25 ["Spacing"]
  GETUPVAL R18 10
  CALL R18 0 1
  JUMPIFNOT R18 [+3]
  GETTABLEKS R17 R2 K70 ["ScrollBarThickness"]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K70 ["ScrollBarThickness"]
  GETUPVAL R18 10
  CALL R18 0 1
  JUMPIFNOT R18 [+11]
  DUPTABLE R17 K75 [{"Right", "Left"}]
  GETTABLEKS R18 R2 K51 ["SidebarPadding"]
  SETTABLEKS R18 R17 K40 ["Right"]
  GETTABLEKS R19 R2 K51 ["SidebarPadding"]
  MINUS R18 R19
  SETTABLEKS R18 R17 K49 ["Left"]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K52 ["Padding"]
  GETUPVAL R18 10
  CALL R18 0 1
  JUMPIFNOT R18 [+18]
  GETIMPORT R17 K76 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  GETTABLEKS R24 R7 K47 ["Y"]
  MINUS R23 R24
  GETTABLEKS R24 R2 K39 ["SidebarSpacing"]
  SUB R22 R23 R24
  LOADK R24 K77 [0.5]
  GETTABLEKS R25 R2 K51 ["SidebarPadding"]
  MUL R23 R24 R25
  SUB R21 R22 R23
  CALL R17 4 1
  JUMP [+17]
  GETIMPORT R17 K76 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R22 R2 K15 ["CellSize"]
  GETTABLEKS R21 R22 K73 ["X"]
  GETTABLEKS R20 R21 K78 ["Offset"]
  GETTABLEKS R21 R2 K79 ["FrameSizeOffset"]
  ADD R19 R20 R21
  LOADN R20 1
  GETTABLEKS R22 R7 K47 ["Y"]
  MINUS R21 R22
  CALL R17 4 1
  SETTABLEKS R17 R16 K12 ["Size"]
  GETIMPORT R17 K76 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R19 R2 K80 ["ScrollingFrameSizeOffset"]
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K71 ["ScrollingFrameSize"]
  MOVE R17 R5
  CALL R14 3 1
  SETTABLEKS R14 R13 K45 ["OtherEquipment"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
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
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["EquippedItemPreview"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K11 ["ResetCameraButton"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["DraggableTileList"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["EquipmentStateContext"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K17 ["getItemAccessoryType"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K18 ["DEPRECATED_isLayeredClothing"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K19 ["Resources"]
  GETTABLEKS R10 R11 K20 ["Theme"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K21 ["Types"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K22 ["Flags"]
  GETTABLEKS R12 R13 K23 ["getFFlagAvatarPreviewerClothingTypeIcons"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K22 ["Flags"]
  GETTABLEKS R13 R14 K24 ["getFFlagAvatarPreviewerBetterUI"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K25 ["UI"]
  GETTABLEKS R14 R13 K26 ["Pane"]
  GETTABLEKS R15 R13 K27 ["ScrollingFrame"]
  GETTABLEKS R17 R1 K15 ["Util"]
  GETTABLEKS R16 R17 K28 ["LayoutOrderIterator"]
  GETTABLEKS R18 R1 K29 ["ContextServices"]
  GETTABLEKS R17 R18 K30 ["Analytics"]
  GETTABLEKS R19 R1 K29 ["ContextServices"]
  GETTABLEKS R18 R19 K31 ["Stylizer"]
  DUPCLOSURE R19 K32 [PROTO_3]
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R15
  RETURN R19 1

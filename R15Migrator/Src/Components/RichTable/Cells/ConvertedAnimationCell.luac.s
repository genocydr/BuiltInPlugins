PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"LayoutOrder", "OnClick", "Size", "AutomaticSize"}]
  SETTABLEKS R1 R6 K1 ["LayoutOrder"]
  SETTABLEKS R2 R6 K2 ["OnClick"]
  GETIMPORT R7 K8 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K3 ["Size"]
  GETIMPORT R7 K11 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K4 ["AutomaticSize"]
  DUPTABLE R7 K16 [{"UIListLayout", "UIPadding", "Title", "Subtitle"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K12 ["UIListLayout"]
  DUPTABLE R10 K22 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R11 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K17 ["FillDirection"]
  GETIMPORT R11 K26 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K18 ["HorizontalAlignment"]
  GETIMPORT R11 K28 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K19 ["VerticalAlignment"]
  GETIMPORT R11 K29 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K20 ["SortOrder"]
  GETIMPORT R11 K32 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Padding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["UIListLayout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K13 ["UIPadding"]
  DUPTABLE R10 K37 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K32 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["PaddingTop"]
  GETIMPORT R11 K32 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K34 ["PaddingBottom"]
  GETIMPORT R11 K32 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["PaddingLeft"]
  GETIMPORT R11 K32 [UDim.new]
  LOADN R12 0
  LOADN R13 5
  CALL R11 2 1
  SETTABLEKS R11 R10 K36 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["UIPadding"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K41 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "Style", "TextXAlignment"}]
  GETUPVAL R11 3
  NAMECALL R11 R11 K42 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K1 ["LayoutOrder"]
  GETIMPORT R11 K8 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K3 ["Size"]
  GETIMPORT R11 K11 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K4 ["AutomaticSize"]
  GETTABLEKS R11 R0 K14 ["Title"]
  SETTABLEKS R11 R10 K38 ["Text"]
  LOADK R11 K43 ["Bold"]
  SETTABLEKS R11 R10 K39 ["Style"]
  GETIMPORT R11 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K40 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Title"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K45 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment"}]
  GETUPVAL R11 3
  NAMECALL R11 R11 K42 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K1 ["LayoutOrder"]
  GETIMPORT R11 K8 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K3 ["Size"]
  GETIMPORT R11 K11 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K4 ["AutomaticSize"]
  GETTABLEKS R11 R0 K15 ["Subtitle"]
  SETTABLEKS R11 R10 K38 ["Text"]
  GETIMPORT R11 K44 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K40 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["Subtitle"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_2:
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["OnItemActivated"]
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R2 0
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["ConvertedAnimationCell"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useState"]
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K9 [{"LayoutOrder", "Size", "Style", "OnClick"}]
  GETTABLEKS R8 R0 K5 ["LayoutOrder"]
  SETTABLEKS R8 R7 K5 ["LayoutOrder"]
  GETTABLEKS R8 R0 K6 ["Size"]
  SETTABLEKS R8 R7 K6 ["Size"]
  LOADK R8 K10 ["Round"]
  SETTABLEKS R8 R7 K7 ["Style"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K8 ["OnClick"]
  DUPTABLE R8 K13 [{"Icon", "DropdownMenu"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K18 [{"Size", "AnchorPoint", "Position", "Image", "ImageColor3"}]
  GETTABLEKS R12 R1 K19 ["ExpandArrowSize"]
  SETTABLEKS R12 R11 K6 ["Size"]
  GETIMPORT R12 K21 [Vector2.new]
  LOADK R13 K22 [0.5]
  LOADK R14 K22 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["AnchorPoint"]
  GETIMPORT R12 K25 [UDim2.fromScale]
  LOADK R13 K22 [0.5]
  LOADK R14 K22 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["Position"]
  GETTABLEKS R12 R1 K26 ["ExpandArrow"]
  SETTABLEKS R12 R11 K16 ["Image"]
  GETTABLEKS R12 R1 K27 ["IconColor"]
  SETTABLEKS R12 R11 K17 ["ImageColor3"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["Icon"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K33 [{"Hide", "Items", "OnRenderItem", "OnItemActivated", "OnFocusLost"}]
  NOT R12 R2
  SETTABLEKS R12 R11 K28 ["Hide"]
  NEWTABLE R12 0 2
  DUPTABLE R13 K36 [{"Title", "Subtitle"}]
  GETTABLEKS R15 R0 K37 ["Value"]
  FASTCALL1 TOSTRING R15 [+2]
  GETIMPORT R14 K39 [tostring]
  CALL R14 1 1
  SETTABLEKS R14 R13 K34 ["Title"]
  LOADK R14 K40 ["Converted from R6"]
  SETTABLEKS R14 R13 K35 ["Subtitle"]
  DUPTABLE R14 K36 [{"Title", "Subtitle"}]
  LOADK R15 K41 ["Replace with New"]
  SETTABLEKS R15 R14 K34 ["Title"]
  LOADK R15 K42 ["Enter new Asset ID"]
  SETTABLEKS R15 R14 K35 ["Subtitle"]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K29 ["Items"]
  NEWCLOSURE R12 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U7
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K30 ["OnRenderItem"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K31 ["OnItemActivated"]
  NEWCLOSURE R12 P3
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K32 ["OnFocusLost"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["DropdownMenu"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_5:
  GETUPVAL R1 0
  LOADK R3 K0 ["ConvertedAnimationCell"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K9 [{"Style", "Text", "LayoutOrder", "Size", "TrailingComponent", "TrailingComponentProps"}]
  GETTABLEKS R5 R1 K10 ["TextInput"]
  SETTABLEKS R5 R4 K3 ["Style"]
  GETTABLEKS R5 R0 K11 ["Value"]
  SETTABLEKS R5 R4 K4 ["Text"]
  GETTABLEKS R5 R0 K5 ["LayoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  GETTABLEKS R5 R0 K6 ["Size"]
  SETTABLEKS R5 R4 K6 ["Size"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K7 ["TrailingComponent"]
  DUPTABLE R5 K12 [{"Size", "Value"}]
  GETIMPORT R6 K15 [UDim2.fromOffset]
  LOADN R7 22
  LOADN R8 22
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Size"]
  GETTABLEKS R6 R0 K11 ["Value"]
  SETTABLEKS R6 R5 K11 ["Value"]
  SETTABLEKS R5 R4 K8 ["TrailingComponentProps"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R1 0
  LOADK R3 K0 ["ConvertedAnimationCell"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K7 [{"LayoutOrder", "Size", "Style", "OnClick"}]
  GETTABLEKS R5 R0 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K3 ["LayoutOrder"]
  GETTABLEKS R5 R0 K4 ["Size"]
  SETTABLEKS R5 R4 K4 ["Size"]
  LOADK R5 K8 ["Round"]
  SETTABLEKS R5 R4 K5 ["Style"]
  GETTABLEKS R5 R0 K6 ["OnClick"]
  SETTABLEKS R5 R4 K6 ["OnClick"]
  DUPTABLE R5 K10 [{"Image"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K14 [{"Size", "AnchorPoint", "Position", "Image", "ImageColor3"}]
  GETTABLEKS R9 R1 K15 ["DotDotDotSize"]
  SETTABLEKS R9 R8 K4 ["Size"]
  GETIMPORT R9 K18 [Vector2.new]
  LOADK R10 K19 [0.5]
  LOADK R11 K19 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["AnchorPoint"]
  GETIMPORT R9 K22 [UDim2.fromScale]
  LOADK R10 K19 [0.5]
  LOADK R11 K19 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["Position"]
  GETTABLEKS R9 R1 K23 ["DotDotDot"]
  SETTABLEKS R9 R8 K9 ["Image"]
  GETTABLEKS R9 R1 K24 ["IconColor"]
  SETTABLEKS R9 R8 K13 ["ImageColor3"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Image"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnContextButtonClick"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["ColumnIndex"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["RowIndex"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["Value"]
  GETTABLEKS R2 R0 K1 ["Style"]
  GETTABLEKS R3 R0 K2 ["Width"]
  JUMPIF R3 [+8]
  GETIMPORT R3 K5 [UDim.new]
  GETTABLEKS R6 R0 K7 ["Columns"]
  LENGTH R5 R6
  DIVRK R4 R6 K5 [UDim.new]
  LOADN R5 0
  CALL R3 2 1
  GETTABLEKS R5 R0 K8 ["Emphasis"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K9 ["BackgroundOdd"]
  JUMP [+2]
  GETTABLEKS R4 R2 K10 ["BackgroundEven"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K23 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  GETTABLEKS R9 R0 K24 ["ColumnIndex"]
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  DUPTABLE R9 K29 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K25 ["Top"]
  LOADN R10 1
  SETTABLEKS R10 R9 K26 ["Bottom"]
  LOADN R10 5
  SETTABLEKS R10 R9 K27 ["Left"]
  LOADN R10 5
  SETTABLEKS R10 R9 K28 ["Right"]
  SETTABLEKS R9 R8 K13 ["Padding"]
  LOADK R9 K30 ["Box"]
  SETTABLEKS R9 R8 K1 ["Style"]
  SETTABLEKS R4 R8 K14 ["BackgroundColor3"]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["BorderSizePixel"]
  GETTABLEKS R9 R2 K31 ["Border"]
  SETTABLEKS R9 R8 K16 ["BorderColor3"]
  GETIMPORT R9 K33 [UDim2.new]
  GETTABLEKS R10 R3 K34 ["Scale"]
  GETTABLEKS R11 R3 K35 ["Offset"]
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K17 ["Size"]
  LOADB R9 1
  SETTABLEKS R9 R8 K18 ["ClipsDescendants"]
  GETIMPORT R9 K39 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K19 ["Layout"]
  LOADN R9 8
  SETTABLEKS R9 R8 K20 ["Spacing"]
  GETIMPORT R9 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K21 ["HorizontalAlignment"]
  GETIMPORT R9 K42 [Enum.VerticalAlignment.Center]
  SETTABLEKS R9 R8 K22 ["VerticalAlignment"]
  DUPTABLE R9 K45 [{"Input", "DotDotDot"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K46 [{"Value", "LayoutOrder", "Size"}]
  SETTABLEKS R1 R12 K0 ["Value"]
  NAMECALL R13 R5 K47 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K12 ["LayoutOrder"]
  GETIMPORT R13 K33 [UDim2.new]
  LOADN R14 0
  LOADN R15 110
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K17 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K43 ["Input"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K49 [{"LayoutOrder", "Size", "OnClick"}]
  NAMECALL R13 R5 K47 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K12 ["LayoutOrder"]
  GETIMPORT R13 K51 [UDim2.fromOffset]
  LOADN R14 22
  LOADN R15 22
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["Size"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K48 ["OnClick"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K44 ["DotDotDot"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["Stylizer"]
  GETTABLEKS R5 R1 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["Pane"]
  GETTABLEKS R7 R5 K14 ["TextLabel"]
  GETTABLEKS R8 R5 K15 ["Button"]
  GETTABLEKS R9 R5 K16 ["TextInput"]
  GETTABLEKS R10 R5 K17 ["DropdownMenu"]
  GETTABLEKS R11 R5 K18 ["Image"]
  GETTABLEKS R13 R1 K19 ["Util"]
  GETTABLEKS R12 R13 K20 ["LayoutOrderIterator"]
  DUPCLOSURE R13 K21 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R7
  DUPCLOSURE R14 K22 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R13
  DUPCLOSURE R15 K23 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R11
  DUPCLOSURE R16 K24 [PROTO_8]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R15
  RETURN R16 1

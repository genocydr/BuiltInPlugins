PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnHoverChanged"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R1 K1 ["OnHoverChanged"]
  GETUPVAL R3 1
  CALL R2 1 0
  DUPTABLE R2 K3 [{"isHovered"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K2 ["isHovered"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateHoverState"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateHoverState"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["OnExpanded"]
  JUMPIFNOT R1 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["AssetInfo"]
  GETTABLEKS R2 R3 K3 ["Asset"]
  GETTABLEKS R1 R2 K4 ["Id"]
  GETTABLEKS R2 R0 K1 ["OnExpanded"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["CanInsertAsset"]
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K2 ["InsertAsset"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["InsertAsset"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K1 ["InsertAsset"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["AssetInfo"]
  GETTABLEKS R2 R0 K2 ["Plugin"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["TryOpenAssetConfig"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K5 ["getPageInfoAnalyticsContextInfo"]
  MOVE R5 R4
  CALL R5 0 1
  GETTABLEKS R6 R0 K6 ["tryCreateContextMenu"]
  MOVE R7 R1
  GETTABLEKS R8 R0 K7 ["Localization"]
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R5
  CALL R6 5 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["AssetInfo"]
  GETTABLEKS R2 R0 K2 ["LogImpression"]
  JUMPIFNOT R2 [+14]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K2 ["LogImpression"]
  MOVE R4 R1
  GETTABLEKS R5 R0 K3 ["AbsoluteSize"]
  GETTABLEKS R6 R0 K4 ["AbsolutePosition"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["wasAssetBoundsWithinScrollingBounds"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K5 ["wasAssetBoundsWithinScrollingBounds"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Columns"]
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K2 ["Hidden"]
  JUMPIF R9 [+196]
  GETTABLEKS R10 R8 K3 ["OnClick"]
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R11 1
  CALL R11 0 1
  JUMPIFNOT R11 [+6]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K4 ["ITEM_ROW"]
  GETTABLEKS R10 R11 K5 ["LEFT_RIGHT_PADDING"]
  JUMP [+5]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K6 ["AUDIO_ROW"]
  GETTABLEKS R10 R11 K5 ["LEFT_RIGHT_PADDING"]
  GETTABLEKS R11 R8 K7 ["DevLabel"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K12 [{"LayoutOrder", "Padding", "Size"}]
  NAMECALL R15 R0 K13 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K9 ["LayoutOrder"]
  DUPTABLE R15 K18 [{"Bottom", "Left", "Right", "Top"}]
  GETTABLEKS R17 R8 K10 ["Padding"]
  JUMPIFNOT R17 [+10]
  GETTABLEKS R18 R8 K10 ["Padding"]
  GETTABLEKS R17 R18 K14 ["Bottom"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R17 R8 K10 ["Padding"]
  GETTABLEKS R16 R17 K14 ["Bottom"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K14 ["Bottom"]
  GETTABLEKS R17 R8 K10 ["Padding"]
  JUMPIFNOT R17 [+11]
  GETTABLEKS R18 R8 K10 ["Padding"]
  GETTABLEKS R17 R18 K15 ["Left"]
  JUMPIFNOT R17 [+6]
  GETTABLEKS R18 R8 K10 ["Padding"]
  GETTABLEKS R17 R18 K15 ["Left"]
  ADD R16 R10 R17
  JUMP [+1]
  MOVE R16 R10
  SETTABLEKS R16 R15 K15 ["Left"]
  GETTABLEKS R17 R8 K10 ["Padding"]
  JUMPIFNOT R17 [+10]
  GETTABLEKS R18 R8 K10 ["Padding"]
  GETTABLEKS R17 R18 K16 ["Right"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R17 R8 K10 ["Padding"]
  GETTABLEKS R16 R17 K16 ["Right"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K16 ["Right"]
  GETTABLEKS R17 R8 K10 ["Padding"]
  JUMPIFNOT R17 [+10]
  GETTABLEKS R18 R8 K10 ["Padding"]
  GETTABLEKS R17 R18 K17 ["Top"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R17 R8 K10 ["Padding"]
  GETTABLEKS R16 R17 K17 ["Top"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K17 ["Top"]
  SETTABLEKS R15 R14 K10 ["Padding"]
  GETTABLEKS R15 R8 K11 ["Size"]
  SETTABLEKS R15 R14 K11 ["Size"]
  DUPTABLE R15 K20 [{"Text"}]
  JUMPIFNOT R9 [+47]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K25 [{"LayoutOrder", "OnClick", "Size", "Text", "TextTruncate", "TextXAlignment", "TextWrapped", "Style"}]
  NAMECALL R19 R0 K13 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  GETTABLEKS R19 R8 K3 ["OnClick"]
  SETTABLEKS R19 R18 K3 ["OnClick"]
  GETIMPORT R19 K28 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K11 ["Size"]
  GETTABLEKS R19 R8 K19 ["Text"]
  SETTABLEKS R19 R18 K19 ["Text"]
  GETTABLEKS R20 R8 K21 ["TextTruncate"]
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R8 K21 ["TextTruncate"]
  JUMP [+2]
  GETTABLEKS R19 R1 K21 ["TextTruncate"]
  SETTABLEKS R19 R18 K21 ["TextTruncate"]
  GETIMPORT R19 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K22 ["TextXAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K23 ["TextWrapped"]
  LOADK R19 K31 ["ToolboxItemRowLink"]
  SETTABLEKS R19 R18 K24 ["Style"]
  CALL R16 2 1
  JUMP [+39]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K32 [{"LayoutOrder", "Size", "Text", "Style", "TextTruncate", "TextXAlignment"}]
  NAMECALL R19 R0 K13 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K9 ["LayoutOrder"]
  GETIMPORT R19 K28 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K11 ["Size"]
  GETTABLEKS R19 R8 K19 ["Text"]
  SETTABLEKS R19 R18 K19 ["Text"]
  LOADK R19 K33 ["ToolboxItemRowText"]
  SETTABLEKS R19 R18 K24 ["Style"]
  GETTABLEKS R20 R8 K21 ["TextTruncate"]
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R8 K21 ["TextTruncate"]
  JUMP [+2]
  GETTABLEKS R19 R1 K21 ["TextTruncate"]
  SETTABLEKS R19 R18 K21 ["TextTruncate"]
  GETIMPORT R19 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K22 ["TextXAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K19 ["Text"]
  CALL R12 3 1
  SETTABLE R12 R3 R11
  FORGLOOP R4 2 [-200]
  RETURN R3 1

PROTO_10:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["wasAssetBoundsWithinScrollingBounds"]
  DUPTABLE R1 K3 [{"isHovered", "isExpanded"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["isHovered"]
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["isExpanded"]
  SETTABLEKS R1 R0 K4 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["updateHoverState"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onMouseEnter"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onMouseLeave"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["toggleIsExpanded"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onDragStart"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onNameClicked"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["tryCreateLocalizedContextMenu"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["logImpression"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K13 ["renderColumns"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["AssetInfo"]
  GETTABLEKS R3 R1 K2 ["LogImpression"]
  GETTABLEKS R4 R2 K3 ["Asset"]
  JUMPIFNOT R4 [+11]
  GETTABLEKS R4 R1 K4 ["getCanManageAsset"]
  GETTABLEKS R6 R1 K5 ["Network"]
  GETTABLEKS R5 R6 K6 ["networkInterface"]
  GETTABLEKS R7 R2 K3 ["Asset"]
  GETTABLEKS R6 R7 K7 ["Id"]
  CALL R4 2 0
  JUMPIFNOT R2 [+5]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R0 K8 ["logImpression"]
  CALL R4 0 0
  RETURN R0 0
  JUMPIFNOT R2 [+14]
  GETTABLEKS R4 R1 K9 ["getPageInfoAnalyticsContextInfo"]
  MOVE R5 R4
  CALL R5 0 1
  GETTABLEKS R6 R1 K10 ["AssetAnalytics"]
  NAMECALL R6 R6 K11 ["get"]
  CALL R6 1 1
  MOVE R8 R2
  MOVE R9 R5
  NAMECALL R6 R6 K8 ["logImpression"]
  CALL R6 3 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R1 K1 ["AbsolutePosition"]
  GETTABLEKS R5 R3 K1 ["AbsolutePosition"]
  JUMPIFNOTEQ R4 R5 [+13]
  GETTABLEKS R4 R1 K2 ["AbsoluteSize"]
  GETTABLEKS R5 R3 K2 ["AbsoluteSize"]
  JUMPIFNOTEQ R4 R5 [+7]
  GETTABLEKS R4 R1 K3 ["ParentAbsoluteSize"]
  GETTABLEKS R5 R3 K3 ["ParentAbsoluteSize"]
  JUMPIFEQ R4 R5 [+4]
  GETTABLEKS R4 R0 K4 ["logImpression"]
  CALL R4 0 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R1 K2 ["AssetInfo"]
  GETTABLEKS R3 R4 K3 ["Asset"]
  GETTABLEKS R4 R1 K4 ["ExpandedHeight"]
  GETTABLEKS R6 R1 K5 ["Stylizer"]
  GETTABLEKS R5 R6 K6 ["itemRow"]
  GETTABLEKS R6 R1 K7 ["LayoutOrder"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R7 R3 K8 ["Name"]
  JUMP [+1]
  LOADK R7 K9 [""]
  GETTABLEKS R8 R1 K10 ["IsExpanded"]
  GETTABLEKS R9 R2 K11 ["isHovered"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["new"]
  CALL R10 0 1
  JUMPIFNOT R6 [+6]
  MODK R12 R6 K13 [2]
  JUMPIFNOTEQKN R12 K14 [0] [+4]
  GETTABLEKS R11 R5 K15 ["backgroundColorEven"]
  JUMP [+2]
  GETTABLEKS R11 R5 K16 ["backgroundColorOdd"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K17 ["join"]
  DUPTABLE R13 K21 [{"AutomaticSize", "LayoutOrder", "Position", "Size"}]
  GETTABLEKS R14 R1 K18 ["AutomaticSize"]
  SETTABLEKS R14 R13 K18 ["AutomaticSize"]
  SETTABLEKS R6 R13 K7 ["LayoutOrder"]
  GETUPVAL R15 2
  CALL R15 0 1
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R1 K19 ["Position"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K19 ["Position"]
  GETIMPORT R14 K23 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  JUMPIFNOT R8 [+2]
  MOVE R18 R4
  JUMP [+5]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K24 ["AUDIO_ROW"]
  GETTABLEKS R18 R19 K25 ["ROW_HEIGHT"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K20 ["Size"]
  GETTABLEKS R14 R1 K26 ["WrapperProps"]
  CALL R12 2 1
  GETUPVAL R14 4
  CALL R14 0 1
  JUMPIFNOT R14 [+6]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K27 ["ITEM_ROW"]
  GETTABLEKS R13 R14 K28 ["LEFT_RIGHT_PADDING"]
  JUMP [+5]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K24 ["AUDIO_ROW"]
  GETTABLEKS R13 R14 K28 ["LEFT_RIGHT_PADDING"]
  GETUPVAL R15 4
  CALL R15 0 1
  JUMPIFNOT R15 [+6]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K27 ["ITEM_ROW"]
  GETTABLEKS R14 R15 K29 ["TOP_BUTTON_PADDING"]
  JUMP [+5]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K24 ["AUDIO_ROW"]
  GETTABLEKS R14 R15 K29 ["TOP_BUTTON_PADDING"]
  GETUPVAL R16 4
  CALL R16 0 1
  JUMPIFNOT R16 [+6]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K27 ["ITEM_ROW"]
  GETTABLEKS R15 R16 K30 ["BORDER_SIZE"]
  JUMP [+5]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K24 ["AUDIO_ROW"]
  GETTABLEKS R15 R16 K30 ["BORDER_SIZE"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K31 ["createElement"]
  GETUPVAL R17 6
  MOVE R18 R12
  DUPTABLE R19 K33 [{"Button"}]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K31 ["createElement"]
  GETUPVAL R21 7
  NEWTABLE R22 16 0
  SETTABLEKS R11 R22 K34 ["BackgroundColor3"]
  GETIMPORT R23 K23 [UDim2.new]
  LOADN R24 1
  MINUS R26 R15
  MULK R25 R26 K13 [2]
  LOADN R26 1
  MINUS R28 R15
  MULK R27 R28 K13 [2]
  CALL R23 4 1
  SETTABLEKS R23 R22 K20 ["Size"]
  GETIMPORT R23 K23 [UDim2.new]
  LOADN R24 0
  MOVE R25 R15
  LOADN R26 0
  MOVE R27 R15
  CALL R23 4 1
  SETTABLEKS R23 R22 K19 ["Position"]
  LOADN R23 1
  SETTABLEKS R23 R22 K35 ["ZIndex"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K36 ["Event"]
  GETTABLEKS R23 R24 K37 ["MouseEnter"]
  GETTABLEKS R24 R0 K38 ["onMouseEnter"]
  SETTABLE R24 R22 R23
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K36 ["Event"]
  GETTABLEKS R23 R24 K39 ["MouseLeave"]
  GETTABLEKS R24 R0 K40 ["onMouseLeave"]
  SETTABLE R24 R22 R23
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K36 ["Event"]
  GETTABLEKS R23 R24 K41 ["MouseButton1Click"]
  GETTABLEKS R24 R0 K42 ["toggleIsExpanded"]
  SETTABLE R24 R22 R23
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K36 ["Event"]
  GETTABLEKS R23 R24 K43 ["MouseButton2Click"]
  GETTABLEKS R24 R0 K44 ["tryCreateLocalizedContextMenu"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R0 K45 ["onDragStart"]
  SETTABLEKS R23 R22 K45 ["onDragStart"]
  DUPTABLE R23 K52 [{"UIStroke", "UIPadding", "UICorner", "Layout", "Details", "ExpandedContents"}]
  JUMPIF R8 [+1]
  JUMPIFNOT R9 [+13]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K31 ["createElement"]
  LOADK R25 K46 ["UIStroke"]
  DUPTABLE R26 K55 [{"Thickness", "Color"}]
  SETTABLEKS R15 R26 K53 ["Thickness"]
  GETTABLEKS R27 R5 K56 ["borderColor"]
  SETTABLEKS R27 R26 K54 ["Color"]
  CALL R24 2 1
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K46 ["UIStroke"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K31 ["createElement"]
  LOADK R25 K47 ["UIPadding"]
  DUPTABLE R26 K61 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R27 K63 [UDim.new]
  LOADN R28 0
  SUB R29 R13 R15
  CALL R27 2 1
  SETTABLEKS R27 R26 K57 ["PaddingRight"]
  GETIMPORT R27 K63 [UDim.new]
  LOADN R28 0
  SUB R29 R13 R15
  CALL R27 2 1
  SETTABLEKS R27 R26 K58 ["PaddingLeft"]
  GETIMPORT R27 K63 [UDim.new]
  LOADN R28 0
  SUB R29 R14 R15
  CALL R27 2 1
  SETTABLEKS R27 R26 K59 ["PaddingTop"]
  GETIMPORT R27 K63 [UDim.new]
  LOADN R28 0
  SUB R29 R14 R15
  CALL R27 2 1
  SETTABLEKS R27 R26 K60 ["PaddingBottom"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K47 ["UIPadding"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K31 ["createElement"]
  LOADK R25 K48 ["UICorner"]
  DUPTABLE R26 K65 [{"CornerRadius"}]
  GETIMPORT R27 K63 [UDim.new]
  LOADN R28 0
  LOADN R29 5
  CALL R27 2 1
  SETTABLEKS R27 R26 K64 ["CornerRadius"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K48 ["UICorner"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K31 ["createElement"]
  LOADK R25 K66 ["UIListLayout"]
  DUPTABLE R26 K69 [{"FillDirection", "SortOrder"}]
  GETIMPORT R27 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R27 R26 K67 ["FillDirection"]
  GETIMPORT R27 K73 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K68 ["SortOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K49 ["Layout"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K31 ["createElement"]
  GETUPVAL R25 6
  DUPTABLE R26 K75 [{"Layout", "LayoutOrder", "HorizontalAlignment", "Size"}]
  GETIMPORT R27 K77 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K49 ["Layout"]
  NAMECALL R27 R10 K78 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K7 ["LayoutOrder"]
  GETIMPORT R27 K80 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R27 R26 K74 ["HorizontalAlignment"]
  GETIMPORT R27 K23 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETUPVAL R33 3
  GETTABLEKS R32 R33 K24 ["AUDIO_ROW"]
  GETTABLEKS R31 R32 K81 ["ICON_SIZE"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K20 ["Size"]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K17 ["join"]
  DUPTABLE R28 K83 [{"Icon", "Name"}]
  GETTABLEKS R30 R1 K84 ["RenderIcon"]
  JUMPIFNOT R30 [+5]
  GETTABLEKS R29 R1 K84 ["RenderIcon"]
  MOVE R30 R9
  CALL R29 1 1
  JUMP [+1]
  LOADNIL R29
  SETTABLEKS R29 R28 K82 ["Icon"]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K31 ["createElement"]
  GETUPVAL R30 6
  DUPTABLE R31 K85 [{"Size", "LayoutOrder"}]
  GETTABLEKS R32 R1 K86 ["TitleSize"]
  SETTABLEKS R32 R31 K20 ["Size"]
  NAMECALL R32 R10 K78 ["getNextOrder"]
  CALL R32 1 1
  SETTABLEKS R32 R31 K7 ["LayoutOrder"]
  DUPTABLE R32 K88 [{"LinkText"}]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K31 ["createElement"]
  GETUPVAL R34 8
  DUPTABLE R35 K96 [{"OnClick", "HoverAreaSize", "Size", "Style", "Text", "TextTruncate", "TextWrapped", "TextXAlignment"}]
  GETTABLEKS R36 R0 K97 ["onNameClicked"]
  SETTABLEKS R36 R35 K89 ["OnClick"]
  GETTABLEKS R37 R1 K98 ["ForceLinkTextFullWidth"]
  JUMPIFNOT R37 [+8]
  GETIMPORT R36 K23 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 0
  LOADN R40 0
  CALL R36 4 1
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K90 ["HoverAreaSize"]
  GETIMPORT R36 K23 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 1
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K20 ["Size"]
  LOADK R36 K99 ["ToolboxItemRowTitle"]
  SETTABLEKS R36 R35 K91 ["Style"]
  SETTABLEKS R7 R35 K92 ["Text"]
  GETIMPORT R36 K101 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R36 R35 K93 ["TextTruncate"]
  LOADB R36 1
  SETTABLEKS R36 R35 K94 ["TextWrapped"]
  GETIMPORT R36 K102 [Enum.TextXAlignment.Left]
  SETTABLEKS R36 R35 K95 ["TextXAlignment"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K87 ["LinkText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K8 ["Name"]
  GETTABLEKS R29 R0 K103 ["renderColumns"]
  MOVE R30 R10
  CALL R29 1 -1
  CALL R27 -1 -1
  CALL R24 -1 1
  SETTABLEKS R24 R23 K50 ["Details"]
  JUMPIFNOT R8 [+34]
  GETTABLEKS R25 R1 K104 ["RenderExpandedContent"]
  JUMPIFNOT R25 [+31]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K31 ["createElement"]
  GETUPVAL R25 6
  DUPTABLE R26 K105 [{"AutomaticSize", "LayoutOrder", "Size"}]
  GETIMPORT R27 K107 [Enum.AutomaticSize.Y]
  SETTABLEKS R27 R26 K18 ["AutomaticSize"]
  NAMECALL R27 R10 K78 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K7 ["LayoutOrder"]
  GETIMPORT R27 K23 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K20 ["Size"]
  DUPTABLE R27 K109 [{"Content"}]
  GETTABLEKS R28 R1 K104 ["RenderExpandedContent"]
  CALL R28 0 1
  SETTABLEKS R28 R27 K108 ["Content"]
  CALL R24 3 1
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K51 ["ExpandedContents"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K32 ["Button"]
  CALL R16 3 -1
  RETURN R16 -1

PROTO_14:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_17:
  DUPTABLE R1 K3 [{"getCanManageAsset", "tryCreateContextMenu", "getPageInfoAnalyticsContextInfo"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getCanManageAsset"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["tryCreateContextMenu"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["getPageInfoAnalyticsContextInfo"]
  RETURN R1 1

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["Dash"]
  CALL R5 1 1
  GETTABLEKS R7 R4 K11 ["Wrappers"]
  GETTABLEKS R6 R7 K12 ["withAbsoluteSizeAndPosition"]
  GETTABLEKS R8 R0 K13 ["Core"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R7 K15 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R7 K16 ["LayoutOrderIterator"]
  CALL R9 1 1
  GETTABLEKS R10 R4 K17 ["ContextServices"]
  GETTABLEKS R11 R10 K18 ["withContext"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K13 ["Core"]
  GETTABLEKS R14 R15 K19 ["Components"]
  GETTABLEKS R13 R14 K20 ["AssetLogicWrapper"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K13 ["Core"]
  GETTABLEKS R15 R16 K19 ["Components"]
  GETTABLEKS R14 R15 K21 ["DraggableButton"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K13 ["Core"]
  GETTABLEKS R16 R17 K22 ["Thunks"]
  GETTABLEKS R15 R16 K23 ["TryCreateContextMenu"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R18 R0 K13 ["Core"]
  GETTABLEKS R17 R18 K22 ["Thunks"]
  GETTABLEKS R16 R17 K24 ["GetPageInfoAnalyticsContextInfo"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R20 R0 K13 ["Core"]
  GETTABLEKS R19 R20 K25 ["Networking"]
  GETTABLEKS R18 R19 K26 ["Requests"]
  GETTABLEKS R17 R18 K27 ["GetCanManageAssetRequest"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R19 R7 K28 ["Analytics"]
  GETTABLEKS R18 R19 K29 ["AssetAnalyticsContextItem"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K13 ["Core"]
  GETTABLEKS R20 R21 K17 ["ContextServices"]
  GETTABLEKS R19 R20 K30 ["Settings"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K13 ["Core"]
  GETTABLEKS R21 R22 K17 ["ContextServices"]
  GETTABLEKS R20 R21 K31 ["NetworkContext"]
  CALL R19 1 1
  GETTABLEKS R21 R4 K32 ["UI"]
  GETTABLEKS R20 R21 K33 ["LinkText"]
  GETTABLEKS R22 R4 K32 ["UI"]
  GETTABLEKS R21 R22 K34 ["Pane"]
  GETTABLEKS R23 R4 K32 ["UI"]
  GETTABLEKS R22 R23 K35 ["TextLabel"]
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K13 ["Core"]
  GETTABLEKS R25 R26 K36 ["Models"]
  GETTABLEKS R24 R25 K37 ["AssetInfo"]
  CALL R23 1 1
  GETIMPORT R24 K6 [require]
  GETTABLEKS R28 R0 K13 ["Core"]
  GETTABLEKS R27 R28 K14 ["Util"]
  GETTABLEKS R26 R27 K38 ["SharedFlags"]
  GETTABLEKS R25 R26 K39 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
  CALL R24 1 1
  GETIMPORT R25 K6 [require]
  GETTABLEKS R29 R0 K13 ["Core"]
  GETTABLEKS R28 R29 K14 ["Util"]
  GETTABLEKS R27 R28 K38 ["SharedFlags"]
  GETTABLEKS R26 R27 K40 ["getFFlagToolboxEnableAssetRows"]
  CALL R25 1 1
  GETTABLEKS R26 R2 K41 ["PureComponent"]
  LOADK R28 K42 ["ItemRow"]
  NAMECALL R26 R26 K43 ["extend"]
  CALL R26 2 1
  DUPTABLE R27 K45 [{"TextTruncate"}]
  GETIMPORT R28 K48 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R28 R27 K44 ["TextTruncate"]
  SETTABLEKS R27 R26 K49 ["defaultProps"]
  DUPCLOSURE R27 K50 [PROTO_10]
  CAPTURE VAL R24
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R22
  SETTABLEKS R27 R26 K51 ["init"]
  DUPCLOSURE R27 K52 [PROTO_11]
  SETTABLEKS R27 R26 K53 ["didMount"]
  DUPCLOSURE R27 K54 [PROTO_12]
  SETTABLEKS R27 R26 K55 ["didUpdate"]
  DUPCLOSURE R27 K56 [PROTO_13]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R25
  CAPTURE VAL R8
  CAPTURE VAL R24
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R13
  CAPTURE VAL R20
  SETTABLEKS R27 R26 K57 ["render"]
  MOVE R27 R11
  DUPTABLE R28 K63 [{"AssetAnalytics", "Localization", "Network", "Plugin", "Settings", "Stylizer"}]
  SETTABLEKS R17 R28 K58 ["AssetAnalytics"]
  GETTABLEKS R29 R10 K59 ["Localization"]
  SETTABLEKS R29 R28 K59 ["Localization"]
  SETTABLEKS R19 R28 K60 ["Network"]
  GETTABLEKS R29 R10 K61 ["Plugin"]
  SETTABLEKS R29 R28 K61 ["Plugin"]
  SETTABLEKS R18 R28 K30 ["Settings"]
  GETTABLEKS R29 R10 K62 ["Stylizer"]
  SETTABLEKS R29 R28 K62 ["Stylizer"]
  CALL R27 1 1
  MOVE R28 R26
  CALL R27 1 1
  MOVE R26 R27
  DUPCLOSURE R27 K64 [PROTO_17]
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R15
  GETTABLEKS R28 R3 K65 ["connect"]
  LOADNIL R29
  MOVE R30 R27
  CALL R28 2 1
  MOVE R29 R26
  CALL R28 1 1
  MOVE R26 R28
  MOVE R28 R6
  MOVE R29 R26
  CALL R28 1 1
  MOVE R26 R28
  NEWCLOSURE R28 P5
  CAPTURE VAL R2
  CAPTURE REF R26
  SETGLOBAL R28 K66 ["TypedItemRow"]
  DUPTABLE R28 K69 [{"Component", "Generator"}]
  SETTABLEKS R26 R28 K67 ["Component"]
  GETGLOBAL R29 K66 ["TypedItemRow"]
  SETTABLEKS R29 R28 K68 ["Generator"]
  CLOSEUPVALS R26
  RETURN R28 1

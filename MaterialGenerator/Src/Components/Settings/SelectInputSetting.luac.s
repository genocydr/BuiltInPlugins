PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnValueChanged"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R1 K1 ["OnValueChanged"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["itemActivated"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  LOADNIL R2
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+18]
  DUPTABLE R3 K4 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
  LOADN R4 16
  SETTABLEKS R4 R3 K1 ["HorizontalSpacing"]
  GETIMPORT R4 K7 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 30
  CALL R4 4 1
  SETTABLEKS R4 R3 K2 ["Size"]
  LOADN R4 30
  SETTABLEKS R4 R3 K3 ["ValueLabelWidth"]
  MOVE R2 R3
  JUMP [+4]
  GETTABLEKS R3 R1 K8 ["Stylizer"]
  GETTABLEKS R2 R3 K9 ["Setting"]
  GETTABLEKS R3 R2 K1 ["HorizontalSpacing"]
  GETTABLEKS R4 R1 K10 ["Disabled"]
  GETTABLEKS R5 R1 K11 ["Items"]
  GETTABLEKS R6 R1 K12 ["LabelWidth"]
  GETUPVAL R7 1
  GETTABLEKS R8 R1 K2 ["Size"]
  GETTABLEKS R9 R2 K2 ["Size"]
  CALL R7 2 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["Disabled"]
  JUMP [+1]
  LOADNIL R8
  GETTABLEKS R9 R1 K13 ["Value"]
  LOADNIL R10
  MOVE R11 R5
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  JUMPIFNOTEQ R15 R9 [+3]
  MOVE R10 R14
  JUMP [+2]
  FORGLOOP R11 2 [-5]
  ADD R11 R6 R3
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K20 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R15 K23 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K15 ["HorizontalAlignment"]
  GETIMPORT R15 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K16 ["Layout"]
  GETTABLEKS R15 R1 K17 ["LayoutOrder"]
  SETTABLEKS R15 R14 K17 ["LayoutOrder"]
  SETTABLEKS R7 R14 K2 ["Size"]
  SETTABLEKS R3 R14 K18 ["Spacing"]
  GETIMPORT R15 K28 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K19 ["VerticalAlignment"]
  DUPTABLE R15 K31 [{"Label", "SelectInput"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K35 [{"LayoutOrder", "Size", "StyleModifier", "Text", "TextXAlignment"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K17 ["LayoutOrder"]
  GETIMPORT R19 K7 [UDim2.new]
  LOADN R20 0
  MOVE R21 R6
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K2 ["Size"]
  SETTABLEKS R8 R18 K32 ["StyleModifier"]
  GETTABLEKS R19 R1 K33 ["Text"]
  SETTABLEKS R19 R18 K33 ["Text"]
  GETIMPORT R19 K36 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K34 ["TextXAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K29 ["Label"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K43 [{"Enabled", "ErrorText", "Icons", "Items", "LayoutOrder", "OnItemActivated", "PlaceholderText", "SelectedIndex", "Size"}]
  NOT R19 R4
  SETTABLEKS R19 R18 K37 ["Enabled"]
  GETTABLEKS R19 R1 K38 ["ErrorText"]
  SETTABLEKS R19 R18 K38 ["ErrorText"]
  GETTABLEKS R19 R1 K39 ["Icons"]
  SETTABLEKS R19 R18 K39 ["Icons"]
  GETTABLEKS R19 R1 K11 ["Items"]
  SETTABLEKS R19 R18 K11 ["Items"]
  LOADN R19 2
  SETTABLEKS R19 R18 K17 ["LayoutOrder"]
  GETTABLEKS R19 R0 K44 ["itemActivated"]
  SETTABLEKS R19 R18 K40 ["OnItemActivated"]
  GETTABLEKS R19 R1 K41 ["PlaceholderText"]
  SETTABLEKS R19 R18 K41 ["PlaceholderText"]
  SETTABLEKS R10 R18 K42 ["SelectedIndex"]
  GETIMPORT R19 K7 [UDim2.new]
  LOADN R20 1
  MINUS R21 R11
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K2 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["SelectInput"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R6 R1 K10 ["Style"]
  GETTABLEKS R5 R6 K11 ["Stylizer"]
  GETTABLEKS R6 R1 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Pane"]
  GETTABLEKS R8 R6 K14 ["SelectInput"]
  GETTABLEKS R9 R6 K15 ["TextLabel"]
  GETTABLEKS R10 R1 K16 ["Util"]
  GETTABLEKS R11 R10 K17 ["StyleModifier"]
  GETTABLEKS R12 R10 K18 ["prioritize"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K19 ["Src"]
  GETTABLEKS R15 R16 K20 ["Flags"]
  GETTABLEKS R14 R15 K21 ["getFFlagMaterialGeneratorNewUI"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K22 ["PureComponent"]
  LOADK R16 K23 ["SelectInputSetting"]
  NAMECALL R14 R14 K24 ["extend"]
  CALL R14 2 1
  DUPTABLE R15 K26 [{"Disabled"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K25 ["Disabled"]
  SETTABLEKS R15 R14 K27 ["defaultProps"]
  DUPCLOSURE R15 K28 [PROTO_1]
  SETTABLEKS R15 R14 K29 ["init"]
  DUPCLOSURE R15 K30 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K31 ["render"]
  MOVE R15 R4
  DUPTABLE R16 K32 [{"Stylizer"}]
  SETTABLEKS R5 R16 K11 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 -1
  RETURN R15 -1

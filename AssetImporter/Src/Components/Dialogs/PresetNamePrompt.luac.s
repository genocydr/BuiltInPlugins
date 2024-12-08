PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"currentText"}]
  SETTABLEKS R0 R3 K0 ["currentText"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnButtonPressed"]
  MOVE R2 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["state"]
  GETTABLEKS R3 R4 K3 ["currentText"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K2 [{"currentText", "title"}]
  NAMECALL R2 R0 K3 ["_getInitialPresetName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["currentText"]
  LOADK R2 K4 [""]
  SETTABLEKS R2 R1 K1 ["title"]
  SETTABLEKS R1 R0 K5 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onTextChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onButtonPressed"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Intent"]
  JUMPIFNOTEQKS R2 K2 ["Rename"] [+4]
  GETTABLEKS R2 R1 K3 ["CurrentPreset"]
  RETURN R2 1
  GETTABLEKS R2 R1 K4 ["PresetController"]
  NAMECALL R2 R2 K5 ["getAllPresets"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K6 ["Localization"]
  LOADK R5 K7 ["Templates"]
  LOADK R6 K8 ["NewPreset"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 3 1
  GETTABLE R4 R2 R3
  JUMPIFNOTEQKNIL R4 [+2]
  RETURN R3 1
  LOADN R6 1
  GETUPVAL R7 0
  CALL R7 0 1
  ADDK R4 R7 K10 [1]
  LOADN R5 1
  FORNPREP R4
  LOADK R8 K11 ["%* %*"]
  MOVE R10 R3
  MOVE R11 R6
  NAMECALL R8 R8 K12 ["format"]
  CALL R8 3 1
  MOVE R7 R8
  GETTABLE R8 R2 R7
  JUMPIFNOTEQKNIL R8 [+2]
  RETURN R7 1
  FORNLOOP R4
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["PresetController"]
  GETTABLEKS R5 R1 K3 ["Stylizer"]
  GETTABLEKS R4 R5 K4 ["PresetNamePrompt"]
  GETTABLEKS R9 R4 K5 ["LabelSize"]
  GETTABLEKS R8 R9 K6 ["X"]
  GETTABLEKS R7 R8 K7 ["Offset"]
  GETTABLEKS R10 R4 K8 ["TextboxSize"]
  GETTABLEKS R9 R10 K6 ["X"]
  GETTABLEKS R8 R9 K7 ["Offset"]
  ADD R6 R7 R8
  GETTABLEKS R7 R4 K9 ["Padding"]
  ADD R5 R6 R7
  GETTABLEKS R7 R0 K10 ["state"]
  GETTABLEKS R6 R7 K11 ["currentText"]
  NAMECALL R7 R3 K12 ["getNumPresetsRemaining"]
  CALL R7 1 1
  GETTABLEKS R9 R1 K13 ["Intent"]
  JUMPIFEQKS R9 K14 ["Create"] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  LOADN R10 0
  JUMPIFLE R7 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  MOVE R12 R6
  NAMECALL R10 R3 K15 ["isLastImport"]
  CALL R10 2 1
  JUMPIF R10 [+4]
  MOVE R12 R6
  NAMECALL R10 R3 K16 ["isStudioDefault"]
  CALL R10 2 1
  LOADB R11 0
  NAMECALL R13 R3 K17 ["getAllPresets"]
  CALL R13 1 1
  GETTABLE R12 R13 R6
  JUMPIFEQKNIL R12 [+9]
  MOVE R11 R8
  JUMPIF R11 [+6]
  GETTABLEKS R12 R1 K18 ["CurrentPreset"]
  JUMPIFNOTEQ R6 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  LOADK R12 K19 [""]
  LOADB R13 0
  LOADB R14 0
  JUMPIFNOT R10 [+8]
  LOADK R17 K20 ["Templates"]
  LOADK R18 K21 ["OverwritingReservedName"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  MOVE R12 R15
  LOADB R13 1
  JUMP [+34]
  JUMPIFNOT R11 [+8]
  LOADK R17 K20 ["Templates"]
  LOADK R18 K23 ["PresetNameOverwriteWarning"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  MOVE R12 R15
  LOADB R14 1
  JUMP [+25]
  JUMPIFNOT R9 [+9]
  JUMPIFNOT R8 [+8]
  LOADK R17 K20 ["Templates"]
  LOADK R18 K24 ["TooManyPresets"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 3 1
  MOVE R12 R15
  LOADB R13 1
  JUMP [+15]
  JUMPIFNOT R8 [+14]
  LOADK R17 K20 ["Templates"]
  LOADK R18 K25 ["PresetsRemaining1"]
  DUPTABLE R19 K27 [{"presetsRemaining"}]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R21 R7
  GETIMPORT R20 K29 [tostring]
  CALL R20 1 1
  SETTABLEKS R20 R19 K26 ["presetsRemaining"]
  NAMECALL R15 R2 K22 ["getText"]
  CALL R15 4 1
  MOVE R12 R15
  LOADNIL R15
  JUMPIFNOT R13 [+2]
  LOADK R15 K30 ["Error"]
  JUMP [+2]
  JUMPIFNOT R14 [+1]
  LOADK R15 K31 ["Warning"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K32 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K41 [{"AutomaticSize", "Size", "Text", "Style", "LayoutOrder", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R19 K44 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K33 ["AutomaticSize"]
  GETIMPORT R19 K47 [UDim2.new]
  LOADN R20 0
  MOVE R21 R5
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K34 ["Size"]
  SETTABLEKS R12 R18 K35 ["Text"]
  SETTABLEKS R15 R18 K36 ["Style"]
  LOADN R19 2
  SETTABLEKS R19 R18 K37 ["LayoutOrder"]
  LOADB R19 1
  SETTABLEKS R19 R18 K38 ["TextWrapped"]
  GETIMPORT R19 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K39 ["TextXAlignment"]
  GETIMPORT R19 K51 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K40 ["TextYAlignment"]
  CALL R16 2 -1
  RETURN R16 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["PresetController"]
  GETTABLEKS R5 R1 K3 ["Stylizer"]
  GETTABLEKS R4 R5 K4 ["PresetNamePrompt"]
  GETTABLEKS R5 R4 K5 ["RenameMinContentSize"]
  GETTABLEKS R6 R1 K6 ["Intent"]
  JUMPIFNOTEQKS R6 K7 ["Create"] [+7]
  LOADK R9 K8 ["Templates"]
  LOADK R10 K9 ["WindowTitleNewPreset"]
  NAMECALL R7 R2 K10 ["getText"]
  CALL R7 3 1
  JUMP [+9]
  JUMPIFNOTEQKS R6 K11 ["Rename"] [+7]
  LOADK R9 K8 ["Templates"]
  LOADK R10 K12 ["WindowTitleRenamePreset"]
  NAMECALL R7 R2 K10 ["getText"]
  CALL R7 3 1
  JUMP [+1]
  LOADNIL R7
  GETTABLEKS R9 R0 K13 ["state"]
  GETTABLEKS R8 R9 K14 ["currentText"]
  NAMECALL R9 R3 K15 ["getNumPresetsRemaining"]
  CALL R9 1 1
  LOADN R11 0
  JUMPIFLE R9 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  NAMECALL R13 R3 K16 ["getAllPresets"]
  CALL R13 1 1
  GETTABLE R12 R13 R8
  JUMPIFNOTEQKNIL R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  LOADB R12 0
  JUMPIFNOTEQKS R6 K7 ["Create"] [+2]
  MOVE R12 R10
  JUMPIFNOTEQKS R6 K7 ["Create"] [+4]
  JUMPIFNOT R10 [+2]
  JUMPIFNOT R11 [+1]
  LOADB R12 0
  MOVE R15 R8
  NAMECALL R13 R3 K17 ["isLastImport"]
  CALL R13 2 1
  JUMPIF R13 [+5]
  MOVE R15 R8
  NAMECALL R13 R3 K18 ["isStudioDefault"]
  CALL R13 2 1
  JUMPIFNOT R13 [+1]
  LOADB R12 1
  GETIMPORT R13 K21 [utf8.len]
  MOVE R14 R8
  CALL R13 1 1
  GETUPVAL R14 0
  CALL R14 0 1
  JUMPIFLT R14 R13 [+8]
  GETIMPORT R13 K21 [utf8.len]
  MOVE R14 R8
  CALL R13 1 1
  LOADN R14 1
  JUMPIFNOTLT R13 R14 [+2]
  LOADB R12 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K22 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K30 [{"Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose", "ButtonHorizontalAlignment", "Modal"}]
  SETTABLEKS R7 R15 K23 ["Title"]
  SETTABLEKS R5 R15 K24 ["MinContentSize"]
  NEWTABLE R16 0 2
  DUPTABLE R17 K33 [{"Key", "Text"}]
  LOADK R18 K34 ["Cancel"]
  SETTABLEKS R18 R17 K31 ["Key"]
  LOADK R20 K35 ["Plugin"]
  LOADK R21 K34 ["Cancel"]
  NAMECALL R18 R2 K10 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K32 ["Text"]
  DUPTABLE R18 K37 [{"Key", "Text", "StyleModifier"}]
  LOADK R19 K38 ["Save"]
  SETTABLEKS R19 R18 K31 ["Key"]
  LOADK R21 K35 ["Plugin"]
  LOADK R22 K38 ["Save"]
  NAMECALL R19 R2 K10 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K32 ["Text"]
  JUMPIFNOT R12 [+4]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K39 ["Disabled"]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K36 ["StyleModifier"]
  SETLIST R16 R17 2 [1]
  SETTABLEKS R16 R15 K25 ["Buttons"]
  GETTABLEKS R16 R0 K40 ["onButtonPressed"]
  SETTABLEKS R16 R15 K26 ["OnButtonPressed"]
  GETTABLEKS R16 R1 K27 ["OnClose"]
  SETTABLEKS R16 R15 K27 ["OnClose"]
  GETIMPORT R16 K44 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K28 ["ButtonHorizontalAlignment"]
  GETUPVAL R17 4
  CALL R17 0 1
  NOT R16 R17
  SETTABLEKS R16 R15 K29 ["Modal"]
  DUPTABLE R16 K46 [{"Pane"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K22 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K51 [{"Layout", "VerticalAlignment", "Spacing", "Size"}]
  GETIMPORT R20 K54 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K47 ["Layout"]
  GETIMPORT R20 K56 [Enum.VerticalAlignment.Top]
  SETTABLEKS R20 R19 K48 ["VerticalAlignment"]
  GETTABLEKS R20 R4 K57 ["Padding"]
  SETTABLEKS R20 R19 K49 ["Spacing"]
  GETIMPORT R20 K60 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K50 ["Size"]
  DUPTABLE R20 K63 [{"TextBox", "Message"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K22 ["createElement"]
  GETUPVAL R22 5
  DUPTABLE R23 K66 [{"AutomaticSize", "Layout", "VerticalAlignment", "Size", "LayoutOrder", "Spacing"}]
  GETIMPORT R24 K68 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K64 ["AutomaticSize"]
  GETIMPORT R24 K70 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K47 ["Layout"]
  GETIMPORT R24 K56 [Enum.VerticalAlignment.Top]
  SETTABLEKS R24 R23 K48 ["VerticalAlignment"]
  GETTABLEKS R24 R4 K71 ["TextboxSize"]
  SETTABLEKS R24 R23 K50 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K65 ["LayoutOrder"]
  GETTABLEKS R24 R4 K57 ["Padding"]
  SETTABLEKS R24 R23 K49 ["Spacing"]
  DUPTABLE R24 K74 [{"Label", "Input"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K22 ["createElement"]
  GETUPVAL R26 6
  DUPTABLE R27 K76 [{"Text", "TextXAlignment", "Size", "LayoutOrder"}]
  GETTABLEKS R29 R0 K0 ["props"]
  GETTABLEKS R28 R29 K1 ["Localization"]
  LOADK R30 K77 ["Properties"]
  LOADK R31 K78 ["ImportName"]
  NAMECALL R28 R28 K10 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K32 ["Text"]
  GETIMPORT R28 K80 [Enum.TextXAlignment.Left]
  SETTABLEKS R28 R27 K75 ["TextXAlignment"]
  GETTABLEKS R28 R4 K81 ["LabelSize"]
  SETTABLEKS R28 R27 K50 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K65 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K72 ["Label"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K22 ["createElement"]
  GETUPVAL R26 7
  DUPTABLE R27 K84 [{"Text", "MaxLength", "LayoutOrder", "OnTextChanged", "Size"}]
  GETTABLEKS R29 R0 K13 ["state"]
  GETTABLEKS R28 R29 K14 ["currentText"]
  SETTABLEKS R28 R27 K32 ["Text"]
  GETUPVAL R28 0
  CALL R28 0 1
  SETTABLEKS R28 R27 K82 ["MaxLength"]
  LOADN R28 2
  SETTABLEKS R28 R27 K65 ["LayoutOrder"]
  GETTABLEKS R28 R0 K85 ["onTextChanged"]
  SETTABLEKS R28 R27 K83 ["OnTextChanged"]
  GETTABLEKS R28 R4 K71 ["TextboxSize"]
  SETTABLEKS R28 R27 K50 ["Size"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K73 ["Input"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K61 ["TextBox"]
  NAMECALL R21 R0 K86 ["_createMessage"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K62 ["Message"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K45 ["Pane"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
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
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R3 K11 ["Stylizer"]
  GETTABLEKS R6 R3 K12 ["Localization"]
  GETTABLEKS R7 R1 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Pane"]
  GETTABLEKS R9 R7 K15 ["TextInput"]
  GETTABLEKS R10 R7 K16 ["StyledDialog"]
  GETTABLEKS R11 R7 K17 ["TextLabel"]
  GETTABLEKS R13 R1 K18 ["Util"]
  GETTABLEKS R12 R13 K19 ["StyleModifier"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Controllers"]
  GETTABLEKS R14 R15 K22 ["PresetController"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K23 ["Flags"]
  GETTABLEKS R15 R16 K24 ["getFIntAssetImportMaxPresetNameLength"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K23 ["Flags"]
  GETTABLEKS R16 R17 K25 ["getFIntAssetImportMaxPresetCount"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K23 ["Flags"]
  GETTABLEKS R17 R18 K26 ["getFFlagDebugAssetImportPlugin"]
  CALL R16 1 1
  GETTABLEKS R17 R2 K27 ["PureComponent"]
  LOADK R19 K28 ["PresetNamePrompt"]
  NAMECALL R17 R17 K29 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K30 [PROTO_2]
  SETTABLEKS R18 R17 K31 ["init"]
  DUPCLOSURE R18 K32 [PROTO_3]
  CAPTURE VAL R15
  SETTABLEKS R18 R17 K33 ["_getInitialPresetName"]
  DUPCLOSURE R18 K34 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R11
  SETTABLEKS R18 R17 K35 ["_createMessage"]
  DUPCLOSURE R18 K36 [PROTO_5]
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R9
  SETTABLEKS R18 R17 K37 ["render"]
  MOVE R18 R4
  DUPTABLE R19 K38 [{"Stylizer", "Localization", "PresetController"}]
  SETTABLEKS R5 R19 K11 ["Stylizer"]
  SETTABLEKS R6 R19 K12 ["Localization"]
  SETTABLEKS R13 R19 K22 ["PresetController"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  RETURN R17 1
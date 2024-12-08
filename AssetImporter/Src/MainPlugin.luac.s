PROTO_0:
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 1
  MOVE R8 R1
  LOADK R9 K0 ["Callouts"]
  GETTABLEKS R10 R6 K1 ["Title"]
  CALL R7 3 1
  GETUPVAL R8 1
  MOVE R9 R1
  LOADK R10 K0 ["Callouts"]
  GETTABLEKS R11 R6 K2 ["Description"]
  CALL R8 3 1
  JUMPIFNOT R7 [+9]
  JUMPIFNOT R8 [+8]
  MOVE R11 R5
  MOVE R12 R7
  MOVE R13 R8
  GETTABLEKS R14 R6 K3 ["Link"]
  NAMECALL R9 R0 K4 ["defineCallout"]
  CALL R9 5 0
  FORGLOOP R2 2 [-23]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["FileController"]
  NAMECALL R0 R0 K2 ["onPluginButtonClicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R1 K0 ["PluginLoaderContextItem"]
  GETTABLEKS R2 R3 K1 ["mainButtonClickedSignal"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K2 ["Connect"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Store"]
  NAMECALL R3 R3 K2 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["showPreview"]
  GETTABLEKS R4 R1 K4 ["PluginLoaderContextItem"]
  GETTABLEKS R3 R4 K5 ["mainButton"]
  MOVE R5 R2
  NAMECALL R3 R3 K6 ["SetActive"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  NEWTABLE R3 0 10
  GETTABLEKS R4 R1 K2 ["Plugin"]
  GETTABLEKS R5 R1 K3 ["Mouse"]
  GETTABLEKS R6 R1 K4 ["Store"]
  GETTABLEKS R7 R1 K5 ["Theme"]
  MOVE R8 R2
  GETTABLEKS R9 R1 K6 ["Analytics"]
  GETTABLEKS R10 R1 K7 ["CalloutController"]
  GETTABLEKS R11 R1 K8 ["PresetController"]
  GETTABLEKS R12 R1 K9 ["FileController"]
  GETTABLEKS R13 R1 K10 ["QueueController"]
  SETLIST R3 R4 10 [1]
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K7 ["CalloutController"]
  MOVE R6 R2
  CALL R4 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["provide"]
  MOVE R5 R3
  DUPTABLE R6 K17 [{"ImportQueue", "Preview", "UploadWidget", "ErrorWidget", "ParseWidget"}]
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+14]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K18 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K20 [{"Title"}]
  LOADK R12 K12 ["ImportQueue"]
  LOADK R13 K21 ["WindowTitle"]
  NAMECALL R10 R2 K22 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["Title"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K12 ["ImportQueue"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K18 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K20 [{"Title"}]
  LOADK R12 K2 ["Plugin"]
  LOADK R13 K21 ["WindowTitle"]
  NAMECALL R10 R2 K22 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["Title"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Preview"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K18 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K20 [{"Title"}]
  LOADK R12 K23 ["Upload"]
  LOADK R13 K21 ["WindowTitle"]
  NAMECALL R10 R2 K22 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["Title"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["UploadWidget"]
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIF R8 [+14]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K18 ["createElement"]
  GETUPVAL R8 7
  DUPTABLE R9 K20 [{"Title"}]
  LOADK R12 K24 ["Error"]
  LOADK R13 K21 ["WindowTitle"]
  NAMECALL R10 R2 K22 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["Title"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K15 ["ErrorWidget"]
  GETUPVAL R8 8
  CALL R8 0 1
  JUMPIFNOT R8 [+14]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K18 ["createElement"]
  GETUPVAL R8 9
  DUPTABLE R9 K20 [{"Title"}]
  LOADK R12 K25 ["Parse"]
  LOADK R13 K21 ["WindowTitle"]
  NAMECALL R10 R2 K22 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["Title"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K16 ["ParseWidget"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Components"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R4 K11 ["Dialogs"]
  GETTABLEKS R6 R7 K12 ["MeshImportDialog"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R4 K11 ["Dialogs"]
  GETTABLEKS R7 R8 K13 ["UploadWidget"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R4 K11 ["Dialogs"]
  GETTABLEKS R8 R9 K14 ["ErrorWidget"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R4 K11 ["Dialogs"]
  GETTABLEKS R9 R10 K15 ["ImportQueue"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R4 K11 ["Dialogs"]
  GETTABLEKS R10 R11 K16 ["ParseWidget"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K17 ["Resources"]
  GETTABLEKS R11 R12 K18 ["CalloutList"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K19 ["Utility"]
  GETTABLEKS R12 R13 K20 ["GetLocalizedString"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K21 ["Flags"]
  GETTABLEKS R13 R14 K22 ["getFFlagAssetImportEnableImportQueueModal"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K21 ["Flags"]
  GETTABLEKS R14 R15 K23 ["getFFlagAssetImportParseDialog"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K24 ["PureComponent"]
  LOADK R16 K25 ["MainPlugin"]
  NAMECALL R14 R14 K26 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K27 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R11
  DUPCLOSURE R16 K28 [PROTO_2]
  SETTABLEKS R16 R14 K29 ["init"]
  DUPCLOSURE R16 K30 [PROTO_3]
  SETTABLEKS R16 R14 K31 ["didUpdate"]
  DUPCLOSURE R16 K32 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R9
  SETTABLEKS R16 R14 K33 ["render"]
  RETURN R14 1
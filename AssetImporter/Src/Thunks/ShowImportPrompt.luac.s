PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+149]
  GETUPVAL R3 1
  LOADB R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  NEWTABLE R1 0 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 3
  NAMECALL R2 R2 K1 ["PickMultipleFilesWithPrompt"]
  CALL R2 1 1
  MOVE R1 R2
  JUMP [+14]
  GETUPVAL R2 3
  NAMECALL R2 R2 K2 ["PickMeshFileWithPrompt"]
  CALL R2 1 1
  JUMPIFNOT R2 [+9]
  JUMPIFEQKS R2 K3 [""] [+8]
  FASTCALL2 TABLE_INSERT R1 R2 [+5]
  MOVE R4 R1
  MOVE R5 R2
  GETIMPORT R3 K6 [table.insert]
  CALL R3 2 0
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K7 [0] [+11]
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R4 1
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R4 5
  LOADN R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 6
  LENGTH R5 R1
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 7
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIF R2 [+6]
  GETUPVAL R4 8
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADNIL R7
  GETUPVAL R8 9
  CALL R8 0 1
  JUMPIFNOT R8 [+7]
  GETUPVAL R8 3
  MOVE R10 R6
  NAMECALL R8 R8 K8 ["StartSessionWithPathAsync"]
  CALL R8 2 1
  MOVE R7 R8
  JUMP [+6]
  GETUPVAL R8 3
  MOVE R10 R6
  NAMECALL R8 R8 K9 ["StartSessionWithPath"]
  CALL R8 2 1
  MOVE R7 R8
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIF R8 [+12]
  JUMPIFNOT R7 [+5]
  NAMECALL R8 R7 K10 ["GetImportTree"]
  CALL R8 1 1
  JUMPIFNOTEQKNIL R8 [+7]
  GETUPVAL R10 10
  LOADB R11 1
  CALL R10 1 -1
  NAMECALL R8 R0 K0 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 11
  MOVE R11 R6
  MOVE R12 R7
  CALL R10 2 -1
  NAMECALL R8 R0 K0 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 5
  MOVE R11 R5
  CALL R10 1 -1
  NAMECALL R8 R0 K0 ["dispatch"]
  CALL R8 -1 0
  FORGLOOP R2 2 [-46]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIF R2 [+6]
  GETUPVAL R4 8
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 7
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 1
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 4
  JUMPIFNOT R2 [+150]
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  LOADNIL R1
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R4 9
  CALL R4 0 1
  JUMPIFNOT R4 [+45]
  GETUPVAL R4 3
  NAMECALL R4 R4 K2 ["PickMeshFileWithPrompt"]
  CALL R4 1 1
  MOVE R3 R4
  GETUPVAL R4 12
  CALL R4 0 1
  JUMPIFNOT R4 [+22]
  JUMPIFNOT R3 [+21]
  JUMPIFEQKS R3 K3 [""] [+20]
  GETUPVAL R6 8
  LOADB R7 1
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 3
  MOVE R6 R3
  NAMECALL R4 R4 K8 ["StartSessionWithPathAsync"]
  CALL R4 2 1
  MOVE R1 R4
  GETUPVAL R6 8
  LOADB R7 0
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  JUMP [+9]
  JUMPIFNOT R3 [+8]
  JUMPIFEQKS R3 K3 [""] [+7]
  GETUPVAL R4 3
  MOVE R6 R3
  NAMECALL R4 R4 K8 ["StartSessionWithPathAsync"]
  CALL R4 2 1
  MOVE R1 R4
  JUMPIFNOT R1 [+19]
  NAMECALL R4 R1 K10 ["GetImportTree"]
  CALL R4 1 1
  MOVE R2 R4
  JUMP [+14]
  GETUPVAL R4 3
  NAMECALL R4 R4 K11 ["StartSessionWithPrompt"]
  CALL R4 1 1
  MOVE R1 R4
  JUMPIFNOT R1 [+8]
  NAMECALL R4 R1 K10 ["GetImportTree"]
  CALL R4 1 1
  MOVE R2 R4
  NAMECALL R4 R1 K12 ["GetFilename"]
  CALL R4 1 1
  MOVE R3 R4
  JUMPIFNOT R2 [+57]
  JUMPIFNOT R3 [+56]
  NAMECALL R4 R2 K13 ["GetPreview"]
  CALL R4 1 1
  NEWTABLE R5 0 0
  NAMECALL R6 R2 K14 ["GetDescendants"]
  CALL R6 1 3
  FORGPREP R6
  GETTABLEKS R11 R10 K15 ["ShouldImport"]
  SETTABLE R11 R5 R10
  FORGLOOP R6 2 [-4]
  LOADB R6 1
  SETTABLE R6 R5 R2
  GETUPVAL R8 13
  CALL R8 0 -1
  NAMECALL R6 R0 K0 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 14
  MOVE R9 R4
  CALL R8 1 -1
  NAMECALL R6 R0 K0 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 15
  MOVE R9 R2
  CALL R8 1 -1
  NAMECALL R6 R0 K0 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 16
  MOVE R9 R3
  CALL R8 1 -1
  NAMECALL R6 R0 K0 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 17
  MOVE R9 R2
  CALL R8 1 -1
  NAMECALL R6 R0 K0 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 18
  MOVE R9 R5
  CALL R8 1 -1
  NAMECALL R6 R0 K0 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 19
  CALL R8 0 -1
  NAMECALL R6 R0 K0 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R6 20
  MOVE R7 R1
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 4
  JUMPIFNOT R4 [+15]
  LOADB R4 0
  JUMPIFEQKNIL R2 [+5]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFEQKNIL R1 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R6 4
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AssetImportService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AssetImporter"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R3 R1 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Actions"]
  GETIMPORT R3 K11 [require]
  GETTABLEKS R4 R2 K12 ["ResetState"]
  CALL R3 1 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R5 R2 K13 ["SetAssetImportSession"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R6 R2 K14 ["SetFilename"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R7 R2 K15 ["SetImportTree"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R8 R2 K16 ["SetParsing"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R9 R2 K17 ["SetProgress"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R10 R2 K18 ["SetProgressGoal"]
  CALL R9 1 1
  GETIMPORT R10 K11 [require]
  GETTABLEKS R11 R2 K19 ["SetSelectedImportItem"]
  CALL R10 1 1
  GETIMPORT R11 K11 [require]
  GETTABLEKS R12 R2 K20 ["SetShowProgress"]
  CALL R11 1 1
  GETIMPORT R12 K11 [require]
  GETTABLEKS R13 R2 K21 ["SetShowParsingWidget"]
  CALL R12 1 1
  GETIMPORT R13 K11 [require]
  GETTABLEKS R14 R2 K22 ["SetShowError"]
  CALL R13 1 1
  GETTABLEKS R15 R1 K8 ["Src"]
  GETTABLEKS R14 R15 K23 ["Thunks"]
  GETIMPORT R15 K11 [require]
  GETTABLEKS R16 R14 K24 ["CreateQueuedSession"]
  CALL R15 1 1
  GETIMPORT R16 K11 [require]
  GETTABLEKS R17 R14 K25 ["LoadManagedGroups"]
  CALL R16 1 1
  GETIMPORT R17 K11 [require]
  GETTABLEKS R18 R14 K26 ["UpdateChecked"]
  CALL R17 1 1
  GETIMPORT R18 K11 [require]
  GETTABLEKS R19 R14 K27 ["UpdatePreviewInstance"]
  CALL R18 1 1
  GETIMPORT R19 K11 [require]
  GETTABLEKS R22 R1 K8 ["Src"]
  GETTABLEKS R21 R22 K28 ["Flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagAssetImportQueuedSessionRefactor"]
  CALL R19 1 1
  GETIMPORT R20 K11 [require]
  GETTABLEKS R23 R1 K8 ["Src"]
  GETTABLEKS R22 R23 K28 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagAssetImportEnableImportQueueModal"]
  CALL R20 1 1
  GETIMPORT R21 K11 [require]
  GETTABLEKS R24 R1 K8 ["Src"]
  GETTABLEKS R23 R24 K28 ["Flags"]
  GETTABLEKS R22 R23 K31 ["getFFlagAssetImportStartSessionAsync"]
  CALL R21 1 1
  GETIMPORT R22 K11 [require]
  GETTABLEKS R25 R1 K8 ["Src"]
  GETTABLEKS R24 R25 K28 ["Flags"]
  GETTABLEKS R23 R24 K32 ["getFFlagAssetImportParseDialog"]
  CALL R22 1 1
  DUPCLOSURE R23 K33 [PROTO_1]
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R21
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R22
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R4
  RETURN R23 1

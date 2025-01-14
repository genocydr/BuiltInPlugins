PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"currentPreset"}]
  GETTABLEKS R5 R1 K0 ["currentPreset"]
  SETTABLEKS R5 R4 K0 ["currentPreset"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"activeQueueItem"}]
  GETTABLEKS R5 R1 K0 ["activeQueueItem"]
  SETTABLEKS R5 R4 K0 ["activeQueueItem"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"assetImportSession"}]
  GETTABLEKS R5 R1 K0 ["assetImportSession"]
  SETTABLEKS R5 R4 K0 ["assetImportSession"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"importTree", "importDataExpansion"}]
  GETTABLEKS R5 R1 K0 ["importTree"]
  SETTABLEKS R5 R4 K0 ["importTree"]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K1 ["importDataExpansion"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K0 ["importTree"]
  LOADB R9 1
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["importDataExpansion"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"filename"}]
  GETTABLEKS R5 R1 K0 ["filename"]
  SETTABLEKS R5 R4 K0 ["filename"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"hasInvalidPackageId"}]
  GETTABLEKS R5 R1 K0 ["hasInvalidPackageId"]
  SETTABLEKS R5 R4 K0 ["hasInvalidPackageId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"previewInstance"}]
  GETTABLEKS R5 R1 K0 ["previewInstance"]
  SETTABLEKS R5 R4 K0 ["previewInstance"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"managedGroups"}]
  GETTABLEKS R5 R1 K0 ["managedGroups"]
  SETTABLEKS R5 R4 K0 ["managedGroups"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"selectedImportItem"}]
  GETTABLEKS R5 R1 K0 ["selectedImportItem"]
  SETTABLEKS R5 R4 K0 ["selectedImportItem"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R1 K2 ["checked"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  LOADK R9 K3 ["BaseImportData"]
  NAMECALL R7 R5 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+13]
  JUMPIFNOTEQKB R6 FALSE [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R5 K5 ["ShouldImport"]
  JUMP [+6]
  JUMPIFNOTEQKB R6 FALSE [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R5 K5 ["ShouldImport"]
  FORGLOOP R2 2 [-22]
  GETUPVAL R2 1
  MOVE R3 R0
  DUPTABLE R4 K7 [{"importDataChecked"}]
  GETUPVAL R5 1
  GETTABLEKS R6 R0 K6 ["importDataChecked"]
  GETTABLEKS R7 R1 K2 ["checked"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["importDataChecked"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"importDataCheckedCount"}]
  GETTABLEKS R5 R1 K2 ["count"]
  SETTABLEKS R5 R4 K0 ["importDataCheckedCount"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"importDataExpansion"}]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["importDataExpansion"]
  GETTABLEKS R7 R1 K2 ["expansion"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["importDataExpansion"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"errorNodeChecked"}]
  GETTABLEKS R5 R1 K2 ["isErrorChecked"]
  SETTABLEKS R5 R4 K0 ["errorNodeChecked"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"settingsChanged"}]
  GETTABLEKS R5 R1 K0 ["settingsChanged"]
  SETTABLEKS R5 R4 K0 ["settingsChanged"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETIMPORT R0 K2 [table.clone]
  GETUPVAL R1 1
  CALL R0 1 1
  RETURN R0 1
  GETUPVAL R0 2
  NEWTABLE R1 0 0
  GETUPVAL R2 1
  CALL R0 2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["join"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K12 ["DataTypes"]
  GETTABLEKS R6 R7 K13 ["QueuedSession"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K14 ["Actions"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["ResetState"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K16 ["SetActiveQueueItem"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K17 ["SetAssetImportSession"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R6 K18 ["SetCheckedCount"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R6 K19 ["SetCurrentPreset"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R6 K20 ["SetErrorNodeChecked"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R6 K21 ["SetFilename"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R6 K22 ["SetHasInvalidPackageId"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R6 K23 ["SetImportTree"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R6 K24 ["SetManagedGroups"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R6 K25 ["SetPreviewInstance"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R6 K26 ["SetSelectedImportItem"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R6 K27 ["SetSettingsChanged"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R6 K28 ["SetTreeChecked"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R6 K29 ["SetTreeExpansion"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K10 ["Src"]
  GETTABLEKS R24 R25 K30 ["Flags"]
  GETTABLEKS R23 R24 K31 ["getFFlagAssetImportQueuedSessionRefactor"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K10 ["Src"]
  GETTABLEKS R25 R26 K30 ["Flags"]
  GETTABLEKS R24 R25 K32 ["getFFlagAssetImportUploadWidgetCleanup"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K10 ["Src"]
  GETTABLEKS R26 R27 K30 ["Flags"]
  GETTABLEKS R25 R26 K33 ["getFFlagImportQueueFixGroupFetch"]
  CALL R24 1 1
  DUPTABLE R25 K48 [{"activeQueueItem", "assetImportSession", "currentPreset", "errorNodeChecked", "filename", "hasInvalidPackageId", "importDataChecked", "importDataCheckedCount", "importDataExpansion", "importTree", "managedGroups", "previewInstance", "selectedImportItem", "settingsChanged"}]
  MOVE R27 R22
  CALL R27 0 1
  JUMPIFNOT R27 [+4]
  GETTABLEKS R26 R5 K49 ["new"]
  CALL R26 0 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K34 ["activeQueueItem"]
  LOADNIL R26
  SETTABLEKS R26 R25 K35 ["assetImportSession"]
  MOVE R27 R22
  CALL R27 0 1
  JUMPIFNOT R27 [+2]
  LOADNIL R26
  JUMP [+1]
  LOADK R26 K50 [""]
  SETTABLEKS R26 R25 K36 ["currentPreset"]
  LOADB R26 0
  SETTABLEKS R26 R25 K37 ["errorNodeChecked"]
  LOADK R26 K50 [""]
  SETTABLEKS R26 R25 K38 ["filename"]
  LOADB R26 0
  SETTABLEKS R26 R25 K39 ["hasInvalidPackageId"]
  NEWTABLE R26 0 0
  SETTABLEKS R26 R25 K40 ["importDataChecked"]
  LOADN R26 255
  SETTABLEKS R26 R25 K41 ["importDataCheckedCount"]
  NEWTABLE R26 0 0
  SETTABLEKS R26 R25 K42 ["importDataExpansion"]
  LOADNIL R26
  SETTABLEKS R26 R25 K43 ["importTree"]
  NEWTABLE R26 0 0
  SETTABLEKS R26 R25 K44 ["managedGroups"]
  LOADNIL R26
  SETTABLEKS R26 R25 K45 ["previewInstance"]
  LOADNIL R26
  SETTABLEKS R26 R25 K46 ["selectedImportItem"]
  MOVE R27 R23
  CALL R27 0 1
  JUMPIF R27 [+2]
  LOADB R26 0
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K47 ["settingsChanged"]
  DUPCLOSURE R26 K51 [PROTO_0]
  CAPTURE VAL R3
  GETTABLEKS R27 R1 K52 ["createReducer"]
  MOVE R28 R25
  NEWTABLE R29 16 0
  GETTABLEKS R30 R8 K53 ["name"]
  DUPCLOSURE R31 K54 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R9 K53 ["name"]
  DUPCLOSURE R31 K55 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R15 K53 ["name"]
  DUPCLOSURE R31 K56 [PROTO_3]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R13 K53 ["name"]
  DUPCLOSURE R31 K57 [PROTO_4]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R14 K53 ["name"]
  DUPCLOSURE R31 K58 [PROTO_5]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R17 K53 ["name"]
  DUPCLOSURE R31 K59 [PROTO_6]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R16 K53 ["name"]
  MOVE R32 R24
  CALL R32 0 1
  JUMPIF R32 [+3]
  DUPCLOSURE R31 K60 [PROTO_7]
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R31
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R18 K53 ["name"]
  DUPCLOSURE R31 K61 [PROTO_8]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R20 K53 ["name"]
  DUPCLOSURE R31 K62 [PROTO_9]
  CAPTURE VAL R22
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R10 K53 ["name"]
  DUPCLOSURE R31 K63 [PROTO_10]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R21 K53 ["name"]
  DUPCLOSURE R31 K64 [PROTO_11]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R12 K53 ["name"]
  DUPCLOSURE R31 K65 [PROTO_12]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R19 K53 ["name"]
  DUPCLOSURE R31 K66 [PROTO_13]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R11 K53 ["name"]
  MOVE R32 R22
  CALL R32 0 1
  JUMPIFNOT R32 [+2]
  LOADNIL R31
  JUMP [+1]
  MOVE R31 R26
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R7 K53 ["name"]
  DUPCLOSURE R31 K67 [PROTO_14]
  CAPTURE VAL R22
  CAPTURE VAL R25
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  CALL R27 2 -1
  RETURN R27 -1

PROTO_0:
  GETTABLEKS R1 R0 K0 ["selectedScriptItems"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K0 ["selectedScriptItems"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K1 [1] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["selectedRangeItems"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K0 ["selectedRangeItems"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K1 [1] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["selectedRangeItems"]
  NOT R1 R2
  JUMPIF R1 [+7]
  GETTABLEKS R3 R0 K0 ["selectedRangeItems"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K1 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["selectedScriptItems"]
  NOT R1 R2
  JUMPIF R1 [+7]
  GETTABLEKS R3 R0 K0 ["selectedScriptItems"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K1 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["RevertScripts"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["ScriptConversionContext"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Analytics"]
  CALL R0 3 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["onScriptsReverted"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["Plugin"]
  GETTABLEKS R4 R1 K1 ["Localization"]
  GETUPVAL R5 1
  DUPTABLE R6 K3 [{"OnConfirm"}]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K2 ["OnConfirm"]
  CALL R2 4 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selectedRangeItems"]
  JUMPIFNOT R0 [+7]
  GETTABLEKS R3 R1 K0 ["selectedRangeItems"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K1 [1] [+2]
  LOADB R0 0 +1
  LOADB R0 1
  JUMPIFNOT R0 [+29]
  GETUPVAL R1 0
  GETTABLEKS R2 R1 K2 ["selectedScriptItems"]
  NOT R0 R2
  JUMPIF R0 [+7]
  GETTABLEKS R3 R1 K2 ["selectedScriptItems"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K3 [0] [+2]
  LOADB R0 0 +1
  LOADB R0 1
  JUMPIFNOT R0 [+16]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["selectedRangeItems"]
  GETTABLEN R0 R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["goToScript"]
  GETTABLEKS R2 R0 K5 ["scriptId"]
  GETTABLEKS R3 R0 K6 ["range"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["ScriptConversionContext"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["selectedScriptItems"]
  GETTABLEN R0 R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["goToScript"]
  GETTABLEKS R2 R0 K5 ["scriptId"]
  LOADNIL R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["ScriptConversionContext"]
  CALL R1 3 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R5 K2 [{"Text", "OnItemClicked"}]
  GETTABLEKS R6 R1 K3 ["Localization"]
  LOADK R8 K4 ["ScriptConversion"]
  LOADK R9 K5 ["GoToScript"]
  NAMECALL R6 R6 K6 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K0 ["Text"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  SETTABLEKS R6 R5 K1 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K9 [table.insert]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R4 K1 [{"ShowSeparator"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K0 ["ShowSeparator"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K4 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ReplaceWithSuggestion"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["scriptId"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["range"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["ScriptConversionContext"]
  GETUPVAL R4 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Localization"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["instanceName"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Analytics"]
  CALL R0 7 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K7 ["onSuggestionApplied"]
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K6 ["Analytics"]
  LOADK R2 K8 ["onScriptSuggestionApplied"]
  NAMECALL R0 R0 K9 ["getHandler"]
  CALL R0 2 1
  CALL R0 0 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R4 R1 K0 ["selectedRangeItems"]
  GETTABLEN R3 R4 1
  GETTABLEKS R4 R3 K1 ["suggestions"]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  DUPTABLE R12 K4 [{"Text", "OnItemClicked"}]
  GETTABLEKS R13 R1 K5 ["Localization"]
  LOADK R15 K6 ["ScriptConversion"]
  LOADK R16 K7 ["ReplaceWith"]
  DUPTABLE R17 K9 [{"part"}]
  SETTABLEKS R9 R17 K8 ["part"]
  NAMECALL R13 R13 K10 ["getText"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K2 ["Text"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K3 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K13 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-26]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["UndoRevert"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["ScriptConversionContext"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Analytics"]
  CALL R0 3 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R5 K2 [{"Text", "OnItemClicked"}]
  GETTABLEKS R6 R1 K3 ["Localization"]
  LOADK R8 K4 ["ScriptConversion"]
  LOADK R9 K5 ["UndoRevert"]
  NAMECALL R6 R6 K6 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K0 ["Text"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K1 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K9 [table.insert]
  CALL R3 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["promptRevertScripts"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R3 R1 K0 ["Localization"]
  DUPTABLE R6 K3 [{"Text", "OnItemClicked"}]
  GETTABLEKS R8 R1 K4 ["selectedScriptItems"]
  JUMPIFNOT R8 [+7]
  GETTABLEKS R10 R1 K4 ["selectedScriptItems"]
  LENGTH R9 R10
  JUMPIFEQKN R9 K5 [1] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFNOT R8 [+6]
  LOADK R9 K6 ["ScriptConversion"]
  LOADK R10 K7 ["RevertScript"]
  NAMECALL R7 R3 K8 ["getText"]
  CALL R7 3 1
  JUMP [+5]
  LOADK R9 K6 ["ScriptConversion"]
  LOADK R10 K9 ["RevertScripts"]
  NAMECALL R7 R3 K8 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K1 ["Text"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K2 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R2 R6 [+4]
  MOVE R5 R2
  GETIMPORT R4 K12 [table.insert]
  CALL R4 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ReplaceWithRules"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["ScriptConversionContext"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Analytics"]
  CALL R0 3 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R3 R1 K0 ["Localization"]
  DUPTABLE R6 K3 [{"Text", "OnItemClicked"}]
  LOADK R9 K4 ["ScriptConversion"]
  LOADK R10 K5 ["ReplaceWithRules"]
  NAMECALL R7 R3 K6 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K1 ["Text"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K2 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R2 R6 [+4]
  MOVE R5 R2
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["diffScripts"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["selectedScriptItems"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["ScriptConversionContext"]
  CALL R0 2 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R3 R1 K0 ["Localization"]
  DUPTABLE R6 K3 [{"Text", "OnItemClicked"}]
  LOADK R9 K4 ["ScriptConversion"]
  LOADK R10 K5 ["DiffScripts"]
  NAMECALL R7 R3 K6 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K1 ["Text"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K2 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R2 R6 [+4]
  MOVE R5 R2
  GETIMPORT R4 K9 [table.insert]
  CALL R4 2 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R2 R0 K0 ["selectedScriptItems"]
  NOT R1 R2
  JUMPIF R1 [+7]
  GETTABLEKS R3 R0 K0 ["selectedScriptItems"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K1 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K2 ["selectedRangeItems"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K2 ["selectedRangeItems"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K3 [1] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R2 R0 K2 ["selectedRangeItems"]
  GETTABLEN R1 R2 1
  GETTABLEKS R2 R1 K4 ["suggestions"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R3 R1 K4 ["suggestions"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K1 [0] [+3]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_20:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["selectedScriptItems"]
  GETTABLEKS R3 R0 K1 ["ScriptConversionContext"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["selectedScriptItems"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R7 R0 K1 ["revertedScripts"]
  GETTABLEKS R8 R5 K2 ["scriptId"]
  GETTABLE R6 R7 R8
  JUMPIF R6 [+2]
  LOADB R6 0
  RETURN R6 1
  FORGLOOP R1 2 [-9]
  LOADB R1 1
  RETURN R1 1

PROTO_22:
  GETTABLEKS R1 R0 K0 ["selectedScriptItems"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R7 R0 K1 ["completedScripts"]
  GETTABLEKS R8 R5 K2 ["scriptId"]
  GETTABLE R6 R7 R8
  JUMPIFNOT R6 [+2]
  LOADB R6 0
  RETURN R6 1
  FORGLOOP R1 2 [-9]
  LOADB R1 1
  RETURN R1 1

PROTO_23:
  GETTABLEKS R3 R0 K0 ["selectedScriptItems"]
  NOT R2 R3
  JUMPIF R2 [+7]
  GETTABLEKS R4 R0 K0 ["selectedScriptItems"]
  LENGTH R3 R4
  JUMPIFEQKN R3 K1 [0] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K2 ["selectedRangeItems"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R4 R0 K2 ["selectedRangeItems"]
  LENGTH R3 R4
  JUMPIFEQKN R3 K3 [1] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIF R2 [+23]
  GETTABLEKS R2 R0 K0 ["selectedScriptItems"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R4 R0 K0 ["selectedScriptItems"]
  LENGTH R3 R4
  JUMPIFEQKN R3 K3 [1] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+14]
  GETTABLEKS R3 R0 K2 ["selectedRangeItems"]
  NOT R2 R3
  JUMPIF R2 [+7]
  GETTABLEKS R4 R0 K2 ["selectedRangeItems"]
  LENGTH R3 R4
  JUMPIFEQKN R3 K1 [0] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_24:
  GETTABLEKS R1 R0 K0 ["selectedScriptItems"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R0 K1 ["ScriptConversionContext"]
  GETTABLEKS R8 R5 K2 ["scriptId"]
  NAMECALL R6 R6 K3 ["getScriptInstanceFromGUID"]
  CALL R6 2 1
  GETUPVAL R7 0
  MOVE R9 R6
  NAMECALL R7 R7 K4 ["GetScriptBackupChunks"]
  CALL R7 2 1
  JUMPIF R7 [+2]
  LOADB R8 0
  RETURN R8 1
  GETUPVAL R8 0
  MOVE R10 R6
  MOVE R11 R7
  NAMECALL R8 R8 K5 ["DidSourceChange"]
  CALL R8 3 1
  JUMPIF R8 [+2]
  LOADB R8 0
  RETURN R8 1
  FORGLOOP R1 2 [-25]
  LOADB R1 1
  RETURN R1 1

PROTO_25:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  NAMECALL R2 R2 K1 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K2 ["Suggestions"]
  GETTABLEKS R4 R1 K3 ["ScriptIds"]
  NEWTABLE R5 0 0
  GETTABLEKS R8 R1 K4 ["selectedScriptItems"]
  NOT R7 R8
  JUMPIF R7 [+7]
  GETTABLEKS R9 R1 K4 ["selectedScriptItems"]
  LENGTH R8 R9
  JUMPIFEQKN R8 K5 [0] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIFNOT R7 [+11]
  GETTABLEKS R7 R1 K6 ["selectedRangeItems"]
  JUMPIFNOT R7 [+7]
  GETTABLEKS R9 R1 K6 ["selectedRangeItems"]
  LENGTH R8 R9
  JUMPIFEQKN R8 K7 [1] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIF R7 [+23]
  GETTABLEKS R7 R1 K4 ["selectedScriptItems"]
  JUMPIFNOT R7 [+7]
  GETTABLEKS R9 R1 K4 ["selectedScriptItems"]
  LENGTH R8 R9
  JUMPIFEQKN R8 K7 [1] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIFNOT R7 [+14]
  GETTABLEKS R8 R1 K6 ["selectedRangeItems"]
  NOT R7 R8
  JUMPIF R7 [+7]
  GETTABLEKS R9 R1 K6 ["selectedRangeItems"]
  LENGTH R8 R9
  JUMPIFEQKN R8 K5 [0] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIFNOT R7 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADB R6 0
  JUMPIFNOT R6 [+5]
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K8 ["addGoToScriptItem"]
  CALL R6 3 0
  GETTABLEKS R8 R1 K4 ["selectedScriptItems"]
  NOT R7 R8
  JUMPIF R7 [+7]
  GETTABLEKS R9 R1 K4 ["selectedScriptItems"]
  LENGTH R8 R9
  JUMPIFEQKN R8 K5 [0] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIF R7 [+2]
  LOADB R6 0
  JUMP [+27]
  GETTABLEKS R7 R1 K6 ["selectedRangeItems"]
  JUMPIFNOT R7 [+7]
  GETTABLEKS R9 R1 K6 ["selectedRangeItems"]
  LENGTH R8 R9
  JUMPIFEQKN R8 K7 [1] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIF R7 [+2]
  LOADB R6 0
  JUMP [+14]
  GETTABLEKS R8 R1 K6 ["selectedRangeItems"]
  GETTABLEN R7 R8 1
  GETTABLEKS R8 R7 K9 ["suggestions"]
  JUMPIFNOT R8 [+5]
  GETTABLEKS R9 R7 K9 ["suggestions"]
  LENGTH R8 R9
  JUMPIFNOTEQKN R8 K5 [0] [+3]
  LOADB R6 0
  JUMP [+1]
  LOADB R6 1
  JUMPIFNOT R6 [+10]
  MOVE R8 R5
  NAMECALL R6 R0 K10 ["addSeparator"]
  CALL R6 2 0
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K11 ["addSuggestionItems"]
  CALL R6 3 0
  JUMP [+55]
  GETTABLEKS R7 R1 K4 ["selectedScriptItems"]
  NOT R6 R7
  JUMPIF R6 [+7]
  GETTABLEKS R8 R1 K4 ["selectedScriptItems"]
  LENGTH R7 R8
  JUMPIFEQKN R7 K5 [0] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIF R6 [+43]
  GETTABLEKS R7 R1 K4 ["selectedScriptItems"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R13 R1 K12 ["revertedScripts"]
  GETTABLEKS R14 R11 K13 ["scriptId"]
  GETTABLE R12 R13 R14
  JUMPIF R12 [+2]
  LOADB R6 0
  JUMP [+3]
  FORGLOOP R7 2 [-9]
  LOADB R6 1
  JUMPIFNOT R6 [+10]
  MOVE R8 R5
  NAMECALL R6 R0 K10 ["addSeparator"]
  CALL R6 2 0
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K14 ["addUndoRevertItem"]
  CALL R6 3 0
  JUMP [+16]
  GETUPVAL R6 0
  GETTABLEKS R7 R1 K4 ["selectedScriptItems"]
  GETTABLEKS R8 R1 K15 ["ScriptConversionContext"]
  CALL R6 2 1
  JUMPIFNOT R6 [+9]
  MOVE R8 R5
  NAMECALL R6 R0 K10 ["addSeparator"]
  CALL R6 2 0
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K16 ["addRevertScriptItem"]
  CALL R6 3 0
  GETTABLEKS R7 R1 K4 ["selectedScriptItems"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R13 R1 K17 ["completedScripts"]
  GETTABLEKS R14 R11 K13 ["scriptId"]
  GETTABLE R12 R13 R14
  JUMPIFNOT R12 [+2]
  LOADB R6 0
  JUMP [+3]
  FORGLOOP R7 2 [-9]
  LOADB R6 1
  JUMPIFNOT R6 [+9]
  MOVE R8 R5
  NAMECALL R6 R0 K10 ["addSeparator"]
  CALL R6 2 0
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K18 ["addReplaceSelectedItem"]
  CALL R6 3 0
  GETUPVAL R6 1
  MOVE R7 R1
  CALL R6 1 1
  JUMPIFNOT R6 [+9]
  MOVE R8 R5
  NAMECALL R6 R0 K10 ["addSeparator"]
  CALL R6 2 0
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R0 K19 ["addDiffScriptItem"]
  CALL R6 3 0
  GETUPVAL R6 2
  MOVE R7 R2
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0

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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["ConfirmRevertDialog"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["showDialog"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K13 ["ScriptReplacement"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K14 ["ScriptHistory"]
  GETTABLEKS R6 R7 K15 ["selectionHasScriptBackups"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K14 ["ScriptHistory"]
  GETTABLEKS R7 R8 K16 ["ChunkUtil"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K17 ["UI"]
  GETTABLEKS R8 R7 K18 ["showContextMenu"]
  NEWTABLE R9 16 0
  DUPCLOSURE R10 K19 [PROTO_0]
  DUPCLOSURE R11 K20 [PROTO_1]
  DUPCLOSURE R12 K21 [PROTO_2]
  DUPCLOSURE R13 K22 [PROTO_3]
  DUPCLOSURE R14 K23 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R14 R9 K24 ["promptRevertScripts"]
  DUPCLOSURE R14 K25 [PROTO_7]
  CAPTURE VAL R4
  SETTABLEKS R14 R9 K26 ["addGoToScriptItem"]
  DUPCLOSURE R14 K27 [PROTO_8]
  SETTABLEKS R14 R9 K28 ["addSeparator"]
  DUPCLOSURE R14 K29 [PROTO_10]
  SETTABLEKS R14 R9 K30 ["addSuggestionItems"]
  DUPCLOSURE R14 K31 [PROTO_12]
  SETTABLEKS R14 R9 K32 ["addUndoRevertItem"]
  DUPCLOSURE R14 K33 [PROTO_14]
  SETTABLEKS R14 R9 K34 ["addRevertScriptItem"]
  DUPCLOSURE R14 K35 [PROTO_16]
  SETTABLEKS R14 R9 K36 ["addReplaceSelectedItem"]
  DUPCLOSURE R14 K37 [PROTO_18]
  CAPTURE VAL R4
  SETTABLEKS R14 R9 K38 ["addDiffScriptItem"]
  DUPCLOSURE R14 K39 [PROTO_19]
  DUPCLOSURE R15 K40 [PROTO_20]
  CAPTURE VAL R5
  DUPCLOSURE R16 K41 [PROTO_21]
  DUPCLOSURE R17 K42 [PROTO_22]
  DUPCLOSURE R18 K43 [PROTO_23]
  DUPCLOSURE R19 K44 [PROTO_24]
  CAPTURE VAL R6
  DUPCLOSURE R20 K45 [PROTO_25]
  CAPTURE VAL R5
  CAPTURE VAL R19
  CAPTURE VAL R8
  SETTABLEKS R20 R9 K46 ["show"]
  RETURN R9 1
PROTO_0:
  LOADK R0 K0 ["client_id"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["session_id"]
  RETURN R0 1

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  DUPTABLE R0 K4 [{"GetClientId", "GetSessionId", "SendEventDeferred", "ReportCounter"}]
  DUPCLOSURE R1 K5 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["GetClientId"]
  DUPCLOSURE R1 K6 [PROTO_1]
  SETTABLEKS R1 R0 K1 ["GetSessionId"]
  DUPCLOSURE R1 K7 [PROTO_2]
  SETTABLEKS R1 R0 K2 ["SendEventDeferred"]
  DUPCLOSURE R1 K8 [PROTO_3]
  SETTABLEKS R1 R0 K3 ["ReportCounter"]
  RETURN R0 1

PROTO_5:
  GETIMPORT R2 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Packages"]
  GETTABLEKS R3 R4 K3 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K4 ["ContextServices"]
  GETTABLEKS R4 R3 K5 ["Analytics"]
  GETTABLEKS R5 R3 K6 ["Localization"]
  GETTABLEKS R6 R3 K7 ["Mouse"]
  GETTABLEKS R7 R3 K8 ["Plugin"]
  GETTABLEKS R8 R3 K9 ["Store"]
  GETIMPORT R9 K1 [require]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K10 ["Src"]
  GETTABLEKS R11 R12 K11 ["Resources"]
  GETTABLEKS R10 R11 K12 ["createAnalyticsHandlers"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K10 ["Src"]
  GETTABLEKS R12 R13 K11 ["Resources"]
  GETTABLEKS R11 R12 K13 ["createTheme"]
  CALL R10 1 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["Src"]
  GETTABLEKS R13 R14 K11 ["Resources"]
  GETTABLEKS R12 R13 K6 ["Localization"]
  GETTABLEKS R11 R12 K14 ["SourceStrings"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K10 ["Src"]
  GETTABLEKS R14 R15 K11 ["Resources"]
  GETTABLEKS R13 R14 K6 ["Localization"]
  GETTABLEKS R12 R13 K15 ["LocalizedStrings"]
  GETTABLEKS R13 R7 K16 ["new"]
  MOVE R14 R0
  CALL R13 1 1
  GETTABLEKS R14 R6 K16 ["new"]
  NAMECALL R15 R0 K17 ["GetMouse"]
  CALL R15 1 -1
  CALL R14 -1 1
  GETTABLEKS R15 R8 K16 ["new"]
  MOVE R16 R1
  CALL R15 1 1
  MOVE R16 R10
  CALL R16 0 1
  GETTABLEKS R17 R5 K16 ["new"]
  DUPTABLE R18 K21 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R11 R18 K18 ["stringResourceTable"]
  SETTABLEKS R12 R18 K19 ["translationResourceTable"]
  LOADK R19 K22 ["Experimental"]
  SETTABLEKS R19 R18 K20 ["pluginName"]
  CALL R17 1 1
  GETTABLEKS R18 R4 K16 ["new"]
  MOVE R19 R9
  GETUPVAL R20 1
  CALL R20 0 1
  CALL R18 2 1
  DUPTABLE R19 K24 [{"Analytics", "Localization", "Mouse", "Plugin", "Store", "Theme"}]
  SETTABLEKS R18 R19 K5 ["Analytics"]
  SETTABLEKS R17 R19 K6 ["Localization"]
  SETTABLEKS R14 R19 K7 ["Mouse"]
  SETTABLEKS R13 R19 K8 ["Plugin"]
  SETTABLEKS R15 R19 K9 ["Store"]
  SETTABLEKS R16 R19 K23 ["Theme"]
  RETURN R19 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K6 ["_Index"]
  GETTABLEKS R4 R5 K7 ["DeveloperFramework"]
  GETTABLEKS R3 R4 K7 ["DeveloperFramework"]
  GETTABLEKS R2 R3 K8 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_4]
  DUPCLOSURE R4 K11 [PROTO_5]
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R4 1

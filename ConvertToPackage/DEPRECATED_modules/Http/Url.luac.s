PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["BaseUrl"]
  LENGTH R3 R0
  NAMECALL R1 R0 K1 ["sub"]
  CALL R1 2 1
  JUMPIFEQKS R1 K2 ["/"] [+4]
  MOVE R1 R0
  LOADK R2 K2 ["/"]
  CONCAT R0 R1 R2
  LOADK R3 K3 ["://"]
  NAMECALL R1 R0 K4 ["find"]
  CALL R1 2 2
  LOADK R5 K5 ["%."]
  ADDK R6 R2 K6 [1]
  NAMECALL R3 R0 K4 ["find"]
  CALL R3 3 2
  ADDK R7 R2 K6 [1]
  SUBK R8 R3 K6 [1]
  NAMECALL R5 R0 K1 ["sub"]
  CALL R5 3 1
  ADDK R8 R4 K6 [1]
  NAMECALL R6 R0 K1 ["sub"]
  CALL R6 2 1
  MOVE R7 R0
  MOVE R8 R5
  MOVE R9 R6
  RETURN R7 3

PROTO_1:
  GETTABLEKS R2 R0 K0 ["PREFIX"]
  JUMPIFNOTEQKS R2 K1 ["www"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  JUMPIFEQKNIL R6 [+38]
  FASTCALL1 TYPE R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K3 [type]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K4 ["table"] [+17]
  LOADN R9 1
  LENGTH R7 R6
  LOADN R8 1
  FORNPREP R7
  MOVE R13 R5
  LOADK R14 K5 ["="]
  GETTABLE R15 R6 R9
  CONCAT R12 R13 R15
  FASTCALL2 TABLE_INSERT R1 R12 [+4]
  MOVE R11 R1
  GETIMPORT R10 K7 [table.insert]
  CALL R10 2 0
  FORNLOOP R7
  JUMP [+14]
  MOVE R10 R5
  LOADK R11 K5 ["="]
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R13 R6
  GETIMPORT R12 K9 [tostring]
  CALL R12 1 1
  CONCAT R9 R10 R12
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K7 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-40]
  GETIMPORT R2 K11 [table.concat]
  MOVE R3 R1
  LOADK R4 K12 ["&"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  MOVE R2 R1
  CALL R2 0 3
  GETIMPORT R5 K7 [string.format]
  LOADK R6 K8 ["https://api.%s"]
  MOVE R7 R4
  CALL R5 2 1
  GETIMPORT R6 K7 [string.format]
  LOADK R7 K9 ["https://auth.%s"]
  MOVE R8 R4
  CALL R6 2 1
  GETIMPORT R7 K7 [string.format]
  LOADK R8 K10 ["https://chat.%sv2"]
  MOVE R9 R4
  CALL R7 2 1
  GETIMPORT R8 K7 [string.format]
  LOADK R9 K11 ["https://assetgame.%s"]
  MOVE R10 R4
  CALL R8 2 1
  GETIMPORT R9 K7 [string.format]
  LOADK R10 K12 ["https://games.%s"]
  MOVE R11 R4
  CALL R9 2 1
  GETIMPORT R10 K7 [string.format]
  LOADK R11 K13 ["https://notifications.%s"]
  MOVE R12 R4
  CALL R10 2 1
  GETIMPORT R11 K7 [string.format]
  LOADK R12 K14 ["https://realtime.%s"]
  MOVE R13 R4
  CALL R11 2 1
  GETIMPORT R12 K7 [string.format]
  LOADK R13 K15 ["https://web.%s"]
  MOVE R14 R4
  CALL R12 2 1
  GETIMPORT R13 K7 [string.format]
  LOADK R14 K16 ["https://catalog.%s"]
  MOVE R15 R4
  CALL R13 2 1
  GETIMPORT R14 K7 [string.format]
  LOADK R15 K17 ["https://develop.%s"]
  MOVE R16 R4
  CALL R14 2 1
  GETIMPORT R15 K7 [string.format]
  LOADK R16 K18 ["https://itemconfiguration.%s"]
  MOVE R17 R4
  CALL R15 2 1
  GETIMPORT R16 K7 [string.format]
  LOADK R17 K19 ["https://publish.%s"]
  MOVE R18 R4
  CALL R16 2 1
  GETIMPORT R17 K7 [string.format]
  LOADK R18 K20 ["https://data.%s"]
  MOVE R19 R4
  CALL R17 2 1
  GETIMPORT R18 K7 [string.format]
  LOADK R19 K21 ["https://groups.%s"]
  MOVE R20 R4
  CALL R18 2 1
  DUPTABLE R19 K39 [{"DOMAIN", "PREFIX", "BASE_URL", "API_URL", "AUTH_URL", "GAME_URL", "GAME_ASSET_URL", "CHAT_URL", "NOTIFICATION_URL", "REALTIME_URL", "WEB_URL", "CATALOG_URL", "DEVELOP_URL", "ITEM_CONFIGURATION_URL", "PUBLISH_URL", "DATA_URL", "GROUP_URL"}]
  SETTABLEKS R4 R19 K22 ["DOMAIN"]
  SETTABLEKS R3 R19 K23 ["PREFIX"]
  SETTABLEKS R2 R19 K24 ["BASE_URL"]
  SETTABLEKS R5 R19 K25 ["API_URL"]
  SETTABLEKS R6 R19 K26 ["AUTH_URL"]
  SETTABLEKS R9 R19 K27 ["GAME_URL"]
  SETTABLEKS R8 R19 K28 ["GAME_ASSET_URL"]
  SETTABLEKS R7 R19 K29 ["CHAT_URL"]
  SETTABLEKS R10 R19 K30 ["NOTIFICATION_URL"]
  SETTABLEKS R11 R19 K31 ["REALTIME_URL"]
  SETTABLEKS R12 R19 K32 ["WEB_URL"]
  SETTABLEKS R13 R19 K33 ["CATALOG_URL"]
  SETTABLEKS R14 R19 K34 ["DEVELOP_URL"]
  SETTABLEKS R15 R19 K35 ["ITEM_CONFIGURATION_URL"]
  SETTABLEKS R16 R19 K36 ["PUBLISH_URL"]
  SETTABLEKS R17 R19 K37 ["DATA_URL"]
  SETTABLEKS R18 R19 K38 ["GROUP_URL"]
  DUPCLOSURE R20 K40 [PROTO_1]
  SETTABLEKS R20 R19 K41 ["isVanitySite"]
  DUPCLOSURE R20 K42 [PROTO_2]
  SETTABLEKS R20 R19 K43 ["makeQueryString"]
  RETURN R19 1
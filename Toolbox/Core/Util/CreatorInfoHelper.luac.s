PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K4 [assert]
  CALL R1 1 0
  GETIMPORT R1 K6 [ipairs]
  GETIMPORT R2 K9 [Enum.CreatorType]
  NAMECALL R2 R2 K10 ["GetEnumItems"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R5 K11 ["Name"]
  JUMPIFNOTEQ R6 R0 [+4]
  GETTABLEKS R6 R5 K12 ["Value"]
  RETURN R6 1
  FORGLOOP R1 2 [inext] [-8]
  GETIMPORT R1 K14 [error]
  LOADK R2 K15 ["'%s' is not a valid Enum.CreatorType"]
  MOVE R4 R0
  NAMECALL R2 R2 K16 ["format"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [ipairs]
  GETIMPORT R2 K4 [Enum.CreatorType]
  NAMECALL R2 R2 K5 ["GetEnumItems"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R5 K6 ["Value"]
  JUMPIFNOTEQ R6 R0 [+3]
  LOADB R6 1
  RETURN R6 1
  FORGLOOP R1 2 [inext] [-7]
  LOADB R1 0
  RETURN R1 1

PROTO_2:
  JUMPIFNOTEQKN R0 K0 [1] [+6]
  GETIMPORT R2 K4 [Enum.CreatorType.User]
  GETTABLEKS R1 R2 K5 ["Value"]
  RETURN R1 1
  JUMPIFNOTEQKN R0 K6 [2] [+6]
  GETIMPORT R2 K8 [Enum.CreatorType.Group]
  GETTABLEKS R1 R2 K5 ["Value"]
  RETURN R1 1
  GETIMPORT R1 K10 [error]
  LOADK R3 K11 ["Unknown backendCreatorType received "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K13 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K3 [Enum.CreatorType.User]
  GETTABLEKS R1 R2 K4 ["Value"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADN R1 1
  RETURN R1 1
  GETIMPORT R2 K6 [Enum.CreatorType.Group]
  GETTABLEKS R1 R2 K4 ["Value"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADN R1 2
  RETURN R1 1
  GETIMPORT R1 K8 [error]
  LOADK R3 K9 ["Unknown creatorType received "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K11 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["isValidCreatorType"]
  MOVE R4 R1
  CALL R3 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K3 ["responseBody"]
  GETIMPORT R4 K7 [Enum.CreatorType.Group]
  GETTABLEKS R3 R4 K8 ["Value"]
  JUMPIFNOTEQ R1 R3 [+4]
  GETTABLEKS R3 R2 K9 ["Name"]
  RETURN R3 1
  GETIMPORT R4 K11 [Enum.CreatorType.User]
  GETTABLEKS R3 R4 K8 ["Value"]
  JUMPIFNOTEQ R1 R3 [+4]
  GETTABLEKS R3 R2 K12 ["name"]
  RETURN R3 1
  GETIMPORT R3 K14 [error]
  LOADK R4 K15 ["Unknown creatorType: '%s'"]
  MOVE R6 R1
  NAMECALL R4 R4 K16 ["format"]
  CALL R4 2 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["isValidCreatorType"]
  MOVE R5 R2
  CALL R4 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R3 K2 [assert]
  CALL R3 -1 0
  NAMECALL R5 R0 K3 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K4 ["assets"]
  GETTABLEKS R3 R4 K5 ["cachedCreatorInfo"]
  JUMPIF R3 [+2]
  LOADB R4 0
  RETURN R4 1
  GETTABLEKS R4 R3 K6 ["Id"]
  JUMPIF R4 [+2]
  LOADB R4 0
  RETURN R4 1
  LOADB R4 0
  GETTABLEKS R5 R3 K6 ["Id"]
  JUMPIFNOTEQ R5 R1 [+7]
  GETTABLEKS R5 R3 K7 ["Type"]
  JUMPIFEQ R5 R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  NEWTABLE R1 8 0
  DUPCLOSURE R2 K3 [PROTO_0]
  SETTABLEKS R2 R1 K4 ["getCreatorTypeValueFromName"]
  DUPCLOSURE R2 K5 [PROTO_1]
  SETTABLEKS R2 R1 K6 ["isValidCreatorType"]
  DUPCLOSURE R2 K7 [PROTO_2]
  SETTABLEKS R2 R1 K8 ["backendToClient"]
  DUPCLOSURE R2 K9 [PROTO_3]
  SETTABLEKS R2 R1 K10 ["clientToBackend"]
  DUPCLOSURE R2 K11 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K12 ["getNameFromResult"]
  DUPCLOSURE R2 K13 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K14 ["isCached"]
  RETURN R1 1
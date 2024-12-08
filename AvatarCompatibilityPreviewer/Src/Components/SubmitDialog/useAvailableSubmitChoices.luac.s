PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["REFERENCE_VALUE_NAME"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+6]
  LOADK R4 K2 ["ObjectValue"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  LOADK R5 K2 ["ObjectValue"]
  NAMECALL R3 R1 K3 ["IsA"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R1 K7 ["Value"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R3 R1 K7 ["Value"]
  GETTABLEKS R2 R3 K8 ["Name"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["assetType"]
  JUMPIFNOTEQKS R2 K1 ["Body"] [+3]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R1 K0 ["assetType"]
  JUMPIFNOTEQKS R2 K1 ["Body"] [+3]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 0
  LOADK R5 K2 ["AssetType"]
  GETTABLEKS R7 R0 K0 ["assetType"]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R3 R3 K4 ["getText"]
  CALL R3 3 1
  GETUPVAL R4 0
  LOADK R6 K2 ["AssetType"]
  GETTABLEKS R8 R1 K0 ["assetType"]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R4 R4 K4 ["getText"]
  CALL R4 3 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WorldModel"]
  NAMECALL R1 R1 K1 ["Clone"]
  CALL R1 1 1
  GETUPVAL R2 1
  MOVE R3 R1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["List"]
  GETTABLEKS R4 R5 K3 ["join"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["LIMBS"]
  NEWTABLE R6 0 1
  LOADK R7 K5 ["HumanoidRootPart"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 -1
  CALL R2 -1 0
  DUPTABLE R4 K8 [{"instance", "assetType"}]
  SETTABLEKS R1 R4 K6 ["instance"]
  LOADK R5 K9 ["Body"]
  SETTABLEKS R5 R4 K7 ["assetType"]
  FASTCALL2 TABLE_INSERT R0 R4 [+4]
  MOVE R3 R0
  GETIMPORT R2 K12 [table.insert]
  CALL R2 2 0
  GETUPVAL R5 4
  GETTABLEKS R2 R5 K13 ["equippedItems"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R8 R6 K14 ["item"]
  GETTABLEKS R7 R8 K15 ["source"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["SOURCE_INSTANCE"]
  JUMPIFNOTEQ R7 R8 [+132]
  GETTABLEKS R10 R6 K14 ["item"]
  GETTABLEKS R9 R10 K15 ["source"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K16 ["SOURCE_INSTANCE"]
  JUMPIFEQ R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K17 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R8 R9 [+3]
  GETIMPORT R7 K19 [assert]
  CALL R7 2 0
  GETTABLEKS R8 R6 K20 ["palette"]
  GETTABLEKS R7 R8 K21 ["PublishAssetType"]
  JUMPIFEQKNIL R7 [+107]
  GETTABLEKS R10 R6 K20 ["palette"]
  GETTABLEKS R9 R10 K21 ["PublishAssetType"]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K17 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R8 R9 [+3]
  GETIMPORT R7 K19 [assert]
  CALL R7 2 0
  GETTABLEKS R8 R6 K14 ["item"]
  GETTABLEKS R7 R8 K6 ["instance"]
  NAMECALL R7 R7 K1 ["Clone"]
  CALL R7 1 1
  GETUPVAL R8 1
  MOVE R9 R7
  NEWTABLE R10 0 1
  LOADK R11 K22 ["Handle"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 0
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K23 ["REFERENCE_VALUE_NAME"]
  NAMECALL R9 R7 K24 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIFEQKNIL R9 [+6]
  LOADK R12 K25 ["ObjectValue"]
  NAMECALL R10 R9 K26 ["IsA"]
  CALL R10 2 1
  JUMPIF R10 [+2]
  LOADNIL R8
  JUMP [+19]
  LOADK R13 K25 ["ObjectValue"]
  NAMECALL R11 R9 K26 ["IsA"]
  CALL R11 2 1
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K17 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R11 R12 [+3]
  GETIMPORT R10 K19 [assert]
  CALL R10 2 0
  GETTABLEKS R8 R9 K27 ["Value"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R10 R9 K27 ["Value"]
  GETTABLEKS R8 R10 K28 ["Name"]
  JUMPIFEQKNIL R8 [+3]
  SETTABLEKS R8 R7 K28 ["Name"]
  LOADK R11 K29 ["ValueBase"]
  LOADB R12 1
  NAMECALL R9 R7 K30 ["FindFirstChildWhichIsA"]
  CALL R9 3 1
  JUMPIFEQKNIL R9 [+5]
  NAMECALL R10 R9 K31 ["Destroy"]
  CALL R10 1 0
  JUMPBACK [-11]
  NAMECALL R9 R7 K32 ["GetAttributes"]
  CALL R9 1 3
  FORGPREP R9
  MOVE R16 R12
  LOADNIL R17
  NAMECALL R14 R7 K33 ["SetAttribute"]
  CALL R14 3 0
  FORGLOOP R9 1 [-6]
  DUPTABLE R11 K8 [{"instance", "assetType"}]
  SETTABLEKS R7 R11 K6 ["instance"]
  GETTABLEKS R13 R6 K20 ["palette"]
  GETTABLEKS R12 R13 K21 ["PublishAssetType"]
  SETTABLEKS R12 R11 K7 ["assetType"]
  FASTCALL2 TABLE_INSERT R0 R11 [+4]
  MOVE R10 R0
  GETIMPORT R9 K12 [table.insert]
  CALL R9 2 0
  FORGLOOP R2 2 [-141]
  GETIMPORT R2 K35 [table.sort]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U5
  CALL R2 2 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useMemo"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE VAL R1
  NEWTABLE R5 0 1
  GETTABLEKS R6 R2 K3 ["equippedItems"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K13 ["EquipmentStateContext"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K14 ["filterDescendants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K15 ["Types"]
  CALL R7 1 1
  GETTABLEKS R9 R2 K16 ["ContextServices"]
  GETTABLEKS R8 R9 K17 ["Localization"]
  DUPCLOSURE R9 K18 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R10 K19 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R10 1

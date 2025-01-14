PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getCategories"]
  GETUPVAL R2 1
  NAMECALL R4 R0 K1 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["roles"]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  GETUPVAL R4 3
  JUMP [+1]
  LOADNIL R4
  CALL R1 3 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K3 ["None"]
  GETUPVAL R3 5
  CALL R3 0 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K4 ["creator"]
  JUMPIF R3 [+3]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K3 ["None"]
  MOVE R2 R3
  LOADNIL R3
  GETUPVAL R4 7
  CALL R4 0 1
  JUMPIFNOT R4 [+2]
  LOADB R3 1
  JUMP [+6]
  GETUPVAL R4 8
  CALL R4 0 1
  JUMPIFNOT R4 [+2]
  LOADB R3 0
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R4 9
  GETUPVAL R5 3
  CALL R4 1 1
  JUMPIFNOT R4 [+32]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K5 ["categoryName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["getTabKeyForCategoryName"]
  MOVE R6 R4
  CALL R5 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["MARKETPLACE_KEY"]
  JUMPIFNOTEQ R5 R6 [+11]
  GETUPVAL R7 10
  GETTABLEKS R6 R7 K8 ["setEventTarget"]
  GETUPVAL R9 11
  GETTABLEKS R8 R9 K9 ["ANALYTICS_TARGET"]
  GETTABLEKS R7 R8 K10 ["Webview"]
  CALL R6 1 0
  JUMP [+9]
  GETUPVAL R7 10
  GETTABLEKS R6 R7 K8 ["setEventTarget"]
  GETUPVAL R9 11
  GETTABLEKS R8 R9 K9 ["ANALYTICS_TARGET"]
  GETTABLEKS R7 R8 K11 ["Studio"]
  CALL R6 1 0
  GETUPVAL R6 12
  GETUPVAL R7 13
  GETUPVAL R8 14
  DUPTABLE R9 K30 [{"audioSearchInfo", "additionalAudioSearchInfo", "creator", "currentTab", "categories", "requestReason", "categoryName", "excludeGroupCreations", "searchTerm", "sortIndex", "groupIndex", "targetPage", "currentPage", "selectedBackgroundIndex", "includeUnverifiedCreators", "creatorTargetIds", "groupTargetIds", "uiSortIntent", "queryParams", "sortDirection"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["None"]
  SETTABLEKS R10 R9 K12 ["audioSearchInfo"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["None"]
  SETTABLEKS R10 R9 K13 ["additionalAudioSearchInfo"]
  SETTABLEKS R2 R9 K4 ["creator"]
  GETUPVAL R10 1
  SETTABLEKS R10 R9 K14 ["currentTab"]
  SETTABLEKS R1 R9 K15 ["categories"]
  GETUPVAL R11 15
  GETTABLEKS R10 R11 K31 ["ChangeTabs"]
  SETTABLEKS R10 R9 K16 ["requestReason"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K5 ["categoryName"]
  SETTABLEKS R10 R9 K5 ["categoryName"]
  SETTABLEKS R3 R9 K17 ["excludeGroupCreations"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K18 ["searchTerm"]
  SETTABLEKS R10 R9 K18 ["searchTerm"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K19 ["sortIndex"]
  SETTABLEKS R10 R9 K19 ["sortIndex"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K20 ["groupIndex"]
  SETTABLEKS R10 R9 K20 ["groupIndex"]
  LOADN R10 1
  SETTABLEKS R10 R9 K21 ["targetPage"]
  LOADN R10 0
  SETTABLEKS R10 R9 K22 ["currentPage"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K23 ["selectedBackgroundIndex"]
  SETTABLEKS R10 R9 K23 ["selectedBackgroundIndex"]
  GETUPVAL R11 16
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADB R10 0
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K24 ["includeUnverifiedCreators"]
  GETUPVAL R11 16
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["None"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K25 ["creatorTargetIds"]
  GETUPVAL R11 16
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["None"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K26 ["groupTargetIds"]
  GETUPVAL R11 16
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["None"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K27 ["uiSortIntent"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["None"]
  SETTABLEKS R10 R9 K28 ["queryParams"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K3 ["None"]
  SETTABLEKS R10 R9 K29 ["sortDirection"]
  CALL R6 3 -1
  NAMECALL R4 R0 K32 ["dispatch"]
  CALL R4 -1 0
  LOADB R4 1
  GETUPVAL R5 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K33 ["INVENTORY_KEY"]
  JUMPIFEQ R5 R6 [+9]
  GETUPVAL R5 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K34 ["CREATIONS_KEY"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R7 17
  GETUPVAL R8 13
  CALL R7 1 -1
  NAMECALL R5 R0 K32 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R7 18
  CALL R7 0 -1
  NAMECALL R5 R0 K32 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K7 ["Core"]
  GETTABLEKS R5 R6 K8 ["Types"]
  GETTABLEKS R4 R5 K9 ["RequestReason"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K10 ["Util"]
  GETTABLEKS R6 R7 K11 ["Analytics"]
  GETTABLEKS R5 R6 K11 ["Analytics"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K7 ["Core"]
  GETTABLEKS R7 R8 K10 ["Util"]
  GETTABLEKS R6 R7 K12 ["Constants"]
  CALL R5 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K7 ["Core"]
  GETTABLEKS R9 R10 K10 ["Util"]
  GETTABLEKS R8 R9 K13 ["ToolboxUtilities"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K14 ["showRobloxCreatedAssets"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K7 ["Core"]
  GETTABLEKS R10 R11 K15 ["Networking"]
  GETTABLEKS R9 R10 K16 ["Requests"]
  GETTABLEKS R8 R9 K17 ["GetToolboxManageableGroupsRequest"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K7 ["Core"]
  GETTABLEKS R11 R12 K15 ["Networking"]
  GETTABLEKS R10 R11 K16 ["Requests"]
  GETTABLEKS R9 R10 K18 ["UpdatePageInfoAndSendRequest"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K7 ["Core"]
  GETTABLEKS R12 R13 K10 ["Util"]
  GETTABLEKS R11 R12 K19 ["SharedFlags"]
  GETTABLEKS R10 R11 K20 ["getIsUseWebView"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K7 ["Core"]
  GETTABLEKS R13 R14 K10 ["Util"]
  GETTABLEKS R12 R13 K19 ["SharedFlags"]
  GETTABLEKS R11 R12 K21 ["getFFlagToolboxContentManagementCombineTabs"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K7 ["Core"]
  GETTABLEKS R14 R15 K10 ["Util"]
  GETTABLEKS R13 R14 K19 ["SharedFlags"]
  GETTABLEKS R12 R13 K22 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K7 ["Core"]
  GETTABLEKS R15 R16 K10 ["Util"]
  GETTABLEKS R14 R15 K19 ["SharedFlags"]
  GETTABLEKS R13 R14 K23 ["getFFlagToolboxAddCreationsFilterToListView"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K7 ["Core"]
  GETTABLEKS R16 R17 K10 ["Util"]
  GETTABLEKS R15 R16 K19 ["SharedFlags"]
  GETTABLEKS R14 R15 K24 ["getFFlagToolboxExcludeGroupCreations"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K7 ["Core"]
  GETTABLEKS R17 R18 K10 ["Util"]
  GETTABLEKS R16 R17 K19 ["SharedFlags"]
  GETTABLEKS R15 R16 K25 ["getFFlagToolboxEnableWebView"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K7 ["Core"]
  GETTABLEKS R17 R18 K8 ["Types"]
  GETTABLEKS R16 R17 K26 ["Category"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K7 ["Core"]
  GETTABLEKS R18 R19 K27 ["Actions"]
  GETTABLEKS R17 R18 K28 ["StopAllSounds"]
  CALL R16 1 1
  DUPCLOSURE R17 K29 [PROTO_1]
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R16
  RETURN R17 1

PROTO_0:
  GETTABLEKS R5 R0 K0 ["Type"]
  GETTABLEKS R2 R5 K1 ["Value"]
  LOADK R3 K2 ["_"]
  GETTABLEKS R4 R0 K3 ["Id"]
  CONCAT R1 R2 R4
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["OnDeleteCreatorPill"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnSelectCreator"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["userGroupSearchRequest"]
  GETTABLEKS R5 R2 K2 ["Network"]
  GETTABLEKS R4 R5 K3 ["networkInterface"]
  MOVE R5 R0
  GETTABLEKS R6 R2 K4 ["manageableGroups"]
  CALL R3 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["OnSearchUpdate"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["debouncedUserGroupSearchRequest"]
  MOVE R4 R0
  GETTABLEKS R5 R2 K3 ["manageableGroups"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["getKey"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onClickCreatorPill"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onSelectCreator"]
  GETUPVAL R1 0
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  GETUPVAL R3 1
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["debouncedUserGroupSearchRequest"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["updateUserSearch"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["getManageableGroups"]
  GETTABLEKS R4 R1 K2 ["Network"]
  GETTABLEKS R3 R4 K3 ["networkInterface"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClickCreatorPill"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClickCreatorPill"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  NEWTABLE R3 0 0
  LOADN R4 0
  NEWTABLE R5 0 2
  GETTABLEKS R8 R1 K2 ["SelectedUsers"]
  GETTABLEKS R9 R1 K3 ["SelectedGroups"]
  SETLIST R5 R8 2 [1]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  MOVE R10 R9
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R15 R0 K4 ["getKey"]
  MOVE R16 R14
  CALL R15 1 1
  GETTABLEKS R17 R14 K5 ["Index"]
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R14 K5 ["Index"]
  JUMP [+1]
  MOVE R16 R4
  GETUPVAL R18 0
  CALL R18 0 1
  JUMPIFNOT R18 [+32]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K6 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K12 [{"LayoutOrder", "CreatorId", "CreatorName", "CreatorType", "OnActivated"}]
  SETTABLEKS R16 R19 K7 ["LayoutOrder"]
  GETTABLEKS R20 R14 K13 ["Id"]
  SETTABLEKS R20 R19 K8 ["CreatorId"]
  GETTABLEKS R21 R14 K14 ["Name"]
  JUMPIFNOT R21 [+3]
  GETTABLEKS R20 R14 K14 ["Name"]
  JUMP [+1]
  LOADK R20 K15 [""]
  SETTABLEKS R20 R19 K9 ["CreatorName"]
  GETTABLEKS R20 R14 K16 ["Type"]
  SETTABLEKS R20 R19 K10 ["CreatorType"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R0
  CAPTURE VAL R16
  CAPTURE VAL R14
  SETTABLEKS R20 R19 K11 ["OnActivated"]
  CALL R17 2 1
  JUMP [+30]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K6 ["createElement"]
  LOADK R18 K17 ["TextButton"]
  NEWTABLE R19 4 0
  SETTABLEKS R16 R19 K7 ["LayoutOrder"]
  GETIMPORT R20 K20 [UDim2.fromOffset]
  LOADN R21 70
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K21 ["Size"]
  GETTABLEKS R20 R14 K14 ["Name"]
  SETTABLEKS R20 R19 K22 ["Text"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K23 ["Event"]
  GETTABLEKS R20 R21 K24 ["Activated"]
  NEWCLOSURE R21 P1
  CAPTURE VAL R0
  CAPTURE VAL R16
  CAPTURE VAL R14
  SETTABLE R21 R19 R20
  CALL R17 2 1
  SETTABLE R17 R3 R15
  ADDK R4 R4 K25 [1]
  FORGLOOP R10 2 [-79]
  FORGLOOP R5 2 [-85]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K26 ["new"]
  CALL R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K31 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R9 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K27 ["AutomaticSize"]
  GETIMPORT R9 K36 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K28 ["HorizontalAlignment"]
  GETIMPORT R9 K39 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K29 ["Layout"]
  GETTABLEKS R9 R1 K7 ["LayoutOrder"]
  SETTABLEKS R9 R8 K7 ["LayoutOrder"]
  LOADN R9 6
  SETTABLEKS R9 R8 K30 ["Spacing"]
  DUPTABLE R9 K42 [{"LiveSearchBar", "SelectedPills"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K50 [{"defaultTextKey", "GetKey", "LayoutOrder", "OnSelectItem", "results", "searchTerm", "updateSearch", "width"}]
  LOADK R13 K51 ["SearchBarCreatorAndGroupText"]
  SETTABLEKS R13 R12 K43 ["defaultTextKey"]
  GETTABLEKS R13 R0 K4 ["getKey"]
  SETTABLEKS R13 R12 K44 ["GetKey"]
  NAMECALL R13 R5 K52 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  GETTABLEKS R13 R0 K53 ["onSelectCreator"]
  SETTABLEKS R13 R12 K45 ["OnSelectItem"]
  GETTABLEKS R13 R1 K54 ["CreatorResults"]
  SETTABLEKS R13 R12 K46 ["results"]
  GETTABLEKS R13 R1 K55 ["SearchTerm"]
  SETTABLEKS R13 R12 K47 ["searchTerm"]
  GETTABLEKS R13 R0 K56 ["updateUserSearch"]
  SETTABLEKS R13 R12 K48 ["updateSearch"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K57 ["SEARCH_BAR_WIDTH"]
  SETTABLEKS R13 R12 K49 ["width"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K40 ["LiveSearchBar"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K31 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R13 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K27 ["AutomaticSize"]
  GETIMPORT R13 K36 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K28 ["HorizontalAlignment"]
  GETIMPORT R13 K39 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K29 ["Layout"]
  NAMECALL R13 R5 K52 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  LOADN R13 6
  SETTABLEKS R13 R12 K30 ["Spacing"]
  MOVE R13 R3
  CALL R10 3 1
  SETTABLEKS R10 R9 K41 ["SelectedPills"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_10:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["groups"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"manageableGroups"}]
  GETTABLEKS R4 R2 K1 ["manageableGroups"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K1 ["manageableGroups"]
  RETURN R3 1

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K2 [{"getManageableGroups", "userGroupSearchRequest"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getManageableGroups"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["userGroupSearchRequest"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K10 ["UI"]
  GETTABLEKS R5 R6 K11 ["Pane"]
  GETTABLEKS R7 R0 K12 ["Core"]
  GETTABLEKS R6 R7 K13 ["Util"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R6 K14 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R6 K15 ["debounce"]
  CALL R8 1 1
  GETTABLEKS R9 R4 K16 ["ContextServices"]
  GETTABLEKS R10 R9 K17 ["withContext"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K12 ["Core"]
  GETTABLEKS R13 R14 K16 ["ContextServices"]
  GETTABLEKS R12 R13 K18 ["NetworkContext"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R16 R0 K12 ["Core"]
  GETTABLEKS R15 R16 K19 ["Components"]
  GETTABLEKS R14 R15 K20 ["SearchOptions"]
  GETTABLEKS R13 R14 K21 ["LiveSearchBar"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K12 ["Core"]
  GETTABLEKS R15 R16 K19 ["Components"]
  GETTABLEKS R14 R15 K22 ["CreatorPill"]
  CALL R13 1 1
  GETTABLEKS R16 R0 K12 ["Core"]
  GETTABLEKS R15 R16 K23 ["Networking"]
  GETTABLEKS R14 R15 K24 ["Requests"]
  GETIMPORT R15 K6 [require]
  GETTABLEKS R16 R14 K25 ["GetManageableGroupsRequest"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R17 R14 K26 ["UserAndGroupLiveSearchRequest"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R20 R0 K12 ["Core"]
  GETTABLEKS R19 R20 K27 ["Types"]
  GETTABLEKS R18 R19 K28 ["CreatorTypes"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K12 ["Core"]
  GETTABLEKS R20 R21 K27 ["Types"]
  GETTABLEKS R19 R20 K29 ["GroupTypes"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K12 ["Core"]
  GETTABLEKS R21 R22 K27 ["Types"]
  GETTABLEKS R20 R21 K30 ["SearchOptionsTypes"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R24 R0 K12 ["Core"]
  GETTABLEKS R23 R24 K13 ["Util"]
  GETTABLEKS R22 R23 K31 ["SharedFlags"]
  GETTABLEKS R21 R22 K32 ["getFFlagToolboxPillsForCreators"]
  CALL R20 1 1
  GETIMPORT R21 K34 [game]
  LOADK R23 K35 ["ToolboxLiveSearchDebounceWait"]
  NAMECALL R21 R21 K36 ["GetFastInt"]
  CALL R21 2 1
  GETTABLEKS R23 R4 K13 ["Util"]
  GETTABLEKS R22 R23 K37 ["LayoutOrderIterator"]
  GETTABLEKS R23 R2 K38 ["PureComponent"]
  LOADK R25 K39 ["UserAndGroupFilter"]
  NAMECALL R23 R23 K40 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K41 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R21
  SETTABLEKS R24 R23 K42 ["init"]
  DUPCLOSURE R24 K43 [PROTO_6]
  SETTABLEKS R24 R23 K44 ["didMount"]
  DUPCLOSURE R24 K45 [PROTO_9]
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R22
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R7
  SETTABLEKS R24 R23 K46 ["render"]
  MOVE R24 R10
  DUPTABLE R25 K48 [{"Network"}]
  SETTABLEKS R11 R25 K47 ["Network"]
  CALL R24 1 1
  MOVE R25 R23
  CALL R24 1 1
  MOVE R23 R24
  DUPCLOSURE R24 K49 [PROTO_10]
  DUPCLOSURE R25 K50 [PROTO_13]
  CAPTURE VAL R15
  CAPTURE VAL R16
  GETTABLEKS R26 R3 K51 ["connect"]
  MOVE R27 R24
  MOVE R28 R25
  CALL R26 2 1
  MOVE R27 R23
  CALL R26 1 -1
  RETURN R26 -1

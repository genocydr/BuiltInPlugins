PROTO_0:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R8 R6 K2 ["Part0"]
  GETTABLEKS R7 R8 K3 ["Name"]
  JUMPIFNOTEQ R7 R0 [+11]
  GETTABLEKS R10 R6 K4 ["Part1"]
  GETTABLEKS R9 R10 K3 ["Name"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K7 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [inext] [-17]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+26]
  GETUPVAL R2 2
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R9 R6 K8 ["Attachment0"]
  GETTABLEKS R8 R9 K9 ["Parent"]
  GETTABLEKS R7 R8 K3 ["Name"]
  JUMPIFNOTEQ R7 R0 [+13]
  GETTABLEKS R11 R6 K10 ["Attachment1"]
  GETTABLEKS R10 R11 K9 ["Parent"]
  GETTABLEKS R9 R10 K3 ["Name"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K7 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-21]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+16]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["SetSelectedTracks"]
  NEWTABLE R3 0 1
  NEWTABLE R4 0 1
  MOVE R5 R1
  SETLIST R4 R5 1 [1]
  SETLIST R3 R4 1 [1]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["index"]
  GETTABLEKS R4 R1 K0 ["index"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  LOADN R2 1
  NEWTABLE R3 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getChildren"]
  MOVE R5 R0
  CALL R4 1 1
  GETIMPORT R5 K2 [ipairs]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["state"]
  GETTABLEKS R6 R8 K4 ["treeArray"]
  CALL R5 1 3
  FORGPREP_INEXT R5
  JUMPIFNOTEQ R9 R0 [+2]
  MOVE R2 R8
  GETIMPORT R10 K2 [ipairs]
  MOVE R11 R4
  CALL R10 1 3
  FORGPREP_INEXT R10
  JUMPIFNOTEQ R14 R9 [+20]
  JUMPIFNOT R1 [+7]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K5 ["props"]
  GETTABLEKS R16 R17 K6 ["Chain"]
  GETTABLE R15 R16 R14
  JUMPIFNOT R15 [+11]
  DUPTABLE R17 K9 [{"index", "element"}]
  SETTABLEKS R8 R17 K7 ["index"]
  SETTABLEKS R14 R17 K8 ["element"]
  FASTCALL2 TABLE_INSERT R3 R17 [+4]
  MOVE R16 R3
  GETIMPORT R15 K12 [table.insert]
  CALL R15 2 0
  FORGLOOP R10 2 [inext] [-22]
  FORGLOOP R5 2 [inext] [-32]
  GETIMPORT R5 K14 [table.sort]
  MOVE R6 R3
  DUPCLOSURE R7 K15 [PROTO_2]
  CALL R5 2 0
  MOVE R5 R2
  LENGTH R6 R3
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+5]
  LENGTH R7 R3
  GETTABLE R6 R3 R7
  GETTABLEKS R5 R6 K7 ["index"]
  SUB R7 R5 R2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K16 ["TRACK_HEIGHT"]
  MUL R6 R7 R8
  RETURN R6 1

PROTO_4:
  DUPTABLE R1 K1 [{"expandedItems"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Dictionary"]
  GETTABLEKS R2 R3 K3 ["join"]
  GETTABLEKS R3 R0 K0 ["expandedItems"]
  NEWTABLE R4 1 0
  GETUPVAL R5 1
  GETTABLEKS R8 R0 K0 ["expandedItems"]
  GETUPVAL R9 1
  GETTABLE R7 R8 R9
  NOT R6 R7
  SETTABLE R6 R4 R5
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["expandedItems"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  FASTCALL2 TABLE_INSERT R2 R0 [+5]
  MOVE R4 R2
  MOVE R5 R0
  GETIMPORT R3 K2 [table.insert]
  CALL R3 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["state"]
  GETTABLEKS R4 R5 K4 ["expandedItems"]
  GETTABLE R3 R4 R0
  JUMPIFNOT R3 [+19]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["getChildren"]
  MOVE R4 R0
  CALL R3 1 1
  GETIMPORT R4 K7 [ipairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["contributeItem"]
  MOVE R10 R8
  ADDK R11 R1 K9 [1]
  MOVE R12 R2
  CALL R9 3 0
  FORGLOOP R4 2 [inext] [-8]
  RETURN R2 1

PROTO_7:
  JUMPIFNOT R0 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["expandedItems"]
  GETTABLEKS R2 R0 K1 ["expandedItems"]
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["contributeItem"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["findRootPart"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["props"]
  GETTABLEKS R5 R6 K5 ["RootInstance"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K6 ["Name"]
  LOADN R4 0
  MOVE R5 R1
  CALL R2 3 0
  GETUPVAL R2 0
  DUPTABLE R4 K8 [{"treeArray"}]
  SETTABLEKS R1 R4 K7 ["treeArray"]
  NAMECALL R2 R2 K9 ["setState"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K10 ["OnTreeUpdated"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R5 R4 K1 ["SelectedTrack"]
  GETTABLEKS R6 R0 K2 ["item"]
  DUPTABLE R7 K19 [{"Chain", "Depth", "GetVerticalLineHeight", "IsExpanded", "IsLeafNode", "Item", "Key", "OnInputBegan", "OnToggleExpanded", "PinnedParts", "Position", "RootInstance", "IKMode", "IsSelected", "Size", "TogglePinnedPart"}]
  GETTABLEKS R8 R4 K3 ["Chain"]
  SETTABLEKS R8 R7 K3 ["Chain"]
  GETTABLEKS R8 R0 K20 ["depth"]
  SETTABLEKS R8 R7 K4 ["Depth"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K21 ["getVerticalLineHeight"]
  SETTABLEKS R8 R7 K5 ["GetVerticalLineHeight"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K22 ["state"]
  GETTABLEKS R9 R10 K23 ["expandedItems"]
  GETTABLE R8 R9 R6
  SETTABLEKS R8 R7 K6 ["IsExpanded"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K24 ["getChildren"]
  MOVE R11 R6
  CALL R10 1 1
  LENGTH R9 R10
  JUMPIFEQKN R9 K25 [0] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["IsLeafNode"]
  SETTABLEKS R6 R7 K8 ["Item"]
  SETTABLEKS R1 R7 K9 ["Key"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K26 ["onInputBegan"]
  SETTABLEKS R8 R7 K10 ["OnInputBegan"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K27 ["toggleExpanded"]
  SETTABLEKS R8 R7 K11 ["OnToggleExpanded"]
  GETTABLEKS R8 R4 K12 ["PinnedParts"]
  SETTABLEKS R8 R7 K12 ["PinnedParts"]
  SETTABLEKS R2 R7 K13 ["Position"]
  GETTABLEKS R8 R4 K14 ["RootInstance"]
  SETTABLEKS R8 R7 K14 ["RootInstance"]
  GETTABLEKS R8 R4 K15 ["IKMode"]
  SETTABLEKS R8 R7 K15 ["IKMode"]
  MOVE R8 R5
  JUMPIFNOT R8 [+5]
  GETTABLEN R9 R5 1
  JUMPIFEQ R9 R6 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K16 ["IsSelected"]
  SETTABLEKS R3 R7 K17 ["Size"]
  GETTABLEKS R8 R4 K18 ["TogglePinnedPart"]
  SETTABLEKS R8 R7 K18 ["TogglePinnedPart"]
  RETURN R7 1

PROTO_9:
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getMotors"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["RootInstance"]
  CALL R2 1 1
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+9]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["getAnimationConstraints"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["RootInstance"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  GETIMPORT R4 K5 [ipairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R10 R8 K6 ["Part1"]
  GETTABLEKS R9 R10 K7 ["Name"]
  LOADB R10 1
  SETTABLE R10 R1 R9
  FORGLOOP R4 2 [inext] [-7]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+14]
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R11 R8 K8 ["Attachment1"]
  GETTABLEKS R10 R11 K9 ["Parent"]
  GETTABLEKS R9 R10 K7 ["Name"]
  LOADB R10 1
  SETTABLE R10 R1 R9
  FORGLOOP R4 2 [-9]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["findRootPart"]
  GETTABLEKS R6 R0 K1 ["props"]
  GETTABLEKS R5 R6 K2 ["RootInstance"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K7 ["Name"]
  LOADB R6 1
  SETTABLE R6 R1 R5
  DUPTABLE R5 K13 [{"expandedItems", "treeArray"}]
  SETTABLEKS R1 R5 K11 ["expandedItems"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K12 ["treeArray"]
  SETTABLEKS R5 R0 K14 ["state"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  SETTABLEKS R5 R0 K15 ["getChildren"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K16 ["onInputBegan"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R5 R0 K17 ["getVerticalLineHeight"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R5 R0 K18 ["toggleExpanded"]
  NEWCLOSURE R5 P4
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K19 ["contributeItem"]
  NEWCLOSURE R5 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R5 R0 K20 ["calculateRows"]
  NEWCLOSURE R5 P6
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K21 ["getRowProps"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["calculateRows"]
  CALL R1 0 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R0 K0 ["calculateRows"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Position"]
  GETTABLEKS R3 R1 K2 ["Size"]
  GETTABLEKS R4 R1 K3 ["RootInstance"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["findRootPart"]
  MOVE R6 R4
  CALL R5 1 1
  NEWTABLE R6 0 0
  GETTABLEKS R9 R5 K5 ["Name"]
  FASTCALL2 TABLE_INSERT R6 R9 [+4]
  MOVE R8 R6
  GETIMPORT R7 K8 [table.insert]
  CALL R7 2 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["createElement"]
  LOADK R8 K10 ["Frame"]
  DUPTABLE R9 K12 [{"Position", "Size", "BackgroundTransparency"}]
  SETTABLEKS R2 R9 K1 ["Position"]
  SETTABLEKS R3 R9 K2 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K11 ["BackgroundTransparency"]
  DUPTABLE R10 K14 [{"TreeView"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K22 [{"RootItems", "GetChildren", "Expansion", "RowComponent", "RowHeight", "GetRowProps", "Style"}]
  SETTABLEKS R6 R13 K15 ["RootItems"]
  GETTABLEKS R14 R0 K23 ["getChildren"]
  SETTABLEKS R14 R13 K16 ["GetChildren"]
  GETTABLEKS R15 R0 K24 ["state"]
  GETTABLEKS R14 R15 K25 ["expandedItems"]
  SETTABLEKS R14 R13 K17 ["Expansion"]
  GETUPVAL R14 3
  SETTABLEKS R14 R13 K18 ["RowComponent"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K26 ["TRACK_HEIGHT"]
  SETTABLEKS R14 R13 K19 ["RowHeight"]
  GETTABLEKS R14 R0 K27 ["getRowProps"]
  SETTABLEKS R14 R13 K20 ["GetRowProps"]
  LOADK R14 K28 ["BorderBox"]
  SETTABLEKS R14 R13 K21 ["Style"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K13 ["TreeView"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["RigUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["RigInfo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["TreeView"]
  GETTABLEKS R9 R6 K17 ["ContextServices"]
  GETTABLEKS R10 R9 K18 ["withContext"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K19 ["LuaFlags"]
  GETTABLEKS R12 R13 K20 ["GetFFlagAnimationConstraints"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETTABLEKS R14 R15 K22 ["IK"]
  GETTABLEKS R13 R14 K23 ["IKTreeRow"]
  CALL R12 1 1
  GETTABLEKS R13 R5 K24 ["PureComponent"]
  LOADK R15 K25 ["IKTreeView"]
  NAMECALL R13 R13 K26 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K27 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K28 ["init"]
  DUPCLOSURE R14 K29 [PROTO_10]
  SETTABLEKS R14 R13 K30 ["didMount"]
  DUPCLOSURE R14 K31 [PROTO_11]
  SETTABLEKS R14 R13 K32 ["didUpdate"]
  DUPCLOSURE R14 K33 [PROTO_12]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R2
  SETTABLEKS R14 R13 K34 ["render"]
  MOVE R14 R10
  DUPTABLE R15 K36 [{"Stylizer"}]
  GETTABLEKS R16 R9 K35 ["Stylizer"]
  SETTABLEKS R16 R15 K35 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1

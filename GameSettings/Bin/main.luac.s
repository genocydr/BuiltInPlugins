PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+17]
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["GetDescendants"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_NEXT R1
  LOADK R8 K3 ["GuiObject"]
  NAMECALL R6 R5 K4 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  SETTABLEKS R0 R5 K5 ["Active"]
  FORGLOOP R1 2 [-8]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["unmount"]
  GETUPVAL R2 1
  CALL R1 1 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  GETUPVAL R1 3
  LOADB R2 1
  CALL R1 1 0
  GETUPVAL R1 4
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["Destroy"]
  CALL R0 1 0
  GETUPVAL R0 3
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R0 4
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  LOADNIL R0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Size"]
  JUMPIF R1 [+5]
  GETIMPORT R1 K3 [Vector2.new]
  LOADN R2 217
  LOADN R3 197
  CALL R1 2 1
  LOADNIL R2
  GETUPVAL R3 2
  GETUPVAL R6 3
  JUMPIFNOT R6 [+9]
  GETUPVAL R8 1
  GETTABLEKS R6 R8 K4 ["Title"]
  GETUPVAL R7 4
  NAMECALL R7 R7 K5 ["GenerateGUID"]
  CALL R7 1 1
  CONCAT R5 R6 R7
  JUMP [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Title"]
  DUPTABLE R6 K7 [{"Size", "Modal"}]
  SETTABLEKS R1 R6 K0 ["Size"]
  GETUPVAL R8 5
  NOT R7 R8
  SETTABLEKS R7 R6 K6 ["Modal"]
  NAMECALL R3 R3 K8 ["CreateQWidgetPluginGui"]
  CALL R3 3 1
  MOVE R2 R3
  LOADB R3 1
  SETTABLEKS R3 R2 K9 ["Enabled"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Title"]
  SETTABLEKS R3 R2 K4 ["Title"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 7
  DUPTABLE R5 K16 [{"theme", "mouse", "localization", "pluginGui", "plugin"}]
  GETUPVAL R6 8
  CALL R6 0 1
  SETTABLEKS R6 R5 K11 ["theme"]
  GETUPVAL R6 2
  NAMECALL R6 R6 K17 ["GetMouse"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K12 ["mouse"]
  GETUPVAL R6 9
  SETTABLEKS R6 R5 K13 ["localization"]
  GETUPVAL R6 10
  SETTABLEKS R6 R5 K14 ["pluginGui"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K15 ["plugin"]
  DUPTABLE R6 K19 [{"Content"}]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 11
  GETUPVAL R11 12
  GETTABLEKS R10 R11 K20 ["Dictionary"]
  GETTABLEKS R9 R10 K21 ["join"]
  GETUPVAL R10 1
  DUPTABLE R11 K23 [{"OnResult"}]
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U6
  CAPTURE REF R0
  CAPTURE REF R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U13
  SETTABLEKS R12 R11 K22 ["OnResult"]
  CALL R9 2 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K18 ["Content"]
  CALL R3 3 1
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U6
  CAPTURE REF R0
  CAPTURE REF R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U13
  NAMECALL R4 R2 K24 ["BindToClose"]
  CALL R4 2 0
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K25 ["mount"]
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 1
  MOVE R0 R4
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  CALL R2 1 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+16]
  GETIMPORT R2 K1 [tick]
  CALL R2 0 1
  GETUPVAL R3 0
  SUB R1 R2 R3
  LOADNIL R2
  SETUPVAL R2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["onCloseEvent"]
  JUMPIFNOT R0 [+2]
  LOADK R3 K3 ["Save"]
  JUMP [+1]
  LOADK R3 K4 ["Cancel"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["Closed"]
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 4
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["Enabled"]
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K3 ["unmount"]
  GETUPVAL R1 6
  CALL R0 1 0
  GETUPVAL R0 7
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 8
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 8
  NAMECALL R0 R0 K4 ["destroy"]
  CALL R0 1 0
  GETUPVAL R0 9
  GETUPVAL R1 10
  JUMPIFNOT R1 [+16]
  GETIMPORT R2 K6 [tick]
  CALL R2 0 1
  GETUPVAL R3 10
  SUB R1 R2 R3
  LOADNIL R2
  SETUPVAL R2 10
  GETUPVAL R3 11
  GETTABLEKS R2 R3 K7 ["onCloseEvent"]
  JUMPIFNOT R0 [+2]
  LOADK R3 K8 ["Save"]
  JUMP [+1]
  LOADK R3 K9 ["Cancel"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  JUMPIFNOT R0 [+3]
  GETUPVAL R1 0
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["Open"]
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["Enabled"]
  JUMPIF R1 [+4]
  GETUPVAL R1 4
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["Enabled"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["Status"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["Working"]
  JUMPIFNOTEQ R2 R4 [+5]
  JUMPIF R0 [+3]
  MOVE R4 R3
  CALL R4 0 0
  RETURN R0 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["Closed"]
  JUMPIFEQ R2 R4 [+148]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["Error"]
  JUMPIFNOTEQ R2 R4 [+12]
  JUMPIFNOT R0 [+10]
  GETUPVAL R4 0
  GETUPVAL R6 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["Open"]
  CALL R6 1 -1
  NAMECALL R4 R4 K6 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0
  GETTABLEKS R5 R1 K7 ["Settings"]
  GETTABLEKS R4 R5 K8 ["Changed"]
  MOVE R5 R4
  JUMPIFNOT R5 [+4]
  GETUPVAL R6 11
  MOVE R7 R4
  CALL R6 1 1
  NOT R5 R6
  JUMPIFNOT R5 [+76]
  JUMPIF R0 [+75]
  LOADNIL R6
  DUPTABLE R7 K13 [{"Size", "Title", "Header", "Buttons"}]
  GETIMPORT R8 K16 [Vector2.new]
  LOADN R9 87
  LOADN R10 145
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Size"]
  GETUPVAL R8 12
  LOADK R10 K17 ["General"]
  LOADK R11 K18 ["CancelDialogHeader"]
  NAMECALL R8 R8 K19 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Title"]
  GETUPVAL R8 12
  LOADK R10 K17 ["General"]
  LOADK R11 K20 ["CancelDialogBody"]
  NAMECALL R8 R8 K19 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["Header"]
  NEWTABLE R8 0 2
  GETUPVAL R9 12
  LOADK R11 K17 ["General"]
  LOADK R12 K21 ["ReplyNo"]
  NAMECALL R9 R9 K19 ["getText"]
  CALL R9 3 1
  GETUPVAL R10 12
  LOADK R12 K17 ["General"]
  LOADK R13 K22 ["ReplyYes"]
  NAMECALL R10 R10 K19 ["getText"]
  CALL R10 3 -1
  SETLIST R8 R9 -1 [1]
  SETTABLEKS R8 R7 K12 ["Buttons"]
  MOVE R6 R7
  GETUPVAL R8 13
  MOVE R9 R6
  GETUPVAL R11 14
  GETTABLEKS R10 R11 K15 ["new"]
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U15
  CAPTURE VAL R9
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U5
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U12
  CAPTURE UPVAL U4
  CAPTURE VAL R8
  CAPTURE UPVAL U22
  CALL R10 1 1
  MOVE R7 R10
  NEWCLOSURE R9 P2
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R7 R7 K23 ["andThen"]
  CALL R7 2 0
  RETURN R0 0
  GETUPVAL R6 0
  GETUPVAL R8 2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K3 ["Closed"]
  CALL R8 1 -1
  NAMECALL R6 R6 K6 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R6 4
  LOADB R7 0
  SETTABLEKS R7 R6 K24 ["Enabled"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K25 ["unmount"]
  GETUPVAL R7 6
  CALL R6 1 0
  GETUPVAL R6 7
  JUMPIFNOT R6 [+6]
  GETUPVAL R6 8
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 8
  NAMECALL R6 R6 K26 ["destroy"]
  CALL R6 1 0
  GETUPVAL R6 9
  JUMPIFNOT R6 [+16]
  GETIMPORT R7 K28 [tick]
  CALL R7 0 1
  GETUPVAL R8 9
  SUB R6 R7 R8
  LOADNIL R7
  SETUPVAL R7 9
  GETUPVAL R8 10
  GETTABLEKS R7 R8 K29 ["onCloseEvent"]
  JUMPIFNOT R0 [+2]
  LOADK R8 K30 ["Save"]
  JUMP [+1]
  LOADK R8 K31 ["Cancel"]
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Name"]
  GETIMPORT R1 K3 [Vector2.new]
  LOADN R2 192
  LOADN R3 88
  CALL R1 2 1
  GETUPVAL R2 2
  MOVE R4 R0
  DUPTABLE R5 K9 [{"Size", "MinSize", "Resizable", "Modal", "InitialEnabled"}]
  SETTABLEKS R1 R5 K4 ["Size"]
  SETTABLEKS R1 R5 K5 ["MinSize"]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["Resizable"]
  GETUPVAL R7 3
  NOT R6 R7
  SETTABLEKS R6 R5 K7 ["Modal"]
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["InitialEnabled"]
  NAMECALL R2 R2 K10 ["CreateQWidgetPluginGui"]
  CALL R2 3 1
  SETUPVAL R2 1
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Name"]
  SETTABLEKS R3 R2 K0 ["Name"]
  GETUPVAL R2 1
  GETUPVAL R3 4
  LOADK R5 K11 ["General"]
  LOADK R6 K12 ["PluginName"]
  NAMECALL R3 R3 K13 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K14 ["Title"]
  GETUPVAL R2 1
  GETIMPORT R3 K18 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R3 R2 K16 ["ZIndexBehavior"]
  GETUPVAL R2 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U5
  NAMECALL R2 R2 K19 ["BindToClose"]
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+9]
  GETIMPORT R3 K1 [game]
  LOADK R5 K2 ["TeamCreateService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  NAMECALL R3 R3 K4 ["CloseGameIfUserDoesntHavePerms"]
  CALL R3 1 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+12]
  GETUPVAL R3 1
  NAMECALL R3 R3 K5 ["getState"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K6 ["Status"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["Closed"]
  JUMPIFEQ R4 R5 [+2]
  RETURN R0 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K8 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K17 [{"store", "showDialog", "theme", "mouse", "localization", "pluginGui", "plugin", "worldRootPhysics"}]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K9 ["store"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K10 ["showDialog"]
  GETUPVAL R6 6
  CALL R6 0 1
  SETTABLEKS R6 R5 K11 ["theme"]
  GETUPVAL R6 7
  NAMECALL R6 R6 K18 ["GetMouse"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K12 ["mouse"]
  GETUPVAL R6 8
  SETTABLEKS R6 R5 K13 ["localization"]
  GETUPVAL R6 9
  SETTABLEKS R6 R5 K14 ["pluginGui"]
  GETUPVAL R6 7
  SETTABLEKS R6 R5 K15 ["plugin"]
  GETUPVAL R6 10
  SETTABLEKS R6 R5 K16 ["worldRootPhysics"]
  DUPTABLE R6 K20 [{"mainView"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K8 ["createElement"]
  GETUPVAL R8 11
  DUPTABLE R9 K23 [{"OnClose", "FirstSelectedId"}]
  GETUPVAL R10 12
  SETTABLEKS R10 R9 K21 ["OnClose"]
  SETTABLEKS R2 R9 K22 ["FirstSelectedId"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["mainView"]
  CALL R3 3 1
  GETUPVAL R4 1
  GETUPVAL R6 13
  CALL R6 0 -1
  NAMECALL R4 R4 K24 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 1
  GETUPVAL R6 14
  MOVE R7 R0
  CALL R6 1 -1
  NAMECALL R4 R4 K24 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 1
  GETUPVAL R6 15
  MOVE R7 R1
  CALL R6 1 -1
  NAMECALL R4 R4 K24 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 1
  GETUPVAL R6 16
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K25 ["Open"]
  CALL R6 1 -1
  NAMECALL R4 R4 K24 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K26 ["mount"]
  MOVE R5 R3
  GETUPVAL R6 9
  CALL R4 2 1
  SETUPVAL R4 17
  GETUPVAL R4 9
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["Enabled"]
  GETUPVAL R4 18
  JUMPIFNOT R4 [+26]
  GETIMPORT R4 K1 [game]
  LOADK R6 K28 ["StudioService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  NAMECALL R4 R4 K29 ["HasInternalPermission"]
  CALL R4 1 1
  JUMPIFNOT R4 [+16]
  GETUPVAL R6 20
  GETTABLEKS R5 R6 K30 ["DeveloperTools"]
  GETTABLEKS R4 R5 K31 ["forPlugin"]
  LOADK R5 K32 ["Game Settings"]
  GETUPVAL R6 7
  CALL R4 2 1
  SETUPVAL R4 19
  GETUPVAL R4 19
  LOADK R6 K33 ["Roact tree"]
  GETUPVAL R7 17
  GETUPVAL R8 3
  NAMECALL R4 R4 K34 ["addRoactTree"]
  CALL R4 4 0
  GETUPVAL R5 21
  GETTABLEKS R4 R5 K35 ["onOpenEvent"]
  GETUPVAL R5 7
  NAMECALL R5 R5 K36 ["GetStudioUserId"]
  CALL R5 1 1
  MOVE R6 R0
  CALL R4 2 0
  GETIMPORT R4 K38 [tick]
  CALL R4 0 1
  SETUPVAL R4 22
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["GameId"]
  GETIMPORT R2 K1 [game]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["Status"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+28]
  GETUPVAL R1 1
  GETTABLEKS R4 R0 K0 ["Status"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["Closed"]
  JUMPIFNOTEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  NAMECALL R1 R1 K2 ["SetActive"]
  CALL R1 2 0
  GETUPVAL R1 3
  GETTABLEKS R3 R0 K0 ["Status"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["Working"]
  JUMPIFNOTEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  CALL R1 1 0
  GETTABLEKS R1 R0 K0 ["Status"]
  SETUPVAL R1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["GameId"]
  GETIMPORT R3 K1 [game]
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Name"]
  SETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["mainButton"]
  GETUPVAL R1 3
  NAMECALL R1 R1 K2 ["IsEdit"]
  CALL R1 1 1
  JUMPIFNOT R1 [+38]
  GETUPVAL R1 4
  CALL R1 0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["ClickableWhenViewportHidden"]
  LOADB R1 1
  SETTABLEKS R1 R0 K4 ["Enabled"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["mainButtonClickedSignal"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 0
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K7 ["changed"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NAMECALL R1 R1 K8 ["connect"]
  CALL R1 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K10 ["signals"]
  GETTABLEKS R1 R2 K9 ["StudioService.OnOpenGameSettings"]
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K6 ["Connect"]
  CALL R1 2 0
  RETURN R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["Enabled"]
  RETURN R0 0

PROTO_17:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["DebugBuiltInPluginModalsNotBlocking"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K4 ["DeveloperSubscriptionsEnabled"]
  NAMECALL R3 R3 K3 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K5 ["GameSettingsRoactInspector"]
  LOADB R7 0
  NAMECALL R4 R4 K6 ["DefineFastFlag"]
  CALL R4 3 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K7 ["TranslateGameModeratedErrors"]
  LOADB R8 0
  NAMECALL R5 R5 K6 ["DefineFastFlag"]
  CALL R5 3 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K8 ["GameSettingsEvictIfLostPerms"]
  NAMECALL R6 R6 K3 ["GetFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K9 ["GameSettingsSupportMultiplePopups"]
  LOADB R10 0
  NAMECALL R7 R7 K6 ["DefineFastFlag"]
  CALL R7 3 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K10 ["RunService"]
  NAMECALL R8 R8 K11 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K12 ["HttpService"]
  NAMECALL R9 R9 K11 ["GetService"]
  CALL R9 2 1
  GETIMPORT R12 K14 [script]
  GETTABLEKS R11 R12 K15 ["Parent"]
  GETTABLEKS R10 R11 K15 ["Parent"]
  GETIMPORT R11 K17 [require]
  GETTABLEKS R13 R10 K18 ["Packages"]
  GETTABLEKS R12 R13 K19 ["Roact"]
  CALL R11 1 1
  GETIMPORT R12 K17 [require]
  GETTABLEKS R14 R10 K18 ["Packages"]
  GETTABLEKS R13 R14 K20 ["Rodux"]
  CALL R12 1 1
  GETIMPORT R13 K17 [require]
  GETTABLEKS R15 R10 K18 ["Packages"]
  GETTABLEKS R14 R15 K21 ["Cryo"]
  CALL R13 1 1
  GETIMPORT R14 K17 [require]
  GETTABLEKS R16 R10 K18 ["Packages"]
  GETTABLEKS R15 R16 K22 ["Framework"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K23 ["ContextServices"]
  GETTABLEKS R16 R14 K24 ["Util"]
  GETTABLEKS R17 R16 K25 ["Promise"]
  GETIMPORT R18 K17 [require]
  GETTABLEKS R21 R10 K26 ["Src"]
  GETTABLEKS R20 R21 K27 ["Components"]
  GETTABLEKS R19 R20 K28 ["MainView"]
  CALL R18 1 1
  GETIMPORT R19 K17 [require]
  GETTABLEKS R23 R10 K26 ["Src"]
  GETTABLEKS R22 R23 K27 ["Components"]
  GETTABLEKS R21 R22 K29 ["Dialog"]
  GETTABLEKS R20 R21 K30 ["SimpleDialog"]
  CALL R19 1 1
  GETIMPORT R20 K17 [require]
  GETTABLEKS R23 R10 K26 ["Src"]
  GETTABLEKS R22 R23 K31 ["Reducers"]
  GETTABLEKS R21 R22 K32 ["MainReducer"]
  CALL R20 1 1
  GETIMPORT R21 K17 [require]
  GETTABLEKS R24 R10 K26 ["Src"]
  GETTABLEKS R23 R24 K27 ["Components"]
  GETTABLEKS R22 R23 K33 ["ExternalServicesWrapper"]
  CALL R21 1 1
  GETIMPORT R22 K17 [require]
  GETTABLEKS R25 R10 K26 ["Src"]
  GETTABLEKS R24 R25 K24 ["Util"]
  GETTABLEKS R23 R24 K34 ["MakeTheme"]
  CALL R22 1 1
  GETIMPORT R23 K17 [require]
  GETTABLEKS R26 R10 K26 ["Src"]
  GETTABLEKS R25 R26 K23 ["ContextServices"]
  GETTABLEKS R24 R25 K35 ["Networking"]
  CALL R23 1 1
  GETIMPORT R24 K17 [require]
  GETTABLEKS R28 R10 K36 ["Pages"]
  GETTABLEKS R27 R28 K37 ["WorldPage"]
  GETTABLEKS R26 R27 K23 ["ContextServices"]
  GETTABLEKS R25 R26 K38 ["WorldRootPhysics"]
  CALL R24 1 1
  GETIMPORT R25 K17 [require]
  GETTABLEKS R28 R10 K26 ["Src"]
  GETTABLEKS R27 R28 K39 ["Controllers"]
  GETTABLEKS R26 R27 K40 ["GameInfoController"]
  CALL R25 1 1
  GETIMPORT R26 K17 [require]
  GETTABLEKS R29 R10 K26 ["Src"]
  GETTABLEKS R28 R29 K39 ["Controllers"]
  GETTABLEKS R27 R28 K41 ["GameMetadataController"]
  CALL R26 1 1
  GETIMPORT R27 K17 [require]
  GETTABLEKS R30 R10 K26 ["Src"]
  GETTABLEKS R29 R30 K39 ["Controllers"]
  GETTABLEKS R28 R29 K42 ["GroupMetadataController"]
  CALL R27 1 1
  GETIMPORT R28 K17 [require]
  GETTABLEKS R32 R10 K36 ["Pages"]
  GETTABLEKS R31 R32 K43 ["PermissionsPage"]
  GETTABLEKS R30 R31 K39 ["Controllers"]
  GETTABLEKS R29 R30 K44 ["GamePermissionsController"]
  CALL R28 1 1
  GETIMPORT R29 K17 [require]
  GETTABLEKS R33 R10 K36 ["Pages"]
  GETTABLEKS R32 R33 K45 ["OptionsPage"]
  GETTABLEKS R31 R32 K39 ["Controllers"]
  GETTABLEKS R30 R31 K46 ["GameOptionsController"]
  CALL R29 1 1
  GETIMPORT R30 K17 [require]
  GETTABLEKS R34 R10 K36 ["Pages"]
  GETTABLEKS R33 R34 K47 ["CommunicationPage"]
  GETTABLEKS R32 R33 K39 ["Controllers"]
  GETTABLEKS R31 R32 K48 ["CommunicationController"]
  CALL R30 1 1
  GETIMPORT R31 K17 [require]
  GETTABLEKS R35 R10 K36 ["Pages"]
  GETTABLEKS R34 R35 K49 ["MonetizationPage"]
  GETTABLEKS R33 R34 K39 ["Controllers"]
  GETTABLEKS R32 R33 K50 ["MonetizationController"]
  CALL R31 1 1
  GETIMPORT R32 K17 [require]
  GETTABLEKS R36 R10 K36 ["Pages"]
  GETTABLEKS R35 R36 K49 ["MonetizationPage"]
  GETTABLEKS R34 R35 K39 ["Controllers"]
  GETTABLEKS R33 R34 K51 ["DevSubsController"]
  CALL R32 1 1
  GETIMPORT R33 K17 [require]
  GETTABLEKS R37 R10 K36 ["Pages"]
  GETTABLEKS R36 R37 K52 ["PlacesPage"]
  GETTABLEKS R35 R36 K39 ["Controllers"]
  GETTABLEKS R34 R35 K53 ["PlacesController"]
  CALL R33 1 1
  GETIMPORT R34 K17 [require]
  GETTABLEKS R37 R10 K26 ["Src"]
  GETTABLEKS R36 R37 K39 ["Controllers"]
  GETTABLEKS R35 R36 K54 ["PolicyInfoController"]
  CALL R34 1 1
  GETIMPORT R35 K17 [require]
  GETTABLEKS R39 R10 K36 ["Pages"]
  GETTABLEKS R38 R39 K55 ["SecurityPage"]
  GETTABLEKS R37 R38 K39 ["Controllers"]
  GETTABLEKS R36 R37 K56 ["SecurityController"]
  CALL R35 1 1
  GETIMPORT R36 K17 [require]
  GETTABLEKS R40 R10 K36 ["Pages"]
  GETTABLEKS R39 R40 K43 ["PermissionsPage"]
  GETTABLEKS R38 R39 K39 ["Controllers"]
  GETTABLEKS R37 R38 K57 ["SocialController"]
  CALL R36 1 1
  GETIMPORT R37 K17 [require]
  GETTABLEKS R41 R10 K36 ["Pages"]
  GETTABLEKS R40 R41 K58 ["AvatarPage"]
  GETTABLEKS R39 R40 K39 ["Controllers"]
  GETTABLEKS R38 R39 K59 ["UniverseAvatarController"]
  CALL R37 1 1
  GETIMPORT R38 K17 [require]
  GETTABLEKS R42 R10 K36 ["Pages"]
  GETTABLEKS R41 R42 K60 ["LocalizationPage"]
  GETTABLEKS R40 R41 K39 ["Controllers"]
  GETTABLEKS R39 R40 K61 ["LocalizationPageController"]
  CALL R38 1 1
  GETIMPORT R39 K17 [require]
  GETTABLEKS R42 R10 K26 ["Src"]
  GETTABLEKS R41 R42 K24 ["Util"]
  GETTABLEKS R40 R41 K62 ["CurrentStatus"]
  CALL R39 1 1
  GETIMPORT R40 K17 [require]
  GETTABLEKS R43 R10 K26 ["Src"]
  GETTABLEKS R42 R43 K63 ["Actions"]
  GETTABLEKS R41 R42 K64 ["ResetStore"]
  CALL R40 1 1
  GETIMPORT R41 K17 [require]
  GETTABLEKS R44 R10 K26 ["Src"]
  GETTABLEKS R43 R44 K63 ["Actions"]
  GETTABLEKS R42 R43 K65 ["SetCurrentStatus"]
  CALL R41 1 1
  GETIMPORT R42 K17 [require]
  GETTABLEKS R45 R10 K26 ["Src"]
  GETTABLEKS R44 R45 K63 ["Actions"]
  GETTABLEKS R43 R44 K66 ["DiscardChanges"]
  CALL R42 1 1
  GETIMPORT R43 K17 [require]
  GETTABLEKS R46 R10 K26 ["Src"]
  GETTABLEKS R45 R46 K63 ["Actions"]
  GETTABLEKS R44 R45 K67 ["SetGameId"]
  CALL R43 1 1
  GETIMPORT R44 K17 [require]
  GETTABLEKS R47 R10 K26 ["Src"]
  GETTABLEKS R46 R47 K63 ["Actions"]
  GETTABLEKS R45 R46 K68 ["SetGame"]
  CALL R44 1 1
  GETIMPORT R45 K17 [require]
  GETTABLEKS R48 R10 K26 ["Src"]
  GETTABLEKS R47 R48 K24 ["Util"]
  GETTABLEKS R46 R47 K69 ["isEmpty"]
  CALL R45 1 1
  GETIMPORT R46 K17 [require]
  GETTABLEKS R49 R10 K26 ["Src"]
  GETTABLEKS R48 R49 K24 ["Util"]
  GETTABLEKS R47 R48 K70 ["Analytics"]
  CALL R46 1 1
  LOADNIL R47
  LOADNIL R48
  LOADNIL R49
  LOADNIL R50
  GETTABLEKS R51 R24 K71 ["new"]
  CALL R51 0 1
  NEWTABLE R52 32 0
  GETTABLEKS R53 R23 K71 ["new"]
  CALL R53 0 1
  GETTABLEKS R54 R25 K71 ["new"]
  NAMECALL R55 R53 K72 ["get"]
  CALL R55 1 -1
  CALL R54 -1 1
  GETTABLEKS R55 R26 K71 ["new"]
  NAMECALL R56 R53 K72 ["get"]
  CALL R56 1 -1
  CALL R55 -1 1
  GETTABLEKS R56 R27 K71 ["new"]
  NAMECALL R57 R53 K72 ["get"]
  CALL R57 1 -1
  CALL R56 -1 1
  GETTABLEKS R57 R28 K71 ["new"]
  NAMECALL R58 R53 K72 ["get"]
  CALL R58 1 -1
  CALL R57 -1 1
  GETTABLEKS R58 R31 K71 ["new"]
  NAMECALL R59 R53 K72 ["get"]
  CALL R59 1 -1
  CALL R58 -1 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R59 R32 K71 ["new"]
  NAMECALL R60 R53 K72 ["get"]
  CALL R60 1 -1
  CALL R59 -1 1
  JUMPIF R59 [+1]
  LOADNIL R59
  GETTABLEKS R60 R29 K71 ["new"]
  NAMECALL R61 R53 K72 ["get"]
  CALL R61 1 -1
  CALL R60 -1 1
  GETTABLEKS R61 R30 K71 ["new"]
  NAMECALL R62 R53 K72 ["get"]
  CALL R62 1 -1
  CALL R61 -1 1
  GETTABLEKS R62 R35 K71 ["new"]
  NAMECALL R63 R53 K72 ["get"]
  CALL R63 1 -1
  CALL R62 -1 1
  GETTABLEKS R63 R36 K71 ["new"]
  NAMECALL R64 R53 K72 ["get"]
  CALL R64 1 -1
  CALL R63 -1 1
  GETTABLEKS R64 R37 K71 ["new"]
  NAMECALL R65 R53 K72 ["get"]
  CALL R65 1 -1
  CALL R64 -1 1
  GETTABLEKS R65 R33 K71 ["new"]
  NAMECALL R66 R53 K72 ["get"]
  CALL R66 1 -1
  CALL R65 -1 1
  GETTABLEKS R66 R38 K71 ["new"]
  NAMECALL R67 R53 K72 ["get"]
  CALL R67 1 -1
  CALL R66 -1 1
  GETTABLEKS R67 R34 K71 ["new"]
  NAMECALL R68 R53 K72 ["get"]
  CALL R68 1 -1
  CALL R67 -1 1
  NAMECALL R68 R53 K72 ["get"]
  CALL R68 1 1
  SETTABLEKS R68 R52 K73 ["networking"]
  NAMECALL R68 R51 K72 ["get"]
  CALL R68 1 1
  SETTABLEKS R68 R52 K74 ["worldRootPhysicsController"]
  SETTABLEKS R54 R52 K75 ["gameInfoController"]
  SETTABLEKS R55 R52 K76 ["gameMetadataController"]
  SETTABLEKS R56 R52 K77 ["groupMetadataController"]
  SETTABLEKS R57 R52 K78 ["gamePermissionsController"]
  SETTABLEKS R60 R52 K79 ["gameOptionsController"]
  SETTABLEKS R61 R52 K80 ["communicationController"]
  SETTABLEKS R58 R52 K81 ["monetizationController"]
  SETTABLEKS R59 R52 K82 ["devSubsController"]
  SETTABLEKS R62 R52 K83 ["universePermissionsController"]
  SETTABLEKS R63 R52 K84 ["socialController"]
  SETTABLEKS R64 R52 K85 ["universeAvatarController"]
  SETTABLEKS R65 R52 K86 ["placesController"]
  SETTABLEKS R66 R52 K87 ["localizationPageController"]
  SETTABLEKS R67 R52 K88 ["policyInfoController"]
  GETTABLEKS R68 R16 K89 ["ThunkWithArgsMiddleware"]
  MOVE R69 R52
  CALL R68 1 1
  NEWTABLE R69 0 1
  MOVE R70 R68
  SETLIST R69 R70 1 [1]
  GETTABLEKS R71 R12 K90 ["Store"]
  GETTABLEKS R70 R71 K71 ["new"]
  MOVE R71 R20
  LOADNIL R72
  MOVE R73 R69
  CALL R70 3 1
  GETTABLEKS R71 R39 K91 ["Open"]
  GETTABLEKS R74 R10 K26 ["Src"]
  GETTABLEKS R73 R74 K92 ["Resources"]
  GETTABLEKS R72 R73 K93 ["SourceStrings"]
  GETTABLEKS R75 R10 K26 ["Src"]
  GETTABLEKS R74 R75 K92 ["Resources"]
  GETTABLEKS R73 R74 K94 ["LocalizedStrings"]
  GETTABLEKS R75 R15 K95 ["Localization"]
  GETTABLEKS R74 R75 K71 ["new"]
  DUPTABLE R75 K100 [{"pluginName", "stringResourceTable", "translationResourceTable", "libraries"}]
  GETTABLEKS R76 R10 K101 ["Name"]
  SETTABLEKS R76 R75 K96 ["pluginName"]
  SETTABLEKS R72 R75 K97 ["stringResourceTable"]
  SETTABLEKS R73 R75 K98 ["translationResourceTable"]
  NEWTABLE R76 1 0
  GETTABLEKS R78 R14 K92 ["Resources"]
  GETTABLEKS R77 R78 K102 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R78 K103 [{"stringResourceTable", "translationResourceTable"}]
  GETTABLEKS R80 R14 K92 ["Resources"]
  GETTABLEKS R79 R80 K93 ["SourceStrings"]
  SETTABLEKS R79 R78 K97 ["stringResourceTable"]
  GETTABLEKS R80 R14 K92 ["Resources"]
  GETTABLEKS R79 R80 K94 ["LocalizedStrings"]
  SETTABLEKS R79 R78 K98 ["translationResourceTable"]
  SETTABLE R78 R76 R77
  SETTABLEKS R76 R75 K99 ["libraries"]
  CALL R74 1 1
  JUMPIFNOT R5 [+2]
  SETTABLEKS R74 R52 K104 ["localization"]
  NEWCLOSURE R75 P0
  CAPTURE REF R48
  NEWCLOSURE R76 P1
  CAPTURE VAL R17
  CAPTURE VAL R75
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R74
  CAPTURE REF R48
  CAPTURE VAL R13
  NEWCLOSURE R77 P2
  CAPTURE REF R49
  CAPTURE VAL R46
  NEWCLOSURE R78 P3
  CAPTURE VAL R70
  CAPTURE VAL R42
  CAPTURE VAL R41
  CAPTURE VAL R39
  CAPTURE REF R48
  CAPTURE VAL R11
  CAPTURE REF R47
  CAPTURE VAL R4
  CAPTURE REF R50
  CAPTURE REF R49
  CAPTURE VAL R46
  CAPTURE VAL R45
  CAPTURE VAL R74
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R75
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R13
  NEWCLOSURE R79 P4
  CAPTURE VAL R10
  CAPTURE REF R48
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R74
  CAPTURE VAL R78
  NEWCLOSURE R80 P5
  CAPTURE VAL R6
  CAPTURE VAL R70
  CAPTURE VAL R39
  CAPTURE VAL R11
  CAPTURE VAL R21
  CAPTURE VAL R76
  CAPTURE VAL R22
  CAPTURE VAL R0
  CAPTURE VAL R74
  CAPTURE REF R48
  CAPTURE VAL R51
  CAPTURE VAL R18
  CAPTURE VAL R78
  CAPTURE VAL R40
  CAPTURE VAL R43
  CAPTURE VAL R44
  CAPTURE VAL R41
  CAPTURE REF R47
  CAPTURE VAL R4
  CAPTURE REF R50
  CAPTURE VAL R14
  CAPTURE VAL R46
  CAPTURE REF R49
  NEWCLOSURE R81 P6
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R79
  CAPTURE VAL R80
  CAPTURE VAL R70
  CAPTURE REF R71
  CAPTURE VAL R39
  CAPTURE VAL R75
  MOVE R82 R81
  CALL R82 0 0
  CLOSEUPVALS R47
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_17]
  RETURN R0 1
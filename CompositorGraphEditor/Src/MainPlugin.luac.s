PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_6:
  DUPTABLE R4 K1 [{"enabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["enabled"]
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onWidgetEnabledChanged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Store"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 1
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K10 ["store"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R2 R3 K8 ["new"]
  DUPTABLE R3 K15 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K12 ["stringResourceTable"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K13 ["translationResourceTable"]
  LOADK R4 K16 ["CompositorGraphEditor"]
  SETTABLEKS R4 R3 K14 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K17 ["localization"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K18 ["Analytics"]
  GETTABLEKS R2 R3 K8 ["new"]
  DUPCLOSURE R3 K19 [PROTO_5]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K20 ["analytics"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  DUPTABLE R3 K3 [{"Toggle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K13 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
  SETTABLEKS R1 R6 K5 ["Toolbar"]
  SETTABLEKS R2 R6 K6 ["Active"]
  LOADK R7 K14 ["template_button"]
  SETTABLEKS R7 R6 K7 ["Id"]
  GETTABLEKS R7 R0 K15 ["localization"]
  LOADK R9 K16 ["Plugin"]
  LOADK R10 K17 ["Button"]
  NAMECALL R7 R7 K18 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Title"]
  GETTABLEKS R7 R0 K15 ["localization"]
  LOADK R9 K16 ["Plugin"]
  LOADK R10 K19 ["Description"]
  NAMECALL R7 R7 K18 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["Tooltip"]
  LOADK R7 K20 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
  SETTABLEKS R7 R6 K10 ["Icon"]
  GETTABLEKS R7 R0 K21 ["toggleEnabled"]
  SETTABLEKS R7 R6 K11 ["OnClick"]
  LOADB R7 1
  SETTABLEKS R7 R6 K12 ["ClickableWhenViewportHidden"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Toggle"]
  RETURN R3 1

PROTO_8:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  GETTABLEKS R9 R0 K6 ["store"]
  CALL R8 1 1
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["new"]
  NAMECALL R10 R3 K7 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETUPVAL R10 4
  CALL R10 0 1
  GETTABLEKS R11 R0 K8 ["localization"]
  GETTABLEKS R12 R0 K9 ["analytics"]
  SETLIST R6 R7 6 [1]
  DUPTABLE R7 K12 [{"Toolbar", "MainWidget"}]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K16 [{"Title", "RenderButtons"}]
  GETTABLEKS R11 R0 K8 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K10 ["Toolbar"]
  NAMECALL R11 R11 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K15 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Toolbar"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 7
  NEWTABLE R10 16 0
  LOADK R11 K18 ["CompositorGraphEditor"]
  SETTABLEKS R11 R10 K19 ["Id"]
  SETTABLEKS R4 R10 K20 ["Enabled"]
  GETTABLEKS R11 R0 K8 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K21 ["Name"]
  NAMECALL R11 R11 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Title"]
  GETIMPORT R11 K25 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K23 ["ZIndexBehavior"]
  GETIMPORT R11 K28 [Enum.InitialDockState.Bottom]
  SETTABLEKS R11 R10 K26 ["InitialDockState"]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Size"]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["MinSize"]
  GETTABLEKS R11 R0 K33 ["onClose"]
  SETTABLEKS R11 R10 K34 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K35 ["ShouldRestore"]
  GETTABLEKS R11 R0 K36 ["onRestore"]
  SETTABLEKS R11 R10 K37 ["OnWidgetRestored"]
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K38 ["Change"]
  GETTABLEKS R11 R12 K20 ["Enabled"]
  GETTABLEKS R12 R0 K39 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K42 [{"ExampleComponent", "ExampleRoactRoduxComponent"}]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 9
  CALL R12 1 1
  SETTABLEKS R12 R11 K40 ["ExampleComponent"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 10
  CALL R12 1 1
  SETTABLEKS R12 R11 K41 ["ExampleRoactRoduxComponent"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["DockWidget"]
  GETTABLEKS R7 R5 K12 ["PluginButton"]
  GETTABLEKS R8 R5 K13 ["PluginToolbar"]
  GETTABLEKS R9 R4 K14 ["ContextServices"]
  GETTABLEKS R10 R9 K15 ["Plugin"]
  GETTABLEKS R11 R9 K16 ["Mouse"]
  GETTABLEKS R12 R9 K17 ["Store"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K19 ["Reducers"]
  GETTABLEKS R14 R15 K20 ["MainReducer"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K18 ["Src"]
  GETTABLEKS R16 R17 K21 ["Resources"]
  GETTABLEKS R15 R16 K22 ["MakeTheme"]
  CALL R14 1 1
  GETTABLEKS R18 R0 K18 ["Src"]
  GETTABLEKS R17 R18 K21 ["Resources"]
  GETTABLEKS R16 R17 K23 ["Localization"]
  GETTABLEKS R15 R16 K24 ["SourceStrings"]
  GETTABLEKS R19 R0 K18 ["Src"]
  GETTABLEKS R18 R19 K21 ["Resources"]
  GETTABLEKS R17 R18 K23 ["Localization"]
  GETTABLEKS R16 R17 K25 ["LocalizedStrings"]
  GETTABLEKS R18 R0 K18 ["Src"]
  GETTABLEKS R17 R18 K26 ["Components"]
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R17 K27 ["ExampleComponent"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R17 K28 ["ExampleRoactRoduxComponent"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K29 ["PureComponent"]
  LOADK R22 K30 ["MainPlugin"]
  NAMECALL R20 R20 K31 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K32 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R21 R20 K33 ["init"]
  DUPCLOSURE R21 K34 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R21 R20 K35 ["renderButtons"]
  DUPCLOSURE R21 K36 [PROTO_9]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R18
  CAPTURE VAL R19
  SETTABLEKS R21 R20 K37 ["render"]
  RETURN R20 1

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
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleEnabled"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  SETTABLEKS R2 R0 K2 ["state"]
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
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onDockWidgetCreated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Store"]
  GETTABLEKS R2 R3 K9 ["new"]
  GETUPVAL R3 1
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K11 ["store"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["Localization"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPTABLE R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K13 ["stringResourceTable"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K14 ["translationResourceTable"]
  LOADK R4 K17 ["CompositorDebugger"]
  SETTABLEKS R4 R3 K15 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K18 ["localization"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K19 ["Analytics"]
  GETTABLEKS R2 R3 K9 ["new"]
  GETUPVAL R3 5
  CALL R2 1 1
  SETTABLEKS R2 R0 K20 ["analytics"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K9 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K21 ["DEPRECATED_stylizer"]
  GETUPVAL R2 7
  GETTABLEKS R3 R1 K22 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K23 ["design"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PluginLoaderContext"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["enabled"]
  NAMECALL R1 R1 K5 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
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
  NAMECALL R9 R3 K6 ["getMouse"]
  CALL R9 1 -1
  CALL R8 -1 1
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["new"]
  GETTABLEKS R10 R0 K7 ["store"]
  CALL R9 1 1
  GETTABLEKS R10 R0 K8 ["localization"]
  GETTABLEKS R11 R0 K9 ["analytics"]
  GETTABLEKS R12 R0 K10 ["DEPRECATED_stylizer"]
  SETLIST R6 R7 6 [1]
  DUPTABLE R7 K12 [{"MainWidget"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 5
  NEWTABLE R10 16 0
  LOADK R11 K14 ["CompositorDebugger"]
  SETTABLEKS R11 R10 K15 ["Id"]
  SETTABLEKS R4 R10 K16 ["Enabled"]
  GETTABLEKS R11 R0 K8 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K17 ["Name"]
  NAMECALL R11 R11 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K19 ["Title"]
  GETIMPORT R11 K23 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K21 ["ZIndexBehavior"]
  GETIMPORT R11 K26 [Enum.InitialDockState.Bottom]
  SETTABLEKS R11 R10 K24 ["InitialDockState"]
  GETIMPORT R11 K28 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["Size"]
  GETIMPORT R11 K28 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K30 ["MinSize"]
  GETTABLEKS R11 R0 K31 ["onClose"]
  SETTABLEKS R11 R10 K32 ["OnClose"]
  GETTABLEKS R12 R1 K33 ["PluginLoaderContext"]
  GETTABLEKS R11 R12 K34 ["mainDockWidget"]
  SETTABLEKS R11 R10 K35 ["Widget"]
  GETTABLEKS R11 R0 K36 ["onDockWidgetCreated"]
  SETTABLEKS R11 R10 K37 ["OnWidgetCreated"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K38 ["Change"]
  GETTABLEKS R11 R12 K16 ["Enabled"]
  GETTABLEKS R12 R0 K39 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K42 [{"MainComponent", "StyleLink"}]
  MOVE R12 R4
  JUMPIFNOT R12 [+5]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 6
  CALL R12 1 1
  SETTABLEKS R12 R11 K40 ["MainComponent"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K13 ["createElement"]
  LOADK R13 K41 ["StyleLink"]
  DUPTABLE R14 K44 [{"StyleSheet"}]
  GETTABLEKS R15 R0 K45 ["design"]
  SETTABLEKS R15 R14 K43 ["StyleSheet"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K41 ["StyleLink"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K12 ["UI"]
  GETTABLEKS R5 R6 K13 ["DockWidget"]
  GETTABLEKS R6 R4 K14 ["ContextServices"]
  GETTABLEKS R7 R6 K15 ["Plugin"]
  GETTABLEKS R8 R6 K16 ["Mouse"]
  GETTABLEKS R9 R6 K17 ["Store"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K18 ["Reducers"]
  GETTABLEKS R11 R12 K19 ["MainReducer"]
  CALL R10 1 1
  GETTABLEKS R13 R4 K20 ["Style"]
  GETTABLEKS R12 R13 K21 ["Themes"]
  GETTABLEKS R11 R12 K22 ["StudioTheme"]
  GETTABLEKS R13 R4 K23 ["Styling"]
  GETTABLEKS R12 R13 K24 ["registerPluginStyles"]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K25 ["Resources"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R13 K26 ["AnalyticsHandlers"]
  CALL R14 1 1
  GETTABLEKS R16 R13 K27 ["Localization"]
  GETTABLEKS R15 R16 K28 ["SourceStrings"]
  GETTABLEKS R17 R13 K27 ["Localization"]
  GETTABLEKS R16 R17 K29 ["LocalizedStrings"]
  GETTABLEKS R18 R0 K6 ["Src"]
  GETTABLEKS R17 R18 K30 ["Components"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R17 K31 ["MainComponent"]
  CALL R18 1 1
  GETTABLEKS R19 R2 K32 ["PureComponent"]
  LOADK R21 K33 ["MainPlugin"]
  NAMECALL R19 R19 K34 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K35 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R20 R19 K36 ["init"]
  DUPCLOSURE R20 K37 [PROTO_7]
  SETTABLEKS R20 R19 K38 ["didUpdate"]
  DUPCLOSURE R20 K39 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R18
  SETTABLEKS R20 R19 K40 ["render"]
  RETURN R19 1

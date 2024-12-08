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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["enabled"]
  DUPTABLE R4 K4 [{"Toggle"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K14 [{"Toolbar", "Active", "ClickableWhenViewportHidden", "Id", "Title", "Tooltip", "Icon", "OnClick"}]
  SETTABLEKS R0 R7 K6 ["Toolbar"]
  SETTABLEKS R3 R7 K7 ["Active"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["ClickableWhenViewportHidden"]
  LOADK R8 K15 ["experimental_plugin_button"]
  SETTABLEKS R8 R7 K9 ["Id"]
  GETTABLEKS R8 R1 K16 ["Localization"]
  LOADK R10 K17 ["Plugin"]
  LOADK R11 K18 ["Button"]
  NAMECALL R8 R8 K19 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Title"]
  GETTABLEKS R8 R1 K16 ["Localization"]
  LOADK R10 K17 ["Plugin"]
  LOADK R11 K20 ["Description"]
  NAMECALL R8 R8 K19 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["Tooltip"]
  LOADK R8 K21 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
  SETTABLEKS R8 R7 K12 ["Icon"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K22 ["toggleEnabled"]
  SETTABLEKS R8 R7 K13 ["OnClick"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["Toggle"]
  RETURN R4 1

PROTO_6:
  DUPTABLE R1 K1 [{"enabled"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["enabled"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onClose"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onRestore"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onWidgetEnabledChanged"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K7 ["renderButtons"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K2 [{"Background"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K6 [{"Size", "Style"}]
  GETIMPORT R6 K9 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["Size"]
  LOADK R6 K10 ["Box"]
  SETTABLEKS R6 R5 K5 ["Style"]
  DUPTABLE R6 K12 [{"App"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K14 [{"Size", "Layout"}]
  GETIMPORT R10 K9 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K4 ["Size"]
  GETIMPORT R10 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K13 ["Layout"]
  DUPTABLE R10 K21 [{"Header", "CountModifier"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K23 [{"Size", "LayoutOrder"}]
  GETIMPORT R14 K9 [UDim2.fromScale]
  LOADN R15 1
  LOADK R16 K24 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K4 ["Size"]
  LOADN R14 1
  SETTABLEKS R14 R13 K22 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Header"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K23 [{"Size", "LayoutOrder"}]
  GETIMPORT R14 K9 [UDim2.fromScale]
  LOADN R15 1
  LOADK R16 K24 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K4 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K22 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["CountModifier"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["App"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["Background"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["enabled"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["provide"]
  NEWTABLE R5 0 6
  GETTABLEKS R6 R1 K4 ["Plugin"]
  GETTABLEKS R7 R1 K5 ["Mouse"]
  GETTABLEKS R8 R1 K6 ["Store"]
  GETTABLEKS R9 R1 K7 ["Theme"]
  GETTABLEKS R10 R1 K8 ["Localization"]
  GETTABLEKS R11 R1 K9 ["Analytics"]
  SETLIST R5 R6 6 [1]
  DUPTABLE R6 K12 [{"Toolbar", "MainWidget"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K16 [{"Title", "RenderButtons"}]
  GETTABLEKS R10 R1 K8 ["Localization"]
  LOADK R12 K4 ["Plugin"]
  LOADK R13 K10 ["Toolbar"]
  NAMECALL R10 R10 K17 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["Title"]
  GETTABLEKS R10 R0 K18 ["renderButtons"]
  SETTABLEKS R10 R9 K15 ["RenderButtons"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["Toolbar"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R8 3
  NEWTABLE R9 16 0
  LOADK R10 K19 ["Experimental"]
  SETTABLEKS R10 R9 K20 ["Id"]
  SETTABLEKS R3 R9 K21 ["Enabled"]
  GETTABLEKS R10 R1 K8 ["Localization"]
  LOADK R12 K4 ["Plugin"]
  LOADK R13 K22 ["Name"]
  NAMECALL R10 R10 K17 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["Title"]
  GETIMPORT R10 K26 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K24 ["ZIndexBehavior"]
  GETIMPORT R10 K29 [Enum.InitialDockState.Bottom]
  SETTABLEKS R10 R9 K27 ["InitialDockState"]
  GETIMPORT R10 K32 [Vector2.new]
  LOADN R11 128
  LOADN R12 224
  CALL R10 2 1
  SETTABLEKS R10 R9 K33 ["Size"]
  GETIMPORT R10 K32 [Vector2.new]
  LOADN R11 250
  LOADN R12 200
  CALL R10 2 1
  SETTABLEKS R10 R9 K34 ["MinSize"]
  LOADB R10 1
  SETTABLEKS R10 R9 K35 ["ShouldRestore"]
  GETTABLEKS R10 R0 K36 ["onClose"]
  SETTABLEKS R10 R9 K37 ["OnClose"]
  GETTABLEKS R10 R0 K38 ["onRestore"]
  SETTABLEKS R10 R9 K39 ["OnWidgetRestored"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K40 ["Change"]
  GETTABLEKS R10 R11 K21 ["Enabled"]
  GETTABLEKS R11 R0 K41 ["onWidgetEnabledChanged"]
  SETTABLE R11 R9 R10
  JUMPIFNOT R3 [+7]
  DUPTABLE R10 K43 [{"Contents"}]
  NAMECALL R11 R0 K44 ["renderWidgetContents"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K42 ["Contents"]
  JUMPIF R10 [+1]
  LOADNIL R10
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["MainWidget"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R8 R0 K5 ["Packages"]
  GETTABLEKS R7 R8 K8 ["_Index"]
  GETTABLEKS R6 R7 K9 ["DeveloperFramework"]
  GETTABLEKS R5 R6 K9 ["DeveloperFramework"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["DockWidget"]
  GETTABLEKS R7 R5 K14 ["PluginButton"]
  GETTABLEKS R8 R5 K15 ["PluginToolbar"]
  GETTABLEKS R9 R5 K16 ["Pane"]
  GETTABLEKS R10 R2 K17 ["ContextServices"]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K18 ["Components"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R11 K19 ["Header"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R11 K20 ["CountModifier"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K21 ["PureComponent"]
  LOADK R16 K22 ["MainPlugin"]
  NAMECALL R14 R14 K23 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K24 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K25 ["init"]
  DUPCLOSURE R15 K26 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K27 ["renderWidgetContents"]
  DUPCLOSURE R15 K28 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R15 R14 K29 ["render"]
  RETURN R14 1

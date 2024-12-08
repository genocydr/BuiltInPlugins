PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["API"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["Localization"]
  GETTABLEKS R3 R0 K4 ["Analytics"]
  NAMECALL R3 R3 K2 ["get"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K5 ["CloudTableId"]
  GETTABLEKS R5 R0 K6 ["DownloadAndSaveCloudTable"]
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  MOVE R9 R4
  CALL R5 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["API"]
  NAMECALL R3 R3 K2 ["get"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K4 ["Localization"]
  GETTABLEKS R5 R1 K5 ["Analytics"]
  NAMECALL R5 R5 K2 ["get"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K6 ["Mouse"]
  GETTABLEKS R7 R1 K7 ["Stylizer"]
  GETUPVAL R8 1
  MOVE R9 R2
  MOVE R10 R4
  MOVE R11 R7
  MOVE R12 R6
  CALL R8 4 1
  GETTABLEKS R9 R1 K8 ["UpdateCloudTable"]
  MOVE R10 R3
  MOVE R11 R4
  MOVE R12 R5
  MOVE R13 R8
  MOVE R14 R0
  CALL R9 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["IsBusy"]
  NOT R1 R2
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K2 ["API"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K4 ["WWW"]
  GETTABLEKS R4 R5 K5 ["Localization"]
  GETTABLEKS R3 R4 K6 ["games"]
  GETIMPORT R5 K8 [game]
  GETTABLEKS R4 R5 K9 ["GameId"]
  CALL R3 1 1
  NAMECALL R3 R3 K10 ["getUrl"]
  CALL R3 1 1
  GETUPVAL R4 1
  MOVE R6 R3
  NAMECALL R4 R4 K11 ["OpenBrowserWindow"]
  CALL R4 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["downloadCloudTable"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["updateCloudTable"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K2 ["openLocalizationSettings"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateCloudTable"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateCloudTable"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K6 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K1 ["Active"]
  GETUPVAL R3 3
  LOADK R5 K7 ["CloudTableSection"]
  LOADK R6 K8 ["ReplaceButton"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K2 ["ButtonText"]
  GETUPVAL R3 3
  LOADK R5 K7 ["CloudTableSection"]
  LOADK R6 K10 ["ReplaceTableLabel"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K3 ["LabelText"]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["LayoutOrder"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U4
  SETTABLEKS R3 R2 K5 ["OnButtonClick"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R6 R1 K4 ["IsBusy"]
  NOT R5 R6
  GETUPVAL R7 0
  GETTABLEKS R8 R1 K5 ["AllLanguages"]
  CALL R7 1 1
  NOT R6 R7
  JUMPIFNOT R6 [+5]
  GETUPVAL R7 0
  GETTABLEKS R8 R1 K6 ["LocalesToLanguages"]
  CALL R7 1 1
  NOT R6 R7
  MOVE R7 R6
  JUMPIFNOT R7 [+9]
  GETTABLEKS R7 R1 K7 ["CanManageTranslation"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R8 R1 K8 ["CloudTableId"]
  JUMPIFNOTEQKS R8 K9 [""] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  LOADNIL R8
  JUMPIFNOT R7 [+209]
  DUPTABLE R9 K15 [{"Padding", "Download", "Update", "Collapsible", "LinkTextFrame"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  LOADK R11 K17 ["UIPadding"]
  DUPTABLE R12 K20 [{"PaddingTop", "PaddingLeft"}]
  GETIMPORT R13 K23 [UDim.new]
  LOADN R14 0
  GETUPVAL R16 2
  JUMPIFNOT R16 [+3]
  GETTABLEKS R15 R2 K24 ["SectionPadding"]
  JUMP [+2]
  GETTABLEKS R15 R2 K18 ["PaddingTop"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["PaddingTop"]
  GETIMPORT R13 K23 [UDim.new]
  LOADN R14 0
  GETUPVAL R16 2
  JUMPIFNOT R16 [+3]
  GETTABLEKS R15 R2 K24 ["SectionPadding"]
  JUMP [+2]
  GETTABLEKS R15 R2 K25 ["LeftIndent"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["PaddingLeft"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["Padding"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K30 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
  SETTABLEKS R5 R12 K26 ["Active"]
  LOADK R15 K31 ["CloudTableSection"]
  LOADK R16 K32 ["DownloadButton"]
  NAMECALL R13 R3 K33 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K27 ["ButtonText"]
  LOADK R15 K31 ["CloudTableSection"]
  LOADK R16 K34 ["DownloadTableLabel"]
  NAMECALL R13 R3 K33 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["LabelText"]
  LOADN R13 1
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  GETTABLEKS R13 R0 K35 ["downloadCloudTable"]
  SETTABLEKS R13 R12 K29 ["OnButtonClick"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["Download"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K30 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
  SETTABLEKS R5 R12 K26 ["Active"]
  LOADK R15 K31 ["CloudTableSection"]
  LOADK R16 K36 ["UpdateButton"]
  NAMECALL R13 R3 K33 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K27 ["ButtonText"]
  LOADK R15 K31 ["CloudTableSection"]
  LOADK R16 K37 ["UpdateTableLabel"]
  NAMECALL R13 R3 K33 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["LabelText"]
  LOADN R13 2
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K29 ["OnButtonClick"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Update"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K40 [{"Active", "LayoutOrder", "RenderContent", "Title"}]
  SETTABLEKS R5 R12 K26 ["Active"]
  LOADN R13 3
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K38 ["RenderContent"]
  LOADK R15 K31 ["CloudTableSection"]
  LOADK R16 K41 ["AdvancedButton"]
  NAMECALL R13 R3 K33 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K39 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Collapsible"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  LOADK R11 K42 ["Frame"]
  DUPTABLE R12 K45 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K43 ["BackgroundTransparency"]
  LOADN R13 4
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  GETIMPORT R13 K47 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R17 R2 K48 ["LinkTextHeight"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K44 ["Size"]
  DUPTABLE R13 K50 [{"LinkText"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K16 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K55 [{"AnchorPoint", "Position", "OnClick", "Text"}]
  GETIMPORT R17 K57 [Vector2.new]
  LOADN R18 0
  LOADK R19 K58 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["AnchorPoint"]
  GETIMPORT R17 K47 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADK R20 K58 [0.5]
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K52 ["Position"]
  GETTABLEKS R17 R0 K59 ["openLocalizationSettings"]
  SETTABLEKS R17 R16 K53 ["OnClick"]
  LOADK R19 K31 ["CloudTableSection"]
  LOADK R20 K60 ["CloudTablePageLinkText"]
  NAMECALL R17 R3 K33 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K54 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K49 ["LinkText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["LinkTextFrame"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K64 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R13 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K61 ["AutomaticSize"]
  GETIMPORT R13 K69 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K62 ["HorizontalAlignment"]
  GETIMPORT R13 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K63 ["Layout"]
  LOADN R13 2
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  MOVE R13 R9
  CALL R10 3 1
  MOVE R8 R10
  JUMP [+113]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R11 7
  JUMPIFNOT R11 [+2]
  GETUPVAL R10 6
  JUMP [+1]
  LOADK R10 K42 ["Frame"]
  DUPTABLE R11 K76 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "LayoutOrder", "Layout"}]
  GETIMPORT R12 K47 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R2 K77 ["PublishMessageHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K44 ["Size"]
  GETTABLEKS R12 R2 K78 ["MessageFrameBackground"]
  SETTABLEKS R12 R11 K73 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K43 ["BackgroundTransparency"]
  LOADN R12 1
  SETTABLEKS R12 R11 K74 ["BorderSizePixel"]
  GETTABLEKS R12 R2 K79 ["MessageFrameBorder"]
  SETTABLEKS R12 R11 K75 ["BorderColor3"]
  LOADN R12 2
  SETTABLEKS R12 R11 K3 ["LayoutOrder"]
  GETUPVAL R13 7
  JUMPIFNOT R13 [+3]
  GETIMPORT R12 K72 [Enum.FillDirection.Vertical]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K63 ["Layout"]
  DUPTABLE R12 K81 [{"PublishPlaceMessage"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 8
  DUPTABLE R15 K83 [{"AnchorPoint", "AutomaticSize", "Position", "Size", "Text", "TextWrapped"}]
  GETUPVAL R17 7
  JUMPIFNOT R17 [+2]
  LOADNIL R16
  JUMP [+5]
  GETIMPORT R16 K57 [Vector2.new]
  LOADK R17 K58 [0.5]
  LOADK R18 K58 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K51 ["AnchorPoint"]
  GETUPVAL R17 7
  JUMPIFNOT R17 [+3]
  GETIMPORT R16 K67 [Enum.AutomaticSize.Y]
  JUMP [+2]
  GETIMPORT R16 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K61 ["AutomaticSize"]
  GETUPVAL R17 7
  JUMPIFNOT R17 [+2]
  LOADNIL R16
  JUMP [+7]
  GETIMPORT R16 K47 [UDim2.new]
  LOADK R17 K58 [0.5]
  LOADN R18 0
  LOADK R19 K58 [0.5]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K52 ["Position"]
  GETUPVAL R17 7
  JUMPIFNOT R17 [+6]
  GETIMPORT R16 K87 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K44 ["Size"]
  LOADK R18 K31 ["CloudTableSection"]
  LOADK R19 K80 ["PublishPlaceMessage"]
  NAMECALL R16 R3 K33 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K54 ["Text"]
  GETUPVAL R17 7
  JUMPIFNOT R17 [+2]
  LOADB R16 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K82 ["TextWrapped"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K80 ["PublishPlaceMessage"]
  CALL R9 3 1
  MOVE R8 R9
  DUPTABLE R9 K90 [{"Padding", "SectionLabel", "Content"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  LOADK R11 K17 ["UIPadding"]
  DUPTABLE R12 K91 [{"PaddingTop"}]
  GETIMPORT R13 K23 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R2 K18 ["PaddingTop"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["PaddingTop"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["Padding"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K93 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R13 K85 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K61 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  LOADK R13 K94 ["Subtitle"]
  SETTABLEKS R13 R12 K92 ["Style"]
  LOADK R15 K31 ["CloudTableSection"]
  LOADK R16 K88 ["SectionLabel"]
  NAMECALL R13 R3 K33 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K54 ["Text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K88 ["SectionLabel"]
  SETTABLEKS R8 R9 K89 ["Content"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K64 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R13 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K61 ["AutomaticSize"]
  GETIMPORT R13 K69 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K62 ["HorizontalAlignment"]
  GETIMPORT R13 K72 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K63 ["Layout"]
  SETTABLEKS R4 R12 K3 ["LayoutOrder"]
  MOVE R13 R9
  CALL R10 3 -1
  RETURN R10 -1

PROTO_8:
  DUPTABLE R2 K5 [{"AllLanguages", "LocalesToLanguages", "CanManageTranslation", "CloudTableId", "IsBusy"}]
  GETTABLEKS R4 R0 K6 ["PluginMetadata"]
  GETTABLEKS R3 R4 K0 ["AllLanguages"]
  SETTABLEKS R3 R2 K0 ["AllLanguages"]
  GETTABLEKS R4 R0 K6 ["PluginMetadata"]
  GETTABLEKS R3 R4 K1 ["LocalesToLanguages"]
  SETTABLEKS R3 R2 K1 ["LocalesToLanguages"]
  GETTABLEKS R4 R0 K6 ["PluginMetadata"]
  GETTABLEKS R3 R4 K2 ["CanManageTranslation"]
  SETTABLEKS R3 R2 K2 ["CanManageTranslation"]
  GETTABLEKS R4 R0 K6 ["PluginMetadata"]
  GETTABLEKS R3 R4 K3 ["CloudTableId"]
  SETTABLEKS R3 R2 K3 ["CloudTableId"]
  GETTABLEKS R4 R0 K7 ["CloudTable"]
  GETTABLEKS R3 R4 K4 ["IsBusy"]
  SETTABLEKS R3 R2 K4 ["IsBusy"]
  RETURN R2 1

PROTO_9:
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["DownloadAndSave"]
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K2 [{"DownloadAndSaveCloudTable", "UpdateCloudTable"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["DownloadAndSaveCloudTable"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["UpdateCloudTable"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationToolsFixCloudLabel"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["LocalizationToolsUpdateTextScraperUI"]
  NAMECALL R1 R1 K5 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["GuiService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R3 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R3 K13 ["Packages"]
  GETTABLEKS R6 R7 K15 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R3 K13 ["Packages"]
  GETTABLEKS R7 R8 K16 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K17 ["ContextServices"]
  GETTABLEKS R8 R7 K18 ["withContext"]
  GETTABLEKS R9 R6 K19 ["UI"]
  GETTABLEKS R10 R9 K20 ["LinkText"]
  GETTABLEKS R11 R9 K21 ["Pane"]
  GETTABLEKS R12 R9 K22 ["TextLabel"]
  GETIMPORT R13 K12 [require]
  GETTABLEKS R16 R3 K23 ["Src"]
  GETTABLEKS R15 R16 K17 ["ContextServices"]
  GETTABLEKS R14 R15 K24 ["AnalyticsContext"]
  CALL R13 1 1
  GETIMPORT R14 K12 [require]
  GETTABLEKS R17 R3 K23 ["Src"]
  GETTABLEKS R16 R17 K25 ["Components"]
  GETTABLEKS R15 R16 K26 ["LabeledTextButton"]
  CALL R14 1 1
  GETIMPORT R15 K12 [require]
  GETTABLEKS R18 R3 K23 ["Src"]
  GETTABLEKS R17 R18 K25 ["Components"]
  GETTABLEKS R16 R17 K27 ["Collapsible"]
  CALL R15 1 1
  GETIMPORT R16 K12 [require]
  GETTABLEKS R19 R3 K23 ["Src"]
  GETTABLEKS R18 R19 K28 ["Util"]
  GETTABLEKS R17 R18 K29 ["isEmpty"]
  CALL R16 1 1
  GETIMPORT R17 K12 [require]
  GETTABLEKS R20 R3 K23 ["Src"]
  GETTABLEKS R19 R20 K28 ["Util"]
  GETTABLEKS R18 R19 K30 ["ShowDialog"]
  CALL R17 1 1
  GETIMPORT R18 K12 [require]
  GETTABLEKS R21 R3 K23 ["Src"]
  GETTABLEKS R20 R21 K31 ["Thunks"]
  GETTABLEKS R19 R20 K32 ["DownloadCloudTable"]
  CALL R18 1 1
  GETIMPORT R19 K12 [require]
  GETTABLEKS R22 R3 K23 ["Src"]
  GETTABLEKS R21 R22 K31 ["Thunks"]
  GETTABLEKS R20 R21 K33 ["UploadCloudTable"]
  CALL R19 1 1
  GETTABLEKS R20 R4 K34 ["PureComponent"]
  LOADK R22 K35 ["CloudTableSection"]
  NAMECALL R20 R20 K36 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K37 [PROTO_3]
  CAPTURE VAL R17
  CAPTURE VAL R2
  SETTABLEKS R21 R20 K38 ["init"]
  DUPCLOSURE R21 K39 [PROTO_7]
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R0
  CAPTURE VAL R12
  SETTABLEKS R21 R20 K40 ["render"]
  MOVE R21 R8
  DUPTABLE R22 K47 [{"Plugin", "Stylizer", "Localization", "API", "Mouse", "Analytics"}]
  GETTABLEKS R23 R7 K41 ["Plugin"]
  SETTABLEKS R23 R22 K41 ["Plugin"]
  GETTABLEKS R23 R7 K42 ["Stylizer"]
  SETTABLEKS R23 R22 K42 ["Stylizer"]
  GETTABLEKS R23 R7 K43 ["Localization"]
  SETTABLEKS R23 R22 K43 ["Localization"]
  GETTABLEKS R23 R7 K44 ["API"]
  SETTABLEKS R23 R22 K44 ["API"]
  GETTABLEKS R23 R7 K45 ["Mouse"]
  SETTABLEKS R23 R22 K45 ["Mouse"]
  SETTABLEKS R13 R22 K46 ["Analytics"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  DUPCLOSURE R21 K48 [PROTO_8]
  DUPCLOSURE R22 K49 [PROTO_11]
  CAPTURE VAL R18
  CAPTURE VAL R19
  GETTABLEKS R23 R5 K50 ["connect"]
  MOVE R24 R21
  MOVE R25 R22
  CALL R23 2 1
  MOVE R24 R20
  CALL R23 1 -1
  RETURN R23 -1
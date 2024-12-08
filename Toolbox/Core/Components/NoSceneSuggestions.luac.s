PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["FREE_MODELS"]
  GETTABLEKS R1 R2 K1 ["name"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R4 3
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 6
  DUPTABLE R7 K11 [{"Text", "LinkMap", "LayoutOrder", "AutomaticSize", "Size", "TextWrapped", "TextXAlignment", "HorizontalAlignment", "TextProps"}]
  LOADK R10 K12 ["SceneSuggestions"]
  LOADK R11 K13 ["NoResults"]
  NAMECALL R8 R2 K14 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K2 ["Text"]
  NEWTABLE R8 1 0
  DUPTABLE R9 K17 [{"LinkText", "LinkCallback"}]
  LOADK R12 K18 ["General"]
  LOADK R13 K19 ["CategoryModels"]
  NAMECALL R10 R2 K14 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K15 ["LinkText"]
  SETTABLEKS R4 R9 K16 ["LinkCallback"]
  SETTABLEKS R9 R8 K20 ["[link1]"]
  SETTABLEKS R8 R7 K3 ["LinkMap"]
  GETTABLEKS R8 R0 K4 ["LayoutOrder"]
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  GETIMPORT R8 K23 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K5 ["AutomaticSize"]
  GETIMPORT R8 K26 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K6 ["Size"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["TextWrapped"]
  GETIMPORT R8 K28 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K8 ["TextXAlignment"]
  GETIMPORT R8 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K9 ["HorizontalAlignment"]
  DUPTABLE R8 K33 [{"Font", "TextColor", "TextSize"}]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K34 ["FONT"]
  SETTABLEKS R9 R8 K30 ["Font"]
  GETTABLEKS R10 R1 K35 ["itemRow"]
  GETTABLEKS R9 R10 K36 ["textColor"]
  SETTABLEKS R9 R8 K31 ["TextColor"]
  GETTABLEKS R10 R1 K35 ["itemRow"]
  GETTABLEKS R9 R10 K37 ["textSize"]
  SETTABLEKS R9 R8 K32 ["TextSize"]
  SETTABLEKS R8 R7 K10 ["TextProps"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K12 ["Types"]
  GETTABLEKS R5 R6 K13 ["Category"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K14 ["Hooks"]
  GETTABLEKS R6 R7 K15 ["useNavigateToCategory"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K16 ["ContextServices"]
  GETTABLEKS R6 R7 K17 ["Localization"]
  GETTABLEKS R8 R2 K16 ["ContextServices"]
  GETTABLEKS R7 R8 K18 ["Stylizer"]
  GETTABLEKS R9 R2 K19 ["UI"]
  GETTABLEKS R8 R9 K20 ["TextWithLinks"]
  GETTABLEKS R9 R1 K21 ["useCallback"]
  DUPCLOSURE R10 K22 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R3
  RETURN R10 1
PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R4 K1 [{"enabled"}]
  GETTABLEKS R5 R1 K2 ["Enabled"]
  SETTABLEKS R5 R4 K0 ["enabled"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["closeDialog"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"Style", "Enabled", "Title", "Buttons", "OnButtonPressed", "OnClose", "MinContentSize", "Modal"}]
  LOADK R7 K13 ["Alert"]
  SETTABLEKS R7 R6 K4 ["Style"]
  GETTABLEKS R8 R0 K14 ["state"]
  GETTABLEKS R7 R8 K15 ["enabled"]
  SETTABLEKS R7 R6 K5 ["Enabled"]
  LOADK R9 K16 ["AlertDialog"]
  GETTABLEKS R10 R1 K17 ["TitleKey"]
  NAMECALL R7 R3 K18 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Title"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K21 [{"Key", "Text"}]
  LOADK R9 K22 ["ok"]
  SETTABLEKS R9 R8 K19 ["Key"]
  LOADK R11 K16 ["AlertDialog"]
  LOADK R12 K23 ["OkButtonText"]
  NAMECALL R9 R3 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K20 ["Text"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K7 ["Buttons"]
  GETTABLEKS R7 R0 K24 ["closeDialog"]
  SETTABLEKS R7 R6 K8 ["OnButtonPressed"]
  GETTABLEKS R7 R1 K9 ["OnClose"]
  SETTABLEKS R7 R6 K9 ["OnClose"]
  GETTABLEKS R7 R2 K25 ["PopupMessageSize"]
  SETTABLEKS R7 R6 K10 ["MinContentSize"]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["Modal"]
  DUPTABLE R7 K27 [{"Label"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K35 [{"Size", "AnchorPoint", "Position", "Text", "TextColor", "TextWrapped", "TextSize", "TextXAlignment"}]
  GETIMPORT R11 K38 [UDim2.fromScale]
  LOADK R12 K39 [0.95]
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K28 ["Size"]
  GETIMPORT R11 K42 [Vector2.new]
  LOADK R12 K43 [0.5]
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["AnchorPoint"]
  GETIMPORT R11 K38 [UDim2.fromScale]
  LOADK R12 K43 [0.5]
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K30 ["Position"]
  LOADK R13 K16 ["AlertDialog"]
  GETTABLEKS R14 R1 K44 ["MessageKey"]
  GETTABLEKS R15 R1 K45 ["MessageKeyFormatTable"]
  NAMECALL R11 R3 K18 ["getText"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K20 ["Text"]
  GETTABLEKS R11 R2 K31 ["TextColor"]
  SETTABLEKS R11 R10 K31 ["TextColor"]
  LOADB R11 1
  SETTABLEKS R11 R10 K32 ["TextWrapped"]
  GETTABLEKS R11 R2 K33 ["TextSize"]
  SETTABLEKS R11 R10 K33 ["TextSize"]
  GETIMPORT R11 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K34 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K26 ["Label"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
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
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Localization"]
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["TextLabel"]
  GETTABLEKS R8 R6 K13 ["StyledDialog"]
  GETTABLEKS R9 R1 K14 ["PureComponent"]
  LOADK R11 K15 ["AlertDialog"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K17 [PROTO_1]
  SETTABLEKS R10 R9 K18 ["init"]
  DUPCLOSURE R10 K19 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K20 ["render"]
  MOVE R10 R4
  DUPTABLE R11 K22 [{"Localization", "Stylizer"}]
  SETTABLEKS R5 R11 K10 ["Localization"]
  GETTABLEKS R12 R3 K21 ["Stylizer"]
  SETTABLEKS R12 R11 K21 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1

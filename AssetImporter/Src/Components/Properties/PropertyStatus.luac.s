PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["StatusLevel"]
  GETTABLEKS R5 R1 K4 ["StatusMessage"]
  GETTABLEKS R6 R1 K5 ["StatusContext"]
  GETTABLEKS R7 R1 K6 ["LayoutOrder"]
  GETTABLEKS R9 R3 K7 ["PropertyView"]
  GETTABLEKS R8 R9 K8 ["IconSize"]
  LOADB R9 1
  JUMPIFEQKS R4 K9 ["Error"] [+8]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["Error"]
  JUMPIFEQ R4 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  JUMPIFNOT R9 [+3]
  GETTABLEKS R10 R3 K10 ["ErrorIcon"]
  JUMPIF R10 [+2]
  GETTABLEKS R10 R3 K11 ["WarningIcon"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K15 [{"Size", "Style", "LayoutOrder"}]
  GETIMPORT R14 K18 [UDim2.fromOffset]
  MOVE R15 R8
  MOVE R16 R8
  CALL R14 2 1
  SETTABLEKS R14 R13 K13 ["Size"]
  SETTABLEKS R10 R13 K14 ["Style"]
  SETTABLEKS R7 R13 K6 ["LayoutOrder"]
  DUPTABLE R14 K20 [{"Tooltip"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K22 [{"Text"}]
  LOADK R20 K23 ["Statuses"]
  MOVE R21 R5
  MOVE R22 R6
  NAMECALL R18 R2 K24 ["getText"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K21 ["Text"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["Tooltip"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R3 K11 ["Localization"]
  GETTABLEKS R6 R3 K12 ["Stylizer"]
  GETTABLEKS R7 R2 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Tooltip"]
  GETTABLEKS R9 R7 K15 ["Image"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Resources"]
  GETTABLEKS R11 R12 K18 ["StatusLevel"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K19 ["PureComponent"]
  LOADK R13 K20 ["PropertyStatus"]
  NAMECALL R11 R11 K21 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K23 ["render"]
  MOVE R12 R4
  DUPTABLE R13 K24 [{"Localization", "Stylizer"}]
  SETTABLEKS R5 R13 K11 ["Localization"]
  SETTABLEKS R6 R13 K12 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
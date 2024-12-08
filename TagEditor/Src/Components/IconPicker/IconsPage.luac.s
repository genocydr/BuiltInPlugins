PROTO_0:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["_enteredButton"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["onHoverFunc"]
  GETUPVAL R2 2
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_enteredButton"]
  JUMPIFNOTEQ R1 R0 [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["onHoverFunc"]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["_enteredButton"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Get"]
  CALL R0 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["tagName"]
  GETUPVAL R3 2
  NAMECALL R0 R0 K2 ["SetIcon"]
  CALL R0 3 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["closeFunc"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Lookup"]
  MOVE R5 R0
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["props"]
  NEWTABLE R6 16 0
  GETTABLEKS R7 R4 K2 ["ImageRectOffset"]
  SETTABLEKS R7 R6 K2 ["ImageRectOffset"]
  GETTABLEKS R7 R4 K3 ["ImageRectSize"]
  SETTABLEKS R7 R6 K3 ["ImageRectSize"]
  GETTABLEKS R7 R4 K4 ["Image"]
  SETTABLEKS R7 R6 K4 ["Image"]
  SETTABLEKS R2 R6 K5 ["Position"]
  SETTABLEKS R3 R6 K6 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  GETIMPORT R7 K11 [Enum.ResamplerMode.Pixelated]
  SETTABLEKS R7 R6 K12 ["ResampleMode"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["Event"]
  GETTABLEKS R7 R8 K14 ["MouseEnter"]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R0
  SETTABLE R8 R6 R7
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["Event"]
  GETTABLEKS R7 R8 K15 ["MouseLeave"]
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  SETTABLE R8 R6 R7
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["Event"]
  GETTABLEKS R7 R8 K16 ["MouseButton1Click"]
  NEWCLOSURE R8 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R0
  SETTABLE R8 R6 R7
  RETURN R6 1

PROTO_4:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_enteredButton"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K1 ["GetIconProps"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["IconsPage"]
  NEWTABLE R3 0 0
  LOADN R4 1
  GETIMPORT R5 K4 [pairs]
  GETUPVAL R6 0
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETIMPORT R10 K4 [pairs]
  MOVE R11 R9
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETTABLEKS R15 R1 K5 ["search"]
  JUMPIFNOT R15 [+6]
  GETTABLEKS R17 R1 K5 ["search"]
  NAMECALL R15 R14 K6 ["find"]
  CALL R15 2 1
  JUMPIFNOT R15 [+2]
  SETTABLE R14 R3 R4
  ADDK R4 R4 K7 [1]
  FORGLOOP R10 2 [-12]
  FORGLOOP R5 2 [-19]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K16 [{"Size", "LayoutOrder", "CellSize", "CellPadding", "Cells", "CellComponent", "GetCellProps"}]
  GETTABLEKS R8 R1 K9 ["Size"]
  SETTABLEKS R8 R7 K9 ["Size"]
  GETTABLEKS R8 R1 K10 ["LayoutOrder"]
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  GETTABLEKS R8 R2 K17 ["GridCellSize"]
  SETTABLEKS R8 R7 K11 ["CellSize"]
  GETTABLEKS R8 R2 K18 ["GridCellPadding"]
  SETTABLEKS R8 R7 K12 ["CellPadding"]
  SETTABLEKS R3 R7 K13 ["Cells"]
  LOADK R8 K19 ["ImageButton"]
  SETTABLEKS R8 R7 K14 ["CellComponent"]
  GETTABLEKS R8 R0 K20 ["GetIconProps"]
  SETTABLEKS R8 R7 K15 ["GetCellProps"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
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
  GETTABLEKS R6 R2 K10 ["Style"]
  GETTABLEKS R5 R6 K11 ["Stylizer"]
  GETTABLEKS R6 R2 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Grid"]
  GETIMPORT R8 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K14 ["FamFamFam"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["IconCategories"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K17 ["TagManager"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K18 ["PureComponent"]
  LOADK R13 K19 ["IconsPage"]
  NAMECALL R11 R11 K20 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K21 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K22 ["init"]
  DUPCLOSURE R12 K23 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K24 ["render"]
  MOVE R12 R4
  DUPTABLE R13 K25 [{"Stylizer"}]
  SETTABLEKS R5 R13 K11 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1

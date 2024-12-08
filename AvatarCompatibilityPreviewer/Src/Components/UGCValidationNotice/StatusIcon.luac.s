PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["UGCValidationStatusIcon"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 3 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K6 [{"Position", "Size", "OnClick"}]
  GETTABLEKS R5 R1 K3 ["Position"]
  SETTABLEKS R5 R4 K3 ["Position"]
  GETTABLEKS R5 R1 K4 ["Size"]
  SETTABLEKS R5 R4 K4 ["Size"]
  GETTABLEKS R5 R0 K5 ["OnClick"]
  SETTABLEKS R5 R4 K5 ["OnClick"]
  DUPTABLE R5 K10 [{"UIAspectRatioConstraint", "Image", "Tooltip"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K7 ["UIAspectRatioConstraint"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["UIAspectRatioConstraint"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K12 [{"Image", "ImageColor3"}]
  GETTABLEKS R9 R1 K8 ["Image"]
  SETTABLEKS R9 R8 K8 ["Image"]
  GETTABLEKS R9 R1 K13 ["Color"]
  SETTABLEKS R9 R8 K11 ["ImageColor3"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["Image"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K15 [{"Text"}]
  GETTABLEKS R9 R0 K16 ["TooltipText"]
  SETTABLEKS R9 R8 K14 ["Text"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Tooltip"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["UI"]
  GETTABLEKS R5 R4 K13 ["Image"]
  GETTABLEKS R6 R4 K14 ["Pane"]
  GETTABLEKS R7 R4 K15 ["Tooltip"]
  GETTABLEKS R9 R1 K16 ["ContextServices"]
  GETTABLEKS R8 R9 K17 ["Stylizer"]
  DUPCLOSURE R9 K18 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  RETURN R9 1

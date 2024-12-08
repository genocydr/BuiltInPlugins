PROTO_0:
  GETTABLEKS R3 R0 K0 ["ItemData"]
  GETTABLEKS R2 R3 K1 ["item"]
  GETTABLEKS R1 R2 K2 ["source"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["SOURCE_BUILTIN"]
  JUMPIFNOTEQ R1 R2 [+29]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createElement"]
  GETTABLEKS R4 R0 K0 ["ItemData"]
  GETTABLEKS R3 R4 K5 ["palette"]
  GETTABLEKS R2 R3 K6 ["PreviewComponent"]
  DUPTABLE R3 K10 [{"Item", "Selected", "Transparency"}]
  GETTABLEKS R6 R0 K0 ["ItemData"]
  GETTABLEKS R5 R6 K1 ["item"]
  GETTABLEKS R4 R5 K11 ["builtinItem"]
  SETTABLEKS R4 R3 K7 ["Item"]
  GETTABLEKS R4 R0 K8 ["Selected"]
  SETTABLEKS R4 R3 K8 ["Selected"]
  GETTABLEKS R4 R0 K9 ["Transparency"]
  SETTABLEKS R4 R3 K9 ["Transparency"]
  CALL R1 2 -1
  RETURN R1 -1
  GETTABLEKS R3 R0 K0 ["ItemData"]
  GETTABLEKS R2 R3 K1 ["item"]
  GETTABLEKS R1 R2 K2 ["source"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["SOURCE_INSTANCE"]
  JUMPIFNOTEQ R1 R2 [+20]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K14 [{"Instance", "Transparency"}]
  GETTABLEKS R6 R0 K0 ["ItemData"]
  GETTABLEKS R5 R6 K1 ["item"]
  GETTABLEKS R4 R5 K15 ["instance"]
  SETTABLEKS R4 R3 K13 ["Instance"]
  GETTABLEKS R4 R0 K9 ["Transparency"]
  SETTABLEKS R4 R3 K9 ["Transparency"]
  CALL R1 2 -1
  RETURN R1 -1
  GETIMPORT R1 K17 [error]
  LOADK R3 K18 ["Unknown item source: %*"]
  GETTABLEKS R7 R0 K0 ["ItemData"]
  GETTABLEKS R6 R7 K1 ["item"]
  GETTABLEKS R5 R6 K2 ["source"]
  NAMECALL R3 R3 K19 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K11 ["ItemDataPreviewModel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R5 1

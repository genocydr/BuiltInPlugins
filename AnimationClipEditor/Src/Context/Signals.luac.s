PROTO_0:
  DUPTABLE R1 K1 [{"signals"}]
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K2 ["__mapSignalIDs"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["signals"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_1:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R10 R2 R7
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  LOADK R11 K2 ["Duplicate action, ID: "]
  MOVE R12 R7
  CONCAT R10 R11 R12
  FASTCALL2 ASSERT R9 R10 [+3]
  GETIMPORT R8 K4 [assert]
  CALL R8 2 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["new"]
  CALL R8 0 1
  SETTABLE R8 R2 R7
  FORGLOOP R3 2 [-19]
  RETURN R2 1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["signals"]
  GETTABLE R2 R3 R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerFramework"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R1 K8 ["Utility"]
  GETTABLEKS R3 R4 K9 ["Signal"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K4 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["ContextItem"]
  LOADK R7 K13 ["Signals"]
  NAMECALL R5 R4 K14 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K16 ["new"]
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K18 ["__mapSignalIDs"]
  DUPCLOSURE R6 K19 [PROTO_2]
  SETTABLEKS R6 R5 K20 ["get"]
  RETURN R5 1

PROTO_0:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 3
  JUMPIF R3 [+2]
  LOADB R6 0
  RETURN R6 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["MatchBeforeAndAfter"]
  MOVE R7 R0
  MOVE R8 R3
  MOVE R9 R4
  LOADK R10 K1 ["[\"]"]
  LOADK R11 K1 ["[\"]"]
  CALL R6 5 1
  JUMPIF R6 [+12]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["MatchBeforeAndAfter"]
  MOVE R7 R0
  MOVE R8 R3
  MOVE R9 R4
  LOADK R10 K2 ["[']"]
  LOADK R11 K2 ["[']"]
  CALL R6 5 1
  JUMPIF R6 [+2]
  LOADB R6 0
  RETURN R6 1
  JUMPIFNOT R2 [+7]
  MOVE R6 R2
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R5
  MOVE R10 R0
  MOVE R11 R1
  CALL R6 5 0
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["parseAssetURL"]
  CALL R2 1 1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K9 ["Parent"]
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R3 K10 ["StringUtil"]
  CALL R4 1 1
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R5 1

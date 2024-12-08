PROTO_0:
  NEWTABLE R1 0 2
  DUPTABLE R2 K2 [{"Label", "Value"}]
  LOADK R3 K3 ["Filename"]
  SETTABLEKS R3 R2 K0 ["Label"]
  GETTABLEKS R4 R0 K4 ["File"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K4 ["File"]
  GETTABLEKS R3 R4 K5 ["Name"]
  JUMP [+1]
  LOADK R3 K6 [""]
  SETTABLEKS R3 R2 K1 ["Value"]
  DUPTABLE R3 K2 [{"Label", "Value"}]
  LOADK R4 K7 ["Dimensions"]
  SETTABLEKS R4 R3 K0 ["Label"]
  LOADK R5 K8 ["%*x%*px"]
  GETTABLEKS R7 R0 K9 ["Width"]
  GETTABLEKS R8 R0 K10 ["Height"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K1 ["Value"]
  SETLIST R1 R2 2 [1]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  RETURN R2 1

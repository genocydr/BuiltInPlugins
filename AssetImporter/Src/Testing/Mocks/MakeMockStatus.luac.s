PROTO_0:
  DUPTABLE R3 K3 [{"Level", "Type", "Context"}]
  SETTABLEKS R0 R3 K0 ["Level"]
  SETTABLEKS R1 R3 K1 ["Type"]
  SETTABLEKS R2 R3 K2 ["Context"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  RETURN R2 1

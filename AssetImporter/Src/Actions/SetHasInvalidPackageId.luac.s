PROTO_0:
  DUPTABLE R1 K1 [{"hasInvalidPackageId"}]
  SETTABLEKS R0 R1 K0 ["hasInvalidPackageId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Action"]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K10 ["Name"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
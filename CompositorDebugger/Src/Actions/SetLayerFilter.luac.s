PROTO_0:
  DUPTABLE R2 K1 [{"layerFilters"}]
  NEWTABLE R3 1 0
  SETTABLE R1 R3 R0
  SETTABLEKS R3 R2 K0 ["layerFilters"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Action"]
  MOVE R3 R2
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K10 ["Name"]
  DUPCLOSURE R5 K11 [PROTO_0]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_0:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["PathReducer"]
  GETTABLEKS R2 R1 K2 ["SelectedObject"]
  JUMPIFEQKNIL R2 [+10]
  GETTABLEKS R2 R1 K2 ["SelectedObject"]
  GETTABLEKS R5 R1 K2 ["SelectedObject"]
  GETTABLEKS R4 R5 K3 ["Closed"]
  NOT R3 R4
  SETTABLEKS R3 R2 K3 ["Closed"]
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  RETURN R0 1
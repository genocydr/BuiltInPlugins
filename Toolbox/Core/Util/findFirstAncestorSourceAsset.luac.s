PROTO_0:
  GETTABLEKS R1 R0 K0 ["Parent"]
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R1 K1 ["SourceAssetId"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+2]
  RETURN R1 1
  GETTABLEKS R1 R1 K0 ["Parent"]
  JUMPBACK [-10]
  LOADNIL R2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
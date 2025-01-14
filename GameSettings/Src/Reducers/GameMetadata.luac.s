PROTO_0:
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"gameId"}]
  GETTABLEKS R5 R1 K2 ["gameId"]
  SETTABLEKS R5 R4 K2 ["gameId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"game"}]
  GETTABLEKS R5 R1 K2 ["game"]
  SETTABLEKS R5 R4 K2 ["game"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["createReducer"]
  DUPTABLE R4 K11 [{"game", "gameId"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K9 ["game"]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["gameId"]
  DUPTABLE R5 K15 [{"ResetStore", "SetGameId", "SetGame"}]
  DUPCLOSURE R6 K16 [PROTO_0]
  SETTABLEKS R6 R5 K12 ["ResetStore"]
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K13 ["SetGameId"]
  DUPCLOSURE R6 K18 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K14 ["SetGame"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_0:
  DUPTABLE R0 K2 [{"selectedTab", "allTabsData"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["selectedTab"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["allTabsData"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selectedTab"}]
  GETTABLEKS R5 R1 K2 ["selectedTab"]
  SETTABLEKS R5 R4 K2 ["selectedTab"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"allTabsData"}]
  GETTABLEKS R5 R1 K2 ["allTabsData"]
  SETTABLEKS R5 R4 K2 ["allTabsData"]
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
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["SetSelectedTab"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K11 ["SetAllTabsData"]
  CALL R5 1 1
  DUPCLOSURE R6 K12 [PROTO_0]
  GETTABLEKS R7 R1 K13 ["createReducer"]
  DUPTABLE R8 K16 [{"selectedTab", "allTabsData"}]
  LOADNIL R9
  SETTABLEKS R9 R8 K14 ["selectedTab"]
  LOADNIL R9
  SETTABLEKS R9 R8 K15 ["allTabsData"]
  NEWTABLE R9 2 0
  GETTABLEKS R10 R4 K17 ["name"]
  DUPCLOSURE R11 K18 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R5 K17 ["name"]
  DUPCLOSURE R11 K19 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R11 R9 R10
  CALL R7 2 1
  RETURN R7 1

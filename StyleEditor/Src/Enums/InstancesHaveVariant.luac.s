MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["enumerate"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K7 ["InstancesHaveVariant"]
  NEWTABLE R4 0 3
  LOADK R5 K8 ["All"]
  LOADK R6 K9 ["Mixed"]
  LOADK R7 K10 ["None"]
  SETLIST R4 R5 3 [1]
  CALL R2 2 -1
  RETURN R2 -1
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
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  MOVE R3 R1
  LOADK R4 K9 ["PropertyNameValidationError"]
  NEWTABLE R5 0 4
  LOADK R6 K10 ["None"]
  LOADK R7 K11 ["DoesNotExist"]
  LOADK R8 K12 ["DoesNotExistOnType"]
  LOADK R9 K13 ["AlreadyDefined"]
  SETLIST R5 R6 4 [1]
  CALL R3 2 1
  RETURN R3 1

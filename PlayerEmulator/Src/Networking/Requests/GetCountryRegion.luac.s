PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseCode"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["StatusCodes"]
  GETTABLEKS R2 R3 K2 ["OK"]
  JUMPIFNOTEQ R1 R2 [+20]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R5 R0 K3 ["responseBody"]
  GETTABLEKS R4 R5 K4 ["countryRegionList"]
  CALL R3 1 -1
  NAMECALL R1 R1 K5 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 1
  GETUPVAL R3 3
  GETUPVAL R4 4
  GETUPVAL R5 5
  CALL R3 2 -1
  NAMECALL R1 R1 K5 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0
  GETIMPORT R1 K7 [warn]
  LOADK R3 K8 ["Player Emulator can't get country region list: HTTP error "]
  GETTABLEKS R5 R0 K0 ["responseCode"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K10 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["Player Emulator can't get country region list: "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["get"]
  CALL R1 2 1
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["handleRetry"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["parseJson"]
  MOVE R4 R2
  CALL R3 1 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  DUPCLOSURE R6 K3 [PROTO_1]
  NAMECALL R3 R3 K4 ["andThen"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Networking"]
  GETTABLEKS R2 R3 K7 ["UrlConstructor"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Http"]
  CALL R2 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["PlayerEmulatorUtilities"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["getStudioLocaleId"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K13 ["Actions"]
  GETTABLEKS R5 R6 K14 ["LoadCountryRegion"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K15 ["Thunks"]
  GETTABLEKS R6 R7 K16 ["InitCountryRegionSetting"]
  CALL R5 1 1
  MOVE R6 R3
  CALL R6 0 1
  LOADK R8 K17 ["v1/country-regions?locale="]
  MOVE R9 R6
  CONCAT R7 R8 R9
  GETTABLEKS R8 R1 K18 ["BuildUrl"]
  LOADK R9 K19 ["locale"]
  MOVE R10 R7
  CALL R8 2 1
  DUPCLOSURE R9 K20 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R9 1
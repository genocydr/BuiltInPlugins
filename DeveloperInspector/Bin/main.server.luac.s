PROTO_0:
  GETIMPORT R0 K1 [plugin]
  LOADK R1 K2 ["DeveloperInspector"]
  SETTABLEKS R1 R0 K3 ["Name"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K6 [{"Plugin"}]
  GETIMPORT R3 K1 [plugin]
  SETTABLEKS R3 R2 K5 ["Plugin"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["mount"]
  MOVE R2 R0
  CALL R1 1 1
  SETUPVAL R1 2
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [require]
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K7 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K9 [game]
  LOADK R2 K10 ["StudioService"]
  NAMECALL R0 R0 K11 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K12 ["HasInternalPermission"]
  CALL R0 1 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R0 R1 K6 ["Parent"]
  GETIMPORT R1 K3 [require]
  GETTABLEKS R4 R0 K13 ["Src"]
  GETTABLEKS R3 R4 K14 ["Util"]
  GETTABLEKS R2 R3 K15 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K16 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K3 [require]
  GETTABLEKS R5 R0 K13 ["Src"]
  GETTABLEKS R4 R5 K14 ["Util"]
  GETTABLEKS R3 R4 K17 ["commonInit"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 0
  GETIMPORT R3 K3 [require]
  GETTABLEKS R5 R0 K13 ["Src"]
  GETTABLEKS R4 R5 K18 ["MainPlugin"]
  CALL R3 1 1
  LOADNIL R4
  GETIMPORT R5 K3 [require]
  GETTABLEKS R7 R0 K19 ["Packages"]
  GETTABLEKS R6 R7 K20 ["Roact"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K21 ["setGlobalConfig"]
  DUPTABLE R7 K25 [{"typeChecks", "propValidation", "elementTracing"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K22 ["typeChecks"]
  LOADB R8 1
  SETTABLEKS R8 R7 K23 ["propValidation"]
  LOADB R8 1
  SETTABLEKS R8 R7 K24 ["elementTracing"]
  CALL R6 1 0
  NEWCLOSURE R6 P0
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE REF R4
  GETIMPORT R8 K1 [plugin]
  GETTABLEKS R7 R8 K26 ["Unloading"]
  NEWCLOSURE R9 P1
  CAPTURE REF R4
  CAPTURE VAL R5
  NAMECALL R7 R7 K27 ["Connect"]
  CALL R7 2 0
  GETIMPORT R7 K1 [plugin]
  LOADK R8 K28 ["DeveloperInspector"]
  SETTABLEKS R8 R7 K29 ["Name"]
  GETTABLEKS R7 R5 K30 ["createElement"]
  MOVE R8 R3
  DUPTABLE R9 K32 [{"Plugin"}]
  GETIMPORT R10 K1 [plugin]
  SETTABLEKS R10 R9 K31 ["Plugin"]
  CALL R7 2 1
  GETTABLEKS R8 R5 K33 ["mount"]
  MOVE R9 R7
  CALL R8 1 1
  MOVE R4 R8
  CLOSEUPVALS R4
  RETURN R0 0
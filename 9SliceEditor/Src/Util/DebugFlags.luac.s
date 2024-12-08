PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["9SliceEditorFlags"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R3 1
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  GETUPVAL R1 2
  RETURN R1 1
  GETUPVAL R3 1
  GETTABLE R2 R0 R3
  GETTABLEKS R1 R2 K2 ["Value"]
  RETURN R1 1

PROTO_2:
  ORK R1 R1 K0 [False]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE REF R1
  CLOSEUPVALS R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [pcall]
  DUPCLOSURE R2 K6 [PROTO_0]
  CALL R1 1 2
  DUPCLOSURE R3 K7 [PROTO_2]
  CAPTURE VAL R0
  NEWTABLE R4 8 0
  LOADNIL R6
  ORK R6 R6 K8 [False]
  LOADK R7 K9 ["RunningUnderCLI"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE REF R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K9 ["RunningUnderCLI"]
  LOADB R6 0
  ORK R6 R6 K8 [False]
  LOADK R7 K10 ["RunTests"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE REF R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K10 ["RunTests"]
  LOADNIL R6
  ORK R6 R6 K8 [False]
  LOADK R7 K11 ["LogTestsQuiet"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE REF R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K11 ["LogTestsQuiet"]
  LOADNIL R6
  ORK R6 R6 K8 [False]
  LOADK R7 K12 ["LogAnalytics"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE REF R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K12 ["LogAnalytics"]
  LOADNIL R6
  ORK R6 R6 K8 [False]
  LOADK R7 K13 ["RunDeveloperFrameworkTests"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE REF R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K13 ["RunDeveloperFrameworkTests"]
  LOADNIL R6
  ORK R6 R6 K8 [False]
  LOADK R7 K14 ["EnableRoactConfigs"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE REF R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K14 ["EnableRoactConfigs"]
  LOADNIL R6
  ORK R6 R6 K8 [False]
  LOADK R7 K15 ["EnableDeveloperTools"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE REF R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K15 ["EnableDeveloperTools"]
  RETURN R4 1

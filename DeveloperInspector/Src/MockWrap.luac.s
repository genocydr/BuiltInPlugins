PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 1
  DUPTABLE R1 K5 [{"plugin", "mouse", "store", "theme"}]
  SETTABLEKS R0 R1 K1 ["plugin"]
  NAMECALL R2 R0 K6 ["GetMouse"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["mouse"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["Store"]
  GETTABLEKS R2 R3 K0 ["new"]
  GETUPVAL R3 2
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["store"]
  GETUPVAL R2 3
  LOADB R3 1
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["theme"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K4 [{"plugin", "mouse", "store", "analytics"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["Plugin"]
  GETTABLEKS R2 R3 K6 ["new"]
  GETTABLEKS R3 R0 K0 ["plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["plugin"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Mouse"]
  GETTABLEKS R2 R3 K6 ["new"]
  GETTABLEKS R3 R0 K1 ["mouse"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["mouse"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Store"]
  GETTABLEKS R2 R3 K6 ["new"]
  GETTABLEKS R3 R0 K2 ["store"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["store"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["Analytics"]
  GETTABLEKS R2 R3 K10 ["mock"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["analytics"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["theme"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["store"]
  NAMECALL R2 R2 K3 ["destruct"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K4 ["plugin"]
  NAMECALL R2 R2 K5 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createMocks"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["mocks"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createMockContextItems"]
  GETTABLEKS R2 R0 K1 ["mocks"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["mockItems"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["provide"]
  NEWTABLE R2 0 5
  GETTABLEKS R4 R0 K1 ["mockItems"]
  GETTABLEKS R3 R4 K2 ["plugin"]
  GETTABLEKS R5 R0 K1 ["mockItems"]
  GETTABLEKS R4 R5 K3 ["mouse"]
  GETTABLEKS R6 R0 K1 ["mockItems"]
  GETTABLEKS R5 R6 K4 ["store"]
  GETTABLEKS R7 R0 K1 ["mockItems"]
  GETTABLEKS R6 R7 K5 ["theme"]
  GETTABLEKS R8 R0 K1 ["mockItems"]
  GETTABLEKS R7 R8 K6 ["analytics"]
  SETLIST R2 R3 5 [1]
  DUPTABLE R3 K8 [{"WrappedComponent"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["createElement"]
  LOADK R5 K10 ["Frame"]
  LOADNIL R6
  GETTABLEKS R8 R0 K11 ["props"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["Children"]
  GETTABLE R7 R8 R9
  CALL R4 3 1
  SETTABLEKS R4 R3 K7 ["WrappedComponent"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  LOADB R4 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["function"] [+19]
  LOADB R4 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K3 ["table"] [+11]
  GETTABLEKS R6 R0 K4 ["render"]
  FASTCALL1 TYPE R6 [+2]
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["function"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K5 [+4]
  LOADK R5 K5 ["MockWrapper.createElementWithMockContext passed invalid component"]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K10 [{"MyComponent"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["createElement"]
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["MyComponent"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElementWithMockContext"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R3 K10 ["TestHelpers"]
  GETTABLEKS R7 R5 K11 ["Instances"]
  GETTABLEKS R6 R7 K12 ["MockPlugin"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Reducers"]
  GETTABLEKS R8 R9 K15 ["MainReducer"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K16 ["Resources"]
  GETTABLEKS R9 R10 K17 ["MakeTheme"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K18 ["PureComponent"]
  LOADK R11 K19 ["MockProvider"]
  NAMECALL R9 R9 K20 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K21 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K22 ["createMocks"]
  DUPCLOSURE R10 K23 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K24 ["createMockContextItems"]
  DUPCLOSURE R10 K25 [PROTO_2]
  SETTABLEKS R10 R9 K26 ["cleanupMocks"]
  DUPCLOSURE R10 K27 [PROTO_3]
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K28 ["init"]
  DUPCLOSURE R10 K29 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K30 ["render"]
  DUPCLOSURE R10 K31 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K32 ["createElementWithMockContext"]
  DUPCLOSURE R10 K33 [PROTO_6]
  CAPTURE VAL R9
  SETGLOBAL R10 K34 ["mockWrap"]
  GETGLOBAL R10 K34 ["mockWrap"]
  RETURN R10 1
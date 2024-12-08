PROTO_0:
  LOADB R1 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K1 ["minWidth"]
  ORK R3 R4 K0 [0]
  JUMPIFNOTLE R3 R2 [+23]
  LOADB R1 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K3 ["maxWidth"]
  ORK R3 R4 K2 [∞]
  JUMPIFNOTLE R2 R3 [+16]
  LOADB R1 0
  GETUPVAL R2 1
  GETTABLEKS R4 R0 K4 ["minHeight"]
  ORK R3 R4 K0 [0]
  JUMPIFNOTLE R3 R2 [+9]
  GETUPVAL R2 1
  GETTABLEKS R4 R0 K5 ["maxHeight"]
  ORK R3 R4 K2 [∞]
  JUMPIFLE R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["X"]
  GETTABLEKS R3 R1 K1 ["Y"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["last"]
  MOVE R6 R0
  MOVE R7 R4
  CALL R5 2 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R5 K3 ["value"]
  RETURN R6 1
  LOADNIL R6
  RETURN R6 1

PROTO_2:
  GETUPVAL R1 0
  GETIMPORT R2 K2 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  GETTABLEKS R3 R2 K3 ["X"]
  GETTABLEKS R4 R2 K4 ["Y"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["last"]
  MOVE R7 R1
  MOVE R8 R5
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R0 R6 K6 ["value"]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R5 R4 K1 ["X"]
  GETTABLEKS R6 R4 K2 ["Y"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CAPTURE VAL R6
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["last"]
  MOVE R9 R3
  MOVE R10 R7
  CALL R8 2 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R2 R8 K4 ["value"]
  JUMP [+1]
  LOADNIL R2
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R0 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Change"]
  GETTABLEKS R1 R2 K1 ["AbsoluteSize"]
  GETUPVAL R2 1
  SETTABLE R2 R0 R1
  RETURN R0 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R5 0 1
  MOVE R6 R0
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useMemo"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  MOVE R5 R4
  MOVE R6 R1
  RETURN R5 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R6 K13 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R6 1
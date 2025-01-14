PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetSelectedRibbonTool"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Heartbeat"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ContextServices"]
  GETTABLEKS R0 R1 K1 ["Plugin"]
  NAMECALL R0 R0 K2 ["use"]
  CALL R0 1 1
  NAMECALL R0 R0 K3 ["get"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  MOVE R4 R0
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["useState"]
  MOVE R3 R1
  CALL R2 1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["useEffect"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE VAL R1
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  CALL R4 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["RunService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1

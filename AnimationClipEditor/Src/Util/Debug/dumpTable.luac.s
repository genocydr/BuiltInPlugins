PROTO_0:
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [tostring]
  CALL R3 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [tostring]
  CALL R4 1 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADK R2 K0 ["<nil>"]
  RETURN R2 1
  GETIMPORT R2 K3 [string.rep]
  LOADK R3 K4 ["  "]
  MOVE R4 R1
  CALL R2 2 1
  LOADK R3 K5 ["{
"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Dictionary"]
  GETTABLEKS R4 R5 K7 ["keys"]
  MOVE R5 R0
  CALL R4 1 1
  GETIMPORT R5 K10 [table.sort]
  MOVE R6 R4
  DUPCLOSURE R7 K11 [PROTO_0]
  CALL R5 2 0
  GETIMPORT R5 K13 [ipairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETTABLE R10 R0 R9
  MOVE R11 R3
  GETIMPORT R12 K15 [string.format]
  LOADK R13 K16 ["%s  %s%s:"]
  MOVE R14 R2
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R16 R9
  GETIMPORT R15 K18 [tostring]
  CALL R15 1 1
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R18 R9
  GETIMPORT R17 K20 [typeof]
  CALL R17 1 1
  JUMPIFEQKS R17 K1 ["string"] [+18]
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R18 R9
  GETIMPORT R17 K20 [typeof]
  CALL R17 1 1
  JUMPIFEQKS R17 K21 ["number"] [+11]
  GETIMPORT R16 K15 [string.format]
  LOADK R17 K22 ["[%s]"]
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R19 R9
  GETIMPORT R18 K20 [typeof]
  CALL R18 1 1
  CALL R16 2 1
  JUMP [+1]
  LOADK R16 K23 [""]
  CALL R12 4 1
  CONCAT R3 R11 R12
  FASTCALL1 TYPE R10 [+3]
  MOVE R12 R10
  GETIMPORT R11 K25 [type]
  CALL R11 1 1
  JUMPIFNOTEQKS R11 K8 ["table"] [+8]
  MOVE R11 R3
  GETUPVAL R12 1
  MOVE R13 R10
  ADDK R14 R1 K26 [1]
  CALL R12 2 1
  CONCAT R3 R11 R12
  JUMP [+9]
  MOVE R11 R3
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R15 R10
  GETIMPORT R14 K18 [tostring]
  CALL R14 1 1
  MOVE R12 R14
  LOADK R13 K27 ["
"]
  CONCAT R3 R11 R13
  FORGLOOP R5 2 [inext] [-62]
  MOVE R6 R3
  MOVE R7 R2
  LOADK R8 K28 ["}
"]
  CONCAT R5 R6 R8
  RETURN R5 1

PROTO_2:
  GETIMPORT R1 K1 [print]
  GETUPVAL R2 0
  MOVE R3 R0
  LOADN R4 0
  CALL R2 2 1
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R3 K8 [PROTO_2]
  CAPTURE VAL R2
  RETURN R3 1
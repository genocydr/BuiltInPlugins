PROTO_0:
  GETIMPORT R2 K2 [string.lower]
  MOVE R3 R0
  CALL R2 1 1
  MOVE R0 R2
  GETIMPORT R2 K2 [string.lower]
  MOVE R3 R1
  CALL R2 1 1
  MOVE R1 R2
  GETIMPORT R2 K5 [utf8.len]
  MOVE R3 R0
  CALL R2 1 1
  GETIMPORT R3 K5 [utf8.len]
  MOVE R4 R1
  CALL R3 1 1
  NEWTABLE R4 0 0
  LOADN R7 1
  ADDK R5 R2 K6 [1]
  LOADN R6 1
  FORNPREP R5
  GETIMPORT R8 K9 [table.create]
  ADDK R9 R3 K6 [1]
  LOADN R10 0
  CALL R8 2 1
  SETTABLE R8 R4 R7
  FORNLOOP R5
  LOADN R7 1
  ADDK R5 R2 K6 [1]
  LOADN R6 1
  FORNPREP R5
  GETTABLE R8 R4 R7
  SUBK R9 R7 K6 [1]
  SETTABLEN R9 R8 1
  FORNLOOP R5
  LOADN R7 1
  ADDK R5 R3 K6 [1]
  LOADN R6 1
  FORNPREP R5
  GETTABLEN R8 R4 1
  SUBK R9 R7 K6 [1]
  SETTABLE R9 R8 R7
  FORNLOOP R5
  LOADNIL R5
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  GETIMPORT R8 K11 [utf8.graphemes]
  MOVE R9 R0
  CALL R8 1 3
  FORGPREP R8
  MOVE R14 R6
  MOVE R17 R11
  MOVE R18 R12
  NAMECALL R15 R0 K12 ["sub"]
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K14 [table.insert]
  CALL R13 -1 0
  FORGLOOP R8 2 [-11]
  GETIMPORT R8 K11 [utf8.graphemes]
  MOVE R9 R1
  CALL R8 1 3
  FORGPREP R8
  MOVE R14 R7
  MOVE R17 R11
  MOVE R18 R12
  NAMECALL R15 R1 K12 ["sub"]
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K14 [table.insert]
  CALL R13 -1 0
  FORGLOOP R8 2 [-11]
  LOADN R10 2
  LENGTH R11 R6
  ADDK R8 R11 K6 [1]
  LOADN R9 1
  FORNPREP R8
  LOADN R13 2
  LENGTH R14 R7
  ADDK R11 R14 K6 [1]
  LOADN R12 1
  FORNPREP R11
  SUBK R15 R10 K6 [1]
  GETTABLE R14 R6 R15
  SUBK R16 R13 K6 [1]
  GETTABLE R15 R7 R16
  JUMPIFNOTEQ R14 R15 [+3]
  LOADN R5 0
  JUMP [+1]
  LOADN R5 1
  GETTABLE R14 R4 R10
  SUBK R19 R10 K6 [1]
  GETTABLE R18 R4 R19
  GETTABLE R17 R18 R13
  ADDK R16 R17 K6 [1]
  GETTABLE R19 R4 R10
  SUBK R20 R13 K6 [1]
  GETTABLE R18 R19 R20
  ADDK R17 R18 K6 [1]
  SUBK R21 R10 K6 [1]
  GETTABLE R20 R4 R21
  SUBK R21 R13 K6 [1]
  GETTABLE R19 R20 R21
  ADD R18 R19 R5
  FASTCALL MATH_MIN [+2]
  GETIMPORT R15 K17 [math.min]
  CALL R15 3 1
  SETTABLE R15 R14 R13
  LOADN R14 2
  JUMPIFNOTLT R14 R10 [+30]
  LOADN R14 2
  JUMPIFNOTLT R14 R13 [+27]
  SUBK R15 R10 K6 [1]
  GETTABLE R14 R6 R15
  SUBK R16 R13 K18 [2]
  GETTABLE R15 R7 R16
  JUMPIFNOTEQ R14 R15 [+21]
  SUBK R15 R10 K18 [2]
  GETTABLE R14 R6 R15
  SUBK R16 R13 K6 [1]
  GETTABLE R15 R7 R16
  JUMPIFNOTEQ R14 R15 [+15]
  GETTABLE R14 R4 R10
  GETTABLE R17 R4 R10
  GETTABLE R16 R17 R13
  SUBK R20 R10 K18 [2]
  GETTABLE R19 R4 R20
  SUBK R20 R13 K18 [2]
  GETTABLE R18 R19 R20
  ADDK R17 R18 K6 [1]
  FASTCALL2 MATH_MIN R16 R17 [+3]
  GETIMPORT R15 K17 [math.min]
  CALL R15 2 1
  SETTABLE R15 R14 R13
  FORNLOOP R11
  FORNLOOP R8
  ADDK R10 R2 K6 [1]
  GETTABLE R9 R4 R10
  ADDK R10 R3 K6 [1]
  GETTABLE R8 R9 R10
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
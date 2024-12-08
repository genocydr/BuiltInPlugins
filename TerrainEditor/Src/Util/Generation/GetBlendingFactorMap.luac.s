PROTO_0:
  LOADN R6 0
  JUMPIFLT R6 R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K0 [+4]
  LOADK R6 K0 ["w should be greater than 0"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MUL R9 R0 R0
  MINUS R8 R9
  DIV R7 R8 R3
  FASTCALL1 MATH_EXP R7 [+2]
  GETIMPORT R6 K5 [math.exp]
  CALL R6 1 1
  MUL R5 R6 R2
  SUB R4 R1 R5
  RETURN R4 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["PreserveRatio"]
  GETTABLEKS R3 R1 K1 ["PreserveDistance"]
  GETTABLEKS R4 R1 K2 ["BlendingStrength"]
  GETIMPORT R5 K5 [Vector2.new]
  GETTABLEKS R7 R0 K7 ["X"]
  DIVK R6 R7 K6 [2]
  GETTABLEKS R8 R0 K8 ["Y"]
  DIVK R7 R8 K6 [2]
  CALL R5 2 1
  GETTABLEKS R6 R5 K9 ["Magnitude"]
  GETTABLEKS R8 R5 K7 ["X"]
  GETTABLEKS R9 R5 K8 ["Y"]
  FASTCALL2 MATH_MIN R8 R9 [+3]
  GETIMPORT R7 K12 [math.min]
  CALL R7 2 1
  GETIMPORT R8 K15 [table.create]
  GETTABLEKS R10 R0 K7 ["X"]
  GETTABLEKS R11 R0 K8 ["Y"]
  MUL R9 R10 R11
  LOADN R10 0
  CALL R8 2 1
  LOADN R11 1
  GETTABLEKS R9 R0 K7 ["X"]
  LOADN R10 1
  FORNPREP R9
  LOADN R14 1
  GETTABLEKS R12 R0 K8 ["Y"]
  LOADN R13 1
  FORNPREP R12
  GETIMPORT R15 K5 [Vector2.new]
  MOVE R16 R11
  MOVE R17 R14
  CALL R15 2 1
  SUB R16 R15 R5
  GETTABLEKS R17 R16 K9 ["Magnitude"]
  DIV R18 R17 R6
  DIV R19 R17 R7
  LOADN R21 1
  MUL R20 R21 R18
  LOADN R22 0
  MUL R21 R22 R19
  ADD R18 R20 R21
  LOADN R20 0
  JUMPIFNOTLT R20 R18 [+32]
  LOADN R20 1
  JUMPIFNOTLT R18 R20 [+29]
  MOVE R22 R18
  LOADN R25 0
  JUMPIFLT R25 R2 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  FASTCALL2K ASSERT R24 K16 [+4]
  LOADK R25 K16 ["w should be greater than 0"]
  GETIMPORT R23 K18 [assert]
  CALL R23 2 0
  MUL R27 R22 R22
  MINUS R26 R27
  DIV R25 R26 R2
  FASTCALL1 MATH_EXP R25 [+2]
  GETIMPORT R24 K21 [math.exp]
  CALL R24 1 1
  MUL R23 R24 R3
  SUBRK R21 R19 K23 [math.clamp]
  LOADN R22 0
  LOADN R23 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R20 K23 [math.clamp]
  CALL R20 3 1
  MUL R18 R20 R4
  SUBK R22 R11 K19 [1]
  GETTABLEKS R23 R0 K8 ["Y"]
  MUL R21 R22 R23
  ADD R20 R21 R14
  LOADN R23 0
  LOADN R24 1
  FASTCALL3 MATH_CLAMP R18 R23 R24
  MOVE R22 R18
  GETIMPORT R21 K23 [math.clamp]
  CALL R21 3 1
  SETTABLE R21 R8 R20
  FORNLOOP R12
  FORNLOOP R9
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  RETURN R1 1

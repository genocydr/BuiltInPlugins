PROTO_0:
  RETURN R0 1

PROTO_1:
  LOADK R2 K0 ["<font color=\"#FFCE0B\">"]
  MOVE R3 R0
  LOADK R4 K1 ["</font>"]
  CONCAT R1 R2 R4
  RETURN R1 1

PROTO_2:
  LOADK R2 K0 ["<font color=\"#008BDB\">"]
  MOVE R3 R0
  LOADK R4 K1 ["</font>"]
  CONCAT R1 R2 R4
  RETURN R1 1

PROTO_3:
  LOADK R2 K0 ["<font color=\"#009E56\">"]
  MOVE R3 R0
  LOADK R4 K1 ["</font>"]
  CONCAT R1 R2 R4
  RETURN R1 1

PROTO_4:
  LOADK R2 K0 ["<font color=\"#EF1E14\">"]
  MOVE R3 R0
  LOADK R4 K1 ["</font>"]
  CONCAT R1 R2 R4
  RETURN R1 1

PROTO_5:
  LENGTH R3 R0
  JUMPIFEQKN R3 K0 [0] [+20]
  LENGTH R3 R1
  JUMPIFEQKN R3 K0 [0] [+17]
  FASTCALL2K STRING_BYTE R0 K1 [+5]
  MOVE R4 R0
  LOADK R5 K1 [1]
  GETIMPORT R3 K4 [string.byte]
  CALL R3 2 1
  FASTCALL2K STRING_BYTE R1 K1 [+5]
  MOVE R5 R1
  LOADK R6 K1 [1]
  GETIMPORT R4 K4 [string.byte]
  CALL R4 2 1
  JUMPIFEQ R3 R4 [+3]
  LOADN R3 0
  RETURN R3 1
  LOADN R3 1
  LENGTH R5 R0
  LENGTH R6 R1
  FASTCALL2 MATH_MIN R5 R6 [+3]
  GETIMPORT R4 K7 [math.min]
  CALL R4 2 1
  MOVE R5 R4
  LOADN R6 1
  JUMPIFNOTLT R3 R5 [+32]
  FASTCALL3 STRING_SUB R0 R6 R5
  MOVE R8 R0
  MOVE R9 R6
  MOVE R10 R5
  GETIMPORT R7 K9 [string.sub]
  CALL R7 3 1
  FASTCALL3 STRING_SUB R1 R6 R5
  MOVE R9 R1
  MOVE R10 R6
  MOVE R11 R5
  GETIMPORT R8 K9 [string.sub]
  CALL R8 3 1
  JUMPIFNOTEQ R7 R8 [+4]
  MOVE R3 R5
  MOVE R6 R3
  JUMP [+1]
  MOVE R4 R5
  SUB R10 R4 R3
  DIVK R9 R10 K10 [2]
  ADD R8 R3 R9
  FASTCALL1 MATH_FLOOR R8 [+2]
  GETIMPORT R7 K12 [math.floor]
  CALL R7 1 1
  MOVE R5 R7
  JUMPBACK [-33]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R8 R2 K13 ["contextLines"]
  JUMP [+1]
  LOADN R8 0
  ORK R7 R8 K0 [0]
  LOADN R8 255
  MOVE R11 R5
  LOADN R9 0
  LOADN R10 255
  FORNPREP R9
  MOVE R5 R11
  FASTCALL2 STRING_BYTE R0 R11 [+5]
  MOVE R13 R0
  MOVE R14 R11
  GETIMPORT R12 K4 [string.byte]
  CALL R12 2 1
  JUMPIFNOTEQKN R12 K14 [10] [+4]
  ADDK R8 R8 K1 [1]
  JUMPIFLE R7 R8 [+2]
  FORNLOOP R9
  RETURN R5 1

PROTO_6:
  LENGTH R3 R0
  JUMPIFEQKN R3 K0 [0] [+20]
  LENGTH R3 R1
  JUMPIFEQKN R3 K0 [0] [+17]
  FASTCALL2K STRING_BYTE R0 K1 [+5]
  MOVE R4 R0
  LOADK R5 K1 [-1]
  GETIMPORT R3 K4 [string.byte]
  CALL R3 2 1
  FASTCALL2K STRING_BYTE R1 K1 [+5]
  MOVE R5 R1
  LOADK R6 K1 [-1]
  GETIMPORT R4 K4 [string.byte]
  CALL R4 2 1
  JUMPIFEQ R3 R4 [+3]
  LOADN R3 0
  RETURN R3 1
  LOADN R3 1
  LENGTH R5 R0
  LENGTH R6 R1
  FASTCALL2 MATH_MIN R5 R6 [+3]
  GETIMPORT R4 K7 [math.min]
  CALL R4 2 1
  MOVE R5 R4
  LOADN R6 1
  JUMPIFNOTLT R3 R5 [+32]
  MINUS R9 R5
  MINUS R10 R6
  FASTCALL3 STRING_SUB R0 R9 R10
  MOVE R8 R0
  GETIMPORT R7 K9 [string.sub]
  CALL R7 3 1
  MINUS R10 R5
  MINUS R11 R6
  FASTCALL3 STRING_SUB R1 R10 R11
  MOVE R9 R1
  GETIMPORT R8 K9 [string.sub]
  CALL R8 3 1
  JUMPIFNOTEQ R7 R8 [+4]
  MOVE R3 R5
  MOVE R6 R3
  JUMP [+1]
  MOVE R4 R5
  SUB R10 R4 R3
  DIVK R9 R10 K10 [2]
  ADD R8 R3 R9
  FASTCALL1 MATH_FLOOR R8 [+2]
  GETIMPORT R7 K12 [math.floor]
  CALL R7 1 1
  MOVE R5 R7
  JUMPBACK [-33]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R8 R2 K13 ["contextLines"]
  JUMP [+1]
  LOADN R8 0
  ORK R7 R8 K0 [0]
  LOADN R8 255
  MOVE R11 R5
  LOADN R9 0
  LOADN R10 255
  FORNPREP R9
  MOVE R5 R11
  MINUS R14 R11
  FASTCALL2 STRING_BYTE R0 R14 [+4]
  MOVE R13 R0
  GETIMPORT R12 K4 [string.byte]
  CALL R12 2 1
  JUMPIFNOTEQKN R12 K14 [10] [+4]
  ADDK R8 R8 K15 [1]
  JUMPIFLE R7 R8 [+2]
  FORNLOOP R9
  RETURN R5 1

PROTO_7:
  JUMPIFNOTEQKNIL R2 [+2]
  GETUPVAL R2 0
  GETTABLEKS R3 R2 K0 ["contextLines"]
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K5 [{"depth", "multiline", "maxLineLength", "indent"}]
  LOADN R7 100
  SETTABLEKS R7 R6 K1 ["depth"]
  LOADB R7 1
  SETTABLEKS R7 R6 K2 ["multiline"]
  LOADN R7 100
  SETTABLEKS R7 R6 K3 ["maxLineLength"]
  LOADK R7 K6 ["  "]
  SETTABLEKS R7 R6 K4 ["indent"]
  CALL R4 2 1
  GETUPVAL R5 1
  MOVE R6 R1
  DUPTABLE R7 K5 [{"depth", "multiline", "maxLineLength", "indent"}]
  LOADN R8 100
  SETTABLEKS R8 R7 K1 ["depth"]
  LOADB R8 1
  SETTABLEKS R8 R7 K2 ["multiline"]
  LOADN R8 100
  SETTABLEKS R8 R7 K3 ["maxLineLength"]
  LOADK R8 K6 ["  "]
  SETTABLEKS R8 R7 K4 ["indent"]
  CALL R5 2 1
  JUMPIFNOTEQ R4 R5 [+3]
  LOADK R6 K7 ["Compared values have no visual difference."]
  RETURN R6 1
  GETUPVAL R6 2
  MOVE R7 R4
  MOVE R8 R5
  DUPTABLE R9 K8 [{"contextLines"}]
  SETTABLEKS R3 R9 K0 ["contextLines"]
  CALL R6 3 1
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+17]
  ADDK R9 R6 K9 [1]
  FASTCALL2 STRING_SUB R4 R9 [+4]
  MOVE R8 R4
  GETIMPORT R7 K12 [string.sub]
  CALL R7 2 1
  MOVE R4 R7
  ADDK R9 R6 K9 [1]
  FASTCALL2 STRING_SUB R5 R9 [+4]
  MOVE R8 R5
  GETIMPORT R7 K12 [string.sub]
  CALL R7 2 1
  MOVE R5 R7
  GETUPVAL R7 3
  MOVE R8 R4
  MOVE R9 R5
  DUPTABLE R10 K8 [{"contextLines"}]
  SETTABLEKS R3 R10 K0 ["contextLines"]
  CALL R7 3 1
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+21]
  LOADN R10 1
  MINUS R12 R7
  SUBK R11 R12 K9 [1]
  FASTCALL3 STRING_SUB R4 R10 R11
  MOVE R9 R4
  GETIMPORT R8 K12 [string.sub]
  CALL R8 3 1
  MOVE R4 R8
  LOADN R10 1
  MINUS R12 R7
  SUBK R11 R12 K9 [1]
  FASTCALL3 STRING_SUB R5 R10 R11
  MOVE R9 R5
  GETIMPORT R8 K12 [string.sub]
  CALL R8 3 1
  MOVE R5 R8
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K13 ["diff"]
  MOVE R9 R4
  MOVE R10 R5
  DUPTABLE R11 K21 [{"contextLines", "expand", "omitAnnotationLines", "aColor", "bColor", "patchColor", "changeColor", "commonColor"}]
  SETTABLEKS R3 R11 K0 ["contextLines"]
  LOADB R12 0
  SETTABLEKS R12 R11 K14 ["expand"]
  LOADB R12 1
  SETTABLEKS R12 R11 K15 ["omitAnnotationLines"]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K16 ["aColor"]
  GETUPVAL R12 6
  SETTABLEKS R12 R11 K17 ["bColor"]
  GETUPVAL R12 7
  SETTABLEKS R12 R11 K18 ["patchColor"]
  GETUPVAL R12 8
  SETTABLEKS R12 R11 K19 ["changeColor"]
  GETUPVAL R12 9
  SETTABLEKS R12 R11 K20 ["commonColor"]
  CALL R8 3 1
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["JestDiff"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["pretty"]
  DUPTABLE R4 K10 [{"contextLines"}]
  LOADN R5 3
  SETTABLEKS R5 R4 K9 ["contextLines"]
  DUPCLOSURE R5 K11 [PROTO_0]
  DUPCLOSURE R6 K12 [PROTO_1]
  DUPCLOSURE R7 K13 [PROTO_2]
  DUPCLOSURE R8 K14 [PROTO_3]
  DUPCLOSURE R9 K15 [PROTO_4]
  DUPCLOSURE R10 K16 [PROTO_5]
  DUPCLOSURE R11 K17 [PROTO_6]
  DUPCLOSURE R12 K18 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R12 1

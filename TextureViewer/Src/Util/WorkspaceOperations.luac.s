PROTO_0:
  GETTABLEKS R2 R0 K0 ["Size"]
  GETTABLEKS R3 R1 K0 ["Size"]
  JUMPIFNOTEQ R2 R3 [+25]
  GETTABLEKS R2 R0 K1 ["Count"]
  GETTABLEKS R3 R1 K1 ["Count"]
  JUMPIFNOTEQ R2 R3 [+10]
  GETTABLEKS R3 R0 K2 ["Id"]
  GETTABLEKS R4 R1 K2 ["Id"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["Count"]
  GETTABLEKS R4 R1 K1 ["Count"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R3 R0 K0 ["Size"]
  GETTABLEKS R4 R1 K0 ["Size"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isCli"]
  CALL R0 0 1
  JUMPIFNOT R0 [+3]
  NEWTABLE R0 0 0
  RETURN R0 1
  NEWTABLE R0 0 0
  NEWTABLE R1 0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["fetchTextureSizes"]
  CALL R2 0 1
  GETIMPORT R3 K3 [pairs]
  GETIMPORT R5 K5 [game]
  GETTABLEKS R4 R5 K6 ["Workspace"]
  NAMECALL R4 R4 K7 ["GetDescendants"]
  CALL R4 1 -1
  CALL R3 -1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R7 K8 ["ClassName"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K9 ["INSTANCE_PROPERTIES_TO_PARSE"]
  GETTABLE R9 R10 R8
  JUMPIFNOT R9 [+35]
  GETIMPORT R10 K11 [ipairs]
  MOVE R11 R9
  CALL R10 1 3
  FORGPREP_INEXT R10
  GETTABLE R15 R7 R14
  JUMPIFNOT R15 [+26]
  LENGTH R16 R15
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+23]
  GETTABLE R16 R0 R15
  JUMPIFNOTEQKNIL R16 [+10]
  LOADN R16 1
  SETTABLE R16 R0 R15
  NEWTABLE R16 0 1
  MOVE R17 R7
  SETLIST R16 R17 1 [1]
  SETTABLE R16 R1 R15
  JUMP [+10]
  GETTABLE R17 R0 R15
  ADDK R16 R17 K12 [1]
  SETTABLE R16 R0 R15
  GETTABLE R17 R1 R15
  FASTCALL2 TABLE_INSERT R17 R7 [+4]
  MOVE R18 R7
  GETIMPORT R16 K15 [table.insert]
  CALL R16 2 0
  FORGLOOP R10 2 [inext] [-29]
  FORGLOOP R3 2 [-43]
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [pairs]
  MOVE R5 R0
  CALL R4 1 3
  FORGPREP_NEXT R4
  LOADNIL R9
  LOADNIL R10
  GETIMPORT R11 K18 [string.match]
  MOVE R12 R7
  LOADK R13 K19 ["%d"]
  CALL R11 2 1
  JUMPIFNOTEQKNIL R11 [+4]
  MOVE R10 R7
  MOVE R9 R10
  JUMP [+9]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K20 ["parseIdFromTextureAlias"]
  MOVE R12 R7
  CALL R11 1 1
  MOVE R10 R11
  LOADK R11 K21 ["rbxassetid://"]
  MOVE R12 R10
  CONCAT R9 R11 R12
  DUPTABLE R13 K28 [{"Texture", "Id", "Size", "Count", "Instances", "ZoomedInstanceIndex"}]
  SETTABLEKS R9 R13 K22 ["Texture"]
  SETTABLEKS R10 R13 K23 ["Id"]
  GETTABLE R15 R2 R10
  JUMPIFNOT R15 [+2]
  GETTABLE R14 R2 R10
  JUMPIF R14 [+1]
  LOADN R14 0
  SETTABLEKS R14 R13 K24 ["Size"]
  SETTABLEKS R8 R13 K25 ["Count"]
  GETTABLE R14 R1 R7
  SETTABLEKS R14 R13 K26 ["Instances"]
  LOADN R14 0
  SETTABLEKS R14 R13 K27 ["ZoomedInstanceIndex"]
  FASTCALL2 TABLE_INSERT R3 R13 [+4]
  MOVE R12 R3
  GETIMPORT R11 K15 [table.insert]
  CALL R11 2 0
  FORGLOOP R4 2 [-48]
  GETIMPORT R4 K30 [table.sort]
  MOVE R5 R3
  DUPCLOSURE R6 K31 [PROTO_0]
  CALL R4 2 0
  RETURN R3 1

PROTO_2:
  GETIMPORT R2 K1 [pairs]
  GETIMPORT R4 K3 [game]
  GETTABLEKS R3 R4 K4 ["Workspace"]
  NAMECALL R3 R3 K5 ["GetDescendants"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K6 ["ClassName"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["INSTANCE_PROPERTIES_TO_PARSE"]
  GETTABLE R8 R9 R7
  JUMPIFNOT R8 [+26]
  GETIMPORT R9 K9 [ipairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETTABLE R14 R6 R13
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["doesTextureAliasContainId"]
  MOVE R16 R14
  CALL R15 1 1
  JUMPIFNOT R15 [+9]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["parseIdFromTextureAlias"]
  MOVE R16 R14
  CALL R15 1 1
  JUMPIFNOTEQ R15 R0 [+3]
  SETTABLE R1 R6 R13
  JUMP [+3]
  JUMPIFNOTEQ R14 R0 [+2]
  SETTABLE R1 R6 R13
  FORGLOOP R9 2 [inext] [-20]
  FORGLOOP R2 2 [-34]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R1 K0 ["ViewportSize"]
  LOADN R4 1
  GETTABLEKS R6 R2 K1 ["X"]
  GETTABLEKS R7 R2 K2 ["Y"]
  DIV R5 R6 R7
  FASTCALL2 MATH_MIN R4 R5 [+3]
  GETIMPORT R3 K5 [math.min]
  CALL R3 2 1
  GETTABLEKS R9 R1 K7 ["FieldOfView"]
  DIVK R8 R9 K6 [2]
  FASTCALL1 MATH_RAD R8 [+2]
  GETIMPORT R7 K9 [math.rad]
  CALL R7 1 1
  FASTCALL1 MATH_TAN R7 [+2]
  GETIMPORT R6 K11 [math.tan]
  CALL R6 1 1
  MUL R5 R6 R3
  FASTCALL1 MATH_ATAN R5 [+2]
  GETIMPORT R4 K13 [math.atan]
  CALL R4 1 1
  GETTABLEKS R6 R0 K14 ["Magnitude"]
  DIVK R5 R6 K6 [2]
  FASTCALL1 MATH_SIN R4 [+3]
  MOVE R8 R4
  GETIMPORT R7 K16 [math.sin]
  CALL R7 1 1
  DIV R6 R5 R7
  RETURN R6 1

PROTO_4:
  GETUPVAL R0 0
  LOADK R3 K0 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+5]
  LOADK R3 K0 ["BasePart"]
  NAMECALL R1 R0 K2 ["FindFirstAncestorWhichIsA"]
  CALL R1 2 1
  MOVE R0 R1
  LOADK R4 K3 ["Model"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  NAMECALL R1 R0 K4 ["GetModelCFrame"]
  CALL R1 1 1
  JUMPIF R1 [+2]
  GETTABLEKS R1 R0 K5 ["CFrame"]
  SETUPVAL R1 1
  LOADK R4 K3 ["Model"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  NAMECALL R1 R0 K6 ["GetExtentsSize"]
  CALL R1 1 1
  JUMPIF R1 [+2]
  GETTABLEKS R1 R0 K7 ["Size"]
  SETUPVAL R1 2
  RETURN R0 0

PROTO_5:
  LOADNIL R2
  LOADNIL R3
  GETIMPORT R4 K1 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE REF R2
  CAPTURE REF R3
  CALL R4 1 2
  JUMPIF R4 [+3]
  LOADNIL R6
  CLOSEUPVALS R2
  RETURN R6 1
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+6]
  MOVE R8 R2
  MOVE R9 R3
  NAMECALL R6 R0 K2 ["zoomToExtents"]
  CALL R6 3 0
  JUMP [+59]
  GETIMPORT R6 K6 [Enum.CameraType.Fixed]
  SETTABLEKS R6 R0 K4 ["CameraType"]
  MOVE R7 R3
  GETTABLEKS R8 R0 K7 ["ViewportSize"]
  LOADN R10 1
  GETTABLEKS R12 R8 K8 ["X"]
  GETTABLEKS R13 R8 K9 ["Y"]
  DIV R11 R12 R13
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K12 [math.min]
  CALL R9 2 1
  GETTABLEKS R15 R0 K14 ["FieldOfView"]
  DIVK R14 R15 K13 [2]
  FASTCALL1 MATH_RAD R14 [+2]
  GETIMPORT R13 K16 [math.rad]
  CALL R13 1 1
  FASTCALL1 MATH_TAN R13 [+2]
  GETIMPORT R12 K18 [math.tan]
  CALL R12 1 1
  MUL R11 R12 R9
  FASTCALL1 MATH_ATAN R11 [+2]
  GETIMPORT R10 K20 [math.atan]
  CALL R10 1 1
  GETTABLEKS R12 R7 K21 ["Magnitude"]
  DIVK R11 R12 K13 [2]
  FASTCALL1 MATH_SIN R10 [+3]
  MOVE R13 R10
  GETIMPORT R12 K23 [math.sin]
  CALL R12 1 1
  DIV R6 R11 R12
  GETTABLEKS R7 R0 K24 ["CFrame"]
  GETTABLEKS R11 R7 K25 ["p"]
  SUB R10 R7 R11
  GETTABLEKS R11 R2 K25 ["p"]
  ADD R9 R10 R11
  GETTABLEKS R11 R7 K26 ["LookVector"]
  MUL R10 R11 R6
  SUB R8 R9 R10
  SETTABLEKS R8 R0 K24 ["CFrame"]
  SETTABLEKS R2 R0 K27 ["Focus"]
  LOADB R6 1
  CLOSEUPVALS R2
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K5 ["Stats"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R1 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Flags"]
  GETTABLEKS R4 R5 K8 ["getFFlagZoomToExtentsApi"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R4 K10 ["Utils"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R4 K11 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R1 K12 ["Packages"]
  GETTABLEKS R8 R9 K13 ["TestLoader"]
  CALL R7 1 1
  DUPCLOSURE R8 K14 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R0 K15 ["fetchAllTexturesFromWorkspace"]
  DUPCLOSURE R8 K16 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R0 K17 ["replaceAllTexturesWithId"]
  DUPCLOSURE R8 K18 [PROTO_3]
  DUPCLOSURE R9 K19 [PROTO_5]
  CAPTURE VAL R3
  SETTABLEKS R9 R0 K20 ["zoomToExtentsAndSelectInstance"]
  RETURN R0 1
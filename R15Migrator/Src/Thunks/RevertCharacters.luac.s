PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["CharacterConversion"]
  GETTABLEKS R2 R3 K2 ["selection"]
  GETTABLEKS R4 R1 K1 ["CharacterConversion"]
  GETTABLEKS R3 R4 K3 ["convertedCharacters"]
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R3 R8
  JUMPIFNOT R9 [+39]
  GETTABLEKS R10 R9 K4 ["model"]
  JUMPIFNOT R10 [+36]
  GETUPVAL R10 0
  GETTABLEKS R12 R9 K4 ["model"]
  NAMECALL R10 R10 K5 ["removeTag"]
  CALL R10 2 0
  GETUPVAL R10 1
  GETTABLEKS R12 R9 K4 ["model"]
  NAMECALL R10 R10 K5 ["removeTag"]
  CALL R10 2 0
  GETTABLEKS R10 R9 K4 ["model"]
  NAMECALL R10 R10 K6 ["Clone"]
  CALL R10 1 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K7 ["ReplaceModel"]
  MOVE R12 R8
  MOVE R13 R10
  LOADB R14 0
  CALL R11 3 0
  GETUPVAL R11 3
  MOVE R13 R10
  NAMECALL R11 R11 K8 ["addTag"]
  CALL R11 2 0
  GETUPVAL R13 4
  MOVE R14 R9
  LOADB R15 0
  CALL R13 2 -1
  NAMECALL R11 R0 K9 ["dispatch"]
  CALL R11 -1 0
  FORGLOOP R4 2 [-42]
  NAMECALL R4 R0 K0 ["getState"]
  CALL R4 1 1
  MOVE R1 R4
  GETTABLEKS R5 R1 K1 ["CharacterConversion"]
  GETTABLEKS R4 R5 K3 ["convertedCharacters"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K10 ["Dictionary"]
  GETTABLEKS R6 R7 K11 ["keys"]
  MOVE R7 R4
  CALL R6 1 1
  LENGTH R5 R6
  JUMPIFNOTEQKN R5 K12 [0] [+34]
  GETIMPORT R5 K14 [game]
  LOADK R7 K15 ["ReplicatedStorage"]
  NAMECALL R5 R5 K16 ["GetService"]
  CALL R5 2 1
  LOADK R8 K17 ["AvatarUnification"]
  NAMECALL R6 R5 K18 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  NAMECALL R7 R6 K19 ["Destroy"]
  CALL R7 1 0
  GETIMPORT R7 K14 [game]
  LOADK R9 K20 ["StarterPlayer"]
  NAMECALL R7 R7 K16 ["GetService"]
  CALL R7 2 1
  LOADK R10 K21 ["StarterCharacterScripts"]
  NAMECALL R8 R7 K18 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIFNOT R8 [+8]
  LOADK R11 K22 ["LocalEffects"]
  NAMECALL R9 R8 K18 ["FindFirstChild"]
  CALL R9 2 1
  JUMPIFNOT R9 [+3]
  NAMECALL R10 R9 K19 ["Destroy"]
  CALL R10 1 0
  GETUPVAL R5 6
  LOADK R7 K23 ["onCharactersReverted"]
  NAMECALL R5 R5 K24 ["getHandler"]
  CALL R5 2 1
  MOVE R6 R3
  MOVE R7 R2
  CALL R5 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Actions"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["SetAdapted"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K11 ["SetCharacterConverted"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K12 ["Modules"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["NpcManager"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K15 ["PublishTagging"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K16 ["CharacterTagging"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K15 ["PublishTagging"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K17 ["AdapterTagging"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R7 K18 ["QuickAccessTagging"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K19 ["CharactersConvertedToR15Tagging"]
  DUPCLOSURE R11 K20 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R11 1
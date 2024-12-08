PROTO_0:
  RETURN R0 1

PROTO_1:
  NEWTABLE R1 0 0
  GETUPVAL R5 0
  GETTABLEKS R2 R5 K0 ["LIMBS"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R9 R6
  NAMECALL R7 R0 K1 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K2 [+4]
  LOADK R10 K2 ["Avatar must have all limbs"]
  GETIMPORT R8 K4 [assert]
  CALL R8 2 0
  LOADK R10 K5 ["AvatarPartScaleType"]
  NAMECALL R8 R7 K1 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIFEQKNIL R8 [+28]
  LOADK R11 K6 ["StringValue"]
  NAMECALL R9 R8 K7 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+22]
  LOADB R10 0
  JUMPIFEQKNIL R8 [+5]
  LOADK R12 K6 ["StringValue"]
  NAMECALL R10 R8 K7 ["IsA"]
  CALL R10 2 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R10 R11 [+3]
  GETIMPORT R9 K4 [assert]
  CALL R9 2 0
  FASTCALL2 TABLE_INSERT R1 R8 [+5]
  MOVE R10 R1
  MOVE R11 R8
  GETIMPORT R9 K11 [table.insert]
  CALL R9 2 0
  FORGLOOP R2 2 [-48]
  RETURN R1 1

PROTO_2:
  LOADNIL R1
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  JUMPIFEQKS R6 K0 ["ProportionsNormal"] [+5]
  JUMPIFEQKS R6 K1 ["ProportionsSlender"] [+3]
  JUMPIFNOTEQKS R6 K2 ["Classic"] [+9]
  JUMPIFNOTEQKNIL R1 [+3]
  MOVE R1 R6
  JUMP [+5]
  JUMPIFEQ R1 R6 [+4]
  LOADK R1 K3 ["Mixed"]
  JUMP [+1]
  LOADK R1 K3 ["Mixed"]
  FORGLOOP R2 2 [-16]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADK R2 K0 ["ProportionsNormal"]
  RETURN R2 1
  RETURN R1 1

PROTO_3:
  LOADK R3 K0 ["AvatarPartScaleType"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  LOADK R4 K2 ["StringValue"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R1 K4 ["Value"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R5 0
  GETTABLEKS R2 R5 K0 ["LIMBS"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R9 R6
  NAMECALL R7 R0 K1 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K2 [+4]
  LOADK R10 K2 ["Avatar must have all limbs"]
  GETIMPORT R8 K4 [assert]
  CALL R8 2 0
  LOADK R10 K5 ["AvatarPartScaleType"]
  NAMECALL R8 R7 K1 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIFNOTEQKNIL R8 [+13]
  GETIMPORT R9 K8 [Instance.new]
  LOADK R10 K9 ["StringValue"]
  CALL R9 1 1
  LOADK R10 K5 ["AvatarPartScaleType"]
  SETTABLEKS R10 R9 K10 ["Name"]
  SETTABLEKS R1 R9 K11 ["Value"]
  SETTABLEKS R7 R9 K12 ["Parent"]
  JUMP [+22]
  LOADK R11 K9 ["StringValue"]
  NAMECALL R9 R8 K13 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+17]
  LOADB R10 0
  JUMPIFEQKNIL R8 [+5]
  LOADK R12 K9 ["StringValue"]
  NAMECALL R10 R8 K13 ["IsA"]
  CALL R10 2 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K14 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R10 R11 [+3]
  GETIMPORT R9 K4 [assert]
  CALL R9 2 0
  SETTABLEKS R1 R8 K11 ["Value"]
  FORGLOOP R2 2 [-55]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  NEWTABLE R3 8 0
  DUPCLOSURE R4 K10 [PROTO_0]
  DUPTABLE R5 K14 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
  DUPTABLE R7 K18 [{"BodyTypeScale", "BodyProportionScale", "GuessMaxHeight"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K15 ["BodyTypeScale"]
  LOADN R8 0
  SETTABLEKS R8 R7 K16 ["BodyProportionScale"]
  LOADK R8 K19 [5.25]
  SETTABLEKS R8 R7 K17 ["GuessMaxHeight"]
  MOVE R6 R7
  SETTABLEKS R6 R5 K11 ["Classic"]
  DUPTABLE R7 K18 [{"BodyTypeScale", "BodyProportionScale", "GuessMaxHeight"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K15 ["BodyTypeScale"]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["BodyProportionScale"]
  LOADK R8 K20 [5.625]
  SETTABLEKS R8 R7 K17 ["GuessMaxHeight"]
  MOVE R6 R7
  SETTABLEKS R6 R5 K12 ["ProportionsSlender"]
  DUPTABLE R7 K18 [{"BodyTypeScale", "BodyProportionScale", "GuessMaxHeight"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K15 ["BodyTypeScale"]
  LOADN R8 0
  SETTABLEKS R8 R7 K16 ["BodyProportionScale"]
  LOADK R8 K21 [∞]
  SETTABLEKS R8 R7 K17 ["GuessMaxHeight"]
  MOVE R6 R7
  SETTABLEKS R6 R5 K13 ["ProportionsNormal"]
  SETTABLEKS R5 R3 K22 ["types"]
  DUPCLOSURE R5 K23 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R5 R3 K24 ["allAvatarPartScaleTypeValueObjects"]
  DUPCLOSURE R5 K25 [PROTO_2]
  SETTABLEKS R5 R3 K26 ["computeAvatarPartScaleType"]
  DUPCLOSURE R5 K27 [PROTO_3]
  SETTABLEKS R5 R3 K28 ["getAvatarPartScaleType"]
  DUPCLOSURE R5 K29 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R5 R3 K30 ["setAvatarPartScaleTypeValueObjects"]
  RETURN R3 1

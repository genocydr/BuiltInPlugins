PROTO_0:
  GETUPVAL R2 0
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["find"]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 1
  JUMPIFEQ R2 R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  DUPTABLE R4 K13 [{"Invalid", "Ad", "MaterialPack", "Package"}]
  LOADK R5 K9 ["Invalid"]
  SETTABLEKS R5 R4 K9 ["Invalid"]
  LOADK R5 K10 ["Ad"]
  SETTABLEKS R5 R4 K10 ["Ad"]
  LOADK R5 K11 ["MaterialPack"]
  SETTABLEKS R5 R4 K11 ["MaterialPack"]
  LOADK R5 K12 ["Package"]
  SETTABLEKS R5 R4 K12 ["Package"]
  DUPCLOSURE R5 K14 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K15 ["contains"]
  RETURN R4 1
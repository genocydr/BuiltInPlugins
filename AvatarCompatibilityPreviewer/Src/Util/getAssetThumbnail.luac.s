PROTO_0:
  JUMPIFEQKNIL R1 [+3]
  JUMPIFNOTEQKNIL R2 [+16]
  LOADB R4 0
  JUMPIFNOTEQKNIL R1 [+5]
  JUMPIFEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Neither width nor height can be empty on their own"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  LOADN R1 150
  LOADN R2 150
  LOADK R4 K3 ["rbxthumb://type=Asset&id=%*&w=%*&h=%*"]
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 4 1
  MOVE R3 R4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
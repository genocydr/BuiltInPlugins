PROTO_0:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [tonumber]
  CALL R2 1 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K3 [assert]
  CALL R1 1 0
  LOADK R2 K4 ["https://www.roblox.com/asset/?id="]
  MOVE R3 R0
  CONCAT R1 R2 R3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1

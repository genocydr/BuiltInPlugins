PROTO_0:
  LENGTH R4 R1
  JUMPIFEQKN R4 K0 [1] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Expected selection to have length 1."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  DUPTABLE R3 K6 [{"_transform", "_draggerContext"}]
  GETTABLEN R4 R1 1
  SETTABLEKS R4 R3 K4 ["_transform"]
  SETTABLEKS R0 R3 K5 ["_draggerContext"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K8 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  LOADB R1 0
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldUseLocalSpace"]
  CALL R1 1 1
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K2 ["getLocalBoundingBox"]
  CALL R1 1 -1
  RETURN R1 -1
  GETIMPORT R1 K5 [CFrame.new]
  GETTABLEKS R4 R0 K6 ["_transform"]
  GETTABLEKS R3 R4 K7 ["Transform"]
  GETTABLEKS R2 R3 K8 ["Position"]
  CALL R1 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K10 [Vector3.new]
  CALL R2 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K10 [Vector3.new]
  CALL R3 0 1
  RETURN R1 3

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_transform"]
  GETTABLEKS R1 R2 K1 ["Transform"]
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K4 [Vector3.new]
  CALL R2 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K4 [Vector3.new]
  CALL R3 0 1
  RETURN R1 3

PROTO_4:
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  LOADB R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["isEmpty"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["getBoundingBox"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["getLocalBoundingBox"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["doesContainItem"]
  DUPCLOSURE R1 K11 [PROTO_5]
  SETTABLEKS R1 R0 K12 ["isDynamic"]
  RETURN R0 1

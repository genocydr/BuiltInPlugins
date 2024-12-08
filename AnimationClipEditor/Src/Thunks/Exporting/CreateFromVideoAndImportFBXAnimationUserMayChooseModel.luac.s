PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADB R4 1
  GETUPVAL R5 3
  CALL R2 3 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarImportService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  NAMECALL R0 R0 K4 ["ImportFBXAnimationFromFilePathUserMayChooseModel"]
  CALL R0 4 -1
  RETURN R0 -1

PROTO_2:
  NAMECALL R5 R0 K0 ["getState"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K1 ["Status"]
  GETTABLEKS R6 R7 K2 ["RootInstance"]
  JUMPIF R6 [+1]
  RETURN R0 0
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R4
  GETIMPORT R8 K4 [pcall]
  NEWCLOSURE R9 P1
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CALL R8 1 2
  JUMPIFNOT R8 [+49]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["fromKeyframeSequence"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K6 ["Metadata"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K7 ["DEFAULT_IMPORTED_NAME"]
  SETTABLEKS R12 R11 K8 ["Name"]
  GETUPVAL R13 3
  MOVE R14 R10
  MOVE R15 R4
  CALL R13 2 -1
  NAMECALL R11 R0 K9 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R13 4
  LOADB R14 0
  CALL R13 1 -1
  NAMECALL R11 R0 K9 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R13 5
  LOADB R14 0
  CALL R13 1 -1
  NAMECALL R11 R0 K9 ["dispatch"]
  CALL R11 -1 0
  JUMPIFNOT R9 [+3]
  NAMECALL R11 R9 K10 ["Destroy"]
  CALL R11 1 0
  LOADK R13 K11 ["onCreateFromVideo"]
  GETTABLEKS R15 R10 K6 ["Metadata"]
  JUMPIFNOT R15 [+5]
  GETTABLEKS R15 R10 K6 ["Metadata"]
  GETTABLEKS R14 R15 K12 ["Guid"]
  JUMP [+1]
  LOADNIL R14
  NAMECALL R11 R4 K13 ["report"]
  CALL R11 3 0
  RETURN R0 0
  GETIMPORT R10 K15 [warn]
  MOVE R11 R9
  CALL R10 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ANIMATION_FROM_VIDEO_STATUS"]
  GETTABLEKS R2 R3 K1 ["UploadingData"]
  JUMPIFNOTEQ R1 R2 [+14]
  GETUPVAL R2 1
  JUMPIF R2 [+11]
  GETIMPORT R2 K4 [os.clock]
  CALL R2 0 1
  SETUPVAL R2 1
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K5 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 2
  NAMECALL R4 R4 K6 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K7 ["Status"]
  GETTABLEKS R2 R3 K8 ["CreatingAnimationFromVideo"]
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 2
  GETUPVAL R4 4
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R2 K5 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 2
  GETUPVAL R4 5
  MOVE R5 R0
  CALL R4 1 -1
  NAMECALL R2 R2 K5 ["dispatch"]
  CALL R2 -1 0
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["CreateAnimationByUploadingVideo"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["Status"]
  GETTABLEKS R1 R2 K2 ["CreatingAnimationFromVideo"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R0 K3 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["ANIMATION_FROM_VIDEO_STATUS"]
  GETTABLEKS R4 R5 K5 ["Initializing"]
  CALL R3 1 -1
  NAMECALL R1 R0 K3 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 3
  LOADN R4 0
  CALL R3 1 -1
  NAMECALL R1 R0 K3 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R3 4
  LOADB R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K3 ["dispatch"]
  CALL R1 -1 0
  LOADNIL R1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE REF R1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  GETIMPORT R3 K7 [game]
  LOADK R5 K8 ["AnimationFromVideoCreatorStudioService"]
  NAMECALL R3 R3 K9 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K11 [pcall]
  NEWCLOSURE R5 P1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CALL R4 1 2
  MOVE R6 R1
  JUMPIFNOT R6 [+4]
  GETIMPORT R7 K14 [os.clock]
  CALL R7 0 1
  SUB R6 R7 R1
  JUMPIF R4 [+70]
  GETUPVAL R9 0
  LOADB R10 1
  CALL R9 1 -1
  NAMECALL R7 R0 K3 ["dispatch"]
  CALL R7 -1 0
  NAMECALL R9 R0 K0 ["getState"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K1 ["Status"]
  GETTABLEKS R7 R8 K15 ["AnimationImportStatus"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["ANIMATION_FROM_VIDEO_STATUS"]
  GETTABLEKS R8 R9 K5 ["Initializing"]
  JUMPIFNOTEQ R7 R8 [+7]
  GETUPVAL R9 4
  LOADB R10 0
  CALL R9 1 -1
  NAMECALL R7 R0 K3 ["dispatch"]
  CALL R7 -1 0
  NAMECALL R9 R0 K0 ["getState"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K1 ["Status"]
  GETTABLEKS R7 R8 K15 ["AnimationImportStatus"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["ANIMATION_FROM_VIDEO_STATUS"]
  GETTABLEKS R8 R9 K16 ["UploadingData"]
  JUMPIFNOTEQ R7 R8 [+18]
  GETUPVAL R9 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K4 ["ANIMATION_FROM_VIDEO_STATUS"]
  GETTABLEKS R10 R11 K17 ["ErrorUploadingData"]
  CALL R9 1 -1
  NAMECALL R7 R0 K3 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R9 3
  LOADN R10 0
  CALL R9 1 -1
  NAMECALL R7 R0 K3 ["dispatch"]
  CALL R7 -1 0
  ORK R5 R5 K18 ["Error while uploading video"]
  GETUPVAL R7 6
  LOADK R9 K19 ["onAnimationEditorImportVideoError"]
  MOVE R10 R5
  MOVE R11 R6
  NAMECALL R7 R7 K20 ["report"]
  CALL R7 4 0
  GETIMPORT R7 K22 [warn]
  MOVE R8 R5
  CALL R7 1 0
  CLOSEUPVALS R1
  RETURN R0 0
  MOVE R7 R5
  GETUPVAL R8 6
  LOADK R10 K23 ["onAnimationEditorImportVideoUploadSucceed"]
  MOVE R11 R6
  NAMECALL R8 R8 K20 ["report"]
  CALL R8 3 0
  JUMPIFEQKNIL R7 [+9]
  NAMECALL R10 R0 K0 ["getState"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K1 ["Status"]
  GETTABLEKS R8 R9 K2 ["CreatingAnimationFromVideo"]
  JUMPIF R8 [+2]
  CLOSEUPVALS R1
  RETURN R0 0
  GETUPVAL R10 4
  LOADB R11 0
  CALL R10 1 -1
  NAMECALL R8 R0 K3 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R8 7
  MOVE R9 R0
  MOVE R10 R7
  GETUPVAL R11 8
  GETUPVAL R12 9
  GETUPVAL R13 6
  CALL R8 5 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["RigUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K10 ["RigSerialization"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K11 ["Thunks"]
  GETTABLEKS R6 R7 K12 ["Exporting"]
  GETTABLEKS R5 R6 K13 ["ImportLoadedFBXAnimation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K11 ["Thunks"]
  GETTABLEKS R6 R7 K14 ["LoadAnimationData"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Actions"]
  GETTABLEKS R7 R8 K16 ["SetIsDirty"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K15 ["Actions"]
  GETTABLEKS R8 R9 K17 ["SetIsLegacyAnimSaves"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K15 ["Actions"]
  GETTABLEKS R9 R10 K18 ["SetAnimationImportProgress"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K15 ["Actions"]
  GETTABLEKS R10 R11 K19 ["SetAnimationImportStatus"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K15 ["Actions"]
  GETTABLEKS R11 R12 K20 ["SetCreatingAnimationFromVideo"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K15 ["Actions"]
  GETTABLEKS R12 R13 K21 ["SetAnimationFromVideoUploadStartTime"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K6 ["Src"]
  GETTABLEKS R14 R15 K15 ["Actions"]
  GETTABLEKS R13 R14 K22 ["SetAnimationFromVideoErroredOut"]
  CALL R12 1 1
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  DUPCLOSURE R14 K24 [PROTO_6]
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  RETURN R14 1

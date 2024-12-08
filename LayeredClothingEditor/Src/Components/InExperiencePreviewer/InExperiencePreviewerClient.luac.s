PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Character"]
  JUMPIF R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["CharacterAdded"]
  NAMECALL R1 R1 K2 ["Wait"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["CurrentCamera"]
  GETIMPORT R3 K7 [Enum.CameraType.Custom]
  SETTABLEKS R3 R2 K5 ["CameraType"]
  SETTABLEKS R1 R2 K8 ["CameraSubject"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["previewContext"]
  NAMECALL R2 R2 K1 ["getCurrentPreviewAvatarIndex"]
  CALL R2 1 -1
  NAMECALL R0 R0 K2 ["FireServer"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["focusCamera"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["connections"]
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["PREVIEW_REMOTE_EVENT_NAME"]
  NAMECALL R1 R1 K2 ["WaitForChild"]
  CALL R1 2 1
  GETTABLEKS R3 R0 K0 ["connections"]
  GETTABLEKS R4 R0 K3 ["previewContext"]
  NAMECALL R4 R4 K4 ["getPreviewModelChangedSignal"]
  CALL R4 1 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K8 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K0 ["connections"]
  GETTABLEKS R4 R1 K9 ["OnClientEvent"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K8 [table.insert]
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["provide"]
  NEWTABLE R2 0 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["makePluginTheme"]
  CALL R3 0 1
  GETTABLEKS R4 R0 K2 ["previewContext"]
  SETLIST R2 R3 2 [1]
  DUPTABLE R3 K4 [{"InExperiencePreviewFrame"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 3
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["InExperiencePreviewFrame"]
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["mount"]
  MOVE R3 R1
  GETUPVAL R4 4
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["roactHandle"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["PREVIEW_FOLDER_NAME"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADNIL R2
  GETIMPORT R3 K3 [ipairs]
  NAMECALL R4 R1 K4 ["GetChildren"]
  CALL R4 1 -1
  CALL R3 -1 3
  FORGPREP_INEXT R3
  GETTABLEKS R9 R7 K5 ["Name"]
  FASTCALL1 TONUMBER R9 [+2]
  GETIMPORT R8 K7 [tonumber]
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["UserId"]
  JUMPIFNOTEQ R8 R9 [+2]
  MOVE R2 R7
  FORGLOOP R3 2 [inext] [-13]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K10 ["previewContext"]
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [ipairs]
  NAMECALL R5 R2 K11 ["Clone"]
  CALL R5 1 1
  NAMECALL R5 R5 K4 ["GetChildren"]
  CALL R5 1 -1
  CALL R4 -1 3
  FORGPREP_INEXT R4
  GETTABLEKS R10 R8 K5 ["Name"]
  FASTCALL1 TONUMBER R10 [+2]
  GETIMPORT R9 K7 [tonumber]
  CALL R9 1 1
  SETTABLE R8 R3 R9
  FORGLOOP R4 2 [inext] [-8]
  GETTABLEKS R4 R0 K10 ["previewContext"]
  MOVE R6 R3
  NAMECALL R4 R4 K12 ["setAvatars"]
  CALL R4 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["GetPlayers"]
  CALL R2 1 1
  LENGTH R1 R2
  LOADN R2 1
  JUMPIFNOTLT R2 R1 [+2]
  RETURN R0 0
  NAMECALL R1 R0 K1 ["initPreviewContext"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["previewContext"]
  JUMPIF R1 [+1]
  RETURN R0 0
  NAMECALL R1 R0 K3 ["initRemoteConnections"]
  CALL R1 1 0
  NAMECALL R1 R0 K4 ["initUI"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["connections"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K2 [ipairs]
  GETTABLEKS R2 R0 K0 ["connections"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K3 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-4]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["connections"]
  GETTABLEKS R1 R0 K4 ["roactHandle"]
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["unmount"]
  GETTABLEKS R2 R0 K4 ["roactHandle"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["roactHandle"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K5 ["LocalPlayer"]
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["ReplicatedStorage"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R5 K1 [game]
  GETTABLEKS R4 R5 K7 ["Workspace"]
  GETIMPORT R9 K9 [script]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K10 ["Parent"]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R5 K13 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Roact"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R5 K13 ["Packages"]
  GETTABLEKS R8 R9 K15 ["AvatarToolsShared"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["Contexts"]
  GETTABLEKS R9 R8 K17 ["PreviewContext"]
  GETIMPORT R10 K12 [require]
  GETTABLEKS R13 R5 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Resources"]
  GETTABLEKS R11 R12 K20 ["PluginTheme"]
  CALL R10 1 1
  GETIMPORT R11 K12 [require]
  GETTABLEKS R13 R5 K13 ["Packages"]
  GETTABLEKS R12 R13 K21 ["Framework"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K22 ["ContextServices"]
  GETIMPORT R13 K12 [require]
  GETIMPORT R16 K9 [script]
  GETTABLEKS R15 R16 K10 ["Parent"]
  GETTABLEKS R14 R15 K23 ["InExperiencePreviewFrame"]
  CALL R13 1 1
  GETIMPORT R14 K12 [require]
  GETTABLEKS R17 R5 K18 ["Src"]
  GETTABLEKS R16 R17 K24 ["Util"]
  GETTABLEKS R15 R16 K25 ["Constants"]
  CALL R14 1 1
  NEWTABLE R15 8 0
  DUPCLOSURE R16 K26 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R16 R15 K27 ["focusCamera"]
  DUPCLOSURE R16 K28 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R14
  SETTABLEKS R16 R15 K29 ["initRemoteConnections"]
  DUPCLOSURE R16 K30 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K31 ["initUI"]
  DUPCLOSURE R16 K32 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K33 ["initPreviewContext"]
  DUPCLOSURE R16 K34 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R16 R15 K35 ["init"]
  DUPCLOSURE R16 K36 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R16 R15 K37 ["shutdown"]
  RETURN R15 1
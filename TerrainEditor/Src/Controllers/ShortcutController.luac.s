PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["PluginActions"]
  MOVE R5 R0
  LOADK R6 K1 ["StatusTip"]
  CONCAT R4 R5 R6
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["PluginActions"]
  MOVE R5 R0
  LOADK R6 K1 ["Text"]
  CONCAT R4 R5 R6
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["_mouseDown"]
  JUMPIF R0 [+15]
  GETUPVAL R0 1
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_mouseDown"]
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["isMouseDownReserved"]
  CALL R0 1 1
  JUMPIF R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["MouseDownAction"]
  NAMECALL R0 R0 K3 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["_mouseDown"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 1
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_mouseDown"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isMouseMoveReserved"]
  CALL R0 1 1
  JUMPIF R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["MouseMoveAction"]
  NAMECALL R0 R0 K2 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R3 R0
  LOADK R4 K0 ["ShortcutController.new() requires a plugin"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  DUPTABLE R4 K11 [{"EditPlane", "CopySelected", "CutSelected", "DeleteSelected", "PasteSelected", "DuplicateSelected", "Apply", "Cancel"}]
  DUPTABLE R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["allowBinding"]
  LOADK R6 K18 ["ctrl+shift+space"]
  SETTABLEKS R6 R5 K13 ["defaultShortcut"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["EditPlane"]
  SETTABLEKS R6 R5 K14 ["id"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["EditPlane"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K20 ["StatusTip"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K15 ["statusTip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["EditPlane"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K22 ["Text"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K16 ["text"]
  SETTABLEKS R5 R4 K3 ["EditPlane"]
  DUPTABLE R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["allowBinding"]
  LOADK R6 K23 ["ctrl+c"]
  SETTABLEKS R6 R5 K13 ["defaultShortcut"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["CopySelected"]
  SETTABLEKS R6 R5 K14 ["id"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["CopySelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K20 ["StatusTip"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K15 ["statusTip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["CopySelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K22 ["Text"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K16 ["text"]
  SETTABLEKS R5 R4 K4 ["CopySelected"]
  DUPTABLE R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["allowBinding"]
  LOADK R6 K24 ["ctrl+x"]
  SETTABLEKS R6 R5 K13 ["defaultShortcut"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["CutSelected"]
  SETTABLEKS R6 R5 K14 ["id"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["CutSelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K20 ["StatusTip"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K15 ["statusTip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["CutSelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K22 ["Text"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K16 ["text"]
  SETTABLEKS R5 R4 K5 ["CutSelected"]
  DUPTABLE R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["allowBinding"]
  LOADK R6 K25 ["delete"]
  SETTABLEKS R6 R5 K13 ["defaultShortcut"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["DeleteSelected"]
  SETTABLEKS R6 R5 K14 ["id"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["DeleteSelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K20 ["StatusTip"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K15 ["statusTip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["DeleteSelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K22 ["Text"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K16 ["text"]
  SETTABLEKS R5 R4 K6 ["DeleteSelected"]
  DUPTABLE R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["allowBinding"]
  LOADK R6 K26 ["ctrl+v"]
  SETTABLEKS R6 R5 K13 ["defaultShortcut"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["PasteSelected"]
  SETTABLEKS R6 R5 K14 ["id"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["PasteSelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K20 ["StatusTip"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K15 ["statusTip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["PasteSelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K22 ["Text"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K16 ["text"]
  SETTABLEKS R5 R4 K7 ["PasteSelected"]
  DUPTABLE R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["allowBinding"]
  LOADK R6 K27 ["ctrl+d"]
  SETTABLEKS R6 R5 K13 ["defaultShortcut"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["DuplicateSelected"]
  SETTABLEKS R6 R5 K14 ["id"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["DuplicateSelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K20 ["StatusTip"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K15 ["statusTip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["DuplicateSelected"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K22 ["Text"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K16 ["text"]
  SETTABLEKS R5 R4 K8 ["DuplicateSelected"]
  DUPTABLE R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["allowBinding"]
  LOADK R6 K28 ["return"]
  SETTABLEKS R6 R5 K13 ["defaultShortcut"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["Apply"]
  SETTABLEKS R6 R5 K14 ["id"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["Apply"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K20 ["StatusTip"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K15 ["statusTip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["Apply"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K22 ["Text"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K16 ["text"]
  SETTABLEKS R5 R4 K9 ["Apply"]
  DUPTABLE R5 K17 [{"allowBinding", "defaultShortcut", "id", "statusTip", "text"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["allowBinding"]
  LOADK R6 K29 ["escape"]
  SETTABLEKS R6 R5 K13 ["defaultShortcut"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K30 ["Quit"]
  SETTABLEKS R6 R5 K14 ["id"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K30 ["Quit"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K20 ["StatusTip"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K15 ["statusTip"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K30 ["Quit"]
  LOADK R10 K19 ["PluginActions"]
  MOVE R12 R7
  LOADK R13 K22 ["Text"]
  CONCAT R11 R12 R13
  NAMECALL R8 R1 K21 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  SETTABLEKS R6 R5 K16 ["text"]
  SETTABLEKS R5 R4 K10 ["Cancel"]
  DUPTABLE R6 K43 [{"_mouse", "_pluginActions", "_cachedValues", "_originalValues", "_userInputService", "_workspace", "_reservedMouseMove", "_reservedMouseDown", "_brushMouse", "_brushScrollWheel", "MouseDownAction", "MouseMoveAction"}]
  NAMECALL R7 R0 K44 ["GetMouse"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K31 ["_mouse"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K45 ["new"]
  MOVE R8 R0
  MOVE R9 R4
  CALL R7 2 1
  SETTABLEKS R7 R6 K32 ["_pluginActions"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K33 ["_cachedValues"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K34 ["_originalValues"]
  GETIMPORT R7 K47 [game]
  LOADK R9 K48 ["UserInputService"]
  NAMECALL R7 R7 K49 ["GetService"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K35 ["_userInputService"]
  GETIMPORT R7 K47 [game]
  LOADK R9 K50 ["Workspace"]
  NAMECALL R7 R7 K49 ["GetService"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K36 ["_workspace"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K37 ["_reservedMouseMove"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K38 ["_reservedMouseDown"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K39 ["_brushMouse"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K40 ["_brushScrollWheel"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K45 ["new"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K41 ["MouseDownAction"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K45 ["new"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K42 ["MouseMoveAction"]
  GETUPVAL R7 3
  FASTCALL2 SETMETATABLE R6 R7 [+3]
  GETIMPORT R5 K52 [setmetatable]
  CALL R5 2 1
  GETTABLEKS R7 R5 K31 ["_mouse"]
  GETTABLEKS R6 R7 K53 ["Button1Down"]
  NEWCLOSURE R8 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  NAMECALL R6 R6 K54 ["Connect"]
  CALL R6 2 0
  GETTABLEKS R7 R5 K31 ["_mouse"]
  GETTABLEKS R6 R7 K55 ["Button1Up"]
  NEWCLOSURE R8 P3
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  NAMECALL R6 R6 K54 ["Connect"]
  CALL R6 2 0
  GETTABLEKS R7 R5 K31 ["_mouse"]
  GETTABLEKS R6 R7 K56 ["Move"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R5
  NAMECALL R6 R6 K54 ["Connect"]
  CALL R6 2 0
  RETURN R5 1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["_reservedMouseMove"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K1 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["_reservedMouseDown"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K1 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_userInputService"]
  GETIMPORT R3 K4 [Enum.KeyCode.LeftAlt]
  NAMECALL R1 R1 K5 ["IsKeyDown"]
  CALL R1 2 1
  JUMPIF R1 [+7]
  GETTABLEKS R1 R0 K0 ["_userInputService"]
  GETIMPORT R3 K7 [Enum.KeyCode.RightAlt]
  NAMECALL R1 R1 K5 ["IsKeyDown"]
  CALL R1 2 1
  RETURN R1 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_userInputService"]
  GETIMPORT R3 K4 [Enum.KeyCode.LeftShift]
  NAMECALL R1 R1 K5 ["IsKeyDown"]
  CALL R1 2 1
  JUMPIF R1 [+7]
  GETTABLEKS R1 R0 K0 ["_userInputService"]
  GETIMPORT R3 K7 [Enum.KeyCode.RightShift]
  NAMECALL R1 R1 K5 ["IsKeyDown"]
  CALL R1 2 1
  RETURN R1 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_userInputService"]
  GETIMPORT R3 K4 [Enum.KeyCode.LeftControl]
  NAMECALL R1 R1 K5 ["IsKeyDown"]
  CALL R1 2 1
  JUMPIF R1 [+7]
  GETTABLEKS R1 R0 K0 ["_userInputService"]
  GETIMPORT R3 K7 [Enum.KeyCode.RightControl]
  NAMECALL R1 R1 K5 ["IsKeyDown"]
  CALL R1 2 1
  RETURN R1 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_userInputService"]
  GETIMPORT R3 K4 [Enum.KeyCode.B]
  NAMECALL R1 R1 K5 ["IsKeyDown"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["_originalValues"]
  GETUPVAL R8 2
  GETTABLE R6 R7 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["_cachedValues"]
  GETUPVAL R9 2
  GETTABLE R7 R8 R9
  ADD R5 R6 R7
  MULK R4 R5 K0 [100]
  FASTCALL1 MATH_FLOOR R4 [+2]
  GETIMPORT R3 K5 [math.floor]
  CALL R3 1 1
  DIVK R2 R3 K0 [100]
  LOADN R3 0
  LOADN R4 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K7 [math.clamp]
  CALL R1 3 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_13:
  GETIMPORT R0 K2 [table.clone]
  GETUPVAL R1 0
  CALL R0 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["_originalValues"]
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K4 ["Size"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["_cachedValues"]
  GETUPVAL R8 2
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K4 ["Size"]
  ADD R3 R4 R5
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K8 [math.floor]
  CALL R2 1 1
  LOADN R3 1
  LOADN R4 64
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K10 [math.clamp]
  CALL R1 3 1
  SETTABLEKS R1 R0 K4 ["Size"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["_originalValues"]
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K11 ["Height"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["_cachedValues"]
  GETUPVAL R8 2
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K11 ["Height"]
  ADD R3 R4 R5
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K8 [math.floor]
  CALL R2 1 1
  LOADN R3 1
  LOADN R4 64
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R1 K10 [math.clamp]
  CALL R1 3 1
  SETTABLEKS R1 R0 K11 ["Height"]
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_14:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["_workspace"]
  GETTABLEKS R0 R1 K1 ["CurrentCamera"]
  GETUPVAL R3 2
  MINUS R2 R3
  NAMECALL R0 R0 K2 ["Zoom"]
  CALL R0 2 0
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["isShiftDown"]
  CALL R3 1 1
  JUMPIFNOT R3 [+50]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Strength"]
  JUMPIFNOTEQ R3 R4 [+45]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["_cachedValues"]
  GETUPVAL R4 1
  GETTABLE R5 R3 R4
  DIVK R6 R0 K3 [100]
  ADD R5 R5 R6
  SETTABLE R5 R3 R4
  JUMPIFNOT R1 [+9]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["_workspace"]
  GETTABLEKS R3 R4 K5 ["CurrentCamera"]
  MINUS R5 R0
  NAMECALL R3 R3 K6 ["Zoom"]
  CALL R3 2 0
  GETUPVAL R3 3
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K7 ["_originalValues"]
  GETUPVAL R11 1
  GETTABLE R9 R10 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["_cachedValues"]
  GETUPVAL R12 1
  GETTABLE R10 R11 R12
  ADD R8 R9 R10
  MULK R7 R8 K3 [100]
  FASTCALL1 MATH_FLOOR R7 [+2]
  GETIMPORT R6 K10 [math.floor]
  CALL R6 1 1
  DIVK R5 R6 K3 [100]
  LOADN R6 0
  LOADN R7 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K12 [math.clamp]
  CALL R4 3 1
  CALL R3 1 1
  RETURN R0 0
  GETUPVAL R3 0
  NAMECALL R3 R3 K13 ["isControlDown"]
  CALL R3 1 1
  JUMPIFNOT R3 [+37]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K14 ["BrushSize"]
  JUMPIFNOTEQ R3 R4 [+32]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["_cachedValues"]
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  GETTABLEKS R4 R3 K15 ["Height"]
  ADD R4 R4 R0
  SETTABLEKS R4 R3 K15 ["Height"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K16 ["Locked"]
  JUMPIFNOT R3 [+14]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["_cachedValues"]
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["_cachedValues"]
  GETUPVAL R7 1
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K15 ["Height"]
  SETTABLEKS R4 R3 K17 ["Size"]
  GETUPVAL R3 5
  CALL R3 0 0
  RETURN R0 0
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["isShiftDown"]
  CALL R3 1 1
  JUMPIF R3 [+51]
  GETUPVAL R3 0
  NAMECALL R3 R3 K13 ["isControlDown"]
  CALL R3 1 1
  JUMPIF R3 [+46]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K14 ["BrushSize"]
  JUMPIFNOTEQ R3 R4 [+41]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["_cachedValues"]
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  GETTABLEKS R4 R3 K17 ["Size"]
  ADD R4 R4 R0
  SETTABLEKS R4 R3 K17 ["Size"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K16 ["Locked"]
  JUMPIFNOT R3 [+14]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["_cachedValues"]
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["_cachedValues"]
  GETUPVAL R7 1
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K17 ["Size"]
  SETTABLEKS R4 R3 K15 ["Height"]
  JUMPIFNOT R1 [+9]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["_workspace"]
  GETTABLEKS R3 R4 K5 ["CurrentCamera"]
  MINUS R5 R0
  NAMECALL R3 R3 K6 ["Zoom"]
  CALL R3 2 0
  GETUPVAL R3 5
  CALL R3 0 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["isBDown"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K3 [table.find]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["_reservedMouseMove"]
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R2 K6 [table.remove]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["_reservedMouseDown"]
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["_brushScrollWheel"]
  GETUPVAL R3 1
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R2 2
  MOVE R3 R0
  LOADB R4 1
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isBDown"]
  CALL R0 1 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["_brushScrollWheel"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K4 [Vector2.new]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["_mouse"]
  GETTABLEKS R1 R2 K6 ["X"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["_mouse"]
  GETTABLEKS R2 R3 K7 ["Y"]
  CALL R0 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["_brushMouse"]
  GETUPVAL R4 1
  GETTABLE R2 R3 R4
  SUB R1 R0 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["_brushMouse"]
  GETUPVAL R3 1
  SETTABLE R0 R2 R3
  GETUPVAL R2 2
  GETTABLEKS R4 R1 K6 ["X"]
  DIVK R3 R4 K9 [10]
  LOADB R4 0
  CALL R2 2 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R1 R2 [+4]
  GETUPVAL R1 0
  CALL R1 0 0
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K5 [Enum.UserInputType.MouseWheel]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R1 1
  GETTABLEKS R3 R0 K6 ["Position"]
  GETTABLEKS R2 R3 K7 ["Z"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["KeyCode"]
  GETIMPORT R2 K3 [Enum.KeyCode.B]
  JUMPIFNOTEQ R1 R2 [+116]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["_cachedValues"]
  GETUPVAL R3 1
  GETTABLE R1 R2 R3
  JUMPIF R1 [+47]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["BrushSize"]
  JUMPIFNOTEQ R1 R2 [+30]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["_originalValues"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"Height", "Size"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["Height"]
  SETTABLEKS R4 R3 K7 ["Height"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["Size"]
  SETTABLEKS R4 R3 K8 ["Size"]
  SETTABLE R3 R1 R2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["_cachedValues"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"Height", "Size"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K7 ["Height"]
  LOADN R4 0
  SETTABLEKS R4 R3 K8 ["Size"]
  SETTABLE R3 R1 R2
  JUMP [+12]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["_originalValues"]
  GETUPVAL R2 1
  GETUPVAL R3 3
  SETTABLE R3 R1 R2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["_cachedValues"]
  GETUPVAL R2 1
  LOADN R3 0
  SETTABLE R3 R1 R2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["_brushScrollWheel"]
  GETUPVAL R2 1
  LOADB R3 0
  SETTABLE R3 R1 R2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["_brushMouse"]
  GETUPVAL R2 1
  GETIMPORT R3 K14 [Vector2.new]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K15 ["_mouse"]
  GETTABLEKS R4 R5 K16 ["X"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["_mouse"]
  GETTABLEKS R5 R6 K17 ["Y"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["_workspace"]
  GETTABLEKS R3 R4 K19 ["CurrentCamera"]
  GETTABLEKS R2 R3 K20 ["CFrame"]
  SETTABLEKS R2 R1 K21 ["_cameraPosition"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K22 ["_mouseDown"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["_brushScrollWheel"]
  GETUPVAL R2 1
  LOADB R3 1
  SETTABLE R3 R1 R2
  RETURN R0 0
  GETIMPORT R1 K25 [table.find]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K26 ["_reservedMouseMove"]
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIF R1 [+9]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K26 ["_reservedMouseMove"]
  GETUPVAL R4 1
  FASTCALL2 TABLE_INSERT R3 R4 [+3]
  GETIMPORT R2 K28 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["KeyCode"]
  GETIMPORT R2 K3 [Enum.KeyCode.B]
  JUMPIFNOTEQ R1 R2 [+24]
  GETIMPORT R1 K6 [table.find]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["_reservedMouseMove"]
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R2 K9 [table.remove]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["_reservedMouseMove"]
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["_cachedValues"]
  GETUPVAL R3 1
  LOADNIL R4
  SETTABLE R4 R2 R3
  GETUPVAL R2 2
  CALL R2 0 0
  RETURN R0 0

PROTO_21:
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R6
  NEWCLOSURE R8 P3
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R7
  NEWCLOSURE R9 P4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R7
  NEWCLOSURE R10 P5
  CAPTURE VAL R9
  CAPTURE VAL R8
  NEWCLOSURE R11 P6
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  NEWCLOSURE R12 P7
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  NEWTABLE R13 0 3
  GETTABLEKS R15 R0 K0 ["_userInputService"]
  GETTABLEKS R14 R15 K1 ["InputChanged"]
  MOVE R16 R10
  NAMECALL R14 R14 K2 ["Connect"]
  CALL R14 2 1
  GETTABLEKS R16 R0 K0 ["_userInputService"]
  GETTABLEKS R15 R16 K3 ["InputBegan"]
  MOVE R17 R11
  NAMECALL R15 R15 K2 ["Connect"]
  CALL R15 2 1
  GETTABLEKS R17 R0 K0 ["_userInputService"]
  GETTABLEKS R16 R17 K4 ["InputEnded"]
  MOVE R18 R12
  NAMECALL R16 R16 K2 ["Connect"]
  CALL R16 2 -1
  SETLIST R13 R14 -1 [1]
  RETURN R13 1

PROTO_22:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K3 [Enum.KeyCode.LeftControl]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K5 [Enum.KeyCode.RightControl]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_23:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K3 [Enum.KeyCode.LeftControl]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K5 [Enum.KeyCode.RightControl]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["_reservedMouseDown"]
  GETUPVAL R3 1
  FASTCALL2 TABLE_INSERT R2 R3 [+3]
  GETIMPORT R1 K9 [table.insert]
  CALL R1 2 0
  RETURN R0 0

PROTO_24:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K3 [Enum.KeyCode.LeftControl]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K5 [Enum.KeyCode.RightControl]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+15]
  GETIMPORT R1 K8 [table.find]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["_reservedMouseDown"]
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R2 K11 [table.remove]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["_reservedMouseDown"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isControlDown"]
  CALL R0 1 1
  JUMPIFNOT R0 [+71]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["_mouse"]
  GETTABLEKS R1 R2 K2 ["Origin"]
  GETTABLEKS R0 R1 K3 ["Position"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_mouse"]
  GETTABLEKS R2 R3 K4 ["UnitRay"]
  GETTABLEKS R1 R2 K5 ["Direction"]
  GETIMPORT R2 K8 [RaycastParams.new]
  CALL R2 0 1
  LOADK R3 K9 ["StudioSelectable"]
  SETTABLEKS R3 R2 K10 ["CollisionGroup"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["_workspace"]
  MOVE R5 R0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["RayLength"]
  MUL R6 R1 R7
  MOVE R7 R2
  NAMECALL R3 R3 K13 ["Raycast"]
  CALL R3 4 1
  JUMPIFNOT R3 [+38]
  GETTABLEKS R4 R3 K14 ["Material"]
  JUMPIFNOT R4 [+35]
  GETIMPORT R4 K17 [table.find]
  GETUPVAL R5 2
  CALL R5 0 1
  GETTABLEKS R6 R3 K14 ["Material"]
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  NAMECALL R4 R4 K18 ["isShiftDown"]
  CALL R4 1 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K19 ["TargetMaterial"]
  JUMPIFEQ R4 R5 [+12]
  GETUPVAL R4 0
  NAMECALL R4 R4 K18 ["isShiftDown"]
  CALL R4 1 1
  JUMPIF R4 [+10]
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K20 ["SourceMaterial"]
  JUMPIFNOTEQ R4 R5 [+5]
  GETUPVAL R4 5
  GETTABLEKS R5 R3 K14 ["Material"]
  CALL R4 1 0
  RETURN R0 0

PROTO_26:
  DUPCLOSURE R3 K0 [PROTO_22]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWCLOSURE R6 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  NEWTABLE R7 0 3
  GETTABLEKS R9 R0 K1 ["_mouse"]
  GETTABLEKS R8 R9 K2 ["Button1Down"]
  MOVE R10 R6
  NAMECALL R8 R8 K3 ["Connect"]
  CALL R8 2 1
  GETTABLEKS R10 R0 K4 ["_userInputService"]
  GETTABLEKS R9 R10 K5 ["InputBegan"]
  MOVE R11 R4
  NAMECALL R9 R9 K3 ["Connect"]
  CALL R9 2 1
  GETTABLEKS R11 R0 K4 ["_userInputService"]
  GETTABLEKS R10 R11 K6 ["InputEnded"]
  MOVE R12 R5
  NAMECALL R10 R10 K3 ["Connect"]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  RETURN R7 1

PROTO_27:
  GETTABLEKS R1 R0 K0 ["KeyCode"]
  GETIMPORT R2 K3 [Enum.KeyCode.LeftAlt]
  JUMPIFEQ R1 R2 [+7]
  GETTABLEKS R1 R0 K0 ["KeyCode"]
  GETIMPORT R2 K5 [Enum.KeyCode.RightAlt]
  JUMPIFNOTEQ R1 R2 [+46]
  GETUPVAL R1 0
  NAMECALL R1 R1 K6 ["isAltDown"]
  CALL R1 1 1
  JUMPIFNOT R1 [+24]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["_altWasDown"]
  JUMPIF R1 [+20]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["Add"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K9 ["Subtract"]
  JUMP [+3]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K8 ["Add"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K7 ["_altWasDown"]
  RETURN R0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K6 ["isAltDown"]
  CALL R1 1 1
  JUMPIF R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["_altWasDown"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 0
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["_altWasDown"]
  RETURN R0 0

PROTO_28:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  NEWTABLE R4 0 2
  GETTABLEKS R6 R0 K0 ["_userInputService"]
  GETTABLEKS R5 R6 K1 ["InputBegan"]
  MOVE R7 R3
  NAMECALL R5 R5 K2 ["Connect"]
  CALL R5 2 1
  GETTABLEKS R7 R0 K0 ["_userInputService"]
  GETTABLEKS R6 R7 K3 ["InputEnded"]
  MOVE R8 R3
  NAMECALL R6 R6 K2 ["Connect"]
  CALL R6 2 -1
  SETLIST R4 R5 -1 [1]
  RETURN R4 1

PROTO_29:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K3 [Enum.KeyCode.LeftAlt]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K5 [Enum.KeyCode.RightAlt]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_30:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K3 [Enum.KeyCode.LeftAlt]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K5 [Enum.KeyCode.RightAlt]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["_reservedMouseDown"]
  GETUPVAL R3 1
  FASTCALL2 TABLE_INSERT R2 R3 [+3]
  GETIMPORT R1 K9 [table.insert]
  CALL R1 2 0
  RETURN R0 0

PROTO_31:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K3 [Enum.KeyCode.LeftAlt]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K0 ["KeyCode"]
  GETIMPORT R3 K5 [Enum.KeyCode.RightAlt]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+15]
  GETIMPORT R1 K8 [table.find]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["_reservedMouseDown"]
  GETUPVAL R3 1
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R2 K11 [table.remove]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["_reservedMouseDown"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["isAltDown"]
  CALL R0 1 1
  JUMPIFNOT R0 [+71]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["_mouse"]
  GETTABLEKS R1 R2 K2 ["Origin"]
  GETTABLEKS R0 R1 K3 ["Position"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_mouse"]
  GETTABLEKS R2 R3 K4 ["UnitRay"]
  GETTABLEKS R1 R2 K5 ["Direction"]
  GETIMPORT R2 K8 [RaycastParams.new]
  CALL R2 0 1
  LOADB R3 1
  SETTABLEKS R3 R2 K9 ["BruteForceAllSlow"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["_workspace"]
  MOVE R5 R0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["RayLength"]
  MUL R6 R1 R7
  MOVE R7 R2
  NAMECALL R3 R3 K12 ["Raycast"]
  CALL R3 4 1
  JUMPIFNOT R3 [+38]
  GETTABLEKS R4 R3 K13 ["Material"]
  JUMPIFNOT R4 [+35]
  GETIMPORT R4 K16 [table.find]
  GETUPVAL R5 2
  CALL R5 0 1
  GETTABLEKS R6 R3 K13 ["Material"]
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  NAMECALL R4 R4 K17 ["isShiftDown"]
  CALL R4 1 1
  JUMPIFNOT R4 [+11]
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K18 ["TargetMaterial"]
  JUMPIFNOTEQ R4 R5 [+6]
  GETUPVAL R4 5
  GETTABLEKS R5 R3 K13 ["Material"]
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K19 ["SourceMaterial"]
  JUMPIFNOTEQ R4 R5 [+5]
  GETUPVAL R4 5
  GETTABLEKS R5 R3 K13 ["Material"]
  CALL R4 1 0
  RETURN R0 0

PROTO_33:
  DUPCLOSURE R3 K0 [PROTO_29]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWCLOSURE R6 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  NEWTABLE R7 0 3
  GETTABLEKS R9 R0 K1 ["_mouse"]
  GETTABLEKS R8 R9 K2 ["Button1Down"]
  MOVE R10 R6
  NAMECALL R8 R8 K3 ["Connect"]
  CALL R8 2 1
  GETTABLEKS R10 R0 K4 ["_userInputService"]
  GETTABLEKS R9 R10 K5 ["InputBegan"]
  MOVE R11 R4
  NAMECALL R9 R9 K3 ["Connect"]
  CALL R9 2 1
  GETTABLEKS R11 R0 K4 ["_userInputService"]
  GETTABLEKS R10 R11 K6 ["InputEnded"]
  MOVE R12 R5
  NAMECALL R10 R10 K3 ["Connect"]
  CALL R10 2 -1
  SETLIST R7 R8 -1 [1]
  RETURN R7 1

PROTO_34:
  GETTABLEKS R1 R0 K0 ["KeyCode"]
  GETIMPORT R2 K3 [Enum.KeyCode.LeftControl]
  JUMPIFEQ R1 R2 [+7]
  GETTABLEKS R1 R0 K0 ["KeyCode"]
  GETIMPORT R2 K5 [Enum.KeyCode.RightControl]
  JUMPIFNOTEQ R1 R2 [+46]
  GETUPVAL R1 0
  NAMECALL R1 R1 K6 ["isControlDown"]
  CALL R1 1 1
  JUMPIFNOT R1 [+24]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["_controlWasDown"]
  JUMPIF R1 [+20]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["Add"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K9 ["Subtract"]
  JUMP [+3]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K8 ["Add"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLEKS R2 R1 K7 ["_controlWasDown"]
  RETURN R0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K6 ["isControlDown"]
  CALL R1 1 1
  JUMPIF R1 [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["_controlWasDown"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 0
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["_controlWasDown"]
  RETURN R0 0

PROTO_35:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  NEWTABLE R4 0 2
  GETTABLEKS R6 R0 K0 ["_userInputService"]
  GETTABLEKS R5 R6 K1 ["InputBegan"]
  MOVE R7 R3
  NAMECALL R5 R5 K2 ["Connect"]
  CALL R5 2 1
  GETTABLEKS R7 R0 K0 ["_userInputService"]
  GETTABLEKS R6 R7 K3 ["InputEnded"]
  MOVE R8 R3
  NAMECALL R6 R6 K2 ["Connect"]
  CALL R6 2 -1
  SETLIST R4 R5 -1 [1]
  RETURN R4 1

PROTO_36:
  GETTABLEKS R1 R0 K0 ["KeyCode"]
  GETIMPORT R2 K3 [Enum.KeyCode.LeftShift]
  JUMPIFEQ R1 R2 [+7]
  GETTABLEKS R1 R0 K0 ["KeyCode"]
  GETIMPORT R2 K5 [Enum.KeyCode.RightShift]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K6 ["isShiftDown"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_37:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NEWTABLE R3 0 2
  GETTABLEKS R5 R0 K0 ["_userInputService"]
  GETTABLEKS R4 R5 K1 ["InputBegan"]
  MOVE R6 R2
  NAMECALL R4 R4 K2 ["Connect"]
  CALL R4 2 1
  GETTABLEKS R6 R0 K0 ["_userInputService"]
  GETTABLEKS R5 R6 K3 ["InputEnded"]
  MOVE R7 R2
  NAMECALL R5 R5 K2 ["Connect"]
  CALL R5 2 -1
  SETLIST R3 R4 -1 [1]
  RETURN R3 1

PROTO_38:
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_manualPlaneLock"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["_manualPlaneLock"]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_manualPlaneLock"]
  CALL R0 1 0
  RETURN R0 0

PROTO_39:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["EditPlane"]
  NAMECALL R0 R0 K1 ["Disable"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["_toggleEditEnabled"]
  RETURN R0 0

PROTO_40:
  GETTABLEKS R3 R0 K0 ["_toggleEditEnabled"]
  JUMPIF R3 [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["EditPlane"]
  NAMECALL R3 R0 K2 ["Enable"]
  CALL R3 2 0
  LOADB R3 1
  SETTABLEKS R3 R0 K0 ["_toggleEditEnabled"]
  SETTABLEKS R1 R0 K3 ["_manualPlaneLock"]
  GETTABLEKS R4 R0 K4 ["_pluginActions"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["EditPlane"]
  NAMECALL R4 R4 K5 ["get"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K6 ["Triggered"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  NAMECALL R3 R3 K7 ["Connect"]
  CALL R3 2 1
  NEWTABLE R4 0 2
  MOVE R5 R3
  DUPTABLE R6 K9 [{"Disconnect"}]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R7 R6 K8 ["Disconnect"]
  SETLIST R4 R5 2 [1]
  RETURN R4 1

PROTO_41:
  MOVE R7 R1
  NAMECALL R5 R0 K0 ["supportsShortcut"]
  CALL R5 2 1
  JUMPIF R5 [+9]
  GETIMPORT R5 K2 [error]
  LOADK R7 K3 ["Cannot register unsupported shortcut for property %*."]
  MOVE R9 R1
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  CALL R5 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["BrushSize"]
  JUMPIFEQ R1 R5 [+6]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Strength"]
  JUMPIFNOTEQ R1 R5 [+9]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R4
  NAMECALL R5 R0 K7 ["onBrushChanged"]
  CALL R5 5 -1
  RETURN R5 -1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["SourceMaterial"]
  JUMPIFEQ R1 R5 [+6]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["TargetMaterial"]
  JUMPIFNOTEQ R1 R5 [+7]
  MOVE R7 R1
  MOVE R8 R3
  NAMECALL R5 R0 K10 ["onMaterialPicked"]
  CALL R5 3 -1
  RETURN R5 -1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["BrushMode"]
  JUMPIFNOTEQ R1 R5 [+7]
  MOVE R7 R3
  MOVE R8 R2
  NAMECALL R5 R0 K12 ["onBrushMode"]
  CALL R5 3 -1
  RETURN R5 -1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["TemporarySmooth"]
  JUMPIFNOTEQ R1 R5 [+6]
  MOVE R7 R3
  NAMECALL R5 R0 K14 ["onTemporarySmooth"]
  CALL R5 2 -1
  RETURN R5 -1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K15 ["ManualPlaneLock"]
  JUMPIFNOTEQ R1 R5 [+7]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R0 K16 ["onToggleEdit"]
  CALL R5 3 -1
  RETURN R5 -1
  RETURN R0 0

PROTO_42:
  NEWTABLE R2 8 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["BrushSize"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["BrushMode"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["ManualPlaneLock"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Strength"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["TemporarySmooth"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["SourceMaterial"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["TargetMaterial"]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETTABLE R3 R2 R1
  RETURN R3 1

PROTO_43:
  GETTABLEKS R1 R0 K0 ["_mouse"]
  RETURN R1 1

PROTO_44:
  GETTABLEKS R1 R0 K0 ["_mouseDown"]
  RETURN R1 1

PROTO_45:
  MOVE R4 R1
  LOADB R5 1
  NAMECALL R2 R0 K0 ["SetEnabled"]
  CALL R2 3 0
  RETURN R0 0

PROTO_46:
  MOVE R4 R1
  LOADB R5 0
  NAMECALL R2 R0 K0 ["SetEnabled"]
  CALL R2 3 0
  RETURN R0 0

PROTO_47:
  GETTABLEKS R3 R0 K0 ["_pluginActions"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["get"]
  CALL R3 2 1
  SETTABLEKS R2 R3 K2 ["Enabled"]
  RETURN R0 0

PROTO_48:
  GETTABLEKS R4 R0 K0 ["_pluginActions"]
  MOVE R6 R1
  NAMECALL R4 R4 K1 ["get"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K2 ["Triggered"]
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["ContextItem"]
  GETTABLEKS R4 R2 K10 ["PluginActions"]
  GETTABLEKS R5 R1 K11 ["Util"]
  GETTABLEKS R6 R5 K12 ["Signal"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Resources"]
  GETTABLEKS R8 R9 K15 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K11 ["Util"]
  GETTABLEKS R9 R10 K16 ["getMaterials"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K17 ["Flags"]
  GETTABLEKS R10 R11 K18 ["getFFlagTerrainEditorUpdateShortcuts"]
  CALL R9 1 1
  GETIMPORT R10 K20 [game]
  LOADK R12 K21 ["TerrainEditorBlockDoubleMouseDown"]
  LOADB R13 0
  NAMECALL R10 R10 K22 ["DefineFastFlag"]
  CALL R10 3 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K23 ["Types"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K24 ["BrushMode"]
  GETTABLEKS R13 R11 K25 ["BrushSettings"]
  GETTABLEKS R14 R11 K26 ["MaterialSettings"]
  GETTABLEKS R15 R11 K27 ["PluginAction"]
  LOADK R18 K28 ["ShortcutController"]
  NAMECALL R16 R3 K29 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K30 [PROTO_5]
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R10
  SETTABLEKS R17 R16 K31 ["new"]
  DUPCLOSURE R17 K32 [PROTO_6]
  SETTABLEKS R17 R16 K33 ["isMouseMoveReserved"]
  DUPCLOSURE R17 K34 [PROTO_7]
  SETTABLEKS R17 R16 K35 ["isMouseDownReserved"]
  DUPCLOSURE R17 K36 [PROTO_8]
  SETTABLEKS R17 R16 K37 ["isAltDown"]
  DUPCLOSURE R17 K38 [PROTO_9]
  SETTABLEKS R17 R16 K39 ["isShiftDown"]
  DUPCLOSURE R17 K40 [PROTO_10]
  SETTABLEKS R17 R16 K41 ["isControlDown"]
  DUPCLOSURE R17 K42 [PROTO_11]
  SETTABLEKS R17 R16 K43 ["isBDown"]
  DUPCLOSURE R17 K44 [PROTO_21]
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K45 ["onBrushChanged"]
  MOVE R17 R9
  CALL R17 0 1
  JUMPIFNOT R17 [+11]
  DUPCLOSURE R17 K46 [PROTO_26]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R14
  SETTABLEKS R17 R16 K47 ["onMaterialPicked"]
  DUPCLOSURE R17 K48 [PROTO_28]
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K49 ["onBrushMode"]
  JUMP [+10]
  DUPCLOSURE R17 K50 [PROTO_33]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R14
  SETTABLEKS R17 R16 K47 ["onMaterialPicked"]
  DUPCLOSURE R17 K51 [PROTO_35]
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K49 ["onBrushMode"]
  DUPCLOSURE R17 K52 [PROTO_37]
  SETTABLEKS R17 R16 K53 ["onTemporarySmooth"]
  DUPCLOSURE R17 K54 [PROTO_40]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K55 ["onToggleEdit"]
  DUPCLOSURE R17 K56 [PROTO_41]
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R17 R16 K57 ["registerShortcut"]
  DUPCLOSURE R17 K58 [PROTO_42]
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R17 R16 K59 ["supportsShortcut"]
  DUPCLOSURE R17 K60 [PROTO_43]
  SETTABLEKS R17 R16 K61 ["getMouse"]
  DUPCLOSURE R17 K62 [PROTO_44]
  SETTABLEKS R17 R16 K63 ["IsMouseDown"]
  DUPCLOSURE R17 K64 [PROTO_45]
  SETTABLEKS R17 R16 K65 ["Enable"]
  DUPCLOSURE R17 K66 [PROTO_46]
  SETTABLEKS R17 R16 K67 ["Disable"]
  DUPCLOSURE R17 K68 [PROTO_47]
  SETTABLEKS R17 R16 K69 ["SetEnabled"]
  DUPCLOSURE R17 K70 [PROTO_48]
  SETTABLEKS R17 R16 K71 ["Connect"]
  RETURN R16 1

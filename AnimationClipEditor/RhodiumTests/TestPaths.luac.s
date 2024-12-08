PROTO_0:
  MOVE R2 R0
  FASTCALL2K ASSERT R2 K0 [+5]
  MOVE R4 R2
  LOADK R5 K0 ["waitForDescendant: instance cannot be nil."]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETIMPORT R3 K4 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  MOVE R10 R7
  LOADN R11 2
  NAMECALL R8 R2 K5 ["WaitForChild"]
  CALL R8 3 1
  MOVE R12 R7
  LOADK R13 K6 [" was not found under parent "]
  NAMECALL R16 R2 K7 ["GetFullName"]
  CALL R16 1 1
  MOVE R14 R16
  LOADK R15 K8 ["."]
  CONCAT R11 R12 R15
  FASTCALL2 ASSERT R8 R11 [+4]
  MOVE R10 R8
  GETIMPORT R9 K2 [assert]
  CALL R9 2 0
  MOVE R2 R8
  FORGLOOP R3 2 [inext] [-21]
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["waitForDescendant"]
  MOVE R2 R0
  NEWTABLE R3 0 2
  LOADK R4 K1 ["AnimationClipEditor"]
  LOADK R5 K2 ["EditorController"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["TrackEditor"]
  LOADK R6 K3 ["DopeSheetController"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getDopeSheetController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["DopeSheetContainer"]
  LOADK R6 K3 ["DopeSheet"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getDopeSheet"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 2
  MOVE R6 R1
  LOADK R7 K2 ["KeyframeDisplayArea"]
  SETLIST R5 R6 2 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 5
  LOADK R5 K2 ["TrackListAndControlContainer"]
  LOADK R6 K3 ["EventsAndTracks"]
  LOADK R7 K4 ["TrackListAndScrollBar"]
  LOADK R8 K5 ["TrackList"]
  LOADK R9 K6 ["Canvas"]
  SETLIST R4 R5 5 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["TrackListAndControlContainer"]
  LOADK R6 K3 ["AnimationControlPanel"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getAnimationControlPanel"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 1
  LOADK R5 K2 ["MediaControls"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getMediaControls"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 4
  MOVE R6 R1
  LOADK R7 K2 ["Button"]
  LOADK R8 K3 ["Contents"]
  LOADK R9 K4 ["TextButton"]
  SETLIST R5 R6 4 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getAnimationControlPanel"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 1
  LOADK R5 K2 ["TimeDisplay"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getTrackList"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 4
  LOADK R5 K2 ["SummaryTrack"]
  LOADK R6 K3 ["LeftButtonsListContainer"]
  LOADK R7 K4 ["IKController"]
  LOADK R8 K5 ["IKButton"]
  SETLIST R4 R5 4 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["waitForDescendant"]
  MOVE R2 R0
  NEWTABLE R3 0 1
  LOADK R4 K1 ["Container"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getIKWindow"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["BottomFrame"]
  LOADK R6 K3 ["EnableIKButton"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getIKWindow"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["TreeView"]
  LOADK R6 K2 ["TreeView"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getIKTreeView"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 3
  LOADK R6 K2 ["Contents"]
  LOADK R7 K3 ["List"]
  MOVE R8 R1
  SETLIST R5 R6 3 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getTreeViewJoint"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 1
  LOADK R6 K2 ["Pin"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 3
  LOADK R5 K2 ["TrackListAndControlContainer"]
  LOADK R6 K3 ["EventsAndTracks"]
  LOADK R7 K4 ["EventsTitle"]
  SETLIST R4 R5 3 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getDopeSheetController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 4
  LOADK R5 K2 ["Events"]
  LOADK R6 K3 ["Track"]
  LOADK R7 K4 ["Markers"]
  LOADK R8 K5 ["KeyframeDisplayArea"]
  SETLIST R4 R5 4 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["waitForDescendant"]
  MOVE R2 R0
  NEWTABLE R3 0 3
  LOADK R4 K1 ["SolidBackground"]
  LOADK R5 K2 ["Contents"]
  LOADK R6 K3 ["Container"]
  SETLIST R3 R4 3 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_19:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getEventsDialogContents"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 1
  LOADK R7 K2 ["Event_"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  SETLIST R5 R6 1 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_20:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEventsDialogContents"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["AddNew"]
  LOADK R6 K3 ["AddEventEntry"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["waitForDescendant"]
  MOVE R2 R0
  NEWTABLE R3 0 2
  LOADK R4 K1 ["SolidBackground"]
  LOADK R5 K2 ["Contents"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getStyledDialogContents"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["KeyframePane"]
  LOADK R6 K3 ["KeyframesText"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_23:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getStyledDialogContents"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 1
  LOADK R5 K2 ["Slider"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_24:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["waitForDescendant"]
  MOVE R3 R0
  NEWTABLE R4 0 2
  LOADK R5 K1 ["SolidBackground"]
  LOADK R6 K2 ["ButtonContainer"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETTABLEN R1 R2 1
  RETURN R1 1

PROTO_25:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["waitForDescendant"]
  MOVE R3 R0
  NEWTABLE R4 0 2
  LOADK R5 K1 ["SolidBackground"]
  LOADK R6 K2 ["ButtonContainer"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETTABLEN R1 R2 2
  RETURN R1 1

PROTO_26:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["TrackEditor"]
  LOADK R6 K3 ["CurveEditorController"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_27:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getCurveEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["CanvasContainer"]
  LOADK R6 K3 ["CurveCanvas"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  NEWTABLE R1 32 0
  DUPCLOSURE R2 K4 [PROTO_0]
  SETTABLEKS R2 R1 K5 ["waitForDescendant"]
  DUPCLOSURE R2 K6 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K7 ["getEditorController"]
  DUPCLOSURE R2 K8 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K9 ["getDopeSheetController"]
  DUPCLOSURE R2 K10 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K11 ["getDopeSheet"]
  DUPCLOSURE R2 K12 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K13 ["getTrack"]
  DUPCLOSURE R2 K14 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K15 ["getTrackList"]
  DUPCLOSURE R2 K16 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K17 ["getAnimationControlPanel"]
  DUPCLOSURE R2 K18 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K19 ["getMediaControls"]
  DUPCLOSURE R2 K20 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K21 ["getMediaControlButton"]
  DUPCLOSURE R2 K22 [PROTO_9]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K23 ["getTimeDisplay"]
  DUPCLOSURE R2 K24 [PROTO_10]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K25 ["getIKButton"]
  DUPCLOSURE R2 K26 [PROTO_11]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K27 ["getIKWindow"]
  DUPCLOSURE R2 K28 [PROTO_12]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K29 ["getIKEnableButton"]
  DUPCLOSURE R2 K30 [PROTO_13]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K31 ["getIKTreeView"]
  DUPCLOSURE R2 K32 [PROTO_14]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K33 ["getTreeViewJoint"]
  DUPCLOSURE R2 K34 [PROTO_15]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K35 ["getTreeViewJointPin"]
  DUPCLOSURE R2 K36 [PROTO_16]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K37 ["getEventsTitleTrack"]
  DUPCLOSURE R2 K38 [PROTO_17]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K39 ["getEventsTrack"]
  DUPCLOSURE R2 K40 [PROTO_18]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K41 ["getEventsDialogContents"]
  DUPCLOSURE R2 K42 [PROTO_19]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K43 ["getEventEntry"]
  DUPCLOSURE R2 K44 [PROTO_20]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K45 ["getAddEventEntry"]
  DUPCLOSURE R2 K46 [PROTO_21]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K47 ["getStyledDialogContents"]
  DUPCLOSURE R2 K48 [PROTO_22]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K49 ["getKFRKeyframesText"]
  DUPCLOSURE R2 K50 [PROTO_23]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K51 ["getKFRSlider"]
  DUPCLOSURE R2 K52 [PROTO_24]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K53 ["getKFRCancel"]
  DUPCLOSURE R2 K54 [PROTO_25]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K55 ["getKFROk"]
  DUPCLOSURE R2 K56 [PROTO_26]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K57 ["getCurveEditorController"]
  DUPCLOSURE R2 K58 [PROTO_27]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K59 ["getCurveCanvas"]
  RETURN R1 1
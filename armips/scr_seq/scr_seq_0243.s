.nds
.nds
.thumb

.include "armips/include/constants.s"
.include "armips/include/scriptmacros.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"
.include "asm/include/items.inc"
.include "armips/include/movement_constants.s"


.create "build/a012/2_243", 0

// Route 36 – Script archive 0243

scrdef scr_seq_0243_001
scrdef scr_seq_0243_002
scrdef scr_seq_0243_003
scrdef scr_seq_0243_004
scrdef scr_seq_0243_005
scrdef scr_seq_0243_006
scrdef scr_seq_0243_007
scrdef scr_seq_0243_008
scrdef scr_seq_0243_009
scrdef scr_seq_0243_010
scrdef scr_seq_0243_011
scrdef_end

/*
 * DSPRE Script File
 * Rom ID: rom
 * Game: HGSS
 * File: Script File 243
 * Generated: 1/4/2026 7:46:32 PM
 */

;===== Script 1 =====

scr_seq_0243_001:
    play_se SEQ_SE_DP_SELECT
    lockall

    checkflag 464
    compare VAR_SPECIAL_RESULT, 0
    goto_if_eq scr_seq_0243_func_1

    checkitem ITEM_SQUIRT_BOTTLE, 1, VAR_SPECIAL_RESULT
    compare VAR_SPECIAL_RESULT, 1
    goto_if_ne scr_seq_0243_func_2

    apply_movement 5, Movement_Action_1
    wait_movement

    play_se SEQ_SE_GS_KI_UGOKU

    apply_movement 4, Movement_Action_2
    wait_movement

    compare VAR_SPECIAL_RESULT, 1
    goto_if_eq scr_seq_0243_func_3

    releaseall
    end

;===== Script 2 =====

scr_seq_0243_002:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer

    GetFirstAlivePokemonSlot 0x8002
    CheckRibbon 0x800C, 0x8002, 0x3E
    CompareVarValue 0x800C, 0x1
    JumpIfEqual scr_seq_0243_func_4

    CheckFlag 0xABC
    JumpIfEqual scr_seq_0243_func_5

    CompareVarValue 0x4094, 0x7
    JumpIfEqual scr_seq_0243_func_6

    CheckFlag 0xB1
    JumpIfEqual scr_seq_0243_func_7

    GetDayOfWeek 0x800C
    CompareVarValue 0x800C, 0x4
    JumpIfEqual scr_seq_0243_func_8

    MessageFromArchive 0x0, 0xF
    Jump scr_seq_0243_func_9

;===== Script 3 =====

scr_seq_0243_003:
    GetDayOfWeek 0x4000
    CompareVarValue 0x4000, 0x4
    JumpIfNotEqual scr_seq_0243_func_10

    ClearFlag 0x1C4
    Jump scr_seq_0243_func_11

;===== Script 4 =====

scr_seq_0243_004:
    SetIconBoard 0x9, 0x1, 0xF, 0x800C
    ShowBoard 0x3
    WaitBoard
    CloseBoard 0x800C
    CommonScript 0x7D0
    End

;===== Script 5 =====

scr_seq_0243_005:
    SetTextBoard 0x2, 0x0
    ShowBoard 0x3
    WaitBoard
    BoardMessage 0xA, 0x800C
    CommonScript 0x7D0
    End

;===== Script 6 =====

scr_seq_0243_006:
    SetTextBoard 0x3, 0x0
    ShowBoard 0x3
    WaitBoard
    BoardMessage 0xB, 0x800C
    CommonScript 0x7D0
    End

;===== Script 7 =====

scr_seq_0243_007:
    SetTextBoard 0x3, 0x0
    ShowBoard 0x3
    WaitBoard
    BoardMessage 0xC, 0x800C
    CommonScript 0x7D0
    End

;===== Script 8 =====

scr_seq_0243_008:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer

    CheckItem 0x1DD, 0x1, 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfNotEqual scr_seq_0243_func_12

    Message 0xD
    Jump scr_seq_0243_func_13

;===== Script 9 =====

scr_seq_0243_009:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer

    GetItemQuantity 0x1A9, 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfNotEqual scr_seq_0243_func_14

    Message 0x3
    SetVar 0x8004, 0x1A9
    SetVar 0x8005, 0x1
    CommonScript 0x7F1

    Message 0x5
    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Script 10 =====

scr_seq_0243_010:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer

    CheckFlag 0x1C2
    JumpIfEqual scr_seq_0243_func_15

    Message 0x7
    Jump scr_seq_0243_func_16

;===== Script 11 =====

scr_seq_0243_011:
    CheckFlag 0xA4
    JumpIfEqual scr_seq_0243_func_17
    End


; --- function stubs ---

;===== Function 1 =====

scr_seq_0243_func_1:
    PlayFanfare 0x900

    Message 0x0

    OpenTouchScreen
    YesNoTouchScreen 0x800C
    CloseTouchScreen

    CompareVarValue 0x800C, 0x0
    JumpIfEqual scr_seq_0243_func_18

    CompareVarValue 0x800C, 0x1
    JumpIfEqual scr_seq_0243_func_19

    End

;===== Function 2 =====

scr_seq_0243_func_2:
    PlayFanfare 0x900

    CompareVarValue 0x800C, 0x1
    JumpIfEqual scr_seq_0243_func_3

    ReleaseAll
    End

;===== Function 3 =====

scr_seq_0243_func_3:
    Message 0x0

    OpenTouchScreen
    YesNoTouchScreen 0x800C
    CloseTouchScreen

    CompareVarValue 0x800C, 0x0
    JumpIfEqual scr_seq_0243_func_20

    CompareVarValue 0x800C, 0x1
    JumpIfEqual scr_seq_0243_func_19

    End

;===== Function 4 =====

scr_seq_0243_func_4:
    get_std_msg_naix 0x0, 0x800C
    MessageFromArchive 0x800C, 0x29

    WaitButton
    CloseMessage
    ReleaseAll
    End


;===== Function 5 =====

scr_seq_0243_func_5:
    get_std_msg_naix 0x0, 0x800C
    MessageFromArchive 0x800C, 0x2B

    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 6 =====

scr_seq_0243_func_6:
    GetDayOfWeek 0x800C
    CompareVarValue 0x800C, 0x4
    JumpIfEqual scr_seq_0243_func_21

    get_std_msg_naix 0x0, 0x800C
    MessageFromArchive 0x800C, 0xF

    Jump scr_seq_0243_func_9

;===== Function 7 =====

scr_seq_0243_func_7:
    get_std_msg_naix 0x0, 0x800C
    MessageFromArchive 0x800C, 0xE

    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 8 =====

scr_seq_0243_func_8:
    get_std_msg_naix 0x0, 0x800C
    MessageFromArchive 0x800C, 0xC

    SetVar 0x8004, 0xEE
    SetVar 0x8005, 0x1

    CheckItemSpace 0x8004, 0x8005, 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfEqual scr_seq_0243_func_22

    CommonScript 0x7F1
    SetFlag 0xB1
    IncrementVar 0x4094, 0x1

    get_std_msg_naix 0x0, 0x800C
    MessageFromArchive 0x800C, 0xD

    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 9 =====

scr_seq_0243_func_9:
    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 10 =====

scr_seq_0243_func_10:
    SetFlag 0x1C4
    End

;===== Function 11 =====

scr_seq_0243_func_11:
    End

;===== Function 12 =====

scr_seq_0243_func_12:
    Message 0xE
    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 13 =====

scr_seq_0243_func_13:
    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 14 =====

scr_seq_0243_func_14:
    Message 0x5
    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 15 =====

scr_seq_0243_func_15:
    Message 0x8
    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 16 =====

scr_seq_0243_func_16:
    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 17 =====

scr_seq_0243_func_17:
    SetFlag 0x1C2
    RemoveOW 0x4
    ClearFlag 0xA4
    End

;===== Function 18 =====

scr_seq_0243_func_18:
    TextPlayerName 0x0
    Message 0x1

    PlayFanfare 0x901

    GetPlayerDirection 0x800C
    CompareVarValue 0x800C, 0x2
    JumpIfNotEqual scr_seq_0243_func_23

    Movement 0xFF, Movement_Action_3
    Jump scr_seq_0243_func_24

;===== Function 19 =====

scr_seq_0243_func_19:
    CloseMessage
    ReleaseAll
    End

;===== Function 20 =====

scr_seq_0243_func_20:
    TextPlayerName 0x0
    Message 0x1

    PlayFanfare 0x901

    GetPlayerDirection 0x800C
    CompareVarValue 0x800C, 0x2
    JumpIfNotEqual scr_seq_0243_func_25

    Jump scr_seq_0243_func_26

;===== Function 21 =====

scr_seq_0243_func_21:
    get_std_msg_naix 0x0, 0x800C
    MessageFromArchive 0x800C, 0x28

    TextPartyPokemon 0x0, 0x8002
    MessageFromArchive 0x800C, 0x2A

    GiveRibbon 0x8002, 0x3E

    PlaySound 0x4A1
    WaitSound

    SetFlag 0xABC

    WaitButton
    CloseMessage
    ReleaseAll
    End

;===== Function 22 =====

scr_seq_0243_func_22:
    CommonScript 0x7D9
    CloseMessage
    ReleaseAll
    End

;===== Function 23 =====

scr_seq_0243_func_23:
    CompareVarValue 0x800C, 0x1
    JumpIfNotEqual scr_seq_0243_func_27

    Jump scr_seq_0243_func_24


;===== Function 24 =====

scr_seq_0243_func_24:
    WaitMovement
    Message 0x2
    CloseMessage

    PlayFanfare 0x900

    SetFlag 0xA4
    SetVar 0x800B, 0x1

    Message 0x641
    TotemBattleSp 0xB9, 0x19, 0x0

    SetVar 0x800B, 0x0
    ClearFlag 0xA4

    CheckBattleIsLost 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfEqual scr_seq_0243_func_28

    check_battle_won 0x4001
    CompareVarValue 0x4001, 0x0
    CallIfEqual scr_seq_0243_func_29


    CheckDefeatedPokemon 0x4000, 0x0
    CompareVarValue 0x4000, 0x1
    JumpIfEqual scr_seq_0243_func_30

    ReleaseAll
    End

;===== Function 25 =====

scr_seq_0243_func_25:
    CompareVarValue 0x800C, 0x1
    JumpIfNotEqual scr_seq_0243_func_31

    Jump scr_seq_0243_func_26

;===== Function 26 =====

scr_seq_0243_func_26:
    WaitMovement

    SetFlag 0xB4
    Message 0x2
    CloseMessage

    PlayFanfare 0x900

    SetFlag 0xA4
    SetVar 0x800B, 0x1

    Message 0x641
    TotemBattleSp 0xB9, 0x19, 0x0

    SetVar 0x800B, 0x0
    ClearFlag 0xA4

    CheckBattleIsLost 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfEqual scr_seq_0243_func_28

    check_battle_won 0x4001
    CompareVarValue 0x4001, 0x1
    JumpIfEqual scr_seq_0243_func_30

    CompareVarValue 0x4001, 0x0
    CallIfEqual scr_seq_0243_func_29


    SetFlag 0xB5

    GetPlayerDirection 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfNotEqual scr_seq_0243_func_32

    LockFollowingPoke 0x0
    WaitFollowingPoke

    SetFollowingPokeMovement 0x37

    WaitFollowingPoke
    LockFollowingPoke 0x1
    SetFollowingPokeMovement 0x30

    Jump scr_seq_0243_func_33

;===== Function 27 =====

scr_seq_0243_func_27:

    Message 0x2
    CloseMessage

    PlayFanfare 0x900

    SetFlag 0xA4
    SetVar 0x800B, 0x1

    Message 0x641
    TotemBattleSp 0xB9, 0x19, 0x0

    SetVar 0x800B, 0x0
    ClearFlag 0xA4

    CheckBattleIsLost 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfEqual scr_seq_0243_func_28

    check_battle_won 0x4001
    CompareVarValue 0x4001, 0x1
    JumpIfEqual scr_seq_0243_func_30

    CompareVarValue 0x4001, 0x0
    CallIfEqual scr_seq_0243_func_29

    CheckDefeatedPokemon 0x4000, 0x0
    CompareVarValue 0x4000, 0x1
    JumpIfEqual scr_seq_0243_func_30

    ReleaseAll
    End


;===== Function 28 =====

scr_seq_0243_func_28:
    LostBattle
    ReleaseAll
    End


;===== Function 29 =====

scr_seq_0243_func_29:
    SetFlag 0x169
    Return

;===== Function 30 =====

scr_seq_0243_func_30:
    ReleaseAll
    End

;===== Function 31 =====

scr_seq_0243_func_31:

    SetFlag 0xB4

    Message 0x2
    CloseMessage

    PlayFanfare 0x900

    SetFlag 0xA4
    SetVar 0x800B, 0x1

    Message 0x641
    TotemBattleSp 0xB9, 0x19, 0x0

    SetVar 0x800B, 0x0
    ClearFlag 0xA4

    CheckBattleIsLost 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfEqual scr_seq_0243_func_28

    check_battle_won 0x4001
    CompareVarValue 0x4001, 0x1
    JumpIfEqual scr_seq_0243_func_30

    CompareVarValue 0x4001, 0x0
    CallIfEqual scr_seq_0243_func_29

    SetFlag 0xB5

    GetPlayerDirection 0x800C
    CompareVarValue 0x800C, 0x0
    JumpIfNotEqual scr_seq_0243_func_32

    LockFollowingPoke 0x0
    WaitFollowingPoke

    SetFollowingPokeMovement 0x37

    WaitFollowingPoke
    LockFollowingPoke 0x1
    SetFollowingPokeMovement 0x30

    Jump scr_seq_0243_func_33

;===== Function 32 =====

scr_seq_0243_func_32:
    Movement 0x5, Movement_Action_8
    WaitMovement

    Message 0xF

    SetVar 0x8004, 0x1D6
    SetVar 0x8005, 0x1
    CommonScript 0x7F1

    Message 0x10
    Message 0x11

    SetVar 0x8004, 0x9B
    SetVar 0x8005, 0x3
    CommonScript 0x7F1

    SetVar 0x8004, 0x97
    SetVar 0x8005, 0x3
    CommonScript 0x7F1

    Message 0x12
    CloseMessage

    GetPlayerDirection 0x800C
    CompareVarValue 0x800C, 0x1
    JumpIfNotEqual scr_seq_0243_func_34

    Movement 0x5, Movement_Action_9
    WaitMovement

    Jump scr_seq_0243_func_35

;===== Function 33 =====

scr_seq_0243_func_33:
    Message 0xF

    SetVar 0x8004, 0x1D6
    SetVar 0x8005, 0x1
    CommonScript 0x7F1

    Message 0x10
    Message 0x11

    SetVar 0x8004, 0x9B
    SetVar 0x8005, 0x3
    CommonScript 0x7F1

    SetVar 0x8004, 0x97
    SetVar 0x8005, 0x3
    CommonScript 0x7F1

    Message 0x12
    CloseMessage

    GetPlayerDirection 0x800C
    CompareVarValue 0x800C, 0x1
    JumpIfNotEqual scr_seq_0243_func_34

    Movement 0x5, Movement_Action_9
    WaitMovement

    Jump scr_seq_0243_func_35

;===== Function 34 =====

scr_seq_0243_func_34:
    Movement 0x5, Movement_Action_10
    WaitMovement

    RemoveOW 0x5
    SetFlag 0x1CF
    ClearFlag 0x1D0

    ReleaseAll
    End

;===== Function 35 =====

scr_seq_0243_func_35:
    RemoveOW 0x5
    SetFlag 0x1CF
    ClearFlag 0x1D0

    ReleaseAll
    End

; --- movement data ---

;===== Action 1 =====

Movement_Action_1:
    step FACE_UP, 1
    step_end


;===== Action 2 =====

Movement_Action_2:
    step FACE_UP, 1
    step FACE_DOWN, 1
    step FACE_UP, 1
    step_end

;===== Action 3 =====

Movement_Action_3:
    step FACE_LEFT, 1
    step FACE_RIGHT, 1
    step FACE_LEFT, 1
    step FACE_RIGHT, 1
    step_end


;===== Action 4 =====

Movement_Action_4:
    step FACE_DOWN, 1
    step FACE_UP, 1
    step FACE_DOWN, 1
    step FACE_UP, 1
    step_end

;===== Action 5 =====

Movement_Action_5:
    step FACE_LEFT, 1
    step FACE_RIGHT, 1
    step FACE_LEFT, 1
    step FACE_RIGHT, 1
    step_end


;===== Action 6 =====

Movement_Action_6:
    step FACE_DOWN, 1
    step_end


;===== Action 7 =====

Movement_Action_7:
    step FACE_UP, 1
    step FACE_DOWN, 1
    step FACE_UP, 1
    step FACE_DOWN, 1
    step_end


;===== Action 8 =====

Movement_Action_8:
    step WALK_UP, 1
    step WALK_UP, 1
    step WALK_UP, 1
    step FACE_RIGHT, 1
    step_end


;===== Action 9 =====

Movement_Action_9:
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step_end


;===== Action 10 =====

Movement_Action_10:
    step WALK_DOWN, 1
    step WALK_DOWN, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step WALK_LEFT, 1
    step_end
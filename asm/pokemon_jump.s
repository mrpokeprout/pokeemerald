	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_802A9A8
sub_802A9A8: @ 802A9A8
	push {r4-r7,lr}
	adds r6, r1, 0
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802AA3C
	ldr r5, =gUnknown_02022CFC
	ldr r0, =0x000083b0
	bl Alloc
	str r0, [r5]
	cmp r0, 0
	beq _0802AA3C
	bl ResetTasks
	ldr r0, =sub_802ACA0
	movs r1, 0x1
	bl CreateTask
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, [r5]
	movs r1, 0
	strh r1, [r0, 0x8]
	str r6, [r0]
	strb r4, [r0, 0x4]
	bl GetMultiplayerId
	ldr r1, [r5]
	strb r0, [r1, 0x6]
	ldr r0, [r5]
	ldrb r2, [r0, 0x6]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 2
	ldr r2, =0x000082a8
	adds r1, r2
	adds r0, r1
	movs r1, 0x64
	muls r1, r7
	ldr r2, =gPlayerParty
	adds r1, r2
	bl sub_802AC2C
	ldr r0, [r5]
	bl sub_802AA60
	ldr r2, [r5]
	adds r0, r4, 0
	movs r1, 0x2
	bl SetWordTaskArg
	ldr r0, =sub_802AC6C
	bl SetMainCallback2
	b _0802AA42
	.pool
_0802AA3C:
	adds r0, r6, 0
	bl SetMainCallback2
_0802AA42:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_802A9A8

	thumb_func_start sub_802AA48
sub_802AA48: @ 802AA48
	push {lr}
	bl sub_802D0AC
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	bl Free
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802AA48

	thumb_func_start sub_802AA60
sub_802AA60: @ 802AA60
	push {r4,lr}
	adds r4, r0, 0
	bl GetLinkPlayerCount
	movs r2, 0
	strb r0, [r4, 0x5]
	adds r1, r4, 0
	adds r1, 0x70
	movs r0, 0x5
	strb r0, [r1]
	adds r0, r4, 0
	adds r0, 0x72
	strh r2, [r0]
	bl sub_802AB20
	adds r0, r4, 0
	bl sub_802AA94
	ldrb r0, [r4, 0x5]
	cmp r0, 0x5
	bne _0802AA8E
	bl sub_802E3A8
_0802AA8E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_802AA60

	thumb_func_start sub_802AA94
sub_802AA94: @ 802AA94
	push {r4-r6,lr}
	adds r4, r0, 0
	movs r0, 0x6
	str r0, [r4, 0x14]
	str r0, [r4, 0x18]
	adds r0, r4, 0
	adds r0, 0x4A
	movs r6, 0
	movs r5, 0
	strh r5, [r0]
	str r5, [r4, 0x1C]
	str r5, [r4, 0x5C]
	bl GetMultiplayerId
	movs r1, 0
	lsls r0, 24
	cmp r0, 0
	bne _0802AABA
	movs r1, 0x1
_0802AABA:
	adds r0, r4, 0
	adds r0, 0x47
	strb r1, [r0]
	strh r5, [r4, 0x8]
	strh r5, [r4, 0xA]
	strh r5, [r4, 0xC]
	strh r5, [r4, 0xE]
	str r5, [r4, 0x58]
	strh r5, [r4, 0x3A]
	subs r0, 0x3
	strb r6, [r0]
	str r5, [r4, 0x54]
	adds r0, 0x2
	strb r6, [r0]
	adds r0, 0x3
	strb r6, [r0]
	subs r0, 0x1
	movs r1, 0x1
	strb r1, [r0]
	str r5, [r4, 0x78]
	adds r0, 0x29
	strb r6, [r0]
	adds r0, 0x3
	strh r5, [r0]
	str r1, [r4, 0x60]
	subs r0, 0x27
	strb r6, [r0]
	str r5, [r4, 0x68]
	str r5, [r4, 0x64]
	str r5, [r4, 0x2C]
	str r5, [r4, 0x30]
	bl sub_802AB98
	bl sub_802C0E8
	movs r2, 0
	adds r5, r4, 0
	adds r5, 0x7C
	movs r3, 0
	adds r1, r4, 0
	adds r1, 0x9A
_0802AB0C:
	adds r0, r5, r2
	strb r3, [r0]
	strh r3, [r1]
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, 0x4
	ble _0802AB0C
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_802AA94

	thumb_func_start sub_802AB20
sub_802AB20: @ 802AB20
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r7, =gUnknown_02022CFC
	movs r6, 0
	movs r5, 0
	ldr r0, =gPkmnJumpSpecies
	mov r8, r0
	movs r4, 0x4
_0802AB32:
	ldr r0, [r7]
	adds r0, r5
	ldr r1, =0x000082a8
	adds r0, r1
	ldrh r0, [r0]
	bl sub_802AC00
	lsls r0, 16
	ldr r1, [r7]
	adds r1, r6
	asrs r0, 14
	add r0, r8
	ldrh r0, [r0, 0x2]
	ldr r2, =0x000082f0
	adds r1, r2
	strh r0, [r1]
	adds r6, 0x28
	adds r5, 0xC
	subs r4, 0x1
	cmp r4, 0
	bge _0802AB32
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	ldr r0, =0x000083ac
	adds r3, r1, r0
	ldrb r2, [r1, 0x6]
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	ldr r2, =0x000082e4
	adds r0, r2
	adds r1, r0
	str r1, [r3]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802AB20

	thumb_func_start sub_802AB98
sub_802AB98: @ 802AB98
	push {r4-r7,lr}
	movs r5, 0
	ldr r6, =gUnknown_02022CFC
	movs r4, 0
	movs r3, 0
_0802ABA2:
	ldr r2, [r6]
	adds r1, r2, r3
	ldr r7, =0x000082f2
	adds r0, r1, r7
	strh r4, [r0]
	adds r7, 0x2
	adds r0, r1, r7
	strh r4, [r0]
	ldr r0, =0x000082f6
	adds r1, r0
	strh r4, [r1]
	ldr r1, =0x000082e4
	adds r0, r2, r1
	adds r0, r3
	str r4, [r0]
	subs r7, 0xC
	adds r0, r2, r7
	adds r0, r3
	ldr r1, =0x7fffffff
	str r1, [r0]
	ldr r1, =0x000082f8
	adds r0, r2, r1
	adds r0, r3
	str r4, [r0]
	adds r2, 0x8B
	adds r2, r5
	movs r0, 0x9
	strb r0, [r2]
	adds r3, 0x28
	adds r5, 0x1
	cmp r5, 0x4
	ble _0802ABA2
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802AB98

	thumb_func_start sub_802AC00
sub_802AC00: @ 802AC00
	push {lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r1, 0
	ldr r2, =gPkmnJumpSpecies
_0802AC0A:
	ldrh r0, [r2]
	cmp r0, r3
	bne _0802AC1C
	lsls r0, r1, 16
	asrs r0, 16
	b _0802AC28
	.pool
_0802AC1C:
	adds r2, 0x4
	adds r1, 0x1
	cmp r1, 0x63
	bls _0802AC0A
	movs r0, 0x1
	negs r0, r0
_0802AC28:
	pop {r1}
	bx r1
	thumb_func_end sub_802AC00

	thumb_func_start sub_802AC2C
sub_802AC2C: @ 802AC2C
	push {r4,r5,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	strh r0, [r5]
	adds r0, r4, 0
	movs r1, 0x1
	bl GetMonData
	str r0, [r5, 0x4]
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	str r0, [r5, 0x8]
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_802AC2C

	thumb_func_start sub_802AC58
sub_802AC58: @ 802AC58
	push {lr}
	bl TransferPlttBuffer
	bl LoadOam
	bl ProcessSpriteCopyRequests
	pop {r0}
	bx r0
	thumb_func_end sub_802AC58

	thumb_func_start sub_802AC6C
sub_802AC6C: @ 802AC6C
	push {lr}
	bl RunTasks
	bl AnimateSprites
	bl BuildOamBuffer
	bl UpdatePaletteFade
	pop {r0}
	bx r0
	thumb_func_end sub_802AC6C

	thumb_func_start sub_802AC84
sub_802AC84: @ 802AC84
	push {lr}
	movs r1, 0x1
	bl CreateTask
	ldr r2, =gUnknown_02022CFC
	ldr r1, [r2]
	movs r3, 0
	strb r0, [r1, 0x4]
	ldr r0, [r2]
	strh r3, [r0, 0x8]
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802AC84

	thumb_func_start sub_802ACA0
sub_802ACA0: @ 802ACA0
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, =gUnknown_02022CFC
	ldr r0, [r1]
	ldrh r0, [r0, 0x8]
	adds r2, r1, 0
	cmp r0, 0x5
	bls _0802ACB6
	b _0802AE08
_0802ACB6:
	lsls r0, 2
	ldr r1, =_0802ACC8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802ACC8:
	.4byte _0802ACE0
	.4byte _0802AD0C
	.4byte _0802AD3C
	.4byte _0802AD68
	.4byte _0802ADA4
	.4byte _0802ADD0
_0802ACE0:
	movs r0, 0
	bl SetVBlankCallback
	bl ResetSpriteData
	bl FreeAllSpritePalettes
	ldr r0, =sub_802BD84
	movs r1, 0x5
	bl sub_802BE60
	movs r0, 0x4
	bl FadeOutMapMusic
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	b _0802ADC0
	.pool
_0802AD0C:
	ldr r0, =sub_802BD84
	bl FuncIsActiveTask
	lsls r0, 24
	cmp r0, 0
	bne _0802AE08
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	adds r0, 0xA4
	bl sub_802D074
	bl sub_800E0E8
	movs r0, 0
	movs r1, 0
	bl CreateWirelessStatusIndicatorSprite
	ldr r1, [r4]
	b _0802ADC0
	.pool
_0802AD3C:
	bl sub_802D0F0
	cmp r0, 0
	bne _0802AE08
	bl IsNotWaitingForBGMStop
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0802AE08
	ldr r0, =0x0000021a
	movs r1, 0x8
	bl FadeOutAndPlayNewMapMusic
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	b _0802ADC0
	.pool
_0802AD68:
	bl IsLinkTaskFinished
	lsls r0, 24
	cmp r0, 0
	beq _0802AE08
	movs r4, 0x1
	negs r4, r4
	adds r0, r4, 0
	movs r1, 0x10
	movs r2, 0
	bl BlendPalettes
	movs r0, 0
	str r0, [sp]
	adds r0, r4, 0
	adds r1, r4, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r0, =sub_802AC58
	bl SetVBlankCallback
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	b _0802ADC0
	.pool
_0802ADA4:
	bl UpdatePaletteFade
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	bne _0802AE08
	ldr r1, =gUnknown_02022CFC
	ldr r0, [r1]
	strb r2, [r0, 0x7]
	ldr r1, [r1]
_0802ADC0:
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802AE08
	.pool
_0802ADD0:
	ldr r0, [r2]
	ldrb r1, [r0, 0x7]
	adds r1, 0x1
	strb r1, [r0, 0x7]
	ldr r1, [r2]
	ldrb r0, [r1, 0x7]
	cmp r0, 0x13
	bls _0802AE08
	adds r0, r1, 0
	adds r0, 0x47
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802ADF8
	ldr r0, =sub_802AF80
	bl sub_802AC84
	b _0802ADFE
	.pool
_0802ADF8:
	ldr r0, =sub_802B194
	bl sub_802AC84
_0802ADFE:
	bl sub_802BE80
	adds r0, r4, 0
	bl DestroyTask
_0802AE08:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802ACA0

	thumb_func_start sub_802AE14
sub_802AE14: @ 802AE14
	push {lr}
	adds r1, r0, 0
	cmp r1, 0
	bne _0802AE34
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	ldr r0, =0x00001111
	str r0, [r1, 0x30]
	movs r0, 0x1
	str r0, [r1, 0x2C]
	b _0802AE46
	.pool
_0802AE34:
	ldr r0, =gUnknown_02022CFC
	ldr r2, [r0]
	subs r1, 0x1
	movs r0, 0x1
	lsls r0, r1
	subs r0, 0x1
	str r0, [r2, 0x30]
	movs r0, 0
	str r0, [r2, 0x2C]
_0802AE46:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802AE14

	thumb_func_start sub_802AE50
sub_802AE50: @ 802AE50
	push {r4-r6,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	adds r1, 0x70
	movs r2, 0
	strb r0, [r1]
	ldr r0, [r4]
	movs r3, 0
	strh r2, [r0, 0x8]
	strh r2, [r0, 0xA]
	adds r0, 0x48
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, 0x49
	strb r3, [r0]
	movs r3, 0x1
	ldr r0, [r4]
	ldrb r0, [r0, 0x5]
	cmp r3, r0
	bge _0802AE94
	adds r6, r4, 0
	ldr r5, =0x000082fc
	movs r4, 0
	movs r2, 0x28
_0802AE82:
	ldr r1, [r6]
	adds r0, r1, r5
	adds r0, r2
	str r4, [r0]
	adds r2, 0x28
	adds r3, 0x1
	ldrb r1, [r1, 0x5]
	cmp r3, r1
	blt _0802AE82
_0802AE94:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802AE50

	thumb_func_start sub_802AEA4
sub_802AEA4: @ 802AEA4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	movs r4, 0x1
	movs r0, 0
	str r0, [sp, 0x4]
	ldr r7, =gUnknown_02022CFC
	ldr r0, [r7]
	ldrb r0, [r0, 0x5]
	cmp r4, r0
	bge _0802AF48
	adds r1, r7, 0
	mov r10, r1
	movs r2, 0x2
	add r2, sp
	mov r8, r2
	ldr r3, =0x0000830c
	mov r9, r3
	movs r6, 0x28
_0802AED0:
	mov r1, r10
	ldr r0, [r1]
	adds r1, r0, r6
	ldr r2, =0x000082f4
	adds r1, r2
	ldrh r5, [r1]
	add r0, r9
	adds r1, r4, 0
	mov r2, sp
	mov r3, r8
	bl sub_802E264
	cmp r0, 0
	beq _0802AF10
	ldr r2, [r7]
	lsls r1, r4, 1
	adds r0, r2, 0
	adds r0, 0x90
	adds r0, r1
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	adds r2, 0x8B
	adds r2, r4
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, [r7]
	adds r0, r6
	ldr r1, =0x000082f6
	adds r0, r1
	strh r5, [r0]
_0802AF10:
	mov r2, r10
	ldr r1, [r2]
	ldr r3, =0x000082fc
	adds r0, r1, r3
	adds r0, r6
	ldr r0, [r0]
	cmp r0, 0
	beq _0802AF36
	adds r0, r1, 0
	adds r0, 0x8B
	adds r0, r4
	adds r1, 0x70
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802AF36
	ldr r0, [sp, 0x4]
	adds r0, 0x1
	str r0, [sp, 0x4]
_0802AF36:
	movs r1, 0x28
	add r9, r1
	adds r6, 0x28
	adds r4, 0x1
	ldr r7, =gUnknown_02022CFC
	ldr r0, [r7]
	ldrb r0, [r0, 0x5]
	cmp r4, r0
	blt _0802AED0
_0802AF48:
	ldr r2, =gUnknown_02022CFC
	ldr r1, [r2]
	ldrb r0, [r1, 0x5]
	subs r0, 0x1
	ldr r3, [sp, 0x4]
	cmp r3, r0
	bne _0802AF5C
	adds r1, 0x49
	movs r0, 0x1
	strb r0, [r1]
_0802AF5C:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802AEA4

	thumb_func_start sub_802AF80
sub_802AF80: @ 802AF80
	push {r4,r5,lr}
	bl sub_802AEA4
	bl sub_802C43C
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0x48
	ldrb r0, [r0]
	cmp r0, 0
	bne _0802AFB2
	adds r0, r1, 0
	adds r0, 0x49
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802AFB2
	adds r0, r1, 0
	adds r0, 0x4C
	ldrb r0, [r0]
	bl sub_802AE50
	movs r0, 0x3
	bl sub_802AE14
_0802AFB2:
	ldr r4, =gUnknown_02022CFC
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0x48
	ldrb r5, [r0]
	cmp r5, 0x1
	bne _0802AFEE
	ldr r1, =gUnknown_082FB5F4
	adds r0, 0x28
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r1, r0, 0
	cmp r1, 0
	bne _0802AFEE
	ldr r0, [r4]
	adds r0, 0x48
	strb r1, [r0]
	ldr r1, [r4]
	ldrb r2, [r1, 0x6]
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	ldr r2, =0x000082fc
	adds r1, r2
	adds r1, r0
	str r5, [r1]
_0802AFEE:
	bl sub_802C1DC
	bl sub_802B008
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802AF80

	thumb_func_start sub_802B008
sub_802B008: @ 802B008
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	ldr r0, [r1, 0x2C]
	cmp r0, 0
	bne _0802B01E
	ldr r2, =0x000082e4
	adds r0, r1, r2
	adds r1, 0x70
	bl sub_802E138
_0802B01E:
	ldr r1, [r4]
	ldr r2, [r1, 0x30]
	ldr r0, =0x00001111
	cmp r2, r0
	beq _0802B030
	ldr r0, [r1, 0x2C]
	adds r0, 0x1
	ands r0, r2
	str r0, [r1, 0x2C]
_0802B030:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802B008

	thumb_func_start sub_802B044
sub_802B044: @ 802B044
	ldr r2, =gUnknown_02022CFC
	ldr r1, [r2]
	adds r1, 0x70
	movs r3, 0
	strb r0, [r1]
	ldr r0, [r2]
	strh r3, [r0, 0x8]
	strh r3, [r0, 0xA]
	adds r0, 0x48
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, [r2]
	ldrb r2, [r1, 0x6]
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	ldr r2, =0x000082fc
	adds r1, r2
	adds r1, r0
	str r3, [r1]
	bx lr
	.pool
	thumb_func_end sub_802B044

	thumb_func_start sub_802B078
sub_802B078: @ 802B078
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldr r2, =0x000082f4
	adds r1, r0, r2
	ldrh r1, [r1]
	mov r8, r1
	ldr r3, =0x000082e4
	adds r0, r3
	mov r1, sp
	bl sub_802E1BC
	cmp r0, 0
	beq _0802B128
	ldr r2, [r4]
	ldrb r0, [r2, 0x6]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r3, =0x000082fc
	adds r0, r2, r3
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0x1
	bne _0802B0C6
	mov r0, sp
	adds r1, r2, 0
	adds r1, 0x70
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802B0C6
	mov r0, sp
	ldrb r0, [r0]
	bl sub_802B044
_0802B0C6:
	ldr r3, =gUnknown_02022CFC
	ldr r2, [r3]
	ldr r0, [r2, 0x78]
	ldr r1, [sp, 0x8]
	cmp r0, r1
	beq _0802B108
	str r1, [r2, 0x78]
	movs r4, 0x1
	str r4, [r2, 0x5C]
	mov r0, sp
	ldrb r1, [r0, 0x1]
	adds r0, r2, 0
	adds r0, 0x71
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0x71
	ldrb r1, [r1]
	cmp r1, 0
	beq _0802B104
	adds r0, 0x4D
	strb r4, [r0]
	b _0802B108
	.pool
_0802B104:
	adds r0, 0x4D
	strb r1, [r0]
_0802B108:
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	mov r0, sp
	ldrh r0, [r0, 0x2]
	adds r2, r1, 0
	adds r2, 0x72
	strh r0, [r2]
	mov r0, sp
	ldrh r2, [r0, 0x4]
	adds r0, r1, 0
	adds r0, 0x74
	strh r2, [r0]
	ldr r0, =0x000082f6
	adds r1, r0
	mov r2, r8
	strh r2, [r1]
_0802B128:
	movs r4, 0x1
	ldr r2, =gUnknown_02022CFC
	ldr r0, [r2]
	ldrb r0, [r0, 0x5]
	cmp r4, r0
	bge _0802B176
	adds r7, r2, 0
	ldr r6, =0x0000830c
	movs r5, 0x28
_0802B13A:
	ldr r1, [r7]
	ldrb r3, [r1, 0x6]
	cmp r4, r3
	beq _0802B168
	adds r0, r1, r5
	ldr r3, =0x000082f4
	adds r0, r3
	ldrh r0, [r0]
	mov r8, r0
	adds r0, r1, r6
	adds r1, r4, 0
	str r2, [sp, 0xC]
	bl sub_802E2D0
	ldr r2, [sp, 0xC]
	cmp r0, 0
	beq _0802B168
	ldr r0, [r7]
	adds r0, r5
	ldr r1, =0x000082f6
	adds r0, r1
	mov r3, r8
	strh r3, [r0]
_0802B168:
	adds r6, 0x28
	adds r5, 0x28
	adds r4, 0x1
	ldr r0, [r2]
	ldrb r0, [r0, 0x5]
	cmp r4, r0
	blt _0802B13A
_0802B176:
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802B078

	thumb_func_start sub_802B194
sub_802B194: @ 802B194
	push {r4,lr}
	bl sub_802B078
	ldr r4, =gUnknown_02022CFC
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0x48
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802B1E0
	ldr r1, =gUnknown_082FB618
	adds r0, r2, 0
	adds r0, 0x70
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r1, r0, 0
	cmp r1, 0
	bne _0802B1E0
	ldr r0, [r4]
	adds r0, 0x48
	strb r1, [r0]
	ldr r1, [r4]
	ldrb r2, [r1, 0x6]
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	ldr r2, =0x000082fc
	adds r1, r2
	adds r1, r0
	movs r0, 0x1
	str r0, [r1]
	movs r0, 0x3
	bl sub_802AE14
_0802B1E0:
	bl sub_802C1DC
	bl sub_802B1FC
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802B194

	thumb_func_start sub_802B1FC
sub_802B1FC: @ 802B1FC
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r2, [r4]
	ldr r0, [r2, 0x2C]
	cmp r0, 0
	bne _0802B224
	ldrb r1, [r2, 0x6]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, =0x000082e4
	adds r0, r1
	adds r0, r2, r0
	adds r1, r2, 0
	adds r1, 0x70
	ldrb r1, [r1]
	adds r2, 0x42
	ldrh r2, [r2]
	bl sub_802E234
_0802B224:
	ldr r1, [r4]
	ldr r2, [r1, 0x30]
	ldr r0, =0x00001111
	cmp r2, r0
	beq _0802B236
	ldr r0, [r1, 0x2C]
	adds r0, 0x1
	ands r0, r2
	str r0, [r1, 0x2C]
_0802B236:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802B1FC

	thumb_func_start sub_802B248
sub_802B248: @ 802B248
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x8]
	cmp r0, 0
	beq _0802B260
	cmp r0, 0x1
	beq _0802B26E
	b _0802B294
	.pool
_0802B260:
	movs r0, 0x3
	bl sub_802AE14
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B26E:
	bl sub_802B7E0
	cmp r0, 0
	bne _0802B294
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0x4A
	ldrh r0, [r0]
	adds r2, r1, 0
	adds r2, 0x72
	strh r0, [r2]
	adds r1, 0x4C
	movs r0, 0x1
	strb r0, [r1]
	movs r0, 0
	b _0802B296
	.pool
_0802B294:
	movs r0, 0x1
_0802B296:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B248

	thumb_func_start sub_802B29C
sub_802B29C: @ 802B29C
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x8]
	cmp r0, 0
	beq _0802B2B4
	cmp r0, 0x1
	beq _0802B2CA
	movs r0, 0x1
	b _0802B2CE
	.pool
_0802B2B4:
	movs r0, 0
	bl sub_802AE14
	ldr r1, [r4]
	adds r0, r1, 0
	adds r0, 0x72
	ldrh r0, [r0]
	str r0, [r1, 0x24]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B2CA:
	bl sub_802B7E0
_0802B2CE:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B29C

	thumb_func_start sub_802B2D4
sub_802B2D4: @ 802B2D4
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	cmp r0, 0
	beq _0802B2EC
	cmp r0, 0x1
	beq _0802B300
	b _0802B314
	.pool
_0802B2EC:
	bl sub_802C0E8
	movs r0, 0x5
	bl sub_802AE14
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B314
_0802B300:
	adds r0, r1, 0
	adds r0, 0x49
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802B314
	adds r1, 0x4C
	movs r0, 0x2
	strb r0, [r1]
	movs r0, 0
	b _0802B316
_0802B314:
	movs r0, 0x1
_0802B316:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B2D4

	thumb_func_start sub_802B31C
sub_802B31C: @ 802B31C
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x8]
	cmp r0, 0
	beq _0802B334
	cmp r0, 0x1
	beq _0802B352
	b _0802B35E
	.pool
_0802B334:
	bl sub_802C0E8
	movs r0, 0
	bl sub_802AE14
	ldr r1, [r4]
	adds r0, r1, 0
	adds r0, 0x72
	ldrh r0, [r0]
	adds r2, r1, 0
	adds r2, 0x4A
	strh r0, [r2]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B352:
	bl sub_802C70C
	cmp r0, 0
	beq _0802B35E
	movs r0, 0
	b _0802B360
_0802B35E:
	movs r0, 0x1
_0802B360:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B31C

	thumb_func_start sub_802B368
sub_802B368: @ 802B368
	push {lr}
	bl sub_802B8CC
	cmp r0, 0
	bne _0802B390
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0x4A
	ldrh r0, [r0]
	adds r2, r1, 0
	adds r2, 0x72
	strh r0, [r2]
	adds r1, 0x4C
	movs r0, 0x1
	strb r0, [r1]
	b _0802B3AA
	.pool
_0802B390:
	bl sub_802C538
	cmp r0, 0
	beq _0802B39C
	movs r0, 0x1
	b _0802B3AC
_0802B39C:
	bl sub_802C0B8
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	adds r0, 0x4C
	movs r1, 0x3
	strb r1, [r0]
_0802B3AA:
	movs r0, 0
_0802B3AC:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802B368

	thumb_func_start sub_802B3B4
sub_802B3B4: @ 802B3B4
	push {lr}
	bl sub_802B8CC
	cmp r0, 0
	beq _0802B3CE
	bl sub_802C538
	cmp r0, 0
	beq _0802B3CA
	movs r0, 0x1
	b _0802B3D0
_0802B3CA:
	bl sub_802C0B8
_0802B3CE:
	movs r0, 0
_0802B3D0:
	pop {r1}
	bx r1
	thumb_func_end sub_802B3B4

	thumb_func_start sub_802B3D4
sub_802B3D4: @ 802B3D4
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x8]
	cmp r0, 0x1
	beq _0802B40C
	cmp r0, 0x1
	bgt _0802B3F0
	cmp r0, 0
	beq _0802B3F6
	b _0802B468
	.pool
_0802B3F0:
	cmp r0, 0x2
	beq _0802B460
	b _0802B468
_0802B3F6:
	bl sub_802C538
	bl sub_802C5DC
	cmp r0, 0
	beq _0802B468
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B468
_0802B40C:
	bl sub_802B964
	cmp r0, 0
	bne _0802B468
	bl sub_802C7BC
	cmp r0, 0
	beq _0802B42E
	bl sub_802C7E0
	ldr r1, [r4]
	adds r2, r1, 0
	adds r2, 0x72
	strh r0, [r2]
	adds r1, 0x4C
	movs r0, 0x7
	b _0802B454
_0802B42E:
	ldr r1, [r4]
	adds r0, r1, 0
	adds r0, 0x74
	ldrh r0, [r0]
	cmp r0, 0xC7
	bls _0802B448
	ldrh r0, [r1, 0xE]
	adds r2, r1, 0
	adds r2, 0x72
	strh r0, [r2]
	adds r1, 0x4C
	movs r0, 0x8
	b _0802B454
_0802B448:
	ldrh r0, [r1, 0xE]
	adds r2, r1, 0
	adds r2, 0x72
	strh r0, [r2]
	adds r1, 0x4C
	movs r0, 0x4
_0802B454:
	strb r0, [r1]
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B460:
	movs r0, 0
	b _0802B46A
	.pool
_0802B468:
	movs r0, 0x1
_0802B46A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B3D4

	thumb_func_start sub_802B470
sub_802B470: @ 802B470
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x8]
	cmp r0, 0x1
	beq _0802B4B0
	cmp r0, 0x1
	bgt _0802B48C
	cmp r0, 0
	beq _0802B492
	b _0802B4C4
	.pool
_0802B48C:
	cmp r0, 0x2
	beq _0802B4C0
	b _0802B4C4
_0802B492:
	bl sub_802C538
	cmp r0, 0
	bne _0802B49E
	bl sub_802C0B8
_0802B49E:
	bl sub_802C5DC
	cmp r0, 0
	beq _0802B4C4
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B4C4
_0802B4B0:
	bl sub_802B964
	cmp r0, 0
	bne _0802B4C4
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B4C0:
	movs r0, 0
	b _0802B4C6
_0802B4C4:
	movs r0, 0x1
_0802B4C6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B470

	thumb_func_start sub_802B4CC
sub_802B4CC: @ 802B4CC
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r1, [r0, 0x8]
	cmp r1, 0x1
	beq _0802B500
	cmp r1, 0x1
	bgt _0802B4E8
	cmp r1, 0
	beq _0802B4F2
	b _0802B560
	.pool
_0802B4E8:
	cmp r1, 0x2
	beq _0802B52C
	cmp r1, 0x3
	beq _0802B556
	b _0802B560
_0802B4F2:
	movs r0, 0x4
	bl sub_802AE14
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B500:
	bl sub_802BB84
	cmp r0, 0
	bne _0802B560
	ldr r4, =gUnknown_02022CFC
	ldr r2, [r4]
	ldr r0, [r2, 0x78]
	adds r1, r2, 0
	adds r1, 0x74
	ldrh r1, [r1]
	adds r2, 0x72
	ldrh r2, [r2]
	bl sub_802E354
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B560
	.pool
_0802B52C:
	adds r0, 0x49
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802B560
	bl sub_802C650
	cmp r0, 0
	beq _0802B544
	ldr r0, [r4]
	adds r0, 0x4C
	movs r1, 0x5
	b _0802B54A
_0802B544:
	ldr r0, [r4]
	adds r0, 0x4C
	movs r1, 0x6
_0802B54A:
	strb r1, [r0]
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B556:
	movs r0, 0
	b _0802B562
	.pool
_0802B560:
	movs r0, 0x1
_0802B562:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B4CC

	thumb_func_start sub_802B568
sub_802B568: @ 802B568
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x8]
	cmp r0, 0
	beq _0802B580
	cmp r0, 0x1
	beq _0802B58E
	b _0802B5C0
	.pool
_0802B580:
	movs r0, 0
	bl sub_802AE14
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B58E:
	bl sub_802BB84
	cmp r0, 0
	bne _0802B5C0
	ldr r4, =gUnknown_02022CFC
	ldr r2, [r4]
	ldr r0, [r2, 0x78]
	adds r1, r2, 0
	adds r1, 0x74
	ldrh r1, [r1]
	adds r2, 0x72
	ldrh r2, [r2]
	bl sub_802E354
	ldr r0, [r4]
	adds r1, r0, 0
	adds r1, 0x45
	ldrb r1, [r1]
	adds r0, 0x42
	strh r1, [r0]
	movs r0, 0
	b _0802B5C2
	.pool
_0802B5C0:
	movs r0, 0x1
_0802B5C2:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B568

	thumb_func_start sub_802B5C8
sub_802B5C8: @ 802B5C8
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	cmp r0, 0
	beq _0802B5E0
	cmp r0, 0x1
	beq _0802B5F2
	b _0802B61E
	.pool
_0802B5E0:
	bl sub_802BD30
	cmp r0, 0
	bne _0802B61E
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B61E
_0802B5F2:
	adds r0, r1, 0
	adds r0, 0x49
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802B61E
	adds r0, r1, 0
	bl sub_802AA94
	bl Random
	ldr r1, [r4]
	lsls r0, 16
	lsrs r0, 16
	str r0, [r1, 0x24]
	adds r3, r1, 0
	adds r3, 0x72
	movs r2, 0
	strh r0, [r3]
	adds r1, 0x4C
	strb r2, [r1]
	movs r0, 0
	b _0802B620
_0802B61E:
	movs r0, 0x1
_0802B620:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B5C8

	thumb_func_start sub_802B628
sub_802B628: @ 802B628
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x8]
	cmp r0, 0
	beq _0802B640
	cmp r0, 0x1
	beq _0802B656
	b _0802B65A
	.pool
_0802B640:
	bl sub_802BD30
	cmp r0, 0
	bne _0802B65A
	ldr r0, [r4]
	bl sub_802AA94
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0802B656:
	movs r0, 0
	b _0802B65C
_0802B65A:
	movs r0, 0x1
_0802B65C:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B628

	thumb_func_start sub_802B664
sub_802B664: @ 802B664
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	cmp r0, 0x1
	beq _0802B68C
	cmp r0, 0x1
	bgt _0802B680
	cmp r0, 0
	beq _0802B686
	b _0802B6B0
	.pool
_0802B680:
	cmp r0, 0x2
	beq _0802B69C
	b _0802B6B0
_0802B686:
	movs r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B6B0
_0802B68C:
	movs r0, 0
	bl sub_802AE14
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B6B0
_0802B69C:
	bl sub_802BC60
	cmp r0, 0
	bne _0802B6B0
	ldr r0, [r4]
	ldr r0, [r0]
	bl SetMainCallback2
	bl sub_802AA48
_0802B6B0:
	movs r0, 0x1
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B664

	thumb_func_start sub_802B6B8
sub_802B6B8: @ 802B6B8
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x8]
	cmp r0, 0
	beq _0802B6D0
	cmp r0, 0x1
	beq _0802B6E0
	b _0802B6FC
	.pool
_0802B6D0:
	movs r0, 0x4
	bl sub_802AE14
	ldr r1, [r4]
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B6FC
_0802B6E0:
	bl sub_802BA58
	cmp r0, 0
	bne _0802B6FC
	ldr r0, [r4]
	ldrh r1, [r0, 0xE]
	adds r2, r0, 0
	adds r2, 0x72
	strh r1, [r2]
	adds r0, 0x4C
	movs r1, 0x8
	strb r1, [r0]
	movs r0, 0
	b _0802B6FE
_0802B6FC:
	movs r0, 0x1
_0802B6FE:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B6B8

	thumb_func_start sub_802B704
sub_802B704: @ 802B704
	push {lr}
	movs r0, 0
	bl sub_802AE14
	bl sub_802BA58
	cmp r0, 0
	beq _0802B718
	movs r0, 0x1
	b _0802B71A
_0802B718:
	movs r0, 0
_0802B71A:
	pop {r1}
	bx r1
	thumb_func_end sub_802B704

	thumb_func_start sub_802B720
sub_802B720: @ 802B720
	push {r4,lr}
	ldr r1, =gUnknown_02022CFC
	ldr r0, [r1]
	ldrh r0, [r0, 0x8]
	adds r4, r1, 0
	cmp r0, 0x4
	bhi _0802B7D8
	lsls r0, 2
	ldr r1, =_0802B740
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802B740:
	.4byte _0802B754
	.4byte _0802B770
	.4byte _0802B780
	.4byte _0802B798
	.4byte _0802B7BC
_0802B754:
	ldr r2, [r4]
	ldr r0, [r2, 0x78]
	adds r1, r2, 0
	adds r1, 0x74
	ldrh r1, [r1]
	adds r2, 0x72
	ldrh r2, [r2]
	bl sub_802E354
	movs r0, 0x5
	bl sub_802D0C8
	ldr r1, [r4]
	b _0802B7AC
_0802B770:
	bl sub_802D0F0
	cmp r0, 0
	bne _0802B7D8
	movs r0, 0
	bl sub_802AE14
	b _0802B7A8
_0802B780:
	bl sub_802C70C
	cmp r0, 0
	beq _0802B7D8
	ldr r0, =sub_8153688
	movs r1, 0x6
	bl CreateTask
	b _0802B7A8
	.pool
_0802B798:
	ldr r0, =sub_8153688
	bl FuncIsActiveTask
	lsls r0, 24
	cmp r0, 0
	bne _0802B7D8
	bl sub_802DA14
_0802B7A8:
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
_0802B7AC:
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _0802B7D8
	.pool
_0802B7BC:
	bl sub_802DA44
	cmp r0, 0
	bne _0802B7D8
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	adds r0, 0x4C
	movs r1, 0x4
	strb r1, [r0]
	movs r0, 0
	b _0802B7DA
	.pool
_0802B7D8:
	movs r0, 0x1
_0802B7DA:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802B720

	thumb_func_start sub_802B7E0
sub_802B7E0: @ 802B7E0
	push {r4,r5,lr}
	ldr r1, =gUnknown_02022CFC
	ldr r0, [r1]
	ldrh r0, [r0, 0xA]
	adds r4, r1, 0
	cmp r0, 0x7
	bhi _0802B8C4
	lsls r0, 2
	ldr r1, =_0802B800
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802B800:
	.4byte _0802B820
	.4byte _0802B82C
	.4byte _0802B84C
	.4byte _0802B866
	.4byte _0802B878
	.4byte _0802B880
	.4byte _0802B8A0
	.4byte _0802B8BA
_0802B820:
	movs r0, 0x2
	bl sub_802D0C8
	bl sub_802DDE0
	b _0802B890
_0802B82C:
	bl sub_802D0F0
	adds r5, r0, 0
	cmp r5, 0
	bne _0802B8C4
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrb r0, [r0, 0x6]
	bl sub_802DDF4
	ldr r1, [r4]
	strh r5, [r1, 0x3C]
	b _0802B894
	.pool
_0802B84C:
	ldr r1, [r4]
	ldrh r0, [r1, 0x3C]
	adds r0, 0x1
	strh r0, [r1, 0x3C]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x78
	bls _0802B8C4
	movs r0, 0x3
	bl sub_802D0C8
	ldr r1, [r4]
	b _0802B894
_0802B866:
	bl sub_802D0F0
	cmp r0, 0x1
	beq _0802B8C4
	bl sub_802DE08
	cmp r0, 0x1
	beq _0802B8C4
	b _0802B890
_0802B878:
	movs r0, 0x9
	bl sub_802D0C8
	b _0802B890
_0802B880:
	bl sub_802D0F0
	cmp r0, 0
	bne _0802B8C4
	bl sub_802C260
	bl sub_802D764
_0802B890:
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
_0802B894:
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	b _0802B8C4
	.pool
_0802B8A0:
	bl sub_802D788
	cmp r0, 0
	bne _0802B8C4
	bl sub_802C270
	bl sub_802BEA0
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
_0802B8BA:
	movs r0, 0
	b _0802B8C6
	.pool
_0802B8C4:
	movs r0, 0x1
_0802B8C6:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_802B7E0

	thumb_func_start sub_802B8CC
sub_802B8CC: @ 802B8CC
	push {r4,r5,lr}
	bl sub_802BEE4
	ldr r5, =gUnknown_02022CFC
	ldr r1, [r5]
	ldrh r4, [r1, 0x36]
	cmp r4, 0
	beq _0802B8E8
	movs r0, 0
	strh r0, [r1, 0x36]
	b _0802B95C
	.pool
_0802B8E8:
	ldrh r0, [r1, 0xA]
	cmp r0, 0x1
	beq _0802B914
	cmp r0, 0x1
	bgt _0802B8F8
	cmp r0, 0
	beq _0802B902
	b _0802B95A
_0802B8F8:
	cmp r0, 0x2
	beq _0802B938
	cmp r0, 0x3
	beq _0802B94C
	b _0802B95A
_0802B902:
	movs r0, 0
	bl sub_802C130
	cmp r0, 0
	beq _0802B95A
	ldr r1, [r5]
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
_0802B914:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0802B95A
	bl sub_802C164
	movs r0, 0x3
	bl sub_802AE14
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	b _0802B944
	.pool
_0802B938:
	movs r0, 0x1
	bl sub_802C130
	cmp r0, 0x1
	bne _0802B95A
	ldr r1, [r5]
_0802B944:
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	b _0802B95A
_0802B94C:
	movs r0, 0
	bl sub_802C130
	cmp r0, 0x1
	bne _0802B95A
	ldr r0, [r5]
	strh r4, [r0, 0xA]
_0802B95A:
	movs r0, 0x1
_0802B95C:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_802B8CC

	thumb_func_start sub_802B964
sub_802B964: @ 802B964
	push {r4-r6,lr}
	ldr r1, =gUnknown_02022CFC
	ldr r0, [r1]
	ldrh r0, [r0, 0xA]
	adds r5, r1, 0
	cmp r0, 0x4
	bhi _0802BA50
	lsls r0, 2
	ldr r1, =_0802B984
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802B984:
	.4byte _0802B998
	.4byte _0802B9BC
	.4byte _0802BA00
	.4byte _0802BA24
	.4byte _0802BA46
_0802B998:
	movs r4, 0
	ldr r0, [r5]
	ldrb r0, [r0, 0x5]
	cmp r4, r0
	bge _0802B9B8
	adds r6, r5, 0
_0802B9A4:
	adds r0, r4, 0
	bl sub_802DDB8
	cmp r0, 0x1
	beq _0802BA50
	adds r4, 0x1
	ldr r0, [r6]
	ldrb r0, [r0, 0x5]
	cmp r4, r0
	blt _0802B9A4
_0802B9B8:
	ldr r1, [r5]
	b _0802BA1C
_0802B9BC:
	movs r4, 0
	ldr r0, [r5]
	ldrb r0, [r0, 0x5]
	cmp r4, r0
	bge _0802B9EC
	adds r6, r5, 0
	movs r5, 0
_0802B9CA:
	ldr r0, [r6]
	adds r0, r5
	ldr r1, =0x000082f4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0x2
	bne _0802B9E0
	lsls r0, r4, 24
	lsrs r0, 24
	bl sub_802DDA0
_0802B9E0:
	adds r5, 0x28
	adds r4, 0x1
	ldr r0, [r6]
	ldrb r0, [r0, 0x5]
	cmp r4, r0
	blt _0802B9CA
_0802B9EC:
	movs r0, 0x1
	bl sub_802D0C8
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	b _0802BA18
	.pool
_0802BA00:
	ldr r1, [r5]
	ldrh r0, [r1, 0x3C]
	adds r0, 0x1
	strh r0, [r1, 0x3C]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x64
	bls _0802BA50
	movs r0, 0x3
	bl sub_802D0C8
	ldr r1, [r5]
_0802BA18:
	movs r0, 0
	strh r0, [r1, 0x3C]
_0802BA1C:
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	b _0802BA50
_0802BA24:
	bl sub_802D0F0
	adds r5, r0, 0
	cmp r5, 0
	bne _0802BA50
	bl sub_802DDCC
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	adds r0, 0x71
	strb r5, [r0]
	bl sub_802C114
	ldr r1, [r4]
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
_0802BA46:
	movs r0, 0
	b _0802BA52
	.pool
_0802BA50:
	movs r0, 0x1
_0802BA52:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_802B964

	thumb_func_start sub_802BA58
sub_802BA58: @ 802BA58
	push {r4,lr}
	ldr r1, =gUnknown_02022CFC
	ldr r0, [r1]
	ldrh r0, [r0, 0xA]
	adds r4, r1, 0
	cmp r0, 0x6
	bls _0802BA68
	b _0802BB7C
_0802BA68:
	lsls r0, 2
	ldr r1, =_0802BA7C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802BA7C:
	.4byte _0802BA98
	.4byte _0802BAB8
	.4byte _0802BAD0
	.4byte _0802BB00
	.4byte _0802BAB8
	.4byte _0802BAD0
	.4byte _0802BB70
_0802BA98:
	ldr r2, [r4]
	adds r0, r2, 0
	adds r0, 0x72
	ldrh r0, [r0]
	adds r1, r2, 0
	adds r1, 0x3E
	adds r2, 0x40
	bl sub_802C808
	ldr r1, [r4]
	ldrh r0, [r1, 0x3E]
	adds r1, 0x40
	ldrh r1, [r1]
	bl sub_802D7E8
	b _0802BAF0
_0802BAB8:
	bl sub_802D974
	adds r2, r0, 0
	cmp r2, 0
	bne _0802BB7C
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	strh r2, [r1, 0x3C]
	b _0802BAF2
	.pool
_0802BAD0:
	ldr r1, [r4]
	ldrh r0, [r1, 0x3C]
	adds r2, r0, 0x1
	strh r2, [r1, 0x3C]
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	bne _0802BAEC
	lsls r0, r2, 16
	lsrs r0, 16
	cmp r0, 0xB4
	bls _0802BB7C
_0802BAEC:
	bl sub_802DA14
_0802BAF0:
	ldr r1, [r4]
_0802BAF2:
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	b _0802BB7C
	.pool
_0802BB00:
	bl sub_802DA44
	cmp r0, 0
	bne _0802BB7C
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	ldrh r0, [r1, 0x3E]
	adds r1, 0x40
	ldrh r1, [r1]
	bl sub_802C880
	ldr r1, [r4]
	adds r2, r1, 0
	adds r2, 0x40
	strh r0, [r2]
	lsls r0, 16
	cmp r0, 0
	beq _0802BB58
	ldrh r0, [r1, 0x3E]
	ldrh r1, [r2]
	bl AddBagItem
	lsls r0, 24
	cmp r0, 0
	beq _0802BB58
	ldr r0, [r4]
	ldrh r0, [r0, 0x3E]
	movs r1, 0x1
	bl CheckBagHasSpace
	lsls r0, 24
	cmp r0, 0
	bne _0802BB50
	ldr r0, [r4]
	ldrh r0, [r0, 0x3E]
	bl sub_802D884
	b _0802BB62
	.pool
_0802BB50:
	ldr r1, [r4]
	movs r0, 0x6
	strh r0, [r1, 0xA]
	b _0802BB7C
_0802BB58:
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0x3E]
	bl sub_802D8FC
_0802BB62:
	ldr r1, [r4]
	movs r0, 0x4
	strh r0, [r1, 0xA]
	b _0802BB7C
	.pool
_0802BB70:
	bl sub_802DA44
	cmp r0, 0
	bne _0802BB7C
	movs r0, 0
	b _0802BB7E
_0802BB7C:
	movs r0, 0x1
_0802BB7E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802BA58

	thumb_func_start sub_802BB84
sub_802BB84: @ 802BB84
	push {r4,lr}
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldrh r0, [r0, 0xA]
	cmp r0, 0x6
	bhi _0802BC58
	lsls r0, 2
	ldr r1, =_0802BBA4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802BBA4:
	.4byte _0802BBC0
	.4byte _0802BBC4
	.4byte _0802BBCE
	.4byte _0802BC1C
	.4byte _0802BC26
	.4byte _0802BC3C
	.4byte _0802BC4E
_0802BBC0:
	movs r0, 0x4
	b _0802BC28
_0802BBC4:
	bl sub_802D0F0
	cmp r0, 0
	bne _0802BC58
	b _0802BC2C
_0802BBCE:
	bl sub_802DA8C
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	beq _0802BC04
	cmp r1, 0
	bgt _0802BBE8
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _0802BBEC
	b _0802BC58
_0802BBE8:
	cmp r1, 0x1
	bne _0802BC58
_0802BBEC:
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	adds r0, 0x45
	movs r1, 0x1
	strb r1, [r0]
	movs r0, 0x6
	bl sub_802D0C8
	ldr r1, [r4]
	b _0802BC30
	.pool
_0802BC04:
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	adds r0, 0x45
	movs r1, 0x2
	strb r1, [r0]
	movs r0, 0x6
	bl sub_802D0C8
	ldr r1, [r4]
	b _0802BC30
	.pool
_0802BC1C:
	bl sub_802D0F0
	cmp r0, 0
	bne _0802BC58
	b _0802BC2C
_0802BC26:
	movs r0, 0x8
_0802BC28:
	bl sub_802D0C8
_0802BC2C:
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
_0802BC30:
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	b _0802BC58
	.pool
_0802BC3C:
	bl sub_802D0F0
	cmp r0, 0
	bne _0802BC58
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
_0802BC4E:
	movs r0, 0
	b _0802BC5A
	.pool
_0802BC58:
	movs r0, 0x1
_0802BC5A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802BB84

	thumb_func_start sub_802BC60
sub_802BC60: @ 802BC60
	push {r4,lr}
	sub sp, 0x4
	ldr r1, =gUnknown_02022CFC
	ldr r0, [r1]
	ldrh r0, [r0, 0xA]
	adds r4, r1, 0
	cmp r0, 0x5
	bhi _0802BD24
	lsls r0, 2
	ldr r1, =_0802BC84
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802BC84:
	.4byte _0802BC9C
	.4byte _0802BCA2
	.4byte _0802BCB2
	.4byte _0802BCC8
	.4byte _0802BCEE
	.4byte _0802BD14
_0802BC9C:
	bl sub_802DA14
	b _0802BCFE
_0802BCA2:
	bl sub_802DA44
	cmp r0, 0
	bne _0802BD24
	movs r0, 0x7
	bl sub_802D0C8
	b _0802BCFE
_0802BCB2:
	bl sub_802D0F0
	adds r2, r0, 0
	cmp r2, 0
	bne _0802BD24
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	strh r2, [r1, 0x3C]
	b _0802BD02
	.pool
_0802BCC8:
	ldr r1, [r4]
	ldrh r0, [r1, 0x3C]
	adds r0, 0x1
	strh r0, [r1, 0x3C]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x78
	bls _0802BD24
	movs r1, 0x1
	negs r1, r1
	movs r0, 0
	str r0, [sp]
	adds r0, r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, [r4]
	b _0802BD02
_0802BCEE:
	ldr r0, =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0802BD24
	bl sub_800AC34
_0802BCFE:
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
_0802BD02:
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	b _0802BD24
	.pool
_0802BD14:
	ldr r0, =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	bne _0802BD24
	movs r0, 0
	b _0802BD26
	.pool
_0802BD24:
	movs r0, 0x1
_0802BD26:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802BC60

	thumb_func_start sub_802BD30
sub_802BD30: @ 802BD30
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldrh r0, [r0, 0xA]
	cmp r0, 0x1
	beq _0802BD66
	cmp r0, 0x1
	bgt _0802BD4C
	cmp r0, 0
	beq _0802BD52
	b _0802BD7A
	.pool
_0802BD4C:
	cmp r0, 0x2
	beq _0802BD76
	b _0802BD7A
_0802BD52:
	bl sub_802DA14
	movs r0, 0
	bl sub_802DD64
	ldr r1, [r4]
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
	b _0802BD7A
_0802BD66:
	bl sub_802DA44
	cmp r0, 0
	bne _0802BD7A
	ldr r1, [r4]
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
_0802BD76:
	movs r0, 0
	b _0802BD7C
_0802BD7A:
	movs r0, 0x1
_0802BD7C:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802BD30

	thumb_func_start sub_802BD84
sub_802BD84: @ 802BD84
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r0, 2
	add r0, r10
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r6, r0, r1
	mov r0, r10
	movs r1, 0xE
	bl GetWordTaskArg
	mov r8, r0
	movs r1, 0
	ldrsh r0, [r6, r1]
	cmp r0, 0
	beq _0802BDC8
	cmp r0, 0x1
	beq _0802BDDC
	b _0802BE48
	.pool
_0802BDBC:
	bl sub_802AB20
	mov r0, r10
	bl DestroyTask
	b _0802BE48
_0802BDC8:
	movs r1, 0
	adds r0, r6, 0
	adds r0, 0x8
_0802BDCE:
	strh r1, [r0, 0x4]
	subs r0, 0x2
	cmp r0, r6
	bge _0802BDCE
	ldrh r0, [r6]
	adds r0, 0x1
	strh r0, [r6]
_0802BDDC:
	mov r3, r8
	ldrb r1, [r3, 0x6]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	ldr r4, =0x000082a8
	adds r0, r4
	add r0, r8
	bl sub_802E0AC
	movs r2, 0
	adds r5, r6, 0x4
	mov r9, r2
	movs r7, 0x83
	lsls r7, 8
	add r7, r8
	add r4, r8
_0802BDFE:
	movs r1, 0
	ldrsh r0, [r5, r1]
	cmp r0, 0
	bne _0802BE38
	adds r0, r2, 0
	adds r1, r4, 0
	str r2, [sp]
	bl sub_802E0D0
	ldr r2, [sp]
	cmp r0, 0
	beq _0802BE38
	ldr r1, =gLinkPlayers + 8
	add r1, r9
	adds r0, r7, 0
	bl StringCopy
	movs r0, 0x1
	strh r0, [r5]
	ldrh r0, [r6, 0x2]
	adds r0, 0x1
	strh r0, [r6, 0x2]
	movs r3, 0x2
	ldrsh r0, [r6, r3]
	ldr r2, [sp]
	mov r1, r8
	ldrb r1, [r1, 0x5]
	cmp r0, r1
	beq _0802BDBC
_0802BE38:
	adds r5, 0x2
	movs r3, 0x1C
	add r9, r3
	adds r7, 0x28
	adds r4, 0xC
	adds r2, 0x1
	cmp r2, 0x4
	ble _0802BDFE
_0802BE48:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802BD84

	thumb_func_start sub_802BE60
sub_802BE60: @ 802BE60
	push {lr}
	lsls r1, 24
	lsrs r1, 24
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r1, =gUnknown_02022CFC
	ldr r2, [r1]
	movs r1, 0xE
	bl SetWordTaskArg
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802BE60

	thumb_func_start sub_802BE80
sub_802BE80: @ 802BE80
	ldr r0, =gUnknown_02022CFC
	ldr r2, [r0]
	adds r0, r2, 0
	adds r0, 0x4A
	movs r1, 0
	strh r1, [r0]
	movs r0, 0x6
	str r0, [r2, 0x14]
	strh r1, [r2, 0x34]
	str r1, [r2, 0x1C]
	strh r1, [r2, 0x36]
	str r1, [r2, 0x10]
	bx lr
	.pool
	thumb_func_end sub_802BE80

	thumb_func_start sub_802BEA0
sub_802BEA0: @ 802BEA0
	push {r4,lr}
	ldr r3, =gUnknown_02022CFC
	ldr r0, [r3]
	adds r1, r0, 0
	adds r1, 0x4A
	movs r4, 0
	movs r2, 0
	strh r2, [r1]
	ldr r1, =0x000006ff
	strh r1, [r0, 0x34]
	movs r1, 0x7
	str r1, [r0, 0x14]
	strh r2, [r0, 0x36]
	str r2, [r0, 0x10]
	adds r0, 0x51
	strb r4, [r0]
	ldr r0, [r3]
	adds r0, 0x50
	strb r4, [r0]
	ldr r0, [r3]
	str r2, [r0, 0x20]
	adds r1, r0, 0
	adds r1, 0x4E
	strh r2, [r1]
	str r2, [r0, 0x6C]
	bl sub_802BF7C
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802BEA0

	thumb_func_start sub_802BEE4
sub_802BEE4: @ 802BEE4
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	adds r0, r1, 0
	adds r0, 0x46
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802BF34
	adds r1, 0x4A
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	bl sub_802BF48
	ldr r3, [r4]
	ldrh r1, [r3, 0x34]
	adds r2, r1, r0
	strh r2, [r3, 0x34]
	lsls r1, r2, 16
	ldr r0, =0x09fe0000
	cmp r1, r0
	bls _0802BF16
	ldr r1, =0xfffff601
	adds r0, r2, r1
	strh r0, [r3, 0x34]
_0802BF16:
	ldr r1, [r4]
	ldr r2, [r1, 0x14]
	str r2, [r1, 0x18]
	ldrh r0, [r1, 0x34]
	lsrs r0, 8
	str r0, [r1, 0x14]
	cmp r0, 0x6
	bls _0802BF34
	cmp r2, 0x6
	bhi _0802BF34
	ldrh r0, [r1, 0x36]
	adds r0, 0x1
	strh r0, [r1, 0x36]
	bl sub_802BF7C
_0802BF34:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802BEE4

	thumb_func_start sub_802BF48
sub_802BF48: @ 802BF48
	push {lr}
	ldr r0, =gUnknown_02022CFC
	ldr r2, [r0]
	ldr r0, [r2, 0x10]
	cmp r0, 0
	beq _0802BF5C
	movs r0, 0
	b _0802BF72
	.pool
_0802BF5C:
	ldr r3, [r2, 0x1C]
	ldrh r1, [r2, 0x34]
	ldr r0, =0x000005ff
	cmp r1, r0
	bhi _0802BF70
	ldr r0, [r2, 0x20]
	adds r0, 0x50
	str r0, [r2, 0x20]
	lsrs r0, 8
	adds r3, r0
_0802BF70:
	adds r0, r3, 0
_0802BF72:
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802BF48

	thumb_func_start sub_802BF7C
sub_802BF7C: @ 802BF7C
	push {r4,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r3, [r4]
	movs r0, 0
	str r0, [r3, 0x20]
	adds r1, r3, 0
	adds r1, 0x4E
	ldrh r0, [r1]
	cmp r0, 0
	beq _0802BFC0
	subs r0, 0x1
	strh r0, [r1]
	ldr r0, [r3, 0x6C]
	cmp r0, 0
	beq _0802C08A
	bl sub_802C098
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0
	beq _0802BFB0
	ldr r1, [r4]
	b _0802C086
	.pool
_0802BFB0:
	ldr r1, [r4]
	ldr r0, [r1, 0x28]
	cmp r0, 0x36
	bls _0802BFBC
	movs r0, 0x1E
	b _0802C088
_0802BFBC:
	movs r0, 0x52
	b _0802C088
_0802BFC0:
	adds r2, r3, 0
	adds r2, 0x50
	ldrb r1, [r2]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	bne _0802C014
	ldr r0, =gUnknown_082FB63C
	ldrb r1, [r2]
	lsls r1, 1
	adds r1, r0
	adds r0, r3, 0
	adds r0, 0x51
	ldrb r2, [r0]
	lsls r0, r2, 3
	subs r0, r2
	ldrh r1, [r1]
	adds r0, r1
	str r0, [r3, 0x28]
	bl sub_802C098
	ldr r2, [r4]
	ldr r3, =gUnknown_082FB64C
	movs r1, 0x3
	ands r1, r0
	lsls r1, 1
	adds r1, r3
	ldrh r0, [r1]
	adds r0, 0x2
	adds r1, r2, 0
	adds r1, 0x4E
	strh r0, [r1]
	adds r2, 0x50
	ldrb r0, [r2]
	adds r0, 0x1
	strb r0, [r2]
	b _0802C082
	.pool
_0802C014:
	lsls r0, r1, 24
	lsrs r0, 24
	cmp r0, 0x8
	bne _0802C030
	adds r1, r3, 0
	adds r1, 0x51
	ldrb r0, [r1]
	cmp r0, 0x2
	bhi _0802C02C
	adds r0, 0x1
	strb r0, [r1]
	b _0802C030
_0802C02C:
	movs r0, 0x1
	str r0, [r3, 0x6C]
_0802C030:
	ldr r2, =gUnknown_082FB63C
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	mov r12, r0
	mov r3, r12
	adds r3, 0x50
	ldrb r0, [r3]
	movs r1, 0xF
	subs r1, r0
	lsls r1, 1
	adds r1, r2
	mov r0, r12
	adds r0, 0x51
	ldrb r2, [r0]
	lsls r0, r2, 3
	subs r0, r2
	ldrh r1, [r1]
	adds r0, r1
	mov r1, r12
	str r0, [r1, 0x28]
	ldrb r0, [r3]
	adds r0, 0x1
	strb r0, [r3]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xF
	bls _0802C082
	bl sub_802C098
	movs r1, 0x3
	ands r1, r0
	cmp r1, 0
	bne _0802C07A
	ldr r1, [r4]
	ldr r0, [r1, 0x28]
	subs r0, 0x5
	str r0, [r1, 0x28]
_0802C07A:
	ldr r0, [r4]
	adds r0, 0x50
	movs r1, 0
	strb r1, [r0]
_0802C082:
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
_0802C086:
	ldr r0, [r1, 0x28]
_0802C088:
	str r0, [r1, 0x1C]
_0802C08A:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802BF7C

	thumb_func_start sub_802C098
sub_802C098: @ 802C098
	ldr r0, =gUnknown_02022CFC
	ldr r2, [r0]
	ldr r1, [r2, 0x24]
	ldr r0, =0x41c64e6d
	muls r0, r1
	ldr r1, =0x00006073
	adds r0, r1
	str r0, [r2, 0x24]
	lsrs r0, 16
	bx lr
	.pool
	thumb_func_end sub_802C098

	thumb_func_start sub_802C0B8
sub_802C0B8: @ 802C0B8
	push {lr}
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	movs r0, 0x1
	str r0, [r1, 0x10]
	movs r0, 0x6
	str r0, [r1, 0x14]
	ldr r0, =0x000005ff
	strh r0, [r1, 0x34]
	bl sub_802C270
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C0B8

	thumb_func_start sub_802C0DC
sub_802C0DC: @ 802C0DC
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldr r0, [r0, 0x10]
	bx lr
	.pool
	thumb_func_end sub_802C0DC

	thumb_func_start sub_802C0E8
sub_802C0E8: @ 802C0E8
	push {r4,r5,lr}
	ldr r5, =gUnknown_02022CFC
	ldr r4, =0x000082f8
	movs r3, 0
	movs r2, 0
	movs r1, 0x4
_0802C0F4:
	ldr r0, [r5]
	adds r0, r4
	adds r0, r2
	str r3, [r0]
	adds r2, 0x28
	subs r1, 0x1
	cmp r1, 0
	bge _0802C0F4
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C0E8

	thumb_func_start sub_802C114
sub_802C114: @ 802C114
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldr r1, =0x000083ac
	adds r0, r1
	ldr r1, [r0]
	movs r2, 0
	strh r2, [r1, 0x10]
	ldr r0, [r0]
	strh r2, [r0, 0x12]
	bx lr
	.pool
	thumb_func_end sub_802C114

	thumb_func_start sub_802C130
sub_802C130: @ 802C130
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r1, =gUnknown_02022CFC
	ldr r2, [r1]
	ldrb r3, [r2, 0x6]
	lsls r1, r3, 2
	adds r1, r3
	lsls r1, 3
	adds r2, r1
	ldr r1, =0x000082f4
	adds r2, r1
	ldrh r1, [r2]
	cmp r1, r0
	beq _0802C15C
	movs r0, 0
	b _0802C15E
	.pool
_0802C15C:
	movs r0, 0x1
_0802C15E:
	pop {r1}
	bx r1
	thumb_func_end sub_802C130

	thumb_func_start sub_802C164
sub_802C164: @ 802C164
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldr r1, =0x000083ac
	adds r2, r0, r1
	ldr r1, [r2]
	adds r0, 0x4A
	ldrh r0, [r0]
	strh r0, [r1, 0xE]
	ldr r1, [r2]
	ldrh r0, [r1, 0x10]
	strh r0, [r1, 0x12]
	ldr r1, [r2]
	movs r0, 0x1
	strh r0, [r1, 0x10]
	bx lr
	.pool
	thumb_func_end sub_802C164

	thumb_func_start sub_802C18C
sub_802C18C: @ 802C18C
	push {r4,lr}
	ldr r0, =gUnknown_02022CFC
	ldr r2, [r0]
	ldr r0, =0x000083ac
	adds r3, r2, r0
	ldr r1, [r3]
	ldrh r0, [r1, 0x10]
	strh r0, [r1, 0x12]
	ldr r0, [r3]
	movs r4, 0x2
	strh r4, [r0, 0x10]
	ldr r1, [r3]
	adds r2, 0x4A
	ldrh r0, [r2]
	strh r0, [r1, 0xE]
	ldr r0, [r3]
	str r4, [r0, 0x14]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C18C

	thumb_func_start sub_802C1BC
sub_802C1BC: @ 802C1BC
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldr r1, =0x000083ac
	adds r0, r1
	ldr r1, [r0]
	ldrh r2, [r1, 0x10]
	movs r3, 0
	strh r2, [r1, 0x12]
	ldr r0, [r0]
	strh r3, [r0, 0x10]
	bx lr
	.pool
	thumb_func_end sub_802C1BC

	thumb_func_start sub_802C1DC
sub_802C1DC: @ 802C1DC
	push {r4,r5,lr}
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	ldr r0, [r1, 0x5C]
	cmp r0, 0
	beq _0802C21C
	ldr r0, [r1, 0x78]
	bl sub_802DD64
	ldr r1, [r4]
	movs r5, 0
	str r5, [r1, 0x5C]
	adds r0, r1, 0
	adds r0, 0x4D
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802C21C
	adds r0, r1, 0
	adds r0, 0x71
	ldrb r0, [r0]
	bl sub_802DCCC
	ldr r1, =gUnknown_082FB654
	subs r0, 0x2
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	bl PlaySE
	ldr r0, [r4]
	adds r0, 0x4D
	strb r5, [r0]
_0802C21C:
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	adds r0, 0x74
	ldrh r0, [r0]
	bl sub_802DD74
	bl sub_802C280
	bl sub_802C240
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C1DC

	thumb_func_start sub_802C240
sub_802C240: @ 802C240
	push {lr}
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0x46
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802C256
	ldr r0, [r1, 0x14]
	bl sub_802DC9C
_0802C256:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C240

	thumb_func_start sub_802C260
sub_802C260: @ 802C260
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	adds r0, 0x46
	movs r1, 0
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_802C260

	thumb_func_start sub_802C270
sub_802C270: @ 802C270
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	adds r0, 0x46
	movs r1, 0x1
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_802C270

	thumb_func_start sub_802C280
sub_802C280: @ 802C280
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	movs r6, 0
	ldr r2, =gUnknown_02022CFC
	ldr r0, [r2]
	ldrb r0, [r0, 0x5]
	mov r9, r0
	movs r5, 0
	cmp r6, r9
	bge _0802C360
	mov r10, r2
	mov r8, r5
	movs r7, 0
_0802C2A2:
	mov r0, r10
	ldr r3, [r0]
	adds r1, r3, r7
	ldr r2, =0x000082f4
	adds r0, r1, r2
	ldrh r2, [r0]
	cmp r2, 0x1
	beq _0802C2D4
	cmp r2, 0x1
	bgt _0802C2C4
	cmp r2, 0
	beq _0802C2CA
	b _0802C354
	.pool
_0802C2C4:
	cmp r2, 0x2
	beq _0802C338
	b _0802C354
_0802C2CA:
	adds r0, r5, 0
	movs r1, 0
	bl sub_802DC80
	b _0802C354
_0802C2D4:
	ldr r0, =0x000082f6
	adds r4, r1, r0
	ldrh r0, [r4]
	cmp r0, 0x1
	bne _0802C2F6
	ldr r0, =0x000082f2
	adds r0, r1
	adds r1, r3, 0
	adds r1, 0x9A
	add r1, r8
	str r1, [sp]
	ldrh r1, [r0]
	mov r12, r1
	ldr r0, [sp]
	ldrh r0, [r0]
	cmp r12, r0
	beq _0802C31E
_0802C2F6:
	ldrb r3, [r3, 0x6]
	cmp r5, r3
	bne _0802C2FE
	strh r2, [r4]
_0802C2FE:
	orrs r6, r2
	mov r1, r10
	ldr r2, [r1]
	ldr r1, =0x000082e8
	adds r0, r2, r1
	adds r0, r7
	ldr r1, =0x7fffffff
	str r1, [r0]
	adds r1, r2, 0
	adds r1, 0x9A
	add r1, r8
	adds r2, r7
	ldr r0, =0x000082f2
	adds r2, r0
	ldrh r0, [r2]
	strh r0, [r1]
_0802C31E:
	adds r0, r5, 0
	bl sub_802C398
	b _0802C354
	.pool
_0802C338:
	ldr r0, =0x000082f6
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0x2
	beq _0802C354
	ldrb r3, [r3, 0x6]
	cmp r5, r3
	bne _0802C34A
	strh r2, [r1]
_0802C34A:
	orrs r6, r2
	lsls r0, r5, 24
	lsrs r0, 24
	bl sub_802DD88
_0802C354:
	movs r1, 0x2
	add r8, r1
	adds r7, 0x28
	adds r5, 0x1
	cmp r5, r9
	blt _0802C2A2
_0802C360:
	movs r0, 0x2
	ands r0, r6
	cmp r0, 0
	beq _0802C378
	movs r0, 0x83
	lsls r0, 1
	bl PlaySE
	b _0802C386
	.pool
_0802C378:
	movs r0, 0x1
	ands r6, r0
	cmp r6, 0
	beq _0802C386
	movs r0, 0xA
	bl PlaySE
_0802C386:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_802C280

	thumb_func_start sub_802C398
sub_802C398: @ 802C398
	push {r4-r6,lr}
	adds r6, r0, 0
	ldr r0, =gUnknown_02022CFC
	ldr r2, [r0]
	ldr r0, [r2, 0x68]
	cmp r0, 0
	bne _0802C432
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =0x000082e4
	adds r0, r1
	adds r5, r2, r0
	ldr r1, [r5, 0x4]
	ldr r0, =0x7fffffff
	cmp r1, r0
	beq _0802C3D0
	adds r0, r1, 0x1
	str r0, [r5, 0x4]
	adds r3, r0, 0
	b _0802C3E8
	.pool
_0802C3D0:
	adds r0, r2, 0
	adds r0, 0x4A
	ldrh r1, [r0]
	ldrh r0, [r5, 0xE]
	subs r3, r1, r0
	ldr r0, =0x0000fde7
	cmp r3, r0
	ble _0802C3E6
	ldr r0, =0xffff0218
	adds r3, r0
	adds r3, r1
_0802C3E6:
	str r3, [r5, 0x4]
_0802C3E8:
	cmp r3, 0x3
	ble _0802C432
	subs r3, 0x4
	cmp r3, 0x2F
	bgt _0802C414
	ldr r2, =gUnknown_082FB65C
	ldrh r1, [r5, 0xC]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 4
	adds r0, r3, r0
	adds r0, r2
	movs r4, 0
	ldrsb r4, [r0, r4]
	b _0802C416
	.pool
_0802C414:
	movs r4, 0
_0802C416:
	adds r1, r4, 0
	adds r0, r6, 0
	bl sub_802DC80
	cmp r4, 0
	bne _0802C430
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldrb r0, [r0, 0x6]
	cmp r6, r0
	bne _0802C430
	bl sub_802C1BC
_0802C430:
	str r4, [r5]
_0802C432:
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C398

	thumb_func_start sub_802C43C
sub_802C43C: @ 802C43C
	push {r4,r5,lr}
	ldr r5, =gUnknown_02022CFC
	ldr r1, [r5]
	ldr r0, [r1, 0x14]
	cmp r0, 0x8
	bne _0802C4CE
	ldr r0, [r1, 0x18]
	cmp r0, 0x7
	bne _0802C4CE
	ldr r4, [r1, 0x58]
	cmp r4, 0
	bne _0802C46C
	bl sub_802C780
	ldr r0, [r5]
	str r4, [r0, 0x54]
	movs r1, 0x1
	str r1, [r0, 0x58]
	adds r0, 0x71
	strb r4, [r0]
	b _0802C4CE
	.pool
_0802C46C:
	ldr r0, [r1, 0x54]
	cmp r0, 0x5
	bne _0802C480
	ldrh r0, [r1, 0xC]
	adds r0, 0x1
	strh r0, [r1, 0xC]
	ldrh r0, [r1, 0xC]
	bl sub_802C7A0
	b _0802C484
_0802C480:
	movs r0, 0
	strh r0, [r1, 0xC]
_0802C484:
	ldr r4, =gUnknown_02022CFC
	ldr r1, [r4]
	ldr r0, [r1, 0x54]
	cmp r0, 0x1
	ble _0802C49E
	movs r0, 0x1
	str r0, [r1, 0x64]
	adds r0, r1, 0
	adds r0, 0x86
	adds r1, 0x81
	movs r2, 0x5
	bl memcpy
_0802C49E:
	bl sub_802C780
	ldr r0, [r4]
	movs r2, 0
	str r2, [r0, 0x54]
	movs r1, 0x1
	str r1, [r0, 0x58]
	adds r0, 0x71
	strb r2, [r0]
	ldr r0, [r4]
	adds r2, r0, 0
	adds r2, 0x74
	ldrh r1, [r2]
	ldr r0, =0x0000270e
	cmp r1, r0
	bhi _0802C4C2
	adds r0, r1, 0x1
	strh r0, [r2]
_0802C4C2:
	movs r0, 0xA
	bl sub_802C688
	movs r0, 0x3
	bl sub_802AE14
_0802C4CE:
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldr r0, [r0, 0x64]
	cmp r0, 0
	beq _0802C504
	bl sub_802C618
	cmp r0, 0x1
	beq _0802C4E8
	ldr r0, [r4]
	ldr r0, [r0, 0x14]
	cmp r0, 0
	bne _0802C504
_0802C4E8:
	ldr r0, [r4]
	adds r0, 0x86
	bl sub_802C73C
	bl sub_802C790
	bl sub_802C688
	movs r0, 0x3
	bl sub_802AE14
	ldr r1, [r4]
	movs r0, 0
	str r0, [r1, 0x64]
_0802C504:
	ldr r4, =gUnknown_02022CFC
	ldr r0, [r4]
	ldr r0, [r0, 0x58]
	cmp r0, 0
	beq _0802C52A
	bl sub_802C6B0
	adds r2, r0, 0
	ldr r1, [r4]
	ldr r0, [r1, 0x54]
	cmp r2, r0
	ble _0802C52A
	str r2, [r1, 0x54]
	adds r0, r1, 0
	adds r0, 0x81
	adds r1, 0x7C
	movs r2, 0x5
	bl memcpy
_0802C52A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C43C

	thumb_func_start sub_802C538
sub_802C538: @ 802C538
	push {r4,r5,lr}
	ldr r5, =gUnknown_02022CFC
	ldr r1, [r5]
	ldr r0, [r1, 0x14]
	cmp r0, 0x6
	bne _0802C582
	ldr r4, =0x000083ac
	adds r0, r1, r4
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, 0
	bne _0802C582
	ldrh r0, [r1, 0x12]
	cmp r0, 0x1
	bne _0802C578
	bl sub_802C0DC
	adds r1, r0, 0
	cmp r1, 0x1
	bne _0802C578
	ldr r0, [r5]
	adds r0, r4
	ldr r0, [r0]
	str r1, [r0, 0x14]
	b _0802C582
	.pool
_0802C574:
	movs r0, 0
	b _0802C5CA
_0802C578:
	bl sub_802C18C
	movs r0, 0x3
	bl sub_802AE14
_0802C582:
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	ldr r0, [r1, 0x14]
	cmp r0, 0x7
	bne _0802C5A8
	ldr r0, [r1, 0x18]
	cmp r0, 0x6
	bne _0802C5A8
	ldr r2, =0x000083ac
	adds r0, r1, r2
	ldr r1, [r0]
	ldrh r0, [r1, 0x10]
	cmp r0, 0x2
	beq _0802C5A8
	movs r0, 0x1
	str r0, [r1, 0x14]
	movs r0, 0x3
	bl sub_802AE14
_0802C5A8:
	movs r2, 0
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldrb r1, [r0, 0x5]
	cmp r2, r1
	bge _0802C5C8
	adds r3, r1, 0
	ldr r4, =0x000082f4
	adds r1, r0, r4
_0802C5BA:
	ldrh r0, [r1]
	cmp r0, 0x2
	beq _0802C574
	adds r1, 0x28
	adds r2, 0x1
	cmp r2, r3
	blt _0802C5BA
_0802C5C8:
	movs r0, 0x1
_0802C5CA:
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802C538

	thumb_func_start sub_802C5DC
sub_802C5DC: @ 802C5DC
	push {r4,lr}
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldrb r3, [r0, 0x5]
	movs r4, 0
	cmp r4, r3
	bge _0802C600
	ldr r1, =0x000082f8
	adds r2, r0, r1
	adds r1, r3, 0
_0802C5F0:
	ldr r0, [r2]
	cmp r0, 0
	beq _0802C5F8
	adds r4, 0x1
_0802C5F8:
	adds r2, 0x28
	subs r1, 0x1
	cmp r1, 0
	bne _0802C5F0
_0802C600:
	movs r0, 0
	cmp r4, r3
	bne _0802C608
	movs r0, 0x1
_0802C608:
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802C5DC

	thumb_func_start sub_802C618
sub_802C618: @ 802C618
	push {r4,lr}
	movs r2, 0
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldrb r1, [r0, 0x5]
	cmp r2, r1
	bge _0802C648
	adds r3, r1, 0
	ldr r4, =0x000082f8
	adds r1, r0, r4
_0802C62C:
	ldr r0, [r1]
	cmp r0, 0x1
	beq _0802C640
	movs r0, 0
	b _0802C64A
	.pool
_0802C640:
	adds r1, 0x28
	adds r2, 0x1
	cmp r2, r3
	blt _0802C62C
_0802C648:
	movs r0, 0x1
_0802C64A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802C618

	thumb_func_start sub_802C650
sub_802C650: @ 802C650
	push {lr}
	ldr r0, =gUnknown_02022CFC
	ldr r1, [r0]
	adds r0, r1, 0
	adds r0, 0x45
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _0802C668
_0802C660:
	movs r0, 0
	b _0802C684
	.pool
_0802C668:
	movs r2, 0x1
	ldrb r0, [r1, 0x5]
	cmp r2, r0
	bge _0802C682
	adds r3, r0, 0
	adds r1, 0x92
_0802C674:
	ldrh r0, [r1]
	cmp r0, 0x1
	beq _0802C660
	adds r1, 0x2
	adds r2, 0x1
	cmp r2, r3
	blt _0802C674
_0802C682:
	movs r0, 0x1
_0802C684:
	pop {r1}
	bx r1
	thumb_func_end sub_802C650

	thumb_func_start sub_802C688
sub_802C688: @ 802C688
	push {lr}
	ldr r1, =gUnknown_02022CFC
	ldr r2, [r1]
	ldr r1, [r2, 0x78]
	adds r1, r0
	str r1, [r2, 0x78]
	movs r0, 0x1
	str r0, [r2, 0x5C]
	ldr r0, =0x00018695
	cmp r1, r0
	bls _0802C6A2
	adds r0, 0x1
	str r0, [r2, 0x78]
_0802C6A2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C688

	thumb_func_start sub_802C6B0
sub_802C6B0: @ 802C6B0
	push {r4-r7,lr}
	movs r5, 0
	ldr r1, =gUnknown_02022CFC
	ldr r0, [r1]
	ldrb r4, [r0, 0x5]
	movs r2, 0
	cmp r5, r4
	bge _0802C702
	mov r12, r1
	movs r3, 0
	ldr r7, =0x000082e4
	movs r6, 0x1E
	negs r6, r6
_0802C6CA:
	mov r0, r12
	ldr r1, [r0]
	adds r0, r1, r7
	adds r0, r3
	ldr r0, [r0]
	cmp r0, r6
	bne _0802C6F0
	adds r0, r1, 0
	adds r0, 0x7C
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0]
	adds r5, 0x1
	b _0802C6FA
	.pool
_0802C6F0:
	adds r0, r1, 0
	adds r0, 0x7C
	adds r0, r2
	movs r1, 0
	strb r1, [r0]
_0802C6FA:
	adds r3, 0x28
	adds r2, 0x1
	cmp r2, r4
	blt _0802C6CA
_0802C702:
	adds r0, r5, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_802C6B0

	thumb_func_start sub_802C70C
sub_802C70C: @ 802C70C
	push {lr}
	movs r2, 0
	ldr r1, =gUnknown_03005000
	ldr r3, =0x000009e6
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _0802C728
	ldr r3, =0x00000c1a
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _0802C728
	movs r2, 0x1
_0802C728:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802C70C

	thumb_func_start sub_802C73C
sub_802C73C: @ 802C73C
	push {r4-r6,lr}
	adds r4, r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0
	ldr r6, =gUnknown_02022CFC
	movs r5, 0x1
_0802C74A:
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802C75A
	adds r0, r5, 0
	lsls r0, r1
	orrs r2, r0
	adds r3, 0x1
_0802C75A:
	adds r1, 0x1
	cmp r1, 0x4
	ble _0802C74A
	ldr r0, [r6]
	adds r0, 0x71
	strb r2, [r0]
	cmp r2, 0
	beq _0802C772
	ldr r0, [r6]
	adds r0, 0x4D
	movs r1, 0x1
	strb r1, [r0]
_0802C772:
	adds r0, r3, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802C73C

	thumb_func_start sub_802C780
sub_802C780: @ 802C780
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	adds r0, 0x44
	movs r1, 0
	strb r1, [r0]
	bx lr
	.pool
	thumb_func_end sub_802C780

	thumb_func_start sub_802C790
sub_802C790: @ 802C790
	ldr r1, =gUnknown_082FB6EC
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	bx lr
	.pool
	thumb_func_end sub_802C790

	thumb_func_start sub_802C7A0
sub_802C7A0: @ 802C7A0
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldrh r2, [r0, 0xE]
	cmp r1, r2
	bls _0802C7B2
	strh r1, [r0, 0xE]
_0802C7B2:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C7A0

	thumb_func_start sub_802C7BC
sub_802C7BC: @ 802C7BC
	push {lr}
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldr r1, =gUnknown_082FB714
	ldr r2, [r0, 0x78]
	ldr r0, [r1]
	cmp r2, r0
	bcs _0802C7D8
	movs r0, 0
	b _0802C7DA
	.pool
_0802C7D8:
	movs r0, 0x1
_0802C7DA:
	pop {r1}
	bx r1
	thumb_func_end sub_802C7BC

	thumb_func_start sub_802C7E0
sub_802C7E0: @ 802C7E0
	push {r4,lr}
	bl sub_802C818
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	bl sub_802C838
	lsls r0, 16
	lsrs r0, 4
	ldr r1, =0x00000fff
	ands r4, r1
	orrs r0, r4
	lsls r0, 16
	lsrs r0, 16
	pop {r4}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802C7E0

	thumb_func_start sub_802C808
sub_802C808: @ 802C808
	lsls r0, 16
	lsrs r3, r0, 28
	strh r3, [r2]
	lsls r0, 4
	lsrs r0, 20
	strh r0, [r1]
	bx lr
	thumb_func_end sub_802C808

	thumb_func_start sub_802C818
sub_802C818: @ 802C818
	push {lr}
	bl Random
	lsls r0, 16
	movs r1, 0xE0
	lsls r1, 11
	ands r1, r0
	ldr r0, =gUnknown_082FB704
	lsrs r1, 15
	adds r1, r0
	ldrh r0, [r1]
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802C818

	thumb_func_start sub_802C838
sub_802C838: @ 802C838
	push {r4-r6,lr}
	movs r5, 0
	movs r4, 0
	ldr r3, =gUnknown_02022CFC
	ldr r0, [r3]
	ldr r2, =gUnknown_082FB714
	ldr r1, [r0, 0x78]
	ldr r0, [r2]
	cmp r1, r0
	bcc _0802C874
	ldr r5, [r2, 0x4]
	adds r6, r3, 0
	adds r3, r2, 0x4
_0802C852:
	adds r3, 0x8
	adds r2, 0x8
	adds r4, 0x1
	cmp r4, 0x4
	bhi _0802C874
	ldr r0, [r6]
	ldr r1, [r0, 0x78]
	ldr r0, [r2]
	cmp r1, r0
	bcc _0802C874
	ldr r5, [r3]
	b _0802C852
	.pool
_0802C874:
	lsls r0, r5, 16
	lsrs r0, 16
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_802C838

	thumb_func_start sub_802C880
sub_802C880: @ 802C880
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r1, 16
	lsrs r4, r1, 16
	b _0802C892
_0802C88C:
	subs r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
_0802C892:
	cmp r4, 0
	beq _0802C8A4
	adds r0, r5, 0
	adds r1, r4, 0
	bl CheckBagHasSpace
	lsls r0, 24
	cmp r0, 0
	beq _0802C88C
_0802C8A4:
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_802C880

	thumb_func_start sub_802C8AC
sub_802C8AC: @ 802C8AC
	push {lr}
	bl GetLinkPlayerCount
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end sub_802C8AC

	thumb_func_start sub_802C8BC
sub_802C8BC: @ 802C8BC
	ldr r0, =gUnknown_02022CFC
	ldr r0, [r0]
	ldrb r0, [r0, 0x6]
	bx lr
	.pool
	thumb_func_end sub_802C8BC

	thumb_func_start sub_802C8C8
sub_802C8C8: @ 802C8C8
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gUnknown_02022CFC
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 2
	ldr r0, =0x000082a8
	adds r1, r0
	ldr r0, [r2]
	adds r0, r1
	bx lr
	.pool
	thumb_func_end sub_802C8C8

	thumb_func_start sub_802C8E8
sub_802C8E8: @ 802C8E8
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r2, =gUnknown_02022CFC
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, [r2]
	adds r0, r1
	movs r1, 0x83
	lsls r1, 8
	adds r0, r1
	bx lr
	.pool
	thumb_func_end sub_802C8E8

	thumb_func_start sub_802C908
sub_802C908: @ 802C908
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	bl sub_802AC00
	lsls r0, 16
	asrs r0, 16
	mvns r0, r0
	lsrs r0, 31
	pop {r1}
	bx r1
	thumb_func_end sub_802C908

	thumb_func_start sub_802C920
sub_802C920: @ 802C920
	push {r4,r5,lr}
	movs r5, 0
_0802C924:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x5
	bl GetMonData
	cmp r0, 0
	beq _0802C95C
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl sub_802C908
	cmp r0, 0
	beq _0802C95C
	ldr r1, =gSpecialVar_Result
	movs r0, 0x1
	b _0802C966
	.pool
_0802C95C:
	adds r5, 0x1
	cmp r5, 0x5
	ble _0802C924
	ldr r1, =gSpecialVar_Result
	movs r0, 0
_0802C966:
	strh r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C920

	thumb_func_start sub_802C974
sub_802C974: @ 802C974
	push {r4-r6,lr}
	adds r6, r0, 0
	movs r4, 0
	ldr r5, =gUnknown_082FBE08
_0802C97C:
	adds r0, r5, 0
	bl LoadCompressedSpriteSheet
	adds r5, 0x8
	adds r4, 0x1
	cmp r4, 0x4
	bls _0802C97C
	movs r4, 0
	ldr r5, =gUnknown_082FBE30
_0802C98E:
	adds r0, r5, 0
	bl LoadSpritePalette
	adds r5, 0x8
	adds r4, 0x1
	cmp r4, 0x1
	bls _0802C98E
	movs r0, 0x5
	bl IndexOfSpritePaletteTag
	strb r0, [r6, 0xE]
	movs r0, 0x6
	bl IndexOfSpritePaletteTag
	strb r0, [r6, 0xF]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C974

	thumb_func_start sub_802C9BC
sub_802C9BC: @ 802C9BC
	push {lr}
	movs r2, 0
	movs r1, 0x7
	adds r0, 0x3C
_0802C9C4:
	strh r2, [r0]
	subs r0, 0x2
	subs r1, 0x1
	cmp r1, 0
	bge _0802C9C4
	pop {r0}
	bx r0
	thumb_func_end sub_802C9BC

	thumb_func_start sub_802C9D4
sub_802C9D4: @ 802C9D4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x34
	mov r9, r0
	adds r7, r1, 0
	ldr r0, [sp, 0x54]
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp, 0x28]
	lsls r3, 16
	lsrs r3, 16
	str r3, [sp, 0x2C]
	lsls r0, 24
	lsrs r6, r0, 24
	mov r1, sp
	ldr r0, =gUnknown_082FBE40
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	movs r0, 0x80
	lsls r0, 6
	bl Alloc
	mov r8, r0
	movs r0, 0x80
	lsls r0, 4
	bl Alloc
	mov r10, r0
	bl sub_802C8BC
	lsls r0, 16
	lsrs r0, 16
	cmp r6, r0
	bne _0802CA2C
	movs r0, 0x3
	b _0802CA32
	.pool
_0802CA2C:
	adds r0, r6, 0x4
	lsls r0, 24
	lsrs r0, 24
_0802CA32:
	str r0, [sp, 0x30]
	mov r1, r8
	cmp r1, 0
	beq _0802CAF4
	mov r2, r10
	cmp r2, 0
	beq _0802CAF4
	ldrh r2, [r7]
	lsls r0, r2, 3
	ldr r1, =gMonStillFrontPicTable
	adds r0, r1
	ldr r3, [r7, 0x8]
	mov r1, r8
	bl HandleLoadSpecialPokePic
	mov r3, r8
	str r3, [sp, 0x18]
	adds r4, r6, 0
	add r0, sp, 0x18
	ldr r5, =0xffff0000
	lsls r1, r4, 16
	movs r2, 0x80
	lsls r2, 4
	orrs r1, r2
	str r1, [r0, 0x4]
	bl LoadSpriteSheet
	ldrh r0, [r7]
	ldr r1, [r7, 0x4]
	ldr r2, [r7, 0x8]
	bl GetFrontSpritePalFromSpeciesAndPersonality
	str r0, [sp, 0x20]
	add r0, sp, 0x20
	ldr r1, [r0, 0x4]
	ands r1, r5
	orrs r1, r4
	str r1, [r0, 0x4]
	bl LoadCompressedSpritePalette
	mov r0, r8
	bl Free
	mov r0, r10
	bl Free
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0]
	adds r0, r6
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0, 0x2]
	adds r0, r6
	strh r0, [r1, 0x2]
	ldr r4, [sp, 0x28]
	lsls r1, r4, 16
	asrs r1, 16
	ldr r0, [sp, 0x2C]
	lsls r2, r0, 16
	asrs r2, 16
	mov r0, sp
	ldr r3, [sp, 0x30]
	bl CreateSprite
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x40
	beq _0802CAF4
	lsls r0, r6, 2
	ldr r2, =0x000081a8
	add r2, r9
	adds r2, r0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	str r0, [r2]
	ldr r0, =0x000081fc
	add r0, r9
	adds r0, r6
	add r1, sp, 0x30
	ldrb r1, [r1]
	strb r1, [r0]
	b _0802CB00
	.pool
_0802CAF4:
	lsls r0, r6, 2
	ldr r1, =0x000081a8
	add r1, r9
	adds r1, r0
	movs r0, 0
	str r0, [r1]
_0802CB00:
	add sp, 0x34
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802C9D4

	thumb_func_start sub_802CB14
sub_802CB14: @ 802CB14
	push {r4-r6,lr}
	adds r4, r0, 0
	lsls r6, r1, 2
	ldr r0, =0x000081bc
	adds r5, r4, r0
	adds r5, r6
	ldr r0, [r5]
	bl sub_802C9BC
	ldr r2, [r5]
	ldr r0, =0x000081a8
	adds r4, r0
	adds r4, r6
	ldr r1, [r4]
	ldr r0, =gSprites
	subs r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r1, r0, 8
	adds r0, r1
	lsls r1, r0, 16
	adds r0, r1
	negs r0, r0
	asrs r0, 2
	strh r0, [r2, 0x3C]
	ldr r1, [r5]
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r5]
	movs r0, 0x60
	strh r0, [r1, 0x22]
	ldr r0, [r5]
	ldr r1, =sub_802CB7C
	str r1, [r0, 0x1C]
	movs r1, 0x1
	bl StartSpriteAnim
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CB14

	thumb_func_start sub_802CB7C
sub_802CB7C: @ 802CB7C
	push {lr}
	adds r2, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r2, r1]
	cmp r0, 0x1
	beq _0802CBA8
	cmp r0, 0x1
	bgt _0802CB92
	cmp r0, 0
	beq _0802CB98
	b _0802CBE6
_0802CB92:
	cmp r0, 0x2
	beq _0802CBC8
	b _0802CBE6
_0802CB98:
	adds r0, r2, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0802CBE6
	b _0802CBD6
_0802CBA8:
	ldrh r1, [r2, 0x22]
	subs r1, 0x1
	strh r1, [r2, 0x22]
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r1, 16
	asrs r1, 16
	cmp r1, 0x48
	bgt _0802CBE6
	movs r0, 0x48
	strh r0, [r2, 0x22]
	ldrh r0, [r2, 0x2E]
	adds r0, 0x1
	strh r0, [r2, 0x2E]
	b _0802CBE6
_0802CBC8:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x2F
	ble _0802CBE6
_0802CBD6:
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r0, [r3]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, =SpriteCallbackDummy
	str r0, [r2, 0x1C]
_0802CBE6:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CB7C

	thumb_func_start sub_802CBF0
sub_802CBF0: @ 802CBF0
	push {lr}
	lsls r1, 2
	ldr r2, =0x000081a8
	adds r0, r2
	adds r0, r1
	ldr r2, [r0]
	ldr r1, =sub_802CC40
	str r1, [r2, 0x1C]
	movs r1, 0
	strh r1, [r2, 0x26]
	ldr r0, [r0]
	bl sub_802C9BC
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CBF0

	thumb_func_start sub_802CC18
sub_802CC18: @ 802CC18
	push {lr}
	movs r2, 0
	lsls r1, 2
	ldr r3, =0x000081a8
	adds r0, r3
	adds r0, r1
	ldr r0, [r0]
	ldr r1, [r0, 0x1C]
	ldr r0, =sub_802CC40
	cmp r1, r0
	bne _0802CC30
	movs r2, 0x1
_0802CC30:
	adds r0, r2, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802CC18

	thumb_func_start sub_802CC40
sub_802CC40: @ 802CC40
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x1
	ble _0802CC6C
	ldrh r0, [r2, 0x32]
	adds r0, 0x1
	strh r0, [r2, 0x32]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0802CC64
	movs r0, 0x2
	b _0802CC66
_0802CC64:
	ldr r0, =0x0000fffe
_0802CC66:
	strh r0, [r2, 0x26]
	movs r0, 0
	strh r0, [r2, 0x30]
_0802CC6C:
	movs r1, 0x32
	ldrsh r0, [r2, r1]
	cmp r0, 0xC
	ble _0802CC7C
	movs r0, 0
	strh r0, [r2, 0x26]
	ldr r0, =SpriteCallbackDummy
	str r0, [r2, 0x1C]
_0802CC7C:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CC40

	thumb_func_start sub_802CC88
sub_802CC88: @ 802CC88
	push {r4,lr}
	adds r4, r0, 0
	lsls r1, 2
	ldr r0, =0x000081a8
	adds r4, r0
	adds r4, r1
	ldr r0, [r4]
	bl sub_802C9BC
	ldr r1, [r4]
	ldr r0, =sub_802CD08
	str r0, [r1, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CC88

	thumb_func_start sub_802CCB0
sub_802CCB0: @ 802CCB0
	push {r4-r7,lr}
	adds r4, r0, 0
	bl sub_802C8AC
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	beq _0802CCF4
	movs r1, 0x5
	negs r1, r1
	mov r12, r1
	ldr r1, =0x000081a8
	adds r3, r4, r1
	ldr r7, =sub_802CD08
	ldr r6, =SpriteCallbackDummy
	movs r5, 0xA
	adds r4, r0, 0
_0802CCD2:
	ldr r2, [r3]
	ldr r0, [r2, 0x1C]
	cmp r0, r7
	bne _0802CCEC
	adds r2, 0x3E
	ldrb r1, [r2]
	mov r0, r12
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	str r6, [r0, 0x1C]
	adds r0, 0x43
	strb r5, [r0]
_0802CCEC:
	adds r3, 0x4
	subs r4, 0x1
	cmp r4, 0
	bne _0802CCD2
_0802CCF4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CCB0

	thumb_func_start sub_802CD08
sub_802CD08: @ 802CD08
	push {lr}
	adds r3, r0, 0
	ldrh r0, [r3, 0x2E]
	adds r0, 0x1
	strh r0, [r3, 0x2E]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3
	ble _0802CD36
	movs r0, 0
	strh r0, [r3, 0x2E]
	adds r3, 0x3E
	ldrb r2, [r3]
	lsls r0, r2, 29
	lsrs r0, 31
	movs r1, 0x1
	eors r1, r0
	lsls r1, 2
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0802CD36:
	pop {r0}
	bx r0
	thumb_func_end sub_802CD08

	thumb_func_start sub_802CD3C
sub_802CD3C: @ 802CD3C
	push {r4,r5,lr}
	adds r4, r0, 0
	bl sub_802C8AC
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	cmp r2, r3
	bge _0802CD66
	ldr r0, =0x000081fc
	adds r5, r4, r0
	subs r0, 0x54
	adds r4, r0
_0802CD56:
	ldm r4!, {r0}
	adds r1, r5, r2
	ldrb r1, [r1]
	adds r0, 0x43
	strb r1, [r0]
	adds r2, 0x1
	cmp r2, r3
	blt _0802CD56
_0802CD66:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CD3C

	thumb_func_start sub_802CD70
sub_802CD70: @ 802CD70
	push {r4,lr}
	adds r4, r0, 0
	lsls r1, 2
	ldr r0, =0x000081a8
	adds r4, r0
	adds r4, r1
	ldr r0, [r4]
	bl sub_802C9BC
	ldr r1, [r4]
	ldr r0, =sub_802CDD4
	str r0, [r1, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CD70

	thumb_func_start sub_802CD98
sub_802CD98: @ 802CD98
	push {r4,r5,lr}
	adds r4, r0, 0
	bl sub_802C8AC
	lsls r0, 16
	lsrs r3, r0, 16
	movs r2, 0
	cmp r2, r3
	bge _0802CDCC
	ldr r5, =sub_802CDD4
	ldr r0, =0x000081a8
	adds r1, r4, r0
_0802CDB0:
	ldr r0, [r1]
	ldr r0, [r0, 0x1C]
	cmp r0, r5
	bne _0802CDC4
	movs r0, 0x1
	b _0802CDCE
	.pool
_0802CDC4:
	adds r1, 0x4
	adds r2, 0x1
	cmp r2, r3
	blt _0802CDB0
_0802CDCC:
	movs r0, 0
_0802CDCE:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_802CD98

	thumb_func_start sub_802CDD4
sub_802CDD4: @ 802CDD4
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r0, 0x2E
	ldrsh r4, [r5, r0]
	cmp r4, 0
	beq _0802CDE6
	cmp r4, 0x1
	beq _0802CDF4
	b _0802CE3C
_0802CDE6:
	movs r0, 0x22
	bl PlaySE
	strh r4, [r5, 0x30]
	ldrh r0, [r5, 0x2E]
	adds r0, 0x1
	strh r0, [r5, 0x2E]
_0802CDF4:
	ldrh r0, [r5, 0x30]
	adds r0, 0x4
	strh r0, [r5, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x7F
	ble _0802CE06
	movs r0, 0
	strh r0, [r5, 0x30]
_0802CE06:
	ldr r1, =gSineTable
	movs r2, 0x30
	ldrsh r0, [r5, r2]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 16
	asrs r0, 19
	negs r0, r0
	strh r0, [r5, 0x26]
	movs r0, 0x30
	ldrsh r1, [r5, r0]
	cmp r1, 0
	bne _0802CE3C
	ldrh r0, [r5, 0x32]
	adds r0, 0x1
	strh r0, [r5, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x1
	bgt _0802CE38
	strh r1, [r5, 0x2E]
	b _0802CE3C
	.pool
_0802CE38:
	ldr r0, =SpriteCallbackDummy
	str r0, [r5, 0x1C]
_0802CE3C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CDD4

	thumb_func_start sub_802CE48
sub_802CE48: @ 802CE48
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r3, 24
	lsrs r4, r3, 24
	ldr r0, =gUnknown_082FC00C
	lsls r1, 16
	asrs r1, 16
	lsls r2, 16
	asrs r2, 16
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x40
	beq _0802CE88
	ldr r0, =gSprites
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	adds r3, r1, 0
	adds r3, 0x3E
	ldrb r0, [r3]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r3]
	lsls r2, r4, 2
	ldr r3, =0x000081bc
	adds r0, r5, r3
	adds r0, r2
	str r1, [r0]
_0802CE88:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CE48

	thumb_func_start sub_802CE9C
sub_802CE9C: @ 802CE9C
	push {r4-r7,lr}
	adds r7, r0, 0
	movs r5, 0
	movs r4, 0
	ldr r6, =gUnknown_082FBE58
_0802CEA6:
	ldr r1, =gUnknown_082FBEB8
	lsls r0, r4, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r2, =gUnknown_082FBEA8
	lsls r1, r5, 1
	adds r1, r2
	movs r2, 0
	ldrsh r1, [r1, r2]
	movs r3, 0
	ldrsh r2, [r6, r3]
	movs r3, 0x2
	bl CreateSprite
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r5, 2
	ldr r3, =0x000081d0
	adds r2, r7, r3
	adds r2, r0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	str r0, [r2]
	adds r5, 0x1
	adds r6, 0x14
	adds r4, 0x1
	cmp r4, 0x3
	ble _0802CEA6
	movs r4, 0x3
	movs r6, 0x3C
_0802CEE8:
	ldr r1, =gUnknown_082FBEB8
	lsls r0, r4, 2
	adds r0, r1
	ldr r0, [r0]
	ldr r2, =gUnknown_082FBEA8
	lsls r1, r5, 1
	adds r1, r2
	movs r2, 0
	ldrsh r1, [r1, r2]
	ldr r2, =gUnknown_082FBE58
	adds r2, r6, r2
	movs r3, 0
	ldrsh r2, [r2, r3]
	movs r3, 0x2
	bl CreateSprite
	lsls r0, 24
	lsrs r1, r0, 24
	lsls r0, r5, 2
	ldr r3, =0x000081d0
	adds r2, r7, r3
	adds r2, r0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	str r0, [r2]
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	adds r5, 0x1
	subs r6, 0x14
	subs r4, 0x1
	cmp r4, 0
	bge _0802CEE8
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CE9C

	thumb_func_start sub_802CF50
sub_802CF50: @ 802CF50
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	str r0, [sp, 0x8]
	cmp r1, 0x5
	ble _0802CF70
	movs r0, 0xA
	subs r1, r0, r1
	movs r0, 0x3
	str r0, [sp]
	ldr r2, [sp, 0x8]
	ldrb r0, [r2, 0xF]
	b _0802CF78
_0802CF70:
	movs r3, 0x2
	str r3, [sp]
	ldr r7, [sp, 0x8]
	ldrb r0, [r7, 0xE]
_0802CF78:
	movs r6, 0
	lsls r2, r1, 1
	str r2, [sp, 0x4]
	lsls r0, 4
	mov r9, r0
	lsls r1, 24
	mov r8, r1
	ldr r0, =gUnknown_082FBE58
	adds r4, r2, r0
	ldr r3, [sp]
	lsls r3, 2
	mov r10, r3
	movs r5, 0x3
_0802CF92:
	lsls r0, r6, 2
	ldr r7, [sp, 0x8]
	ldr r1, =0x000081d0
	adds r2, r7, r1
	adds r2, r0
	ldr r1, [r2]
	ldrh r0, [r4]
	strh r0, [r1, 0x22]
	ldr r3, [r2]
	ldrb r0, [r3, 0x5]
	movs r7, 0xD
	negs r7, r7
	adds r1, r7, 0
	ands r0, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r3, 0x5]
	ldr r3, [r2]
	ldrb r1, [r3, 0x5]
	movs r0, 0xF
	ands r0, r1
	mov r7, r9
	orrs r0, r7
	strb r0, [r3, 0x5]
	ldr r0, [r2]
	mov r2, r8
	lsrs r1, r2, 24
	bl StartSpriteAnim
	adds r6, 0x1
	adds r4, 0x14
	subs r5, 0x1
	cmp r5, 0
	bge _0802CF92
	movs r5, 0x3
	ldr r0, =gUnknown_082FBE58
	ldr r3, [sp, 0x4]
	adds r0, r3, r0
	adds r4, r0, 0
	adds r4, 0x3C
	ldr r7, [sp]
	lsls r7, 2
	mov r10, r7
_0802CFE8:
	lsls r0, r6, 2
	ldr r1, [sp, 0x8]
	ldr r3, =0x000081d0
	adds r2, r1, r3
	adds r2, r0
	ldr r1, [r2]
	ldrh r0, [r4]
	strh r0, [r1, 0x22]
	ldr r3, [r2]
	ldrb r0, [r3, 0x5]
	movs r7, 0xD
	negs r7, r7
	adds r1, r7, 0
	ands r0, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r3, 0x5]
	ldr r3, [r2]
	ldrb r1, [r3, 0x5]
	movs r0, 0xF
	ands r0, r1
	mov r7, r9
	orrs r0, r7
	strb r0, [r3, 0x5]
	ldr r0, [r2]
	mov r2, r8
	lsrs r1, r2, 24
	bl StartSpriteAnim
	adds r6, 0x1
	subs r4, 0x14
	subs r5, 0x1
	cmp r5, 0
	bge _0802CFE8
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802CF50

	thumb_func_start sub_802D044
sub_802D044: @ 802D044
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	movs r0, 0
	str r0, [sp]
	movs r0, 0x9
	movs r1, 0x7
	movs r2, 0x78
	movs r3, 0x50
	bl sub_802EB24
	adds r0, r4, 0
	bl sub_802CD3C
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_802D044

	thumb_func_start sub_802D068
sub_802D068: @ 802D068
	push {lr}
	bl sub_802EB84
	pop {r1}
	bx r1
	thumb_func_end sub_802D068

	thumb_func_start sub_802D074
sub_802D074: @ 802D074
	push {r4,lr}
	ldr r4, =gUnknown_02022D00
	str r0, [r4]
	bl sub_802D0BC
	ldr r0, =sub_802D12C
	movs r1, 0x3
	bl CreateTask
	ldr r1, [r4]
	strb r0, [r1, 0x6]
	ldr r2, [r4]
	ldrb r0, [r2, 0x6]
	movs r1, 0x2
	bl SetWordTaskArg
	ldr r0, =sub_802D150
	bl sub_802D108
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D074

	thumb_func_start sub_802D0AC
sub_802D0AC: @ 802D0AC
	push {lr}
	bl FreeAllWindowBuffers
	bl sub_8034CC8
	pop {r0}
	bx r0
	thumb_func_end sub_802D0AC

	thumb_func_start sub_802D0BC
sub_802D0BC: @ 802D0BC
	movs r1, 0
	strh r1, [r0, 0x4]
	str r1, [r0]
	movs r1, 0xFF
	strh r1, [r0, 0x12]
	bx lr
	thumb_func_end sub_802D0BC

	thumb_func_start sub_802D0C8
sub_802D0C8: @ 802D0C8
	push {r4-r6,lr}
	adds r6, r0, 0
	movs r5, 0
	ldr r4, =gUnknown_082FE18C
_0802D0D0:
	ldr r0, [r4]
	cmp r0, r6
	bne _0802D0DC
	ldr r0, [r4, 0x4]
	bl sub_802D108
_0802D0DC:
	adds r4, 0x8
	adds r5, 0x1
	cmp r5, 0x9
	bls _0802D0D0
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D0C8

	thumb_func_start sub_802D0F0
sub_802D0F0: @ 802D0F0
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, 0x1
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, 31
	bx lr
	.pool
	thumb_func_end sub_802D0F0

	thumb_func_start sub_802D108
sub_802D108: @ 802D108
	push {r4,lr}
	adds r2, r0, 0
	ldr r4, =gUnknown_02022D00
	ldr r0, [r4]
	ldrb r0, [r0, 0x6]
	movs r1, 0
	bl SetWordTaskArg
	ldr r1, [r4]
	movs r0, 0
	strh r0, [r1, 0x4]
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D108

	thumb_func_start sub_802D12C
sub_802D12C: @ 802D12C
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, 0
	bne _0802D148
	adds r0, r1, 0
	movs r1, 0
	bl GetWordTaskArg
	bl _call_via_r0
_0802D148:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D12C

	thumb_func_start sub_802D150
sub_802D150: @ 802D150
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r6, =gUnknown_02022D00
	ldr r1, [r6]
	ldrh r5, [r1, 0x4]
	cmp r5, 0x1
	bne _0802D160
	b _0802D298
_0802D160:
	cmp r5, 0x1
	bgt _0802D170
	cmp r5, 0
	beq _0802D178
	b _0802D2DA
	.pool
_0802D170:
	cmp r5, 0x2
	bne _0802D176
	b _0802D2D6
_0802D176:
	b _0802D2DA
_0802D178:
	movs r0, 0
	bl ResetBgsAndClearDma3BusyFlags
	ldr r1, =gUnknown_082FE164
	movs r0, 0
	movs r2, 0x4
	bl InitBgsFromTemplates
	ldr r0, =gUnknown_082FE174
	bl InitWindows
	bl reset_temp_tile_data_buffers
	ldr r0, [r6]
	bl sub_802C974
	bl sub_802DD08
	ldr r0, =gPkmnJumpBgPal
	movs r1, 0
	movs r2, 0x20
	bl LoadPalette
	ldr r1, =gPkmnJumpBgGfx
	str r5, [sp]
	movs r0, 0x3
	movs r2, 0
	movs r3, 0
	bl decompress_and_copy_tile_data_to_vram
	ldr r1, =gPkmnJumpBgTilemap
	movs r4, 0x1
	str r4, [sp]
	movs r0, 0x3
	movs r2, 0
	movs r3, 0
	bl decompress_and_copy_tile_data_to_vram
	ldr r0, =gPkmnJumpVenusaurPal
	movs r1, 0x30
	movs r2, 0x20
	bl LoadPalette
	ldr r1, =gPkmnJumpVenusaurGfx
	str r5, [sp]
	movs r0, 0x2
	movs r2, 0
	movs r3, 0
	bl decompress_and_copy_tile_data_to_vram
	ldr r1, =gPkmnJumpVenusaurTilemap
	str r4, [sp]
	movs r0, 0x2
	movs r2, 0
	movs r3, 0
	bl decompress_and_copy_tile_data_to_vram
	ldr r0, =gPkmnJumpResultsPal
	movs r1, 0x10
	movs r2, 0x20
	bl LoadPalette
	ldr r1, =gPkmnJumpResultsGfx
	str r5, [sp]
	movs r0, 0x1
	movs r2, 0
	movs r3, 0
	bl decompress_and_copy_tile_data_to_vram
	ldr r1, =gPkmnJumpResultsTilemap
	str r4, [sp]
	movs r0, 0x1
	movs r2, 0
	movs r3, 0
	bl decompress_and_copy_tile_data_to_vram
	ldr r0, =gPkmnJumpPal3
	movs r1, 0x20
	movs r2, 0x20
	bl LoadPalette
	ldr r1, [r6]
	movs r0, 0xD3
	lsls r0, 1
	adds r1, r0
	movs r0, 0
	bl SetBgTilemapBuffer
	movs r0, 0x20
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl FillBgTilemapBufferRect_Palette0
	bl sub_802DB8C
	movs r0, 0
	bl sub_802DD64
	movs r0, 0
	movs r1, 0x1
	movs r2, 0xE0
	bl sub_8098C6C
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	movs r0, 0x2
	bl CopyBgTilemapBufferToVram
	movs r0, 0x1
	bl CopyBgTilemapBufferToVram
	bl sub_8199D98
	b _0802D2CC
	.pool
_0802D298:
	bl free_temp_tile_data_buffers_if_possible
	lsls r0, 24
	cmp r0, 0
	bne _0802D2DA
	bl sub_802DBF8
	ldr r0, [r6]
	bl sub_802CE9C
	ldr r0, [r6]
	movs r1, 0x6
	bl sub_802CF50
	movs r0, 0x3
	bl ShowBg
	movs r0, 0
	bl ShowBg
	movs r0, 0x2
	bl ShowBg
	movs r0, 0x1
	bl HideBg
_0802D2CC:
	ldr r1, [r6]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D2DA
_0802D2D6:
	movs r0, 0x1
	str r0, [r1]
_0802D2DA:
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_802D150

	thumb_func_start sub_802D2E4
sub_802D2E4: @ 802D2E4
	push {r4,lr}
	ldr r4, =gUnknown_02022D00
	ldr r0, [r4]
	ldrh r0, [r0, 0x4]
	cmp r0, 0x1
	beq _0802D310
	cmp r0, 0x1
	bgt _0802D300
	cmp r0, 0
	beq _0802D30A
	b _0802D34A
	.pool
_0802D300:
	cmp r0, 0x2
	beq _0802D322
	cmp r0, 0x3
	beq _0802D33A
	b _0802D34A
_0802D30A:
	bl sub_802DE1C
	b _0802D330
_0802D310:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D34A
	movs r0, 0
	bl sub_802DF70
	b _0802D330
_0802D322:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D34A
	bl sub_802DFD4
_0802D330:
	ldr r1, [r4]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D34A
_0802D33A:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D34A
	ldr r1, [r4]
	movs r0, 0x1
	str r0, [r1]
_0802D34A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_802D2E4

	thumb_func_start sub_802D350
sub_802D350: @ 802D350
	push {r4,lr}
	ldr r4, =gUnknown_02022D00
	ldr r0, [r4]
	ldrh r0, [r0, 0x4]
	cmp r0, 0x1
	beq _0802D37C
	cmp r0, 0x1
	bgt _0802D36C
	cmp r0, 0
	beq _0802D376
	b _0802D3B6
	.pool
_0802D36C:
	cmp r0, 0x2
	beq _0802D38E
	cmp r0, 0x3
	beq _0802D3A6
	b _0802D3B6
_0802D376:
	bl sub_802DE1C
	b _0802D39C
_0802D37C:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D3B6
	movs r0, 0x1
	bl sub_802DF70
	b _0802D39C
_0802D38E:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D3B6
	bl sub_802DFD4
_0802D39C:
	ldr r1, [r4]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D3B6
_0802D3A6:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D3B6
	ldr r1, [r4]
	movs r0, 0x1
	str r0, [r1]
_0802D3B6:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_802D350

	thumb_func_start sub_802D3BC
sub_802D3BC: @ 802D3BC
	push {r4,r5,lr}
	bl sub_802C8AC
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	ldrh r0, [r0, 0x4]
	cmp r0, 0
	beq _0802D3DC
	cmp r0, 0x1
	beq _0802D410
	b _0802D43E
	.pool
_0802D3DC:
	movs r4, 0
	cmp r4, r5
	bge _0802D3F8
_0802D3E2:
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	lsls r1, r4, 1
	adds r0, 0x1C
	adds r0, r1
	ldrb r0, [r0]
	bl ClearWindowTilemap
	adds r4, 0x1
	cmp r4, r5
	blt _0802D3E2
_0802D3F8:
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	ldr r0, =gUnknown_02022D00
	ldr r1, [r0]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D43E
	.pool
_0802D410:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D43E
	movs r4, 0
	cmp r4, r5
	bge _0802D436
_0802D420:
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	lsls r1, r4, 1
	adds r0, 0x1C
	adds r0, r1
	ldrb r0, [r0]
	bl RemoveWindow
	adds r4, 0x1
	cmp r4, r5
	blt _0802D420
_0802D436:
	ldr r0, =gUnknown_02022D00
	ldr r1, [r0]
	movs r0, 0x1
	str r0, [r1]
_0802D43E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D3BC

	thumb_func_start sub_802D448
sub_802D448: @ 802D448
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_02022D00
	ldr r0, [r5]
	ldrh r4, [r0, 0x4]
	cmp r4, 0x1
	beq _0802D4A4
	cmp r4, 0x1
	bgt _0802D464
	cmp r4, 0
	beq _0802D46A
	b _0802D4EC
	.pool
_0802D464:
	cmp r4, 0x2
	beq _0802D4DC
	b _0802D4EC
_0802D46A:
	movs r0, 0x1
	movs r1, 0x8
	movs r2, 0x14
	movs r3, 0x2
	bl sub_802DA9C
	ldr r1, [r5]
	strh r0, [r1, 0x12]
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gText_WantToPlayAgain2
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0
	bl AddTextPrinterParameterized
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x2
	bl CopyWindowToVram
	b _0802D4D2
	.pool
_0802D4A4:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D4EC
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	bl PutWindowTilemap
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x1
	movs r2, 0xE
	bl DrawTextBorderOuter
	movs r0, 0x17
	movs r1, 0x7
	movs r2, 0
	bl sub_802DB18
	movs r0, 0
	bl CopyBgTilemapBufferToVram
_0802D4D2:
	ldr r1, [r5]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D4EC
_0802D4DC:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D4EC
	ldr r1, [r5]
	movs r0, 0x1
	str r0, [r1]
_0802D4EC:
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_802D448

	thumb_func_start sub_802D4F4
sub_802D4F4: @ 802D4F4
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_02022D00
	ldr r0, [r5]
	ldrh r4, [r0, 0x4]
	cmp r4, 0x1
	beq _0802D550
	cmp r4, 0x1
	bgt _0802D510
	cmp r4, 0
	beq _0802D516
	b _0802D58E
	.pool
_0802D510:
	cmp r4, 0x2
	beq _0802D57E
	b _0802D58E
_0802D516:
	movs r0, 0x2
	movs r1, 0x7
	movs r2, 0x1A
	movs r3, 0x4
	bl sub_802DA9C
	ldr r1, [r5]
	strh r0, [r1, 0x12]
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gText_SavingDontTurnOffPower
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0
	bl AddTextPrinterParameterized
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x2
	bl CopyWindowToVram
	b _0802D574
	.pool
_0802D550:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D58E
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	bl PutWindowTilemap
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x1
	movs r2, 0xE
	bl DrawTextBorderOuter
	movs r0, 0
	bl CopyBgTilemapBufferToVram
_0802D574:
	ldr r1, [r5]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D58E
_0802D57E:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D58E
	ldr r1, [r5]
	movs r0, 0x1
	str r0, [r1]
_0802D58E:
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_802D4F4

	thumb_func_start sub_802D598
sub_802D598: @ 802D598
	push {r4,r5,lr}
	ldr r5, =gUnknown_02022D00
	ldr r0, [r5]
	ldrh r4, [r0, 0x4]
	cmp r4, 0
	beq _0802D5B0
	cmp r4, 0x1
	beq _0802D5C8
	b _0802D5DE
	.pool
_0802D5B0:
	bl sub_802DA14
	bl sub_8198C78
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	ldr r1, [r5]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D5DE
_0802D5C8:
	bl sub_802DA44
	cmp r0, 0
	bne _0802D5DE
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D5DE
	ldr r0, [r5]
	str r4, [r0]
_0802D5DE:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_802D598

	thumb_func_start sub_802D5E4
sub_802D5E4: @ 802D5E4
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_02022D00
	ldr r0, [r5]
	ldrh r4, [r0, 0x4]
	cmp r4, 0x1
	beq _0802D640
	cmp r4, 0x1
	bgt _0802D600
	cmp r4, 0
	beq _0802D606
	b _0802D67E
	.pool
_0802D600:
	cmp r4, 0x2
	beq _0802D66E
	b _0802D67E
_0802D606:
	movs r0, 0x2
	movs r1, 0x8
	movs r2, 0x16
	movs r3, 0x4
	bl sub_802DA9C
	ldr r1, [r5]
	strh r0, [r1, 0x12]
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gText_SomeoneDroppedOut2
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0
	bl AddTextPrinterParameterized
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x2
	bl CopyWindowToVram
	b _0802D664
	.pool
_0802D640:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D67E
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	bl PutWindowTilemap
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x1
	movs r2, 0xE
	bl DrawTextBorderOuter
	movs r0, 0
	bl CopyBgTilemapBufferToVram
_0802D664:
	ldr r1, [r5]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D67E
_0802D66E:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D67E
	ldr r1, [r5]
	movs r0, 0x1
	str r0, [r1]
_0802D67E:
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_802D5E4

	thumb_func_start sub_802D688
sub_802D688: @ 802D688
	push {r4,r5,lr}
	sub sp, 0xC
	ldr r5, =gUnknown_02022D00
	ldr r0, [r5]
	ldrh r4, [r0, 0x4]
	cmp r4, 0x1
	beq _0802D6E4
	cmp r4, 0x1
	bgt _0802D6A4
	cmp r4, 0
	beq _0802D6AA
	b _0802D722
	.pool
_0802D6A4:
	cmp r4, 0x2
	beq _0802D712
	b _0802D722
_0802D6AA:
	movs r0, 0x7
	movs r1, 0xA
	movs r2, 0x10
	movs r3, 0x2
	bl sub_802DA9C
	ldr r1, [r5]
	strh r0, [r1, 0x12]
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gText_CommunicationStandby4
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0
	bl AddTextPrinterParameterized
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x2
	bl CopyWindowToVram
	b _0802D708
	.pool
_0802D6E4:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D722
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	bl PutWindowTilemap
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x1
	movs r2, 0xE
	bl DrawTextBorderOuter
	movs r0, 0
	bl CopyBgTilemapBufferToVram
_0802D708:
	ldr r1, [r5]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D722
_0802D712:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802D722
	ldr r1, [r5]
	movs r0, 0x1
	str r0, [r1]
_0802D722:
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_802D688

	thumb_func_start sub_802D72C
sub_802D72C: @ 802D72C
	push {r4,r5,lr}
	ldr r5, =gUnknown_02022D00
	ldr r0, [r5]
	ldrh r4, [r0, 0x4]
	cmp r4, 0
	beq _0802D744
	cmp r4, 0x1
	beq _0802D752
	b _0802D75E
	.pool
_0802D744:
	bl sub_802D044
	ldr r1, [r5]
	ldrh r0, [r1, 0x4]
	adds r0, 0x1
	strh r0, [r1, 0x4]
	b _0802D75E
_0802D752:
	bl sub_802D068
	cmp r0, 0
	bne _0802D75E
	ldr r0, [r5]
	str r4, [r0]
_0802D75E:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_802D72C

	thumb_func_start sub_802D764
sub_802D764: @ 802D764
	push {lr}
	ldr r1, =gUnknown_02022D00
	ldr r0, [r1]
	movs r2, 0
	strb r2, [r0, 0xA]
	ldr r0, [r1]
	strb r2, [r0, 0xB]
	ldr r2, [r1]
	movs r0, 0x6
	strb r0, [r2, 0xC]
	ldr r0, [r1]
	ldrb r0, [r0, 0xC]
	bl sub_802DC9C
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D764

	thumb_func_start sub_802D788
sub_802D788: @ 802D788
	push {r4,lr}
	ldr r0, =gUnknown_02022D00
	ldr r2, [r0]
	ldrb r3, [r2, 0xA]
	adds r4, r0, 0
	cmp r3, 0
	beq _0802D7A0
	cmp r3, 0x1
	beq _0802D7DA
	b _0802D7DE
	.pool
_0802D7A0:
	ldrb r0, [r2, 0xB]
	adds r0, 0x1
	strb r0, [r2, 0xB]
	ldr r1, [r4]
	ldrb r0, [r1, 0xB]
	cmp r0, 0xA
	bls _0802D7CA
	strb r3, [r1, 0xB]
	ldr r0, [r4]
	ldrb r1, [r0, 0xC]
	adds r1, 0x1
	strb r1, [r0, 0xC]
	ldr r1, [r4]
	ldrb r0, [r1, 0xC]
	cmp r0, 0x9
	bls _0802D7CA
	strb r3, [r1, 0xC]
	ldr r1, [r4]
	ldrb r0, [r1, 0xA]
	adds r0, 0x1
	strb r0, [r1, 0xA]
_0802D7CA:
	ldr r0, [r4]
	ldrb r0, [r0, 0xC]
	bl sub_802DC9C
	ldr r0, [r4]
	ldrb r0, [r0, 0xC]
	cmp r0, 0x7
	bne _0802D7DE
_0802D7DA:
	movs r0, 0
	b _0802D7E0
_0802D7DE:
	movs r0, 0x1
_0802D7E0:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802D788

	thumb_func_start sub_802D7E8
sub_802D7E8: @ 802D7E8
	push {r4,r5,lr}
	sub sp, 0xC
	adds r4, r1, 0
	lsls r0, 16
	lsrs r0, 16
	lsls r4, 16
	lsrs r4, 16
	ldr r5, =gUnknown_02022D00
	ldr r1, [r5]
	adds r1, 0x26
	adds r2, r4, 0
	bl CopyItemNameHandlePlural
	ldr r0, [r5]
	adds r0, 0x66
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0x1
	bl ConvertIntToDecimalStringN
	bl DynamicPlaceholderTextUtil_Reset
	ldr r1, [r5]
	adds r1, 0x26
	movs r0, 0
	bl DynamicPlaceholderTextUtil_SetPlaceholderPtr
	ldr r1, [r5]
	adds r1, 0x66
	movs r0, 0x1
	bl DynamicPlaceholderTextUtil_SetPlaceholderPtr
	ldr r0, [r5]
	adds r0, 0xA6
	ldr r1, =gText_AwesomeWonF701F700
	bl DynamicPlaceholderTextUtil_ExpandPlaceholders
	movs r0, 0x4
	movs r1, 0x8
	movs r2, 0x16
	movs r3, 0x4
	bl sub_802DA9C
	ldr r2, [r5]
	movs r4, 0
	movs r3, 0
	strh r0, [r2, 0x12]
	lsls r0, 24
	lsrs r0, 24
	adds r2, 0xA6
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	str r3, [sp, 0x8]
	movs r1, 0x1
	bl AddTextPrinterParameterized
	ldr r0, [r5]
	ldrb r0, [r0, 0x12]
	movs r1, 0x2
	bl CopyWindowToVram
	ldr r1, [r5]
	ldr r0, =0x0000016f
	strh r0, [r1, 0x14]
	strb r4, [r1, 0xD]
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D7E8

	thumb_func_start sub_802D884
sub_802D884: @ 802D884
	push {r4-r6,lr}
	sub sp, 0xC
	lsls r0, 16
	lsrs r0, 16
	ldr r4, =gUnknown_02022D00
	ldr r1, [r4]
	adds r1, 0x26
	bl CopyItemName
	bl DynamicPlaceholderTextUtil_Reset
	ldr r1, [r4]
	adds r1, 0x26
	movs r0, 0
	bl DynamicPlaceholderTextUtil_SetPlaceholderPtr
	ldr r0, [r4]
	adds r0, 0xA6
	ldr r1, =gText_FilledStorageSpace2
	bl DynamicPlaceholderTextUtil_ExpandPlaceholders
	movs r0, 0x4
	movs r1, 0x8
	movs r2, 0x16
	movs r3, 0x4
	bl sub_802DA9C
	ldr r2, [r4]
	movs r6, 0
	movs r5, 0
	strh r0, [r2, 0x12]
	lsls r0, 24
	lsrs r0, 24
	adds r2, 0xA6
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0
	bl AddTextPrinterParameterized
	ldr r0, [r4]
	ldrb r0, [r0, 0x12]
	movs r1, 0x2
	bl CopyWindowToVram
	ldr r0, [r4]
	strh r5, [r0, 0x14]
	strb r6, [r0, 0xD]
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D884

	thumb_func_start sub_802D8FC
sub_802D8FC: @ 802D8FC
	push {r4-r6,lr}
	sub sp, 0xC
	lsls r0, 16
	lsrs r0, 16
	ldr r4, =gUnknown_02022D00
	ldr r1, [r4]
	adds r1, 0x26
	bl CopyItemName
	bl DynamicPlaceholderTextUtil_Reset
	ldr r1, [r4]
	adds r1, 0x26
	movs r0, 0
	bl DynamicPlaceholderTextUtil_SetPlaceholderPtr
	ldr r0, [r4]
	adds r0, 0xA6
	ldr r1, =gText_CantHoldMore
	bl DynamicPlaceholderTextUtil_ExpandPlaceholders
	movs r0, 0x4
	movs r1, 0x9
	movs r2, 0x16
	movs r3, 0x2
	bl sub_802DA9C
	ldr r2, [r4]
	movs r6, 0
	movs r5, 0
	strh r0, [r2, 0x12]
	lsls r0, 24
	lsrs r0, 24
	adds r2, 0xA6
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0xFF
	str r1, [sp, 0x4]
	str r5, [sp, 0x8]
	movs r1, 0x1
	movs r3, 0
	bl AddTextPrinterParameterized
	ldr r0, [r4]
	ldrb r0, [r0, 0x12]
	movs r1, 0x2
	bl CopyWindowToVram
	ldr r0, [r4]
	strh r5, [r0, 0x14]
	strb r6, [r0, 0xD]
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802D8FC

	thumb_func_start sub_802D974
sub_802D974: @ 802D974
	push {r4,lr}
	ldr r4, =gUnknown_02022D00
	ldr r0, [r4]
	ldrb r0, [r0, 0xD]
	cmp r0, 0x1
	beq _0802D9C8
	cmp r0, 0x1
	bgt _0802D990
	cmp r0, 0
	beq _0802D99A
	b _0802DA0C
	.pool
_0802D990:
	cmp r0, 0x2
	beq _0802D9EE
	cmp r0, 0x3
	beq _0802DA02
	b _0802DA0C
_0802D99A:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802DA0C
	ldr r0, [r4]
	ldrb r0, [r0, 0x12]
	bl PutWindowTilemap
	ldr r0, [r4]
	ldrb r0, [r0, 0x12]
	movs r1, 0x1
	movs r2, 0xE
	bl DrawTextBorderOuter
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	ldr r1, [r4]
	ldrb r0, [r1, 0xD]
	adds r0, 0x1
	strb r0, [r1, 0xD]
	b _0802DA0C
_0802D9C8:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802DA0C
	ldr r1, [r4]
	ldrh r0, [r1, 0x14]
	cmp r0, 0
	bne _0802D9E0
	ldrb r0, [r1, 0xD]
	adds r0, 0x2
	b _0802DA00
_0802D9E0:
	ldrh r0, [r1, 0x14]
	bl PlayFanfare
	ldr r1, [r4]
	ldrb r0, [r1, 0xD]
	adds r0, 0x1
	strb r0, [r1, 0xD]
_0802D9EE:
	bl IsFanfareTaskInactive
	lsls r0, 24
	cmp r0, 0
	beq _0802DA0C
	ldr r0, =gUnknown_02022D00
	ldr r1, [r0]
	ldrb r0, [r1, 0xD]
	adds r0, 0x1
_0802DA00:
	strb r0, [r1, 0xD]
_0802DA02:
	movs r0, 0
	b _0802DA0E
	.pool
_0802DA0C:
	movs r0, 0x1
_0802DA0E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802D974

	thumb_func_start sub_802DA14
sub_802DA14: @ 802DA14
	push {r4,lr}
	ldr r4, =gUnknown_02022D00
	ldr r0, [r4]
	ldrh r0, [r0, 0x12]
	cmp r0, 0xFF
	beq _0802DA38
	lsls r0, 24
	lsrs r0, 24
	bl rbox_fill_rectangle
	ldr r0, [r4]
	ldrb r0, [r0, 0x12]
	movs r1, 0x1
	bl CopyWindowToVram
	ldr r1, [r4]
	movs r0, 0
	strb r0, [r1, 0xD]
_0802DA38:
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DA14

	thumb_func_start sub_802DA44
sub_802DA44: @ 802DA44
	push {r4,lr}
	ldr r4, =gUnknown_02022D00
	ldr r1, [r4]
	ldrh r0, [r1, 0x12]
	cmp r0, 0xFF
	bne _0802DA58
_0802DA50:
	movs r0, 0
	b _0802DA84
	.pool
_0802DA58:
	ldrb r0, [r1, 0xD]
	cmp r0, 0
	bne _0802DA7E
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802DA82
	ldr r0, [r4]
	ldrb r0, [r0, 0x12]
	bl RemoveWindow
	ldr r1, [r4]
	movs r0, 0xFF
	strh r0, [r1, 0x12]
	ldrb r0, [r1, 0xD]
	adds r0, 0x1
	strb r0, [r1, 0xD]
	b _0802DA50
_0802DA7E:
	cmp r0, 0x1
	beq _0802DA50
_0802DA82:
	movs r0, 0x1
_0802DA84:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802DA44

	thumb_func_start sub_802DA8C
sub_802DA8C: @ 802DA8C
	push {lr}
	bl Menu_ProcessInputNoWrapClearOnChoose
	lsls r0, 24
	asrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end sub_802DA8C

	thumb_func_start sub_802DA9C
sub_802DA9C: @ 802DA9C
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r6, =0xffffff00
	ldr r4, [sp]
	ands r4, r6
	lsls r0, 24
	lsrs r0, 16
	ldr r5, =0xffff00ff
	ands r4, r5
	orrs r4, r0
	lsls r1, 24
	lsrs r1, 8
	ldr r0, =0xff00ffff
	ands r4, r0
	orrs r4, r1
	lsls r2, 24
	ldr r0, =0x00ffffff
	ands r4, r0
	orrs r4, r2
	str r4, [sp]
	lsls r3, 24
	lsrs r3, 24
	ldr r0, [sp, 0x4]
	ands r0, r6
	orrs r0, r3
	ands r0, r5
	movs r1, 0xF0
	lsls r1, 4
	orrs r0, r1
	ldr r1, =0x0000ffff
	ands r0, r1
	movs r1, 0x86
	lsls r1, 15
	orrs r0, r1
	str r0, [sp, 0x4]
	mov r0, sp
	bl AddWindow
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	lsls r0, r4, 24
	lsrs r0, 24
	movs r1, 0x11
	bl FillWindowPixelBuffer
	adds r0, r4, 0
	add sp, 0x8
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802DA9C

	thumb_func_start sub_802DB18
sub_802DB18: @ 802DB18
	push {r4,r5,lr}
	sub sp, 0x8
	adds r3, r2, 0
	lsls r3, 24
	lsrs r3, 24
	ldr r5, =0xffffff00
	ldr r2, [sp]
	ands r2, r5
	lsls r0, 24
	lsrs r0, 16
	ldr r4, =0xffff00ff
	ands r2, r4
	orrs r2, r0
	lsls r1, 24
	lsrs r1, 8
	ldr r0, =0xff00ffff
	ands r2, r0
	orrs r2, r1
	ldr r0, =0x00ffffff
	ands r2, r0
	movs r0, 0xC0
	lsls r0, 19
	orrs r2, r0
	str r2, [sp]
	ldr r0, [sp, 0x4]
	ands r0, r5
	movs r1, 0x4
	orrs r0, r1
	ands r0, r4
	movs r1, 0x80
	lsls r1, 2
	orrs r0, r1
	ldr r1, =0x0000ffff
	ands r0, r1
	movs r1, 0xAC
	lsls r1, 14
	orrs r0, r1
	str r0, [sp, 0x4]
	mov r0, sp
	movs r1, 0x1
	movs r2, 0xD
	bl CreateYesNoMenu
	add sp, 0x8
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DB18

	thumb_func_start sub_802DB8C
sub_802DB8C: @ 802DB8C
	push {r4,lr}
	sub sp, 0x10
	ldr r1, =gUnknown_082FE1DC
	add r0, sp, 0xC
	movs r2, 0x3
	bl memcpy
	movs r0, 0
	bl PutWindowTilemap
	movs r0, 0x1
	bl PutWindowTilemap
	movs r0, 0
	movs r1, 0
	bl FillWindowPixelBuffer
	movs r0, 0x1
	movs r1, 0
	bl FillWindowPixelBuffer
	add r0, sp, 0xC
	str r0, [sp]
	movs r4, 0
	str r4, [sp, 0x4]
	ldr r0, =gText_SpacePoints2
	str r0, [sp, 0x8]
	movs r0, 0
	movs r1, 0
	movs r2, 0
	movs r3, 0x1
	bl AddTextPrinterParameterized3
	add r0, sp, 0xC
	str r0, [sp]
	str r4, [sp, 0x4]
	ldr r0, =gText_SpaceTimes3
	str r0, [sp, 0x8]
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	movs r3, 0x1
	bl AddTextPrinterParameterized3
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DB8C

	thumb_func_start sub_802DBF8
sub_802DBF8: @ 802DBF8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	bl sub_802C8AC
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	ldr r1, =gUnknown_082FE260
	subs r0, 0x2
	lsls r0, 2
	adds r0, r1
	ldr r5, [r0]
	movs r6, 0
	cmp r6, r10
	bge _0802DC62
	ldr r0, =gMonFrontPicCoords
	mov r9, r0
	ldr r1, =gUnknown_02022D00
	mov r8, r1
_0802DC26:
	lsls r4, r6, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_802C8C8
	adds r1, r0, 0
	ldrh r0, [r1]
	lsls r0, 2
	add r0, r9
	ldrb r3, [r0, 0x1]
	mov r2, r8
	ldr r0, [r2]
	movs r7, 0
	ldrsh r2, [r5, r7]
	adds r3, 0x70
	str r4, [sp]
	bl sub_802C9D4
	mov r1, r8
	ldr r0, [r1]
	movs r2, 0
	ldrsh r1, [r5, r2]
	movs r2, 0x70
	adds r3, r4, 0
	bl sub_802CE48
	adds r5, 0x2
	adds r6, 0x1
	cmp r6, r10
	blt _0802DC26
_0802DC62:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DBF8

	thumb_func_start sub_802DC80
sub_802DC80: @ 802DC80
	ldr r2, =gUnknown_02022D00
	ldr r2, [r2]
	lsls r0, 2
	ldr r3, =0x000081a8
	adds r2, r3
	adds r2, r0
	ldr r0, [r2]
	strh r1, [r0, 0x26]
	bx lr
	.pool
	thumb_func_end sub_802DC80

	thumb_func_start sub_802DC9C
sub_802DC9C: @ 802DC9C
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	adds r1, r4, 0
	bl sub_802CF50
	ldr r0, =gUnknown_082FE1DF
	adds r4, r0
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 13
	movs r0, 0x2
	movs r2, 0
	bl ChangeBgY
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DC9C

	thumb_func_start sub_802DCCC
sub_802DCCC: @ 802DCCC
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	movs r5, 0
	movs r6, 0
_0802DCD6:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _0802DCEA
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	adds r1, r5, 0
	bl sub_802CB14
	adds r6, 0x1
_0802DCEA:
	lsrs r4, 1
	adds r5, 0x1
	cmp r5, 0x4
	ble _0802DCD6
	subs r0, r6, 0x2
	lsls r0, 24
	lsrs r0, 24
	bl sub_802E00C
	adds r0, r6, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802DCCC

	thumb_func_start sub_802DD08
sub_802DD08: @ 802DD08
	push {r4,lr}
	sub sp, 0x10
	mov r1, sp
	movs r0, 0x40
	strb r0, [r1]
	movs r0, 0x5
	strb r0, [r1, 0x1]
	movs r0, 0x8
	strb r0, [r1, 0x2]
	movs r0, 0x6C
	strh r0, [r1, 0x4]
	movs r4, 0x6
	strh r4, [r1, 0x6]
	ldr r0, =gUnknown_082FE1EC
	str r0, [sp, 0x8]
	ldr r0, =gUnknown_082FE1F4
	str r0, [sp, 0xC]
	movs r0, 0x2
	bl sub_8034C54
	movs r0, 0
	movs r1, 0
	mov r2, sp
	bl sub_8034D14
	mov r1, sp
	movs r0, 0x4
	strb r0, [r1, 0x1]
	movs r0, 0x1E
	strh r0, [r1, 0x4]
	mov r0, sp
	strh r4, [r0, 0x6]
	movs r0, 0x1
	movs r1, 0
	mov r2, sp
	bl sub_8034D14
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DD08

	thumb_func_start sub_802DD64
sub_802DD64: @ 802DD64
	push {lr}
	adds r1, r0, 0
	movs r0, 0
	bl sub_8035044
	pop {r0}
	bx r0
	thumb_func_end sub_802DD64

	thumb_func_start sub_802DD74
sub_802DD74: @ 802DD74
	push {lr}
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0x1
	bl sub_8035044
	pop {r0}
	bx r0
	thumb_func_end sub_802DD74

	thumb_func_start sub_802DD88
sub_802DD88: @ 802DD88
	push {lr}
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	bl sub_802CBF0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DD88

	thumb_func_start sub_802DDA0
sub_802DDA0: @ 802DDA0
	push {lr}
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	bl sub_802CC88
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DDA0

	thumb_func_start sub_802DDB8
sub_802DDB8: @ 802DDB8
	push {lr}
	adds r1, r0, 0
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	bl sub_802CC18
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802DDB8

	thumb_func_start sub_802DDCC
sub_802DDCC: @ 802DDCC
	push {lr}
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	bl sub_802CCB0
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DDCC

	thumb_func_start sub_802DDE0
sub_802DDE0: @ 802DDE0
	push {lr}
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	bl sub_802CD3C
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DDE0

	thumb_func_start sub_802DDF4
sub_802DDF4: @ 802DDF4
	push {lr}
	adds r1, r0, 0
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	bl sub_802CD70
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DDF4

	thumb_func_start sub_802DE08
sub_802DE08: @ 802DE08
	push {lr}
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	bl sub_802CD98
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802DE08

	thumb_func_start sub_802DE1C
sub_802DE1C: @ 802DE1C
	push {r4-r7,lr}
	sub sp, 0x8
	bl sub_802C8AC
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r1, =gUnknown_082FE234
	subs r0, r7, 0x2
	lsls r0, 2
	adds r0, r1
	ldr r4, [r0]
	ldr r2, =0xffffff00
	ldr r0, [sp]
	ands r0, r2
	ldr r1, =0x00ffffff
	ands r0, r1
	movs r1, 0x80
	lsls r1, 20
	orrs r0, r1
	str r0, [sp]
	ldr r0, [sp, 0x4]
	ands r0, r2
	movs r1, 0x2
	orrs r0, r1
	ldr r1, =0xffff00ff
	ands r0, r1
	movs r1, 0x80
	lsls r1, 2
	orrs r0, r1
	ldr r1, =0x0000ffff
	ands r0, r1
	movs r1, 0xAC
	lsls r1, 14
	orrs r0, r1
	str r0, [sp, 0x4]
	movs r5, 0
	cmp r5, r7
	bge _0802DEAC
	mov r6, sp
_0802DE6A:
	ldrb r0, [r4]
	lsls r0, 8
	ldr r2, =0xffff00ff
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	ldrb r2, [r4, 0x2]
	lsls r2, 16
	ldr r0, =0xff00ffff
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r0, sp
	bl AddWindow
	ldr r1, =gUnknown_02022D00
	ldr r1, [r1]
	lsls r2, r5, 1
	adds r1, 0x1C
	adds r1, r2
	strh r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	bl ClearWindowTilemap
	ldrh r0, [r6, 0x6]
	adds r0, 0x10
	strh r0, [r6, 0x6]
	adds r4, 0x4
	adds r5, 0x1
	cmp r5, r7
	blt _0802DE6A
_0802DEAC:
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DE1C

	thumb_func_start sub_802DED8
sub_802DED8: @ 802DED8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x10
	adds r5, r0, 0
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	add r0, sp, 0xC
	strb r1, [r0]
	strb r2, [r0, 0x1]
	strb r3, [r0, 0x2]
	ldr r6, =gUnknown_02022D00
	ldr r0, [r6]
	lsls r1, r5, 1
	mov r8, r1
	adds r0, 0x1C
	add r0, r8
	ldrb r0, [r0]
	movs r1, 0
	bl FillWindowPixelBuffer
	lsls r5, 24
	lsrs r5, 24
	adds r0, r5, 0
	bl sub_802C8E8
	adds r1, r0, 0
	movs r2, 0x1
	negs r2, r2
	mov r9, r2
	movs r0, 0x1
	bl GetStringWidth
	movs r4, 0x40
	subs r4, r0
	lsrs r4, 1
	adds r0, r5, 0
	bl sub_802C8E8
	adds r1, r0, 0
	ldr r0, [r6]
	adds r0, 0x1C
	add r0, r8
	ldrb r0, [r0]
	lsls r4, 24
	lsrs r4, 24
	add r2, sp, 0xC
	str r2, [sp]
	mov r2, r9
	str r2, [sp, 0x4]
	str r1, [sp, 0x8]
	movs r1, 0x1
	adds r2, r4, 0
	movs r3, 0x1
	bl AddTextPrinterParameterized3
	ldr r0, [r6]
	adds r0, 0x1C
	add r0, r8
	ldrb r0, [r0]
	movs r1, 0x2
	bl CopyWindowToVram
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DED8

	thumb_func_start sub_802DF70
sub_802DF70: @ 802DF70
	push {r4-r6,lr}
	adds r4, r0, 0
	bl sub_802C8AC
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r4, 0
	bne _0802DF9A
	movs r4, 0
	cmp r4, r5
	bge _0802DFCC
_0802DF86:
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x2
	movs r3, 0x3
	bl sub_802DED8
	adds r4, 0x1
	cmp r4, r5
	blt _0802DF86
	b _0802DFCC
_0802DF9A:
	bl sub_802C8BC
	lsls r0, 16
	lsrs r6, r0, 16
	movs r4, 0
	cmp r4, r5
	bge _0802DFCC
_0802DFA8:
	cmp r6, r4
	beq _0802DFBA
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x2
	movs r3, 0x3
	bl sub_802DED8
	b _0802DFC6
_0802DFBA:
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x4
	movs r3, 0x5
	bl sub_802DED8
_0802DFC6:
	adds r4, 0x1
	cmp r4, r5
	blt _0802DFA8
_0802DFCC:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_802DF70

	thumb_func_start sub_802DFD4
sub_802DFD4: @ 802DFD4
	push {r4,r5,lr}
	bl sub_802C8AC
	lsls r0, 16
	lsrs r5, r0, 16
	movs r4, 0
	cmp r4, r5
	bge _0802DFFA
_0802DFE4:
	ldr r0, =gUnknown_02022D00
	ldr r0, [r0]
	lsls r1, r4, 1
	adds r0, 0x1C
	adds r0, r1
	ldrb r0, [r0]
	bl PutWindowTilemap
	adds r4, 0x1
	cmp r4, r5
	blt _0802DFE4
_0802DFFA:
	movs r0, 0
	bl CopyBgTilemapBufferToVram
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802DFD4

	thumb_func_start sub_802E00C
sub_802E00C: @ 802E00C
	push {r4,lr}
	adds r1, r0, 0
	lsls r1, 24
	lsrs r4, r1, 24
	ldr r0, =gUnknown_02022D00
	ldr r2, [r0]
	movs r0, 0
	str r0, [r2, 0x18]
	lsrs r1, 25
	lsls r1, 16
	movs r0, 0x1
	movs r2, 0
	bl ChangeBgX
	movs r0, 0x1
	ands r4, r0
	lsls r4, 8
	subs r4, 0x28
	lsls r4, 8
	adds r1, r4, 0
	movs r2, 0
	bl ChangeBgY
	movs r0, 0x1
	bl ShowBg
	ldr r0, =sub_802E090
	movs r1, 0x4
	bl CreateTask
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E00C

	thumb_func_start sub_802E058
sub_802E058: @ 802E058
	push {r4,lr}
	ldr r4, =gUnknown_02022D00
	ldr r0, [r4]
	ldr r0, [r0, 0x18]
	cmp r0, 0x1F
	bls _0802E06C
	movs r0, 0
	b _0802E08A
	.pool
_0802E06C:
	movs r0, 0x1
	movs r1, 0x80
	movs r2, 0x1
	bl ChangeBgY
	ldr r1, [r4]
	ldr r0, [r1, 0x18]
	adds r0, 0x1
	str r0, [r1, 0x18]
	cmp r0, 0x1F
	bls _0802E088
	movs r0, 0x1
	bl HideBg
_0802E088:
	movs r0, 0x1
_0802E08A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802E058

	thumb_func_start sub_802E090
sub_802E090: @ 802E090
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_802E058
	cmp r0, 0
	bne _0802E0A4
	adds r0, r4, 0
	bl DestroyTask
_0802E0A4:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_802E090

	thumb_func_start sub_802E0AC
sub_802E0AC: @ 802E0AC
	push {lr}
	sub sp, 0xC
	mov r2, sp
	movs r1, 0x1
	strb r1, [r2]
	ldrh r1, [r0]
	strh r1, [r2, 0x2]
	ldr r1, [r0, 0x4]
	str r1, [sp, 0x8]
	ldr r0, [r0, 0x8]
	str r0, [sp, 0x4]
	mov r0, sp
	bl sub_800FE50
	add sp, 0xC
	pop {r0}
	bx r0
	thumb_func_end sub_802E0AC

	thumb_func_start sub_802E0D0
sub_802E0D0: @ 802E0D0
	push {r4,lr}
	sub sp, 0xC
	adds r4, r1, 0
	ldr r3, =gRecvCmds
	lsls r2, r0, 4
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	movs r1, 0xBC
	lsls r1, 6
	cmp r0, r1
	bne _0802E100
	adds r1, r3, 0x2
	adds r1, r2, r1
	mov r0, sp
	movs r2, 0xC
	bl memcpy
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0802E108
_0802E100:
	movs r0, 0
	b _0802E118
	.pool
_0802E108:
	mov r0, sp
	ldrh r0, [r0, 0x2]
	strh r0, [r4]
	ldr r0, [sp, 0x8]
	str r0, [r4, 0x4]
	ldr r0, [sp, 0x4]
	str r0, [r4, 0x8]
	movs r0, 0x1
_0802E118:
	add sp, 0xC
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802E0D0

	thumb_func_start sub_802E120
sub_802E120: @ 802E120
	push {lr}
	sub sp, 0xC
	mov r2, sp
	movs r1, 0x2
	strb r1, [r2]
	str r0, [sp, 0x4]
	mov r0, sp
	bl sub_800FE50
	add sp, 0xC
	pop {r0}
	bx r0
	thumb_func_end sub_802E120

	thumb_func_start sub_802E138
sub_802E138: @ 802E138
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0xC
	mov r3, sp
	movs r2, 0x3
	strb r2, [r3]
	ldr r3, [r1, 0x8]
	lsls r3, 15
	ldr r2, [sp, 0x8]
	ldr r4, =0x00007fff
	mov r8, r4
	ands r2, r4
	orrs r2, r3
	str r2, [sp, 0x8]
	mov r6, sp
	ldrb r2, [r1, 0x1]
	movs r5, 0x1F
	adds r3, r5, 0
	ands r3, r2
	ldrb r4, [r6, 0x3]
	movs r2, 0x20
	negs r2, r2
	ands r2, r4
	orrs r2, r3
	strb r2, [r6, 0x3]
	mov r3, sp
	ldrb r2, [r1]
	strb r2, [r3, 0x1]
	ldrh r2, [r1, 0x2]
	strh r2, [r3, 0x6]
	mov r4, sp
	ldrh r2, [r1, 0x4]
	mov r1, r8
	ands r2, r1
	ldrh r3, [r4, 0x8]
	ldr r1, =0xffff8000
	ands r1, r3
	orrs r1, r2
	strh r1, [r4, 0x8]
	mov r2, sp
	ldrh r1, [r0, 0x10]
	strb r1, [r2, 0x2]
	mov r3, sp
	ldr r1, [r0, 0x14]
	lsls r1, 5
	ldrb r2, [r3, 0x3]
	ands r5, r2
	orrs r5, r1
	strb r5, [r3, 0x3]
	mov r1, sp
	ldrh r0, [r0, 0xE]
	strh r0, [r1, 0x4]
	mov r0, sp
	bl sub_800FE50
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E138

	thumb_func_start sub_802E1BC
sub_802E1BC: @ 802E1BC
	push {r4,r5,lr}
	sub sp, 0xC
	adds r5, r0, 0
	adds r4, r1, 0
	ldr r2, =gRecvCmds
	ldrh r0, [r2]
	movs r1, 0xFF
	lsls r1, 8
	ands r1, r0
	movs r0, 0xBC
	lsls r0, 6
	cmp r1, r0
	bne _0802E228
	adds r1, r2, 0x2
	mov r0, sp
	movs r2, 0xC
	bl memcpy
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _0802E228
	ldr r0, [sp, 0x8]
	lsrs r0, 15
	str r0, [r4, 0x8]
	mov r0, sp
	ldrb r1, [r0, 0x3]
	lsls r0, r1, 27
	lsrs r0, 27
	strb r0, [r4, 0x1]
	mov r0, sp
	ldrb r0, [r0, 0x1]
	strb r0, [r4]
	mov r0, sp
	ldrh r0, [r0, 0x6]
	strh r0, [r4, 0x2]
	mov r0, sp
	ldrh r0, [r0, 0x8]
	lsls r0, 17
	lsrs r0, 17
	strh r0, [r4, 0x4]
	mov r0, sp
	ldrb r0, [r0, 0x2]
	strh r0, [r5, 0x10]
	lsls r1, 24
	lsrs r1, 29
	str r1, [r5, 0x14]
	mov r0, sp
	ldrh r0, [r0, 0x4]
	strh r0, [r5, 0xE]
	movs r0, 0x1
	b _0802E22A
	.pool
_0802E228:
	movs r0, 0
_0802E22A:
	add sp, 0xC
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_802E1BC

	thumb_func_start sub_802E234
sub_802E234: @ 802E234
	push {r4,lr}
	sub sp, 0xC
	mov r4, sp
	movs r3, 0x4
	strb r3, [r4]
	ldrh r3, [r0, 0x10]
	strb r3, [r4, 0x1]
	ldr r3, [r0, 0x14]
	strb r3, [r4, 0x2]
	ldr r3, [r0, 0x18]
	strb r3, [r4, 0x3]
	mov r3, sp
	ldrh r0, [r0, 0xE]
	strh r0, [r3, 0x4]
	mov r0, sp
	strb r1, [r0, 0x6]
	strh r2, [r0, 0x8]
	bl sub_800FE50
	add sp, 0xC
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_802E234

	thumb_func_start sub_802E264
sub_802E264: @ 802E264
	push {r4-r6,lr}
	sub sp, 0xC
	adds r4, r0, 0
	adds r5, r2, 0
	adds r6, r3, 0
	ldr r3, =gRecvCmds
	lsls r2, r1, 4
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	movs r1, 0xBC
	lsls r1, 6
	cmp r0, r1
	bne _0802E2C4
	adds r1, r3, 0x2
	adds r1, r2, r1
	mov r0, sp
	movs r2, 0xC
	bl memcpy
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _0802E2C4
	mov r0, sp
	ldrb r0, [r0, 0x1]
	strh r0, [r4, 0x10]
	mov r0, sp
	ldrb r0, [r0, 0x2]
	str r0, [r4, 0x14]
	mov r0, sp
	ldrb r0, [r0, 0x3]
	str r0, [r4, 0x18]
	mov r0, sp
	ldrh r0, [r0, 0x4]
	strh r0, [r4, 0xE]
	mov r0, sp
	ldrb r0, [r0, 0x6]
	strb r0, [r5]
	mov r0, sp
	ldrh r0, [r0, 0x8]
	strh r0, [r6]
	movs r0, 0x1
	b _0802E2C6
	.pool
_0802E2C4:
	movs r0, 0
_0802E2C6:
	add sp, 0xC
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_802E264

	thumb_func_start sub_802E2D0
sub_802E2D0: @ 802E2D0
	push {r4,lr}
	sub sp, 0xC
	adds r4, r0, 0
	ldr r3, =gRecvCmds
	lsls r2, r1, 4
	adds r0, r2, r3
	ldrh r1, [r0]
	movs r0, 0xFF
	lsls r0, 8
	ands r0, r1
	movs r1, 0xBC
	lsls r1, 6
	cmp r0, r1
	bne _0802E320
	adds r1, r3, 0x2
	adds r1, r2, r1
	mov r0, sp
	movs r2, 0xC
	bl memcpy
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _0802E320
	mov r0, sp
	ldrb r0, [r0, 0x1]
	strh r0, [r4, 0x10]
	mov r0, sp
	ldrb r0, [r0, 0x2]
	str r0, [r4, 0x14]
	mov r0, sp
	ldrb r0, [r0, 0x3]
	str r0, [r4, 0x18]
	mov r0, sp
	ldrh r0, [r0, 0x4]
	strh r0, [r4, 0xE]
	movs r0, 0x1
	b _0802E322
	.pool
_0802E320:
	movs r0, 0
_0802E322:
	add sp, 0xC
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802E2D0

	thumb_func_start sub_802E32C
sub_802E32C: @ 802E32C
	ldr r0, =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0xFE
	lsls r1, 1
	adds r0, r1
	bx lr
	.pool
	thumb_func_end sub_802E32C

	thumb_func_start ResetPokeJumpResults
ResetPokeJumpResults: @ 802E33C
	push {lr}
	bl sub_802E32C
	movs r1, 0
	strh r1, [r0]
	str r1, [r0, 0xC]
	strh r1, [r0, 0x4]
	strh r1, [r0, 0x6]
	str r1, [r0, 0x8]
	strh r1, [r0, 0x2]
	pop {r0}
	bx r0
	thumb_func_end ResetPokeJumpResults

	thumb_func_start sub_802E354
sub_802E354: @ 802E354
	push {r4-r6,lr}
	adds r4, r0, 0
	lsls r1, 16
	lsrs r5, r1, 16
	lsls r2, 16
	lsrs r6, r2, 16
	bl sub_802E32C
	adds r1, r0, 0
	movs r2, 0
	ldr r0, [r1, 0xC]
	cmp r0, r4
	bcs _0802E378
	ldr r0, =0x00018696
	cmp r4, r0
	bhi _0802E378
	str r4, [r1, 0xC]
	movs r2, 0x1
_0802E378:
	ldrh r0, [r1]
	cmp r0, r5
	bcs _0802E388
	ldr r0, =0x0000270f
	cmp r5, r0
	bhi _0802E388
	strh r5, [r1]
	movs r2, 0x1
_0802E388:
	ldrh r0, [r1, 0x4]
	cmp r0, r6
	bcs _0802E398
	ldr r0, =0x0000270f
	cmp r6, r0
	bhi _0802E398
	strh r6, [r1, 0x4]
	movs r2, 0x1
_0802E398:
	adds r0, r2, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802E354

	thumb_func_start sub_802E3A8
sub_802E3A8: @ 802E3A8
	push {lr}
	bl sub_802E32C
	adds r2, r0, 0
	ldrh r1, [r2, 0x6]
	ldr r0, =0x0000270e
	cmp r1, r0
	bhi _0802E3BC
	adds r0, r1, 0x1
	strh r0, [r2, 0x6]
_0802E3BC:
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E3A8

	thumb_func_start sub_802E3C4
sub_802E3C4: @ 802E3C4
	push {r4,lr}
	ldr r4, =sub_802E3E4
	adds r0, r4, 0
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	bl _call_via_r4
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E3C4

	thumb_func_start sub_802E3E4
sub_802E3E4: @ 802E3E4
	push {r4-r7,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r7, r0, r1
	movs r1, 0
	ldrsh r0, [r7, r1]
	cmp r0, 0x1
	beq _0802E4A8
	cmp r0, 0x1
	bgt _0802E40C
	cmp r0, 0
	beq _0802E416
	b _0802E4F6
	.pool
_0802E40C:
	cmp r0, 0x2
	beq _0802E4B4
	cmp r0, 0x3
	beq _0802E4DC
	b _0802E4F6
_0802E416:
	ldr r0, =gUnknown_082FE270
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, 0x4]
	ldr r1, =gText_PkmnJumpRecords
	movs r0, 0x1
	movs r2, 0
	bl GetStringWidth
	adds r4, r0, 0
	movs r6, 0
	ldr r5, =gUnknown_082FE278
_0802E430:
	ldr r1, [r5]
	movs r0, 0x1
	movs r2, 0
	bl GetStringWidth
	adds r0, 0x26
	cmp r0, r4
	ble _0802E442
	adds r4, r0, 0
_0802E442:
	adds r5, 0x4
	adds r6, 0x1
	cmp r6, 0x2
	bls _0802E430
	adds r0, r4, 0x7
	cmp r0, 0
	bge _0802E452
	adds r0, 0x7
_0802E452:
	asrs r4, r0, 3
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _0802E45E
	adds r4, 0x1
_0802E45E:
	movs r1, 0x1E
	subs r1, r4
	lsrs r0, r1, 31
	adds r1, r0
	asrs r1, 1
	lsls r1, 24
	lsrs r1, 16
	ldr r2, =0xffff00ff
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	lsls r2, r4, 24
	ldr r1, =0x00ffffff
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r0, sp
	bl AddWindow
	strh r0, [r7, 0x2]
	ldrh r0, [r7, 0x2]
	adds r1, r4, 0
	bl sub_802E500
	ldrb r0, [r7, 0x2]
	movs r1, 0x3
	b _0802E4CA
	.pool
_0802E4A8:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802E4F6
	b _0802E4CE
_0802E4B4:
	ldr r0, =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _0802E4F6
	ldrb r0, [r7, 0x2]
	bl rbox_fill_rectangle
	ldrb r0, [r7, 0x2]
	movs r1, 0x1
_0802E4CA:
	bl CopyWindowToVram
_0802E4CE:
	ldrh r0, [r7]
	adds r0, 0x1
	strh r0, [r7]
	b _0802E4F6
	.pool
_0802E4DC:
	bl IsDma3ManagerBusyWithBgCopy
	lsls r0, 24
	cmp r0, 0
	bne _0802E4F6
	ldrb r0, [r7, 0x2]
	bl RemoveWindow
	adds r0, r4, 0
	bl DestroyTask
	bl EnableBothScriptContexts
_0802E4F6:
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_802E3E4

	thumb_func_start sub_802E500
sub_802E500: @ 802E500
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	str r1, [sp, 0x1C]
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x18]
	bl sub_802E32C
	ldrh r1, [r0]
	str r1, [sp, 0xC]
	ldr r1, [r0, 0xC]
	str r1, [sp, 0x10]
	ldrh r0, [r0, 0x4]
	str r0, [sp, 0x14]
	ldr r0, [sp, 0x18]
	lsls r4, r0, 24
	lsrs r4, 24
	ldr r5, =0x0000021d
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0xD0
	bl LoadUserWindowBorderGfx_
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0xD
	bl DrawTextBorderOuter
	adds r0, r4, 0
	movs r1, 0x11
	bl FillWindowPixelBuffer
	ldr r5, =gText_PkmnJumpRecords
	ldr r1, [sp, 0x1C]
	lsls r2, r1, 3
	movs r0, 0x1
	adds r1, r5, 0
	bl GetStringCenterAlignXOffset
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0xFF
	str r0, [sp, 0x4]
	movs r0, 0
	str r0, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0x1
	adds r2, r5, 0
	bl AddTextPrinterParameterized
	movs r6, 0
	adds r7, r4, 0
	movs r0, 0xFF
	mov r10, r0
	mov r9, r6
	mov r1, sp
	adds r1, 0xC
	str r1, [sp, 0x20]
	movs r0, 0xC8
	lsls r0, 21
	mov r8, r0
	ldr r5, =gStringVar1
_0802E58A:
	ldr r1, =gUnknown_082FE278
	lsls r0, r6, 2
	adds r0, r1
	ldr r2, [r0]
	mov r1, r8
	lsrs r4, r1, 24
	str r4, [sp]
	mov r0, r10
	str r0, [sp, 0x4]
	mov r1, r9
	str r1, [sp, 0x8]
	adds r0, r7, 0
	movs r1, 0x1
	movs r3, 0
	bl AddTextPrinterParameterized
	ldr r0, [sp, 0x20]
	ldm r0!, {r1}
	str r0, [sp, 0x20]
	adds r0, r5, 0
	movs r2, 0
	movs r3, 0x5
	bl ConvertIntToDecimalStringN
	adds r0, r5, 0
	bl sub_802E620
	movs r0, 0x1
	adds r1, r5, 0
	movs r2, 0
	bl GetStringWidth
	ldr r1, [sp, 0x1C]
	lsls r3, r1, 3
	subs r3, r0
	lsls r3, 24
	lsrs r3, 24
	str r4, [sp]
	mov r0, r10
	str r0, [sp, 0x4]
	mov r1, r9
	str r1, [sp, 0x8]
	adds r0, r7, 0
	movs r1, 0x1
	adds r2, r5, 0
	bl AddTextPrinterParameterized
	movs r0, 0x80
	lsls r0, 21
	add r8, r0
	adds r6, 0x1
	ldr r1, [sp, 0x18]
	lsls r0, r1, 24
	cmp r6, 0x2
	bls _0802E58A
	lsrs r0, 24
	bl PutWindowTilemap
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E500

	thumb_func_start sub_802E620
sub_802E620: @ 802E620
	push {lr}
	adds r1, r0, 0
	b _0802E628
_0802E626:
	adds r1, 0x1
_0802E628:
	ldrb r0, [r1]
	cmp r0, 0xFF
	beq _0802E636
	cmp r0, 0
	bne _0802E626
	movs r0, 0xFF
	strb r0, [r1]
_0802E636:
	pop {r0}
	bx r0
	thumb_func_end sub_802E620

	thumb_func_start sub_802E63C
sub_802E63C: @ 802E63C
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r0, =sub_802E6D0
	bl CreateTask
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, =gTasks
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	strh r5, [r0, 0xA]
	ldr r0, =gUnknown_082FE748
	lsls r5, 4
	adds r5, r0
	ldr r1, [r5]
	adds r0, r4, 0
	bl _call_via_r1
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802E63C

	thumb_func_start sub_802E688
sub_802E688: @ 802E688
	push {lr}
	ldr r0, =sub_802E6D0
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xFF
	beq _0802E6B4
	ldr r0, =gTasks
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	movs r0, 0x2
	strh r0, [r1, 0x8]
	movs r0, 0x1
	b _0802E6B6
	.pool
_0802E6B4:
	movs r0, 0
_0802E6B6:
	pop {r1}
	bx r1
	thumb_func_end sub_802E688

	thumb_func_start sub_802E6BC
sub_802E6BC: @ 802E6BC
	push {lr}
	ldr r0, =sub_802E6D0
	bl FuncIsActiveTask
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802E6BC

	thumb_func_start sub_802E6D0
sub_802E6D0: @ 802E6D0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r4, r0, r1
	movs r1, 0
	ldrsh r0, [r4, r1]
	cmp r0, 0x3
	beq _0802E71C
	cmp r0, 0x3
	bgt _0802E6F8
	cmp r0, 0x2
	beq _0802E6FE
	b _0802E752
	.pool
_0802E6F8:
	cmp r0, 0x4
	beq _0802E738
	b _0802E752
_0802E6FE:
	ldr r1, =gUnknown_082FE748
	movs r2, 0x2
	ldrsh r0, [r4, r2]
	lsls r0, 4
	adds r1, 0x8
	adds r0, r1
	ldr r1, [r0]
	adds r0, r5, 0
	bl _call_via_r1
	movs r0, 0x3
	strh r0, [r4]
	b _0802E752
	.pool
_0802E71C:
	ldr r0, =gUnknown_082FE748
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	lsls r1, 4
	adds r0, 0xC
	adds r1, r0
	ldr r1, [r1]
	adds r0, r5, 0
	bl _call_via_r1
	b _0802E752
	.pool
_0802E738:
	ldr r0, =gUnknown_082FE748
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	lsls r1, 4
	adds r0, 0x4
	adds r1, r0
	ldr r1, [r1]
	adds r0, r5, 0
	bl _call_via_r1
	adds r0, r5, 0
	bl DestroyTask
_0802E752:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E6D0

	thumb_func_start sub_802E75C
sub_802E75C: @ 802E75C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r1, 0x6
	ldrsh r0, [r4, r1]
	lsls r0, 3
	ldr r1, =gUnknown_082FE6C8
	adds r0, r1
	bl LoadCompressedSpriteSheet
	movs r2, 0x8
	ldrsh r0, [r4, r2]
	lsls r0, 3
	ldr r1, =gUnknown_082FE6D8
	adds r0, r1
	bl LoadSpritePalette
	movs r5, 0
	movs r3, 0x10
	ldrsh r0, [r4, r3]
	cmp r5, r0
	bge _0802E7C4
_0802E790:
	movs r0, 0x4
	ldrsh r1, [r4, r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	ldr r1, =gUnknown_082FE730
	adds r0, r1
	movs r2, 0x12
	ldrsh r1, [r4, r2]
	movs r3, 0x14
	ldrsh r2, [r4, r3]
	ldrb r3, [r4, 0xE]
	bl CreateSprite
	lsls r1, r5, 1
	adds r1, r4
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r1, 0x1A]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	movs r1, 0x10
	ldrsh r0, [r4, r1]
	cmp r5, r0
	blt _0802E790
_0802E7C4:
	movs r5, 0
	movs r2, 0x10
	ldrsh r0, [r4, r2]
	cmp r5, r0
	bge _0802E820
	movs r7, 0x3
	movs r3, 0xD
	negs r3, r3
	mov r12, r3
	ldr r6, =gSprites
_0802E7D8:
	lsls r0, r5, 1
	adds r0, r4
	movs r1, 0x1A
	ldrsh r0, [r0, r1]
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r6
	ldrb r1, [r4, 0xC]
	ands r1, r7
	lsls r1, 2
	ldrb r3, [r2, 0x5]
	mov r0, r12
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, 0x5]
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r0, [r3]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r4, 0xA]
	strh r0, [r2, 0x30]
	mov r3, r8
	strh r3, [r2, 0x34]
	strh r5, [r2, 0x36]
	ldrh r0, [r4, 0x1A]
	strh r0, [r2, 0x38]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	movs r1, 0x10
	ldrsh r0, [r4, r1]
	cmp r5, r0
	blt _0802E7D8
_0802E820:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E75C

	thumb_func_start sub_802E83C
sub_802E83C: @ 802E83C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r1, =gTasks + 0x8
	adds r4, r1
	movs r5, 0
	strh r5, [r4, 0x4]
	strh r5, [r4, 0x6]
	strh r5, [r4, 0x8]
	movs r1, 0x3C
	strh r1, [r4, 0xA]
	strh r5, [r4, 0xC]
	strh r5, [r4, 0xE]
	movs r1, 0x3
	strh r1, [r4, 0x10]
	movs r1, 0x78
	strh r1, [r4, 0x12]
	movs r1, 0x58
	strh r1, [r4, 0x14]
	adds r1, r4, 0
	bl sub_802E75C
	movs r0, 0x1C
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r5, =gSprites
	adds r0, r5
	movs r1, 0x4
	bl StartSpriteAnim
	movs r0, 0x1C
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldr r1, =0x0000ffe0
	strh r1, [r0, 0x24]
	movs r0, 0x1E
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0x5
	bl StartSpriteAnim
	movs r0, 0x1E
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0x20
	strh r1, [r0, 0x24]
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E83C

	thumb_func_start sub_802E8C8
sub_802E8C8: @ 802E8C8
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r5, 0
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	b _0802E8FC
	.pool
_0802E8E0:
	lsls r0, r5, 1
	adds r0, r4
	movs r2, 0x1A
	ldrsh r1, [r0, r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, =gSprites
	adds r0, r1
	bl DestroySprite
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_0802E8FC:
	movs r1, 0x10
	ldrsh r0, [r4, r1]
	cmp r5, r0
	blt _0802E8E0
	ldr r1, =gUnknown_082FE6C8
	movs r2, 0x6
	ldrsh r0, [r4, r2]
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0, 0x6]
	bl FreeSpriteTilesByTag
	ldr r1, =gUnknown_082FE6D8
	movs r2, 0x8
	ldrsh r0, [r4, r2]
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0, 0x4]
	bl FreeSpritePaletteByTag
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802E8C8

	thumb_func_start sub_802E938
sub_802E938: @ 802E938
	push {r4-r6,lr}
	adds r6, r0, 0
	movs r0, 0x34
	ldrsh r1, [r6, r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	movs r1, 0x16
	ldrsh r0, [r5, r1]
	movs r2, 0xA
	ldrsh r1, [r5, r2]
	bl __modsi3
	cmp r0, 0
	bne _0802EA4A
	ldrh r2, [r5, 0x16]
	movs r3, 0x16
	ldrsh r1, [r5, r3]
	movs r3, 0x14
	ldrsh r0, [r5, r3]
	cmp r1, r0
	beq _0802EA4A
	strh r2, [r5, 0x14]
	movs r1, 0x32
	ldrsh r0, [r6, r1]
	cmp r0, 0x4
	bhi _0802EA44
	lsls r0, 2
	ldr r1, =_0802E984
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802E984:
	.4byte _0802E998
	.4byte _0802E9A6
	.4byte _0802E9A6
	.4byte _0802E9BA
	.4byte _0802EA04
_0802E998:
	adds r2, r6, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_0802E9A6:
	movs r0, 0x38
	bl PlaySE
	ldrh r1, [r6, 0x32]
	lsls r1, 24
	lsrs r1, 24
	adds r0, r6, 0
	bl StartSpriteAnim
	b _0802EA44
_0802E9BA:
	movs r0, 0x15
	bl PlaySE
	ldrh r1, [r6, 0x32]
	lsls r1, 24
	lsrs r1, 24
	adds r0, r6, 0
	bl StartSpriteAnim
	ldr r4, =gSprites
	movs r2, 0x1C
	ldrsh r0, [r5, r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r4
	adds r1, 0x3E
	ldrb r3, [r1]
	movs r2, 0x5
	negs r2, r2
	adds r0, r2, 0
	ands r0, r3
	strb r0, [r1]
	movs r3, 0x1E
	ldrsh r1, [r5, r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	adds r0, 0x3E
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	b _0802EA44
	.pool
_0802EA04:
	adds r1, r6, 0
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
	ldr r3, =gSprites
	movs r0, 0x1C
	ldrsh r1, [r5, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	movs r0, 0x1E
	ldrsh r1, [r5, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	movs r0, 0x4
	strh r0, [r5]
	b _0802EA4A
	.pool
_0802EA44:
	ldrh r0, [r6, 0x32]
	adds r0, 0x1
	strh r0, [r6, 0x32]
_0802EA4A:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_802E938

	thumb_func_start sub_802EA50
sub_802EA50: @ 802EA50
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r5, =gTasks + 0x8
	adds r6, r4, r5
	movs r0, 0x38
	bl PlaySE
	ldr r2, =gSprites
	movs r0, 0x1A
	ldrsh r1, [r6, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r2, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, =sub_802E938
	str r1, [r0]
	movs r0, 0x1A
	ldrsh r1, [r6, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r0]
	subs r5, 0x8
	adds r4, r5
	movs r0, 0x3
	strh r0, [r4, 0x8]
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802EA50

	thumb_func_start sub_802EAB0
sub_802EAB0: @ 802EAB0
	push {r4,r5,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, =gTasks + 0x8
	adds r4, r1, r0
	ldr r0, =gReceivedRemoteLinkPlayers
	ldrb r0, [r0]
	cmp r0, 0
	beq _0802EB14
	ldr r1, =gRecvCmds
	ldrh r0, [r1, 0x2]
	ldr r5, =0x00007fff
	cmp r0, r5
	bne _0802EAD8
	ldrh r0, [r1, 0x4]
	strh r0, [r4, 0x16]
_0802EAD8:
	bl GetMultiplayerId
	lsls r0, 24
	cmp r0, 0
	bne _0802EB1A
	ldrh r0, [r4, 0x18]
	adds r0, 0x1
	strh r0, [r4, 0x18]
	mov r0, sp
	movs r1, 0
	movs r2, 0xC
	bl memset
	mov r0, sp
	strh r5, [r0]
	mov r1, sp
	ldrh r0, [r4, 0x18]
	strh r0, [r1, 0x2]
	mov r0, sp
	bl sub_800FE50
	b _0802EB1A
	.pool
_0802EB14:
	ldrh r0, [r4, 0x16]
	adds r0, 0x1
	strh r0, [r4, 0x16]
_0802EB1A:
	add sp, 0xC
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_802EAB0

	thumb_func_start sub_802EB24
sub_802EB24: @ 802EB24
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x4
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	ldr r0, [sp, 0x18]
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	lsls r6, 16
	lsrs r6, 16
	lsls r3, 16
	lsrs r3, 16
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r0, =sub_802EB98
	movs r1, 0x50
	str r3, [sp]
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0xC]
	strh r5, [r1, 0xE]
	strh r6, [r1, 0x10]
	ldr r3, [sp]
	strh r3, [r1, 0x12]
	mov r0, r8
	strh r0, [r1, 0x14]
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802EB24

	thumb_func_start sub_802EB84
sub_802EB84: @ 802EB84
	push {lr}
	ldr r0, =sub_802EB98
	bl FuncIsActiveTask
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802EB84

	thumb_func_start sub_802EB98
sub_802EB98: @ 802EB98
	push {r4-r6,lr}
	sub sp, 0xC
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	ldr r1, =gTasks + 0x8
	adds r5, r0, r1
	movs r1, 0
	ldrsh r0, [r5, r1]
	cmp r0, 0x1
	beq _0802EC08
	cmp r0, 0x1
	bgt _0802EBC0
	cmp r0, 0
	beq _0802EBC6
	b _0802EC8A
	.pool
_0802EBC0:
	cmp r0, 0x2
	beq _0802EC4C
	b _0802EC8A
_0802EBC6:
	ldrh r0, [r5, 0x4]
	ldrh r1, [r5, 0x6]
	bl sub_802EF50
	ldrh r0, [r5, 0x4]
	ldrh r1, [r5, 0x6]
	movs r3, 0x8
	ldrsh r2, [r5, r3]
	movs r4, 0xA
	ldrsh r3, [r5, r4]
	ldrb r4, [r5, 0xC]
	str r4, [sp]
	bl sub_802EFA8
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r5, 0xE]
	ldrh r0, [r5, 0x4]
	ldrh r1, [r5, 0x6]
	movs r3, 0x8
	ldrsh r2, [r5, r3]
	movs r4, 0xA
	ldrsh r3, [r5, r4]
	ldrb r4, [r5, 0xC]
	str r4, [sp]
	adds r4, r5, 0
	adds r4, 0x10
	str r4, [sp, 0x4]
	adds r4, 0x2
	str r4, [sp, 0x8]
	bl sub_802EFFC
	b _0802EC3E
_0802EC08:
	ldrb r0, [r5, 0xE]
	bl sub_802EC98
	cmp r0, 0
	bne _0802EC8A
	ldrb r0, [r5, 0xE]
	ldrb r1, [r5, 0x10]
	ldrb r2, [r5, 0x12]
	bl sub_802EDCC
	movs r0, 0xE
	ldrsh r1, [r5, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gSprites
	adds r0, r4
	bl FreeSpriteOamMatrix
	movs r3, 0xE
	ldrsh r1, [r5, r3]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl DestroySprite
_0802EC3E:
	ldrh r0, [r5]
	adds r0, 0x1
	strh r0, [r5]
	b _0802EC8A
	.pool
_0802EC4C:
	ldrb r0, [r5, 0x10]
	bl sub_802EE30
	cmp r0, 0
	bne _0802EC8A
	movs r4, 0x10
	ldrsh r1, [r5, r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r4, =gSprites
	adds r0, r4
	bl DestroySprite
	movs r0, 0x12
	ldrsh r1, [r5, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	bl DestroySprite
	ldrh r0, [r5, 0x4]
	bl FreeSpriteTilesByTag
	ldrh r0, [r5, 0x6]
	bl FreeSpritePaletteByTag
	adds r0, r6, 0
	bl DestroyTask
_0802EC8A:
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802EB98

	thumb_func_start sub_802EC98
sub_802EC98: @ 802EC98
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	ldr r0, =gSprites
	adds r4, r1, r0
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	cmp r0, 0x7
	bls _0802ECB2
	b _0802EDC4
_0802ECB2:
	lsls r0, 2
	ldr r1, =_0802ECC4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802ECC4:
	.4byte _0802ECE4
	.4byte _0802ECF6
	.4byte _0802ED1C
	.4byte _0802ED2C
	.4byte _0802ED4E
	.4byte _0802ED86
	.4byte _0802EDAC
	.4byte _0802ED82
_0802ECE4:
	movs r1, 0x80
	lsls r1, 4
	adds r0, r4, 0
	movs r2, 0x1A
	bl sub_8007E18
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
_0802ECF6:
	movs r2, 0x32
	ldrsh r0, [r4, r2]
	cmp r0, 0
	bne _0802ED04
	movs r0, 0x39
	bl PlaySE
_0802ED04:
	ldrh r0, [r4, 0x32]
	adds r0, 0x1
	strh r0, [r4, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x13
	ble _0802EDC4
	movs r0, 0
	strh r0, [r4, 0x32]
	adds r0, r4, 0
	movs r1, 0x1
	b _0802EDA2
_0802ED1C:
	adds r0, r4, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0802EDC4
	b _0802EDA6
_0802ED2C:
	ldrh r0, [r4, 0x32]
	adds r0, 0x1
	strh r0, [r4, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3
	ble _0802EDC4
	movs r0, 0
	strh r0, [r4, 0x32]
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	strh r0, [r4, 0x2E]
	adds r0, r4, 0
	movs r1, 0x2
	bl StartSpriteAffineAnim
	b _0802EDC4
_0802ED4E:
	ldrh r0, [r4, 0x22]
	subs r0, 0x4
	strh r0, [r4, 0x22]
	ldrh r0, [r4, 0x32]
	adds r0, 0x1
	strh r0, [r4, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x7
	ble _0802EDC4
	ldrh r1, [r4, 0x36]
	movs r2, 0x36
	ldrsh r0, [r4, r2]
	cmp r0, 0x1
	bgt _0802ED7E
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl StartSpriteAnim
	movs r0, 0
	strh r0, [r4, 0x32]
	b _0802EDA6
_0802ED7E:
	movs r0, 0x7
	strh r0, [r4, 0x2E]
_0802ED82:
	movs r0, 0
	b _0802EDC6
_0802ED86:
	ldrh r0, [r4, 0x22]
	adds r0, 0x4
	strh r0, [r4, 0x22]
	ldrh r0, [r4, 0x32]
	adds r0, 0x1
	strh r0, [r4, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x7
	ble _0802EDC4
	movs r0, 0
	strh r0, [r4, 0x32]
	adds r0, r4, 0
	movs r1, 0x3
_0802EDA2:
	bl StartSpriteAffineAnim
_0802EDA6:
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	b _0802EDC2
_0802EDAC:
	adds r0, r4, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0802EDC4
	ldrh r0, [r4, 0x36]
	adds r0, 0x1
	strh r0, [r4, 0x36]
	movs r0, 0x1
_0802EDC2:
	strh r0, [r4, 0x2E]
_0802EDC4:
	movs r0, 0x1
_0802EDC6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_802EC98

	thumb_func_start sub_802EDCC
sub_802EDCC: @ 802EDCC
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	ldr r0, =gSprites
	mov r8, r0
	lsls r4, r1, 4
	adds r4, r1
	lsls r4, 2
	adds r5, r4, r0
	ldr r0, =0x0000ffd8
	strh r0, [r5, 0x26]
	lsls r3, r2, 4
	adds r3, r2
	lsls r3, 2
	mov r1, r8
	adds r2, r3, r1
	strh r0, [r2, 0x26]
	adds r5, 0x3E
	ldrb r6, [r5]
	movs r1, 0x5
	negs r1, r1
	adds r0, r1, 0
	ands r0, r6
	strb r0, [r5]
	adds r2, 0x3E
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	movs r0, 0x1C
	add r8, r0
	add r4, r8
	ldr r0, =sub_802EE5C
	str r0, [r4]
	add r3, r8
	str r0, [r3]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802EDCC

	thumb_func_start sub_802EE30
sub_802EE30: @ 802EE30
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	movs r3, 0
	ldr r2, =gSprites
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r2, 0x1C
	adds r1, r2
	ldr r1, [r1]
	ldr r0, =sub_802EE5C
	cmp r1, r0
	bne _0802EE4E
	movs r3, 0x1
_0802EE4E:
	adds r0, r3, 0
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802EE30

	thumb_func_start sub_802EE5C
sub_802EE5C: @ 802EE5C
	push {r4,r5,lr}
	adds r5, r0, 0
	adds r4, r5, 0
	adds r4, 0x2E
	movs r1, 0x2E
	ldrsh r0, [r5, r1]
	cmp r0, 0x4
	bhi _0802EF46
	lsls r0, 2
	ldr r1, =_0802EE7C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.pool
	.align 2, 0
_0802EE7C:
	.4byte _0802EE90
	.4byte _0802EEA0
	.4byte _0802EEC8
	.4byte _0802EEFC
	.4byte _0802EF34
_0802EE90:
	movs r0, 0x40
	strh r0, [r4, 0x8]
	ldrh r0, [r5, 0x26]
	lsls r0, 4
	strh r0, [r4, 0xA]
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_0802EEA0:
	ldrh r1, [r4, 0x8]
	ldrh r2, [r4, 0xA]
	adds r0, r1, r2
	strh r0, [r4, 0xA]
	adds r1, 0x1
	strh r1, [r4, 0x8]
	lsls r0, 16
	asrs r0, 20
	strh r0, [r5, 0x26]
	cmp r0, 0
	blt _0802EF46
	movs r0, 0x39
	bl PlaySE
	movs r0, 0
	strh r0, [r5, 0x26]
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _0802EF46
_0802EEC8:
	ldrh r0, [r4, 0x2]
	adds r0, 0xC
	strh r0, [r4, 0x2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x7F
	ble _0802EEE6
	movs r0, 0x39
	bl PlaySE
	movs r0, 0
	strh r0, [r4, 0x2]
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_0802EEE6:
	ldr r0, =gSineTable
	movs r2, 0x2
	ldrsh r1, [r4, r2]
	lsls r1, 1
	adds r1, r0
	movs r2, 0
	ldrsh r0, [r1, r2]
	asrs r0, 4
	b _0802EF2A
	.pool
_0802EEFC:
	ldrh r0, [r4, 0x2]
	adds r0, 0x10
	strh r0, [r4, 0x2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x7F
	ble _0802EF1A
	movs r0, 0x39
	bl PlaySE
	movs r0, 0
	strh r0, [r4, 0x2]
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
_0802EF1A:
	ldr r1, =gSineTable
	movs r2, 0x2
	ldrsh r0, [r4, r2]
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	lsls r0, 16
	asrs r0, 21
_0802EF2A:
	negs r0, r0
	strh r0, [r5, 0x26]
	b _0802EF46
	.pool
_0802EF34:
	ldrh r0, [r4, 0x2]
	adds r0, 0x1
	strh r0, [r4, 0x2]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x28
	ble _0802EF46
	ldr r0, =SpriteCallbackDummy
	str r0, [r5, 0x1C]
_0802EF46:
	pop {r4,r5}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802EE5C

	thumb_func_start sub_802EF50
sub_802EF50: @ 802EF50
	push {r4,lr}
	sub sp, 0x10
	lsls r1, 16
	lsrs r1, 16
	ldr r2, =gUnknown_082FEBCC
	ldr r3, [r2, 0x4]
	ldr r2, [r2]
	str r2, [sp]
	str r3, [sp, 0x4]
	ldr r2, =gUnknown_082FEBD4
	ldr r3, [r2, 0x4]
	ldr r2, [r2]
	str r2, [sp, 0x8]
	str r3, [sp, 0xC]
	lsls r0, 16
	ldr r3, =0x0000ffff
	ldr r2, [sp, 0x4]
	ands r2, r3
	orrs r2, r0
	str r2, [sp, 0x4]
	ldr r2, =0xffff0000
	add r4, sp, 0x8
	ldr r0, [r4, 0x4]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, 0x4]
	mov r0, sp
	bl LoadCompressedSpriteSheet
	adds r0, r4, 0
	bl LoadSpritePalette
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802EF50

	thumb_func_start sub_802EFA8
sub_802EFA8: @ 802EFA8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x18
	mov r12, r3
	ldr r3, [sp, 0x30]
	lsls r1, 16
	lsrs r1, 16
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	mov r5, sp
	ldr r4, =gUnknown_082FEC90
	ldm r4!, {r3,r6,r7}
	stm r5!, {r3,r6,r7}
	ldm r4!, {r3,r6,r7}
	stm r5!, {r3,r6,r7}
	mov r4, sp
	strh r0, [r4]
	mov r0, sp
	strh r1, [r0, 0x2]
	lsls r2, 16
	asrs r2, 16
	mov r0, r12
	lsls r6, r0, 16
	asrs r6, 16
	mov r0, sp
	adds r1, r2, 0
	adds r2, r6, 0
	mov r3, r8
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.pool
	thumb_func_end sub_802EFA8

	thumb_func_start sub_802EFFC
sub_802EFFC: @ 802EFFC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x18
	mov r12, r3
	ldr r6, [sp, 0x38]
	ldr r3, [sp, 0x3C]
	mov r9, r3
	ldr r4, [sp, 0x40]
	mov r8, r4
	lsls r1, 16
	lsrs r1, 16
	lsls r6, 24
	lsrs r6, 24
	mov r10, r6
	mov r4, sp
	ldr r3, =gUnknown_082FECA8
	ldm r3!, {r5-r7}
	stm r4!, {r5-r7}
	ldm r3!, {r5-r7}
	stm r4!, {r5-r7}
	mov r3, sp
	strh r0, [r3]
	mov r0, sp
	strh r1, [r0, 0x2]
	lsls r2, 16
	asrs r4, r2, 16
	ldr r0, =0xffe00000
	adds r2, r0
	asrs r2, 16
	mov r1, r12
	lsls r5, r1, 16
	asrs r5, 16
	mov r0, sp
	adds r1, r2, 0
	adds r2, r5, 0
	mov r3, r10
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	mov r3, r9
	strh r0, [r3]
	adds r4, 0x20
	lsls r4, 16
	asrs r4, 16
	mov r0, sp
	adds r1, r4, 0
	adds r2, r5, 0
	mov r3, r10
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	mov r4, r8
	strh r0, [r4]
	ldr r2, =gSprites
	mov r5, r9
	movs r6, 0
	ldrsh r1, [r5, r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r3, 0x4
	orrs r1, r3
	strb r1, [r0]
	movs r7, 0
	ldrsh r1, [r4, r7]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	adds r0, 0x3E
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	movs r0, 0
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	movs r1, 0x1
	bl StartSpriteAnim
	add sp, 0x18
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.pool
	thumb_func_end sub_802EFFC

	.align 2, 0 @ don't pad with nop

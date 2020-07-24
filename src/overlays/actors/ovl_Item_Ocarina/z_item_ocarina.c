/*
 * File: z_item_ocarina.c
 * Overlay: ovl_Item_Ocarina
 * Description: Ocarina of Time
*/

#include "z_item_ocarina.h"

#define FLAGS 0x00000010

#define THIS ((ItemOcarina*)thisx)

void ItemOcarina_Init(Actor* thisx, GlobalContext* globalCtx);
void ItemOcarina_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ItemOcarina_Update(Actor* thisx, GlobalContext* globalCtx);
void ItemOcarina_Draw(Actor* thisx, GlobalContext* globalCtx);

void ItemOcarina_SetupAction(ItemOcarina* this, ItemOcarinaActionFunc actionFunc);
void func_80B862EC(ItemOcarina* this, GlobalContext* globalCtx);
void func_80B86494(ItemOcarina* this, GlobalContext* globalCtx);
void func_80B864EC(ItemOcarina* this, GlobalContext* globalCtx);
void func_80B865E0(ItemOcarina* this, GlobalContext* globalCtx);
void func_80B86640(ItemOcarina* this, GlobalContext* globalCtx);
void func_80B8664C(ItemOcarina* this, GlobalContext* globalCtx);
void func_80B866BC(ItemOcarina* this, GlobalContext* globalCtx);

extern CutsceneData D_0200F870[];

const ActorInit Item_Ocarina_InitVars = {
    ACTOR_ITEM_OCARINA,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GI_OCARINA,
    sizeof(ItemOcarina),
    (ActorFunc)ItemOcarina_Init,
    (ActorFunc)ItemOcarina_Destroy,
    (ActorFunc)ItemOcarina_Update,
    (ActorFunc)ItemOcarina_Draw,
};

void ItemOcarina_SetupAction(ItemOcarina* this, ItemOcarinaActionFunc actionFunc){
	this->actionFunc = actionFunc;
}

void ItemOcarina_Init(Actor* thisx, GlobalContext* globalCtx){
	ItemOcarina* this = THIS;
	s32 params = (s32)thisx->params;

	ActorShape_Init(&this->actor.shape, 0, 0, 0);
	Actor_SetScale(&this->actor, 0.1f);
	switch (params){
		case 0:
			ItemOcarina_SetupAction(this, func_80B86494);
			break;
		case 1:
			ItemOcarina_SetupAction(this, func_80B865E0);
			break;
		case 2:
			ItemOcarina_SetupAction(this, func_80B86640);
			break;
		case 3:
			ItemOcarina_SetupAction(this, func_80B866BC);
			if ((gSaveContext.eventChkInf[8] & 1) == 0 || (gSaveContext.eventChkInf[4] & 8) != 0) {
				Actor_Kill(thisx);
				return;
			}
			Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ELF_MSG2, 299.0f, -140.0f, 884.0f, 0, 4, 1, 14336);
			Actor_SetScale(thisx, 0.2f);
			break;
		default:
			Actor_Kill(thisx);
			return;
		}
	LogUtils_LogThreadId("../z_item_ocarina.c", 210);
	osSyncPrintf("no = %d\n", params);
	this->unk_150 = 1024;
}

void ItemOcarina_Destroy(Actor* thisx, GlobalContext* globalCtx){
}

void func_80B862EC(ItemOcarina* this, GlobalContext* globalCtx){
	Vec3f temp;

	func_8002D7EC(&this->actor);
	this->actor.shape.rot.x += this->unk_150 * 2;
	this->actor.shape.rot.y += this->unk_150 * 3;
	if (this->actor.minVelocityY < this->actor.velocity.y){
		this->actor.velocity.y += this->actor.gravity;
		if (this->actor.velocity.y < this->actor.minVelocityY){
			this->actor.velocity.y = this->actor.minVelocityY;
		}
	}
	if (globalCtx->csCtx.frames == 881){
		this->actor.posRot.pos.x = 250.0f;
		this->actor.posRot.pos.y = 60.0f;
		this->actor.posRot.pos.z = 1075.0f;
		this->actor.velocity.x = 1.0f;
		this->actor.velocity.y = -5.0f;
		this->actor.velocity.z = -7.0f;
	}
	if (globalCtx->csCtx.frames == 897){
		func_80029444(globalCtx, &this->actor.posRot.pos, 100, 500, 0);
		func_8002949C(globalCtx, &this->actor.posRot.pos, 0, 0, 1, 0);
		this->actor.velocity.x = 0.0f;
		this->actor.velocity.y = 0.0f;
		this->actor.velocity.z = 0.0f;
		this->actor.gravity = -0.1f;
		this->actor.minVelocityY = -0.5f;
		this->unk_150 = 0;
		Audio_PlayActorSound2(&this->actor, 10263);
	}
	if (globalCtx->csCtx.frames == 906){
		temp.x = 274.0f;
		temp.y = -60.0f;
		temp.z = 907.0f;
		func_80029444(globalCtx, &temp, 100, 500, 0);
	}
}

void func_80B86494(ItemOcarina* this, GlobalContext* globalCtx){
	this->actor.gravity = -0.3f;
	this->actor.minVelocityY = -5.0f;
	this->actor.velocity.x = 0.0f;
	this->actor.velocity.y = 6.0f;
	this->actor.velocity.z = 0.0f;
	ItemOcarina_SetupAction(this, func_80B862EC);
}

void func_80B864EC(ItemOcarina* this, GlobalContext* globalCtx){
	func_8002D7EC(&this->actor);
	this->actor.shape.rot.x += this->unk_150 * 2;
        this->actor.shape.rot.y += this->unk_150 * 3;
        if (this->actor.minVelocityY < this->actor.velocity.y){
                this->actor.velocity.y += this->actor.gravity;
                if (this->actor.velocity.y < this->actor.minVelocityY){
                        this->actor.velocity.y = this->actor.minVelocityY;
                }
	}
	if (globalCtx->csCtx.frames == 220){
                this->actor.posRot.pos.x = 144.0f;
                this->actor.posRot.pos.y = 80.0f;
                this->actor.posRot.pos.z = 1686.0f;
                this->actor.velocity.x = 1.0f;
                this->actor.velocity.y = 2.0f;
                this->actor.velocity.z = -7.0f;
	        this->actor.gravity = -0.15f;
		this->actor.minVelocityY = -5.0f;
        }
}

void func_80B865E0(ItemOcarina* this, GlobalContext* globalCtx){
        this->actor.gravity = -0.3f;
        this->actor.minVelocityY = -5.0f;
        this->actor.velocity.x = 0.0f;
	this->actor.velocity.y = 4.0f;
	this->actor.velocity.z = 6.0f;
	ItemOcarina_SetupAction(this, func_80B864EC);
}

void func_80B86640(ItemOcarina* this, GlobalContext* globalCtx){
}

void func_80B8664C(ItemOcarina* this, GlobalContext* globalCtx){
	if (func_8002F334(&this->actor, globalCtx) != 0){
		globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_0200F870);
		gSaveContext.cutsceneTrigger = 1;
	}
}

void func_80B866BC(ItemOcarina* this, GlobalContext* globalCtx){
	if (func_8002F410(&this->actor, globalCtx) != 0) {
		gSaveContext.eventChkInf[4] |= 8;
		Flags_SetSwitch(globalCtx, 3);
		this->actionFunc = func_80B8664C;
		this->actor.draw = 0;
		return;
	}
	func_8002F434(&this->actor, globalCtx, GI_OCARINA_OOT, 30.0f, 50.0f);
    	if ((globalCtx->gameplayFrames & 13) == 0) {
        	func_800293E4(globalCtx, &this->actor.posRot.pos, 0.0f, 0.0f, 10.0f, 0.13f);
    	}
}

void ItemOcarina_Update(Actor* thisx, GlobalContext* globalCtx){
        ItemOcarina* this = THIS;

	this->actionFunc(this, globalCtx);
}

void ItemOcarina_Draw(Actor* thisx, GlobalContext* globalCtx){
	func_8002EBCC(thisx, globalCtx, 0);
	func_8002ED80(thisx, globalCtx, 0);
	func_800694A0(globalCtx, 46);
}

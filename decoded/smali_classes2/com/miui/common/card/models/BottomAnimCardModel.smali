.class public Lcom/miui/common/card/models/BottomAnimCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;
    }
.end annotation


# instance fields
.field private mAnimProgress:I

.field private mIsFromUser:Z

.field private mIsNoticeAnimEnable:Z

.field private mIsReadyToJump:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0499

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsNoticeAnimEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsFromUser:Z

    iput-boolean v0, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsReadyToJump:Z

    return-void
.end method


# virtual methods
.method public getAnimProgress()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mAnimProgress:I

    return v0
.end method

.method public isFromUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsFromUser:Z

    return v0
.end method

.method public isNoticeAnimEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsNoticeAnimEnable:Z

    return v0
.end method

.method public isReadyToJump()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsReadyToJump:Z

    return v0
.end method

.method public setAnimProgress(IZ)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mAnimProgress:I

    iput-boolean p2, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsFromUser:Z

    return-void
.end method

.method public setIsNoticeAnimEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsNoticeAnimEnable:Z

    return-void
.end method

.method public setIsReadyToJump(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/BottomAnimCardModel;->mIsReadyToJump:Z

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

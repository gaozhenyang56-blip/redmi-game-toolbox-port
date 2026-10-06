.class public Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/BottomAnimCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomAnimCardModelViewHolder"
.end annotation


# instance fields
.field private final mBottomNoticeAnimView:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

.field private final mDragDistance:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    iput-object v0, p0, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;->mBottomNoticeAnimView:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071da7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;->mDragDistance:I

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 2

    check-cast p2, Lcom/miui/common/card/models/BottomAnimCardModel;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BottomAnimCardModel;->getAnimProgress()I

    move-result p1

    iget-object p3, p0, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;->mBottomNoticeAnimView:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BottomAnimCardModel;->isNoticeAnimEnable()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->setAnimEnable(Z)V

    iget p3, p0, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;->mDragDistance:I

    const/16 v0, 0x64

    if-gt p1, p3, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;->mBottomNoticeAnimView:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    mul-int/2addr p1, v0

    div-int/2addr p1, p3

    invoke-virtual {p2}, Lcom/miui/common/card/models/BottomAnimCardModel;->isFromUser()Z

    move-result p3

    invoke-virtual {v1, p1, p3}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g(IZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;->mBottomNoticeAnimView:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BottomAnimCardModel;->isFromUser()Z

    move-result p3

    invoke-virtual {p1, v0, p3}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->g(IZ)V

    :goto_0
    iget-object p1, p0, Lcom/miui/common/card/models/BottomAnimCardModel$BottomAnimCardModelViewHolder;->mBottomNoticeAnimView:Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;

    invoke-virtual {p1}, Lcom/miui/securityscan/ui/main/BottomNoticeAnimView;->f()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/miui/common/card/models/BottomAnimCardModel;->setIsReadyToJump(Z)V

    return-void
.end method

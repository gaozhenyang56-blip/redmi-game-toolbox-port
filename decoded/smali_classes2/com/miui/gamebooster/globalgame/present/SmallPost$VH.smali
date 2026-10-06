.class public Lcom/miui/gamebooster/globalgame/present/SmallPost$VH;
.super Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field gameItem:Lcom/miui/gamebooster/globalgame/view/GameItemView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;-><init>()V

    return-void
.end method


# virtual methods
.method public custom(Landroid/view/View;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->custom(Landroid/view/View;ZZ)V

    const p2, 0x7f0b0bc9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/gamebooster/globalgame/present/SmallPost$VH;->title:Landroid/widget/TextView;

    const p2, 0x7f0b0454

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/globalgame/view/GameItemView;

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/present/SmallPost$VH;->gameItem:Lcom/miui/gamebooster/globalgame/view/GameItemView;

    return-void
.end method

.method protected keyForStore()Ljava/lang/String;
    .locals 1

    const-string v0, "gbg_key_cover_height_small_post_0x08"

    return-object v0
.end method

.method protected parseRatio()F
    .locals 1

    const v0, 0x3ec44444

    return v0
.end method

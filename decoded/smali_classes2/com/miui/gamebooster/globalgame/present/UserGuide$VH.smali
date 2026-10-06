.class public Lcom/miui/gamebooster/globalgame/present/UserGuide$VH;
.super Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field close:Landroid/view/View;


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

    const p2, 0x7f0b025b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/present/UserGuide$VH;->close:Landroid/view/View;

    return-void
.end method

.method protected keyForStore()Ljava/lang/String;
    .locals 1

    const-string v0, "gbg_key_cover_height_user_guide_0x05"

    return-object v0
.end method

.method protected parseRatio()F
    .locals 1

    const v0, 0x3e96c16c

    return v0
.end method

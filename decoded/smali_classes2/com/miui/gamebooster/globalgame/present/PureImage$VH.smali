.class public Lcom/miui/gamebooster/globalgame/present/PureImage$VH;
.super Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;-><init>()V

    return-void
.end method


# virtual methods
.method protected keyForStore()Ljava/lang/String;
    .locals 1

    const-string v0, "gbg_key_cover_height_pure_image_0x06"

    return-object v0
.end method

.method protected parseRatio()F
    .locals 1

    const v0, 0x3f071c72

    return v0
.end method

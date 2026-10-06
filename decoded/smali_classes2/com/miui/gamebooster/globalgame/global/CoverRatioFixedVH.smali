.class public abstract Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;
.super Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public cover:Landroid/widget/ImageView;

.field private coverHeightAdjusted:Z

.field private storedHeight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->storedHeight:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->coverHeightAdjusted:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->coverHeightAdjusted:Z

    return p1
.end method


# virtual methods
.method public custom(Landroid/view/View;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->custom(Landroid/view/View;ZZ)V

    const p2, 0x7f0b02b5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->cover:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->storedHeight:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->keyForStore()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc7/c;->B(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->storedHeight:F

    :cond_1
    iget p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->storedHeight:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->cover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->storedHeight:F

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->cover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->coverHeightAdjusted:Z

    if-nez p1, :cond_3

    invoke-static {}, La8/k2;->u()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;->cover:Landroid/widget/ImageView;

    new-instance p3, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;

    invoke-direct {p3, p0, p1}, Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH$a;-><init>(Lcom/miui/gamebooster/globalgame/global/CoverRatioFixedVH;I)V

    invoke-static {p2, p3}, Lc7/c;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected abstract keyForStore()Ljava/lang/String;
.end method

.method protected abstract parseRatio()F
.end method

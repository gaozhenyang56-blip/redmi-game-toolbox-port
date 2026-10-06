.class public Lcom/miui/gamebooster/globalgame/present/PureTitle$VH;
.super Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;-><init>()V

    return-void
.end method


# virtual methods
.method public custom(Landroid/view/View;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->custom(Landroid/view/View;ZZ)V

    const p2, 0x7f0b0bc9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/present/PureTitle$VH;->title:Landroid/widget/TextView;

    return-void
.end method

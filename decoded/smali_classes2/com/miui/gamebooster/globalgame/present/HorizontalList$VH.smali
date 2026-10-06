.class public Lcom/miui/gamebooster/globalgame/present/HorizontalList$VH;
.super Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field container:Landroid/view/ViewGroup;


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

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->rootView:Landroid/view/View;

    const p2, 0x7f0b027f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/present/HorizontalList$VH;->container:Landroid/view/ViewGroup;

    return-void
.end method

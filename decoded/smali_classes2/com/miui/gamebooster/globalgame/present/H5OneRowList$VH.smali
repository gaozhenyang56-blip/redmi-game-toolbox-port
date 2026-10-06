.class public Lcom/miui/gamebooster/globalgame/present/H5OneRowList$VH;
.super Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/globalgame/present/H5OneRowList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VH"
.end annotation


# instance fields
.field container:Landroid/view/ViewGroup;

.field hubArr:[Lcom/miui/gamebooster/globalgame/view/GameItemHub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;-><init>()V

    return-void
.end method


# virtual methods
.method public custom(Landroid/view/View;ZZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->custom(Landroid/view/View;ZZ)V

    iget-object p1, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->rootView:Landroid/view/View;

    const p2, 0x7f0b027f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/gamebooster/globalgame/present/H5OneRowList$VH;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/present/H5OneRowList$VH;->getLimit()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    new-array p2, p1, [Lcom/miui/gamebooster/globalgame/view/GameItemHub;

    iput-object p2, p0, Lcom/miui/gamebooster/globalgame/present/H5OneRowList$VH;->hubArr:[Lcom/miui/gamebooster/globalgame/view/GameItemHub;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/miui/gamebooster/globalgame/present/H5OneRowList$VH;->hubArr:[Lcom/miui/gamebooster/globalgame/view/GameItemHub;

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gamebooster/globalgame/present/H5OneRowList$VH;->getIdArr()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/globalgame/view/GameItemHub;

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getIdArr()[I
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/globalgame/present/H5OneRowList;->a()[I

    move-result-object v0

    return-object v0
.end method

.method protected getLimit()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

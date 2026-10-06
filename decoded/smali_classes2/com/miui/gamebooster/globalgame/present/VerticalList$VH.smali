.class public Lcom/miui/gamebooster/globalgame/present/VerticalList$VH;
.super Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/globalgame/present/VerticalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VH"
.end annotation


# instance fields
.field itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;-><init>()V

    return-void
.end method


# virtual methods
.method public custom(Landroid/view/View;ZZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/globalgame/global/GlobalCardVH;->custom(Landroid/view/View;ZZ)V

    invoke-static {}, Lcom/miui/gamebooster/globalgame/present/VerticalList;->a()[I

    move-result-object p2

    array-length p2, p2

    new-array p2, p2, [Lcom/miui/gamebooster/globalgame/view/GameItemView;

    iput-object p2, p0, Lcom/miui/gamebooster/globalgame/present/VerticalList$VH;->itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;

    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Lcom/miui/gamebooster/globalgame/present/VerticalList;->a()[I

    move-result-object p3

    array-length p3, p3

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/miui/gamebooster/globalgame/present/VerticalList$VH;->itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;

    invoke-static {}, Lcom/miui/gamebooster/globalgame/present/VerticalList;->a()[I

    move-result-object v0

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/globalgame/view/GameItemView;

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

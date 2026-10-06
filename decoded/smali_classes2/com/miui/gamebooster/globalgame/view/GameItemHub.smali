.class public Lcom/miui/gamebooster/globalgame/view/GameItemHub;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static ITEM_ID_LIST:[I


# instance fields
.field itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gamebooster/globalgame/view/GameItemHub;->ITEM_ID_LIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0455
        0x7f0b0456
        0x7f0b0457
        0x7f0b0458
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/globalgame/view/GameItemHub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/globalgame/view/GameItemHub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e021f

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 p1, 0x4

    new-array p2, p1, [Lcom/miui/gamebooster/globalgame/view/GameItemView;

    iput-object p2, p0, Lcom/miui/gamebooster/globalgame/view/GameItemHub;->itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/miui/gamebooster/globalgame/view/GameItemHub;->itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;

    sget-object v0, Lcom/miui/gamebooster/globalgame/view/GameItemHub;->ITEM_ID_LIST:[I

    aget v0, v0, p2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/globalgame/view/GameItemView;

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public update(Landroid/content/Context;Landroid/view/View;Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/miui/gamebooster/globalgame/module/BannerCardBean;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/globalgame/module/GameListItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {p4}, Lx4/t;->o(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/globalgame/view/GameItemHub;->itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemHub;->itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;

    aget-object v0, v0, p2

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/globalgame/module/GameListItem;

    invoke-virtual {p3}, Lcom/miui/gamebooster/globalgame/module/BannerCardBean;->getButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->update(Lcom/miui/gamebooster/globalgame/module/BannerCardBean;Lcom/miui/gamebooster/globalgame/module/GameListItem;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public vanishDetail()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/globalgame/view/GameItemHub;->itemArr:[Lcom/miui/gamebooster/globalgame/view/GameItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/miui/gamebooster/globalgame/view/GameItemView;->vanishDetail()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

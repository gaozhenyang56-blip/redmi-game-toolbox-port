.class public Lcom/miui/securityscan/ui/main/m;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroidx/recyclerview/widget/GridLayoutManager;

.field private d:Lcom/miui/common/card/CardViewRvAdapter;


# direct methods
.method public constructor <init>(IILandroidx/recyclerview/widget/GridLayoutManager;Lcom/miui/common/card/CardViewRvAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    iput p1, p0, Lcom/miui/securityscan/ui/main/m;->a:I

    iput p2, p0, Lcom/miui/securityscan/ui/main/m;->b:I

    iput-object p3, p0, Lcom/miui/securityscan/ui/main/m;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p4, p0, Lcom/miui/securityscan/ui/main/m;->d:Lcom/miui/common/card/CardViewRvAdapter;

    return-void
.end method


# virtual methods
.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/m;->b:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 5

    const/4 p4, 0x0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/m;->d:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p3, v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/securityscan/ui/main/m;->b:I

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/m;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->o()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result v2

    div-int/2addr v1, v2

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p4

    :goto_0
    const/4 v2, 0x2

    iget v3, p0, Lcom/miui/securityscan/ui/main/m;->a:I

    if-ne v1, v2, :cond_2

    div-int/2addr v3, v2

    goto :goto_1

    :cond_2
    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v2

    :goto_1
    if-ne v1, v2, :cond_3

    iget v4, p0, Lcom/miui/securityscan/ui/main/m;->a:I

    div-int/2addr v4, v2

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/miui/securityscan/ui/main/m;->a:I

    div-int/lit8 v4, v2, 0x3

    :goto_2
    instance-of v2, p3, Lcom/miui/common/card/models/FuncGrid6CardModel;

    if-eqz v2, :cond_a

    check-cast p3, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-virtual {p3}, Lcom/miui/common/card/models/FuncGrid6CardModel;->getIndexInGridSix()I

    move-result p3

    rem-int/2addr p3, v1

    if-nez p3, :cond_7

    if-eqz p2, :cond_4

    move p3, v3

    goto :goto_3

    :cond_4
    move p3, p4

    :goto_3
    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move p4, v3

    :cond_6
    :goto_5
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_7
    sub-int/2addr v1, v0

    if-ne p3, v1, :cond_9

    if-eqz p2, :cond_8

    move p3, p4

    goto :goto_6

    :cond_8
    move p3, v3

    :goto_6
    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_9
    iput v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    :cond_a
    :goto_7
    return-void
.end method

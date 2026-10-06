.class public Lcom/miui/gamebooster/windowmanager/newbox/p;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070e30

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/p;->a:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p4

    instance-of p4, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p4

    check-cast p4, Lq6/h;

    invoke-virtual {p4}, Lq6/h;->getItemCount()I

    move-result p4

    if-nez p4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    rem-int/lit8 p3, p2, 0x2

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, p4, :cond_3

    iget p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/p;->a:I

    div-int/2addr p4, v1

    goto :goto_0

    :cond_3
    move p4, v0

    :goto_0
    iput p4, p1, Landroid/graphics/Rect;->left:I

    if-nez p3, :cond_4

    iget p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/p;->a:I

    div-int/lit8 v0, p3, 0x2

    :cond_4
    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, v1, :cond_5

    iget p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/p;->a:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_5
    return-void
.end method

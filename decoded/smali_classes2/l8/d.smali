.class public Ll8/d;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    iput p1, p0, Ll8/d;->a:I

    iput p2, p0, Ll8/d;->b:I

    iput-boolean p3, p0, Ll8/d;->c:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p3

    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->o()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result p2

    iget p3, p0, Ll8/d;->a:I

    div-int/2addr p3, p2

    rem-int v0, p4, p3

    iget-boolean v2, p0, Ll8/d;->c:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ll8/d;->b:I

    mul-int v3, v0, v2

    div-int/2addr v3, p3

    sub-int v3, v2, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-ge p4, p3, :cond_0

    iput v2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    if-ne p2, v1, :cond_1

    iget-boolean p2, p0, Ll8/d;->d:Z

    if-eqz p2, :cond_1

    mul-int/lit8 v2, v2, 0x2

    :cond_1
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget v2, p0, Ll8/d;->b:I

    mul-int v3, v0, v2

    div-int/2addr v3, p3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    div-int/2addr v0, p3

    sub-int v0, v2, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-lt p4, p3, :cond_6

    if-ne p2, v1, :cond_3

    iget-boolean p2, p0, Ll8/d;->d:Z

    if-eqz p2, :cond_3

    mul-int/lit8 v2, v2, 0x2

    :cond_3
    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_4
    instance-of p3, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a()I

    move-result p2

    if-ne p2, v1, :cond_5

    iget p2, p0, Ll8/d;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_5
    iget p2, p0, Ll8/d;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget p2, p0, Ll8/d;->b:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    :goto_1
    return-void
.end method

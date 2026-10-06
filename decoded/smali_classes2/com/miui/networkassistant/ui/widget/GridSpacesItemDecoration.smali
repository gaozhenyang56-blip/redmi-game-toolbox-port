.class public Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field private mIncludeEdge:Z

.field protected mSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mIncludeEdge:Z

    iput p1, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mSpace:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mSpace:I

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mIncludeEdge:Z

    return-void
.end method

.method private isRtl()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p4

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    rem-int p3, p2, p4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->isRtl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mIncludeEdge:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mSpace:I

    mul-int v1, p3, v0

    div-int/2addr v1, p4

    sub-int v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, v0

    div-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, p4, :cond_2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mSpace:I

    mul-int v1, p3, v0

    div-int/2addr v1, p4

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, v0

    div-int/2addr p3, p4

    sub-int p3, v0, p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, p4, :cond_4

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mIncludeEdge:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mSpace:I

    mul-int v1, p3, v0

    div-int/2addr v1, p4

    sub-int v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, v0

    div-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-ge p2, p4, :cond_2

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/miui/networkassistant/ui/widget/GridSpacesItemDecoration;->mSpace:I

    mul-int v1, p3, v0

    div-int/2addr v1, p4

    iput v1, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, v0

    div-int/2addr p3, p4

    sub-int p3, v0, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, p4, :cond_4

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_2
    return-void
.end method

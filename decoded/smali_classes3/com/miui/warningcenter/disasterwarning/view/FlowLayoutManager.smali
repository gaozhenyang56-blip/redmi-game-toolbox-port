.class public Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$y$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;,
        Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$Orientation;
    }
.end annotation


# static fields
.field private static final DEFAULT_HORIZONTAL_SPACE:I

.field private static final DEFAULT_VERTICAL_SPACE:I = 0xc

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final LAYOUT_END:I = 0x1

.field private static final LAYOUT_START:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mBottom:I

.field private mColumnCountOfRow:Landroid/util/SparseIntArray;

.field private mHeight:I

.field private mHorizontalSpace:I

.field private mItemCount:I

.field private mLeft:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOrientation:I
    .annotation build Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$Orientation;
    .end annotation
.end field

.field private mPendingScrollPositionOffset:I

.field private mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

.field private mRight:I

.field private mScrapRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mScrapSites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollOffsetX:I

.field private mScrollOffsetY:I

.field private mState:Landroidx/recyclerview/widget/RecyclerView$z;

.field private mTop:I

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private mVerticalSpace:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    sput v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->DEFAULT_HORIZONTAL_SPACE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$Orientation;
        .end annotation
    .end param

    sget v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->DEFAULT_HORIZONTAL_SPACE:I

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$Orientation;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mVerticalSpace:I

    sget v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->DEFAULT_HORIZONTAL_SPACE:I

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHorizontalSpace:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, p2, p3}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->setSpace(II)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$n;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mVerticalSpace:I

    sget v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->DEFAULT_HORIZONTAL_SPACE:I

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHorizontalSpace:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOrientation:I

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$n$d;

    move-result-object p1

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$n$d;->a:I

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$n;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[ILjava/lang/Integer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->lambda$calculateHorizontalChildrenSites$3(Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->lambda$calculateHorizontalChildrenSites$2(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[ILjava/lang/Integer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->lambda$calculateVerticalChildrenSites$1(Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[ILjava/lang/Integer;)V

    return-void
.end method

.method private calculateHorizontalChildrenSites(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 10

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v7, 0x0

    aput v7, v4, v7

    new-array v0, v0, [I

    aput v7, v0, v7

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/view/e;

    invoke-direct {v2}, Lcom/miui/warningcenter/disasterwarning/view/e;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;

    move-result-object v1

    iget v2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/miui/warningcenter/disasterwarning/view/f;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/view/f;-><init>(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[I)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    aget p1, v0, v7

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mLeft:I

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getHorizontalSpace()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getFirstChildPosition()I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private calculateVerticalChildrenSites(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 10

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v7, 0x0

    aput v7, v4, v7

    new-array v0, v0, [I

    aput v7, v0, v7

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/view/a;

    invoke-direct {v2}, Lcom/miui/warningcenter/disasterwarning/view/a;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;

    move-result-object v1

    iget v2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/miui/warningcenter/disasterwarning/view/b;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/warningcenter/disasterwarning/view/b;-><init>(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[I)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    aget p1, v0, v7

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTop:I

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getVerticalSpace()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public static synthetic d(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->lambda$fillAndRecycleView$4(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView$u;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->lambda$fillAndRecycleView$5(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView$u;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->lambda$calculateVerticalChildrenSites$0(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private fillAndRecycleView(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 4

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->canScrollVertically()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mLeft:I

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetY:I

    iget v2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mWidth:I

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHeight:I

    add-int/2addr v3, v1

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetX:I

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTop:I

    iget v2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mWidth:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHeight:I

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/view/c;

    invoke-direct {v1}, Lcom/miui/warningcenter/disasterwarning/view/c;-><init>()V

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;

    move-result-object v0

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/view/d;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/warningcenter/disasterwarning/view/d;-><init>(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView$u;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getDecoratedMeasurementHorizontal(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method private getDecoratedMeasurementVertical(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method private getHorizontalSpace()I
    .locals 2

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mWidth:I

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mRight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getVerticalSpace()I
    .locals 2

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHeight:I

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private static synthetic lambda$calculateHorizontalChildrenSites$2(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$calculateHorizontalChildrenSites$3(Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[ILjava/lang/Integer;)V
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->o(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$n;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-direct {p0, v2}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getDecoratedMeasurementHorizontal(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getDecoratedMeasurementVertical(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mVerticalSpace:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHeight:I

    iget v5, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mBottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTop:I

    iput v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    aget v4, p2, p1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    move v5, p1

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHorizontalSpace:I

    :goto_0
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    aput p1, p2, p1

    iget v3, p3, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p3, Landroid/graphics/Point;->x:I

    iput p1, p3, Landroid/graphics/Point;->y:I

    :cond_1
    aget v3, p2, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p2, p1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    iget v3, p3, Landroid/graphics/Point;->x:I

    iput v3, p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->column:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p3, Landroid/graphics/Point;->y:I

    iput v3, p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->row:I

    if-eqz v3, :cond_2

    iget p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mVerticalSpace:I

    add-int/2addr p3, v3

    iput p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    :cond_2
    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapSites:Landroid/util/SparseArray;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mColumnCountOfRow:Landroid/util/SparseIntArray;

    iget v3, p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->row:I

    iget p2, p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->column:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, v3, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapRects:Landroid/util/SparseArray;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    if-nez p2, :cond_3

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_3
    iget p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    add-int v4, p3, v0

    add-int/2addr v1, v3

    iput v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    invoke-virtual {p2, p3, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapRects:Landroid/util/SparseArray;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p3, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget p3, p4, p1

    iget p5, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    add-int/2addr p5, v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    aput p3, p4, p1

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$n;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method private static synthetic lambda$calculateVerticalChildrenSites$0(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$calculateVerticalChildrenSites$1(Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[ILjava/lang/Integer;)V
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->o(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$n;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-direct {p0, v2}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getDecoratedMeasurementHorizontal(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getDecoratedMeasurementVertical(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHorizontalSpace:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mWidth:I

    iget v5, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mRight:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mLeft:I

    iput v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    aget v4, p2, p1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    move v5, p1

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mVerticalSpace:I

    :goto_0
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    aput p1, p2, p1

    iput p1, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p3, Landroid/graphics/Point;->y:I

    :cond_1
    aget v3, p2, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p2, p1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    iget v3, p3, Landroid/graphics/Point;->x:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p3, Landroid/graphics/Point;->x:I

    iput v3, p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->column:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iput p3, p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->row:I

    if-eqz v3, :cond_2

    iget p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHorizontalSpace:I

    add-int/2addr p3, v3

    iput p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    :cond_2
    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapSites:Landroid/util/SparseArray;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mColumnCountOfRow:Landroid/util/SparseIntArray;

    iget v3, p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->row:I

    iget p2, p2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->column:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, v3, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapRects:Landroid/util/SparseArray;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    if-nez p2, :cond_3

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_3
    iget p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    iget v3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    add-int v4, v3, v1

    invoke-virtual {p2, p3, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapRects:Landroid/util/SparseArray;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p3, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget p3, p4, p1

    iget p5, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    add-int/2addr p5, v1

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    aput p3, p4, p1

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$n;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method private static synthetic lambda$fillAndRecycleView$4(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$fillAndRecycleView$5(Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView$u;Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapRects:Landroid/util/SparseArray;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->o(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$n;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetY:I

    sub-int v4, p1, p2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p1, p2

    goto :goto_0

    :cond_2
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetX:I

    sub-int v3, p1, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, p1, p2

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$n;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$o;)Z
    .locals 0

    instance-of p1, p1, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->generateDefaultLayoutParams()Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;
    .locals 1

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumn(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getLayoutParamsByPosition(I)Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->column:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getColumnCountOfRow(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mColumnCountOfRow:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method getFirstChildPosition()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getLayoutParamsByPosition(I)Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapSites:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    return-object p1
.end method

.method public getOrientation()I
    .locals 1
    .annotation build Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$Orientation;
    .end annotation

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRow(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getLayoutParamsByPosition(I)Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$LayoutParams;->row:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$h;Landroidx/recyclerview/widget/RecyclerView$h;)V
    .locals 0

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->removeAllViews()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapRects:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrapSites:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mColumnCountOfRow:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetX:I

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetY:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mLeft:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTop:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mRight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mBottom:I

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mLeft:I

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetX:I

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTop:I

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOffsetY:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->calculateVerticalChildrenSites(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTotalHeight:I

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->calculateHorizontalChildrenSites(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    iput v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTotalWidth:I

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I

    :goto_0
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 1

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetX:I

    add-int p3, p2, p1

    if-gez p3, :cond_1

    neg-int p1, p2

    goto :goto_0

    :cond_1
    add-int/2addr p2, p1

    iget p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTotalWidth:I

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getHorizontalSpace()I

    move-result v0

    sub-int/2addr p3, v0

    if-le p2, p3, :cond_2

    iget p1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTotalWidth:I

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getHorizontalSpace()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetX:I

    sub-int/2addr p1, p2

    :cond_2
    :goto_0
    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetX:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetX:I

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mPendingScrollPositionOffset:I

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->offsetChildrenHorizontal(I)V

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTop:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mLeft:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 1

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mItemCount:I

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetY:I

    add-int p3, p2, p1

    if-gez p3, :cond_1

    neg-int p1, p2

    goto :goto_0

    :cond_1
    add-int/2addr p2, p1

    iget p3, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTotalHeight:I

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getVerticalSpace()I

    move-result v0

    sub-int/2addr p3, v0

    if-le p2, p3, :cond_2

    iget p1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mTotalHeight:I

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->getVerticalSpace()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetY:I

    sub-int/2addr p1, p2

    :cond_2
    :goto_0
    iget p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetY:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mScrollOffsetY:I

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mPendingScrollPositionOffset:I

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->offsetChildrenVertical(I)V

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager$Orientation;
        .end annotation
    .end param

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mOrientation:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->requestLayout()V

    return-void
.end method

.method public setSpace(II)V
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mVerticalSpace:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHorizontalSpace:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mVerticalSpace:I

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->mHorizontalSpace:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->requestLayout()V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0

    new-instance p2, Landroidx/recyclerview/widget/o;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$y;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

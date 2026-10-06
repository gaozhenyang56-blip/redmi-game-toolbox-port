.class Lcom/miui/common/customview/AutoPasteListView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/customview/AutoPasteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field final synthetic d:Lcom/miui/common/customview/AutoPasteListView;


# direct methods
.method private constructor <init>(Lcom/miui/common/customview/AutoPasteListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->a:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->b:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/common/customview/AutoPasteListView;Lcom/miui/common/customview/AutoPasteListView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/customview/AutoPasteListView$b;-><init>(Lcom/miui/common/customview/AutoPasteListView;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/common/customview/AutoPasteListView$b;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->a:I

    return p0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v2, p3, p2

    const/4 v3, 0x0

    if-ne v2, p4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->g(Lcom/miui/common/customview/AutoPasteListView;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0, v3}, Lcom/miui/common/customview/AutoPasteListView;->g(Lcom/miui/common/customview/AutoPasteListView;Z)Z

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->c:I

    iput v3, p0, Lcom/miui/common/customview/AutoPasteListView$b;->a:I

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->a(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->b(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->c:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->c(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->a:I

    iget-object v4, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v4}, Lcom/miui/common/customview/AutoPasteListView;->c(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->a:I

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v3}, Lcom/miui/common/customview/AutoPasteListView;->d(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->b(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->b:F

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->i(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView$c;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->i(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/common/customview/AutoPasteListView$c;->a(F)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->c:I

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->a(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->b:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iput v2, p0, Lcom/miui/common/customview/AutoPasteListView$b;->b:F

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->i(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView$c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->i(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView$c;

    move-result-object v0

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->b:F

    invoke-interface {v0, v1}, Lcom/miui/common/customview/AutoPasteListView$c;->a(F)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->h(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->h(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->a(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->b(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v4}, Lcom/miui/common/customview/AutoPasteListView;->c(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v4}, Lcom/miui/common/customview/AutoPasteListView;->c(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->d(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->b(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->e(Lcom/miui/common/customview/AutoPasteListView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x68

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v2}, Lcom/miui/common/customview/AutoPasteListView;->f(Lcom/miui/common/customview/AutoPasteListView;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, v2

    :goto_2
    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->e(Lcom/miui/common/customview/AutoPasteListView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->h(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView$b;->d:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->h(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_5
    return-void
.end method

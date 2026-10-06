.class Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/customview/HpAutoPasteRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:F

.field final synthetic b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;


# direct methods
.method private constructor <init>(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->a:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/common/customview/HpAutoPasteRecyclerView;Lcom/miui/common/customview/HpAutoPasteRecyclerView$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;-><init>(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->a(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->b(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v4}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v4}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->b(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->d(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Landroid/os/Handler;

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

    iget-object v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v2}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->e(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Z

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

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->d(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->g(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->g(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_5
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v5

    add-int/2addr v3, v4

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0, v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f(Lcom/miui/common/customview/HpAutoPasteRecyclerView;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0, v6}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f(Lcom/miui/common/customview/HpAutoPasteRecyclerView;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->a(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gt v4, v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->b(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    move v3, v0

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v5}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v5}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->b(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->a:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    iput v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->a:F

    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->h(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->h(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;->a(F)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->a(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I

    move-result v0

    if-le v4, v0, :cond_4

    iget v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iput v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->a:F

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->h(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->h(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;

    move-result-object v0

    iget v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->a:F

    invoke-interface {v0, v1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;->a(F)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->g(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;->b:Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    invoke-static {v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->g(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

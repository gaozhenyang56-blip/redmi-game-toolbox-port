.class public final Lt3/d;
.super Lmiuix/recyclerview/card/f;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAutoTaskDecoration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoTaskDecoration.kt\ncom/miui/autotask/common/AutoTaskDecoration\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
    }
.end annotation


# instance fields
.field private final s:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final t:F

.field private u:I


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noPaddingType"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lt3/d;->s:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lt3/d;->t:F

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lt3/d;->x(Lt3/d;IILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lt3/d;->u:I

    return-void
.end method

.method private final w(I)I
    .locals 2

    int-to-float p1, p1

    sget v0, Ltm/e;->d:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iget v1, p0, Lt3/d;->t:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic x(Lt3/d;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lt3/d;->w(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemViewType(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lt3/d;->s:[I

    invoke-static {v3, v0}, Lqj/f;->k([II)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/recyclerview/card/f;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void

    :cond_1
    iget v0, p0, Lt3/d;->u:I

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/card/f;->v(I)V

    iget v0, p0, Lt3/d;->u:I

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/card/f;->u(I)V

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/recyclerview/card/f;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public final y(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lt3/d;->w(I)I

    move-result p1

    iput p1, p0, Lt3/d;->u:I

    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    iget p1, p0, Lt3/d;->u:I

    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    iget p1, p0, Lt3/d;->u:I

    return p1
.end method

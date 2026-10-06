.class public final Lt5/k$i;
.super Lt5/k$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field private final a:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic b:Lt5/k;


# direct methods
.method public constructor <init>(Lt5/k;Landroid/view/View;)V
    .locals 1
    .param p1    # Lt5/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lt5/k$i;->b:Lt5/k;

    invoke-direct {p0, p2}, Lt5/k$g;-><init>(Landroid/view/View;)V

    new-instance v0, Lt5/k$i$a;

    invoke-direct {v0, p2}, Lt5/k$i$a;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p2

    iput-object p2, p0, Lt5/k$i;->a:Loj/f;

    invoke-direct {p0}, Lt5/k$i;->e()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p2

    new-instance v0, Lt5/m;

    invoke-direct {v0, p0, p1}, Lt5/m;-><init>(Lt5/k$i;Lt5/k;)V

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic c(Lt5/k$i;Lt5/k;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lt5/k$i;->d(Lt5/k$i;Lt5/k;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static final d(Lt5/k$i;Lt5/k;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p1}, Lt5/k;->m(Lt5/k;)Lak/p;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Loj/l;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v1, "STITCH"

    invoke-static {v1, p3}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p2}, Lqj/d0;->e([Loj/l;)Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final e()Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 2

    iget-object v0, p0, Lt5/k$i;->a:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-slidingButton>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    return-object v0
.end method


# virtual methods
.method public a(Lt5/k$b;)V
    .locals 1
    .param p1    # Lt5/k$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lt5/k$g;->a(Lt5/k$b;)V

    invoke-virtual {p0, p1}, Lt5/k$i;->b(Lt5/k$b;)V

    return-void
.end method

.method public b(Lt5/k$b;)V
    .locals 3
    .param p1    # Lt5/k$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lt5/k$g;->b(Lt5/k$b;)V

    instance-of v0, p1, Lt5/k$f;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lt5/k$f;

    invoke-virtual {v0}, Lt5/k$f;->d()Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0}, Lt5/k$i;->e()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget-object v2, La8/s0;->g:La8/s0$a;

    invoke-virtual {v2}, La8/s0$a;->a()La8/s0;

    move-result-object v2

    invoke-virtual {p1}, Lt5/k$b;->a()I

    move-result p1

    invoke-virtual {v2, p1}, La8/s0;->s(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Loj/t;->a:Loj/t;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.class public final Lt5/k$c;
.super Lt5/k$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic d:Lt5/k;


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

    iput-object p1, p0, Lt5/k$c;->d:Lt5/k;

    invoke-direct {p0, p2}, Lt5/k$g;-><init>(Landroid/view/View;)V

    new-instance v0, Lt5/k$c$a;

    invoke-direct {v0, p2}, Lt5/k$c$a;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lt5/k$c;->a:Loj/f;

    new-instance v0, Lt5/k$c$c;

    invoke-direct {v0, p2}, Lt5/k$c$c;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lt5/k$c;->b:Loj/f;

    new-instance v0, Lt5/k$c$b;

    invoke-direct {v0, p2}, Lt5/k$c$b;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lt5/k$c;->c:Loj/f;

    new-instance v0, Lt5/l;

    invoke-direct {v0, p0, p1}, Lt5/l;-><init>(Lt5/k$c;Lt5/k;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Lt5/k$c;Lt5/k;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lt5/k$c;->d(Lt5/k$c;Lt5/k;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lt5/k$c;Lt5/k;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lt5/k$c;->g()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lt5/k;->m(Lt5/k;)Lak/p;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final e()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lt5/k$c;->a:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-imageView>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final f()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lt5/k$c;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-nameTv>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final g()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lt5/k$c;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-selectView>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Lt5/k$b;)V
    .locals 3
    .param p1    # Lt5/k$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lt5/k$g;->a(Lt5/k$b;)V

    instance-of v0, p1, Lt5/k$d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lt5/k$c;->f()Landroid/widget/TextView;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lt5/k$d;

    invoke-virtual {v1}, Lt5/k$d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lt5/k$d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lt5/k$c;->e()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lt5/k$c;->d:Lt5/k;

    invoke-static {v2}, Lt5/k;->l(Lt5/k;)Lrh/c;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :cond_0
    invoke-virtual {p0, p1}, Lt5/k$c;->b(Lt5/k$b;)V

    return-void
.end method

.method public b(Lt5/k$b;)V
    .locals 1
    .param p1    # Lt5/k$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lt5/k$g;->b(Lt5/k$b;)V

    instance-of v0, p1, Lt5/k$d;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lt5/k$c;->g()Landroid/view/View;

    move-result-object v0

    check-cast p1, Lt5/k$d;

    invoke-virtual {p1}, Lt5/k$d;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

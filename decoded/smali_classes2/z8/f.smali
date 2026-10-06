.class public Lz8/f;
.super Lx8/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx8/c<",
        "Lb9/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lx8/c;-><init>()V

    iput-object p1, p0, Lz8/f;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070979

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lx8/c;->i(F)V

    return-void
.end method

.method public static synthetic j(Lz8/f;Lb9/b;Lb9/c;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lz8/f;->o(Lb9/b;Lb9/c;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lz8/f;Lb9/c;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz8/f;->n(Lb9/c;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic n(Lb9/c;ILandroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lz8/f;->p(Lb9/c;IZ)V

    return-void
.end method

.method private synthetic o(Lb9/b;Lb9/c;ILandroid/view/View;)V
    .locals 0

    iget-object p4, p0, Lz8/f;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lb9/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/miui/gamebooster/common/MarketDownloadV2Activity;->f0(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lz8/f;->p(Lb9/c;IZ)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lb9/c;

    invoke-virtual {p0, p1, p2, p3}, Lz8/f;->l(Lq6/i;Lb9/c;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lb9/c;

    invoke-virtual {p0, p1, p2}, Lz8/f;->m(Lb9/c;I)Z

    move-result p1

    return p1
.end method

.method public e()Landroid/view/View;
    .locals 2

    new-instance v0, Ly8/f;

    iget-object v1, p0, Lz8/f;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Ly8/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public l(Lq6/i;Lb9/c;I)V
    .locals 3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast p1, Ly8/f;

    move-object v0, p2

    check-cast v0, Lb9/b;

    invoke-virtual {p0}, Lx8/c;->g()Lrh/c;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ly8/f;->b(Lrh/c;Lb9/b;)V

    invoke-virtual {v0}, Lb9/b;->A()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "\u5b89\u88c5"

    goto :goto_0

    :cond_0
    const-string v1, "\u65e0\u6309\u94ae"

    :goto_0
    const-string v2, "1513.2.3.1.38802"

    invoke-static {v0, v1, p3, v2}, Le9/a;->f(Lb9/c;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lz8/d;

    invoke-direct {v1, p0, p2, p3}, Lz8/d;-><init>(Lz8/f;Lb9/c;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lb9/c;->s()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ly8/f;->getBinding()Ljf/i;

    move-result-object p1

    iget-object p1, p1, Ljf/i;->h:Landroid/widget/TextView;

    new-instance v1, Lz8/e;

    invoke-direct {v1, p0, v0, p2, p3}, Lz8/e;-><init>(Lz8/f;Lb9/b;Lb9/c;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public m(Lb9/c;I)Z
    .locals 0

    instance-of p1, p1, Lb9/b;

    return p1
.end method

.method public p(Lb9/c;IZ)V
    .locals 3

    if-eqz p3, :cond_0

    const-string v0, "\u5b89\u88c5\u6309\u94ae"

    goto :goto_0

    :cond_0
    const-string v0, "\u6e38\u620f\u8be6\u60c5\u9875"

    :goto_0
    const-string v1, "banner\u56fe"

    const-string v2, "1513.2.3.1.38804"

    invoke-static {p1, v1, v0, p2, v2}, Le9/a;->c(Lb9/c;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lb9/c;->t()V

    iget-object p1, p0, Lz8/f;->d:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, La8/t0;->a(Landroid/content/Context;Ln6/c;)V

    :cond_1
    return-void
.end method

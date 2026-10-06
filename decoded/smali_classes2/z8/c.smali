.class public Lz8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lb9/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:F

.field private final c:F

.field private final d:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const v1, 0x7f08080a

    invoke-virtual {v0, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    sget-object v1, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v1}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    new-instance v2, Lz8/c$a;

    invoke-direct {v2, p0}, Lz8/c$a;-><init>(Lz8/c;)V

    invoke-virtual {v0, v2}, Lrh/c$b;->D(Lzh/a;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lz8/c;->d:Lrh/c;

    iput-object p1, p0, Lz8/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070495

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lz8/c;->b:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lz8/c;->c:F

    return-void
.end method

.method public static synthetic f(Lz8/c;Lb9/c;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz8/c;->l(Lb9/c;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lz8/c;Lb9/a;Lb9/c;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lz8/c;->m(Lb9/a;Lb9/c;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic h(Lz8/c;)F
    .locals 0

    iget p0, p0, Lz8/c;->c:F

    return p0
.end method

.method static synthetic i(Lz8/c;)F
    .locals 0

    iget p0, p0, Lz8/c;->b:F

    return p0
.end method

.method private synthetic l(Lb9/c;ILandroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lz8/c;->n(Lb9/c;IZ)V

    return-void
.end method

.method private synthetic m(Lb9/a;Lb9/c;ILandroid/view/View;)V
    .locals 0

    iget-object p4, p0, Lz8/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lb9/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/miui/gamebooster/common/MarketDownloadV2Activity;->f0(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lz8/c;->n(Lb9/c;IZ)V

    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    invoke-static {p0}, Lq6/a;->b(Lq6/b;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lb9/c;

    invoke-virtual {p0, p1, p2, p3}, Lz8/c;->j(Lq6/i;Lb9/c;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lb9/c;

    invoke-virtual {p0, p1, p2}, Lz8/c;->k(Lb9/c;I)Z

    move-result p1

    return p1
.end method

.method public e()Landroid/view/View;
    .locals 2

    new-instance v0, Ly8/d;

    iget-object v1, p0, Lz8/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ly8/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public j(Lq6/i;Lb9/c;I)V
    .locals 2

    instance-of v0, p2, Lb9/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lb9/a;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast p1, Ly8/d;

    iget-object v1, p0, Lz8/c;->d:Lrh/c;

    invoke-virtual {p1, v0, v1, p3}, Ly8/d;->d(Lb9/a;Lrh/c;I)V

    new-instance v1, Lz8/a;

    invoke-direct {v1, p0, p2, p3}, Lz8/a;-><init>(Lz8/c;Lb9/c;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lb9/c;->s()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ly8/d;->getBinding()Ljf/h;

    move-result-object p1

    iget-object p1, p1, Ljf/h;->k:Landroid/widget/TextView;

    new-instance v1, Lz8/b;

    invoke-direct {v1, p0, v0, p2, p3}, Lz8/b;-><init>(Lz8/c;Lb9/a;Lb9/c;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public k(Lb9/c;I)Z
    .locals 0

    instance-of p1, p1, Lb9/a;

    return p1
.end method

.method public n(Lb9/c;IZ)V
    .locals 3

    if-eqz p3, :cond_0

    const-string v0, "\u5b89\u88c5\u6309\u94ae"

    goto :goto_0

    :cond_0
    const-string v0, "\u6e38\u620f\u8be6\u60c5\u9875"

    :goto_0
    const-string v1, "\u6392\u884c\u699c"

    const-string v2, "1513.2.3.1.38804"

    invoke-static {p1, v1, v0, p2, v2}, Le9/a;->c(Lb9/c;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lb9/c;->t()V

    iget-object p1, p0, Lz8/c;->a:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, La8/t0;->a(Landroid/content/Context;Ln6/c;)V

    :cond_1
    return-void
.end method

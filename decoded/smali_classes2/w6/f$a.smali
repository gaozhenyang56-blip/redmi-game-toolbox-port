.class Lw6/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/f;->m(Lx6/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lx6/c;

.field final synthetic b:Lw6/f;


# direct methods
.method constructor <init>(Lw6/f;Lx6/c;)V
    .locals 0

    iput-object p1, p0, Lw6/f$a;->b:Lw6/f;

    iput-object p2, p0, Lw6/f$a;->a:Lx6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lw6/f$a;Lx6/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lw6/f$a;->b(Lx6/c;)V

    return-void
.end method

.method private synthetic b(Lx6/c;)V
    .locals 3

    iget-object v0, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {v0}, Lw6/f;->f(Lw6/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ls8/h;->I0(Landroid/content/Context;)V

    iget-object v0, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {v0}, Lw6/f;->g(Lw6/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx6/c;

    iput-boolean v2, v1, Lx6/c;->d:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lx6/c;->d:Z

    iget-object v0, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {v0}, Lw6/f;->h(Lw6/f;)V

    iget-object v0, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {v0}, Lw6/f;->i(Lw6/f;)Lx6/b;

    move-result-object v0

    iget p1, p1, Lx6/c;->c:I

    iput p1, v0, Lx6/b;->c:I

    iget-object p1, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {p1}, Lw6/f;->i(Lw6/f;)Lx6/b;

    move-result-object p1

    sget v0, Lx6/a;->i:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lx6/b;->d:Ljava/lang/String;

    iget-object p1, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {p1}, Lw6/f;->j(Lw6/f;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lw6/f$a;->b:Lw6/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {v0}, Lw6/f;->i(Lw6/f;)Lx6/b;

    move-result-object v0

    invoke-static {p1, v0}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    iget-object p1, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {p1}, Lw6/f;->f(Lw6/f;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lw6/f$a;->b:Lw6/f;

    invoke-static {v0}, Lw6/f;->k(Lw6/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lw6/i;->n(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lw6/f$a;->b:Lw6/f;

    iget-object v0, p0, Lw6/f$a;->a:Lx6/c;

    new-instance v1, Lw6/e;

    invoke-direct {v1, p0, v0}, Lw6/e;-><init>(Lw6/f$a;Lx6/c;)V

    invoke-static {p1, v1}, Lw6/f;->e(Lw6/f;Lw6/f$b;)V

    return-void
.end method

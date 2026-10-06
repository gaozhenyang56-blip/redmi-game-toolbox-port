.class Ll8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll8/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll8/a;


# direct methods
.method constructor <init>(Ll8/a;)V
    .locals 0

    iput-object p1, p0, Ll8/a$a;->a:Ll8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->a(Ll8/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-virtual {v0}, Ll8/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->b(Ll8/a;)I

    move-result v1

    iget-object v2, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v2}, Ll8/a;->a(Ll8/a;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ll8/a;->d(Ll8/a;I)I

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->i(Ll8/a;)I

    move-result v1

    iget-object v2, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v2}, Ll8/a;->a(Ll8/a;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ll8/a;->j(Ll8/a;I)I

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->a(Ll8/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Ll8/a;->k(Ll8/a;Z)Z

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->m(Ll8/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ll8/a;->n(Ll8/a;Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ll8/a;->l(Ll8/a;I)I

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->m(Ll8/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ll8/a;->p(Ll8/a;Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ll8/a;->o(Ll8/a;I)I

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->c(Ll8/a;)I

    move-result v1

    invoke-static {v0, v1}, Ll8/a;->q(Ll8/a;I)I

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->m(Ll8/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ll8/a;->f(Ll8/a;Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ll8/a;->e(Ll8/a;I)I

    iget-object v0, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v0}, Ll8/a;->g(Ll8/a;)I

    move-result v1

    iget-object v2, p0, Ll8/a$a;->a:Ll8/a;

    invoke-static {v2}, Ll8/a;->h(Ll8/a;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ll8/a;->E(II)V

    :cond_0
    return-void
.end method

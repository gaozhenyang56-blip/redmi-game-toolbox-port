.class Lmiuix/springback/trigger/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/springback/trigger/a$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/b;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiuix/springback/trigger/a$b;I)V
    .locals 4

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/b;->m(Lmiuix/springback/trigger/b;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v3, v2, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    if-ne v0, v3, :cond_2

    invoke-static {v2}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/springback/trigger/b$j;->a(Lmiuix/springback/trigger/a$b;I)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object p2, p1, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object p2, p1, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lmiuix/springback/trigger/a$b;)V
    .locals 5

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/b;->m(Lmiuix/springback/trigger/b;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {v0}, Lmiuix/springback/trigger/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {v0}, Lmiuix/springback/trigger/a;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/a$a;

    if-ne v0, p1, :cond_2

    iget-object v2, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v2}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v2}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v2

    iget-object v3, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v4, v3, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    if-ne v2, v4, :cond_2

    iget-object v2, v3, Lmiuix/springback/trigger/b;->P:Lmiuix/springback/trigger/b$l;

    invoke-virtual {v3, v2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object v2, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v2}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v2

    iget-object v3, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v3, v0}, Lmiuix/springback/trigger/b;->L(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;)Lmiuix/springback/trigger/a$a;

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v3

    iget-object v4, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget v4, v4, Lmiuix/springback/trigger/b;->B:I

    invoke-static {v0, v3, v2, v4}, Lmiuix/springback/trigger/b;->q(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;Lmiuix/springback/trigger/a$a;I)V

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/b$j;->b(Lmiuix/springback/trigger/a$b;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v0, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->J()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->i(Lmiuix/springback/trigger/b;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    neg-int v0, v0

    iget-object v2, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v2}, Lmiuix/springback/trigger/b;->i(Lmiuix/springback/trigger/b;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->i(Lmiuix/springback/trigger/b;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->i(Lmiuix/springback/trigger/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v2}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v2

    iget v2, v2, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    :goto_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v0, p1, Lmiuix/springback/trigger/b;->S:Lmiuix/springback/trigger/b$m;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_2
    return-void
.end method

.method public c(Lmiuix/springback/trigger/a$b;)V
    .locals 4

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/b;->m(Lmiuix/springback/trigger/b;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v3, v2, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    if-ne v0, v3, :cond_2

    invoke-static {v2}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/b$j;->c(Lmiuix/springback/trigger/a$b;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v0, p1, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v0, p1, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Lmiuix/springback/trigger/a$b;)V
    .locals 6

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v2, v1, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    invoke-static {v1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v0, v0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v1, v0, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v0, v0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v3, v3}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v1, v0, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/b$j;->d(Lmiuix/springback/trigger/a$b;)V

    :cond_3
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->l(Lmiuix/springback/trigger/b;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->o(Lmiuix/springback/trigger/b;)J

    move-result-wide v0

    const-wide/16 v4, 0x1388

    cmp-long p1, v0, v4

    if-lez p1, :cond_4

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    sget v0, Lmiuix/view/i;->w:I

    sget v1, Lmiuix/view/i;->k:I

    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->p(Lmiuix/springback/trigger/b;)V

    :cond_4
    iget-object p1, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1, v3}, Lmiuix/springback/trigger/b;->m(Lmiuix/springback/trigger/b;Z)Z

    return-void
.end method

.method public e(Lmiuix/springback/trigger/a$b;ILjava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTexts:[Ljava/lang/String;

    aput-object p3, p1, p2

    return-void
.end method

.method public f(Lmiuix/springback/trigger/a$b;)V
    .locals 4

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/b;->m(Lmiuix/springback/trigger/b;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v3, v2, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    if-ne v0, v3, :cond_2

    invoke-static {v2}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v0, v0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v2, v0, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    invoke-virtual {v0, v2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v0, v0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    iget-object v1, v0, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/b$e;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->n(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$j;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/b$j;->d(Lmiuix/springback/trigger/a$b;)V

    :cond_2
    return-void
.end method

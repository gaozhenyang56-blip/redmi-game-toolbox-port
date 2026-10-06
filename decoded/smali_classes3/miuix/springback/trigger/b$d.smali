.class Lmiuix/springback/trigger/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/springback/trigger/a$c$b;


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

    iput-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiuix/springback/trigger/a$c;)V
    .locals 4

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/b;->F(Lmiuix/springback/trigger/b;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v3, v2, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    if-ne v0, v3, :cond_2

    invoke-static {v2}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/b$k;->a(Lmiuix/springback/trigger/a$c;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v0, p1, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v0, p1, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lmiuix/springback/trigger/a$c;)V
    .locals 4

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v2, v1, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    invoke-static {v1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v0, v0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v1, v0, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/b$k;->b(Lmiuix/springback/trigger/a$c;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v3, v3}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v0, p1, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {p1}, Lmiuix/springback/trigger/b;->S()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1, v3}, Lmiuix/springback/trigger/b;->F(Lmiuix/springback/trigger/b;Z)Z

    return-void
.end method

.method public c(Lmiuix/springback/trigger/a$c;I)V
    .locals 4

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/b;->F(Lmiuix/springback/trigger/b;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v3, v2, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    if-ne v0, v3, :cond_2

    invoke-static {v2}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/springback/trigger/b$k;->c(Lmiuix/springback/trigger/a$c;I)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getSpringScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p2, p1, Lmiuix/springback/trigger/b;->R:Lmiuix/springback/trigger/b$f;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p2, p1, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Lmiuix/springback/trigger/a$c;)V
    .locals 5

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/b;->F(Lmiuix/springback/trigger/b;Z)Z

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {v0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {v0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object v0

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v1, v0, Lmiuix/springback/trigger/b;->P:Lmiuix/springback/trigger/b$l;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {v0}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/b;->L(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;)Lmiuix/springback/trigger/a$a;

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {v0}, Lmiuix/springback/trigger/b;->S()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v2}, Lmiuix/springback/trigger/b;->k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v2}, Lmiuix/springback/trigger/b;->k(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/b$k;

    move-result-object v2

    invoke-interface {v2, p1}, Lmiuix/springback/trigger/b$k;->d(Lmiuix/springback/trigger/a$c;)V

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v2, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    invoke-virtual {v2, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    if-eqz v0, :cond_3

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->J()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v2, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v2, v2, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v3, v3, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v2, v2, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v3, v3, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_0
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v0, p1, Lmiuix/springback/trigger/b;->S:Lmiuix/springback/trigger/b$m;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_4
    return-void
.end method

.method public e(Lmiuix/springback/trigger/a$c;ILjava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    aput-object p3, p1, p2

    return-void
.end method

.method public f(Lmiuix/springback/trigger/a$c;)V
    .locals 3

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->j(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/d;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    iget-object v2, v1, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {p1}, Lmiuix/springback/trigger/b;->S()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$d;->a:Lmiuix/springback/trigger/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/springback/trigger/b;->F(Lmiuix/springback/trigger/b;Z)Z

    return-void
.end method

.class public Lg5/g;
.super Lg5/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lg5/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/n;-><init>(Lg5/j;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 3

    invoke-super {p0, p1}, Lg5/n;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object v0, p0, Lg5/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: fullscreen is click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg5/n;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lq6/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg5/n;->g()I

    move-result v0

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    invoke-virtual {p0}, Lg5/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, La8/a0;->B(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lg5/n;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, La8/a0;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lg5/n;->d()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lg5/n;->a:Ljava/lang/String;

    const-string v0, "startActivityWithPackageName failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    check-cast p1, Lq6/i;

    invoke-virtual {p1}, Lq6/i;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lg5/n;->g()I

    move-result v1

    invoke-static {p1, v0, v1}, La8/a0;->Z(Landroid/content/Context;Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method protected f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f120b2c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public Lg5/p;
.super Lg5/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lg5/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/n;-><init>(Lg5/j;)V

    invoke-virtual {p0}, Lg5/n;->d()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p1}, La8/a0;->H(Landroid/content/ComponentName;)Z

    move-result p1

    iput-boolean p1, p0, Lg5/n;->e:Z

    :cond_0
    return-void
.end method

.method public static synthetic i(Lg5/p;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg5/p;->j(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic j(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Intent;)V
    .locals 1

    check-cast p1, Lq6/i;

    invoke-virtual {p1}, Lq6/i;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lg5/n;->g()I

    move-result v0

    invoke-static {p1, p2, v0}, La8/a0;->a0(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 2

    invoke-super {p0, p1}, Lg5/n;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object v0, p0, Lg5/n;->a:Ljava/lang/String;

    const-string v1, "onClick: splite is click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lq6/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lg5/n;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg5/n;->g()I

    move-result v1

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    invoke-static {v0, v1}, La8/a0;->B(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-gt v0, v1, :cond_0

    iget-object p1, p0, Lg5/n;->a:Ljava/lang/String;

    const-string v0, "onClick: isInSplit!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    new-instance v1, Lg5/o;

    invoke-direct {v1, p0, p1, v0}, Lg5/o;-><init>(Lg5/p;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method protected f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120b2d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

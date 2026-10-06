.class Lf7/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf7/d$b;->a:I

    iput-object p2, p0, Lf7/d$b;->b:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf7/d$b;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lj8/s;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lf7/d;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li8/c;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf7/d$b;->c:Landroid/content/Context;

    invoke-static {v0}, Lf7/d$b;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lf7/d;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Li8/c;->D0(Ljava/util/ArrayList;)V

    const-string p1, "gb.action.update_video_list"

    invoke-direct {p0, p1}, Lf7/d$b;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "gamebooster"

    const-string v1, "vtb_net_support_apps"

    invoke-static {v0, v1, p0}, La8/y;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "vtb_default_support_list"

    invoke-static {v0, p0}, La8/y;->d(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lf7/d$b;->c:Landroid/content/Context;

    invoke-static {v0}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr0/a;->d(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    invoke-static {}, Lx4/z1;->e()I

    move-result v1

    const-string v2, "InstalledAppMonitor"

    if-eq v0, v1, :cond_0

    iget v1, p0, Lf7/d$b;->a:I

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not current UserSpace , pkgUid Not available in the current space! pUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", myUserId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, La8/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lf7/d$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lf7/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lf7/d$b;->c:Landroid/content/Context;

    invoke-static {v0}, Lf7/c;->c(Landroid/content/Context;)Lf7/c;

    move-result-object v0

    iget-object v1, p0, Lf7/d$b;->b:Ljava/lang/String;

    iget v3, p0, Lf7/d$b;->a:I

    invoke-virtual {v0, v1, v3}, Lf7/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf7/d$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " added to GameBox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lf7/d$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lw6/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lx6/b;

    iget-object v1, p0, Lf7/d$b;->b:Ljava/lang/String;

    iget v2, p0, Lf7/d$b;->a:I

    sget v3, Lx6/a;->a:I

    sget v4, Lx6/a;->i:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lx6/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lx6/b;

    iget-object v1, p0, Lf7/d$b;->b:Ljava/lang/String;

    iget v2, p0, Lf7/d$b;->a:I

    sget v3, Lx6/a;->a:I

    sget v4, Lx6/a;->f:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lx6/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    invoke-static {}, Lf7/d;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    return-void

    :cond_4
    iget-object v0, p0, Lf7/d$b;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lf7/d$b;->a(Ljava/lang/String;)V

    return-void
.end method

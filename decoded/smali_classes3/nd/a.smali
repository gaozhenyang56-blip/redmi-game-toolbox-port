.class public abstract Lnd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd/d;


# instance fields
.field protected a:Z

.field protected b:Z

.field private c:I

.field private d:Lmd/o$b;

.field private e:Lmd/p;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnd/a;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lnd/a;->c:I

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lnd/a;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnd/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lnd/a;->e:Lmd/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnd/a;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lnd/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmd/p;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lnd/a;->e:Lmd/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnd/a;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lnd/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmd/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V
    .locals 0

    iput-object p1, p0, Lnd/a;->f:Landroid/content/Context;

    iput-object p2, p0, Lnd/a;->d:Lmd/o$b;

    iput-object p3, p0, Lnd/a;->e:Lmd/p;

    return-void
.end method

.method protected h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnd/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method protected i()Z
    .locals 1

    iget-boolean v0, p0, Lnd/a;->b:Z

    return v0
.end method

.method public j(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lnd/a;->k(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProtectChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseChargeProtect_"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected k(Z)V
    .locals 4

    invoke-virtual {p0}, Lnd/a;->c()Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnd/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnd/a;->a:Z

    iget-object v2, p0, Lnd/a;->d:Lmd/o$b;

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    invoke-virtual {v2}, Lmd/o$b;->a()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnd/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",setCanWork fromShouldWork:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",to:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",canWork:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseChargeProtect_"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected l(Z)V
    .locals 4

    invoke-virtual {p0}, Lnd/a;->c()Z

    move-result v0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lnd/a;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnd/a;->b:Z

    iget-object v2, p0, Lnd/a;->d:Lmd/o$b;

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    invoke-virtual {v2}, Lmd/o$b;->a()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnd/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",setEnable fromShouldWork:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",to:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",enable:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseChargeProtect_"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

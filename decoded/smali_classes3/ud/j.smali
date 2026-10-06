.class public Lud/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/j$b;
    }
.end annotation


# instance fields
.field private a:Lud/o;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lud/j;->a:Lud/o;

    invoke-static {}, Lme/q;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lud/l;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lud/l;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lud/j;->a:Lud/o;

    goto :goto_1

    :cond_0
    invoke-static {}, Lme/q;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lud/k;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lud/k;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lme/q;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lud/m;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lud/m;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lud/j$a;)V
    .locals 0

    invoke-direct {p0}, Lud/j;-><init>()V

    return-void
.end method

.method public static b()Lud/j;
    .locals 1

    invoke-static {}, Lud/j$b;->a()Lud/j;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lud/j;->a:Lud/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lud/o;->k(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lud/j;->a:Lud/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lme/b;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lud/j;->a:Lud/o;

    invoke-interface {v0}, Lud/o;->e()V

    iget-object v0, p0, Lud/j;->a:Lud/o;

    invoke-interface {v0}, Lud/o;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lud/j;->a:Lud/o;

    invoke-interface {v0}, Lud/o;->e()V

    :goto_0
    return-void
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lud/j;->a:Lud/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lud/o;->n()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public d()[I
    .locals 1

    iget-object v0, p0, Lud/j;->a:Lud/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lud/o;->l()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public e()I
    .locals 3

    iget-object v0, p0, Lud/j;->a:Lud/o;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lud/o;->m()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiSohShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryHeathManager2"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public f()V
    .locals 1

    invoke-static {}, Lme/b;->L()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lme/b;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lud/j;->g()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lud/j;->a()V

    :goto_0
    return-void
.end method

.method public h(Z)Z
    .locals 1

    iget-object v0, p0, Lud/j;->a:Lud/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lud/o;->j(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

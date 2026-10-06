.class public La7/j;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/gamebooster/service/w;

.field private d:Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 1

    invoke-direct {p0}, La7/c;-><init>()V

    new-instance v0, La7/j$a;

    invoke-direct {v0, p0}, La7/j$a;-><init>(La7/j;)V

    iput-object v0, p0, La7/j;->e:Landroid/content/ServiceConnection;

    iput-object p1, p0, La7/j;->b:Landroid/content/Context;

    iput-object p2, p0, La7/j;->c:Lcom/miui/gamebooster/service/w;

    return-void
.end method

.method static synthetic f(La7/j;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;
    .locals 0

    iget-object p0, p0, La7/j;->d:Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    return-object p0
.end method

.method static synthetic g(La7/j;Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;
    .locals 0

    iput-object p1, p0, La7/j;->d:Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, La7/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_handsfree"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v0, p0, La7/j;->a:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, La7/j;->d:Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;->t2()V

    :cond_0
    iget-object v0, p0, La7/j;->b:Landroid/content/Context;

    iget-object v1, p0, La7/j;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, La7/j;->d:Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: HandsFree error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HandsFreeService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 4

    iget-boolean v0, p0, La7/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "GameBoosterService"

    const-string v1, "mHandsFree...start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La7/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_handsfree"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La7/j;->b:Landroid/content/Context;

    const-class v3, Lcom/miui/gamebooster/service/GameBoosterTelecomManager;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, La7/j;->b:Landroid/content/Context;

    iget-object v3, p0, La7/j;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, La8/g0;->d0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Lm6/a;->y(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, La7/j;->a:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

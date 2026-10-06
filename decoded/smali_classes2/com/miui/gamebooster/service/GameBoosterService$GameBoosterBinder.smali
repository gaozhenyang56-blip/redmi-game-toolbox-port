.class public Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;
.super Lcom/miui/gamebooster/service/IGameBooster$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameBoosterBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/IGameBooster$Stub;-><init>()V

    return-void
.end method

.method static synthetic o8(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->p8(Ljava/lang/String;)V

    return-void
.end method

.method private p8(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameBoosterService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->K(Lcom/miui/gamebooster/service/GameBoosterService;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gamebooster:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public F0(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$b;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$b;-><init>(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public K5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/o1;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N3()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    move-result-object v1

    invoke-virtual {v1}, Lm6/a;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->q(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public S6()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, La8/o0;->b(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/service/GameBoosterService;->L(Lcom/miui/gamebooster/service/GameBoosterService;J)J

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    const-string v1, "gb_notification_business_period"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->M(Lcom/miui/gamebooster/service/GameBoosterService;I)I

    return-void
.end method

.method public Z1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->T(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GameBoosterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAddedGames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->Q(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->Q(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->Q(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->Q(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/List;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/service/w;->Z([Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e7()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La8/o1;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->G(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->I(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->J(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder$a;-><init>(Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->G(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->H(Lcom/miui/gamebooster/service/GameBoosterService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->p8(Ljava/lang/String;)V

    return-void
.end method

.method public s0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$GameBoosterBinder;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    const/16 v1, 0x77

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/GameBoosterService;->N(Lcom/miui/gamebooster/service/GameBoosterService;I)V

    return-void
.end method

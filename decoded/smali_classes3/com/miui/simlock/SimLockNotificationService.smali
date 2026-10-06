.class public Lcom/miui/simlock/SimLockNotificationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/simlock/SimLockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/miui/simlock/SimLockNotificationService;->b:Lcom/miui/simlock/SimLockManager;

    invoke-virtual {v0}, Lcom/miui/simlock/SimLockManager;->s8()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x2766

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfg/e;

    iget-object v4, v3, Lfg/e;->a:Lr1/a;

    sget-object v5, Lr1/a;->c:Lr1/a;

    if-eq v4, v5, :cond_2

    sget-object v5, Lr1/a;->d:Lr1/a;

    if-ne v4, v5, :cond_1

    :cond_2
    iget v3, v3, Lfg/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/simlock/SimLockNotificationService;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lfg/h;->a(Landroid/content/Context;I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/simlock/SimLockNotificationService;->b:Lcom/miui/simlock/SimLockManager;

    invoke-virtual {v0, v2}, Lcom/miui/simlock/SimLockManager;->H8(Ljava/util/ArrayList;)V

    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/miui/simlock/SimLockNotificationService;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lfg/h;->a(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/SimLockNotificationService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/simlock/SimLockManager;->p8(Landroid/content/Context;)Lcom/miui/simlock/SimLockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/simlock/SimLockNotificationService;->b:Lcom/miui/simlock/SimLockManager;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    const-string v1, "notification_extra"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/simlock/SimLockNotificationService;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/simlock/SimLockNotificationService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/simlock/c;->s(Landroid/content/Context;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.class public final Lz3/d;
.super Lz3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz3/a<",
        "Lcom/miui/autotask/bean/o;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz3/a;-><init>()V

    const-string v0, "MiHomeTaskStateChangeHandle"

    iput-object v0, p0, Lz3/d;->h:Ljava/lang/String;

    return-void
.end method

.method public static synthetic n(Landroid/os/Bundle;Lz3/d;)V
    .locals 0

    invoke-static {p0, p1}, Lz3/d;->s(Landroid/os/Bundle;Lz3/d;)V

    return-void
.end method

.method private final o()Landroid/os/Bundle;
    .locals 11

    const-class v0, Ljava/lang/String;

    :try_start_0
    sget-object v1, Loj/m;->b:Loj/m$a;

    const-string v1, "android.os.PowerExemptionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "REASON_GEOFENCING"

    invoke-static {v1, v3}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v3}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x7530

    const-string v4, "addToTemporaryAllowList"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const/4 v8, 0x2

    aput-object v0, v6, v8

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v0, v6, v10

    new-array v0, v5, [Ljava/lang/Object;

    const-string v5, "com.xiaomi.smarthome"

    aput-object v5, v0, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, ""

    aput-object v1, v0, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v2, v4, v6, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lz3/a;->i()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-static {v0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lz3/d;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "grantTemporaryPermission error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "grantTemporaryPermission fail see MiHomeTaskStateChangeHandle"

    invoke-virtual {p0, v1}, Lz3/a;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method private final p(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    :try_start_0
    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-virtual {p0, p1}, Lz3/a;->l(Landroid/os/Bundle;)Lcom/miui/autotask/bean/s;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "argument_enable_state"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "argument_user_id"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    const-string v3, "argument_channel"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    const-string v4, "argument_scene_id"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const-string p1, "enable state error!"

    invoke-virtual {p0, p1}, Lz3/a;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "enable"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lx3/a;->a:Lx3/a;

    invoke-virtual {v5, v4, v3, v2, p1}, Lx3/a;->m(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/miui/autotask/bean/s;->g(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/ai/service/OperationListCollectService;->U(Landroid/content/Context;Ljava/io/Serializable;)V

    invoke-virtual {p0}, Lz3/a;->i()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "target scene is not exits!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lz3/d;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTaskEnableStateChange error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "see log MiHomeTaskStateChangeHandle"

    invoke-virtual {p0, v0}, Lz3/a;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Landroid/os/Bundle;

    return-object p1
.end method

.method private final r(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lz3/c;

    invoke-direct {v1, p1, p0}, Lz3/c;-><init>(Landroid/os/Bundle;Lz3/d;)V

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final s(Landroid/os/Bundle;Lz3/d;)V
    .locals 3

    const-string v0, "$data"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Loj/m;->b:Loj/m$a;

    const-string v0, "argument_sync_task_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-static {p0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/miui/autotask/bean/SyncTaskModel;

    sget-object v0, Lx3/a;->a:Lx3/a;

    invoke-virtual {v0, p0}, Lx3/a;->l(Lcom/miui/autotask/bean/SyncTaskModel;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Lcom/miui/autotask/bean/t;

    invoke-direct {v1, p0}, Lcom/miui/autotask/bean/t;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/miui/ai/service/OperationListCollectService;->U(Landroid/content/Context;Ljava/io/Serializable;)V

    :cond_0
    iget-object v0, p1, Lz3/d;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncTask done! effect size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-static {p0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p1, Lz3/d;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncTask fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz3/d;->q(Lt3/e;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public q(Lt3/e;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Lt3/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e<",
            "Lcom/miui/autotask/bean/o;",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lt3/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/o;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/o;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argument_channel"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "miHome"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lt3/e;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lt3/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lt3/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/o;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/o;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1}, Lt3/e;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/o;

    invoke-virtual {p1}, Lcom/miui/autotask/bean/o;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lz3/d;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by MiHomeTaskServiceHandle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lz3/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lz3/a;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lz3/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lz3/a;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz3/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lz3/d;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lz3/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lz3/d;->o()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lz3/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lz3/d;->r(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lz3/a;->i()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unSupport method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz3/a;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

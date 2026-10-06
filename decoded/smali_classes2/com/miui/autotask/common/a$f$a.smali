.class final Lcom/miui/autotask/common/a$f$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/common/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.autotask.common.GeofenceManager$startGeofenceByPolaris$1$1"
    f = "GeofenceManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/miui/autotask/common/a;


# direct methods
.method constructor <init>(Lcom/miui/autotask/common/a;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/autotask/common/a;",
            "Ltj/d<",
            "-",
            "Lcom/miui/autotask/common/a$f$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/autotask/common/a$f$a;->c:Lcom/miui/autotask/common/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/autotask/common/a$f$a;

    iget-object v1, p0, Lcom/miui/autotask/common/a$f$a;->c:Lcom/miui/autotask/common/a;

    invoke-direct {v0, v1, p2}, Lcom/miui/autotask/common/a$f$a;-><init>(Lcom/miui/autotask/common/a;Ltj/d;)V

    iput-object p1, v0, Lcom/miui/autotask/common/a$f$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/autotask/common/a$f$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/autotask/common/a$f$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/common/a$f$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/autotask/common/a$f$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "GeofenceManager"

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v1, p0, Lcom/miui/autotask/common/a$f$a;->a:I

    if-nez v1, :cond_3

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/autotask/common/a$f$a;->b:Ljava/lang/Object;

    check-cast p1, Llk/i0;

    :try_start_0
    const-string p1, "init polaris service"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/autotask/common/a$f$a;->c:Lcom/miui/autotask/common/a;

    invoke-static {p1}, Lcom/miui/autotask/common/a;->c(Lcom/miui/autotask/common/a;)Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;->Geofence:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;

    invoke-virtual {v1, v2}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->getSubService(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;)Lcom/xiaomi/gnss/polaris/sdk/IChildService;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.xiaomi.gnss.polaris.sdk.geofence.PolarisGeofenceService"

    invoke-static {v1, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    invoke-static {p1, v1}, Lcom/miui/autotask/common/a;->e(Lcom/miui/autotask/common/a;Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;)V

    new-instance p1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/autotask/common/PolarisGeofenceReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/miui/autotask/common/a$f$a;->c:Lcom/miui/autotask/common/a;

    invoke-static {v2}, Lcom/miui/autotask/common/a;->b(Lcom/miui/autotask/common/a;)Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "get service componentName error"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/autotask/common/a$f$a;->c:Lcom/miui/autotask/common/a;

    invoke-static {v1}, Lcom/miui/autotask/common/a;->b(Lcom/miui/autotask/common/a;)Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;->registerComponent(Landroid/content/ComponentName;)V

    sget-object p1, Loj/t;->a:Loj/t;

    goto :goto_1

    :cond_1
    const-string p1, "Polaris service is empty,can not set component!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "connect Geofence Service fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

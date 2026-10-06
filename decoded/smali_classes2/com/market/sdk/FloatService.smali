.class public Lcom/market/sdk/FloatService;
.super Lv1/b;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/market/IAppDownloadManager;


# instance fields
.field private u:Lcom/xiaomi/market/IAppDownloadManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lv1/b;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic v8(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/FloatService;->u:Lcom/xiaomi/market/IAppDownloadManager;

    return-object p0
.end method

.method public static w8(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/market/sdk/g;->f:Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.market.data.AppDownloadService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "com.xiaomi.market.service.AppDownloadService"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/market/sdk/FloatService;

    invoke-direct {p1, p0, v0}, Lcom/market/sdk/FloatService;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object p1
.end method


# virtual methods
.method public J7(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lw1/a;

    invoke-direct {v0}, Lw1/a;-><init>()V

    new-instance v1, Lcom/market/sdk/FloatService$b;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/market/sdk/FloatService$b;-><init>(Lcom/market/sdk/FloatService;Lw1/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cancel"

    invoke-virtual {p0, v1, p1}, Lv1/b;->t8(Lv1/b$b;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lv1/b;->u8()V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lw1/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public L2(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/market/sdk/FloatService$a;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/FloatService$a;-><init>(Lcom/market/sdk/FloatService;Landroid/os/Bundle;)V

    const-string p1, "download"

    invoke-virtual {p0, v0, p1}, Lv1/b;->t8(Lv1/b$b;Ljava/lang/String;)Z

    return-void
.end method

.method public M3(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/market/sdk/FloatService$g;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/FloatService$g;-><init>(Lcom/market/sdk/FloatService;Landroid/net/Uri;)V

    const-string p1, "resumeByUri"

    invoke-virtual {p0, v0, p1}, Lv1/b;->t8(Lv1/b$b;Ljava/lang/String;)Z

    return-void
.end method

.method public N2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lw1/a;

    invoke-direct {v0}, Lw1/a;-><init>()V

    new-instance v1, Lcom/market/sdk/FloatService$d;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/market/sdk/FloatService$d;-><init>(Lcom/market/sdk/FloatService;Lw1/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "resume"

    invoke-virtual {p0, v1, p1}, Lv1/b;->t8(Lv1/b$b;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lv1/b;->u8()V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lw1/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public O6(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/market/sdk/FloatService$e;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/FloatService$e;-><init>(Lcom/market/sdk/FloatService;Landroid/net/Uri;)V

    const-string p1, "downloadByUri"

    invoke-virtual {p0, v0, p1}, Lv1/b;->t8(Lv1/b$b;Ljava/lang/String;)Z

    return-void
.end method

.method public U(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lw1/a;

    invoke-direct {v0}, Lw1/a;-><init>()V

    new-instance v1, Lcom/market/sdk/FloatService$c;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/market/sdk/FloatService$c;-><init>(Lcom/market/sdk/FloatService;Lw1/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pause"

    invoke-virtual {p0, v1, p1}, Lv1/b;->t8(Lv1/b$b;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lv1/b;->u8()V

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lw1/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b4(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/market/sdk/FloatService$f;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/FloatService$f;-><init>(Lcom/market/sdk/FloatService;Landroid/net/Uri;)V

    const-string p1, "pauseByUri"

    invoke-virtual {p0, v0, p1}, Lv1/b;->t8(Lv1/b$b;Ljava/lang/String;)Z

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public s8(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/market/IAppDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/FloatService;->u:Lcom/xiaomi/market/IAppDownloadManager;

    return-void
.end method

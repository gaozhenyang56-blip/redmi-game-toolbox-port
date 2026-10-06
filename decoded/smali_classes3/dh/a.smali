.class public Ldh/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Ldh/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldh/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p2, v3, v1

    const-string v0, "Tvm.DownloadReceiver"

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/tvm/TvmManager;->d()J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Lcom/miui/tvm/TvmManager;->r(J)V

    const-string p2, "download"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/DownloadManager;

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v1

    invoke-virtual {v1, p2, v3, v4}, Lcom/miui/tvm/TvmManager;->n(Landroid/app/DownloadManager;J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/miui/tvm/TvmManager;->s(I)V

    invoke-static {p1, p2, v3, v4}, Leh/c;->i(Landroid/content/Context;Landroid/app/DownloadManager;J)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Leh/c;->J(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "save file, verifyFileSuccess"

    invoke-static {v0, p1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Leh/c;->F()Ljava/io/File;

    invoke-static {}, Leh/c;->d()V

    goto :goto_2

    :cond_2
    const-string p1, "verify cacheFile is failed"

    invoke-static {v0, p1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/miui/tvm/TvmManager;->t(I)V

    invoke-static {}, Leh/c;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save file exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "download failed"

    :goto_0
    invoke-static {v0, p1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/tvm/TvmManager;->t(I)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "id not equal, id1:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "--tvmId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/tvm/TvmManager;->d()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Tvm.DownloadReceiver"

    const-string v1, "receive download result"

    invoke-static {v0, v1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    new-instance v1, Ldh/a$a;

    invoke-direct {v1, p0, p1, p2, v0}, Ldh/a$a;-><init>(Ldh/a;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v1}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

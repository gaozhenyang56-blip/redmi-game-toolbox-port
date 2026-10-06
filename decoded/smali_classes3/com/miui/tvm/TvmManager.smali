.class public Lcom/miui/tvm/TvmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/tvm/TvmManager$TvmStatus;
    }
.end annotation


# static fields
.field private static volatile i:Lcom/miui/tvm/TvmManager;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field private final f:Landroid/content/Context;

.field private g:Lcom/miui/tvm/aidl/ITvmManagerCallback;

.field private h:Ldh/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/tvm/TvmManager;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/tvm/TvmManager;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/tvm/TvmManager;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/tvm/TvmManager;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/tvm/TvmManager;->e:J

    iput-object p1, p0, Lcom/miui/tvm/TvmManager;->f:Landroid/content/Context;

    return-void
.end method

.method private b()Lcom/miui/tvm/aidl/ITvmManagerCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/TvmManager;->g:Lcom/miui/tvm/aidl/ITvmManagerCallback;

    return-object v0
.end method

.method public static f()Lcom/miui/tvm/TvmManager;
    .locals 3

    sget-object v0, Lcom/miui/tvm/TvmManager;->i:Lcom/miui/tvm/TvmManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/tvm/TvmManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/tvm/TvmManager;->i:Lcom/miui/tvm/TvmManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/tvm/TvmManager;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/tvm/TvmManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/tvm/TvmManager;->i:Lcom/miui/tvm/TvmManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/tvm/TvmManager;->i:Lcom/miui/tvm/TvmManager;

    return-object v0
.end method

.method public static h()Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.aidl.mtdservice.IMTService/default"

    invoke-static {v0}, Lmiui/cloud/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;

    move-result-object v0

    return-object v0
.end method

.method private v(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/tvm/ui/TvmDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/tvm/TvmManager;->f:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/miui/tvm/TvmManager;->f:Landroid/content/Context;

    const v4, 0x7f1206d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadFile id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tvm.TvmManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v1}, Lcom/miui/tvm/TvmManager;->r(J)V

    invoke-virtual {p0, p1}, Lcom/miui/tvm/TvmManager;->s(I)V

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/TvmManager;->f:Landroid/content/Context;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/tvm/TvmManager;->e:J

    return-wide v0
.end method

.method public e(Landroid/app/DownloadManager;J)I
    .locals 3

    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "status"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public g(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    invoke-static {p2, p3}, Leh/c;->m(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "Tvm.TvmManager"

    if-eqz p3, :cond_0

    const-string p1, "getModel, json empty"

    invoke-static {v0, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getModel, json:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--class:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lx4/q0;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3, p2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/miui/tvm/TvmManager;->d:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/TvmManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/TvmManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/TvmManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m(I)V
    .locals 3

    const-string v0, "Tvm.TvmManager"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeCallback status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Leh/c;->H(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/tvm/TvmManager;->b()Lcom/miui/tvm/aidl/ITvmManagerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/tvm/aidl/ITvmManagerCallback;->d8(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeCallback exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public n(Landroid/app/DownloadManager;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/tvm/TvmManager;->e(Landroid/app/DownloadManager;J)I

    move-result p1

    const/16 p2, 0x8

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Leh/c;->x(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processTvmStatus getSystemImgStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tvm.TvmManager"

    invoke-static {v1, v0}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/tvm/TvmManager;->s(I)V

    invoke-static {}, Leh/c;->d()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/tvm/TvmManager;->t(I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/tvm/TvmManager;->s(I)V

    iget-object v0, p0, Lcom/miui/tvm/TvmManager;->f:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/miui/tvm/TvmManager;->v(Landroid/content/Context;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public p()V
    .locals 5

    const-string v0, "Tvm.TvmManager"

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Ldh/a;

    invoke-direct {v2}, Ldh/a;-><init>()V

    iput-object v2, p0, Lcom/miui/tvm/TvmManager;->h:Ldh/a;

    const-string v2, "registerReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/tvm/TvmManager;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/tvm/TvmManager;->h:Ldh/a;

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v4}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public q(Lcom/miui/tvm/aidl/ITvmManagerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/TvmManager;->g:Lcom/miui/tvm/aidl/ITvmManagerCallback;

    return-void
.end method

.method public r(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/tvm/TvmManager;->e:J

    return-void
.end method

.method public declared-synchronized s(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Tvm.TvmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Leh/c;->H(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/miui/tvm/TvmManager;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public t(I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/tvm/TvmManager;->s(I)V

    invoke-virtual {p0, p1}, Lcom/miui/tvm/TvmManager;->m(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeCallback exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tvm.TvmManager"

    invoke-static {v0, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public u()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-static {}, Lcom/miui/tvm/TvmManager;->h()Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;

    move-result-object v0

    invoke-interface {v0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->t4()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cloudsp_fid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Lcom/miui/tvm/model/TvmNonceModel;

    const-string v3, "https://deviceapi.micloud.xiaomi.net/mic/find/v4/anonymous/challenge"

    invoke-virtual {p0, v2, v3, v1}, Lcom/miui/tvm/TvmManager;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/tvm/model/TvmNonceModel;

    const/4 v2, 0x6

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/tvm/model/TvmNonceModel;->getData()Lcom/miui/tvm/model/TvmNonceModel$DataBean;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/miui/tvm/model/TvmNonceModel;->getData()Lcom/miui/tvm/model/TvmNonceModel$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/tvm/model/TvmNonceModel$DataBean;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Leh/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Leh/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-class v1, Lcom/miui/tvm/model/TvmUrlModel;

    const-string v3, "https://deviceapi.micloud.xiaomi.net/mic/binding/v1/anonymous/device/resource/tvm"

    invoke-virtual {p0, v1, v3, v0}, Lcom/miui/tvm/TvmManager;->g(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/tvm/model/TvmUrlModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel;->getData()Lcom/miui/tvm/model/TvmUrlModel$DataBean;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel;->getData()Lcom/miui/tvm/model/TvmUrlModel$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/tvm/TvmManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel;->getData()Lcom/miui/tvm/model/TvmUrlModel$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->getSign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/tvm/TvmManager;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel;->getData()Lcom/miui/tvm/model/TvmUrlModel$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->getSha256sum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/tvm/TvmManager;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel;->getData()Lcom/miui/tvm/model/TvmUrlModel$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->getSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel;->getData()Lcom/miui/tvm/model/TvmUrlModel$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel;->getData()Lcom/miui/tvm/model/TvmUrlModel$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->getSha256sum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Leh/c;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verify success, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tvm.TvmManager"

    invoke-static {v3, v2}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v0, "get download url, verify fail"

    invoke-static {v3, v0}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/miui/tvm/TvmManager;->t(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel;->getData()Lcom/miui/tvm/model/TvmUrlModel$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/tvm/TvmManager;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/tvm/TvmManager;->t(I)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/tvm/TvmManager;->t(I)V

    return-void
.end method

.method public w()V
    .locals 4

    const-string v0, "Tvm.TvmManager"

    :try_start_0
    iget-object v1, p0, Lcom/miui/tvm/TvmManager;->h:Ldh/a;

    if-eqz v1, :cond_0

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/tvm/TvmManager;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/tvm/TvmManager;->h:Ldh/a;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

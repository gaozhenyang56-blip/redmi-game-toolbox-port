.class public Lcom/miui/antifraud/PayActivityMonitorService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->b:Landroid/os/Handler;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->c:Ljava/lang/Boolean;

    invoke-static {}, Lqj/j0;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->d:Ljava/util/Set;

    new-instance v0, Lcom/miui/antifraud/PayActivityMonitorService$a;

    invoke-direct {v0, p0}, Lcom/miui/antifraud/PayActivityMonitorService$a;-><init>(Lcom/miui/antifraud/PayActivityMonitorService;)V

    iput-object v0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->e:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    return-void
.end method

.method public static synthetic a(Lcom/miui/antifraud/PayActivityMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antifraud/PayActivityMonitorService;->g()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/miui/antifraud/PayActivityMonitorService;->f()V

    return-void
.end method

.method static synthetic c(Lcom/miui/antifraud/PayActivityMonitorService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/antifraud/PayActivityMonitorService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->d:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/antifraud/PayActivityMonitorService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private static synthetic f()V
    .locals 2

    invoke-static {}, Lcom/miui/antifraud/d;->k()Lcom/miui/antifraud/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antifraud/d;->r(Z)V

    invoke-static {}, Lcom/miui/antifraud/d;->k()Lcom/miui/antifraud/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antifraud/d;->j()V

    return-void
.end method

.method private synthetic g()V
    .locals 12

    const-string v0, "PayActivityMonitorService"

    const-string v1, "anti_fraud_pay_activity"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {v2}, Lbl/e;->i(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v8, "package"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v8, "activity"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_3

    move v8, v5

    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iput-object v4, p0, Lcom/miui/antifraud/PayActivityMonitorService;->d:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v6, "registerActivityChangeListener"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/util/List;

    aput-object v9, v8, v5

    const-class v9, Ljava/util/List;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string v9, "com.gzy.redmiport.compat.process.IActivityChangeListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v8, v11

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lqj/l;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-static {v4}, Lqj/l;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v7, v10

    iget-object v3, p0, Lcom/miui/antifraud/PayActivityMonitorService;->e:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    aput-object v3, v7, v11

    invoke-static {v0, v1, v6, v8, v7}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/miui/antifraud/PayActivityMonitorService;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_6
    :goto_4
    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "registerActivityChangeListener exception!"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V

    return-void

    :goto_6
    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V

    throw v0
.end method

.method private h()V
    .locals 1

    new-instance v0, Lcom/miui/antifraud/e;

    invoke-direct {v0, p0}, Lcom/miui/antifraud/e;-><init>(Lcom/miui/antifraud/PayActivityMonitorService;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()V
    .locals 7

    const-string v0, "PayActivityMonitorService"

    iget-object v1, p0, Lcom/miui/antifraud/PayActivityMonitorService;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unregisterActivityChanageListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "com.gzy.redmiport.compat.process.IActivityChangeListener"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/antifraud/PayActivityMonitorService;->e:Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;

    aput-object v5, v3, v6

    invoke-static {v0, v1, v2, v4, v3}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/miui/antifraud/PayActivityMonitorService;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "unregisterActivityChanageListener exception!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private j()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antifraud/PayActivityMonitorService;->i()V

    invoke-direct {p0}, Lcom/miui/antifraud/PayActivityMonitorService;->h()V

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

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antifraud/PayActivityMonitorService;->i()V

    iget-object v0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->b:Landroid/os/Handler;

    new-instance v1, Lcom/miui/antifraud/f;

    invoke-direct {v1}, Lcom/miui/antifraud/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iget-object v0, p0, Lcom/miui/antifraud/PayActivityMonitorService;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antifraud/PayActivityMonitorService;->j()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antifraud/PayActivityMonitorService;->h()V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

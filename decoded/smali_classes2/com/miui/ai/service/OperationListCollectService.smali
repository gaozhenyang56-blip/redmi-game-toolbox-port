.class public Lcom/miui/ai/service/OperationListCollectService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/ai/service/OperationListCollectService$f;,
        Lcom/miui/ai/service/OperationListCollectService$i;,
        Lcom/miui/ai/service/OperationListCollectService$g;,
        Lcom/miui/ai/service/OperationListCollectService$h;
    }
.end annotation


# instance fields
.field private volatile a:I

.field private volatile b:I

.field private volatile c:I

.field private d:I

.field private e:Lcom/miui/ai/service/OperationListCollectService$i;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Lcom/miui/ai/service/OperationListCollectService$f;

.field private final h:Landroid/telephony/PhoneStateListener;

.field private volatile i:J

.field private volatile j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private final m:Lcom/miui/autotask/common/a;

.field private final n:Landroid/content/BroadcastReceiver;

.field private o:Lcom/miui/gamebooster/mutiwindow/b$b;

.field private p:Lcom/miui/ai/service/OperationListCollectService$g;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/ai/service/OperationListCollectService;->b:I

    iput v0, p0, Lcom/miui/ai/service/OperationListCollectService;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/ai/service/OperationListCollectService;->d:I

    new-instance v1, Lcom/miui/ai/service/OperationListCollectService$a;

    invoke-direct {v1, p0}, Lcom/miui/ai/service/OperationListCollectService$a;-><init>(Lcom/miui/ai/service/OperationListCollectService;)V

    iput-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->h:Landroid/telephony/PhoneStateListener;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/ai/service/OperationListCollectService;->i:J

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->j:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/ai/service/OperationListCollectService;->l:Z

    new-instance v0, Lcom/miui/autotask/common/a;

    invoke-direct {v0}, Lcom/miui/autotask/common/a;-><init>()V

    iput-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->m:Lcom/miui/autotask/common/a;

    new-instance v0, Lcom/miui/ai/service/OperationListCollectService$c;

    invoke-direct {v0, p0}, Lcom/miui/ai/service/OperationListCollectService$c;-><init>(Lcom/miui/ai/service/OperationListCollectService;)V

    iput-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->n:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/ai/service/OperationListCollectService$d;

    invoke-direct {v0, p0}, Lcom/miui/ai/service/OperationListCollectService$d;-><init>(Lcom/miui/ai/service/OperationListCollectService;)V

    iput-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->o:Lcom/miui/gamebooster/mutiwindow/b$b;

    new-instance v0, Lcom/miui/ai/service/OperationListCollectService$e;

    invoke-direct {v0, p0}, Lcom/miui/ai/service/OperationListCollectService$e;-><init>(Lcom/miui/ai/service/OperationListCollectService;)V

    iput-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->p:Lcom/miui/ai/service/OperationListCollectService$g;

    return-void
.end method

.method public static A(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "argument_scene_id_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "argument_channel"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "argument_user_id"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private B(Ljava/io/PrintWriter;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    invoke-virtual {v0}, Lu3/c;->f0()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpDb: queryTaskForDump Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewAutoTaskService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->o()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    :cond_2
    :goto_2
    const-string v0, "no new auto task!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private C(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-static {}, Lt3/a;->b()Lt3/a;

    move-result-object v0

    invoke-virtual {v0}, Lt3/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last delete :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private D(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu3/h;->f1(Ljava/lang/String;)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lu3/h;->g1(Ljava/lang/String;)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->E()V

    invoke-static {}, Ly3/a;->k()Ly3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly3/a;->i(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lu3/h;->f1(Ljava/lang/String;)V

    return-void
.end method

.method public static E(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "eventType"

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "taskUUID"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static G(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "eventType"

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "taskUUID"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static H(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "eventType"

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "taskUUID"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "eventType"

    const/16 v1, 0x12

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "taskUUID"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private J(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "networkInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static K(Landroid/content/Context;Lcom/miui/autotask/bean/p;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ruleTaskBean"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private L()V
    .locals 9

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    const-string v1, "android.app.ActivityManager$OnUidImportanceListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/miui/ai/service/OperationListCollectService$h;

    invoke-direct {v2}, Lcom/miui/ai/service/OperationListCollectService$h;-><init>()V

    const-class v3, Lcom/miui/ai/service/OperationListCollectService;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v5, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "addOnUidImportanceListener"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v1, v8, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v8, v4

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NewAutoTaskService"

    const-string v2, "initUidImportanceListener error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic M(Ljava/util/List;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/r;

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lu3/h;->u(Lcom/miui/autotask/bean/r;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lu3/c;->a0(Ljava/util/List;)V

    return-void
.end method

.method private N()V
    .locals 1

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->g:Lcom/miui/ai/service/OperationListCollectService$f;

    new-instance v1, La2/c;

    iget-object v2, p0, Lcom/miui/ai/service/OperationListCollectService;->e:Lcom/miui/ai/service/OperationListCollectService$i;

    invoke-direct {v1, p0, v2}, La2/c;-><init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/miui/ai/service/OperationListCollectService$f;->a(La2/a;)V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->g:Lcom/miui/ai/service/OperationListCollectService$f;

    new-instance v1, La2/e;

    iget-object v2, p0, Lcom/miui/ai/service/OperationListCollectService;->e:Lcom/miui/ai/service/OperationListCollectService$i;

    invoke-direct {v1, p0, v2}, La2/e;-><init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/miui/ai/service/OperationListCollectService$f;->a(La2/a;)V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->g:Lcom/miui/ai/service/OperationListCollectService$f;

    new-instance v1, La2/d;

    iget-object v2, p0, Lcom/miui/ai/service/OperationListCollectService;->e:Lcom/miui/ai/service/OperationListCollectService$i;

    invoke-direct {v1, p0, v2}, La2/d;-><init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/miui/ai/service/OperationListCollectService$f;->a(La2/a;)V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->g:Lcom/miui/ai/service/OperationListCollectService$f;

    new-instance v1, La2/f;

    iget-object v2, p0, Lcom/miui/ai/service/OperationListCollectService;->e:Lcom/miui/ai/service/OperationListCollectService$i;

    invoke-direct {v1, p0, v2}, La2/f;-><init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/miui/ai/service/OperationListCollectService$f;->a(La2/a;)V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->g:Lcom/miui/ai/service/OperationListCollectService$f;

    new-instance v1, La2/b;

    iget-object v2, p0, Lcom/miui/ai/service/OperationListCollectService;->e:Lcom/miui/ai/service/OperationListCollectService$i;

    invoke-direct {v1, p0, v2}, La2/b;-><init>(Lcom/miui/ai/service/OperationListCollectService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/miui/ai/service/OperationListCollectService$f;->a(La2/a;)V

    return-void
.end method

.method private P(Z)V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    if-eqz p1, :cond_0

    invoke-static {}, La4/f;->b()La4/f;

    move-result-object p1

    invoke-virtual {p1}, La4/f;->c()V

    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/ai/service/OperationListCollectService;->n:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/miui/ai/service/OperationListCollectService;->l:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/ai/service/OperationListCollectService;->f:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->h:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/ai/service/OperationListCollectService;->l:Z

    return-void
.end method

.method public static Q(Landroid/content/Context;Lcom/miui/autotask/taskitem/AddressTaskItem;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "taskItem"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static S(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private T()V
    .locals 2

    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    new-instance v1, Lcom/miui/ai/service/OperationListCollectService$b;

    invoke-direct {v1, p0}, Lcom/miui/ai/service/OperationListCollectService$b;-><init>(Lcom/miui/ai/service/OperationListCollectService;)V

    invoke-virtual {v0, v1}, Lu3/c;->e0(Lvf/b;)V

    return-void
.end method

.method public static U(Landroid/content/Context;Ljava/io/Serializable;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "taskBean"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/ai/service/OperationListCollectService;->M(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/ai/service/OperationListCollectService;)I
    .locals 0

    iget p0, p0, Lcom/miui/ai/service/OperationListCollectService;->d:I

    return p0
.end method

.method static synthetic c(Lcom/miui/ai/service/OperationListCollectService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/ai/service/OperationListCollectService;->d:I

    return p1
.end method

.method static synthetic d(Lcom/miui/ai/service/OperationListCollectService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/ai/service/OperationListCollectService;->J(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/miui/ai/service/OperationListCollectService;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/miui/ai/service/OperationListCollectService;->n:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/ai/service/OperationListCollectService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/ai/service/OperationListCollectService;->P(Z)V

    return-void
.end method

.method static synthetic g(Lcom/miui/ai/service/OperationListCollectService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/ai/service/OperationListCollectService;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/ai/service/OperationListCollectService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/ai/service/OperationListCollectService;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/miui/ai/service/OperationListCollectService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/ai/service/OperationListCollectService;->i:J

    return-wide v0
.end method

.method static synthetic j(Lcom/miui/ai/service/OperationListCollectService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/ai/service/OperationListCollectService;->i:J

    return-wide p1
.end method

.method static synthetic k(Lcom/miui/ai/service/OperationListCollectService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/ai/service/OperationListCollectService;->D(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic l(Lcom/miui/ai/service/OperationListCollectService;)I
    .locals 0

    iget p0, p0, Lcom/miui/ai/service/OperationListCollectService;->c:I

    return p0
.end method

.method static synthetic m(Lcom/miui/ai/service/OperationListCollectService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/ai/service/OperationListCollectService;->c:I

    return p1
.end method

.method static synthetic n(Lcom/miui/ai/service/OperationListCollectService;)I
    .locals 0

    iget p0, p0, Lcom/miui/ai/service/OperationListCollectService;->b:I

    return p0
.end method

.method static synthetic o(Lcom/miui/ai/service/OperationListCollectService;I)I
    .locals 0

    iput p1, p0, Lcom/miui/ai/service/OperationListCollectService;->b:I

    return p1
.end method

.method static synthetic p(Lcom/miui/ai/service/OperationListCollectService;)Lcom/miui/ai/service/OperationListCollectService$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/ai/service/OperationListCollectService;->e:Lcom/miui/ai/service/OperationListCollectService$i;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/ai/service/OperationListCollectService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/ai/service/OperationListCollectService;->k:Z

    return p0
.end method

.method static synthetic r(Lcom/miui/ai/service/OperationListCollectService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/ai/service/OperationListCollectService;->k:Z

    return p1
.end method

.method static synthetic s(Lcom/miui/ai/service/OperationListCollectService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/ai/service/OperationListCollectService;->l:Z

    return p0
.end method

.method public static t(Landroid/content/Context;Lcom/miui/autotask/taskitem/AddressTaskItem;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "taskItem"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/io/Serializable;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "taskBean"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static v(Landroid/content/Context;Lcom/miui/autotask/bean/p;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ruleTaskBean"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0xbb8

    invoke-static {p0, p1, v0, v1}, Lcom/miui/ai/service/OperationListCollectService;->x(Landroid/content/Context;Ljava/util/List;J)V

    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    check-cast p1, Ljava/io/Serializable;

    const-string v1, "taskBeanList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "delayTime"

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "taskUUID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "taskEnable"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static z(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/ai/service/OperationListCollectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "taskUUID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, Lcom/miui/ai/service/OperationListCollectService;->a:I

    return v0
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lcom/miui/ai/service/OperationListCollectService;->a:I

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "=====NewAutoTaskBegin====="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/miui/ai/service/OperationListCollectService;->B(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/miui/ai/service/OperationListCollectService;->C(Ljava/io/PrintWriter;)V

    const-string p1, "======NewAutoTaskEnd======"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OperationListCollectService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/miui/ai/service/OperationListCollectService$i;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/ai/service/OperationListCollectService$i;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->e:Lcom/miui/ai/service/OperationListCollectService$i;

    new-instance v0, Lcom/miui/ai/service/OperationListCollectService$f;

    invoke-direct {v0, p0}, Lcom/miui/ai/service/OperationListCollectService$f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->g:Lcom/miui/ai/service/OperationListCollectService$f;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->f:Landroid/telephony/TelephonyManager;

    iget-boolean v0, p0, Lcom/miui/ai/service/OperationListCollectService;->k:Z

    invoke-direct {p0, v0}, Lcom/miui/ai/service/OperationListCollectService;->P(Z)V

    invoke-direct {p0}, Lcom/miui/ai/service/OperationListCollectService;->O()V

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->o:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->p:Lcom/miui/ai/service/OperationListCollectService$g;

    invoke-virtual {v0, v1}, Lu3/h;->M0(Lcom/miui/ai/service/OperationListCollectService$g;)V

    invoke-direct {p0}, Lcom/miui/ai/service/OperationListCollectService;->L()V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->m:Lcom/miui/autotask/common/a;

    invoke-virtual {v0}, Lcom/miui/autotask/common/a;->r()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->o:Lcom/miui/gamebooster/mutiwindow/b$b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->f:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->h:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->g:Lcom/miui/ai/service/OperationListCollectService$f;

    invoke-virtual {v0}, Lcom/miui/ai/service/OperationListCollectService$f;->b()V

    iget-object v0, p0, Lcom/miui/ai/service/OperationListCollectService;->m:Lcom/miui/autotask/common/a;

    invoke-virtual {v0}, Lcom/miui/autotask/common/a;->p()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const-string v0, "NewAutoTaskService"

    if-nez p1, :cond_0

    const-string v1, "onStartCommand intent == null"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string v1, "eventType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "onStartCommand eventType == -1"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand eventType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ruleTaskBean"

    const-string v3, "taskItem"

    const-string v4, "taskBean"

    const-string v5, "taskUUID"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const-string v0, "argument_scene_id_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "argument_user_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "argument_channel"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lu3/h;->d0(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on start command TYPE_MEET_EXIT_TIME_CONDITION, uuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lu3/h;->k0(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/bean/p;

    if-eqz v1, :cond_5

    invoke-static {}, Ly3/a;->k()Ly3/a;

    move-result-object v1

    check-cast v0, Lcom/miui/autotask/bean/p;

    invoke-virtual {v1, v0}, Ly3/a;->m(Lcom/miui/autotask/bean/p;)V

    goto/16 :goto_1

    :pswitch_4
    const-wide/16 v0, 0x0

    const-string v2, "delayTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "taskBeanList"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/miui/ai/service/OperationListCollectService;->e:Lcom/miui/ai/service/OperationListCollectService$i;

    new-instance v4, Lz1/a;

    invoke-direct {v4, v2}, Lz1/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/bean/p;

    if-eqz v1, :cond_5

    invoke-static {}, Ly3/a;->k()Ly3/a;

    move-result-object v1

    check-cast v0, Lcom/miui/autotask/bean/p;

    invoke-virtual {v1, v0}, Ly3/a;->e(Lcom/miui/autotask/bean/p;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/miui/ai/service/OperationListCollectService;->T()V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/taskitem/AddressTaskItem;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->m:Lcom/miui/autotask/common/a;

    check-cast v0, Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/autotask/common/a;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/taskitem/AddressTaskItem;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/ai/service/OperationListCollectService;->m:Lcom/miui/autotask/common/a;

    check-cast v0, Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v1, v0}, Lcom/miui/autotask/common/a;->g(Lcom/miui/autotask/taskitem/AddressTaskItem;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0}, Lcom/miui/ai/service/OperationListCollectService;->N()V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu3/h;->y(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on start command TYPE_MEET_CONDITION, uuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lu3/h;->X(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/bean/r;

    if-eqz v1, :cond_2

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    check-cast v0, Lcom/miui/autotask/bean/r;

    invoke-virtual {v1, v0}, Lu3/h;->v1(Lcom/miui/autotask/bean/r;)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/miui/autotask/bean/s;

    if-eqz v1, :cond_3

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    check-cast v0, Lcom/miui/autotask/bean/s;

    invoke-virtual {v1, v0}, Lu3/h;->w1(Lcom/miui/autotask/bean/s;)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/miui/autotask/bean/t;

    if-eqz v1, :cond_5

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    check-cast v0, Lcom/miui/autotask/bean/t;

    invoke-virtual {v1, v0}, Lu3/h;->x1(Lcom/miui/autotask/bean/t;)V

    goto :goto_1

    :pswitch_d
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "taskEnable"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lu3/h;->z(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_e
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu3/h;->c0(Ljava/util/List;)V

    goto :goto_1

    :pswitch_f
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/bean/r;

    if-eqz v1, :cond_4

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    check-cast v0, Lcom/miui/autotask/bean/r;

    invoke-virtual {v1, v0}, Lu3/h;->u(Lcom/miui/autotask/bean/r;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/miui/autotask/bean/s;

    if-eqz v1, :cond_5

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    check-cast v0, Lcom/miui/autotask/bean/s;

    invoke-virtual {v1, v0}, Lu3/h;->v(Lcom/miui/autotask/bean/s;)V

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

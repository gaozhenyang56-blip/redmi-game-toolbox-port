.class public Lve/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lve/g;


# instance fields
.field private a:Lcom/miui/gameturbo/active/IActiveManager;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/IBinder$DeathRecipient;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lve/g;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lve/g;->c:Ljava/util/List;

    new-instance v0, Lve/g$a;

    invoke-direct {v0, p0}, Lve/g$a;-><init>(Lve/g;)V

    iput-object v0, p0, Lve/g;->d:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lve/g$b;

    invoke-direct {v0, p0}, Lve/g$b;-><init>(Lve/g;)V

    iput-object v0, p0, Lve/g;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a(Lve/g;)V
    .locals 0

    invoke-direct {p0}, Lve/g;->q()V

    return-void
.end method

.method static synthetic b(Lve/g;)Lcom/miui/gameturbo/active/IActiveManager;
    .locals 0

    iget-object p0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    return-object p0
.end method

.method static synthetic c(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;)Lcom/miui/gameturbo/active/IActiveManager;
    .locals 0

    iput-object p1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    return-object p1
.end method

.method static synthetic d(Lve/g;)V
    .locals 0

    invoke-direct {p0}, Lve/g;->s()V

    return-void
.end method

.method static synthetic e(Lve/g;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lve/g;->d:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic f(Lve/g;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lve/g;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic g(Lve/g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lve/g;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lve/g;->l(Lcom/miui/gameturbo/active/IActiveManager;Ljava/lang/String;)V

    return-void
.end method

.method private k(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/ActiveModel;

    const-string v2, "ActiveWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadApps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getFloatingCardData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pkg"

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getRecommendGame()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "floatingCardData"

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getFloatingCardData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTIVE_MANAGER"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securityadd"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    new-instance v2, Lve/g$d;

    invoke-direct {v2, p0, v0, v1}, Lve/g$d;-><init>(Lve/g;Lorg/json/JSONArray;Lcom/miui/securitycenter/Application;)V

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lve/g;->l(Lcom/miui/gameturbo/active/IActiveManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private l(Lcom/miui/gameturbo/active/IActiveManager;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lve/g$e;

    invoke-direct {v1, p0, p1, p2}, Lve/g$e;-><init>(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized m()Lve/g;
    .locals 2

    const-class v0, Lve/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lve/g;->f:Lve/g;

    if-nez v1, :cond_0

    new-instance v1, Lve/g;

    invoke-direct {v1}, Lve/g;-><init>()V

    sput-object v1, Lve/g;->f:Lve/g;

    :cond_0
    sget-object v1, Lve/g;->f:Lve/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic q()V
    .locals 2

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/miui/gameturbo/active/IActiveManager;->R4(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private s()V
    .locals 5

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lve/g;->d:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v2, p0, Lve/g;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ActiveWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseDiedBinder fail ! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    throw v0
.end method

.method private v(Lcom/miui/gamebooster/model/ActiveModel;)Z
    .locals 5

    const-string v0, "pageSource"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lve/g;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lve/g;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getRecommendGame()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pkg"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getRecommendGame()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "httpBrowserUrl"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getHttpBrowserUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getPageSource()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "isDownloadDelay"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->isDownloadDelay()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "floatingCardData"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getFloatingCardData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "channel"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sourcePkg"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getGamePkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sourcePkgCn"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getGamePkgNameCn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "redirectType"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getRedirectType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getPageSource()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "openBigWindow"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->isSupportOpenBigWindow()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "browserUrl"

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lve/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveModel;->getRecommendGame()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getRecommendGame()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    const-string v0, "isInDownloadList"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lve/g$c;

    invoke-direct {v2, p0}, Lve/g$c;-><init>(Lve/g;)V

    invoke-interface {p1, v0, v2}, Lcom/miui/gameturbo/active/IActiveManager;->n3(Ljava/lang/String;Lcom/miui/gameturbo/active/IActiveCallback;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private z(Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getUid()I

    move-result v2

    invoke-static {p2, v2}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ratio="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lx6/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&gravity="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lx6/b;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getGamePkgName()Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-interface {v2, v3, p2, v1, p3}, Lcom/miui/gameturbo/active/IActiveManager;->N4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public A(Ljava/lang/String;ZILcom/miui/gameturbo/active/IWebPanelCallback;)Z
    .locals 3

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "packageName"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isLeft"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "offsetY"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Lcom/miui/gameturbo/active/IActiveManager;->Y6(Ljava/lang/String;Lcom/miui/gameturbo/active/IWebPanelCallback;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "ActiveWindowManager"

    const-string p3, "showWebPanel: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public B()V
    .locals 3

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/miui/gameturbo/active/IActiveManager;->R7()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActiveWindowManager"

    const-string v2, "sidebarAttach: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lve/f;

    invoke-direct {v1, p0}, Lve/f;-><init>(Lve/g;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/miui/gameturbo/active/IActiveManager;->J4()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActiveWindowManager"

    const-string v2, "dismissWebPanel: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public n(Landroid/content/Context;)V
    .locals 5

    const-string v0, "initManager: "

    const-string v1, "ActiveWindowManager"

    iget-object v2, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lve/g;->p()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.ACTIVE_MANAGER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.securityadd"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lve/g;->e:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTIVE_MANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.securityadd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, v0}, Leg/i;->d(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public r(Ljava/lang/String;Lcom/miui/gameturbo/active/IWebPanelCallback;)Z
    .locals 3

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "packageName"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/miui/gameturbo/active/IActiveManager;->Q(Ljava/lang/String;Lcom/miui/gameturbo/active/IWebPanelCallback;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "ActiveWindowManager"

    const-string v0, "prepareWebPanel: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public t(Landroid/content/Context;)V
    .locals 5

    const-string v0, "ActiveWindowManager"

    iget-object v1, p0, Lve/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lve/g;->c:Ljava/util/List;

    invoke-direct {p0, v1}, Lve/g;->k(Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lve/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lve/g;->d:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lve/g;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string p1, "releaseManager..."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseManager fail !"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v2, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    throw p1
.end method

.method public u(Lcom/miui/gamebooster/model/ActiveModel;)Z
    .locals 1

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v0, :cond_0

    const-string p1, "ActiveWindowManager"

    const-string v0, "activeManager Null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lve/g;->v(Lcom/miui/gamebooster/model/ActiveModel;)Z

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    invoke-interface {v0, p1}, Lcom/miui/gameturbo/active/IActiveManager;->U0(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGameWardWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActiveWindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "showGameWardWindow: "

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ActiveWindowManager"

    if-nez v1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v1, :cond_1

    const-string p1, "activeManager Null"

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    invoke-interface {v1, p3}, Lcom/miui/gameturbo/active/IActiveManager;->U0(Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p3

    goto :goto_1

    :catch_0
    move-exception p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    :try_start_1
    iget-object p3, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    invoke-interface {p3, p1, p2}, Lcom/miui/gameturbo/active/IActiveManager;->u2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, p1

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return v2

    :cond_4
    :goto_3
    const-string p1, "showGameWardWindow: invalid pkgName: "

    goto :goto_0
.end method

.method public y(Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lve/g;->a:Lcom/miui/gameturbo/active/IActiveManager;

    if-nez v0, :cond_0

    const-string p1, "ActiveWindowManager"

    const-string p2, "activeManager Null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lve/g;->z(Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.class public Lcom/miui/securitycenter/WidgetProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final c:Landroid/os/ParcelUuid;

.field public static final d:Landroid/os/ParcelUuid;

.field public static final e:Landroid/os/ParcelUuid;

.field public static final f:Landroid/os/ParcelUuid;

.field private static final g:Landroid/content/UriMatcher;

.field private static final h:Landroid/util/SparseIntArray;


# instance fields
.field private a:Lum/b;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/miui/securitycenter/WidgetProvider;->c:Landroid/os/ParcelUuid;

    const-string v0, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/miui/securitycenter/WidgetProvider;->d:Landroid/os/ParcelUuid;

    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/miui/securitycenter/WidgetProvider;->e:Landroid/os/ParcelUuid;

    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/miui/securitycenter/WidgetProvider;->f:Landroid/os/ParcelUuid;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/securitycenter/WidgetProvider;->g:Landroid/content/UriMatcher;

    new-instance v1, Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v1, Lcom/miui/securitycenter/WidgetProvider;->h:Landroid/util/SparseIntArray;

    const-string v3, "com.miui.securitycenter.widgetProvider"

    const-string v4, "getSecurityScanData"

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "getCleanMasterData"

    const/4 v6, 0x2

    invoke-virtual {v0, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "getMemoryData"

    const/4 v7, 0x3

    invoke-virtual {v0, v3, v4, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "getPowerData"

    const/4 v8, 0x4

    invoke-virtual {v0, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "getWearableAndHeadSetData"

    const/4 v9, 0x5

    invoke-virtual {v0, v3, v4, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "getSupportPowerKeeperTime"

    const/4 v10, 0x6

    invoke-virtual {v0, v3, v4, v10}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget v0, Lmiuix/view/i;->e:I

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->f:I

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->g:I

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->h:I

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->i:I

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->j:I

    invoke-virtual {v1, v10, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->k:I

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->l:I

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->m:I

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->n:I

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->o:I

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->p:I

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->q:I

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->r:I

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->s:I

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget v0, Lmiuix/view/i;->t:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/miui/securitycenter/WidgetProvider$a;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/WidgetProvider$a;-><init>(Lcom/miui/securitycenter/WidgetProvider;)V

    iput-object v0, p0, Lcom/miui/securitycenter/WidgetProvider;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/miui/securitycenter/WidgetProvider;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/WidgetProvider;->d(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/securitycenter/WidgetProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/WidgetProvider;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/securitycenter/WidgetProvider;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/securitycenter/WidgetProvider;->j(IJ)V

    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljb/h;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "com.miui.personalassistant"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.mi.globalminusscreen"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljb/f;

    iget-boolean v4, v3, Ljb/f;->e:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Ljb/f;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v3, Ljb/f;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v3, Ljb/f;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    invoke-static {v0, p1, v2}, Llb/g;->h(Ljava/util/ArrayList;ZLjava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkb/a;->r(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/optimizemanage/h;->g(Landroid/content/Context;J)V

    return-void
.end method

.method private e()I
    .locals 11

    const-string v0, "WidgetProvider"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    :try_start_0
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    const-string v7, "getUuids"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10, v9}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/ParcelUuid;

    invoke-direct {p0, v5, v6}, Lcom/miui/securitycenter/WidgetProvider;->h([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v5

    const-string v6, "isConnected"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v10, v7}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isHead : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " connect state : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " name : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const-string v5, "getBatteryLevel"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v10, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v2, :cond_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "getHeadBattery failed"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return v3
.end method

.method private f(Landroid/content/Context;Z)J
    .locals 4

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/miui/optimizemanage/h;->e(Landroid/content/Context;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {}, Leg/g;->c()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljb/f;

    iget-boolean v3, v2, Ljb/f;->e:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, v2, Ljb/f;->d:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p1, v0, v1}, Lcom/miui/optimizemanage/h;->j(Landroid/content/Context;J)V

    return-wide v0
.end method

.method private g(Landroid/content/Context;Z)J
    .locals 4

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/miui/optimizemanage/h;->d(Landroid/content/Context;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-static {}, Lx4/t;->m()J

    move-result-wide v0

    invoke-static {}, Lx4/t;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/miui/optimizemanage/h;->i(Landroid/content/Context;J)V

    return-wide v0
.end method

.method private h([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/securitycenter/WidgetProvider;->d:Landroid/os/ParcelUuid;

    invoke-static {p2, v1}, Loc/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/securitycenter/WidgetProvider;->c:Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Loc/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/miui/securitycenter/WidgetProvider;->f:Landroid/os/ParcelUuid;

    invoke-static {p2, v1}, Loc/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miui/securitycenter/WidgetProvider;->e:Landroid/os/ParcelUuid;

    invoke-static {p1, v2}, Loc/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {p1, v1}, Loc/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/securitycenter/WidgetProvider;->e:Landroid/os/ParcelUuid;

    invoke-static {p2, p1}, Loc/b;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "WidgetProvider"

    const-string v1, "get isHead failed"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "maml_widget_click_state"

    invoke-static {p1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private j(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/WidgetProvider;->a:Lum/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lum/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/miui/securitycenter/WidgetProvider;->a:Lum/b;

    sget-object p3, Lcom/miui/securitycenter/WidgetProvider;->h:Landroid/util/SparseIntArray;

    sget v0, Lmiuix/view/i;->k:I

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lum/b;->f(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    const-wide/16 p2, 0x32

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 8

    const-string v0, "WidgetProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lum/b;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/securitycenter/WidgetProvider;->a:Lum/b;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.miui.intent.action.CLEAN_MEMORY"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.miui.intent.action.CHANGE_POWER_SAVE_MODE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.miui.intent.action.VIBRATE"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securitycenter/WidgetProvider;->b:Landroid/content/BroadcastReceiver;

    const-string v5, "com.miui.securitycenter.permission.WIDGET_PROVIDER"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/securitycenter/WidgetProvider;->g:Landroid/content/UriMatcher;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, "WidgetProvider"

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    new-instance v6, Landroid/database/MatrixCursor;

    const-string v1, "isSupportPowerKeeperTime"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {}, Lme/w;->c0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v6, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    const-string v2, "getWearableAndHeadSetData"

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "content://com.xiaomi.wearable.provider.device/status"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v2, "content://com.mi.health.provider.device/status"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    move-object v13, v2

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWearableAndHeadSetData query wearable cursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "device_battery"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "device_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/securitycenter/WidgetProvider;->e()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wearableBattery "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " headsetBattery "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/database/MatrixCursor;

    const-string v4, "wearableBattery"

    const-string v5, "wearableType"

    const-string v9, "headsetBattery"

    filled-new-array {v4, v5, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v6, v4, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v6, v3

    goto/16 :goto_9

    :pswitch_2
    new-instance v6, Landroid/database/MatrixCursor;

    const-string v2, "leftChargeTime"

    const-string v12, "enduranceTime"

    const-string v13, "powerSaveModeStatus"

    const-string v14, "quickChargeStatus"

    const-string v15, "chargestate"

    filled-new-array {v2, v12, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object v12

    invoke-virtual {v12}, Lcom/miui/powercenter/batteryhistory/i;->c()Ljava/util/List;

    move-result-object v12

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/miui/powercenter/batteryhistory/b;->e(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object v4

    iget-wide v4, v4, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/miui/powercenter/batteryhistory/o;->a(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {v1}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lme/q;->h()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Lme/w;->z()Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_0

    :cond_3
    move v14, v11

    goto :goto_1

    :cond_4
    :goto_0
    move v14, v10

    goto :goto_1

    :cond_5
    invoke-static {}, Lme/w;->K()Z

    move-result v14

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPowerData leftChargeTime : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " enduranceTime : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " powerSaveModeStatus : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " quickChargeStatus : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v3, v2

    invoke-virtual {v6, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    new-instance v6, Landroid/database/MatrixCursor;

    const-string v2, "memoryOccupied"

    const-string v3, "memoryCleanable"

    const-string v12, "lastCleanedMemorySize"

    filled-new-array {v2, v3, v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/optimizemanage/h;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    const-wide/32 v2, 0x493e0

    cmp-long v2, v12, v2

    if-ltz v2, :cond_6

    move v2, v11

    goto :goto_2

    :cond_6
    move v2, v10

    :goto_2
    invoke-static {v1}, Lcom/miui/optimizemanage/h;->c(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    const-wide/16 v12, 0x1388

    cmp-long v3, v14, v12

    if-ltz v3, :cond_7

    move v3, v11

    goto :goto_3

    :cond_7
    move v3, v10

    :goto_3
    if-eqz v2, :cond_8

    invoke-direct {v0, v1, v3}, Lcom/miui/securitycenter/WidgetProvider;->f(Landroid/content/Context;Z)J

    move-result-wide v4

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {v1, v4, v5}, Lcom/miui/optimizemanage/h;->f(Landroid/content/Context;J)V

    :cond_9
    if-eqz v2, :cond_a

    move-wide v12, v4

    goto :goto_4

    :cond_a
    invoke-static {v1}, Lcom/miui/optimizemanage/h;->a(Landroid/content/Context;)J

    move-result-wide v12

    :goto_4
    invoke-direct {v0, v1, v3}, Lcom/miui/securitycenter/WidgetProvider;->g(Landroid/content/Context;Z)J

    move-result-wide v14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMemoryscan isMoreThanFivMin : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " memoryCleanable : "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " memoryOcuupied : "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " lastCleanedMemory : "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-virtual {v6, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    if-eqz v3, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/optimizemanage/h;->h(Landroid/content/Context;J)V

    goto/16 :goto_9

    :pswitch_4
    new-instance v6, Landroid/database/MatrixCursor;

    const-string v2, "garbageSize"

    const-string v3, "totalSpace"

    const-string v4, "availableSpace"

    const-string v5, "cleanerInstalledState"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-boolean v2, Lsl/a;->a:Z

    if-eqz v2, :cond_b

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const-string v2, "com.miui.cleanmaster"

    invoke-static {v1, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    move v2, v10

    :goto_6
    invoke-static {v1}, Lef/x;->f(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->s()J

    move-result-wide v11

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCleanMasterscan garbageSize : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "totalSpace : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " availableSpace : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v6, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_5
    new-instance v6, Landroid/database/MatrixCursor;

    const-string v2, "scanScore"

    const-string v3, "scanSafe"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {v1}, Lef/x;->p(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getsecurityscan score is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lsl/a;->a:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lpf/g;->d()I

    move-result v2

    if-le v1, v2, :cond_e

    goto :goto_7

    :cond_d
    const/16 v2, 0x50

    if-le v1, v2, :cond_e

    :goto_7
    const/4 v2, 0x2

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    move v5, v10

    const/4 v2, 0x2

    :goto_8
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v6, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_f
    :goto_9
    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

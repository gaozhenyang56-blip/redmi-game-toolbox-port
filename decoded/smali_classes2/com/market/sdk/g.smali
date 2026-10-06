.class public Lcom/market/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile e:Lcom/market/sdk/g;

.field public static final f:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/market/sdk/g;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/g;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.xiaomi.market.ui.AppDetailActivity"

    iput-object v0, p0, Lcom/market/sdk/g;->b:Ljava/lang/String;

    const-string v0, "com.xiaomi.market.data.MarketService"

    iput-object v0, p0, Lcom/market/sdk/g;->c:Ljava/lang/String;

    const-string v0, "com.xiaomi.market.ui.UserAgreementActivity"

    iput-object v0, p0, Lcom/market/sdk/g;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/g;->a:Landroid/content/Context;

    return-void
.end method

.method public static b()Lcom/market/sdk/g;
    .locals 3

    sget-object v0, Lcom/market/sdk/g;->e:Lcom/market/sdk/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/market/sdk/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/market/sdk/g;->e:Lcom/market/sdk/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/market/sdk/g;

    invoke-static {}, Lcom/market/sdk/utils/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/market/sdk/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/market/sdk/g;->e:Lcom/market/sdk/g;

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
    sget-object v0, Lcom/market/sdk/g;->e:Lcom/market/sdk/g;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    const-string v0, "com.xiaomi.market"

    :try_start_0
    sget-boolean v1, Lsl/a;->a:Z

    if-eqz v1, :cond_0

    const-string v0, "com.xiaomi.discover"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/market/sdk/b;
    .locals 1

    iget-object v0, p0, Lcom/market/sdk/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/market/sdk/b;->d(Landroid/app/Application;)Lcom/market/sdk/b;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/market/sdk/d;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/market/sdk/d;->a()Z

    move-result p1

    return p1
.end method

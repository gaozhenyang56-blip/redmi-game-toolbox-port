.class public Lcom/miui/push/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/miui/push/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/push/a$a;

    invoke-direct {v0, p0}, Lcom/miui/push/a$a;-><init>(Lcom/miui/push/a;)V

    iput-object v0, p0, Lcom/miui/push/a;->b:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/push/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/miui/push/a;
    .locals 2

    sget-object v0, Lcom/miui/push/a;->c:Lcom/miui/push/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/push/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/push/a;->c:Lcom/miui/push/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/push/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/push/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/push/a;->c:Lcom/miui/push/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/push/a;->c:Lcom/miui/push/a;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/push/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->v(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/miui/push/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/push/a;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_update_sc_network_allow"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/push/a;->a:Landroid/content/Context;

    const-string v1, "2882303761517330652"

    const-string v2, "5691733067652"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/n;->I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/push/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/n;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/miui/push/a;->a:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/xiaomi/mipush/sdk/n;->Z(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/push/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/n;->i0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/push/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/n;->h0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

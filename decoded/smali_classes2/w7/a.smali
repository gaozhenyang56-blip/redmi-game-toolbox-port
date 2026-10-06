.class public Lw7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lw7/a;


# instance fields
.field private final a:Lmiui/security/SecurityManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lw7/a;->a:Lmiui/security/SecurityManager;

    return-void
.end method

.method public static declared-synchronized a()Lw7/a;
    .locals 2

    const-class v0, Lw7/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw7/a;->b:Lw7/a;

    if-nez v1, :cond_0

    new-instance v1, Lw7/a;

    invoke-direct {v1}, Lw7/a;-><init>()V

    sput-object v1, Lw7/a;->b:Lw7/a;

    :cond_0
    sget-object v1, Lw7/a;->b:Lw7/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method


# virtual methods
.method public c(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 0
    return-void
.end method

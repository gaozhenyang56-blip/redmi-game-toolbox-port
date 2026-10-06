.class public Lzg/b;
.super Lzg/a;
.source "SourceFile"


# static fields
.field private static b:Lzg/b;


# instance fields
.field private a:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lzg/a;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lzg/b;->a:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lzg/b;
    .locals 2

    const-class v0, Lzg/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzg/b;->b:Lzg/b;

    if-nez v1, :cond_0

    new-instance v1, Lzg/b;

    invoke-direct {v1, p0}, Lzg/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lzg/b;->b:Lzg/b;

    :cond_0
    sget-object p0, Lzg/b;->b:Lzg/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lzg/b;->a:Landroid/telephony/TelephonyManager;

    const-string v2, "getDataEnabled"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public c(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lzg/b;->a:Landroid/telephony/TelephonyManager;

    const-string v1, "setDataEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

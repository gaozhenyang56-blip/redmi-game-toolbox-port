.class public Lyg/b;
.super Lyg/a;
.source "SourceFile"


# static fields
.field private static b:Lyg/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lyg/a;-><init>()V

    iput-object p1, p0, Lyg/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lyg/b;
    .locals 2

    const-class v0, Lyg/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyg/b;->b:Lyg/b;

    if-nez v1, :cond_0

    new-instance v1, Lyg/b;

    invoke-direct {v1, p0}, Lyg/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyg/b;->b:Lyg/b;

    :cond_0
    sget-object p0, Lyg/b;->b:Lyg/b;
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
.method public b(I)V
    .locals 6

    iget-object v0, p0, Lyg/b;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    const-string v1, "removeTask"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

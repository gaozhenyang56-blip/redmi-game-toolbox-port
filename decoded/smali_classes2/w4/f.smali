.class public Lw4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lw4/f;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/f;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lw4/f;->b:Landroid/app/NotificationManager;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lw4/f;
    .locals 2

    const-class v0, Lw4/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw4/f;->c:Lw4/f;

    if-nez v1, :cond_0

    new-instance v1, Lw4/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lw4/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lw4/f;->c:Lw4/f;

    :cond_0
    sget-object p0, Lw4/f;->c:Lw4/f;
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
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lw4/f;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

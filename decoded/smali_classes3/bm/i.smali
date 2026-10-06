.class public Lbm/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lbm/i;


# instance fields
.field private a:Landroid/view/WindowInsets;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbm/i;
    .locals 2

    sget-object v0, Lbm/i;->b:Lbm/i;

    if-nez v0, :cond_1

    const-class v0, Lbm/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbm/i;->b:Lbm/i;

    if-nez v1, :cond_0

    new-instance v1, Lbm/i;

    invoke-direct {v1}, Lbm/i;-><init>()V

    sput-object v1, Lbm/i;->b:Lbm/i;

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
    sget-object v0, Lbm/i;->b:Lbm/i;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/view/WindowInsets;)V
    .locals 0

    iput-object p1, p0, Lbm/i;->a:Landroid/view/WindowInsets;

    return-void
.end method

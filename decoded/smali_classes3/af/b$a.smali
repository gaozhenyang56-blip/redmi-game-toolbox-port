.class public final Laf/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Laf/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Laf/b;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Laf/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Laf/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "context.applicationContext"

    invoke-static {p1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Laf/b;-><init>(Landroid/content/Context;ZLbk/g;)V

    invoke-static {v1}, Laf/b;->b(Laf/b;)V

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    return-object p1
.end method

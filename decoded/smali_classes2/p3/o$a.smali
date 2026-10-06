.class public final Lp3/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/o;
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

    invoke-direct {p0}, Lp3/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lp3/o;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lp3/o;->a()Lp3/o;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lp3/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/o;-><init>(Lbk/g;)V

    invoke-static {v0}, Lp3/o;->b(Lp3/o;)V

    :cond_0
    invoke-static {}, Lp3/o;->a()Lp3/o;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

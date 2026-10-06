.class public final Ll9/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll9/d;
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

    invoke-direct {p0}, Ll9/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ll9/d;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ll9/d;->a()Ll9/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ll9/d;

    invoke-direct {v0}, Ll9/d;-><init>()V

    invoke-static {v0}, Ll9/d;->b(Ll9/d;)V

    :cond_0
    invoke-static {}, Ll9/d;->a()Ll9/d;

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

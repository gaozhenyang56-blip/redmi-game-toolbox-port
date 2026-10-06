.class public final Lbl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/k$i;,
        Lbl/k$g;,
        Lbl/k$b;,
        Lbl/k$h;,
        Lbl/k$d;,
        Lbl/k$c;,
        Lbl/k$e;,
        Lbl/k$f;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lbl/k$d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lbl/k$h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final c:Lbl/k$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/k$f<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbl/k;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbl/k;->b:Ljava/util/HashMap;

    new-instance v0, Lbl/k$a;

    invoke-direct {v0}, Lbl/k$a;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lbl/k;->d(Lbl/k$e;I)Lbl/k$i;

    move-result-object v0

    sput-object v0, Lbl/k;->c:Lbl/k$f;

    return-void
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lbl/k;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lbl/k;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public static c(Lbl/k$e;I)Lbl/k$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbl/k$e<",
            "TT;>;I)",
            "Lbl/k$g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbl/k$g;

    invoke-direct {v0, p0, p1}, Lbl/k$g;-><init>(Lbl/k$e;I)V

    return-object v0
.end method

.method public static d(Lbl/k$e;I)Lbl/k$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbl/k$e<",
            "TT;>;I)",
            "Lbl/k$i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbl/k$i;

    invoke-direct {v0, p0, p1}, Lbl/k$i;-><init>(Lbl/k$e;I)V

    return-object v0
.end method

.method public static e()Lbl/k$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbl/k$f<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lbl/k;->c:Lbl/k$f;

    return-object v0
.end method

.method static f(Lbl/k$d;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbl/k$d<",
            "TT;>;I)V"
        }
    .end annotation

    sget-object v0, Lbl/k;->a:Ljava/util/HashMap;

    monitor-enter v0

    neg-int p1, p1

    :try_start_0
    invoke-virtual {p0, p1}, Lbl/k$d;->b(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static g(Ljava/lang/Class;I)Lbl/k$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lbl/k$d<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lbl/k;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbl/k$d;

    if-nez v1, :cond_0

    new-instance v1, Lbl/k$d;

    invoke-direct {v1, p0, p1}, Lbl/k$d;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lbl/k$d;->b(I)V

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static h(Lbl/k$h;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbl/k$h<",
            "TT;>;I)V"
        }
    .end annotation

    sget-object v0, Lbl/k;->b:Ljava/util/HashMap;

    monitor-enter v0

    neg-int p1, p1

    :try_start_0
    invoke-virtual {p0, p1}, Lbl/k$h;->b(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static i(Ljava/lang/Class;I)Lbl/k$h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lbl/k$h<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lbl/k;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbl/k$h;

    if-nez v1, :cond_0

    new-instance v1, Lbl/k$h;

    invoke-direct {v1, p0, p1}, Lbl/k$h;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lbl/k$h;->b(I)V

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

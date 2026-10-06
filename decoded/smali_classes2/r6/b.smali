.class public Lr6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lr6/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr6/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr6/b;->a:Ljava/util/List;

    new-instance v1, Lr6/c;

    invoke-direct {v1, p1}, Lr6/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lr6/b;
    .locals 2

    const-class v0, Lr6/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr6/b;->b:Lr6/b;

    if-nez v1, :cond_0

    new-instance v1, Lr6/b;

    invoke-direct {v1, p0}, Lr6/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lr6/b;->b:Lr6/b;

    :cond_0
    sget-object p0, Lr6/b;->b:Lr6/b;
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
.method public a()Z
    .locals 2

    iget-object v0, p0, Lr6/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr6/a;

    invoke-interface {v1}, Lr6/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

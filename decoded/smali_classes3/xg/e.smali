.class public Lxg/e;
.super Lxg/d;
.source "SourceFile"


# static fields
.field private static a:Lxg/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxg/d;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lxg/e;
    .locals 2

    const-class v0, Lxg/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lxg/e;->a:Lxg/e;

    if-nez v1, :cond_0

    new-instance v1, Lxg/e;

    invoke-direct {v1}, Lxg/e;-><init>()V

    sput-object v1, Lxg/e;->a:Lxg/e;

    :cond_0
    sget-object v1, Lxg/e;->a:Lxg/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/applicationlock/widget/LockPatternView$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-virtual {v3}, Lcom/miui/applicationlock/widget/LockPatternView$b;->d()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/miui/applicationlock/widget/LockPatternView$b;->c()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x31

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

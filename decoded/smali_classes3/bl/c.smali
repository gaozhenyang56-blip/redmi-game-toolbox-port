.class public Lbl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/graphics/Point;

.field static b:Lmiuix/view/f;

.field static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lbl/o;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/lang/Object;

.field static final e:Ljava/lang/Object;

.field static final f:Ljava/lang/Object;

.field static volatile g:Ljava/lang/Boolean;

.field static volatile h:I

.field static volatile i:I

.field static volatile j:I

.field static volatile k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lbl/c;->a:Landroid/graphics/Point;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbl/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbl/c;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbl/c;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbl/c;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lbl/c;->g:Ljava/lang/Boolean;

    sput v1, Lbl/c;->h:I

    sput v1, Lbl/c;->i:I

    sput v1, Lbl/c;->j:I

    sput v1, Lbl/c;->k:I

    return-void
.end method

.method public static A(Landroid/content/res/Configuration;Lbl/o;)V
    .locals 5

    invoke-static {p0}, Lbl/c;->a(Landroid/content/res/Configuration;)V

    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    sget-object v2, Lbl/c;->b:Lmiuix/view/f;

    iget v2, v2, Lmiuix/view/f;->d:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v1, p1, Lbl/o;->e:F

    iget-object v0, p1, Lbl/o;->c:Landroid/graphics/Point;

    mul-float/2addr v1, v2

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Lbl/i;->c(FF)I

    move-result v3

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Lbl/i;->c(FF)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p1, Lbl/o;->d:Landroid/graphics/Point;

    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p1, Lbl/o;->d:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Lhm/a;->c(II)I

    move-result p0

    iput p0, p1, Lbl/o;->f:I

    const/4 p0, 0x0

    iput-boolean p0, p1, Lbl/o;->a:Z

    return-void
.end method

.method private static a(Landroid/content/res/Configuration;)V
    .locals 1

    sget-object v0, Lbl/c;->b:Lmiuix/view/f;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/view/f;

    invoke-direct {v0, p0}, Lmiuix/view/f;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lbl/c;->b:Lmiuix/view/f;

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Lbl/o;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lbl/c;->c(Landroid/content/Context;Z)Lbl/o;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Z)Lbl/o;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sget-object v0, Lbl/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbl/o;

    if-nez v1, :cond_0

    new-instance v1, Lbl/o;

    invoke-direct {v1}, Lbl/o;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static d(Landroid/content/Context;Z)I
    .locals 3

    sget v0, Lbl/c;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lbl/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v2, Lbl/c;->j:I

    if-ne v2, v1, :cond_0

    invoke-static {p0}, Lbl/i;->h(Landroid/content/Context;)I

    move-result v1

    sput v1, Lbl/c;->j:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p0, v1

    sget v1, Lbl/c;->j:I

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int p0, v1

    sput p0, Lbl/c;->k:I

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    sget p0, Lbl/c;->k:I

    goto :goto_1

    :cond_2
    sget p0, Lbl/c;->j:I

    :goto_1
    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lbl/c;->f(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    sget-object v0, Lbl/c;->a:Landroid/graphics/Point;

    invoke-static {v0}, Lbl/c;->p(Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lbl/p;->g(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1, p0}, Lbl/c;->w(Landroid/view/WindowManager;Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lbl/c;->a(Landroid/content/res/Configuration;)V

    sget-object v0, Lbl/c;->b:Lmiuix/view/f;

    iget v0, v0, Lmiuix/view/f;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static h(Landroid/content/Context;Z)I
    .locals 3

    sget v0, Lbl/c;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lbl/c;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v2, Lbl/c;->h:I

    if-ne v2, v1, :cond_0

    invoke-static {p0}, Lbl/i;->k(Landroid/content/Context;)I

    move-result v1

    sput v1, Lbl/c;->h:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p0, v1

    sget v1, Lbl/c;->h:I

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int p0, v1

    sput p0, Lbl/c;->i:I

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    sget p0, Lbl/c;->i:I

    goto :goto_1

    :cond_2
    sget p0, Lbl/c;->h:I

    :goto_1
    return p0
.end method

.method public static i(Landroid/content/Context;)Lbl/o;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbl/c;->k(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lbl/o;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;Landroid/content/res/Configuration;)Lbl/o;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbl/c;->k(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lbl/o;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;Landroid/content/res/Configuration;Z)Lbl/o;
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lbl/c;->b(Landroid/content/Context;)Lbl/o;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lbl/c;->x(Landroid/content/Context;Lbl/o;Landroid/content/res/Configuration;Z)V

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    invoke-static {p0}, Lbl/c;->b(Landroid/content/Context;)Lbl/o;

    move-result-object v0

    iget-boolean v1, v0, Lbl/o;->a:Z

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lbl/c;->z(Landroid/content/Context;Lbl/o;)V

    :cond_0
    iget-object p0, v0, Lbl/o;->c:Landroid/graphics/Point;

    return-object p0
.end method

.method public static m(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lmiuix/view/f;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/view/f;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lbl/c;->b:Lmiuix/view/f;

    return-void
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lbl/c;->b(Landroid/content/Context;)Lbl/o;

    move-result-object p0

    iget p0, p0, Lbl/o;->g:I

    invoke-static {p0}, Lbl/m;->b(I)Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lbl/c;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Lbl/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbl/c;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-static {p0}, Lbl/i;->n(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lbl/c;->g:Ljava/lang/Boolean;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lbl/c;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static p(Landroid/graphics/Point;)Z
    .locals 2

    iget v0, p0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(Landroid/content/Context;)V
    .locals 2

    sget-object p0, Lbl/c;->a:Landroid/graphics/Point;

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lbl/c;->r(Landroid/graphics/Point;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sget-object v0, Lbl/c;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 p0, 0x0

    :try_start_1
    sput-object p0, Lbl/c;->g:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    sget-object p0, Lbl/c;->f:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    sput v0, Lbl/c;->j:I

    sput v0, Lbl/c;->k:I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v1, Lbl/c;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sput v0, Lbl/c;->h:I

    sput v0, Lbl/c;->i:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public static r(Landroid/graphics/Point;)V
    .locals 2
    .param p0    # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_1

    :cond_0
    iput v1, p0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/Point;->y:I

    :cond_1
    return-void
.end method

.method public static declared-synchronized s(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lbl/c;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lbl/c;->b(Landroid/content/Context;)Lbl/o;

    move-result-object p0

    invoke-static {p0}, Lbl/c;->t(Lbl/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static t(Lbl/o;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/o;->b:Z

    iput-boolean v0, p0, Lbl/o;->a:Z

    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sget-object v0, Lbl/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static v(Lmiuix/view/f;)V
    .locals 0

    sput-object p0, Lbl/c;->b:Lmiuix/view/f;

    return-void
.end method

.method public static w(Landroid/view/WindowManager;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lbl/c;->a:Landroid/graphics/Point;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, v0}, Lbl/p;->d(Landroid/view/WindowManager;Landroid/content/Context;Landroid/graphics/Point;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static x(Landroid/content/Context;Lbl/o;Landroid/content/res/Configuration;Z)V
    .locals 5
    .param p2    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lbl/o;->a:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_6

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2, p1}, Lbl/c;->A(Landroid/content/res/Configuration;Lbl/o;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lbl/c;->z(Landroid/content/Context;Lbl/o;)V

    :goto_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    iget-object v2, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v4, :cond_3

    iget-object v1, p1, Lbl/o;->c:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    move v1, v3

    :cond_3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v2, :cond_4

    iget-object v2, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v4, :cond_4

    iget-object v1, p1, Lbl/o;->c:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    if-eqz v3, :cond_6

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    :goto_2
    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p2, p2

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p2, v0

    iget-object v0, p1, Lbl/o;->d:Landroid/graphics/Point;

    iget-object v1, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Lbl/i;->t(FF)I

    move-result v1

    iget-object v2, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-static {p2, v2}, Lbl/i;->t(FF)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object p2, p1, Lbl/o;->d:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v0, p2}, Lhm/a;->c(II)I

    move-result p2

    iput p2, p1, Lbl/o;->f:I

    :cond_6
    iget-boolean p2, p1, Lbl/o;->b:Z

    if-nez p2, :cond_7

    if-eqz p3, :cond_8

    :cond_7
    invoke-static {p0, p1}, Lbl/c;->y(Landroid/content/Context;Lbl/o;)V

    :cond_8
    return-void
.end method

.method public static y(Landroid/content/Context;Lbl/o;)V
    .locals 1

    iget-boolean v0, p1, Lbl/o;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lbl/c;->z(Landroid/content/Context;Lbl/o;)V

    :cond_0
    invoke-static {p0}, Lbl/c;->f(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbl/m;->a(Landroid/content/Context;Lbl/o;Landroid/graphics/Point;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lbl/o;->b:Z

    return-void
.end method

.method public static z(Landroid/content/Context;Lbl/o;)V
    .locals 3

    iget-object v0, p1, Lbl/o;->c:Landroid/graphics/Point;

    invoke-static {p0, v0}, Lbl/p;->i(Landroid/content/Context;Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    iput p0, p1, Lbl/o;->e:F

    iget-object v0, p1, Lbl/o;->d:Landroid/graphics/Point;

    iget-object v1, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Lbl/i;->t(FF)I

    move-result v1

    iget-object v2, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-static {p0, v2}, Lbl/i;->t(FF)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p1, Lbl/o;->d:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Lhm/a;->c(II)I

    move-result p0

    iput p0, p1, Lbl/o;->f:I

    const/4 p0, 0x0

    iput-boolean p0, p1, Lbl/o;->a:Z

    return-void
.end method

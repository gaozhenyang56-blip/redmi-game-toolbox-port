.class public final Landroidx/appcompat/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
    }
.end annotation


# static fields
.field private static final b:Landroid/graphics/PorterDuff$Mode;

.field private static c:Landroidx/appcompat/widget/g;


# instance fields
.field private a:Landroidx/appcompat/widget/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Landroidx/appcompat/widget/g;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static declared-synchronized b()Landroidx/appcompat/widget/g;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/g;->h()V

    :cond_0
    sget-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Landroidx/appcompat/widget/g;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/v0;->l(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized h()V
    .locals 3

    const-class v0, Landroidx/appcompat/widget/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/g;

    invoke-direct {v1}, Landroidx/appcompat/widget/g;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;

    invoke-static {}, Landroidx/appcompat/widget/v0;->h()Landroidx/appcompat/widget/v0;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/v0;

    sget-object v1, Landroidx/appcompat/widget/g;->c:Landroidx/appcompat/widget/g;

    iget-object v1, v1, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/v0;

    new-instance v2, Landroidx/appcompat/widget/g$a;

    invoke-direct {v2}, Landroidx/appcompat/widget/g$a;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/v0;->u(Landroidx/appcompat/widget/v0$f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/d1;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/v0;->w(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/d1;[I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/v0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v0;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/v0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/v0;->k(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/v0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v0;->m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/g;->a:Landroidx/appcompat/widget/v0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v0;->s(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

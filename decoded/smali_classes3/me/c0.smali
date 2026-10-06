.class public Lme/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/graphics/Typeface;

.field private static b:Landroid/graphics/Typeface;


# direct methods
.method public static declared-synchronized a()Landroid/graphics/Typeface;
    .locals 3

    const-class v0, Lme/c0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lme/c0;->b:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    const-string v1, "mipro"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lme/c0;->b:Landroid/graphics/Typeface;

    :cond_0
    sget-object v1, Lme/c0;->b:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lme/c0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lme/c0;->a:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Mitype-SemiBold.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lme/c0;->a:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lme/c0;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lme/c0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lme/c0;->a:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Mitype-DemiBold.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lme/c0;->a:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lme/c0;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

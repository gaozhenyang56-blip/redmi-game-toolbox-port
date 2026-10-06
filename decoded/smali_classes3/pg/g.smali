.class public Lpg/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/graphics/Typeface;

.field private static b:Landroid/graphics/Typeface;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lpg/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lpg/g;->b:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Mitype2018-80.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lpg/g;->b:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lpg/g;->b:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lpg/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lpg/g;->a:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Mitype2018-clock.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lpg/g;->a:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lpg/g;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

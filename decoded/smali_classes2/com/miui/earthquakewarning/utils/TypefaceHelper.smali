.class public Lcom/miui/earthquakewarning/utils/TypefaceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sMitypeNumber1Typeface:Landroid/graphics/Typeface;

.field private static sMitypeNumber2Typeface:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getMitypeNumber1Typeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/miui/earthquakewarning/utils/TypefaceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->sMitypeNumber1Typeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Mitype2018-80.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->sMitypeNumber1Typeface:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->sMitypeNumber1Typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getMitypeNumber2Typeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/miui/earthquakewarning/utils/TypefaceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->sMitypeNumber2Typeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Mitype.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->sMitypeNumber2Typeface:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lcom/miui/earthquakewarning/utils/TypefaceHelper;->sMitypeNumber2Typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

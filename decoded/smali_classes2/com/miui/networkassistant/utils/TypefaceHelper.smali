.class public Lcom/miui/networkassistant/utils/TypefaceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sMiuiBoldTypeface:Landroid/graphics/Typeface;

.field private static sMiuiDemiBoldTypeface:Landroid/graphics/Typeface;

.field private static sMiuiLightTypeface:Landroid/graphics/Typeface;

.field private static sMiuiNumTypefaceForNA:Landroid/graphics/Typeface;

.field private static sMiuiNumTypefaceSemiBold:Landroid/graphics/Typeface;

.field private static sMiuiRegularTypeface:Landroid/graphics/Typeface;

.field private static sMiuiThinTypeface:Landroid/graphics/Typeface;

.field private static sRobotoBoldCondensed:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getMiuiBoldTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class p0, Lcom/miui/networkassistant/utils/TypefaceHelper;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiBoldTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string v0, "miuiex-bold"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiBoldTypeface:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiBoldTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getMiuiDemiBoldCondensed(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/utils/TypefaceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiDemiBoldTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Mitype-DemiBold.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiDemiBoldTypeface:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiDemiBoldTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getMiuiLightTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class p0, Lcom/miui/networkassistant/utils/TypefaceHelper;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiLightTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string v0, "miuiex-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiLightTypeface:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiLightTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getMiuiRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class p0, Lcom/miui/networkassistant/utils/TypefaceHelper;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiRegularTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string v0, "miuiex-normal"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiRegularTypeface:Landroid/graphics/Typeface;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiRegularTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getMiuiThinTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/utils/TypefaceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiThinTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Mitype.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiThinTypeface:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiThinTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getMiuiTypefaceForNA(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/utils/TypefaceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiNumTypefaceForNA:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/NA-Mitype.otf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiNumTypefaceForNA:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiNumTypefaceForNA:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getMiuiTypefaceForSemiBold(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/utils/TypefaceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiNumTypefaceSemiBold:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/TitilliumWeb-SemiBold.ttf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiNumTypefaceSemiBold:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sMiuiNumTypefaceSemiBold:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRobotoBoldCondensed(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/utils/TypefaceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/utils/TypefaceHelper;->sRobotoBoldCondensed:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "fonts/Roboto-BoldCondensed.ttf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sRobotoBoldCondensed:Landroid/graphics/Typeface;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/utils/TypefaceHelper;->sRobotoBoldCondensed:Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

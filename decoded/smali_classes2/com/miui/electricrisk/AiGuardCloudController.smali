.class public Lcom/miui/electricrisk/AiGuardCloudController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final DATA_KEY:Ljava/lang/String; = "ai_guard_function_available"

.field private static final DEFAULT_BANNED_DEVICES:Ljava/lang/String; = "[\"liuqin\", \"yudi\", \"malachite\", \"amethyst\", \"beryl\", \"citrine\", \"mondrian\", \"dizi\", \"ruan\", \"xun\", \"zizhan\", \"breeze\", \"unicorn\", \"thor\", \"mayfly\", \"diting\", \"zeus\", \"cupid\", \"marble\", \"marblein\", \"ziyi\", \"garnet\", \"xig05\", \"flame\", \"blaze\", \"pearl\", \"yuechu\", \"zircon\", \"air\", \"atmos\", \"gold\", \"iron\", \"lake\", \"pond\", \"pipa\", \"daumier\", \"ingres\", \"rembrandt\", \"rubens\", \"xaga\", \"xagapro\", \"xagain\", \"ruby\", \"rubypro\", \"rubyplus\", \"dagu\", \"star\", \"mars\", \"venus\", \"redwood\", \"redwoodin\", \"lisa\", \"sky\", \"river\", \"XIG03\", \"sunstone\", \"matisse\"]"

.field private static final DEVICE_BLACKLIST:Ljava/lang/String; = "deviceBlacklist"

.field private static final LOCAL_SP_FILENAME:Ljava/lang/String; = "ai_guard_function_cloud_data"

.field private static final MODULE_KEY:Ljava/lang/String; = "AiGuardAvailability"

.field private static final TAG:Ljava/lang/String; = "AiGuardCloudController"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardCloudController;->lambda$check$0(Landroid/content/Context;)V

    return-void
.end method

.method public static check(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/miui/electricrisk/a;

    invoke-direct {v1, p0}, Lcom/miui/electricrisk/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$check$0(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardCloudController;->loadCloudData(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/electricrisk/AiGuardCloudController;->onCloudDataLoad(Landroid/content/Context;Z)V

    return-void
.end method

.method static loadCachedCloudData(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "ai_guard_function_cloud_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ai_guard_function_available"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static loadCloudData(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AiGuardAvailability"

    const-string v2, "ai_guard_function_available"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cloud setting is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AiGuardCloudController"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "deviceBlacklist"

    const-string v4, "[\"liuqin\", \"yudi\", \"malachite\", \"amethyst\", \"beryl\", \"citrine\", \"mondrian\", \"dizi\", \"ruan\", \"xun\", \"zizhan\", \"breeze\", \"unicorn\", \"thor\", \"mayfly\", \"diting\", \"zeus\", \"cupid\", \"marble\", \"marblein\", \"ziyi\", \"garnet\", \"xig05\", \"flame\", \"blaze\", \"pearl\", \"yuechu\", \"zircon\", \"air\", \"atmos\", \"gold\", \"iron\", \"lake\", \"pond\", \"pipa\", \"daumier\", \"ingres\", \"rembrandt\", \"rubens\", \"xaga\", \"xagapro\", \"xagain\", \"ruby\", \"rubypro\", \"rubyplus\", \"dagu\", \"star\", \"mars\", \"venus\", \"redwood\", \"redwoodin\", \"lisa\", \"sky\", \"river\", \"XIG03\", \"sunstone\", \"matisse\"]"

    invoke-static {p0, v1, v2, v4}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->contains(Lcom/google/gson/JsonElement;)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    :goto_0
    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private static onCloudDataLoad(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "ai_guard_function_cloud_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ai_guard_function_available"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ai_guard_function_switch"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/electricrisk/AiGuardSceneService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.guardprovider/.aiguard.AiGuardService"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

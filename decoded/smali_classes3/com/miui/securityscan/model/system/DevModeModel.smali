.class public Lcom/miui/securityscan/model/system/DevModeModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# static fields
.field private static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field private static final MAX_TASKS:I = 0x3e9

.field private static final PREF_FILE:Ljava/lang/String; = "development"

.field private static final PREF_SHOW:Ljava/lang/String; = "show"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120c89

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1218bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v1, v2, :cond_0

    const v1, 0x7f121a20

    goto :goto_0

    :cond_0
    const v1, 0x7f121a1f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 8

    const-string p1, "show"

    const-string v0, "com.android.settings"

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v4, "development"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings.action.DEV_CLOSE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x3e9

    invoke-virtual {p1, v4, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p1

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x200001

    and-int/2addr v6, v7

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v5, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lyg/a;->a(Landroid/content/Context;)Lyg/a;

    move-result-object p1

    iget v0, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p1, v0}, Lyg/a;->b(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_enabled"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "development_settings_enabled"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    sget-object p1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    new-instance p1, Lzf/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121a1e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lzf/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v0

    sget-object v1, Lzf/f$a;->a:Lzf/f$a;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lzf/f;->d(Lzf/f$a;Ljava/lang/String;Lzf/e;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public scan()V
    .locals 5

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/v1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v3, "development"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "show"

    sget-boolean v4, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v0, v2

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v2, :cond_4

    new-instance v0, Lzf/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121a1e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lzf/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v1

    sget-object v2, Lzf/f$a;->a:Lzf/f$a;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lzf/f;->d(Lzf/f$a;Ljava/lang/String;Lzf/e;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

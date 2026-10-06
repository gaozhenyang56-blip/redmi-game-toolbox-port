.class public Lcom/miui/permcenter/compact/MiuiSettingsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiSettingsCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, v7, v1

    const/4 v3, 0x1

    aput-object v0, v7, v3

    const/4 v5, 0x2

    aput-object v0, v7, v5

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v0, v7, v6

    const-string v8, "MiuiSettingsCompat"

    const-string v9, "getCloudDataBoolean"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    move-object v3, v8

    move-object v5, v0

    move-object v6, v9

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static getCloudDataInt(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, v7, v1

    const/4 v3, 0x1

    aput-object v0, v7, v3

    const/4 v5, 0x2

    aput-object v0, v7, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v0, v7, v6

    const-string v8, "MiuiSettingsCompat"

    const-string v9, "getCloudDataInt"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    move-object v3, v8

    move-object v5, v0

    move-object v6, v9

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/ContentResolver;

    const/4 v3, 0x0

    aput-object v1, v5, v3

    const-class v1, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v5, v4

    const-string v1, "MiuiSettingsCompat"

    const-class v6, Ljava/util/List;

    const-string v7, "getCloudDataList"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    move-object v3, v6

    move-object v4, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.provider.MiuiSettings$SettingsCloudData"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/ContentResolver;

    const/4 v4, 0x0

    aput-object v2, v6, v4

    const/4 v2, 0x1

    aput-object v0, v6, v2

    const/4 v5, 0x2

    aput-object v0, v6, v5

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const-string v0, "MiuiSettingsCompat"

    const-class v8, Ljava/lang/String;

    const-string v9, "getCloudDataString"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v2

    aput-object p2, v1, v5

    aput-object p3, v1, v7

    move-object v2, v0

    move-object v4, v8

    move-object v5, v9

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static isInstallMonitorEnabled(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.provider.MiuiSettings$AntiVirus"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v6, v0

    const-string v2, "MiuiSettingsCompat"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "isInstallMonitorEnabled"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v0

    invoke-static/range {v2 .. v7}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static isNavigationBarFullScreen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.provider.MiuiSettings$Global"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/ContentResolver;

    aput-object v2, v6, v0

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const-string v2, "MiuiSettingsCompat"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v7, "getBoolean"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v1, v0

    aput-object p1, v1, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static setInstallMonitorEnabled(Landroid/content/Context;Z)V
    .locals 7

    :try_start_0
    const-string v0, "android.provider.MiuiSettings$AntiVirus"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "MiuiSettingsCompat"

    const-string v6, "setInstallMonitorEnabled"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {v3, v0, v6, v2, v1}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

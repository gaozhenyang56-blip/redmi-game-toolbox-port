.class public Lcom/miui/permission/support/util/SystemPropertiesCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {}, Lcom/miui/permission/support/util/SystemPropertiesCompat;->getSystemClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v4, v0, v5, v2, v1}, Lcom/miui/permission/support/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    invoke-static {}, Lcom/miui/permission/support/util/SystemPropertiesCompat;->getSystemClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "get"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v6, v2, v1}, Lcom/miui/permission/support/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 7

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {}, Lcom/miui/permission/support/util/SystemPropertiesCompat;->getSystemClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getBoolean"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {v5, v2, v6, v1, v0}, Lcom/miui/permission/support/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

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

    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 7

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {}, Lcom/miui/permission/support/util/SystemPropertiesCompat;->getSystemClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getInt"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {v5, v2, v6, v1, v0}, Lcom/miui/permission/support/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

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

    return p1
.end method

.method private static getSystemClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    invoke-static {}, Lcom/miui/permission/support/util/SystemPropertiesCompat;->getSystemClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "set"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v4

    invoke-static {v5, v0, v6, v2, v1}, Lcom/miui/permission/support/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

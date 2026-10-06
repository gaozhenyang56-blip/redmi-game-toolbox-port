.class public Lmiui/cloud/util/AnonymousDeviceIdUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnonymousDeviceIdUtil"

.field private static sGetAAID:Ljava/lang/reflect/Method;

.field private static sGetOAID:Ljava/lang/reflect/Method;

.field private static sGetUDID:Ljava/lang/reflect/Method;

.field private static sGetVAID:Ljava/lang/reflect/Method;

.field private static sIdProivderImpl:Ljava/lang/Object;

.field private static sOAIDDeviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "provider not avaliable"

    const-string v1, "AnonymousDeviceIdUtil"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "cmi"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "umi"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "lmi"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "picasso"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "phoenix"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "phoenixin"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "vangogh"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "monet"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "toco"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "merlin"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "curtana"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "durandal"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "excalibur"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "joyeuse"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    const-string v3, "gram"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v2, "com.android.id.impl.IdProviderImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    const-string v5, "getUDID"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetUDID:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "getUDID not avaliable"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    :try_start_3
    const-string v5, "getOAID"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetOAID:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_4
    const-string v6, "getOAID not avaliable"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_1
    :try_start_5
    const-string v5, "getVAID"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetVAID:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_2
    move-exception v5

    :try_start_6
    const-string v6, "getVAID not avaliable"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    :try_start_7
    const-string v5, "getAAID"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetAAID:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_3
    move-exception v2

    :try_start_8
    const-string v3, "getAAID not avaliable"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_3

    :catch_6
    move-exception v2

    :goto_3
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetAAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "AnonymousDeviceIdUtil"

    const-string v1, "android id"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    const-string v0, "exception invoking "

    const-string v1, "AnonymousDeviceIdUtil"

    sget-object v2, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetOAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetUDID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sGetVAID:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lmiui/cloud/util/AnonymousDeviceIdUtil;->getId(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnforced(Landroid/content/Context;)Z
    .locals 4

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const-string v1, "not enforced"

    const-string v2, "AnonymousDeviceIdUtil"

    const/16 v3, 0x1d

    if-ge p0, v3, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string p0, "ro.miui.restrict_imei"

    invoke-static {p0}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "enforced"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 0

    sget-object p0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sIdProivderImpl:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static useOAID()Z
    .locals 2

    sget-object v0, Lmiui/cloud/util/AnonymousDeviceIdUtil;->sOAIDDeviceSet:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

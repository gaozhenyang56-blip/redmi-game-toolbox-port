.class public Lmiui/cloud/util/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MARKET_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.marketname"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/cloud/util/DeviceUtils;->getAndroidSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/cloud/util/DeviceUtils;->MARKET_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "error: "

    const-class v1, Ljava/lang/String;

    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Lvi/f;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAndroidSystemProperties"

    if-nez v2, :cond_0

    const-string p0, "class SystemProperties not found"

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    const-string v1, "get"

    invoke-static {v2, v1, v5}, Lvi/f;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "no method get"

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1
.end method

.method private static getPhoneModel()Ljava/lang/String;
    .locals 2

    sget-object v0, Lmiui/cloud/util/DeviceUtils;->MARKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static isRedmiDigitSeries()Z
    .locals 1

    invoke-static {}, Lmiui/cloud/util/DeviceUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/util/DeviceUtils;->isRedmiDigitSeries(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRedmiDigitSeries(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(?i)^Redmi[\\s]*[0-9]+[^X]*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

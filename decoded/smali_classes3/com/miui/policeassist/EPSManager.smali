.class public Lcom/miui/policeassist/EPSManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GPS_COORDINATE_SYSTEM_TYPE:Ljava/lang/String; = "1"

.field private static final LOCATION_EXCEPTION:Ljava/lang/String; = "0"

.field private static final LOCATION_GPS:Ljava/lang/String; = "1"

.field private static final LOCATION_NET:Ljava/lang/String; = "2"

.field private static final MAX_RETRIES:I = 0x3

.field private static final RETRY_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EPSManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSortedQueryString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "="

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "key"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "97782f2e2e75445180d664fb5705a8a5"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/policeassist/EPSManager;->getSm3Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createBean(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/miui/policeassist/EPSRequestBean;
    .locals 3

    new-instance v0, Lcom/miui/policeassist/EPSRequestBean;

    invoke-direct {v0}, Lcom/miui/policeassist/EPSRequestBean;-><init>()V

    const-string v1, "17"

    invoke-virtual {v0, v1}, Lcom/miui/policeassist/EPSRequestBean;->setSource(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/policeassist/EPSManager;->getSm3Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/policeassist/EPSRequestBean;->setCaller(Ljava/lang/String;)V

    const-string p1, "0"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/policeassist/EPSRequestBean;->setCalled(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/miui/policeassist/EPSRequestBean;->setCalled(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, p7}, Lcom/miui/policeassist/EPSRequestBean;->setDevice(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/policeassist/EPSManager;->getLocationMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/policeassist/EPSRequestBean;->setMethod(Ljava/lang/String;)V

    const-string p1, "1"

    invoke-virtual {v0, p1}, Lcom/miui/policeassist/EPSRequestBean;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/policeassist/EPSRequestBean;->setLng(Ljava/lang/Double;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/policeassist/EPSRequestBean;->setLat(Ljava/lang/Double;)V

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x22

    if-lt p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/policeassist/EPSRequestBean;->sethAccuracy(Ljava/lang/Double;)V

    :cond_2
    const/16 p2, 0x1a

    if-lt p1, p2, :cond_3

    invoke-static {p0}, Lfd/a;->a(Landroid/location/Location;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/policeassist/EPSRequestBean;->setvAccuracy(Ljava/lang/Double;)V

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/policeassist/EPSRequestBean;->setAltitude(Ljava/lang/Double;)V

    :cond_4
    invoke-virtual {v0, p6}, Lcom/miui/policeassist/EPSRequestBean;->setAddress(Ljava/lang/String;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/policeassist/EPSRequestBean;->setTime(Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lcom/miui/policeassist/EPSRequestBean;->setExtra(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/policeassist/EPSManager;->toTreeMap(Lcom/miui/policeassist/EPSRequestBean;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/policeassist/EPSManager;->buildSortedQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/policeassist/EPSRequestBean;->setSign(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEPSPoliceAssistToggle(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com_miui_warningcenter_eps_status"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static getLocationMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "gps"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "1"

    return-object p0

    :cond_0
    const-string v0, "network"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "2"

    return-object p0

    :cond_1
    const-string p0, "0"

    return-object p0
.end method

.method private static getSm3Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/policeassist/Sm3Utils;->sm3Hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static postEPS(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/policeassist/EPSManager;->getEPSPoliceAssistToggle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p3

    invoke-static {p3}, Lx4/a0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/miui/policeassist/EPSManager;->createBean(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/miui/policeassist/EPSRequestBean;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/policeassist/EPSManager;->postMessage(Lcom/miui/policeassist/EPSRequestBean;)V

    return-void
.end method

.method private static postMessage(Lcom/miui/policeassist/EPSRequestBean;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    const-string v2, "https://eps.caict.ac.cn/eps/collect"

    invoke-static {p0, v2}, Leg/j;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    goto :goto_2

    :goto_1
    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "EPSManager"

    const-string v1, "postMessage Exception:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static setEPSPoliceAssistToggle(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const-string v0, "com_miui_warningcenter_eps_status"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static toTreeMap(Lcom/miui/policeassist/EPSRequestBean;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/policeassist/EPSRequestBean;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getCaller()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caller"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getCalled()Ljava/lang/String;

    move-result-object v1

    const-string v2, "called"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getDevice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getLng()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lng"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getLat()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->gethAccuracy()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hAccuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getvAccuracy()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vAccuracy"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getAltitude()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "altitude"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getTime()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/policeassist/EPSRequestBean;->getExtra()Ljava/lang/String;

    move-result-object p0

    const-string v1, "extra"

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.class public Lcom/miui/earthquakewarning/EarthquakeWarningManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.earthquakewarning.EarthquakeContentProvider2"

.field private static final AUTONAVI_PACKAGENAME:Ljava/lang/String; = "com.autonavi.minimap"

.field private static final AUTONAVI_SEARTH_URI:Ljava/lang/String; = "androidamap://poi?sourceApplication=com.miui.earthquakewarning&keywords=\u5e94\u6025\u907f\u96be\u573a\u6240&dev=0"

.field private static final BAIDUMAP_PACKAGENAME:Ljava/lang/String; = "com.baidu.BaiduMap"

.field private static final BAIDUMAP_SEARTH_URI:Ljava/lang/String; = "baidumap://map/place/nearby?query=\u5e94\u6025\u907f\u96be\u573a\u6240&src=com.miui.earthquakewarning"

.field private static final EARTHQUAKE_AREA_URI:Landroid/net/Uri;

.field private static final EARTHQUAKE_SUBSCRIBE_URI:Landroid/net/Uri;

.field private static final EARTHQUAKE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "EarthquakeManager"

.field private static volatile instance:Lcom/miui/earthquakewarning/EarthquakeWarningManager;


# instance fields
.field private eventId:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.earthquakewarning.EarthquakeContentProvider2/earthquake"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->EARTHQUAKE_URI:Landroid/net/Uri;

    const-string v0, "content://com.miui.earthquakewarning.EarthquakeContentProvider2/area"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->EARTHQUAKE_AREA_URI:Landroid/net/Uri;

    const-string v0, "content://com.miui.earthquakewarning.EarthquakeContentProvider2/subscribe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->EARTHQUAKE_SUBSCRIBE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->eventId:J

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->showSubscribeNotification(Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getWhiteList(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;Lcom/miui/earthquakewarning/model/SignatureReuslt;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->matchSignature(Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;Lcom/miui/earthquakewarning/model/SignatureReuslt;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getLocationStep(Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/earthquakewarning/EarthquakeWarningManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->eventId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/miui/earthquakewarning/EarthquakeWarningManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->eventId:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->showLowEarthquakeWarning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;ZI)V

    return-void
.end method

.method private buildContentTitle(Landroid/content/Context;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Z)Ljava/lang/String;
    .locals 5

    if-eqz p4, :cond_0

    const p2, 0x7f120748

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "zh_CN"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    const v0, 0x7f1207d2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    new-instance p4, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {p4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/miui/earthquakewarning/model/QuakeItem;->getMagnitude()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v3, v1

    const-string p3, "%.1f"

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    aput-object p3, v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private buildFocusParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "#E6210F0F"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "protocol"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "scene"

    const-string v4, "sos"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "colorDesc"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "colorTitle"

    const-string v3, "#FFFFFF"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "content"

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "colorContent"

    const-string p3, "#CCFFFFFF"

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "colorBg"

    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f08053e

    invoke-static {p1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    const-string p3, "miui.focus.pic_large"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "miui.focus.param"

    invoke-virtual {v1, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "miui.focus.pics"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method private buildSubTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    const-string v1, "en_US"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p6, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    const p3, 0x7f1207d2

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v2

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    new-instance p5, Ljava/text/SimpleDateFormat;

    const-string p6, "HH:mm"

    invoke-direct {p5, p6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    new-array p6, v3, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getMagnitude()F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    aput-object p4, p6, v2

    const-string p4, "%.1f"

    invoke-static {p4, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const p6, 0x7f1207eb

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    aput-object p4, v1, v3

    aput-object p3, v1, v0

    invoke-virtual {p1, p6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const p6, 0x7f120792

    const/4 v1, 0x0

    const v4, 0x7f1207d1

    if-eqz p2, :cond_3

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p3, p2, v2

    invoke-virtual {p1, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result p3

    cmpl-float p3, p3, v1

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p2

    goto :goto_0

    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p5, ""

    :cond_4
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p3, p2, v2

    aput-object p5, p2, v3

    invoke-virtual {p1, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result p3

    cmpl-float p3, p3, v1

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p5, p2, v2

    invoke-virtual {p1, p6, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080562

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;
    .locals 2

    sget-object v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->instance:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->instance:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;-><init>()V

    sput-object v1, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->instance:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->instance:Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    return-object v0
.end method

.method private getLocationStep(Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/earthquakewarning/EarthquakeWarningManager$6;-><init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/utils/LocationUtils;->getAdminAreaLocation2(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;)V

    return-void
.end method

.method private getWhiteList(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 4

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->getAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "EarthquakeManager"

    const-string p2, "no mi account id"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Lcom/miui/earthquakewarning/service/RequestWhiteListTask;

    invoke-direct {v2}, Lcom/miui/earthquakewarning/service/RequestWhiteListTask;-><init>()V

    new-instance v3, Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;

    invoke-direct {v3, p0, p2, p1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager$5;-><init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/miui/earthquakewarning/service/RequestWhiteListTask;->setListener(Lcom/miui/earthquakewarning/service/RequestWhiteListTask$Listener;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const-string p2, "miuisec"

    aput-object p2, p1, v1

    invoke-virtual {v2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getLocationStep(Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private isAll(I)Z
    .locals 1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private matchMyPositionInSupport(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;I)V
    .locals 3

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/miui/earthquakewarning/EarthquakeWarningManager$2;-><init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;ILandroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private matchSignature(Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;Lcom/miui/earthquakewarning/model/SignatureReuslt;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const-string v0, "code"

    new-instance v4, Lcom/miui/earthquakewarning/model/SignatureReuslt;

    invoke-direct {v4}, Lcom/miui/earthquakewarning/model/SignatureReuslt;-><init>()V

    if-eqz p6, :cond_0

    move-object/from16 v4, p6

    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, -0x1

    const-string v7, "EarthquakeManager"

    if-nez v5, :cond_4

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v9, p5

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->setCode(I)V

    const-string v9, "datas"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;

    invoke-direct {v12}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;-><init>()V

    const-string v13, "channel"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->setChannel(Ljava/lang/String;)V

    const-string v13, "data"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_2

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    new-instance v8, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;

    invoke-direct {v8}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;-><init>()V

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->setCode(I)V

    const-string v6, "district"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->setDistrict(Ljava/lang/String;)V

    const-string v6, "signs"

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    move-object/from16 p5, v5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v8, v15}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->setSigns(Ljava/util/List;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p5

    move-object/from16 v0, v16

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    move-object/from16 v16, v0

    move-object/from16 p5, v5

    invoke-virtual {v12, v13}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->setData(Ljava/util/List;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p5

    move-object/from16 v0, v16

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v4, v9}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->setDatas(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v5, "push_error_parse_signature"

    invoke-static {v5}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackPushActionModuleClick(Ljava/lang/String;)V

    const-string v5, "parse json failed :"

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->getCode()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->getDatas()Ljava/util/List;

    move-result-object v0

    const-string v5, "\n"

    const-string v6, ""

    const/4 v8, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->getDatas()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_b

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->getDatas()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;

    invoke-virtual {v7}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->getChannel()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, p2

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->getDatas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->getData()Ljava/util/List;

    move-result-object v0

    move/from16 v4, p3

    move v10, v8

    const/4 v9, 0x0

    :goto_5
    if-ltz v7, :cond_c

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_8

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;

    invoke-virtual {v12}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->getCode()I

    move-result v12

    if-ne v4, v12, :cond_7

    move-object v9, v6

    const/4 v7, 0x0

    :goto_7
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;

    invoke-virtual {v12}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->getSigns()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_6

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;

    invoke-virtual {v12}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->getSigns()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v8

    if-ge v7, v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;

    invoke-virtual {v9}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->getSigns()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;

    invoke-virtual {v9}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->getSigns()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_6
    invoke-virtual {v3, v9}, Lcom/miui/earthquakewarning/model/QuakeItem;->setSignatureText(Ljava/lang/String;)V

    move v9, v8

    const/4 v7, 0x0

    goto :goto_9

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_8
    :goto_9
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    int-to-double v13, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v11, v11

    div-int/2addr v4, v11

    mul-int/2addr v4, v11

    add-int/2addr v10, v8

    const/4 v11, -0x1

    add-int/2addr v7, v11

    goto/16 :goto_5

    :cond_9
    const/4 v11, -0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_a
    const-string v0, "no sign area"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v9, 0x0

    :cond_c
    if-nez v9, :cond_10

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getSignature()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    const/4 v4, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v4, v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual {v3, v6}, Lcom/miui/earthquakewarning/model/QuakeItem;->setSignatureText(Ljava/lang/String;)V

    goto :goto_c

    :cond_f
    iget-object v0, v1, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1207e4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/earthquakewarning/model/QuakeItem;->setSignatureText(Ljava/lang/String;)V

    :cond_10
    :goto_c
    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->matchMyPositionInSupport(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;I)V

    :cond_11
    new-instance v4, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v4, v2, v5, v6}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;-><init>(Landroid/content/Context;ILcom/miui/earthquakewarning/model/SaveAreaResult;)V

    new-instance v5, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;

    invoke-direct {v5, v1, v0, v3, v2}, Lcom/miui/earthquakewarning/EarthquakeWarningManager$1;-><init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;)V

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_12
    return-void
.end method

.method public static parseQuake(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/earthquakewarning/model/UserQuakeItem;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/miui/earthquakewarning/model/UserQuakeItem;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/UserQuakeItem;-><init>()V

    const-string v1, "index"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/model/QuakeItem;->setIndex(I)V

    const-string v1, "magnitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/model/QuakeItem;->setMagnitude(F)V

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/earthquakewarning/model/LocationModel;->setLongitude(D)V

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/earthquakewarning/model/LocationModel;->setLatitude(D)V

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v1

    const-string v2, "epicenter"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/model/LocationModel;->setPlace(Ljava/lang/String;)V

    const-string v1, "depth"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/model/QuakeItem;->setDepth(F)V

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/model/QuakeItem;->setType(I)V

    const-string v1, "startTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/earthquakewarning/model/QuakeItem;->setStartTime(J)V

    const-string v1, "updateTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/earthquakewarning/model/QuakeItem;->setUpdateTime(J)V

    const-string v1, "xmUpdateTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setXmUpdateTime(J)V

    const-string v1, "channel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/model/QuakeItem;->setChannel(Ljava/lang/String;)V

    const-string v1, "eventId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/earthquakewarning/model/QuakeItem;->setEventID(J)V

    const-string v1, "signature"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/model/QuakeItem;->setSignature(Ljava/util/List;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setCityCode(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getReceiveOneMinLater()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "EarthquakeManager"

    const-string p1, "receive error earthquake warning message"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private requestSignature(Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 8

    new-instance v0, Lcom/miui/earthquakewarning/service/RequestSignatureTask;

    invoke-direct {v0, p1}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/miui/earthquakewarning/EarthquakeWarningManager$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager$3;-><init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;)V

    invoke-virtual {v0, v7}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->setListener(Lcom/miui/earthquakewarning/service/RequestSignatureTask$Listener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p1, Lcom/miui/earthquakewarning/service/RequestSupportCityTask;

    invoke-direct {p1}, Lcom/miui/earthquakewarning/service/RequestSupportCityTask;-><init>()V

    new-array p2, p3, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestSignatureBefore(Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 7

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/FileUtils;->getSignatureFromData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->requestSignature(Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->matchSignature(Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;Lcom/miui/earthquakewarning/model/SignatureReuslt;)V

    :goto_0
    return-void
.end method

.method public static showAlarmNotification(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UserQuakeItem"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result p1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private showLowEarthquakeWarning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;ZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    const-class v3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListActivity;

    const-string v4, "com.miui.securitycenter"

    invoke-static {v1, v4}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f080f25

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->buildContentTitle(Landroid/content/Context;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->buildSubTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-direct/range {p0 .. p1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const-string v11, "single"

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v12, -0x1

    const/16 v13, 0x1a

    if-ge v11, v13, :cond_2

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_2
    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Lcom/miui/earthquakewarning/utils/Utils;->supportMap(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_5

    :try_start_0
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.miui.earthquake.detail"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v15, "magnitude"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getMagnitude()F

    move-result v12

    invoke-virtual {v11, v15, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v12, "longitude"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 p5, v14

    :try_start_2
    invoke-virtual {v15}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v13

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v12, "latitude"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v12, "distance"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getDistance()F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v12, "myLongitude"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v13

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v12, "myLatitude"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v12, "intensity"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v12, "epicenter"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/earthquakewarning/model/LocationModel;->getPlace()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "startTime"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v13

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v12, "warnTime"

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCountdown()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "isAll"

    invoke-direct {v0, v2}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->isAll(I)Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p4 .. p4}, Lcom/miui/earthquakewarning/model/QuakeItem;->getSignatureText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const v13, 0x7f120747

    if-nez v12, :cond_4

    :try_start_3
    const-string v12, "null"

    invoke-static {v12, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v7, v14, v8

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-object/from16 v11, p5

    goto :goto_3

    :cond_4
    :goto_0
    :try_start_4
    iget-object v7, v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f1207e4

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v7, v14, v8

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v8, "signature"

    invoke-virtual {v11, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v7, p5

    :try_start_5
    invoke-virtual {v7, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v8, "com.miui.securityadd"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v14, v7

    goto :goto_4

    :catch_1
    move-object/from16 v7, p5

    goto :goto_2

    :catch_2
    move-object v7, v14

    :catch_3
    :goto_2
    move-object v11, v7

    :catch_4
    :goto_3
    const-string v7, "EarthquakeManager"

    const-string v8, "can not find detail page"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v11

    goto :goto_4

    :cond_5
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_4
    if-nez v14, :cond_6

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_6
    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v14, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-direct {v0, v1, v9, v6}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->buildFocusParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3, v10}, Lrg/a;->c(Landroid/app/Notification;Z)V

    const-string v5, "notification"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_7

    const/4 v6, -0x1

    iput v6, v3, Landroid/app/Notification;->defaults:I

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f120f27

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    invoke-static {v5, v4, v1, v6}, Lx4/e1;->b(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v5, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v1, "push_show"

    invoke-static {v1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackAlertResultActionModuleClick(Ljava/lang/String;)V

    return-void
.end method

.method private showSubscribeNotification(Lcom/miui/earthquakewarning/model/UserQuakeItem;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 20

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageDataTask;

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v2, v9}, Lcom/miui/earthquakewarning/service/ManageDataTask;-><init>(Landroid/content/Context;Lcom/miui/earthquakewarning/model/UserQuakeItem;)V

    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v0, 0x3d090

    cmp-long v0, v3, v0

    const/4 v11, 0x4

    const-wide/16 v12, 0x3e8

    const-string v14, "PUSH_MSG_DELAY_SECONDS"

    const/4 v15, 0x3

    const-string v8, "LEVEL_BY_ALGORITHM"

    const/16 v16, 0x2

    const-string v7, "USER_DEFINED_THRESHOLD"

    const/16 v17, 0x1

    const-string v6, "receive"

    if-lez v0, :cond_0

    new-array v0, v11, [Loj/l;

    new-instance v1, Loj/l;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v10

    new-instance v1, Loj/l;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v17

    new-instance v1, Loj/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v14, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v16

    new-instance v1, Loj/l;

    const-string v2, "NO_POPUP_REASON"

    const-string v3, "PUSH_EXPIRED"

    invoke-direct {v1, v2, v3}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v15

    invoke-static {v6, v0}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/LocationModel;->getPlace()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/16 v18, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v19, v6

    move-object v6, v0

    move-object v0, v7

    move/from16 v7, v18

    move-object v11, v8

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->showLowEarthquakeWarning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/model/UserQuakeItem;Ljava/lang/String;ZI)V

    const/4 v1, 0x5

    new-array v1, v1, [Loj/l;

    new-instance v2, Loj/l;

    const-string v3, "USER_SUBSCRIBE_REGION"

    invoke-direct {v2, v3, v4}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v10

    new-instance v2, Loj/l;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v17

    new-instance v0, Loj/l;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getIntensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v1, v16

    new-instance v0, Loj/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/miui/earthquakewarning/model/QuakeItem;->getUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v14, v2}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v1, v15

    new-instance v0, Loj/l;

    const-string v2, "ALERT_STYLE"

    const-string v3, "NOTIFICATION"

    invoke-direct {v0, v2, v3}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    return-void
.end method


# virtual methods
.method public clearEarthquakeMonitorData()V
    .locals 2

    const-string v0, "key_earthquake_warning_monitor_location_lat"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->o(Ljava/lang/String;F)V

    const-string v0, "key_earthquake_warning_monitor_location_lng"

    invoke-static {v0, v1}, Lr4/a;->o(Ljava/lang/String;F)V

    return-void
.end method

.method public clearEarthquakeWarningData(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/FileUtils;->deleteSignature(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->EARTHQUAKE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->EARTHQUAKE_AREA_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->EARTHQUAKE_SUBSCRIBE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public closeEarthquakeWarning()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setEarthquakeWarningOpen(Z)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->unsetTopicForPush(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public closeEarthquakeWarning(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setEarthquakeWarningOpen(Z)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->unsetTopicForPush(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeMonitorOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_exit_earthquakewarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public openEarthquakeWarning(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setEarthquakeWarningOpen(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setGpsStatus(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->getInstance()Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->uploadSettings(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->requestSignature()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public registerForPush(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/push/a;->c()V

    return-void
.end method

.method public requestSignature()V
    .locals 2

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EarthquakeManager"

    const-string v1, "request Signature each day"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/earthquakewarning/service/RequestSignatureTask;

    iget-object v1, p0, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/earthquakewarning/EarthquakeWarningManager$4;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager$4;-><init>(Lcom/miui/earthquakewarning/EarthquakeWarningManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->setListener(Lcom/miui/earthquakewarning/service/RequestSignatureTask$Listener;)V

    const-string v1, "ICL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/miui/earthquakewarning/service/RequestSupportCityTask;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/service/RequestSupportCityTask;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public searchSafePlace(Landroid/content/Context;)V
    .locals 4

    const-string v0, "com.autonavi.minimap"

    invoke-static {p1, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const-string v2, "EarthquakeManager"

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "androidamap://poi?sourceApplication=com.miui.earthquakewarning&keywords=\u5e94\u6025\u907f\u96be\u573a\u6240&dev=0"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start amap error: "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "com.baidu.BaiduMap"

    invoke-static {p1, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "baidumap://map/place/nearby?query=\u5e94\u6025\u907f\u96be\u573a\u6240&src=com.miui.earthquakewarning"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start baidumap error: "

    goto :goto_0

    :cond_1
    const v0, 0x7f1207d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public setTopicForPush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "7bhr4579-a8we-3k79-ec73-45678324bh5c"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/miui/push/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showWarningInfo(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v0

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaDistricCode()I

    move-result v1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p2, 0x0

    if-lez v0, :cond_1

    invoke-static {p2}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousAreaCode(I)V

    invoke-static {p2}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousAreaDistrictCode(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->unsetTopicForPush(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->closeEarthquakeWarning(Landroid/content/Context;)V

    const-string p1, "push_error_not_open"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackPushActionModuleClick(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Loj/l;

    new-instance p3, Loj/l;

    const-string v0, "NO_POPUP_REASON"

    const-string v1, "USER_NOT_OPEN"

    invoke-direct {p3, v0, v1}, Loj/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p1, p2

    const-string p2, "receive"

    invoke-static {p2, p1}, Lcom/miui/earthquakewarning/analytics/NewTracker;->track(Ljava/lang/String;[Loj/l;)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setGpsStatus(Landroid/content/Context;)V

    invoke-static {p2, p3}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->parseQuake(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/earthquakewarning/model/UserQuakeItem;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getType()I

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/miui/earthquakewarning/model/QuakeItem;->getChannel()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, v1, p2}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->requestSignatureBefore(Landroid/content/Context;Ljava/lang/String;ILcom/miui/earthquakewarning/model/UserQuakeItem;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "EarthquakeManager"

    const-string p2, "show failed : push_error_illgal_type"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "push_error_illgal_type"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackPushActionModuleClick(Ljava/lang/String;)V

    return-void
.end method

.method public unsetTopicForPush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "7bhr4579-a8we-3k79-ec73-45678324bh5c"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/earthquakewarning/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/push/a;->b(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/miui/push/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

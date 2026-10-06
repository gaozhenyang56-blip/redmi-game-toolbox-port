.class public Lpg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpg/e;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(IDZ)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "state"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "type"

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "duration"

    invoke-virtual {v1, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "model"

    sget-object p1, Lpg/e;->a:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ext"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "superpower"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(I)V
    .locals 1

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_battery_level_exit_normal"

    invoke-static {v0, p0}, Lpg/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(I)V
    .locals 1

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_battery_level_open_normal"

    invoke-static {v0, p0}, Lpg/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(DZ)V
    .locals 1

    invoke-static {}, Lx4/b1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lpg/e;->a(IDZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "securitycenter_power"

    const-string p2, "mqs_super_power_saving_43081000"

    invoke-static {p1, p0, p2, v0}, Lx4/b1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static f(I)V
    .locals 1

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_battery_level_exit_super"

    invoke-static {v0, p0}, Lpg/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(I)V
    .locals 1

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_battery_level_open_super"

    invoke-static {v0, p0}, Lpg/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "open_way"

    invoke-static {v0, p0}, Lpg/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(DZ)V
    .locals 1

    invoke-static {}, Lx4/b1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lpg/e;->a(IDZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    const-string p2, "securitycenter_power"

    const-string v0, "mqs_super_power_saving_43081000"

    invoke-static {p2, p0, v0, p1}, Lx4/b1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

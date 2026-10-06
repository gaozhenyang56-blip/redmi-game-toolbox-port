.class public Lcom/miui/networkassistant/utils/DataUsageReportUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DAILY_TRAFFIC_DETAIL_EVENT_TYPE:I = 0x6a

.field private static final DAILY_TRAFFIC_DETAIL_EVENT_VERSION:I = 0x1

.field private static final DAILY_TRAFFIC_EVENT_TYPE:I = 0x69

.field private static final DAILY_TRAFFIC_EVENT_VERSION:I = 0x4

.field private static final URL:Ljava/lang/String; = "content://com.miui.monthreport/report_json"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static insertDataUsageData(Landroid/content/Context;ILjava/lang/String;JI)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA-1"

    invoke-static {v1, v2}, Llm/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lsm/a;->d([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkgName"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "eventId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "eventType"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "eventTime"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "version"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.miui.monthreport/report_json"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static uploadDataUsageDaily(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v3

    const/16 v1, 0x69

    const/4 v5, 0x4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/networkassistant/utils/DataUsageReportUtil;->insertDataUsageData(Landroid/content/Context;ILjava/lang/String;JI)V

    return-void
.end method

.method public static uploadDataUsageDetailDaily(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v3

    const/16 v1, 0x6a

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/networkassistant/utils/DataUsageReportUtil;->insertDataUsageData(Landroid/content/Context;ILjava/lang/String;JI)V

    return-void
.end method

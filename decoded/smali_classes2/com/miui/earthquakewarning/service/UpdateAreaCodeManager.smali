.class public Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "UpdateAreaCodeManager"

.field public static final UPLOAD_TOPIC_INTERVAL:J = 0x1499700L

.field private static volatile instance:Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;
    .locals 2

    sget-object v0, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->instance:Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->instance:Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;-><init>()V

    sput-object v1, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->instance:Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

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
    sget-object v0, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->instance:Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

    return-object v0
.end method


# virtual methods
.method public uploadSettings(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager$1;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager$1;-><init>(Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;)V

    invoke-static {p1, v0}, Lcom/miui/earthquakewarning/utils/LocationUtils;->getAdminAreaLocation3(Landroid/content/Context;Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateAreaCodeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

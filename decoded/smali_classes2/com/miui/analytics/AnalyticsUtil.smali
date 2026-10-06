.class public Lcom/miui/analytics/AnalyticsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOCK_PLUGIN_ID:Ljava/lang/String; = "securitycenter_sidebar"

.field private static final TAG:Ljava/lang/String; = "AnalyticsUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initMiStats(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/analytics/StatManager;->initSdk(Landroid/content/Context;)V

    invoke-static {}, Lx4/l1;->b()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/analytics/AnalyticsUtil;->setDataUploadingEnabled(Z)V

    return-void
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordGameTurboEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/analytics/AnalyticsUtil;->trackGameTurboEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static recordPageEnd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static recordPageStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDataUploadingEnabled(Z)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "upload_log_pref"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/analytics/StatManager;->setAccessNetworkEnable(Z)V

    return-void
.end method

.method public static trackAppManEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/analytics/StatManager;->trackAppMan(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackConversationToolBoxEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    const-string v1, "conversation_tool_box"

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static trackDockEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    const-string v1, "securitycenter_sidebar"

    const-string v2, "dock"

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/miui/analytics/StatManager;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/analytics/AnalyticsUtil;->trackEventByOneTrack(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/analytics/AnalyticsUtil;->trackEventByOneTrack(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static trackEventByOneTrack(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static trackEventByOneTrack(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEventV2(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/analytics/StatManager;->trackV2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    const-string v1, "gamebox"

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static trackGameTurboEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    const-string v1, "gameturbo"

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static trackImeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p0, v0, p2}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static trackImeEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static trackNetworkAssistantEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    const-string v1, "network_assistant"

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static trackStorageEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data_version"

    const-string v1, "1.2"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STORAGE_TRACE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackXSOFEvents(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    const-string v1, "xiaomi_safety_open_service"

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static triggerUpload()V
    .locals 0

    return-void
.end method

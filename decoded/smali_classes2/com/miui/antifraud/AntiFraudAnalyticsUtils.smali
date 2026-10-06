.class public Lcom/miui/antifraud/AntiFraudAnalyticsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antifraud/AntiFraudAnalyticsUtils$ScenarioType;
    }
.end annotation


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    const-string v0, "dialog_click"

    invoke-static {v0}, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 1

    const-string v0, "dialog_exposure"

    invoke-static {v0}, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "sms_click_suspicious_link"

    goto :goto_0

    :cond_1
    const-string v0, "fraud_call"

    goto :goto_0

    :cond_2
    const-string v0, "unknown_call"

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const-string v1, "antifraud"

    invoke-static {v1, p0}, Lcom/miui/analytics/AnalyticsUtil;->createEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "scenario"

    invoke-static {p0, v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(I)V
    .locals 0

    sput p0, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->a:I

    const-string p0, "strategy_execution"

    invoke-static {p0}, Lcom/miui/antifraud/AntiFraudAnalyticsUtils;->c(Ljava/lang/String;)V

    return-void
.end method

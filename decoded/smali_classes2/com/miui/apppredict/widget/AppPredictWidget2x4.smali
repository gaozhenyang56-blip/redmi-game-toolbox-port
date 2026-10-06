.class public Lcom/miui/apppredict/widget/AppPredictWidget2x4;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lp3/i;->q(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lp3/c;->d(Landroid/content/Context;)Lp3/c;

    move-result-object p1

    const-string v0, "label_app_predict"

    invoke-virtual {p1, v0}, Lp3/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    invoke-static {}, Lef/x;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lp3/c;->d(Landroid/content/Context;)Lp3/c;

    move-result-object p1

    const-string v0, "label_app_predict"

    invoke-virtual {p1, v0}, Lp3/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.miui.action.UPDATE_PREDICT_LIST"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/widget/AppPredictWidget2x4;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "miui.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ai_widget_show"

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-direct {p0, p1}, Lcom/miui/apppredict/widget/AppPredictWidget2x4;->a(Landroid/content/Context;)V

    return-void
.end method

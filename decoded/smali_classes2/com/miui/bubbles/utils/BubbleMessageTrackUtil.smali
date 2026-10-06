.class public Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field private static final BUBBLE_MESSAGE_APP_SWITCH_CHANGED_TIP:Ljava/lang/String; = "621.5.3.1.21761"

.field private static final BUBBLE_MESSAGE_CLICK_TIP_FREEFORM:Ljava/lang/String; = "621.1.3.1.21755"

.field private static final BUBBLE_MESSAGE_CLICK_TIP_MINI:Ljava/lang/String; = "621.2.2.1.21756"

.field private static final BUBBLE_MESSAGE_COLLAPSED_TIP_FREEFORM:Ljava/lang/String; = "621.1.3.1.21757"

.field private static final BUBBLE_MESSAGE_COLLAPSED_TIP_MINI:Ljava/lang/String; = "621.2.2.1.21758"

.field private static final BUBBLE_MESSAGE_DAILY_TRACK_TIP:Ljava/lang/String; = "621.5.1.1.21759"

.field private static final BUBBLE_MESSAGE_ENTER_FREEFORM_TIP:Ljava/lang/String; = "621.1.0.1.14010"

.field private static final BUBBLE_MESSAGE_EXPOSURE_TIP_FREEFORM:Ljava/lang/String; = "621.1.3.1.21753"

.field private static final BUBBLE_MESSAGE_EXPOSURE_TIP_MINI:Ljava/lang/String; = "621.2.2.1.21754"

.field private static final BUBBLE_MESSAGE_SWITCH_CHANGED_TIP:Ljava/lang/String; = "621.5.2.1.21760"

.field private static final DOCK_PLUGIN_ID:Ljava/lang/String; = "securitycenter_sidebar"

.field private static final KEY_BUBBLE_MESSAGE_APP_SWITCH_CHANGED:Ljava/lang/String; = "set"

.field private static final KEY_BUBBLE_MESSAGE_CLICK:Ljava/lang/String; = "hide_window_notification_click"

.field private static final KEY_BUBBLE_MESSAGE_COLLAPSED:Ljava/lang/String; = "hide_window_notification_retract"

.field private static final KEY_BUBBLE_MESSAGE_DAILY_TRACK:Ljava/lang/String; = "notification_switch_status"

.field private static final KEY_BUBBLE_MESSAGE_ENTER_FREEFORM:Ljava/lang/String; = "enter"

.field private static final KEY_BUBBLE_MESSAGE_EXPOSURE:Ljava/lang/String; = "hide_window_notification_expose"

.field private static final KEY_BUBBLE_MESSAGE_SWITCH_CHANGED:Ljava/lang/String; = "set"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->lambda$trackBubbleMessageClick$1(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->lambda$trackDaily$4()V

    return-void
.end method

.method public static synthetic c(Z)V
    .locals 0

    invoke-static {p0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->lambda$trackBubbleSwitchChanged$5(Z)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->lambda$trackEnterFreeform$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/bubbles/Bubble;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->lambda$trackBubbleMessageCollapsed$3(Lcom/miui/bubbles/Bubble;Z)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->lambda$trackBubbleAppSwitchChanged$6(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/miui/bubbles/data/FreeformMode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->lambda$trackBubbleMessageExposure$0(Ljava/lang/String;Lcom/miui/bubbles/data/FreeformMode;)V

    return-void
.end method

.method private static getTrackString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/common/e;->b()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$trackBubbleAppSwitchChanged$6(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_package_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget p0, Lcom/miui/bubbles/R$string;->track_switch_on:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/miui/bubbles/R$string;->track_switch_off:I

    :goto_0
    invoke-static {p0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->getTrackString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "after_set_status"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "set"

    const-string p1, "621.5.3.1.21761"

    invoke-static {p0, p1, v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$trackBubbleMessageClick$1(Lcom/miui/bubbles/Bubble;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_package_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    sget-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne p0, v1, :cond_0

    const-string p0, "621.1.3.1.21755"

    goto :goto_0

    :cond_0
    const-string p0, "621.2.2.1.21756"

    :goto_0
    const-string v1, "hide_window_notification_click"

    invoke-static {v1, p0, v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$trackBubbleMessageCollapsed$3(Lcom/miui/bubbles/Bubble;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_package_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget p1, Lcom/miui/bubbles/R$string;->track_auto_collapsed:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/bubbles/R$string;->track_manual_collapsed:I

    :goto_0
    invoke-static {p1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->getTrackString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "retract_way"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    sget-object p1, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne p0, p1, :cond_1

    const-string p0, "621.1.3.1.21757"

    goto :goto_1

    :cond_1
    const-string p0, "621.2.2.1.21758"

    :goto_1
    const-string p1, "hide_window_notification_retract"

    invoke-static {p1, p0, v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$trackBubbleMessageExposure$0(Ljava/lang/String;Lcom/miui/bubbles/data/FreeformMode;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_package_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne p1, p0, :cond_0

    const-string p0, "621.1.3.1.21753"

    goto :goto_0

    :cond_0
    const-string p0, "621.2.2.1.21754"

    :goto_0
    const-string p1, "hide_window_notification_expose"

    invoke-static {p1, p0, v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$trackBubbleSwitchChanged$5(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_0

    sget p0, Lcom/miui/bubbles/R$string;->track_switch_on:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/miui/bubbles/R$string;->track_switch_off:I

    :goto_0
    invoke-static {p0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->getTrackString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "after_set_status"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "set"

    const-string v1, "621.5.2.1.21760"

    invoke-static {p0, v1, v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$trackDaily$4()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/bubbles/settings/BubblesSettings;->isBubbleNotificationSwitchOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/miui/bubbles/R$string;->track_yes:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/miui/bubbles/R$string;->track_no:I

    :goto_0
    invoke-static {v1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->getTrackString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "if_open_notification_switch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstalledBubbleApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/bubbles/settings/BubbleApp;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lcom/miui/bubbles/settings/BubbleApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_package_name"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/miui/bubbles/settings/BubbleApp;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "if_open_app_notification_switch"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v1, "app_notification_switch_status"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "notification_switch_status"

    const-string v2, "621.5.1.1.21759"

    invoke-static {v1, v2, v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$trackEnterFreeform$2(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_package_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/miui/bubbles/R$string;->track_click_bubble_message:I

    invoke-static {p0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->getTrackString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "small_window_enter_way"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "enter"

    const-string v1, "621.1.0.1.14010"

    invoke-static {p0, v1, v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackBubbleAppSwitchChanged(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/bubbles/utils/f;

    invoke-direct {v1, p0, p1}, Lcom/miui/bubbles/utils/f;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackBubbleMessageClick(Lcom/miui/bubbles/Bubble;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/bubbles/utils/a;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/utils/a;-><init>(Lcom/miui/bubbles/Bubble;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackBubbleMessageCollapsed(Lcom/miui/bubbles/Bubble;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/bubbles/utils/e;

    invoke-direct {v1, p0, p1}, Lcom/miui/bubbles/utils/e;-><init>(Lcom/miui/bubbles/Bubble;Z)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static trackBubbleMessageEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tip"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_0

    const-string p1, "pad"

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/bubbles/R$string;->track_phone:I

    invoke-static {p1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->getTrackString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "model_type"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lx4/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/miui/bubbles/R$string;->track_screen_horizontal:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/miui/bubbles/R$string;->track_screen_vertical:I

    :goto_1
    invoke-static {v0}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->getTrackString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_orientation"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx4/g;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lx4/g;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/miui/bubbles/R$string;->track_outer_screen:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/miui/bubbles/R$string;->track_inner_screen:I

    :goto_2
    invoke-static {p1}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->getTrackString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    const-string p1, "nothing"

    :goto_3
    const-string v0, "screen_type"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x150ca5c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "data_version"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackDockEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackBubbleMessageExposure(Lcom/miui/bubbles/data/FreeformMode;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/bubbles/utils/c;

    invoke-direct {v1, p1, p0}, Lcom/miui/bubbles/utils/c;-><init>(Ljava/lang/String;Lcom/miui/bubbles/data/FreeformMode;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackBubbleSwitchChanged(Z)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/bubbles/utils/g;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/utils/g;-><init>(Z)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackDaily()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/bubbles/utils/b;

    invoke-direct {v1}, Lcom/miui/bubbles/utils/b;-><init>()V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static trackDockEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object v0

    const-string v1, "securitycenter_sidebar"

    const-string v2, "dock"

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/miui/analytics/StatManager;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trackEnterFreeform(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/bubbles/utils/d;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/utils/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.class public Lcom/miui/networkassistant/zman/ZmanShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final ACTION_IMAGE_SHARED:Ljava/lang/String; = "com.miui.zman.intent.action.SHARED"

.field private static final ACTION_SETTINGS_CHANGE:Ljava/lang/String; = "com.miui.zman.intent.action.VIEW_CHANGE"

.field private static final ACTION_SETTINGS_SHOW:Ljava/lang/String; = "com.miui.zman.intent.action.VIEW_SHOW"

.field private static final IS_MULTI_IMAGE:Ljava/lang/String; = "is_multi_image"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static doReceiveEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.miui.zman.intent.action.VIEW_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "com.miui.zman.intent.action.SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.miui.zman.intent.action.VIEW_SHOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p0, p1}, Lcom/miui/networkassistant/zman/ZmanShareReceiver;->handleOnceSettingsChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p0, p1}, Lcom/miui/networkassistant/zman/ZmanShareReceiver;->handleImageSharedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p0, p1}, Lcom/miui/networkassistant/zman/ZmanShareReceiver;->handleViewShow(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b384acc -> :sswitch_2
        0x100398a8 -> :sswitch_1
        0x665b3827 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleImageSharedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "is_multi_image"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "param_image_have_location"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "param_image_have_camera"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "param_src_packagename"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v2, v1}, Lcom/miui/networkassistant/zman/ZmanHelper;->trackSecuritySharedImagesEvent(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v2, v1}, Lcom/miui/networkassistant/zman/ZmanHelper;->trackSecuritySharedImageEvent(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method private static handleOnceSettingsChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "param_src_packagename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/zman/ZmanHelper;->trackOnceSettingsChangeEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static handleViewShow(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "param_src_packagename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "view_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, v0}, Lcom/miui/networkassistant/zman/ZmanHelper;->trackViewShowEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/networkassistant/zman/ZmanShareReceiver;->doReceiveEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.class public Lcom/miui/networkassistant/xman/XmanShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final ACTION_SHARED:Ljava/lang/String; = "com.miui.securitycenter.intent.action.SHARED"

.field private static final ACTION_XMAN_SETTINGS:Ljava/lang/String; = "com.miui.securitycenter.intent.action.XMAN.SECURITY_SHARE_SETTINGS_SHOW"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.miui.securitycenter.intent.action.XMAN.SECURITY_SHARE_SETTINGS_SHOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    if-nez v0, :cond_2

    const-string v0, "com.miui.securitycenter.intent.action.SHARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/xman/XmanHelper;->trackXmanSharedEvent(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/xman/XmanHelper;->trackXmanSettingsEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

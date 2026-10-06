.class Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->onTrafficManageServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->onPhoneNumberLoaded(Ljava/lang/String;)V

    return-void
.end method

.method private onPhoneNumberLoaded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setPhoneNumber(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->initCardStuff()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$1500(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$1600(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->access$1800(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I

    move-result v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/j0;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/fragment/j0;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;)V

    :cond_0
    return-void
.end method

.class Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initLocation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iput p3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->onPhoneNumberLoaded(Ljava/lang/String;)V

    return-void
.end method

.method private onPhoneNumberLoaded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1000(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/SettingFragment;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/SettingFragment;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1500(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1600(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/miui/networkassistant/ui/fragment/h0;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/fragment/h0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;)V

    invoke-static {v1, v2, v3, v4}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Ljava/lang/String;I)V

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;->val$slotNum:I

    invoke-static {v1, v0, v2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Ljava/lang/String;I)V

    return-void
.end method

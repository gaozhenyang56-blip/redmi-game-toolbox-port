.class Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 1

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingDailyLimitTraffic(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Z)Z

    return-void
.end method

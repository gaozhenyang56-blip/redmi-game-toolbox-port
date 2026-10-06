.class Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 1

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringLimitTraffic(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$402(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;Z)Z

    return-void
.end method

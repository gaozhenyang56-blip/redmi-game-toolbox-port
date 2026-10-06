.class Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->onSelectTrafficDailyLimitValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 1

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I

    move-result v0

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setCustomizeDailyLimitWarning(J)Z

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p3, p1, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;J)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$402(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p3}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;

    move-result-object p3

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I

    move-result p2

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    iget p3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->val$which:I

    invoke-static {p2, p3}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficLimitValue(I)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->access$1002(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;Z)Z

    return-void
.end method

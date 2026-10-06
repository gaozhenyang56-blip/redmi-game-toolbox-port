.class Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->checkAndApplyStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getStatus()Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$9;->$SwitchMap$com$miui$networkassistant$service$TcSmsReportService$SmsReportStatus:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    const/16 v4, 0x8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReceiveNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReturned()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f12196e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->SmsSendFailure:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    if-ne v0, v2, :cond_1

    const v0, 0x7f121972

    goto :goto_0

    :cond_1
    const v0, 0x7f121974

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReceiveNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReturned()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f121973

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReceiveNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f121978

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12196c

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

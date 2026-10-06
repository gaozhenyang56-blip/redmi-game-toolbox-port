.class Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmsReceived()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121975

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSmsSentFailure()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7$2;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method public onTimeOut()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7$1;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

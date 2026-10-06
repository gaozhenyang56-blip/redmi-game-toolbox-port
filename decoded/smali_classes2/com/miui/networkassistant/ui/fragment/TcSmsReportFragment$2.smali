.class Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f121989

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_2

    :sswitch_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f121982

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v3, 0x7f121983

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f12196a

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :sswitch_4
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    goto/16 :goto_2

    :sswitch_5
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v1, 0x7f12196c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->reset()V

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    goto/16 :goto_2

    :sswitch_6
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v1, 0x7f121988

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1600(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->startMonitorSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackEmptySmsReport()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1800(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121aad

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1900(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    goto :goto_2

    :sswitch_7
    new-instance p1, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v1, 0x7f121986

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f121985

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_7
        0x7f0b01e2 -> :sswitch_6
        0x7f0b01e3 -> :sswitch_5
        0x7f0b01e8 -> :sswitch_4
        0x7f0b069c -> :sswitch_3
        0x7f0b069d -> :sswitch_2
        0x7f0b069e -> :sswitch_1
        0x7f0b06a5 -> :sswitch_0
    .end sparse-switch
.end method

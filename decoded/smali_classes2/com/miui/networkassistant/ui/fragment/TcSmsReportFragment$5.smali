.class Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;


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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextSetted(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.class Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$002(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$102(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$400(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$300(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$500(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$000(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    return-void
.end method

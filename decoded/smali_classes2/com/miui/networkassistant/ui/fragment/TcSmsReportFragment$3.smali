.class Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->tcSmsReportDeclare()V
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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$2600(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    invoke-static {}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackSmsReport()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTcSmsReport(I)V

    :cond_0
    return-void
.end method

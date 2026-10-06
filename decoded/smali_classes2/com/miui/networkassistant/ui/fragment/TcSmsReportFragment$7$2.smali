.class Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7$2;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->onSmsSentFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7$2;->this$1:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7$2;->this$1:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->access$3600(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f12197d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12197c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

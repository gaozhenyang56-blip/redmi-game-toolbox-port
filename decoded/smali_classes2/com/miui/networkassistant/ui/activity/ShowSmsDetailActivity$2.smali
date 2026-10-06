.class Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->smsReportDeclare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12198b    # 1.9419991E38f

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->access$400(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->access$500(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)I

    move-result p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTcSmsDetailReport(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

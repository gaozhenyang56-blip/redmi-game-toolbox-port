.class Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/policeassist/PaSettingActivity;->showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

.field final synthetic val$btn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;JJLandroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iput-object p6, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;->val$btn:Landroid/widget/Button;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;->val$btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1214b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;->val$btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$7;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const p1, 0x7f1214b6

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

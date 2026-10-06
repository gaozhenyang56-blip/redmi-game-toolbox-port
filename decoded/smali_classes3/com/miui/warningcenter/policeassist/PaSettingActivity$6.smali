.class Lcom/miui/warningcenter/policeassist/PaSettingActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$6;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$6;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->access$700(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$6;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-static {p1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->access$700(Lcom/miui/warningcenter/policeassist/PaSettingActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$6;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->access$702(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

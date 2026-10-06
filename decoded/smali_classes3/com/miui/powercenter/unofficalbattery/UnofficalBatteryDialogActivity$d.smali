.class Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field final synthetic b:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->b:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    invoke-static {p1}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->d0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->a:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->b:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1215ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->b:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-static {v0}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->d0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->b:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->f0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;I)I

    iget-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->a:Landroid/widget/Button;

    iget-object p2, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->b:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100103

    iget-object v2, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->b:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-static {v2}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->e0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity$d;->b:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;

    invoke-static {v4}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;->e0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryDialogActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

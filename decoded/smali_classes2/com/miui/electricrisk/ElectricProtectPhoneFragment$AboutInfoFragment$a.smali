.class Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;JJLandroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;

    iput-object p6, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->a:Landroid/widget/Button;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;

    const v2, 0x7f1200dd

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 7

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment$a;->b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$AboutInfoFragment;

    const v2, 0x7f1200de

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    div-long/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.class Lcom/miui/powercenter/batteryhistory/d0$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0$q;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/d0$q;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0$q;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->a:Landroid/content/Intent;

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->a:Landroid/content/Intent;

    const-string v4, "scale"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    const/16 v4, 0x64

    mul-int/2addr v1, v4

    div-int/2addr v1, v2

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->a:Landroid/content/Intent;

    invoke-static {v2}, Lme/w;->M(Landroid/content/Intent;)Z

    move-result v2

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v5}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v5

    if-ne v1, v5, :cond_0

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v5}, Lcom/miui/powercenter/batteryhistory/d0$q;->c(Lcom/miui/powercenter/batteryhistory/d0$q;)Z

    move-result v5

    if-ne v2, v5, :cond_0

    if-nez v1, :cond_c

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v5}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v5

    if-nez v5, :cond_c

    :cond_0
    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v5}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v5

    if-ne v1, v5, :cond_1

    if-nez v1, :cond_2

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v5}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v5, v5, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v5}, Lcom/miui/powercenter/batteryhistory/d0;->J(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/mainui/MainBatteryView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/miui/powercenter/mainui/MainBatteryView;->setCurrentValue(I)V

    :cond_2
    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v5, v5, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v5}, Lcom/miui/powercenter/batteryhistory/d0;->J(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/mainui/MainBatteryView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/miui/powercenter/mainui/MainBatteryView;->setChargingStatus(Z)V

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v5, v1}, Lcom/miui/powercenter/batteryhistory/d0$q;->b(Lcom/miui/powercenter/batteryhistory/d0$q;I)I

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/d0;->K()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v5}, Lcom/miui/powercenter/batteryhistory/d0$q;->c(Lcom/miui/powercenter/batteryhistory/d0$q;)Z

    move-result v5

    if-eq v5, v2, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    iget-object v7, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v7}, Lcom/miui/powercenter/batteryhistory/d0$q;->c(Lcom/miui/powercenter/batteryhistory/d0$q;)Z

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v2, :cond_4

    if-nez v2, :cond_4

    iget-object v7, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v7, v7, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v7}, Lcom/miui/powercenter/batteryhistory/d0;->i(Lcom/miui/powercenter/batteryhistory/d0;)Lmiuix/miuixbasewidget/widget/MessageView;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v7, v7, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v7}, Lcom/miui/powercenter/batteryhistory/d0;->i(Lcom/miui/powercenter/batteryhistory/d0;)Lmiuix/miuixbasewidget/widget/MessageView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v7, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v7, v2}, Lcom/miui/powercenter/batteryhistory/d0$q;->d(Lcom/miui/powercenter/batteryhistory/d0$q;Z)Z

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->k(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v7, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v7, v7, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v7}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v7

    const v9, 0x7f121221

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v10}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v10

    invoke-static {v10}, Lme/e0;->c(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0$q;->c(Lcom/miui/powercenter/batteryhistory/d0$q;)Z

    move-result v2

    const v7, 0x7f12121a

    const/16 v9, 0x3e9

    const-string v10, " | "

    if-eqz v2, :cond_8

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->l(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->l(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->l(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1, v3}, Lcom/miui/powercenter/batteryhistory/d0;->s(Lcom/miui/powercenter/batteryhistory/d0;Z)Z

    :cond_5
    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->m(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v1

    if-lt v1, v4, :cond_7

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/d0;->K()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->m(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->n(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->n(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-virtual {v1}, Lcom/miui/powercenter/batteryhistory/d0;->m0()V

    goto/16 :goto_3

    :cond_7
    new-instance v1, Lcom/miui/powercenter/batteryhistory/d0$p;

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->g(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerSaveMainFragment;

    move-result-object v12

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0$q;->c(Lcom/miui/powercenter/batteryhistory/d0$q;)Z

    move-result v13

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v14

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v15, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/miui/powercenter/batteryhistory/d0$p;-><init>(Lcom/miui/powercenter/PowerSaveMainFragment;ZILcom/miui/powercenter/batteryhistory/d0;Lcom/miui/powercenter/batteryhistory/d0$g;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->n(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v3, v3, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v3

    const v4, 0x7f121218

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    if-nez v5, :cond_9

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2, v1}, Lcom/miui/powercenter/batteryhistory/d0;->I(Lcom/miui/powercenter/batteryhistory/d0;I)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/miui/powercenter/batteryhistory/d0;->K()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v2

    const v3, 0x7f12121c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_a
    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v3, v3, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/d0;->n(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->m(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12102c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/powercenter/batteryhistory/d0;->o(Lcom/miui/powercenter/batteryhistory/d0;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2, v1}, Lcom/miui/powercenter/batteryhistory/d0;->H(Lcom/miui/powercenter/batteryhistory/d0;I)V

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->l(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->l(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    :goto_3
    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->g(Landroid/content/Context;)I

    move-result v1

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v3

    invoke-static {v2, v1, v3, v6}, Lcom/miui/powercenter/batteryhistory/d0;->p(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v3, v3, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/d0;->q(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v2, v2, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v2}, Lcom/miui/powercenter/batteryhistory/d0;->r(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v3, v3, Lcom/miui/powercenter/batteryhistory/d0$q;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v3}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/d0$q$a;->c:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v4}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/miui/powercenter/batteryhistory/d0;->V(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

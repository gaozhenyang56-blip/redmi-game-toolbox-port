.class public Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    return-void
.end method

.method private i0(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "xunyou_alert_dialog_overdue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "xunyou_alert_dialog_expired"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "xunyou_alert_dialog_overdue_gift"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 p1, 0x3

    return p1

    :pswitch_0
    return v1

    :pswitch_1
    const/4 p1, 0x4

    return p1

    :pswitch_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6422a7ee -> :sswitch_2
        0x1e3152a2 -> :sswitch_1
        0x2b2ed41d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setEnableDialogImmersive(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected f0()V
    .locals 10

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "alertType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->i0(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/gamebooster/model/b0;->g(I)Lcom/miui/gamebooster/model/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "xunyou_alert_dialog_overdue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "xunyou_alert_dialog_expired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "voice_changer_permission_dialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "xunyou_alert_dialog_overdue_gift"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    const v1, 0x7f120499

    const-string v2, "time"

    const-string v6, "show"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/c0;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120e8f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/c0;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120e90

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/c0;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/c0;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120980

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->g:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/miui/gamebooster/utils/a;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1
    invoke-static {}, La8/y0;->i()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_9

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "expired"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120989

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100037

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v3

    invoke-virtual {v7, v8, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f120988

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v5, v3, v4, v0}, La8/l1;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v6, v2}, Lcom/miui/gamebooster/utils/a;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b01

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120af7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120af6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->g:Ljava/lang/String;

    goto :goto_9

    :pswitch_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/c0;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120908

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    iput-object v3, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/c0;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120909

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    iput-object v3, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/c0;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/c0;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120981

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->g:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/miui/gamebooster/utils/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_e

    :cond_d
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6422a7ee -> :sswitch_3
        -0x38c18352 -> :sswitch_2
        0x1e3152a2 -> :sswitch_1
        0x2b2ed41d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lx4/d1;->a(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/4 p1, -0x2

    const/4 v0, 0x3

    const-string v1, "xunyou_alert_dialog_overdue"

    const/4 v2, 0x2

    const-string v3, "xunyou_alert_dialog_expired"

    const-string v4, "xunyou_alert_dialog_overdue_gift"

    const-string v5, "voice_changer_permission_dialog"

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "show"

    if-eq p2, p1, :cond_5

    if-eq p2, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move v0, v6

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v8

    :cond_4
    :goto_1
    const-string p1, "cancle"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v9, p1}, Lcom/miui/gamebooster/utils/a;->x(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x18

    goto :goto_2

    :pswitch_1
    invoke-static {v9, p1}, Lcom/miui/gamebooster/utils/a;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x17

    goto :goto_2

    :pswitch_2
    invoke-static {v7}, La8/j2;->o(Z)V

    goto :goto_2

    :pswitch_3
    invoke-static {v9, p1}, Lcom/miui/gamebooster/utils/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x16

    :goto_2
    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->h:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.gamebooster.action.MI_PUSH_GAMEBOOSTER_HOT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "param_xunyou_net_channel"

    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v7}, La8/k0;->w(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/xunyou/XunyouAlertActivity;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_1

    :goto_3
    move v0, v6

    goto :goto_4

    :sswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :sswitch_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :sswitch_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v7

    goto :goto_4

    :sswitch_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v0, v8

    :cond_9
    :goto_4
    const-string p1, "renew_now"

    packed-switch v0, :pswitch_data_1

    goto :goto_5

    :pswitch_4
    invoke-static {v9, p1}, Lcom/miui/gamebooster/utils/a;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_5
    invoke-static {v9, p1}, Lcom/miui/gamebooster/utils/a;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_6
    invoke-static {v8}, La8/j2;->o(Z)V

    goto :goto_5

    :pswitch_7
    const-string p1, "open_now"

    invoke-static {v9, p1}, Lcom/miui/gamebooster/utils/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6422a7ee -> :sswitch_3
        -0x38c18352 -> :sswitch_2
        0x1e3152a2 -> :sswitch_1
        0x2b2ed41d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6422a7ee -> :sswitch_7
        -0x38c18352 -> :sswitch_6
        0x1e3152a2 -> :sswitch_5
        0x2b2ed41d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/base/AlertActivity;->onDestroy()V

    invoke-static {p0}, La8/d1;->a(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/miui/gamebooster/ui/GameBoxAlertActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->h:I

    new-instance v0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/GameBoxAlertActivity$a;-><init>(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->h:I

    return p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)I
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->h:I

    return v0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->j:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/GameBoxAlertActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->i:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120499

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120f48

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setEnableDialogImmersive(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GameBoosterReflectUtils"

    const-string v1, "setAlertParams"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected f0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_gamebox_function_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_gamebox_booster_pkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: alertType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoxAlertActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "intent_gamebox_func_type_immersion_back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "dialog_type_gtb_smart_five_g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "intent_gamebox_func_type_hangup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "intent_videobox_func_type_milink_hangup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "intent_gamebox_func_type_immersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "intent_gamebox_func_type_milink_hangup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "intent_videobox_func_type_hangup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    const v0, 0x7f1209ac

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200e1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120bc4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120bc3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209ab

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121b89

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200e4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209ae

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->g:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200e3

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121b88

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->g:Ljava/lang/String;

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78c2b0bd -> :sswitch_6
        -0x5ec29add -> :sswitch_5
        -0x54ea55c8 -> :sswitch_4
        -0x21021a20 -> :sswitch_3
        0x1632560 -> :sswitch_2
        0x874aae8 -> :sswitch_1
        0x76dcb68e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->j:Landroid/widget/Button;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->k:Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->d:Ljava/lang/String;

    const-string v0, "dialog_type_gtb_smart_five_g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->j:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const v0, 0x7f120bba

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->j:Landroid/widget/Button;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->k:Landroid/widget/Button;

    const v0, 0x7f120bb9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->d:Ljava/lang/String;

    const-string v0, "intent_gamebox_func_type_immersion_back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->j:Landroid/widget/Button;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209b7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->l:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string p1, "dialog_type_gtb_smart_five_g"

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-eq p2, v1, :cond_8

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "intent_gamebox_func_type_immersion_back"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string p1, "intent_gamebox_func_type_hangup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string p1, "intent_videobox_func_type_milink_hangup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string p1, "intent_gamebox_func_type_immersion"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string p1, "intent_gamebox_func_type_milink_hangup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v4

    goto :goto_0

    :sswitch_6
    const-string p1, "intent_videobox_func_type_hangup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v0

    :goto_0
    const-string p1, "SCREEN_PROJECT_HANG_UP"

    const-string p2, "android.provider.MiuiSettings$Secure"

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p0, v0}, La8/l0;->k(Landroid/content/Context;Z)V

    goto :goto_2

    :pswitch_1
    invoke-static {v4}, Lp6/b;->h(Z)V

    goto :goto_2

    :pswitch_2
    const-string p1, "key_gamebooster_hangup_ok"

    invoke-static {p1, v4}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/l0;->m(Landroid/content/Context;)V

    goto :goto_2

    :pswitch_3
    const-string v0, "key_videobox_milink_hangup_ok"

    invoke-static {v0, v4}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-static {v4}, Li8/c;->n0(Z)V

    goto :goto_1

    :pswitch_4
    const-string p1, "key_gamebooster_immersion_ok"

    invoke-static {p1, v4}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-static {p0, v4}, La8/l0;->k(Landroid/content/Context;Z)V

    goto :goto_2

    :pswitch_5
    const-string v0, "key_gamebooster_milink_hangup_ok"

    invoke-static {v0, v4}, Lr4/a;->n(Ljava/lang/String;Z)V

    :goto_1
    invoke-static {p2, p1}, La8/c0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v4, v1}, La8/c0;->i(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    goto :goto_2

    :pswitch_6
    invoke-static {v4}, Li8/c;->l0(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lj8/i;->c(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0}, Lp6/b;->h(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->d0()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78c2b0bd -> :sswitch_6
        -0x5ec29add -> :sswitch_5
        -0x54ea55c8 -> :sswitch_4
        -0x21021a20 -> :sswitch_3
        0x1632560 -> :sswitch_2
        0x874aae8 -> :sswitch_1
        0x76dcb68e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->d:Ljava/lang/String;

    const-string v1, "intent_gamebox_func_type_immersion_back"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoxAlertActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {p0}, La8/d1;->a(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/miui/gamebooster/ui/WelcomActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/WelcomActivity$b;
    }
.end annotation


# instance fields
.field private c:Lmiui/security/SecurityManager;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    const v0, 0x7f130021

    iput v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->g:Z

    const/16 v0, 0x15

    iput v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->h:I

    return-void
.end method

.method public static synthetic f0(Lcom/miui/gamebooster/ui/WelcomActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->l0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/WelcomActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->h0()V

    return-void
.end method

.method private h0()V
    .locals 3

    invoke-static {p0}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->c:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lc3/f;->d(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->c:Lmiui/security/SecurityManager;

    invoke-static {v0, v1}, Lc3/f;->D0(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lc3/w;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, La8/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->e:Ljava/lang/String;

    iget v1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->h:I

    invoke-static {p0, v0, v1}, La8/o;->d(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lw8/k;->s()Lw8/k;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->h:I

    invoke-virtual {v0, v1}, Lw8/k;->x(I)V

    invoke-static {}, Lw8/k;->s()Lw8/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->d:Z

    invoke-virtual {v0, v1, v2}, Lw8/k;->r(Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private i0()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "gamebooster_entrance"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noti_enter_gameadd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "click"

    if-eqz v1, :cond_0

    const-string v0, "noti_gameadd"

    invoke-static {v0, v2}, Lcom/miui/gamebooster/utils/a;->y(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2712

    :goto_0
    invoke-static {v0}, La8/l1;->a(I)Lof/i$d;

    move-result-object v0

    invoke-static {p0, v0}, Lof/i;->l(Landroid/content/Context;Lof/i$d;)V

    goto :goto_1

    :cond_0
    const-string v1, "noti_gameopen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Lcom/miui/gamebooster/utils/a;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "noti_enter_sign"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "noti_sign"

    invoke-static {v0, v2}, Lcom/miui/gamebooster/utils/a;->y(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2713

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private j0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private k0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/ui/WelcomActivity$b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/ui/WelcomActivity$b;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "gamebox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.gamebooster.action.GAMEBOX"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "caller_channel"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p2, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->e:Ljava/lang/String;

    const-string v0, "enter_homepage_way"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic l0()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WelcomActivity"

    const-string v1, "onActivityResult:not finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method private m0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private n0(Ljava/lang/Boolean;Z)V
    .locals 9

    const-class v0, Lcom/miui/gamebooster/ui/SettingsActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.miui.securityadd"

    invoke-static {v1}, Lef/d0;->b(Ljava/lang/String;)I

    move-result v1

    const v2, 0x162b6

    if-lt v1, v2, :cond_1

    invoke-static {}, La8/o0;->m()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lw8/q;

    invoke-direct {p1}, Lw8/q;-><init>()V

    iget-boolean p2, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->g:Z

    new-instance v0, Lcom/miui/gamebooster/ui/WelcomActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WelcomActivity$a;-><init>(Lcom/miui/gamebooster/ui/WelcomActivity;)V

    invoke-virtual {p1, p0, p2, v0}, Lw8/q;->n(Landroid/app/Activity;ZLw8/e;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->h0()V

    goto/16 :goto_3

    :cond_1
    const-string v1, "track_gamebooster_enter_way"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v8, "00009"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    goto :goto_0

    :pswitch_1
    const-string v8, "00008"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    move v7, v5

    goto :goto_0

    :pswitch_2
    const-string v8, "00007"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_5

    const-class v4, Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    goto :goto_1

    :cond_5
    const-class v4, Lcom/miui/gamebooster/ui/SelectGameActivity;

    goto :goto_1

    :pswitch_4
    if-eqz p2, :cond_6

    move-object v4, v0

    goto :goto_1

    :cond_6
    const-class v4, Lcom/miui/gamebooster/ui/GameBoosterSettingActivity;

    :cond_7
    :goto_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v8, 0x10000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_8

    const-string v7, "track_channel"

    const-string v8, "channel_luncher"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v7, "top"

    if-eqz p1, :cond_9

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_2
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->e:Ljava/lang/String;

    const-string v5, "enter_homepage_way"

    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    if-ne v4, v0, :cond_c

    const-string p1, "force_show_settings"

    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    invoke-virtual {p0, p2}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2baf437
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw8/k;->s()Lw8/k;

    move-result-object p1

    invoke-virtual {p1}, Lw8/k;->v()V

    new-instance p1, Ly7/l;

    invoke-direct {p1, p0}, Ly7/l;-><init>(Lcom/miui/gamebooster/ui/WelcomActivity;)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/common/base/BaseActivity;->postOnUiDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, La8/z;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_1
    const-string p1, "security"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->c:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->j0()V

    invoke-static {}, La8/m;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, La8/m;->d(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_2
    invoke-static {p0}, La8/h0;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, La8/h0;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f130021

    const-string v1, "gamebooster_xunyou_privacy_aler_theme"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->f:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "show_privacy_net_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->g:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->h:I

    const-string v2, "param_xunyou_net_channel"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->h:I

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->i0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->m0()V

    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {}, Lm6/a;->d()I

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, La8/g0;->Y()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->d:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.gamebooster.action.ACCESS_MAINACTIVITY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "jump_target"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->d:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "caller_channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/WelcomActivity;->k0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.gamebooster.action.MI_PUSH_GAMEBOOSTER_HOT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity;->d:Z

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/WelcomActivity;->n0(Ljava/lang/Boolean;Z)V

    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WelcomActivity;->j0()V

    :cond_0
    return-void
.end method

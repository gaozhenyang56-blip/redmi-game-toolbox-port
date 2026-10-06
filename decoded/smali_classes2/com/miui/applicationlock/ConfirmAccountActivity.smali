.class public Lcom/miui/applicationlock/ConfirmAccountActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/ConfirmAccountActivity$e;
    }
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Z

.field private c:Lc3/d;

.field private d:Lmiui/security/SecurityManager;

.field private e:Z

.field private f:Z

.field private g:Landroid/widget/TextView;

.field private h:Landroid/os/CountDownTimer;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0(Landroid/app/Activity;Landroid/os/Bundle;Lc3/d;)V
    .locals 8

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v6, Lcom/miui/applicationlock/ConfirmAccountActivity$d;

    invoke-direct {v6, p0, p3, p1}, Lcom/miui/applicationlock/ConfirmAccountActivity$d;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;Lc3/d;Landroid/app/Activity;)V

    const-string v1, "com.xiaomi"

    const-string v2, "passportapi"

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method static synthetic e0(Lcom/miui/applicationlock/ConfirmAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->m0()V

    return-void
.end method

.method static synthetic f0(Lcom/miui/applicationlock/ConfirmAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->q0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/applicationlock/ConfirmAccountActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->e:Z

    return p0
.end method

.method static synthetic j0(Lcom/miui/applicationlock/ConfirmAccountActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->f:Z

    return p1
.end method

.method private k0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, La8/z;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0701ae

    goto :goto_0

    :cond_0
    const v2, 0x7f0701ad

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->j:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private l0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private m0()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "app_binding_result"

    goto :goto_0

    :cond_0
    const-string v0, "binding_result"

    :goto_0
    const-string v1, "logged_in_binding"

    invoke-static {v0, v1}, La3/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->c:Lc3/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/d;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lx4/y1;->k(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "not_home_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "from_guide"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->d:Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lc3/f;->d(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->d:Lmiui/security/SecurityManager;

    invoke-static {v0, v1}, Lc3/f;->D0(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->c:Lc3/d;

    invoke-direct {p0, p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->d0(Landroid/app/Activity;Landroid/os/Bundle;Lc3/d;)V

    :goto_1
    return-void
.end method

.method private n0()V
    .locals 3

    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00fe

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->j:Landroid/widget/Button;

    const v1, 0x7f0b050b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->i:Landroid/widget/ImageView;

    const v1, 0x7f0b0c1f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->c:Lc3/d;

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->d:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_dialog_extra_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->e:Z

    return-void
.end method

.method private o0()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/miui/applicationlock/ConfirmAccountActivity$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/applicationlock/ConfirmAccountActivity$e;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;Lcom/miui/applicationlock/ConfirmAccountActivity$a;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private p0(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12027a

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120279

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/applicationlock/ConfirmAccountActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/ConfirmAccountActivity$a;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;)V

    const v2, 0x7f12029d

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/applicationlock/ConfirmAccountActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/ConfirmAccountActivity$b;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;)V

    const v2, 0x7f120270

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/miui/applicationlock/ConfirmAccountActivity$c;

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x3e8

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/applicationlock/ConfirmAccountActivity$c;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;JJLandroid/widget/Button;)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->h:Landroid/os/CountDownTimer;

    return-void
.end method

.method private q0()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->b:Z

    const-string v1, "app_binding_result"

    const-string v2, "binding_result"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v0, "logged_in_skip"

    :goto_1
    invoke-static {v1, v0}, La3/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->e:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->f:Z

    if-eqz v0, :cond_3

    const-string v0, "not_logged_cancel_login_skip"

    goto :goto_1

    :cond_3
    const-string v0, "not_logged_skip"

    goto :goto_1

    :goto_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->p0(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->m0()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b00fe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->l0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->k0()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e00fa

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->n0()V

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->l0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->k0()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/w;->b(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->a:Landroid/accounts/Account;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->b:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->j:Landroid/widget/Button;

    const v3, 0x7f12026f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120277

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->a:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f1202a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->j:Landroid/widget/Button;

    const v1, 0x7f12029d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->o0()V

    const-string v0, "first_set_account"

    invoke-static {v0}, La3/a;->l(Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Lmiuix/appcompat/app/ProgressDialog;

.field private c:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->h0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->g0()V

    return-void
.end method

.method static synthetic f0(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method private g0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private h0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->a:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    const v2, 0x7f1206b6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    new-instance v0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->a:[Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;-><init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->c:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lm2/f;->w(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_1

    invoke-static {p0}, Lx4/t;->t(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "numbers"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "needConfirm"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1206b5

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v1, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$c;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$c;-><init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$b;-><init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$a;-><init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->h0()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->c:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->c:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->c:Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity$d;

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->b:Lmiuix/appcompat/app/ProgressDialog;

    :cond_1
    return-void
.end method

.class public Lcom/miui/permcenter/install/AdbInstallVerifyActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/install/AdbInstallVerifyActivity$a;,
        Lcom/miui/permcenter/install/AdbInstallVerifyActivity$b;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Z

.field protected c:Ljava/lang/String;

.field protected d:Lcom/miui/permcenter/install/AdbInstallVerifyActivity$b;

.field private e:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const-string v0, "https://srv.sec.miui.com/data/adb"

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->c:Ljava/lang/String;

    return-void
.end method

.method private d0(Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    new-instance v7, Lcom/miui/permcenter/install/AdbInstallVerifyActivity$a;

    invoke-direct {v7, p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity$a;-><init>(Lcom/miui/permcenter/install/AdbInstallVerifyActivity;)V

    const-string v2, "com.xiaomi"

    const-string v3, "passportapi"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private f0()V
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity$b;-><init>(Lcom/miui/permcenter/install/AdbInstallVerifyActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->d:Lcom/miui/permcenter/install/AdbInstallVerifyActivity$b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200ae

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private g0(Z)V
    .locals 1

    invoke-static {p0}, Lxb/b;->m(Landroid/content/Context;)Lxb/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxb/b;->D(Z)V

    return-void
.end method


# virtual methods
.method protected e0()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/miui/permcenter/install/AdbInputApplyActivity;->j0(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->g0(Z)V

    :goto_0
    return-void
.end method

.method protected h0()V
    .locals 3

    const v0, 0x7f0e0057

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f130023

    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->f0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_input"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->b:Z

    sget-object p1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "houji"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ro.miui.build.region"

    const-string v0, "CN"

    invoke-static {p1, v0}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "eea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->e0()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lxb/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->a:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->b:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1200b3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->d0(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->h0()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->e:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->e:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->e:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->d:Lcom/miui/permcenter/install/AdbInstallVerifyActivity$b;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.class public Lcom/miui/tvm/ui/TvmDialogActivity;
.super Lcom/miui/common/base/BaseAcquireCtaActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private a:Lmiuix/appcompat/app/AlertDialog;

.field private b:I

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->c:Z

    return-void
.end method

.method static synthetic d0(Lcom/miui/tvm/ui/TvmDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/tvm/ui/TvmDialogActivity;->j0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/tvm/ui/TvmDialogActivity;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;->acquireCTAPermissionsForResult()Z

    move-result p0

    return p0
.end method

.method static synthetic f0(Lcom/miui/tvm/ui/TvmDialogActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->b:I

    return p0
.end method

.method private j0()V
    .locals 1

    new-instance v0, Lcom/miui/tvm/ui/TvmDialogActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/tvm/ui/TvmDialogActivity$c;-><init>(Lcom/miui/tvm/ui/TvmDialogActivity;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected g0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected h0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    iget v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->b:I

    if-nez v0, :cond_0

    const v0, 0x7f120c6a

    goto :goto_0

    :cond_0
    const v0, 0x7f121b0a

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->b:I

    if-nez v0, :cond_1

    const v0, 0x7f120c69

    goto :goto_1

    :cond_1
    const v0, 0x7f121b09

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/miui/tvm/ui/TvmDialogActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/tvm/ui/TvmDialogActivity$b;-><init>(Lcom/miui/tvm/ui/TvmDialogActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v1, Lcom/miui/tvm/ui/TvmDialogActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/tvm/ui/TvmDialogActivity$a;-><init>(Lcom/miui/tvm/ui/TvmDialogActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected i0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/base/BaseAcquireCtaActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x12c

    if-ne p1, p3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult: resultCode:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Tvm.TvmDialogActivity"

    invoke-static {p3, p1}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/miui/tvm/ui/TvmDialogActivity;->j0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lx4/q0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/miui/tvm/TvmManager;->t(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/miui/tvm/TvmManager;->m(I)V

    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->b:I

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f130023

    invoke-direct {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, p1}, Lcom/miui/tvm/ui/TvmDialogActivity;->h0(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/tvm/ui/TvmDialogActivity;->i0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->c:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/ui/TvmDialogActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

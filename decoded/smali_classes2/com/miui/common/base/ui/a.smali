.class public abstract Lcom/miui/common/base/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/base/ui/a$b;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mBaseDialogClickListener:Lcom/miui/common/base/ui/a$b;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mIsWeakReferenceEnabled:Z

.field private mMessage:Ljava/lang/String;

.field private mNagetiveText:Ljava/lang/String;

.field private mPostiveText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/base/ui/a;->mIsWeakReferenceEnabled:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected clearDialog()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object v0
.end method

.method protected abstract getNegativeButtonText()I
.end method

.method protected getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mBaseDialogClickListener:Lcom/miui/common/base/ui/a$b;

    return-object v0
.end method

.method protected abstract getPositiveButtonText()I
.end method

.method protected abstract onBuild(Lmiuix/appcompat/app/AlertDialog;)V
.end method

.method protected abstract onClick(Landroid/content/DialogInterface;I)V
.end method

.method protected onPrepareBuild(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected abstract onShow(Lmiuix/appcompat/app/AlertDialog;)V
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/base/ui/a;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setNagetiveText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/base/ui/a;->mNagetiveText:Ljava/lang/String;

    return-void
.end method

.method public setPostiveText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/base/ui/a;->mPostiveText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/base/ui/a;->mTitle:Ljava/lang/String;

    return-void
.end method

.method protected setWeakReferenceEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/base/ui/a;->mIsWeakReferenceEnabled:Z

    return-void
.end method

.method protected showDialog()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_6

    new-instance v0, Lcom/miui/common/base/ui/a$b;

    iget-boolean v1, p0, Lcom/miui/common/base/ui/a;->mIsWeakReferenceEnabled:Z

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/common/base/ui/a$b;-><init>(Lcom/miui/common/base/ui/a;ZLcom/miui/common/base/ui/a$a;)V

    iput-object v0, p0, Lcom/miui/common/base/ui/a;->mBaseDialogClickListener:Lcom/miui/common/base/ui/a$b;

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/a;->onPrepareBuild(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->getPositiveButtonText()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/miui/common/base/ui/a;->mPostiveText:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/base/ui/a;->mPostiveText:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->getNegativeButtonText()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/miui/common/base/ui/a;->mNagetiveText:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/a;->mNagetiveText:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mPostiveText:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/miui/common/base/ui/a;->mBaseDialogClickListener:Lcom/miui/common/base/ui/a$b;

    invoke-virtual {v1, v2, v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mNagetiveText:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/miui/common/base/ui/a;->mBaseDialogClickListener:Lcom/miui/common/base/ui/a$b;

    invoke-virtual {v1, v2, v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/a;->onBuild(Lmiuix/appcompat/app/AlertDialog;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/a;->onShow(Lmiuix/appcompat/app/AlertDialog;)V

    :cond_7
    :goto_0
    return-void
.end method

.class public Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;
    }
.end annotation


# instance fields
.field private mActionFlag:I

.field private mItems:[Ljava/lang/String;

.field private mListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mSelectedIndex:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method


# virtual methods
.method public buildDialog(I[Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method public buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0

    iput p4, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mActionFlag:I

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->clearDialog()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mItems:[Ljava/lang/String;

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mSelectedIndex:I

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->showDialog()V

    return-void
.end method

.method protected getNegativeButtonText()I
    .locals 1

    const v0, 0x7f12049a

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBuild(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121acf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121ac2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121acc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-lt p2, v0, :cond_2

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mSelectedIndex:I

    :cond_2
    const/4 v0, -0x2

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mSelectedIndex:I

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mActionFlag:I

    invoke-interface {p2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;->onSelectItemUpdate(II)V

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onPrepareBuild(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mItems:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->mSelectedIndex:I

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->getOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    return-void
.end method

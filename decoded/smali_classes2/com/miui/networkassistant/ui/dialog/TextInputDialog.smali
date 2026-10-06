.class public Lcom/miui/networkassistant/ui/dialog/TextInputDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;
    }
.end annotation


# instance fields
.field private mActionFlag:I

.field private mHint:Ljava/lang/String;

.field private mInpuText:Landroid/widget/EditText;

.field private mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

.field private mIsNumberText:Z

.field private mOkButton:Landroid/widget/Button;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;-><init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mTextWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mOkButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public buildInputDialog(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(III)V

    return-void
.end method

.method public buildInputDialog(III)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mActionFlag:I

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->clearDialog()V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mHint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

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

    const v0, 0x7f120f49

    return v0
.end method

.method protected onBuild(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0134

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0baa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xc8

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mIsNumberText:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;-><init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$3;-><init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mActionFlag:I

    invoke-interface {p2, p1, v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;->onTextSetted(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mOkButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setNumberText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->mIsNumberText:Z

    return-void
.end method

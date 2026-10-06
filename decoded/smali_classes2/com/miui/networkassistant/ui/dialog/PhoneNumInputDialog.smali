.class public Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;
    }
.end annotation


# instance fields
.field private country:I

.field private mActionFlag:I

.field private mCheckTextView:Landroid/widget/TextView;

.field private mHint:Ljava/lang/String;

.field private mInpuText:Landroid/widget/EditText;

.field private mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;

.field private mInputWatcher:Landroid/text/TextWatcher;

.field private mOkButton:Landroid/widget/Button;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->country:I

    const-string p1, "^\\d+\\.?\\d*$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mPattern:Ljava/util/regex/Pattern;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;-><init>(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInputWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->lambda$onBuild$1()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Ljava/util/regex/Pattern;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mOkButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->country:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->isNormalNum(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mCheckTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic b(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->lambda$initView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->lambda$onBuild$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->lambda$onBuild$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private hideKeyBoard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b0baa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    const v0, 0x7f0b03f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mTextView:Landroid/widget/TextView;

    sget-boolean v1, Lsl/a;->a:Z

    if-nez v1, :cond_0

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0b0c51

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mCheckTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/c;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/c;-><init>(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private isNormalNum(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xd

    const/4 v3, 0x7

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    :cond_1
    const-string v0, "08"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0xe

    const/16 v5, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4

    :cond_2
    const-string v0, "+628"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    :cond_3
    const-string v0, "+6208"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_5

    :cond_4
    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method private synthetic lambda$initView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->hideKeyBoard(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->isNormalNum(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mCheckTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return p1
.end method

.method private synthetic lambda$onBuild$1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$onBuild$2(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInputWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/d;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/d;-><init>(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onBuild$3(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInputWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mActionFlag:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mHint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->showDialog()V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->refreshHintTxt(Ljava/lang/String;)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    iput p5, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->country:I

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mActionFlag:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mHint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->showDialog()V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->refreshHintTxt(Ljava/lang/String;)V

    return-void
.end method

.method public clearInputText()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    .locals 6

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0541

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->initView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/a;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/a;-><init>(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/b;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/b;-><init>(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->country:I

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->isNormalNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mActionFlag:I

    invoke-interface {v0, p2, v1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;->onNumUpdated(Ljava/lang/String;I)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mOkButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public refreshHintTxt(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mInpuText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCheckTextView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->mCheckTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

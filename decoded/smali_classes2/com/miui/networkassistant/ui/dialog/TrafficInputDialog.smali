.class public Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
    }
.end annotation


# instance fields
.field private mActionFlag:I

.field private mHint:Ljava/lang/String;

.field private mInpuText:Landroid/widget/EditText;

.field private mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

.field private mInputTraffic:J

.field private mInputWatcher:Landroid/text/TextWatcher;

.field private mMaxValue:J

.field private mOkButton:Landroid/widget/Button;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mProperValue:D

.field private mTrafficUnits:J

.field private spinner:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    const-string p1, "^\\d+\\.?\\d*$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mPattern:Ljava/util/regex/Pattern;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$1;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->lambda$onBuild$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Ljava/util/regex/Pattern;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mOkButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->setProperInputValue(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->lambda$onBuild$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->lambda$onBuild$0()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b0baa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    const v0, 0x7f0b0ad7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/Spinner;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->spinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->enableHideSoftInput(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->spinner:Lmiuix/appcompat/widget/Spinner;

    const v1, 0x800055

    invoke-virtual {p1, v1}, Lmiuix/appcompat/widget/Spinner;->setDropDownGravity(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private synthetic lambda$onBuild$0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$onBuild$1(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/k;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/k;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onBuild$2(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setProperInputValue(Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mTrafficUnits:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mProperValue:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v2, v4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    mul-double/2addr v1, v4

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%.02f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActionFlag:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mHint:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->spinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->showDialog()V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->refreshHintTxt(Ljava/lang/String;)V

    return-void
.end method

.method public buildInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActionFlag:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mHint:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->spinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->showDialog()V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->refreshHintTxt(Ljava/lang/String;)V

    return-void
.end method

.method public clearInputText()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

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

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e0551

    goto :goto_0

    :cond_0
    const v1, 0x7f0e0552

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->initView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isCNLanguage()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mHint:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    iget-object v3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/i;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/i;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/j;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/j;-><init>(Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mTrafficUnits:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputTraffic:J

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInputTraffic:J

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mActionFlag:I

    invoke-interface {p2, v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;->onTrafficUpdated(JI)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    if-eq p3, p4, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 p3, 0x100000

    iput-wide p3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mTrafficUnits:J

    iget-wide p3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    long-to-double p3, p3

    mul-double/2addr p3, p1

    const-wide/high16 p1, 0x4130000000000000L    # 1048576.0

    goto :goto_0

    :cond_1
    const-wide/32 p3, 0x40000000

    iput-wide p3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mTrafficUnits:J

    iget-wide p3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    long-to-double p3, p3

    mul-double/2addr p3, p1

    const-wide/high16 p1, 0x41d0000000000000L    # 1.073741824E9

    :goto_0
    div-double/2addr p3, p1

    iput-wide p3, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mProperValue:D

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->setProperInputValue(Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mOkButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public refreshHintTxt(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mInpuText:Landroid/widget/EditText;

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

.method public setMaxValue(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->mMaxValue:J

    return-void
.end method

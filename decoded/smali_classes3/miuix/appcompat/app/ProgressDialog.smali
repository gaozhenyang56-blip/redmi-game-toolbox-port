.class public Lmiuix/appcompat/app/ProgressDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressPercentView:Landroid/widget/TextView;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/ProgressDialog;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/ProgressDialog;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method private initFormats()V
    .locals 2

    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private onProgressChanged()V
    .locals 2

    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiuix/appcompat/app/ProgressDialog;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p4}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    :goto_0
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    :goto_0
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v4, 0x1

    new-array v6, v4, [I

    sget v7, Lmiuix/appcompat/R$attr;->dialogProgressPercentColor:I

    aput v7, v6, v5

    invoke-virtual {v2, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lmiuix/appcompat/R$color;->miuix_appcompat_dialog_default_progress_percent_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    move v5, v4

    :cond_0
    iget v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    if-ne v2, v4, :cond_2

    new-instance v2, Lmiuix/appcompat/app/ProgressDialog$1;

    invoke-direct {v2, p0, v6}, Lmiuix/appcompat/app/ProgressDialog$1;-><init>(Lmiuix/appcompat/app/ProgressDialog;I)V

    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v5, :cond_1

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_progress_xl_font:I

    goto :goto_0

    :cond_1
    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_progress:I

    :goto_0
    sget v4, Lmiuix/appcompat/R$styleable;->AlertDialog_horizontalProgressLayout:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Lmiuix/appcompat/R$id;->progress_percent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_progressLayout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_progress_dialog:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    sget v2, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    if-lez v0, :cond_3

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    :cond_3
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    if-lez v0, :cond_4

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    :cond_4
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_5

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setSecondaryProgress(I)V

    :cond_5
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    if-lez v0, :cond_6

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->incrementProgressBy(I)V

    :cond_6
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_7

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_a
    iget-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    :goto_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    :cond_0
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    iget-boolean p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    :cond_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    :cond_0
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    :goto_0
    return-void
.end method

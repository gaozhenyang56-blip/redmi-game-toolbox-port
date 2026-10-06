.class public Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final SEEK_BAR_RANGE_MAX:I = 0x64

.field private static final SEEK_BAR_RANGE_MIN:I = 0x3c


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMonthTotal:J

.field private mPercent:F

.field private mPercentTextView:Landroid/widget/TextView;

.field private mRealValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

.field private mWarnTraffic:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;)Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mRealValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->getReallySeekBarValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->updateData(I)V

    return-void
.end method

.method private getReallySeekBarValue(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x28

    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x3c

    return p1
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0b0a32

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0b0bab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercentTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0bb6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mWarnTraffic:Landroid/widget/TextView;

    const v0, 0x7f0b06ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0996

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;-><init>(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 4

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercent:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mRealValue:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->updateData(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercent:F

    mul-float/2addr v2, v1

    const/high16 v3, 0x42700000    # 60.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private updateData(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mWarnTraffic:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mMonthTotal:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mWarnTraffic:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildDateDialog(Ljava/lang/String;)V
    .locals 0

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
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e040f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->initView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mSeekBarChangeListener:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mRealValue:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-interface {p2, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;->onSeekBarChanged(F)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public setData(JF)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mMonthTotal:J

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->mPercent:F

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->loadData()V

    return-void
.end method

.class public Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/VideoView;

.field private b:Lmiuix/slidingwidget/widget/SlidingButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/SeekBar;

.field private g:Landroid/widget/LinearLayout;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Loe/a;

.field private n:Landroid/content/Context;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Lmiuix/appcompat/app/ProgressDialog;

.field private q:Landroid/os/CountDownTimer;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->k:I

    iput v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->o:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->r:Z

    iput-boolean v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->s:Z

    iput-boolean v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->t:Z

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$b;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->u:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n:Landroid/content/Context;

    return-object p0
.end method

.method private B0(I)V
    .locals 7

    iput p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->i:I

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->G0(I)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->C0(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f121626

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    float-to-double v5, p1

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const p1, 0x7f120dd7

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private C0(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    float-to-double v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f120dd7

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "</font>"

    const-string v3, "<font color=\"#0D84FF\">"

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private D0()I
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private E0(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x14

    mul-int/lit8 p1, p1, 0x64

    div-int/lit8 p1, p1, 0x46

    return p1
.end method

.method private F0(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x46

    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x14

    return p1
.end method

.method private G0(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->j:I

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->E0(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$e;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$f;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$f;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method private H0()V
    .locals 4

    const v0, 0x7f0b0d77

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0dd6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n:Landroid/content/Context;

    const v3, 0x7f060b9e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->g:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lx4/h0;->d(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m:Loe/a;

    invoke-interface {v1}, Loe/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$g;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->o:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private I0()V
    .locals 3

    const v0, 0x7f0b0dda

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0b09e8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m:Loe/a;

    invoke-interface {v1}, Loe/a;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v1, Loe/d;

    invoke-direct {v1, p0}, Loe/d;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.ACTION_WIRELESS_CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.ACTION_WIRELESS_FW_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->u:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->h:Z

    return-void
.end method

.method private J0()V
    .locals 8

    const v0, 0x7f0b0a32

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    const v0, 0x7f0b0dd9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0bad

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0bab

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0bac

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    const-wide v5, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f120dd7

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const-wide v6, 0x3fecccccc0000000L    # 0.8999999761581421

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wireless_reverse_charging"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->B0(I)V

    return-void
.end method

.method private K0()V
    .locals 1

    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->P0()V

    return-void
.end method

.method private synthetic L0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m:Loe/a;

    invoke-interface {p1}, Loe/a;->g()Z

    move-result p1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m:Loe/a;

    invoke-interface {p1, p2}, Loe/a;->i(Z)V

    return-void
.end method

.method private M0(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    div-int/lit8 v3, v2, 0x2

    int-to-float p1, p1

    iget-object v4, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    int-to-float v4, v1

    mul-float/2addr p1, v4

    float-to-int p1, p1

    if-ge p1, v3, :cond_0

    iget v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->j:I

    :goto_0
    add-int/2addr p1, v1

    goto :goto_1

    :cond_0
    add-int v4, p1, v3

    iget-object v5, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v1

    if-le v4, v5, :cond_1

    sub-int/2addr v1, v2

    iget p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->j:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->j:I

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private N0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130455

    invoke-direct {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121330

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121331

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;

    invoke-direct {v1, p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$k;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Landroid/content/Context;)V

    const p1, 0x7f120f48

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$j;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$j;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    const v1, 0x7f120499

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static O0(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130455

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f12132f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12132e

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$i;

    invoke-direct {v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$i;-><init>()V

    const v1, 0x7f12132d

    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$h;

    invoke-direct {v0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$h;-><init>()V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private P0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110022

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loe/c;->a(Landroid/widget/VideoView;I)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    const v1, 0x7f0600c0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    new-instance v1, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$d;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method

.method private Q0()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWirelessFwState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WirelessReverseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v2, :cond_0

    new-instance v2, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v3, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    :cond_0
    iget v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->k:I

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const v1, 0x7f12132c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_8

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    const v1, 0x7f121333

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    const-string v6, "haptic_feedback_disable"

    const-string v7, "open haptic after fw update"

    if-ne v2, v5, :cond_5

    const v2, 0x7f121337

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m:Loe/a;

    invoke-interface {v0}, Loe/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->t:Z

    if-eqz v0, :cond_4

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v4, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->t:Z

    :cond_4
    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$a;

    const-wide/16 v9, 0x7d0

    const-wide/16 v11, 0x3e8

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$a;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->q:Landroid/os/CountDownTimer;

    return-void

    :cond_5
    const/4 v5, 0x4

    if-ne v2, v5, :cond_7

    const v2, 0x7f121332

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m:Loe/a;

    invoke-interface {v0}, Loe/a;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->t:Z

    if-eqz v0, :cond_6

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v4, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->t:Z

    :cond_6
    return-void

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_8
    :goto_2
    return-void
.end method

.method public static synthetic d0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->L0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->i:I

    return p0
.end method

.method static synthetic f0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->i:I

    return p1
.end method

.method static synthetic g0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->E0(I)I

    move-result p0

    return p0
.end method

.method static synthetic h0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->D0()I

    move-result p0

    return p0
.end method

.method static synthetic i0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->N0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic j0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Loe/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m:Loe/a;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->t:Z

    return p1
.end method

.method static synthetic l0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->k:I

    return p0
.end method

.method static synthetic m0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->k:I

    return p1
.end method

.method static synthetic n0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->Q0()V

    return-void
.end method

.method static synthetic o0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->p:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->b:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->s:Z

    return p0
.end method

.method static synthetic r0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->s:Z

    return p1
.end method

.method static synthetic s0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->M0(I)V

    return-void
.end method

.method static synthetic t0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/widget/VideoView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->F0(I)I

    move-result p0

    return p0
.end method

.method static synthetic v0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->C0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic x0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic y0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->l:I

    return p0
.end method

.method static synthetic z0(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->l:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0054

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    new-instance p1, Loe/b;

    invoke-direct {p1, p0}, Loe/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->m:Loe/a;

    iput-object p0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->n:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->K0()V

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->J0()V

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->H0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity$c;-><init>(Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iput-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->q:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->q:Landroid/os/CountDownTimer;

    :cond_1
    iget-boolean v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->u:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->h:Z

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->I0()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/powercenter/wirelesscharge/WirelessReverseActivity;->a:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const v1, 0x7f0600c0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

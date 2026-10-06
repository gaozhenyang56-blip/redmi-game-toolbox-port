.class public Lcom/miui/powercenter/mainui/BatteryStatusView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/mainui/BatteryStatusView$b;
    }
.end annotation


# static fields
.field private static i:Z

.field private static j:I

.field private static k:J

.field private static l:I

.field private static m:I


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/miui/powercenter/view/BatteryStatusValueText;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/powercenter/view/BatteryStatusValueText;

.field private e:Lcom/miui/powercenter/view/BatteryStatusValueText;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/miui/powercenter/mainui/BatteryStatusView$a;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/mainui/BatteryStatusView$a;-><init>(Lcom/miui/powercenter/mainui/BatteryStatusView;)V

    iput-object p2, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->h:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e03f1

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0b0386

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->a:Landroid/widget/TextView;

    const p1, 0x7f0b0388

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/view/BatteryStatusValueText;

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->b:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const p1, 0x7f0b0387

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->c:Landroid/widget/TextView;

    const p1, 0x7f0b0b7b

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/view/BatteryStatusValueText;

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->d:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const p1, 0x7f0b0201

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/view/BatteryStatusValueText;

    iput-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->e:Lcom/miui/powercenter/view/BatteryStatusValueText;

    sget p1, Lcom/miui/powercenter/mainui/BatteryStatusView;->m:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/w;->g(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/miui/powercenter/mainui/BatteryStatusView;->m:I

    :cond_0
    sget p1, Lcom/miui/powercenter/mainui/BatteryStatusView;->m:I

    invoke-direct {p0, p1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->l(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->o()V

    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->i()V

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/mainui/BatteryStatusView;)Lcom/miui/powercenter/view/BatteryStatusValueText;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->b:Lcom/miui/powercenter/view/BatteryStatusValueText;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/powercenter/mainui/BatteryStatusView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(J)J
    .locals 0

    sput-wide p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->k:J

    return-wide p0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->i:Z

    return p0
.end method

.method static synthetic e(I)I
    .locals 0

    sput p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->j:I

    return p0
.end method

.method static synthetic f(I)I
    .locals 0

    sput p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->l:I

    return p0
.end method

.method static synthetic g(Lcom/miui/powercenter/mainui/BatteryStatusView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/mainui/BatteryStatusView;->n(J)V

    return-void
.end method

.method private getTemperature()I
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "temperature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private h(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lme/b0;->r(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->h:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->g:Z

    :cond_1
    return-void
.end method

.method private j()V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/mainui/BatteryStatusView$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/mainui/BatteryStatusView$b;-><init>(Lcom/miui/powercenter/mainui/BatteryStatusView;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->g:Z

    :cond_0
    return-void
.end method

.method private l(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->e:Lcom/miui/powercenter/view/BatteryStatusValueText;

    invoke-static {p1}, Lme/e0;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private m()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/w;->k(Landroid/content/Context;)I

    move-result v2

    sget-boolean v3, Lcom/miui/powercenter/mainui/BatteryStatusView;->i:Z

    if-ne v3, v0, :cond_0

    sget v3, Lcom/miui/powercenter/mainui/BatteryStatusView;->j:I

    if-ne v3, v1, :cond_0

    sget v3, Lcom/miui/powercenter/mainui/BatteryStatusView;->l:I

    if-ne v3, v2, :cond_0

    sget-wide v0, Lcom/miui/powercenter/mainui/BatteryStatusView;->k:J

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/mainui/BatteryStatusView;->n(J)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->b:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const v1, 0x7f12037e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->j()V

    return-void
.end method

.method private n(J)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x5f

    if-lt v0, v2, :cond_0

    const-wide/32 v2, 0x927c0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->b:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const p2, 0x7f1204e2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->b:Lcom/miui/powercenter/view/BatteryStatusValueText;

    const p2, 0x7f12037d

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->b:Lcom/miui/powercenter/view/BatteryStatusValueText;

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/mainui/BatteryStatusView;->h(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->c:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public o()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->a:Landroid/widget/TextView;

    const v1, 0x7f120389

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->a:Landroid/widget/TextView;

    const v1, 0x7f12038a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->m()V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/BatteryStatusView;->d:Lcom/miui/powercenter/view/BatteryStatusValueText;

    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->getTemperature()I

    move-result v1

    invoke-static {v1}, Lme/e0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->i()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->k()V

    return-void
.end method

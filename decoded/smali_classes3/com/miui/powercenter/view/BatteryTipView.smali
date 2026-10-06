.class public Lcom/miui/powercenter/view/BatteryTipView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/powercenter/view/BatteryTipView;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/powercenter/view/BatteryTipView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/view/BatteryTipView;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/powercenter/view/BatteryTipView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/view/BatteryTipView;->d(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e053a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0b06ff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0c47

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->a:Landroid/widget/TextView;

    const v0, 0x7f0b05f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->b:Landroid/widget/ImageView;

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-static {p1}, Lgd/c;->g1(Z)V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/view/BatteryTipView;->g()V

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->b:Landroid/widget/ImageView;

    new-instance v1, Lne/a;

    invoke-direct {v1, p0}, Lne/a;-><init>(Lcom/miui/powercenter/view/BatteryTipView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f12121f

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g()V
    .locals 3

    const-string v0, "https://m.mi.com/maplocation/address?location_type=outlet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0b061a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12121e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060c22

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lne/b;

    invoke-direct {v1, p0}, Lne/b;-><init>(Lcom/miui/powercenter/view/BatteryTipView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/BatteryTipView;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f080de6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 3

    invoke-static {}, Lgd/c;->n()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lgd/c;->p()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/powercenter/view/BatteryTipView;->f()V

    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/miui/powercenter/view/BatteryTipView;->h()V

    return-void

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

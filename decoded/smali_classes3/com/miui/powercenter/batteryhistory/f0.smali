.class public Lcom/miui/powercenter/batteryhistory/f0;
.super Lcom/miui/powercenter/batteryhistory/z$d;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/content/Context;

.field private f:Landroidx/recyclerview/widget/RecyclerView;

.field private g:Lcom/miui/powercenter/legacypowerrank/BatteryData;

.field private h:D


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0405

    goto :goto_0

    :cond_0
    const v1, 0x7f0e0404

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/z$d;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0879

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0;->a:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p2, 0x1020006

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0;->b:Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p2, 0x102000d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0;->c:Landroid/widget/ProgressBar;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p2, 0x1020014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0;->d:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/f0;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/f0$a;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/f0$a;-><init>(Lcom/miui/powercenter/batteryhistory/f0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1}, Lme/u;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/f0;)Lcom/miui/powercenter/legacypowerrank/BatteryData;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/f0;->g:Lcom/miui/powercenter/legacypowerrank/BatteryData;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/f0;)D
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/f0;->h:D

    return-wide v0
.end method

.method static synthetic f(Lcom/miui/powercenter/batteryhistory/f0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    return-object p0
.end method

.method private g(Landroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/miui/powercenter/legacypowerrank/BatteryData;DII)V
    .locals 9

    invoke-super {p0}, Lcom/miui/powercenter/batteryhistory/z$d;->a()V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/f0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0;->g:Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iput-wide p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->h:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v0

    div-double/2addr v0, p2

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p2

    :cond_1
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/miui/powercenter/legacypowerrank/a;->c(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lpg/i;->k()I

    move-result p2

    const/16 p3, 0x8

    const/4 v2, 0x1

    if-le p2, p3, :cond_2

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->a:Landroid/widget/TextView;

    invoke-static {}, Lme/c0;->a()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->c:Landroid/widget/ProgressBar;

    const/16 p3, 0x64

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->c:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int p3, v3

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1210d9

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const-string v0, "%.2f"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p2, p3, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x7f121237

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p3, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lme/e0;->g()Z

    move-result v0

    const-string v3, ""

    const/4 v4, 0x5

    const-string v5, " | "

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    instance-of v6, v0, Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v6, :cond_6

    check-cast v0, Lcom/miui/powercenter/PowerMainActivity;

    iget-object v0, v0, Lcom/miui/powercenter/PowerMainActivity;->e:Landroid/content/res/Configuration;

    invoke-static {v0}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v0

    const-string v6, " | \n"

    if-eqz v0, :cond_4

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/f0;->d:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    if-eq v5, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    invoke-static {v4, v7, v8}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/f0;->d:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    if-eq p3, v4, :cond_5

    goto :goto_0

    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    iget-wide v4, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    invoke-static {v3, v4, v5}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/f0;->d:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    if-eq v6, v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    iget-wide v6, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    invoke-static {v4, v6, v7}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/f0;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->drainType:I

    if-eq p3, v4, :cond_9

    goto :goto_3

    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    iget-wide v7, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    invoke-static {v3, v7, v8}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/a;->d(Lcom/miui/powercenter/legacypowerrank/BatteryData;)I

    move-result p2

    if-lez p2, :cond_a

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0;->b:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lme/a;->f(Landroid/widget/ImageView;I)V

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    iget p2, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {p2}, Lme/m;->b(I)I

    move-result p2

    invoke-static {p2}, Lx4/b2;->d(I)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/f0;->b:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget p1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {p3, p2, p1}, Lx4/b2;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_b
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/f0;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lme/a;->h(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/f0;->g(Landroid/widget/ImageView;)V

    :goto_6
    add-int/2addr p5, v2

    if-ne p4, p5, :cond_d

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/f0;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071e0c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    invoke-virtual {p2, p3, v1, p4, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_d
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.class public Lcom/miui/powercenter/legacypowerrank/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/legacypowerrank/f$b;
    }
.end annotation


# instance fields
.field private a:Z

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/legacypowerrank/f;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/f;->b:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/powercenter/legacypowerrank/f;->c:D

    return-void
.end method

.method private c(Landroid/widget/ImageView;)V
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
.method public a(Lcom/miui/powercenter/legacypowerrank/BatteryData;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/powercenter/legacypowerrank/f;->c:D

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/f;->b:Ljava/util/List;

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/f$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/legacypowerrank/f$a;-><init>(Lcom/miui/powercenter/legacypowerrank/f;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_1

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f0e0405

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f0e0404

    :goto_0
    invoke-static {p2, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/f$b;

    invoke-direct {v1, p2}, Lcom/miui/powercenter/legacypowerrank/f$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/legacypowerrank/f$b;

    :goto_1
    instance-of v2, p3, Lcom/miui/powercenter/view/NoScrollListView;

    if-eqz v2, :cond_2

    check-cast p3, Lcom/miui/powercenter/view/NoScrollListView;

    iget-boolean p3, p3, Lcom/miui/powercenter/view/NoScrollListView;->a:Z

    if-eqz p3, :cond_2

    return-object p2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/f;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget-wide v2, p0, Lcom/miui/powercenter/legacypowerrank/f;->c:D

    const-wide/16 v4, 0x0

    cmpl-double p3, v2, v4

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/powercenter/legacypowerrank/f;->c:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v2

    :cond_3
    iget-object p3, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/miui/powercenter/legacypowerrank/a;->c(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lpg/i;->k()I

    move-result p3

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-le p3, v2, :cond_4

    iget-object p3, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lme/c0;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    iget-object p3, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->c:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {p3, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p3, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->c:Landroid/widget/ProgressBar;

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {p3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f1210d9

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v8, v5

    const-string v4, "%.2f"

    invoke-static {v7, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p3, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f121237

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-static {v8, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->usageTime:J

    iget-wide v5, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->cpuTime:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lme/b0;->q(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v2, ""

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/a;->d(Lcom/miui/powercenter/legacypowerrank/BatteryData;)I

    move-result p3

    if-lez p3, :cond_6

    iget-object p1, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->b:Landroid/widget/ImageView;

    invoke-static {p1, p3}, Lme/a;->g(Landroid/widget/ImageView;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    iget p3, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {p3}, Lme/m;->b(I)I

    move-result p3

    invoke-static {p3}, Lx4/b2;->d(I)Z

    move-result p3

    if-eqz p3, :cond_7

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {v0, p3, p1}, Lx4/b2;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p3, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    iget-object p3, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lme/a;->h(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object p1, v1, Lcom/miui/powercenter/legacypowerrank/f$b;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/legacypowerrank/f;->c(Landroid/widget/ImageView;)V

    :goto_3
    return-object p2
.end method

.class public Lcom/miui/powercenter/batteryhistory/x;
.super Lcom/miui/powercenter/batteryhistory/z$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/x$e;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/powercenter/batteryhistory/v;

.field private b:Lcom/miui/powercenter/batteryhistory/x$e;

.field private c:Lcom/miui/powercenter/PowerMainActivity;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextSwitcher;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/miui/powercenter/batteryhistory/i$a;

.field private i:Landroid/widget/TextView;

.field j:Lne/c;

.field private k:[Ljava/lang/String;

.field private l:I

.field private m:I

.field private final n:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

.field private volatile o:Z

.field private p:Z

.field private q:Landroid/widget/ViewSwitcher$ViewFactory;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/miui/powercenter/PowerMainActivity;)V
    .locals 3

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e03d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/z$d;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/x;->l:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/x;->m:I

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/x;->o:Z

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/x;->p:Z

    new-instance p1, Lcom/miui/powercenter/batteryhistory/x$c;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/batteryhistory/x$c;-><init>(Lcom/miui/powercenter/batteryhistory/x;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->q:Landroid/widget/ViewSwitcher$ViewFactory;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0875

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p2}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/x;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0718c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {p2}, Lme/w;->H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0716bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->n:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->d:Landroid/widget/TextView;

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->g:Landroid/widget/LinearLayout;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->d:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->e:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/e0;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->e:Landroid/widget/ImageView;

    const v0, 0x7f080e28

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextSwitcher;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->f:Landroid/widget/TextSwitcher;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->q:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->i:Landroid/widget/TextView;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0acf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Ldb/c;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lne/c;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-direct {p1, v0}, Lne/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->i:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/x$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/x$a;-><init>(Lcom/miui/powercenter/batteryhistory/x;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->i:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->g:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/x$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/x$b;-><init>(Lcom/miui/powercenter/batteryhistory/x;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lme/w;->H(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/x;->p:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lx4/y;->k()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0c42

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071704

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0716e3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_8
    new-instance p1, Lcom/miui/powercenter/batteryhistory/x$e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/powercenter/batteryhistory/x$e;-><init>(Lcom/miui/powercenter/batteryhistory/x;Lcom/miui/powercenter/batteryhistory/x$a;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->b:Lcom/miui/powercenter/batteryhistory/x$e;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {p1}, Lcom/miui/powercenter/PowerMainActivity;->d0()Lcom/miui/powercenter/batteryhistory/l;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/x;->b:Lcom/miui/powercenter/batteryhistory/x$e;

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/batteryhistory/l;->u(Lcom/miui/powercenter/batteryhistory/w;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/x;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/x;->w(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/x;)Lcom/miui/powercenter/PowerMainActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/powercenter/batteryhistory/x;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/powercenter/batteryhistory/x;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/x;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/powercenter/batteryhistory/x;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/batteryhistory/x;->m:I

    return p0
.end method

.method static synthetic i(Lcom/miui/powercenter/batteryhistory/x;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/x;->m:I

    return p1
.end method

.method static synthetic j(Lcom/miui/powercenter/batteryhistory/x;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/x;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/powercenter/batteryhistory/x;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/x;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/powercenter/batteryhistory/x;Lcom/miui/powercenter/batteryhistory/i$a;)Lcom/miui/powercenter/batteryhistory/i$a;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->h:Lcom/miui/powercenter/batteryhistory/i$a;

    return-object p1
.end method

.method static synthetic m(Lcom/miui/powercenter/batteryhistory/x;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/batteryhistory/x;->o:Z

    return p0
.end method

.method static synthetic n(Lcom/miui/powercenter/batteryhistory/x;Lcom/miui/powercenter/batteryhistory/v;)Lcom/miui/powercenter/batteryhistory/v;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->a:Lcom/miui/powercenter/batteryhistory/v;

    return-object p1
.end method

.method static synthetic o(Lcom/miui/powercenter/batteryhistory/x;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/batteryhistory/x;->p:Z

    return p0
.end method

.method static synthetic p(Lcom/miui/powercenter/batteryhistory/x;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/batteryhistory/x;->l:I

    return p0
.end method

.method static synthetic q(Lcom/miui/powercenter/batteryhistory/x;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/x;->l:I

    return p1
.end method

.method private r(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;
    .locals 5

    :try_start_0
    const-class v0, Landroid/text/style/TypefaceSpan;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Typeface;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/style/TypefaceSpan;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private s(J)Landroid/text/SpannableString;
    .locals 13

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/c0;->b(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071df9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071e2a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-wide/32 v3, 0xea60

    div-long/2addr p1, v3

    const-wide/16 v3, 0x3c

    div-long v5, p1, v3

    long-to-int v5, v5

    mul-int/lit8 v6, v5, 0x3c

    int-to-long v6, v6

    sub-long/2addr p1, v6

    rem-long/2addr p1, v3

    long-to-int p1, p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1000f5

    invoke-virtual {p2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000f6

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object p2, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v8, 0x2

    aput-object p1, v6, v8

    const/4 p1, 0x3

    aput-object v3, v6, p1

    const-string p1, "%d %s %d %s"

    invoke-static {v4, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v8, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v9, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v10, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    const/16 v12, 0x11

    invoke-virtual {v4, v6, v2, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v11, 0x12

    invoke-virtual {v4, v8, v2, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v1, v2, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v2, v5

    invoke-virtual {v4, v9, v1, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v10, v1, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/x;->r(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/x;->r(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v1, v7, v2, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    add-int/2addr v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, v0, v1, p1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v4
.end method

.method private w(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/x;->v()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lne/c;->m(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lne/c;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lne/c;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/x;->l:I

    invoke-virtual {v0, v1}, Lne/c;->p(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    invoke-virtual {v0, p1}, Lne/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/x$d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/x$d;-><init>(Lcom/miui/powercenter/batteryhistory/x;)V

    invoke-virtual {p1, v0}, Lne/c;->n(Lne/c$e;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    invoke-virtual {p1}, Lne/c;->q()V

    return-void
.end method


# virtual methods
.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->b:Lcom/miui/powercenter/batteryhistory/x$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerMainActivity;->d0()Lcom/miui/powercenter/batteryhistory/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x;->b:Lcom/miui/powercenter/batteryhistory/x$e;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->v(Lcom/miui/powercenter/batteryhistory/w;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/x;->o:Z

    return-void
.end method

.method public u()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->h:Lcom/miui/powercenter/batteryhistory/i$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x;->f:Landroid/widget/TextSwitcher;

    iget-wide v2, v0, Lcom/miui/powercenter/batteryhistory/i$a;->c:J

    invoke-direct {p0, v2, v3}, Lcom/miui/powercenter/batteryhistory/x;->s(J)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v()V
    .locals 11

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ldb/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/powercenter/batteryhistory/p;->g()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/x;->c:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f12121d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/powercenter/batteryhistory/p;->g()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->j:Lne/c;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lne/c;->m(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x;->k:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/x;->l:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public x()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x;->a:Lcom/miui/powercenter/batteryhistory/v;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/powercenter/batteryhistory/v;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/x;->n:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/v;->c:Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->r(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

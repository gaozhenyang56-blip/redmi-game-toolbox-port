.class public Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;
    }
.end annotation


# static fields
.field private static p:J = 0x30d40L


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

.field private c:Lcom/miui/powercenter/view/ShadowTextView;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/Path;

.field private k:Landroid/view/ViewGroup;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->g:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->h:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->i:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->j:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0717da

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0717d8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->n:I

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->o:I

    new-instance p2, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-direct {p2, p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->b:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->b:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e03d8

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0b0420

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/powercenter/view/ShadowTextView;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->c:Lcom/miui/powercenter/view/ShadowTextView;

    invoke-static {}, Lpg/i;->k()I

    move-result p2

    const/16 p3, 0x8

    if-le p2, p3, :cond_0

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->c:Lcom/miui/powercenter/view/ShadowTextView;

    invoke-static {}, Lme/c0;->a()Landroid/graphics/Typeface;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/miui/powercenter/view/ShadowTextView;->a(Landroid/graphics/Typeface;I)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e03d4

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0b0148

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->k:Landroid/view/ViewGroup;

    new-instance p1, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$a;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->k:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->e:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->f:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->d:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->b:Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$c;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->h:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->i:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->j:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic k(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->g:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->m:I

    return p0
.end method

.method static synthetic m(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->n:I

    return p0
.end method

.method static synthetic n(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->o:I

    return p0
.end method

.method static synthetic o()J
    .locals 2

    sget-wide v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->p:J

    return-wide v0
.end method

.method static synthetic p(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;)Lcom/miui/powercenter/view/ShadowTextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->c:Lcom/miui/powercenter/view/ShadowTextView;

    return-object p0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->c:Lcom/miui/powercenter/view/ShadowTextView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->m:I

    return-void
.end method

.method public r(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart$b;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public Lcom/miui/powercenter/batteryhistory/q;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/q$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

.field private c:Lcom/miui/powercenter/batteryhistory/q$b;

.field private d:Lcom/miui/powercenter/batteryhistory/i$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/batteryhistory/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/batteryhistory/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/q;->d()V

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/batteryhistory/q;Lcom/miui/powercenter/batteryhistory/i$a;)Lcom/miui/powercenter/batteryhistory/i$a;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/powercenter/batteryhistory/q;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/miui/powercenter/batteryhistory/q;)Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/q;->b:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e03d3

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->b:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/q$b;-><init>(Lcom/miui/powercenter/batteryhistory/q;Lcom/miui/powercenter/batteryhistory/q$a;)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->c:Lcom/miui/powercenter/batteryhistory/q$b;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerMainActivity;->d0()Lcom/miui/powercenter/batteryhistory/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/q;->c:Lcom/miui/powercenter/batteryhistory/q$b;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->u(Lcom/miui/powercenter/batteryhistory/w;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e(II)V
    .locals 7

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->e:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-void

    :cond_1
    if-ge p2, p1, :cond_2

    return-void

    :cond_2
    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->b:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object p2, p2, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->e(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->b:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-lt p2, p1, :cond_4

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->e:Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;

    iget-wide p1, p1, Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;->startTime:J

    :goto_1
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v3, v3, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v3, v3, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v3}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v5

    cmp-long v3, v5, v0

    if-ltz v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_3
    if-ltz v2, :cond_9

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    move v0, v2

    :goto_4
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object v1, v1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v1}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v5

    cmp-long v1, v5, p1

    if-ltz v1, :cond_7

    move v4, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-lt v4, v2, :cond_9

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/q;->d:Lcom/miui/powercenter/batteryhistory/i$a;

    iget-object p1, p1, Lcom/miui/powercenter/batteryhistory/i$a;->a:Ljava/util/List;

    invoke-interface {p1, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/q;->b:Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;

    if-eqz p2, :cond_9

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->e(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    goto/16 :goto_0

    :cond_9
    :goto_6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->c:Lcom/miui/powercenter/batteryhistory/q$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/q;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerMainActivity;->d0()Lcom/miui/powercenter/batteryhistory/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/q;->c:Lcom/miui/powercenter/batteryhistory/q$b;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->v(Lcom/miui/powercenter/batteryhistory/w;)V

    :cond_0
    return-void
.end method

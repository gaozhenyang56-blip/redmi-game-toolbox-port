.class public Ld8/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/e$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Ld8/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Ld8/e;->b:Z

    return p1
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-boolean v0, p0, Ld8/e;->a:Z

    iget-boolean v1, p0, Ld8/e;->b:Z

    if-eq v0, v1, :cond_0

    invoke-static {v1}, Lcom/miui/gamebooster/utils/a$o;->k(Z)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0534

    invoke-virtual {p2, v0, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Ld8/e$b;

    invoke-direct {p3}, Ld8/e$b;-><init>()V

    const v0, 0x7f0b0da8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p3, Ld8/e$b;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld8/e$b;

    :goto_0
    invoke-static {}, Lj8/p;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, La8/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Ld8/e;->a:Z

    iput-boolean p1, p0, Ld8/e;->b:Z

    iget-object v0, p3, Ld8/e$b;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p3, Ld8/e$b;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance p3, Ld8/e$a;

    invoke-direct {p3, p0}, Ld8/e$a;-><init>(Ld8/e;)V

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method

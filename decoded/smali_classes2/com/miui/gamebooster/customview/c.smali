.class public abstract Lcom/miui/gamebooster/customview/c;
.super Lcom/miui/gamebooster/customview/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/c$e;
    }
.end annotation


# instance fields
.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Lcom/miui/gamebooster/customview/BarrageColorPickView;

.field protected l:Lmiuix/androidbasewidget/widget/SeekBar;

.field protected m:Lcom/miui/gamebooster/LevelSeekBarView;

.field protected n:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

.field protected o:Lmiuix/slidingwidget/widget/SlidingButton;

.field protected p:[I

.field protected q:I

.field protected r:I

.field protected s:F

.field protected t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/l;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/c;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/customview/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/c;->l(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/j;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/c;->t:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/j;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/c;->r:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/j;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/c;->q:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/j;->b(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/c;->s:F

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/c;->t:Z

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/c;->l(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->k:Lcom/miui/gamebooster/customview/BarrageColorPickView;

    iget v1, p0, Lcom/miui/gamebooster/customview/c;->r:I

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->setColorSelected(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->m:Lcom/miui/gamebooster/LevelSeekBarView;

    iget v1, p0, Lcom/miui/gamebooster/customview/c;->q:I

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/LevelSeekBarView;->setCurrentLevel(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->l:Lmiuix/androidbasewidget/widget/SeekBar;

    iget v1, p0, Lcom/miui/gamebooster/customview/c;->s:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->o:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v1, p0, Lcom/miui/gamebooster/customview/c;->t:Z

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method private e()V
    .locals 2

    const v0, 0x7f0b0c37

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/BarrageColorPickView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->k:Lcom/miui/gamebooster/customview/BarrageColorPickView;

    const v0, 0x7f0b0a3e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v1, p0, Lcom/miui/gamebooster/customview/c;->l:Lmiuix/androidbasewidget/widget/SeekBar;

    const v1, 0x7f0b0bfe

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    iput-object v1, p0, Lcom/miui/gamebooster/customview/c;->n:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    const v1, 0x7f0b09dd

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, p0, Lcom/miui/gamebooster/customview/c;->o:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->l:Lmiuix/androidbasewidget/widget/SeekBar;

    const v0, 0x7f0b0a3d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/LevelSeekBarView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->m:Lcom/miui/gamebooster/LevelSeekBarView;

    const v0, 0x7f0b0c39

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0c3e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->f:Landroid/widget/TextView;

    const v0, 0x7f0b0c3a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->g:Landroid/widget/TextView;

    const v0, 0x7f0b0c3d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->h:Landroid/widget/TextView;

    const v0, 0x7f0b0c3b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->i:Landroid/widget/TextView;

    const v0, 0x7f0b0c3c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->k:Lcom/miui/gamebooster/customview/BarrageColorPickView;

    new-instance v1, Lcom/miui/gamebooster/customview/c$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/c$a;-><init>(Lcom/miui/gamebooster/customview/c;)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->setColorPickListener(Lcom/miui/gamebooster/customview/BarrageColorPickView$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->o:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v1, Lcom/miui/gamebooster/customview/c$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/c$b;-><init>(Lcom/miui/gamebooster/customview/c;)V

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->m:Lcom/miui/gamebooster/LevelSeekBarView;

    new-instance v1, Lcom/miui/gamebooster/customview/c$c;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/c$c;-><init>(Lcom/miui/gamebooster/customview/c;)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/LevelSeekBarView;->setOnLevelChangeListener(Lcom/miui/gamebooster/LevelSeekBarView$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->l:Lmiuix/androidbasewidget/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->l:Lmiuix/androidbasewidget/widget/SeekBar;

    new-instance v1, Lcom/miui/gamebooster/customview/c$d;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/c$d;-><init>(Lcom/miui/gamebooster/customview/c;)V

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->getLayoutResource()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/customview/c;->d:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, La8/k0;->o(Landroid/view/View;Z)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v1

    aput v1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p1, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p1

    const/4 v1, 0x2

    aput p1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p1, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p1

    const/4 v1, 0x3

    aput p1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p1, v1}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p1

    const/4 v1, 0x4

    aput p1, v0, v1

    iput-object v0, p0, Lcom/miui/gamebooster/customview/c;->p:[I

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/c;->e()V

    invoke-direct {p0}, Lcom/miui/gamebooster/customview/c;->b()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/c;->g()V

    return-void
.end method

.method private l(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->m:Lcom/miui/gamebooster/LevelSeekBarView;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/LevelSeekBarView;->setAvailable(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->k:Lcom/miui/gamebooster/customview/BarrageColorPickView;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->setAvailable(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/c;->c(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/c;->c(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/c;->c(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/c;->c(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->i:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/c;->c(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/c;->c(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->l:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected c(Z)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060e71

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060e6e

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method protected d(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->p:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/c;->p:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method protected abstract g()V
.end method

.method protected abstract getLayoutResource()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method protected abstract h(Landroid/widget/SeekBar;)V
.end method

.method protected abstract i(Z)V
.end method

.method protected abstract j(II)V
.end method

.method protected abstract k(I)V
.end method

.method public setOnBackClickListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c;->n:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    :cond_0
    return-void
.end method

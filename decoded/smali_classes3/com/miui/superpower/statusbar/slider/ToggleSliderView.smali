.class public Lcom/miui/superpower/statusbar/slider/ToggleSliderView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/superpower/statusbar/slider/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;

.field private b:I

.field private c:Z

.field private d:Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;

.field private e:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;

    invoke-direct {p2, p0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;-><init>(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;)V

    iput-object p2, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->e:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const p2, 0x7f0e04e7

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0b0a9c

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;

    iput-object p2, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->a:Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->h()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->setMax(I)V

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->e()V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->a:Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;

    iget-object p2, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->e:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance p1, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;-><init>(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;Landroid/os/Handler;Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;)V

    iput-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->d:Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;)I
    .locals 0

    iget p0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->b:I

    return p0
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->c:Z

    return p1
.end method

.method static synthetic d(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iput v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->b:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->c:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getValue()I
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->a:Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->d:Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->a(Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->d:Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->b(Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public bridge synthetic setChecked(Z)V
    .locals 0

    invoke-static {p0, p1}, Log/b;->a(Lcom/miui/superpower/statusbar/slider/a;Z)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->a:Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->a:Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public setOnChangedListener(Lcom/miui/superpower/statusbar/slider/a$a;)V
    .locals 0

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->a:Lcom/miui/superpower/statusbar/slider/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

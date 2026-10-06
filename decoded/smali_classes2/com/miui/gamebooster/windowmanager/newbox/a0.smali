.class public Lcom/miui/gamebooster/windowmanager/newbox/a0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;
.implements Lcom/miui/gamebooster/brightness/a$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

.field private c:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

.field private d:Lcom/miui/gamebooster/brightness/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/a0;->d(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/a0;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->a:Landroid/content/Context;

    const v1, 0x7f0e020c

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isForceDarkAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setForceDarkAllowed(Z)V

    :cond_0
    const v0, 0x7f0b012c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->b:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->setOnAutoChangeListner(Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;)V

    const v0, 0x7f0b0934

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->c:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setOnChangedListener(Lcom/miui/gamebooster/brightness/a$a;)V

    return-void
.end method

.method private f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->b:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->d:Lcom/miui/gamebooster/brightness/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/brightness/a$a;->a(I)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/a0;->f(Z)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->d:Lcom/miui/gamebooster/brightness/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/brightness/a$a;->b(I)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/windowmanager/newbox/a0;->f(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->c:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->onDetachedFromWindow()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->b:Lcom/miui/gamebooster/brightness/AutoBrightnessView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->i()V

    :cond_1
    return-void
.end method

.method public setOnChangedListener(Lcom/miui/gamebooster/brightness/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/a0;->d:Lcom/miui/gamebooster/brightness/a$a;

    return-void
.end method

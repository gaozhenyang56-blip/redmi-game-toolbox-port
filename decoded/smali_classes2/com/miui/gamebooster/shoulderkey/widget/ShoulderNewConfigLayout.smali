.class public Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;
.super Lr7/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lr7/b;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->b:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01a5

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b01c2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->a:Lr7/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lr7/b;->a()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->a:Lr7/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lr7/b;->onCancel()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0cf1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->e:Landroid/widget/TextView;

    const v0, 0x7f0b01a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->c:Landroid/widget/Button;

    const v0, 0x7f0b01c2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->c:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->d:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0b020b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->b:Landroid/widget/CheckBox;

    return-void
.end method

.method public setOnActionEvent(Lr7/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->a:Lr7/b;

    return-void
.end method

.method public setShowFloatingButtons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderNewConfigLayout;->b:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

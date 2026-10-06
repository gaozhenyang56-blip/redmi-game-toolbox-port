.class public Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView$a;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lx6/b;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private g()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    iget-object v0, v0, Lx6/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lw6/i;->d(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f120a53

    const v2, 0x7f120a52

    const v3, 0x7f120a4f

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    invoke-virtual {v0}, Lx6/b;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->b:Landroid/view/View;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->c:Landroid/widget/TextView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->g:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    iget-object v1, v1, Lx6/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lw6/i;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    iget-object v1, v1, Lx6/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lw6/i;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    iget-object p1, p1, Lx6/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lw6/i;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    sget p2, Lx6/a;->a:I

    iput p2, p1, Lx6/b;->c:I

    sget p2, Lx6/a;->i:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    sget p2, Lx6/a;->a:I

    iput p2, p1, Lx6/b;->c:I

    sget p2, Lx6/a;->f:F

    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lx6/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->g()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b010b

    if-eq p1, v0, :cond_5

    const v0, 0x7f0b0111

    if-eq p1, v0, :cond_4

    const v0, 0x7f0b01b9

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->a:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView$a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    invoke-virtual {v0}, Lx6/b;->c()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView$a;->a(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    invoke-static {p1, v0}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    iget-object p1, p1, Lx6/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lw6/i;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    invoke-virtual {p1}, Lx6/b;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    iget-object p1, p1, Lx6/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lw6/i;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    invoke-virtual {p1}, Lx6/b;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    iget-object v0, v0, Lx6/b;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lw6/i;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    sget v0, Lx6/a;->a:I

    iput v0, p1, Lx6/b;->c:I

    sget v0, Lx6/a;->i:F

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    sget v0, Lx6/a;->a:I

    iput v0, p1, Lx6/b;->c:I

    sget v0, Lx6/a;->f:F

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lx6/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->g()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    invoke-static {p1, v0}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->i:Lx6/b;

    invoke-static {v0, v1}, Lw6/i;->u(Landroid/content/Context;Lx6/b;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b010b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->b:Landroid/view/View;

    const v0, 0x7f0b0c6f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0cbf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0954

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->f:Landroid/widget/TextView;

    const v0, 0x7f0b0bc5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->g:Landroid/widget/TextView;

    const v0, 0x7f0b0bc6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b01b9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const v2, 0x7f0806b6

    goto :goto_0

    :cond_0
    const v2, 0x7f0806b7

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v0, 0x7f0806b9

    goto :goto_1

    :cond_1
    const v0, 0x7f0806ba

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f120a57

    goto :goto_2

    :cond_2
    const v2, 0x7f120a58

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->j:Z

    return-void
.end method

.method public setOnGuideViewEvent(Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView;->a:Lcom/miui/gamebooster/shoulderkey/widget/GbGameModeView$a;

    return-void
.end method

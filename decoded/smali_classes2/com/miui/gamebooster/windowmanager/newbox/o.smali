.class public Lcom/miui/gamebooster/windowmanager/newbox/o;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private final a:Ln6/c;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

.field private e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILn6/c;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->b:Ljava/lang/String;

    iput p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->c:I

    iput-object p4, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->a:Ln6/c;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/o;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01c2

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, La8/k0;->o(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/o;->g()V

    return-void
.end method

.method private g()V
    .locals 4

    const v0, 0x7f0b0bfe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->d:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    const v0, 0x7f0b02a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->e:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->b:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->c:I

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->a:Ln6/c;

    invoke-static {v0, v1, v2, v3}, Lt8/a;->f(Landroid/content/Context;Ljava/lang/String;ILn6/c;)Lt8/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView:type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->a:Ln6/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is invalid!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseChildView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lt8/a;->setContainerView(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->d:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    invoke-virtual {v0}, Lt8/a;->getTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;->setTitle(I)V

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public setBackClick(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/o;->d:Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/windowmanager/GBTopbarLayout;->setOnBackListener(Lcom/miui/gamebooster/windowmanager/GBTopbarLayout$a;)V

    :cond_0
    return-void
.end method

.class public Lw8/j;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

.field private b:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

.field private c:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/CheckBox;

.field private m:Z

.field private n:Lw8/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lw8/j;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lw8/j;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lw8/j;->l:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 11

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01f2

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0482

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    iput-object v0, p0, Lw8/j;->a:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    const v0, 0x7f0b0485

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    iput-object v0, p0, Lw8/j;->b:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    const v0, 0x7f0b0484

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    iput-object v0, p0, Lw8/j;->c:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    const v0, 0x7f0b0a7f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lw8/j;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0a81

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lw8/j;->f:Landroid/widget/TextView;

    const v0, 0x7f0b0a80

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lw8/j;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lw8/j;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121653

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v6, v2, v7

    const/16 v6, 0x1c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v6, v2, v9

    const/4 v6, 0x4

    aput-object v4, v2, v6

    const/4 v6, 0x5

    aput-object v8, v2, v6

    const/4 v6, 0x6

    aput-object v10, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw8/j;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121657

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v8, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw8/j;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121655

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v10, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b070f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lw8/j;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0710

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lw8/j;->i:Landroid/widget/TextView;

    const v0, 0x7f0b0a7e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lw8/j;->h:Landroid/widget/TextView;

    const v0, 0x7f0b0479

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lw8/j;->l:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120bad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw8/j;->l:Landroid/widget/CheckBox;

    new-instance v1, Lw8/j$a;

    invoke-direct {v1, p0, p1}, Lw8/j$a;-><init>(Lw8/j;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lw8/j;->a:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b24

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lw8/j;->b:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b28

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v8, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lw8/j;->c:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b26

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v10, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->b(Ljava/lang/String;I)V

    const v0, 0x7f0b0a79

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lw8/j;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b025f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lw8/j;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lw8/j;->e()V

    new-instance v0, Lw8/j$b;

    invoke-direct {v0, p0, p1}, Lw8/j$b;-><init>(Lw8/j;Landroid/content/Context;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    iget-object v0, p0, Lw8/j;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120acb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lw8/j;->a:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw8/j;->b:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw8/j;->c:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw8/j;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lw8/j;->e()V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lw8/j;->a:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    sget-object v1, Ln6/d;->a:Ln6/d;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->setGiftStatus(Ln6/d;)V

    iget-object v0, p0, Lw8/j;->b:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->setGiftStatus(Ln6/d;)V

    iget-object v0, p0, Lw8/j;->c:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->setGiftStatus(Ln6/d;)V

    invoke-static {}, Ls7/a;->b()Ls7/a;

    move-result-object v0

    invoke-virtual {v0}, Ls7/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw8/j;->c:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lw8/j;->b:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lw8/j;->a:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    :goto_1
    sget-object v2, Ln6/d;->b:Ln6/d;

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->setGiftStatus(Ln6/d;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ls7/a;->b()Ls7/a;

    move-result-object v0

    invoke-virtual {v0}, Ls7/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lw8/j;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lw8/j;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a70

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw8/j;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080733

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lw8/j;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lw8/j;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a6a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw8/j;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08072c

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lw8/j;->h:Landroid/widget/TextView;

    invoke-static {}, Ls7/a;->b()Ls7/a;

    move-result-object v1

    invoke-virtual {v1}, Ls7/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lw8/j;->e()V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lw8/j;->a:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw8/j;->b:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw8/j;->c:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw8/j;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw8/j;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120acc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAdded()Z
    .locals 1

    iget-boolean v0, p0, Lw8/j;->m:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b025f

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0a79

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw8/j;->n:Lw8/a;

    invoke-interface {p1}, Lw8/a;->B()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lw8/j;->n:Lw8/a;

    invoke-interface {p1}, Lw8/a;->m()V

    :goto_0
    return-void
.end method

.method public setAdded(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lw8/j;->m:Z

    return-void
.end method

.method public setGiftCallBack(Lw8/a;)V
    .locals 1

    iput-object p1, p0, Lw8/j;->n:Lw8/a;

    iget-object v0, p0, Lw8/j;->a:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->setGiftCallBack(Lw8/a;)V

    iget-object v0, p0, Lw8/j;->b:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->setGiftCallBack(Lw8/a;)V

    iget-object v0, p0, Lw8/j;->c:Lcom/miui/gamebooster/xunyou/XunyouGiftItem;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/xunyou/XunyouGiftItem;->setGiftCallBack(Lw8/a;)V

    return-void
.end method

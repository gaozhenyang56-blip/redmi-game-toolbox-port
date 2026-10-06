.class public Lcom/miui/gamebooster/beauty/conversation/view/LightView;
.super Le6/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lb6/b;


# instance fields
.field private c:Lmiuix/slidingwidget/widget/SlidingButton;

.field private d:Landroid/widget/SeekBar;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroidx/recyclerview/widget/RecyclerView;

.field private i:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private j:Lq6/f;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:La6/e;

.field private m:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private n:Lmiuix/slidingwidget/widget/SlidingButton;

.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Ld6/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Le6/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f120a14

    iput p1, p0, Le6/a;->b:I

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->P()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private d(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 6

    invoke-super {p0}, Le6/a;->b()V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {v0}, Ld6/a;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->p:Z

    invoke-static {}, Ld6/a;->d()Z

    move-result v0

    const v1, 0x7f0b047b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    const v1, 0x7f0b0bde

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->f:Landroid/widget/TextView;

    const v1, 0x7f0b047a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    const v1, 0x7f0b06be

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->e:Landroid/view/ViewGroup;

    const v1, 0x7f0b0cf9

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->g:Landroid/widget/TextView;

    const v1, 0x7f0b06bf

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->h:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b03fb

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0b0476

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->n:Lmiuix/slidingwidget/widget/SlidingButton;

    const v1, 0x7f0b0c34

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {v2}, Ld6/a;->h()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {v2}, Ld6/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {v2}, Ld6/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lx5/p;->a0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b0cf3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070aab

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->p:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1205b8

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1203c2

    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {v1}, Ld6/a;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Ld6/a;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->n:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v2, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->n:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->n:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-direct {p0, v2, v0}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->o:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/miui/gamebooster/beauty/conversation/view/LightView$a;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/beauty/conversation/view/LightView$a;-><init>(Lcom/miui/gamebooster/beauty/conversation/view/LightView;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-static {}, Lz5/a;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->k:Ljava/util/List;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->i:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v1, Lq6/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->j:Lq6/f;

    new-instance v1, La6/e;

    invoke-direct {v1, p0, v0}, La6/e;-><init>(Lb6/b;Z)V

    iput-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->l:La6/e;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->j:Lq6/f;

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->j:Lq6/f;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lq6/f;->F(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->j:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method public e(Lc6/a;Landroid/view/View;I)V
    .locals 1

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc6/d;

    invoke-virtual {p3, p1}, Lc6/d;->e(Lc6/a;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lc6/d;->f(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->j:Lq6/f;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    iget-object p2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {p2}, Ld6/a;->b()I

    move-result p3

    check-cast p1, Lc6/d;

    invoke-virtual {p1}, Lc6/d;->b()Lc6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lc6/d$a;->b()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Ld6/a;->q(II)V

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p2

    invoke-virtual {p2}, Lx5/p;->T()Lx5/e;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lc6/d;->b()Lc6/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lc6/d$a;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lx5/e;->m(I)V

    :cond_2
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {p1}, Ld6/a;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    if-eqz p2, :cond_0

    invoke-static {}, Ld6/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    :goto_1
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->f:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->n:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->o:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->f:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->l:La6/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, La6/e;->j(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->j:Lq6/f;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_3
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->T()Lx5/e;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lx5/e;->o(Z)V

    :cond_4
    invoke-static {p2}, Ld6/a;->n(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ld6/a;->o()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ld6/a;->p()V

    :goto_2
    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {p1}, Ld6/a;->t()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->n:Lmiuix/slidingwidget/widget/SlidingButton;

    if-ne p1, v0, :cond_8

    invoke-static {p2}, Ld6/a;->l(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {p1}, Ld6/a;->t()V

    iget-object p1, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->d:Landroid/widget/SeekBar;

    if-nez p2, :cond_7

    invoke-static {}, Ld6/a;->d()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->c(Landroid/view/View;Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p3

    invoke-virtual {p2, p3}, Ld6/a;->m(I)V

    iget-object p2, p0, Lcom/miui/gamebooster/beauty/conversation/view/LightView;->q:Ld6/a;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {}, Ld6/a;->e()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Ld6/a;->q(II)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->T()Lx5/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lx5/e;->n(I)V

    :cond_0
    return-void
.end method

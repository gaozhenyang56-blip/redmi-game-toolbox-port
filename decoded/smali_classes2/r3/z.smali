.class public abstract Lr3/z;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/z$d;,
        Lr3/z$c;,
        Lr3/z$a;,
        Lr3/z$e;,
        Lr3/z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/autotask/bean/n;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/Context;

.field private c:Lr3/z$c;

.field private d:Lr3/z$d;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/autotask/bean/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    iput-object p1, p0, Lr3/z;->b:Landroid/content/Context;

    iput-object p2, p0, Lr3/z;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic k(Lr3/z;Lmiuix/slidingwidget/widget/SlidingSwitch;Lcom/miui/autotask/bean/q;Lr3/z$e;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lr3/z;->s(Lmiuix/slidingwidget/widget/SlidingSwitch;Lcom/miui/autotask/bean/q;Lr3/z$e;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic l(Lr3/z;Lr3/z$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/z;->q(Lr3/z$a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lr3/z;Lr3/z$a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr3/z;->r(Lr3/z$a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private n(Lr3/z$a;Lcom/miui/autotask/bean/n;)V
    .locals 2

    iget-object v0, p1, Lr3/z$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p2}, Lr3/z;->w(Landroid/widget/TextView;Lcom/miui/autotask/bean/n;)V

    iget-object v0, p1, Lr3/z$a;->c:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p1, Lr3/z$a;->c:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/n;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Lr3/z$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lr3/z;->t(Landroid/widget/ImageView;Lcom/miui/autotask/bean/n;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lr3/x;

    invoke-direct {v0, p0, p1}, Lr3/x;-><init>(Lr3/z;Lr3/z$a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lr3/z$a;->c:Landroid/widget/RadioButton;

    new-instance v0, Lr3/y;

    invoke-direct {v0, p0, p1}, Lr3/y;-><init>(Lr3/z;Lr3/z$a;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private o(Lr3/z$b;Lcom/miui/autotask/bean/n;)V
    .locals 1

    invoke-virtual {p2}, Lcom/miui/autotask/bean/n;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lr3/z$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private p(Lr3/z$e;Lcom/miui/autotask/bean/q;)V
    .locals 2

    iget-object v0, p1, Lr3/z$e;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lr3/z$e;->b:Lmiuix/slidingwidget/widget/SlidingSwitch;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/q;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p2}, Lcom/miui/autotask/bean/q;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    new-instance v1, Lr3/w;

    invoke-direct {v1, p0, v0, p2, p1}, Lr3/w;-><init>(Lr3/z;Lmiuix/slidingwidget/widget/SlidingSwitch;Lcom/miui/autotask/bean/q;Lr3/z$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic q(Lr3/z$a;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lr3/z;->c:Lr3/z$c;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lr3/z$c;->onClick(I)V

    :cond_0
    return-void
.end method

.method private synthetic r(Lr3/z$a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p2, p0, Lr3/z;->c:Lr3/z$c;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {p2, p1, p3}, Lr3/z$c;->a(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic s(Lmiuix/slidingwidget/widget/SlidingSwitch;Lcom/miui/autotask/bean/q;Lr3/z$e;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p2, p4}, Lcom/miui/autotask/bean/q;->j(Z)V

    invoke-virtual {p2, p5}, Lcom/miui/autotask/bean/q;->i(Z)V

    iget-object p1, p0, Lr3/z;->d:Lr3/z$d;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p2

    invoke-interface {p1, p2, p5}, Lr3/z$d;->a(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lr3/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lr3/z;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lr3/z;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/n;

    invoke-virtual {p1}, Lcom/miui/autotask/bean/n;->b()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lr3/z;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/autotask/bean/n;

    instance-of v0, p1, Lr3/z$b;

    if-eqz v0, :cond_0

    check-cast p1, Lr3/z$b;

    invoke-direct {p0, p1, p2}, Lr3/z;->o(Lr3/z$b;Lcom/miui/autotask/bean/n;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lr3/z$e;

    if-eqz v0, :cond_1

    check-cast p1, Lr3/z$e;

    check-cast p2, Lcom/miui/autotask/bean/q;

    invoke-direct {p0, p1, p2}, Lr3/z;->p(Lr3/z$e;Lcom/miui/autotask/bean/q;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lr3/z$a;

    if-eqz v0, :cond_2

    check-cast p1, Lr3/z$a;

    invoke-direct {p0, p1, p2}, Lr3/z;->n(Lr3/z$a;Lcom/miui/autotask/bean/n;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lr3/z;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e00a8

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/z$b;

    invoke-direct {p2, p1}, Lr3/z$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lr3/z;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e00a9

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/z$e;

    invoke-direct {p2, p1}, Lr3/z$e;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Lr3/z;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e00a7

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/z$a;

    invoke-direct {p2, p1}, Lr3/z$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method

.method abstract t(Landroid/widget/ImageView;Lcom/miui/autotask/bean/n;)V
.end method

.method public u(Lr3/z$c;)V
    .locals 0

    iput-object p1, p0, Lr3/z;->c:Lr3/z$c;

    return-void
.end method

.method public v(Lr3/z$d;)V
    .locals 0

    iput-object p1, p0, Lr3/z;->d:Lr3/z$d;

    return-void
.end method

.method abstract w(Landroid/widget/TextView;Lcom/miui/autotask/bean/n;)V
.end method

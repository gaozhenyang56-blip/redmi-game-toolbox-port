.class public Lt9/e;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/e$a;,
        Lt9/e$e;,
        Lt9/e$d;,
        Lt9/e$c;,
        Lt9/e$b;,
        Lt9/e$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lt9/k;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt9/e;->c:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/e;->e:Z

    iput-object p1, p0, Lt9/e;->a:Landroid/content/Context;

    iput-boolean v0, p0, Lt9/e;->d:Z

    return-void
.end method

.method public static synthetic k(Lt9/e;Lcom/miui/permcenter/model/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lt9/e;->o(Lcom/miui/permcenter/model/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic l(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lt9/e;->r(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lt9/e;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt9/e;->q(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic n(Lt9/e$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lt9/e;->p(Lt9/e$b;Landroid/view/View;)V

    return-void
.end method

.method private synthetic o(Lcom/miui/permcenter/model/a;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lt9/e;->b:Lt9/k;

    invoke-interface {v0, p2, p3, p1}, Lt9/k;->e(Landroid/widget/CompoundButton;ZLcom/miui/permcenter/model/a;)V

    return-void
.end method

.method private static synthetic p(Lt9/e$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lt9/e$b;->d(Lt9/e$b;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->performClick()Z

    return-void
.end method

.method private synthetic q(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iput-boolean p2, p0, Lt9/e;->e:Z

    iget-object v0, p0, Lt9/e;->b:Lt9/k;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lt9/k;->e(Landroid/widget/CompoundButton;ZLcom/miui/permcenter/model/a;)V

    return-void
.end method

.method private static synthetic r(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;)V
    .locals 0

    check-cast p0, Lt9/e$a;

    invoke-static {p0}, Lt9/e$a;->c(Lt9/e$a;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButton;->performClick()Z

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt9/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lt9/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lt9/e;->d:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt9/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x6

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p1, 0x5

    return p1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lt9/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lt9/e;->a:Landroid/content/Context;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lxc/v$a;->c(Landroid/content/Context;Landroid/view/View;)V

    instance-of v0, p1, Lt9/e$f;

    if-eqz v0, :cond_0

    check-cast p1, Lt9/e$f;

    invoke-static {p1}, Lt9/e$f;->a(Lt9/e$f;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f120655

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lt9/e$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt9/e;->c:Ljava/util/List;

    add-int/lit8 p2, p2, -0x4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/permcenter/model/a;

    move-object v0, p1

    check-cast v0, Lt9/e$b;

    invoke-static {v0}, Lt9/e$b;->a(Lt9/e$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/permcenter/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg_icon://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lt9/e$b;->b(Lt9/e$b;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lx4/o0;->f:Lrh/c;

    invoke-static {v1, v2, v3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    invoke-static {v0}, Lt9/e$b;->b(Lt9/e$b;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v0}, Lt9/e$b;->c(Lt9/e$b;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lt9/e$b;->d(Lt9/e$b;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lt9/e$b;->d(Lt9/e$b;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v1

    new-instance v2, Lt9/a;

    invoke-direct {v2, p0, p2}, Lt9/a;-><init>(Lt9/e;Lcom/miui/permcenter/model/a;)V

    invoke-virtual {v1, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lt9/b;

    invoke-direct {v1, v0}, Lt9/b;-><init>(Lt9/e$b;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lt9/e$b;->d(Lt9/e$b;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/permcenter/model/a;->d()Z

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lt9/e$c;

    if-eqz p2, :cond_2

    check-cast p1, Lt9/e$c;

    invoke-static {p1}, Lt9/e$c;->a(Lt9/e$c;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f120726

    goto/16 :goto_0

    :cond_2
    instance-of p2, p1, Lt9/e$a;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lt9/e$a;

    invoke-static {p2}, Lt9/e$a;->a(Lt9/e$a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120654

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p2}, Lt9/e$a;->b(Lt9/e$a;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120653

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p2}, Lt9/e$a;->c(Lt9/e$a;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    new-instance v1, Lt9/c;

    invoke-direct {v1, p0}, Lt9/c;-><init>(Lt9/e;)V

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p2}, Lt9/e$a;->c(Lt9/e$a;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p2

    iget-boolean v0, p0, Lt9/e;->e:Z

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lt9/d;

    invoke-direct {v0, p1}, Lt9/d;-><init>(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    new-instance p2, Lt9/e$b;

    iget-object v0, p0, Lt9/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0439

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lt9/e$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Lt9/e$a;

    iget-object v0, p0, Lt9/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e044c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lt9/e$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    new-instance p2, Lt9/e$e;

    iget-object v0, p0, Lt9/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e043a

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lt9/e$e;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    new-instance p2, Lt9/e$c;

    iget-object v0, p0, Lt9/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e015b

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lt9/e$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_3
    new-instance p2, Lt9/e$d;

    iget-object v0, p0, Lt9/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0460

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lt9/e$d;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_4
    new-instance p2, Lt9/e$f;

    iget-object v0, p0, Lt9/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0461

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lt9/e$f;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public s(Z)V
    .locals 1

    iget-boolean v0, p0, Lt9/e;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lt9/e;->e:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public t(Lt9/k;)V
    .locals 0

    iput-object p1, p0, Lt9/e;->b:Lt9/k;

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lt9/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lt9/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt9/e;->d:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

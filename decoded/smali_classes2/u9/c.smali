.class public Lu9/c;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu9/c$c;,
        Lu9/c$b;,
        Lu9/c$a;,
        Lu9/c$d;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu9/c;->c:Ljava/util/List;

    iput-object p1, p0, Lu9/c;->a:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu9/c;->d:Z

    return-void
.end method

.method public static synthetic k(Lu9/c$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lu9/c;->n(Lu9/c$a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lu9/c;Lcom/miui/permcenter/model/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lu9/c;->m(Lcom/miui/permcenter/model/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic m(Lcom/miui/permcenter/model/a;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lu9/c;->b:Lt9/k;

    invoke-interface {v0, p2, p3, p1}, Lt9/k;->e(Landroid/widget/CompoundButton;ZLcom/miui/permcenter/model/a;)V

    return-void
.end method

.method private static synthetic n(Lu9/c$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lu9/c$a;->d(Lu9/c$a;)Lmiuix/slidingwidget/widget/SlidingButton;

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

    iget-object v0, p0, Lu9/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lu9/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lu9/c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu9/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lu9/c;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lu9/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    return v0
.end method

.method public o(Lt9/k;)V
    .locals 0

    iput-object p1, p0, Lu9/c;->b:Lt9/k;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lu9/c;->a:Landroid/content/Context;

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    instance-of v0, p1, Lu9/c$d;

    if-eqz v0, :cond_0

    check-cast p1, Lu9/c$d;

    invoke-static {p1}, Lu9/c$d;->a(Lu9/c$d;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f120f45

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lu9/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu9/c;->c:Ljava/util/List;

    add-int/lit8 p2, p2, -0x2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/permcenter/model/a;

    move-object v0, p1

    check-cast v0, Lu9/c$a;

    invoke-static {v0}, Lu9/c$a;->a(Lu9/c$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lu9/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

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

    invoke-static {v0}, Lu9/c$a;->b(Lu9/c$a;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lx4/o0;->f:Lrh/c;

    invoke-static {v1, v2, v3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    invoke-static {v0}, Lu9/c$a;->b(Lu9/c$a;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v0}, Lu9/c$a;->c(Lu9/c$a;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lu9/c$a;->d(Lu9/c$a;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lu9/c$a;->d(Lu9/c$a;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v1

    new-instance v2, Lu9/a;

    invoke-direct {v2, p0, p2}, Lu9/a;-><init>(Lu9/c;Lcom/miui/permcenter/model/a;)V

    invoke-virtual {v1, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lu9/b;

    invoke-direct {v1, v0}, Lu9/b;-><init>(Lu9/c$a;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lu9/c$a;->d(Lu9/c$a;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/permcenter/model/a;->d()Z

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lu9/c$b;

    if-eqz p2, :cond_2

    check-cast p1, Lu9/c$b;

    invoke-static {p1}, Lu9/c$b;->a(Lu9/c$b;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f120726

    goto/16 :goto_0

    :cond_2
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

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    new-instance p2, Lu9/c$a;

    iget-object v0, p0, Lu9/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0439

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lu9/c$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Lu9/c$b;

    iget-object v0, p0, Lu9/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e015b

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lu9/c$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    new-instance p2, Lu9/c$c;

    iget-object v0, p0, Lu9/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0460

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lu9/c$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    new-instance p2, Lu9/c$d;

    iget-object v0, p0, Lu9/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0461

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lu9/c$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lu9/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lu9/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu9/c;->d:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lmiuix/recyclerview/card/e;->updateGroupInfo()V

    return-void
.end method

.method public setHasStableIds()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    return-void
.end method

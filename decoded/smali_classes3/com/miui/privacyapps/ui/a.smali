.class public Lcom/miui/privacyapps/ui/a;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/privacyapps/ui/a$e;,
        Lcom/miui/privacyapps/ui/a$f;,
        Lcom/miui/privacyapps/ui/a$d;
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
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpe/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/miui/privacyapps/ui/a$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/a;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/privacyapps/ui/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic k(Lcom/miui/privacyapps/ui/a;)Lcom/miui/privacyapps/ui/a$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/privacyapps/ui/a;->d:Lcom/miui/privacyapps/ui/a$e;

    return-object p0
.end method

.method private l()[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpe/c;

    invoke-virtual {v5}, Lpe/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lpe/c;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    aput v1, v0, v3

    return-object v0
.end method

.method private m(Lcom/miui/privacyapps/ui/a$d;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpe/c;

    invoke-direct {p0}, Lcom/miui/privacyapps/ui/a;->l()[I

    move-result-object v0

    sget-object v1, Lcom/miui/privacyapps/ui/a$c;->a:[I

    invoke-virtual {p2}, Lpe/c;->b()Lnb/d;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    aget p2, v0, v1

    aget v0, v0, v2

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10002c

    invoke-virtual {v0, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/privacyapps/ui/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f100110

    aget v4, v0, v2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Object;

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/privacyapps/ui/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f100111

    aget v4, v0, v1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1}, Lcom/miui/privacyapps/ui/a$d;->a(Lcom/miui/privacyapps/ui/a$d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/privacyapps/ui/a;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    return p1
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpe/c;

    invoke-virtual {p1}, Lpe/c;->b()Lnb/d;

    move-result-object v0

    sget-object v1, Lnb/d;->a:Lnb/d;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lpe/c;->b()Lnb/d;

    move-result-object v0

    sget-object v1, Lnb/d;->b:Lnb/d;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lpe/c;->b()Lnb/d;

    move-result-object p1

    sget-object v0, Lnb/d;->c:Lnb/d;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public n(Lcom/miui/privacyapps/ui/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/a;->d:Lcom/miui/privacyapps/ui/a$e;

    return-void
.end method

.method public o(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lpe/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpe/d;

    invoke-virtual {v2}, Lpe/d;->a()Lnb/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lpe/c;-><init>(Lnb/d;)V

    iget-object v2, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpe/d;

    invoke-virtual {v2}, Lpe/d;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    instance-of v0, p1, Lcom/miui/privacyapps/ui/a$f;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/privacyapps/ui/a$f;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpe/c;

    invoke-virtual {p2}, Lpe/c;->g()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lpe/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lpe/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_icon://"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/privacyapps/ui/a$f;->a:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v1, v2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v0, p1, Lcom/miui/privacyapps/ui/a$f;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lpe/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/privacyapps/ui/a$f;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/privacyapps/ui/a$f;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/miui/privacyapps/ui/a$f;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p1, Lcom/miui/privacyapps/ui/a$f;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    invoke-virtual {p2}, Lpe/c;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p1, Lcom/miui/privacyapps/ui/a$f;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    new-instance v1, Lcom/miui/privacyapps/ui/a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/privacyapps/ui/a$a;-><init>(Lcom/miui/privacyapps/ui/a;Lcom/miui/privacyapps/ui/a$f;Lpe/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/privacyapps/ui/a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/privacyapps/ui/a$b;-><init>(Lcom/miui/privacyapps/ui/a;Lcom/miui/privacyapps/ui/a$f;Lpe/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/miui/privacyapps/ui/a$d;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/miui/privacyapps/ui/a$d;

    invoke-direct {p0, p1, p2}, Lcom/miui/privacyapps/ui/a;->m(Lcom/miui/privacyapps/ui/a$d;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/miui/privacyapps/ui/a$d;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0096

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/privacyapps/ui/a$d;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/miui/privacyapps/ui/a$f;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e03bb

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/privacyapps/ui/a$f;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method

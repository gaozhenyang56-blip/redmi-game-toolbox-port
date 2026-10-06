.class public Lcom/miui/powercenter/batteryhistory/z;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/z$c;,
        Lcom/miui/powercenter/batteryhistory/z$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lcom/miui/powercenter/batteryhistory/z$d;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile n:Z


# instance fields
.field private a:Lcom/miui/powercenter/PowerMainActivity;

.field private b:Lcom/miui/powercenter/batteryhistory/x;

.field private c:Lcom/miui/powercenter/batteryhistory/c;

.field private d:Lcom/miui/powercenter/batteryhistory/d0;

.field private e:Lcom/miui/powercenter/batteryhistory/y;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/PowerSaveMainFragment;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/recyclerview/widget/RecyclerView;

.field private h:D

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/r;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/miui/powercenter/batteryhistory/z$c;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/powercenter/PowerMainActivity;Lcom/miui/powercenter/PowerSaveMainFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->k:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/z;->l:Z

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/z;->m:Z

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->a:Lcom/miui/powercenter/PowerMainActivity;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->f:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/z;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/r;

    invoke-direct {p2, v0}, Lcom/miui/powercenter/batteryhistory/r;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/r;

    const/4 p3, 0x1

    invoke-direct {p2, p3, v0}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance p2, Lcom/miui/powercenter/batteryhistory/r;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p3}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/miui/powercenter/batteryhistory/z$a;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/batteryhistory/z$a;-><init>(Lcom/miui/powercenter/batteryhistory/z;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->j:Lcom/miui/powercenter/batteryhistory/z$c;

    return-void
.end method

.method static synthetic k(Lcom/miui/powercenter/batteryhistory/z;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/z;->w(Z)V

    return-void
.end method

.method static synthetic l(Lcom/miui/powercenter/batteryhistory/z;Ljava/util/List;DZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/powercenter/batteryhistory/z;->m(Ljava/util/List;DZ)V

    return-void
.end method

.method private m(Ljava/util/List;DZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;DZ)V"
        }
    .end annotation

    sput-boolean p4, Lcom/miui/powercenter/batteryhistory/z;->n:Z

    iget-object p4, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    const/high16 p4, -0x80000000

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v4, Lcom/miui/powercenter/batteryhistory/r;

    invoke-direct {v4, v1, p4}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v3, Lcom/miui/powercenter/batteryhistory/r;

    invoke-direct {v3, v0, v1}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p4, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v3, Lcom/miui/powercenter/batteryhistory/r;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x5

    if-le v2, p4, :cond_0

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/z;->l:Z

    if-nez v0, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v5, Lcom/miui/powercenter/batteryhistory/r;

    const/4 v6, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-direct {v5, v6, v7, v4}, Lcom/miui/powercenter/batteryhistory/r;-><init>(ILcom/miui/powercenter/legacypowerrank/BatteryData;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le v2, p4, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/r;

    invoke-direct {v0, p4, v4}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v2, Lcom/miui/powercenter/batteryhistory/r;

    invoke-direct {v2, v1, p4}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance p4, Lcom/miui/powercenter/batteryhistory/r;

    invoke-direct {p4, v0, v1}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iput-wide p2, p0, Lcom/miui/powercenter/batteryhistory/z;->h:D

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lmiuix/recyclerview/card/e;->updateGroupInfo()V

    return-void
.end method

.method private w(Z)V
    .locals 7

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/z;->l:Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v5, Lcom/miui/powercenter/batteryhistory/r;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v3, v2}, Lcom/miui/powercenter/batteryhistory/r;-><init>(ILcom/miui/powercenter/legacypowerrank/BatteryData;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    new-instance v3, Lcom/miui/powercenter/batteryhistory/r;

    invoke-direct {v3, v1, v2}, Lcom/miui/powercenter/batteryhistory/r;-><init>(II)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    sub-int v4, p1, v1

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewGroup(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/r;

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/r;->c()I

    move-result p1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/batteryhistory/r;

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/r;->b()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/z;->l:Z

    return v0
.end method

.method public o(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/z;->m:Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->e:Lcom/miui/powercenter/batteryhistory/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/batteryhistory/y;->E(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/powercenter/batteryhistory/z$d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/z;->p(Lcom/miui/powercenter/batteryhistory/z$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/z;->q(Landroid/view/ViewGroup;I)Lcom/miui/powercenter/batteryhistory/z$d;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->d:Lcom/miui/powercenter/batteryhistory/d0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/d0;->e0()V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->b:Lcom/miui/powercenter/batteryhistory/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/x;->t()V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->e:Lcom/miui/powercenter/batteryhistory/y;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/y;->H()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/powercenter/batteryhistory/z$d;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/z;->s(Lcom/miui/powercenter/batteryhistory/z$d;)V

    return-void
.end method

.method public p(Lcom/miui/powercenter/batteryhistory/z$d;I)V
    .locals 7
    .param p1    # Lcom/miui/powercenter/batteryhistory/z$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-virtual {p0, p2}, Lcom/miui/powercenter/batteryhistory/z;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/r;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/r;->a()Lcom/miui/powercenter/legacypowerrank/BatteryData;

    move-result-object v2

    iget-wide v3, p0, Lcom/miui/powercenter/batteryhistory/z;->h:D

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/powercenter/batteryhistory/z$d;->b(Lcom/miui/powercenter/legacypowerrank/BatteryData;DII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/z$d;->a()V

    :goto_0
    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)Lcom/miui/powercenter/batteryhistory/z$d;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/miui/powercenter/batteryhistory/e0;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->a:Lcom/miui/powercenter/PowerMainActivity;

    iget-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/z;->l:Z

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/powercenter/batteryhistory/e0;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->j:Lcom/miui/powercenter/batteryhistory/z$c;

    invoke-virtual {p2, p1}, Lcom/miui/powercenter/batteryhistory/e0;->i(Lcom/miui/powercenter/batteryhistory/z$c;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/miui/powercenter/batteryhistory/f0;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->a:Lcom/miui/powercenter/PowerMainActivity;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/z;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/powercenter/batteryhistory/f0;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p2

    :cond_2
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->c:Lcom/miui/powercenter/batteryhistory/c;

    if-nez p2, :cond_3

    new-instance p2, Lcom/miui/powercenter/batteryhistory/c;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-direct {p2, p1, v0}, Lcom/miui/powercenter/batteryhistory/c;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->c:Lcom/miui/powercenter/batteryhistory/c;

    :cond_3
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->c:Lcom/miui/powercenter/batteryhistory/c;

    return-object p1

    :cond_4
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->b:Lcom/miui/powercenter/batteryhistory/x;

    if-nez p2, :cond_5

    new-instance p2, Lcom/miui/powercenter/batteryhistory/x;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-direct {p2, p1, v0}, Lcom/miui/powercenter/batteryhistory/x;-><init>(Landroid/view/ViewGroup;Lcom/miui/powercenter/PowerMainActivity;)V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->b:Lcom/miui/powercenter/batteryhistory/x;

    :cond_5
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->b:Lcom/miui/powercenter/batteryhistory/x;

    return-object p1

    :cond_6
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->e:Lcom/miui/powercenter/batteryhistory/y;

    if-nez p2, :cond_7

    new-instance p2, Lcom/miui/powercenter/batteryhistory/y;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->a:Lcom/miui/powercenter/PowerMainActivity;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/z;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/powercenter/batteryhistory/y;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/miui/powercenter/PowerSaveMainFragment;)V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->e:Lcom/miui/powercenter/batteryhistory/y;

    :cond_7
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->e:Lcom/miui/powercenter/batteryhistory/y;

    iget-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/z;->m:Z

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/batteryhistory/y;->E(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->e:Lcom/miui/powercenter/batteryhistory/y;

    return-object p1

    :cond_8
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->d:Lcom/miui/powercenter/batteryhistory/d0;

    if-nez p2, :cond_9

    new-instance p2, Lcom/miui/powercenter/batteryhistory/d0;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->a:Lcom/miui/powercenter/PowerMainActivity;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/z;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-direct {p2, p1, v0, v1}, Lcom/miui/powercenter/batteryhistory/d0;-><init>(Landroid/view/ViewGroup;Lcom/miui/powercenter/PowerMainActivity;Lcom/miui/powercenter/PowerSaveMainFragment;)V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->d:Lcom/miui/powercenter/batteryhistory/d0;

    :cond_9
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/z;->d:Lcom/miui/powercenter/batteryhistory/d0;

    return-object p1
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->d:Lcom/miui/powercenter/batteryhistory/d0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/d0;->d0()V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->e:Lcom/miui/powercenter/batteryhistory/y;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/y;->G()V

    :cond_1
    return-void
.end method

.method public s(Lcom/miui/powercenter/batteryhistory/z$d;)V
    .locals 0
    .param p1    # Lcom/miui/powercenter/batteryhistory/z$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/z$d;->c()V

    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->d:Lcom/miui/powercenter/batteryhistory/d0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/d0;->g0()V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->e:Lcom/miui/powercenter/batteryhistory/y;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/y;->J()V

    :cond_1
    return-void
.end method

.method public u(Ljava/util/List;DZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;DZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->k:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide/16 p2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v1}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v1

    add-double/2addr p2, v1

    goto :goto_0

    :cond_1
    move-wide v4, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "totalConsume="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PowerMainAdapter"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/z;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/miui/powercenter/batteryhistory/z$b;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/miui/powercenter/batteryhistory/z$b;-><init>(Lcom/miui/powercenter/batteryhistory/z;Ljava/util/List;DZ)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v4, v5, p4}, Lcom/miui/powercenter/batteryhistory/z;->m(Ljava/util/List;DZ)V

    :goto_1
    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/z;->l:Z

    return-void
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z;->b:Lcom/miui/powercenter/batteryhistory/x;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/x;->v()V

    return-void
.end method

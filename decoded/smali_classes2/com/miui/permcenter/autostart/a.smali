.class public Lcom/miui/permcenter/autostart/a;
.super Lwb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/autostart/a$f;,
        Lcom/miui/permcenter/autostart/a$g;,
        Lcom/miui/permcenter/autostart/a$c;,
        Lcom/miui/permcenter/autostart/a$e;,
        Lcom/miui/permcenter/autostart/a$d;,
        Lcom/miui/permcenter/autostart/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwb/a<",
        "Lcom/miui/permcenter/autostart/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lob/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/miui/permcenter/autostart/a$f;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/autostart/AutoStartManagementActivity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 1

    invoke-direct {p0}, Lwb/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    new-instance v0, Lcom/miui/permcenter/autostart/a$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/autostart/a$a;-><init>(Lcom/miui/permcenter/autostart/a;)V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/a;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/a;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic l(Lcom/miui/permcenter/autostart/a;Lcom/miui/permcenter/autostart/a$g;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/autostart/a;->o(Lcom/miui/permcenter/autostart/a$g;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/miui/permcenter/autostart/a;)Lcom/miui/permcenter/autostart/a$f;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/autostart/a;->c:Lcom/miui/permcenter/autostart/a$f;

    return-object p0
.end method

.method private synthetic o(Lcom/miui/permcenter/autostart/a$g;ILandroid/view/View;)V
    .locals 1

    iget-object p3, p1, Lcom/miui/permcenter/autostart/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    iget-object p1, p1, Lcom/miui/permcenter/autostart/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/a;->c:Lcom/miui/permcenter/autostart/a$f;

    xor-int/lit8 p3, p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/miui/permcenter/autostart/a$f;->a(IZ)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob/a;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewGroup(I)I
    .locals 3

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob/a;

    invoke-virtual {p1}, Lob/a;->a()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob/a;

    invoke-virtual {p1}, Lob/a;->a()I

    move-result p1

    return p1
.end method

.method public n(I)Lob/b;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/a;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lob/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/permcenter/autostart/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/autostart/a;->p(Lcom/miui/permcenter/autostart/a$b;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/permcenter/autostart/a$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/permcenter/autostart/a;->q(Lcom/miui/permcenter/autostart/a$b;ILjava/util/List;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/autostart/a;->r(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/autostart/a$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/miui/permcenter/autostart/a$b;I)V
    .locals 3
    .param p1    # Lcom/miui/permcenter/autostart/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lwb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lxc/v;->a:Lxc/v$a;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lob/a;

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/autostart/a$b;->a(Lob/a;)V

    instance-of v0, p1, Lcom/miui/permcenter/autostart/a$g;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/miui/permcenter/autostart/a$g;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lnb/a;

    invoke-direct {v1, p0, v0, p2}, Lnb/a;-><init>(Lcom/miui/permcenter/autostart/a;Lcom/miui/permcenter/autostart/a$g;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public q(Lcom/miui/permcenter/autostart/a$b;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/miui/permcenter/autostart/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/autostart/a$b;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PLAY_TITLE"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/autostart/a$b;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p2, Lcom/miui/permcenter/autostart/a$b;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/miui/permcenter/autostart/a$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    new-instance p2, Lcom/miui/permcenter/autostart/a$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e015b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/autostart/a$c;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    new-instance p2, Lcom/miui/permcenter/autostart/a$e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0461

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/autostart/a$e;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    new-instance p2, Lcom/miui/permcenter/autostart/a$g;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0430

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p2, p1, v0}, Lcom/miui/permcenter/autostart/a$g;-><init>(Landroid/view/View;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :pswitch_3
    new-instance p2, Lcom/miui/permcenter/autostart/a$d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e02aa

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/autostart/a$d;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public s(Lcom/miui/permcenter/autostart/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/a;->c:Lcom/miui/permcenter/autostart/a$f;

    return-void
.end method

.method public setHasStableIds()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnb/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-boolean v0, Lcom/miui/permcenter/o;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    new-instance v1, Lob/e;

    invoke-direct {v1}, Lob/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-static {p1}, Lob/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnb/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lob/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lob/a;

    invoke-virtual {v1}, Lob/a;->a()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lob/a;->a()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/permcenter/autostart/a;->b:Ljava/util/List;

    new-instance v0, Lob/c;

    invoke-direct {v0}, Lob/c;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

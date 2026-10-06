.class Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;
.super Lcom/miui/antispam/ui/view/RecyclerViewExt$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/AutoTaskManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/antispam/ui/view/RecyclerViewExt$d<",
        "Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/content/Context;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/autotask/AutoTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->h:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-direct {p0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->g:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->f:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/content/Context;)V

    return-void
.end method

.method private setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/autotask/AutoTask;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic w(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->setData(Ljava/util/List;)V

    return-void
.end method

.method private x(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/powercenter/autotask/r;->c(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->y(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->z(Landroid/view/ViewGroup;I)Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;

    move-result-object p1

    return-object p1
.end method

.method public y(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;I)V
    .locals 5
    .param p1    # Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTask;

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->f:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/powercenter/autotask/r;->b(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/miui/powercenter/autotask/r;->g(Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery_level_up"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "battery_level_down"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "hour_minute"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->a:Landroid/widget/ImageView;

    const v2, 0x7f080dcb

    goto :goto_1

    :cond_1
    const-string v2, "hour_minute_duration"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->a:Landroid/widget/ImageView;

    const v2, 0x7f08103b

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->a:Landroid/widget/ImageView;

    const v2, 0x7f08045e

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->x(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->e:Landroid/widget/CheckBox;

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->q(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->d:Lcom/miui/common/ui/HoverSlidingSwitch;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->e:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->d:Lcom/miui/common/ui/HoverSlidingSwitch;

    iget-boolean v2, p0, Lcom/miui/antispam/ui/view/RecyclerViewExt$d;->e:Z

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;->d:Lcom/miui/common/ui/HoverSlidingSwitch;

    new-instance v2, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$a;

    invoke-direct {v2, p0, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$a;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;Lcom/miui/powercenter/autotask/AutoTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d$b;-><init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;ILcom/miui/powercenter/autotask/AutoTaskManageActivity$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public z(Landroid/view/ViewGroup;I)Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$d;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e03ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$e;-><init>(Landroid/view/View;Lcom/miui/powercenter/autotask/AutoTaskManageActivity$a;)V

    return-object p2
.end method

.class public final Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "BH-RecentNumberAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mDisplayedNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mListener:Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRecentNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->Companion:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final addNumber(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final deleteNumber(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getNumber(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mDisplayedNumbers!![index]"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;I)V
    .locals 2
    .param p1    # Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mListener:Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;

    invoke-virtual {p1, v0, p2, v1}, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->bindData(Ljava/lang/String;ILcom/miui/networkassistant/ui/adapter/OnItemClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026mber_item, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final search(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "number"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Ljk/f;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mDisplayedNumbers:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final setData(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mRecentNumbers:Ljava/util/ArrayList;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->search(Ljava/lang/String;)V

    return-void
.end method

.method public final setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->mListener:Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;

    return-void
.end method

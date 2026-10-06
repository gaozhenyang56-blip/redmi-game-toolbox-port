.class public final Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/networkassistant/ui/base/recyclerview/ItemViewType<",
        "Lcom/miui/networkassistant/model/WhiteListHeaderItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;->context:Landroid/content/Context;

    return-void
.end method

.method private final resetPadItemsPadding(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.miui.common.base.BaseActivity"

    invoke-static {p2, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/miui/common/base/BaseActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkType(Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;I)Z
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p1, p1, Lcom/miui/networkassistant/model/WhiteListHeaderItem;

    return p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;->context:Landroid/content/Context;

    return-object v0
.end method

.method public onBindViewHolder(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;Lcom/miui/networkassistant/model/WhiteListHeaderItem;I)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/networkassistant/model/WhiteListHeaderItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "null cannot be cast to non-null type com.miui.networkassistant.ui.base.recyclerview.impl.HeaderItemViewType.ViewHolder"

    invoke-static {p1, p3}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType$ViewHolder;

    invoke-virtual {p3}, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/WhiteListHeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;->resetPadItemsPadding(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;I)V
    .locals 0

    check-cast p2, Lcom/miui/networkassistant/model/WhiteListHeaderItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;->onBindViewHolder(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;Lcom/miui/networkassistant/model/WhiteListHeaderItem;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e02ad

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(context).inflate(R.\u2026_group_header_view, null)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType$ViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;->context:Landroid/content/Context;

    return-void
.end method

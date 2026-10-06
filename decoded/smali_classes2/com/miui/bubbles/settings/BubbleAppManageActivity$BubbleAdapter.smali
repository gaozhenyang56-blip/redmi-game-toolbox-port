.class Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/settings/BubbleAppManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BubbleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/bubbles/settings/BubbleApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/bubbles/settings/BubbleApp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method public static synthetic k(Lcom/miui/bubbles/settings/BubbleApp;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;->lambda$onBindViewHolder$0(Lcom/miui/bubbles/settings/BubbleApp;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$0(Lcom/miui/bubbles/settings/BubbleApp;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/miui/bubbles/settings/BubbleApp;->setChecked(Z)Lcom/miui/bubbles/settings/BubbleApp;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/bubbles/settings/BubblesSettings;->asyncUserSettingsToSharedPreference(Lcom/miui/bubbles/settings/BubbleApp;)V

    invoke-virtual {p0}, Lcom/miui/bubbles/settings/BubbleApp;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleAppSwitchChanged(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;->onBindViewHolder(Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;I)V

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

    check-cast p1, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;->onBindViewHolder(Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;ILjava/util/List;)V
    .locals 2
    .param p1    # Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;
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
            "Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/bubbles/settings/BubbleApp;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/miui/bubbles/settings/BubbleApp;->appName:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;->checkBox:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2}, Lcom/miui/bubbles/settings/BubbleApp;->isChecked()Z

    move-result v0

    invoke-virtual {p3, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget p3, p2, Lcom/miui/bubbles/settings/BubbleApp;->userId:I

    const/16 v0, 0x3e7

    if-ne p3, v0, :cond_0

    iget-object p3, p2, Lcom/miui/bubbles/settings/BubbleApp;->pkg:Ljava/lang/String;

    const-string v0, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/miui/bubbles/settings/BubbleApp;->pkg:Ljava/lang/String;

    const-string v0, "pkg_icon://"

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;->iconView:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->f:Lrh/c;

    invoke-static {p3, v0, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    goto :goto_1

    :cond_1
    iget-object p3, p1, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;->checkBox:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2}, Lcom/miui/bubbles/settings/BubbleApp;->isChecked()Z

    move-result v0

    invoke-virtual {p3, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :goto_1
    iget-object p1, p1, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;->checkBox:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance p3, Lcom/miui/bubbles/settings/c;

    invoke-direct {p3, p2}, Lcom/miui/bubbles/settings/c;-><init>(Lcom/miui/bubbles/settings/BubbleApp;)V

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/bubbles/settings/BubbleApp;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/bubbles/settings/BubbleApp;

    invoke-virtual {p1}, Lcom/miui/bubbles/settings/BubbleApp;->toggleChecked()Lcom/miui/bubbles/settings/BubbleApp;

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-string v0, "refresh_check_state"

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/miui/bubbles/R$layout;->item_layout_bubble_management:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

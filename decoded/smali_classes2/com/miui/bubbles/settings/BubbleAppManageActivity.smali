.class public Lcom/miui/bubbles/settings/BubbleAppManageActivity;
.super Lcom/miui/common/SCBaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/settings/BubbleAppManageActivity$ViewHolder;,
        Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;,
        Lcom/miui/bubbles/settings/BubbleAppManageActivity$DataLoadCallback;,
        Lcom/miui/bubbles/settings/BubbleAppManageActivity$LoadBubbleAppTask;
    }
.end annotation


# instance fields
.field private iv_empty_app_icon:Landroid/widget/ImageView;

.field private final mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/bubbles/settings/BubbleApp;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleAdapter:Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;

.field private mLoadBubbleAppTask:Lcom/miui/bubbles/settings/BubbleAppManageActivity$LoadBubbleAppTask;

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mSearchView:Landroid/view/View;

.field private tv_empty_desc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/SCBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mAppList:Ljava/util/List;

    return-void
.end method

.method public static synthetic c0(Lcom/miui/bubbles/settings/BubbleAppManageActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->lambda$onCreate$0(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->tv_empty_desc:Landroid/widget/TextView;

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->tv_empty_desc:Landroid/widget/TextView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->iv_empty_app_icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mBubbleAdapter:Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public handleSearchViewClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/SCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    sget v0, Lcom/miui/bubbles/R$layout;->activity_bubble_app_manage:I

    invoke-virtual {p0, v0}, Lcom/miui/common/SCBaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/bubbles/R$string;->bubble_app_manage:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    sget v0, Lcom/miui/bubbles/R$id;->rv_app_list:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    sget v0, Lcom/miui/bubbles/R$id;->search_input_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mSearchView:Landroid/view/View;

    sget v0, Lcom/miui/bubbles/R$id;->tv_empty_desc:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->tv_empty_desc:Landroid/widget/TextView;

    sget v0, Lcom/miui/bubbles/R$id;->iv_empty_app_icon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->iv_empty_app_icon:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mAppList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mBubbleAdapter:Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mBubbleAdapter:Lcom/miui/bubbles/settings/BubbleAppManageActivity$BubbleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mLoadBubbleAppTask:Lcom/miui/bubbles/settings/BubbleAppManageActivity$LoadBubbleAppTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/miui/bubbles/settings/BubbleAppManageActivity$LoadBubbleAppTask;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/miui/bubbles/settings/a;

    invoke-direct {v2, p0}, Lcom/miui/bubbles/settings/a;-><init>(Lcom/miui/bubbles/settings/BubbleAppManageActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/bubbles/settings/BubbleAppManageActivity$LoadBubbleAppTask;-><init>(Landroid/content/Context;Lcom/miui/bubbles/settings/BubbleAppManageActivity$DataLoadCallback;)V

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mLoadBubbleAppTask:Lcom/miui/bubbles/settings/BubbleAppManageActivity$LoadBubbleAppTask;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    iget-object p1, p0, Lcom/miui/bubbles/settings/BubbleAppManageActivity;->mSearchView:Landroid/view/View;

    new-instance v0, Lcom/miui/bubbles/settings/b;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/settings/b;-><init>(Lcom/miui/bubbles/settings/BubbleAppManageActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

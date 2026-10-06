.class public Lcom/miui/optimizecenter/storage/AppStorageListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/miui/optimizecenter/storage/a$d;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lra/d;

.field private c:Lcom/miui/optimizecenter/storage/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwa/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Lcom/miui/optimizecenter/storage/view/EmptyView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic d0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Lcom/miui/optimizecenter/storage/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->c:Lcom/miui/optimizecenter/storage/a;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Lra/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->b:Lra/d;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->i0(Z)V

    return-void
.end method

.method private i0(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->f:Lcom/miui/optimizecenter/storage/view/EmptyView;

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->f:Lcom/miui/optimizecenter/storage/view/EmptyView;

    invoke-virtual {p1, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public K(Lwa/a;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->b:Lra/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public j0(Lwa/a;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p1, Lwa/a;->pkgName:Ljava/lang/String;

    const-string v1, "model"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, p1, Lwa/a;->uid:I

    const-string p2, "uId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3e8

    if-ne p1, p3, :cond_0

    const/16 p1, 0x44c

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->b:Lra/d;

    if-eqz p1, :cond_0

    const-string p1, "AppStorageListActivity"

    const-string p2, "App data is change~"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->b:Lra/d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->b:Lra/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e004d

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const p1, 0x7f0b0100

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->c:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {p1, p0}, Lcom/miui/optimizecenter/storage/a;->S(Lcom/miui/optimizecenter/storage/a$d;)V

    new-instance p1, Lra/d;

    invoke-direct {p1, p0}, Lra/d;-><init>(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->b:Lra/d;

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->b:Lra/d;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    const p1, 0x7f0b06cf

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->e:Landroid/view/View;

    const p1, 0x7f0b036e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/view/EmptyView;

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->f:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const v0, 0x7f120723

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setHintView(I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->c:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/a;->z()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;-><init>(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->c:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/a;->E()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/AppStorageListActivity$b;-><init>(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->c:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/a;->X(Lcom/miui/optimizecenter/storage/a$d;)V

    return-void
.end method

.method public w(Lwa/a;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwa/a;

    iget-object v3, v2, Lwa/a;->pkgName:Ljava/lang/String;

    iget-object v4, p1, Lwa/a;->appName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-wide v3, p1, Lwa/a;->totalSize:J

    iget-wide v5, v2, Lwa/a;->totalSize:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->b:Lra/d;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    return-void
.end method

.class public Lcom/miui/securityscan/ui/settings/WhiteListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;,
        Lcom/miui/securityscan/ui/settings/WhiteListActivity$b;,
        Lcom/miui/securityscan/ui/settings/WhiteListActivity$e;,
        Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

.field private b:Lmiuix/recyclerview/widget/RecyclerView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Lcom/miui/optimizecenter/storage/view/EmptyView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/securityscan/ui/settings/WhiteListActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->d:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->f0(Ljava/util/List;)V

    return-void
.end method

.method private f0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    invoke-virtual {v3, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0603d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->c:Landroid/widget/TextView;

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v1, v5}, Lx4/y1;->a(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->d:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    invoke-virtual {v1, v2}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-virtual {v1, p1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;->o(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-virtual {v1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;->l()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0250

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;->l()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$c;-><init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Ljava/util/Set;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    const v0, 0x7f0e04a0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const v0, 0x7f0b0250

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->d:Landroid/widget/Button;

    const v1, 0x7f120646

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0379

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/storage/view/EmptyView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const v1, 0x7f120724

    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setHintView(I)V

    new-instance v0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-direct {v0, p0, p0}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;-><init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->a:Lcom/miui/securityscan/ui/settings/WhiteListActivity$d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lmiuix/recyclerview/card/f;

    invoke-direct {v1, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    const v0, 0x7f0b04e1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0dba

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->f:Landroid/view/View;

    new-instance v0, Lcom/miui/securityscan/ui/settings/WhiteListActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/ui/settings/WhiteListActivity$b;-><init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Lcom/miui/securityscan/ui/settings/WhiteListActivity$a;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    instance-of v2, v0, Lmiuix/recyclerview/card/f;

    if-eqz v2, :cond_1

    int-to-float p1, p1

    sget v2, Ltm/e;->d:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    float-to-int p1, p1

    check-cast v0, Lmiuix/recyclerview/card/f;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07066c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/WhiteListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method

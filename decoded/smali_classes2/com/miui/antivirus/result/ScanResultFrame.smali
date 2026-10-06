.class public Lcom/miui/antivirus/result/ScanResultFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroidx/lifecycle/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/result/ScanResultFrame$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lw4/e;

.field private c:Lcom/miui/common/customview/AutoPasteListView;

.field private d:Z

.field private e:Z

.field private f:Lcom/miui/antivirus/result/f;

.field private g:Lcom/miui/antivirus/result/f;

.field private h:Lcom/miui/antivirus/result/n;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/miui/antivirus/result/ScanResultFrame$d;

.field private k:Z

.field private l:Landroid/content/SharedPreferences;

.field private m:Landroidx/lifecycle/x;

.field private n:Lx9/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->i:Ljava/util/List;

    new-instance p1, Landroidx/lifecycle/x;

    invoke-direct {p1, p0}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;)V

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->m:Landroidx/lifecycle/x;

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->h:Lcom/miui/antivirus/result/n;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antivirus/result/ScanResultFrame;)Lw4/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->b:Lw4/e;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->d:Z

    return p1
.end method

.method static synthetic d(Lcom/miui/antivirus/result/ScanResultFrame;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/antivirus/result/ScanResultFrame;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->l:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/antivirus/result/ScanResultFrame;Lcom/miui/antivirus/result/f;)Lcom/miui/antivirus/result/f;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->f:Lcom/miui/antivirus/result/f;

    return-object p1
.end method

.method static synthetic g(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->e:Z

    return p1
.end method

.method static synthetic h(Lcom/miui/antivirus/result/ScanResultFrame;)Lx9/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->n:Lx9/a;

    return-object p0
.end method

.method private k()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->d:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->g:Lcom/miui/antivirus/result/f;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->n:Lx9/a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lx9/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/international/bean/AntiGlobalAdBean;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/antivirus/result/f;->h()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/international/bean/AntiGlobalAdBean;->addGlobalAd(Ljava/util/List;)Z

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->f:Lcom/miui/antivirus/result/f;

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->i:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/f;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->h:Lcom/miui/antivirus/result/n;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/f;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->h:Lcom/miui/antivirus/result/n;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->f:Lcom/miui/antivirus/result/f;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/antivirus/result/f;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "******************"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/miui/antivirus/result/h;->b()Lcom/miui/antivirus/result/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->f:Lcom/miui/antivirus/result/f;

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->i:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/f;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->a:Landroid/content/Context;

    const-string v2, "data_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->l:Landroid/content/SharedPreferences;

    const-string v2, "initSucess"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "init"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v1, Lcom/miui/antivirus/result/ScanResultFrame$d;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/result/ScanResultFrame$d;-><init>(Lcom/miui/antivirus/result/ScanResultFrame;)V

    iput-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->j:Lcom/miui/antivirus/result/ScanResultFrame$d;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->m:Landroidx/lifecycle/x;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->f:Lcom/miui/antivirus/result/f;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/f;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 4

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->c:Lcom/miui/common/customview/AutoPasteListView;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->c:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setAlignItem(I)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->c:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->h:Lcom/miui/antivirus/result/n;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->c:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->c:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->c:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/antivirus/result/ScanResultFrame$b;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/result/ScanResultFrame$b;-><init>(Lcom/miui/antivirus/result/ScanResultFrame;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteListView$c;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->c:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lyh/c;

    invoke-static {}, Lrh/d;->o()Lrh/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lyh/c;-><init>(Lrh/d;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antivirus/result/ScanResultFrame;->k()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->j:Lcom/miui/antivirus/result/ScanResultFrame$d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public l(Landroid/content/Context;Lcom/miui/antivirus/result/f;Lcom/miui/antivirus/result/n;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/antivirus/result/ScanResultFrame;->g:Lcom/miui/antivirus/result/f;

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/antivirus/result/ScanResultFrame;->h:Lcom/miui/antivirus/result/n;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->m:Landroidx/lifecycle/x;

    sget-object v1, Landroidx/lifecycle/l$b;->c:Landroidx/lifecycle/l$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/x;->n(Landroidx/lifecycle/l$b;)V

    invoke-static {p0}, Landroidx/lifecycle/a1;->a(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/lifecycle/u0;

    invoke-direct {v1, v0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lx9/a;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    check-cast v0, Lx9/a;

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->n:Lx9/a;

    invoke-virtual {v0}, Lx9/b;->f()V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->n:Lx9/a;

    invoke-virtual {v0}, Lx9/b;->d()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/result/ScanResultFrame$a;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/result/ScanResultFrame$a;-><init>(Lcom/miui/antivirus/result/ScanResultFrame;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->m:Landroidx/lifecycle/x;

    sget-object v1, Landroidx/lifecycle/l$b;->a:Landroidx/lifecycle/l$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/x;->n(Landroidx/lifecycle/l$b;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p3, Lcom/miui/antivirus/result/ScanResultFrame$c;->a:[I

    invoke-virtual {p1}, Lcom/miui/antivirus/result/a;->getBaseCardType()Lcom/miui/antivirus/result/a$a;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/miui/antivirus/result/c;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/result/c;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-lez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->k:Z

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->m:Landroidx/lifecycle/x;

    sget-object v0, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/x;->i(Landroidx/lifecycle/l$a;)V

    iget-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->m:Landroidx/lifecycle/x;

    sget-object v0, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/lifecycle/x;->i(Landroidx/lifecycle/l$a;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->m:Landroidx/lifecycle/x;

    sget-object v0, Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/x;->i(Landroidx/lifecycle/l$a;)V

    iget-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->m:Landroidx/lifecycle/x;

    sget-object v0, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->b:Lw4/e;

    return-void
.end method

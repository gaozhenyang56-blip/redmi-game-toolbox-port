.class public final Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;
.super Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;,
        Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity<",
        "Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordPresenter;",
        ">;",
        "Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBhOrderListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BhOrderListActivity.kt\ncom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1#2:156\n*E\n"
    }
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$h<",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final btnReload$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyPart$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final errorPart$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutSpringBack$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final loadingPart$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPageIndex:I

.field private final recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private refreshAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rvRecord$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private slot:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trigger:Lmiuix/springback/trigger/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$btnReload$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$btnReload$2;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->btnReload$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$rvRecord$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$rvRecord$2;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->rvRecord$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$layoutSpringBack$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$layoutSpringBack$2;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->layoutSpringBack$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$loadingPart$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$loadingPart$2;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadingPart$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$errorPart$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$errorPart$2;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->errorPart$delegate:Loj/f;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$emptyPart$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$emptyPart$2;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->emptyPart$delegate:Loj/f;

    return-void
.end method

.method public static final synthetic access$getMPageIndex$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->mPageIndex:I

    return p0
.end method

.method public static final synthetic access$getSlot$p(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->slot:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c0(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->onCreate$lambda$0(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getBtnReload()Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->btnReload$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-btnReload>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private final getEmptyPart()Landroid/widget/RelativeLayout;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->emptyPart$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-emptyPart>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private final getErrorPart()Landroid/widget/LinearLayout;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->errorPart$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-errorPart>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getLayoutSpringBack()Lmiuix/springback/view/SpringBackLayout;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->layoutSpringBack$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-layoutSpringBack>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    return-object v0
.end method

.method private final getLoadingPart()Landroid/widget/RelativeLayout;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadingPart$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-loadingPart>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private final getRvRecord()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->rvRecord$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-rvRecord>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private static final onCreate$lambda$0(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->refreshData()V

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

.method public final getLoadMoreAction()Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    return-object v0
.end method

.method public final getRefreshAction()Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->refreshAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;

    return-object v0
.end method

.method public final getTrigger()Lmiuix/springback/trigger/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->trigger:Lmiuix/springback/trigger/c;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e00b2

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "slot"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->slot:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getBtnReload()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/a;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/a;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getBtnReload()Landroid/widget/Button;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPress(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getRvRecord()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getRvRecord()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/ui/bean/RecordDataByDate;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->adapter:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance p1, Lmiuix/springback/trigger/c;

    invoke-direct {p1, p0}, Lmiuix/springback/trigger/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/c;->e(Lmiuix/springback/trigger/a$a;)V

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->refreshAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/c;->e(Lmiuix/springback/trigger/a$a;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->trigger:Lmiuix/springback/trigger/c;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getLayoutSpringBack()Lmiuix/springback/view/SpringBackLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/b;->O(Lmiuix/springback/view/SpringBackLayout;)V

    new-instance p1, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;

    new-instance v0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderRecorderModel;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderRecorderModel;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderOrderRecordPresenter;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordView;Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordModel;)V

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/BaseActivity;->setMPresenter(Lcom/miui/networkassistant/ui/view/IPresenter;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getLoadingPart()Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->refreshData()V

    return-void
.end method

.method public final refreshData()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->setHasMore(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/BaseActivity;->getMPresenter()Lcom/miui/networkassistant/ui/view/IPresenter;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordPresenter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->slot:Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->mPageIndex:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->mPageIndex:I

    sget-object v4, Loj/t;->a:Loj/t;

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/miui/networkassistant/ui/order/orderlist/IOrderRecordPresenter;->fetchRecorder(Ljava/lang/String;Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method

.method public final setLoadMoreAction(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    return-void
.end method

.method public final setRefreshAction(Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->refreshAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;

    return-void
.end method

.method public final setTrigger(Lmiuix/springback/trigger/c;)V
    .locals 0
    .param p1    # Lmiuix/springback/trigger/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->trigger:Lmiuix/springback/trigger/c;

    return-void
.end method

.method public showData(ILcom/miui/networkassistant/ui/bean/RecordBean;Z)V
    .locals 2
    .param p2    # Lcom/miui/networkassistant/ui/bean/RecordBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "data"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_6

    iget p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->mPageIndex:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->mPageIndex:I

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/RecordBean;->getData()Lcom/miui/networkassistant/ui/bean/RecordBean$Data;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->getLastPage()Ljava/lang/Boolean;

    move-result-object p3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lmiuix/springback/trigger/a$c;->notifyActionNoData()V

    :cond_1
    iget-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p1}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->setHasMore(Z)V

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lmiuix/springback/trigger/a$c;->notifyLoadComplete()V

    :cond_4
    iget-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p3, v0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;->setHasMore(Z)V

    goto :goto_1

    :cond_6
    iget-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-virtual {p3}, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->resetDateRecord()V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->refreshAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lmiuix/springback/trigger/a$b;->notifyLoadComplete()V

    :cond_7
    :goto_1
    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/RecordBean;->getData()Lcom/miui/networkassistant/ui/bean/RecordBean$Data;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->getTrafficOrder()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p3, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-virtual {p3, p2}, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->addDateRecord(Ljava/util/ArrayList;)V

    :cond_8
    iget-object p2, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->adapter:Landroidx/recyclerview/widget/RecyclerView$h;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_9
    iget-object p2, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->getDateRecordList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/16 p3, 0x8

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getErrorPart()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getRvRecord()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getLoadingPart()Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getEmptyPart()Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getErrorPart()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getRvRecord()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getLoadingPart()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getEmptyPart()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public showError(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "errMsg"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->loadMoreAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$LoadMoreAction;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/springback/trigger/a$c;->notifyLoadFail()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->refreshAction:Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity$RefreshAction;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/springback/trigger/a$b;->notifyLoadFail()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getErrorPart()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getLoadingPart()Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getRvRecord()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/order/orderlist/BhOrderListActivity;->getEmptyPart()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

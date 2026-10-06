.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyQueryAreaCallBack;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MySubscribeCallBack;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyListener;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyCallBack;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MainHandler;
    }
.end annotation


# static fields
.field private static final KEY_GET_LOCATION:I = 0x1

.field private static final KEY_STOP_LOCATION:I = 0x3e7

.field private static final MAX_SUPPORT_CITY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WarningCenterDisasterSu"

.field public static final WHITE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

.field private mEmptyContainer:Landroid/widget/LinearLayout;

.field private mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

.field private mMainHandler:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MainHandler;

.field private mNormalAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mScrollview:Landroidx/core/widget/NestedScrollView;

.field protected mSearchActionMode:Lmiuix/view/l;

.field private mSearchActionModeCallback:Lmiuix/view/l$b;

.field private mSearchResultView:Landroid/widget/ListView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mSelectAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

.field private mSelectAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->WHITE_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAreas:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectCodes:Ljava/util/Map;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MainHandler;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MainHandler;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mMainHandler:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MainHandler;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$4;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$5;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$6;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->buildSelectData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->getLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchResultView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->setEmptyView(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->doSearchArea(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mScrollview:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectCodes:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->buildSelectData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MainHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mMainHandler:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MainHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAreas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method private buildSelectData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->addData(Lcom/miui/warningcenter/disasterwarning/model/AreaModel;)V

    return-void
.end method

.method private buildSelectData(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAreas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {p1}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121c02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getPreviousArea()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setRegion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;

    invoke-direct {p1, p0}, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MySubscribeCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MySubscribeCallBack;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask;->setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QuerySubscribeTask$CallBack;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mNormalAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->setList(Ljava/util/List;)V

    return-void
.end method

.method private doSearchArea(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyQueryAreaCallBack;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyQueryAreaCallBack;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$1;)V

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask;->setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QueryAreaTask$CallBack;)V

    return-void
.end method

.method private getLocation()V
    .locals 3

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->getInstance()Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    move-result-object v0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyCallBack;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$MyCallBack;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->startLocation(ZLcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V

    return-void
.end method

.method private needUpdateAreaData()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getUpdateAreaTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->isFirstUpdateDisasterArea()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/DeleteAreaDataTask;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/db/DeleteAreaDataTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private setEmptyView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchResultView:Landroid/widget/ListView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mEmptyContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/view/EmptyView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchActionMode:Lmiuix/view/l;

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchResultView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mEmptyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const v0, 0x7f0e055d

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0b0299

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b0295

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/RecyclerView;

    const v2, 0x7f0b0a06

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    iput-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mScrollview:Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0b0a23

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchView:Landroid/view/View;

    const v2, 0x7f0b0a1f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchResultView:Landroid/widget/ListView;

    const v2, 0x7f0b0379

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/earthquakewarning/view/EmptyView;

    iput-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    const v2, 0x7f0b037a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mEmptyContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchView:Landroid/view/View;

    const v3, 0x1020009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121bdd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    invoke-direct {v2, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, p1, :cond_1

    move v3, p1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v2, v3}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSelectAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter;->setListener(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaStatusAdapter$ClickListener;)V

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mNormalAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mNormalAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mNormalAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$2;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter;->setListener(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaNormalAdapter$ClickListener;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->needUpdateAreaData()V

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getPreviousArea()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->getLocation()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->buildSelectData(Z)V

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    invoke-direct {p1, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchResultView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity$3;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;)V

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter;->setListener(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterAreaAdapter$Listener;)V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;->mSearchActionMode:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

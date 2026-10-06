.class public Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private mAllData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAreaSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

.field private mLevelSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mListAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mSearchActionMode:Lmiuix/view/l;

.field private mSearchActionModeCallback:Lmiuix/view/l$b;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mSpinnerContainer:Landroid/widget/LinearLayout;

.field private mTypeSpinner:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mAllData:Ljava/util/List;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$7;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$8;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$9;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->filterDatas()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mAllData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSpinnerContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mListAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->setEmptyView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->buildAreaSpinner(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->buildLevelSpinner(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->buildTypeSpinner(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private buildAreaSpinner(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121be1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0e0338

    const v2, 0x1020014

    invoke-direct {p1, p0, v1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const v0, 0x7f0e0335

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mAreaSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private buildLevelSpinner(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121bfe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "red"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c0e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    const-string v3, "orange"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c0d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    const-string v3, "yellow"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c0f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_2
    const-string v3, "blue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0e0338

    const v2, 0x1020014

    invoke-direct {p1, p0, v1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const v0, 0x7f0e0335

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mLevelSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private buildTypeSpinner(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c27

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0e0338

    const v2, 0x1020014

    invoke-direct {p1, p0, v1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const v0, 0x7f0e0335

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->lambda$onCreate$0(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    return-void
.end method

.method private filterDatas()V
    .locals 10

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mAreaSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mLevelSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    const-string v3, ""

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mAreaSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    if-lez v2, :cond_5

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mLevelSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121c0e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v3, "red"

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121c0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v3, "orange"

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121c0f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v3, "yellow"

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121c0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "blue"

    :cond_5
    :goto_2
    move-object v9, v3

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;

    const/4 v6, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$4;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$4;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getDatas()V
    .locals 3

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;-><init>(Landroid/content/Context;Z)V

    new-instance v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;

    invoke-direct {v2, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$6;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->show(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    return-void
.end method

.method private searchDatas(Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;

    const/4 v2, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$5;

    invoke-direct {p1, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$5;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    invoke-virtual {v6, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setEmptyView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/view/EmptyView;->setVisibility(I)V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->searchDatas(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchActionMode:Lmiuix/view/l;

    :cond_0
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

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchActionMode:Lmiuix/view/l;

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0716b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const v0, 0x7f0b0ad0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const v0, 0x7f0e0564

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0b0379

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/earthquakewarning/view/EmptyView;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    const v0, 0x7f0b02a2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mContentContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0b0968

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const/16 p1, 0x28

    new-instance v1, Lcom/miui/warningcenter/widget/SpacesItemDecoration;

    invoke-direct {v1, p1}, Lcom/miui/warningcenter/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    invoke-direct {p1, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mListAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const p1, 0x7f0b0a23

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchView:Landroid/view/View;

    const p1, 0x7f0b0ace

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/Spinner;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mAreaSpinner:Lmiuix/appcompat/widget/Spinner;

    const p1, 0x7f0b0ad6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/Spinner;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    const p1, 0x7f0b0ad3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/Spinner;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mLevelSpinner:Lmiuix/appcompat/widget/Spinner;

    const p1, 0x7f0b0ad0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSpinnerContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchView:Landroid/view/View;

    const v0, 0x1020009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f121c1e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mListAdapter:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/g;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/g;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter;->setListener(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListAdapter$ClickListener;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mAreaSpinner:Lmiuix/appcompat/widget/Spinner;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$1;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mTypeSpinner:Lmiuix/appcompat/widget/Spinner;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$2;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mLevelSpinner:Lmiuix/appcompat/widget/Spinner;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity$3;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->getDatas()V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;->mSearchActionMode:Lmiuix/view/l;

    return-void
.end method

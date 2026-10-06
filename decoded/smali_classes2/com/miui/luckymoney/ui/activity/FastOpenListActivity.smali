.class public Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private llContainer:Landroid/widget/LinearLayout;

.field private mChangedItem:I

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mFastOpenChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

.field private mFastOpenViewGroup:Landroid/view/View;

.field mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/luckymoney/model/FastOpenAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLayoutFastOpen:Landroid/view/View;

.field private mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

.field private mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSearchActionMode:Lmiuix/view/l;

.field private mSearchActionModeCallback:Lmiuix/view/l$b;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mSlidingButtonFastOpen:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mItemCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$6;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$7;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$8;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchActionModeCallback:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/FastOpenConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->llContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$112(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;I)I
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->updateHeader()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->showOpenDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->updateViewState()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lmiuix/slidingwidget/widget/SlidingButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSlidingButtonFastOpen:Lmiuix/slidingwidget/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 9

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    new-instance v1, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-direct {v1, v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;-><init>(Z)V

    new-instance v2, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/miui/luckymoney/model/FastOpenAppInfo;-><init>(Z)V

    invoke-static {p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v4

    invoke-virtual {v4}, Li4/a;->j()Ljava/util/List;

    move-result-object v4

    invoke-static {p0}, Lcom/miui/appmanager/AppManageUtils;->R(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v6, v5, v7}, Lcom/miui/appmanager/AppManageUtils;->C(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/HashSet;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-static {}, Lx4/z1;->e()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/miui/luckymoney/config/FastOpenConfig;->isRestrict(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->add(Landroid/content/pm/PackageInfo;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v6}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->add(Landroid/content/pm/PackageInfo;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V

    iget-object v4, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-direct {p0, v2}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V

    iget-object v4, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10002c

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v0

    invoke-virtual {v4, v5, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateData(Ljava/util/List;)V

    return-void
.end method

.method private setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->isFastOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    neg-int v0, v0

    :goto_0
    invoke-virtual {p1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->isFastOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12085b

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12085a

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private showOpenDialog()V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120f76

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0e016e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0315

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0316

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120857

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f120858

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$3;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    const v2, 0x7f120c2f

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$4;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$4;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    const v2, 0x7f120859

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$5;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$5;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateHeader()V
    .locals 5

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-direct {p0, v1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-direct {p0, v1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->getListView()Lcom/miui/common/expandableview/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateHeader(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getCurrentHeader()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {v2, v1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateHeader(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v6}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->isFastOpen()Z

    move-result v5

    invoke-direct {v4, v5}, Lcom/miui/luckymoney/model/FastOpenAppInfo;-><init>(Z)V

    invoke-virtual {v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->setPackageInfos(Ljava/util/ArrayList;)V

    invoke-direct {p0, v4}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {p1}, Lcom/miui/common/expandableview/a;->notifyDataSetChanged()V

    return-void
.end method

.method private updateViewState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchView:Landroid/view/View;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchView:Landroid/view/View;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchActionMode:Lmiuix/view/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenViewGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchActionMode:Lmiuix/view/l;

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

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchActionMode:Lmiuix/view/l;

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

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchActionModeCallback:Lmiuix/view/l$b;

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0037

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-static {p0}, Lcom/miui/luckymoney/config/FastOpenConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    const p1, 0x7f0b0675

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenViewGroup:Landroid/view/View;

    const p1, 0x7f0b06e2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->llContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0b06d4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    const p1, 0x7f0b0aa1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSlidingButtonFastOpen:Lmiuix/slidingwidget/widget/SlidingButton;

    const p1, 0x7f0b0692

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mLayoutFastOpen:Landroid/view/View;

    new-instance p1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-direct {p1, p0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mItemCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {p1, p0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSlidingButtonFastOpen:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSlidingButtonFastOpen:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0b00bd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchView:Landroid/view/View;

    const v0, 0x1020009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchInputView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->updateViewState()V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mLayoutFastOpen:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFastOpenShow()V

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

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {p1}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b0a9f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->initData()V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchActionMode:Lmiuix/view/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenViewGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSearchActionMode:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    :cond_0
    return-void
.end method

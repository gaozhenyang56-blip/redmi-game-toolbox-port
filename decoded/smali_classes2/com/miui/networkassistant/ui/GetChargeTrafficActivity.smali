.class public Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/networkassistant/viewholder/CardOnClickListener;
.implements Lcom/miui/networkassistant/ui/presenter/IproductListPresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IproductListView;
.implements Lcom/miui/networkassistant/ui/presenter/IpayOrderPresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IpayOrderView;
.implements Lcom/miui/networkassistant/ui/presenter/IGetPolicyUpdatePresenter;
.implements Lcom/miui/networkassistant/ui/presenter/IPolicyUpdateView;
.implements Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;


# instance fields
.field private abnormalView:Landroid/view/View;

.field private carrier:Ljava/lang/String;

.field private deleteNum:Ljava/lang/String;

.field private editText:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;

.field private isAbnormal:Z

.field private isFirst:Z

.field private isNoNet:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private mCardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

.field private mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

.field private mCarrier:Ljava/lang/String;

.field private mCurrentNum:I

.field private mEveryCardData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;"
        }
    .end annotation
.end field

.field private mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

.field private mNeedDispaly:Ljava/lang/Boolean;

.field private mPayData:Lcom/miui/networkassistant/ui/bean/PayData;

.field private mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

.field private mPayUrl:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field private mPolicy:Ljava/lang/String;

.field private mPolicyData:Lcom/miui/networkassistant/ui/bean/PolicyCode;

.field private mPosition:I

.field private mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

.field private mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mTrafficProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/TrafficProduct;",
            ">;"
        }
    .end annotation
.end field

.field private needShow:Z

.field private nestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private noNetwork:Landroid/view/View;

.field private noResource:Landroid/view/View;

.field private phoneNumView:Landroid/view/View;

.field private phoneNumberObserver:Landroid/text/TextWatcher;

.field private policy:Ljava/lang/String;

.field private purchaseLayout:Landroid/widget/LinearLayout;

.field private recent:Landroidx/recyclerview/widget/RecyclerView;

.field private recentNum:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recentNumberAdapter:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

.field private relativeLayout:Landroid/view/View;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textViewInfo:Landroid/widget/TextView;

.field private trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

.field private viewList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->handler:Landroid/os/Handler;

    const-string v0, "Delete phoneNum"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->deleteNum:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->viewList1:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->viewList2:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isNoNet:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isAbnormal:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->tabs:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCarrier:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPolicy:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->needShow:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isFirst:Z

    iput-object v2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->carrier:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->policy:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mNeedDispaly:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mEveryCardData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mEveryCardData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->needShow:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPolicy:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/view/MyViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;I)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->getTabView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->deleteNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->setPhoneText(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->hideKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->abnormalView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recent:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNumberAdapter:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isNormalNum(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->textViewInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->tabs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mTrafficProductList:Ljava/util/List;

    return-object p0
.end method

.method private buildCommonParameters()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "productType"

    const-string v2, "trafficProduct"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCarrier:Ljava/lang/String;

    const-string v2, "carrier"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "oaid"

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v2}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "country"

    const-string v3, "Indonesia"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pageIndex"

    const-string v3, "home"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonParameters"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->lambda$getPolicyByNet$0()V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->lambda$initEditView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private getAgree()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "accountValue"

    const-string v5, "accountType"

    if-nez v3, :cond_0

    const-string v3, "oaid"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "uuid"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v3}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    :try_start_0
    const-string v1, "language"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    const-string v3, "Indonesia"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageIndex"

    const-string v3, "home"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonParameters"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->createLinkString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/SignatureUtils;->getSignatureResults(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result v1

    const-string v2, "query_micard_info"

    if-eqz v1, :cond_1

    new-instance v1, Lp4/i;

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "https://preview-api-flow-intl.10046.xiaomimobile.com/privacy/agree"

    goto :goto_2

    :cond_1
    new-instance v1, Lp4/i;

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "https://api-flow-intl.10046.xiaomimobile.com/privacy/agree"

    :goto_2
    invoke-static {v2, v0, v1}, Leg/j;->f(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicyByNet()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/a;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/a;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getTabView(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e023c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0b4e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->tabs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060110

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f081030

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060db0

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f08102f

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private hideKeyBoard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initData()V
    .locals 3

    const v0, 0x7f0b0b49

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0591

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/MyViewPager;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Landroidx/preference/f;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "recentNum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNumberAdapter:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNumberAdapter:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNumberAdapter:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNumberAdapter:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNumberAdapter:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    new-instance v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$3;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->setOnItemClickListener(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method private initEditView()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const v0, 0x7f0b09d6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recent:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0626

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b038a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/networkassistant/ui/b;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/b;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0b0d5a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->phoneNumView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->phoneNumberObserver:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0b0661

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->abnormalView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0650

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noResource:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->imageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/FolmeHelper;->onBackKeyPress(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/FolmeHelper;->onDefaultViewPress(Landroid/view/View;)V

    return-void
.end method

.method private initSimView()V
    .locals 3

    const v0, 0x7f0b0c88

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->textViewInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->textViewInfo:Landroid/widget/TextView;

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCarrier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->textViewInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->textViewInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCarrier:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private initView()V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->initSimView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->initEditView()V

    return-void
.end method

.method private isNormalNum(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xd

    const/4 v3, 0x7

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    :cond_1
    const-string v0, "08"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0xe

    const/16 v5, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4

    :cond_2
    const-string v0, "+628"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    :cond_3
    const-string v0, "+6208"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_5

    :cond_4
    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method private synthetic lambda$getPolicyByNet$0()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->isPreviewEnv()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "query_micard_info"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "https://preview-api-flow-intl.10046.xiaomimobile.com/system/isp_rule"

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->buildCommonParameters()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lp4/i;

    invoke-direct {v3, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, v2, v3}, Leg/j;->e(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "https://api-flow-intl.10046.xiaomimobile.com/system/isp_rule"

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->buildCommonParameters()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lp4/i;

    invoke-direct {v3, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/miui/networkassistant/ui/bean/CarrierCode;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/bean/CarrierCode;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CarrierCode;->getRtnCode()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->updateCarrier(Lcom/miui/networkassistant/ui/bean/CarrierCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method private synthetic lambda$initEditView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->hideKeyBoard(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0b0661

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0577

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->abnormalView:Landroid/view/View;

    iget-boolean p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isNoNet:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isNormalNum(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {p2}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->abnormalView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noResource:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {p2}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {p2}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->abnormalView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_4
    :goto_2
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isNormalNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->saveCacheData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNumberAdapter:Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->addNumber(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->getPolicyByNet()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->abnormalView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->abnormalView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->carrier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setTitle(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductDesc2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setDesc(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductDesc1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductTitle(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductTitle2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductTitle2(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getSalePrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setFee(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getSalePriceDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setFeeText(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setProductId(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPhoneNumber(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPosition(I)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setCardOnClickListener(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getDataSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setDataSize(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/CardSData;->getValidityPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setValidityPeriod(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mNeedDispaly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPolicyDisplay(Z)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->policy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;->setPolicyText(Ljava/lang/String;)Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_8
    if-eqz p2, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->fetchProductList()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->textViewInfo:Landroid/widget/TextView;

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->textViewInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1203f2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private popKeyBoard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private repeatGetAgree()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->getAgree()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/ui/bean/PolicyCode;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/bean/PolicyCode;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getRtnCode()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private saveCacheData(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->recentNum:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "recentNum"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setPhoneText(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->phoneNumberObserver:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->phoneNumberObserver:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private updateCarrier(Lcom/miui/networkassistant/ui/bean/CarrierCode;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->addListForNum(Lcom/miui/networkassistant/ui/bean/CarrierCode;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCarrier:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCarrier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateProductList(Lcom/miui/networkassistant/ui/bean/Card;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/Card;->getData()Lcom/miui/networkassistant/ui/bean/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/Data;->getTrafficProduct()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mTrafficProductList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mTrafficProductList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$2;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/app/Activity;Lcom/miui/networkassistant/ui/bean/Card;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isNormalNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b080e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    const v0, 0x7f0b0ca5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1203e2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    const v0, 0x7f0b061f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080d9b

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public clickSetPhoneNum(Ljava/lang/String;Lcom/miui/networkassistant/ui/bean/CardSData;ILcom/miui/networkassistant/viewholder/CardOnClickListener;Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/networkassistant/ui/bean/CardSData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/miui/networkassistant/viewholder/CardOnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->popKeyBoard(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_dialog_source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone_dialog_exposure"

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCalculateEvent(Ljava/lang/String;JLjava/util/Map;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->carrier:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardsData:Lcom/miui/networkassistant/ui/bean/CardSData;

    iput p3, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPosition:I

    iput-object p5, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->policy:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mNeedDispaly:Ljava/lang/Boolean;

    return-void
.end method

.method public directPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string v0, "+62"

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x7f1203e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phoneNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productType"

    const-string v3, "trafficProduct"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productId"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dataSize"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "validityPeriod"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "salePrice"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "language"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appVersion"

    iget-object v4, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "miuiVersion"

    invoke-static {}, Lx4/t;->h()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "device"

    iget-object v4, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lx4/a0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Ly4/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "oaid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v3, "uuid"

    sget-object v4, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-virtual {v4}, Lcom/miui/networkassistant/utils/SettingsUtils;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v3, "country"

    const-string v4, "Indonesia"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pageIndex"

    const-string v4, "home"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "commonParameters"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->setPayParams(Ljava/util/HashMap;)V

    new-instance v1, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IpayOrderView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {v1, p4}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setPeriod(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setPhoneNum(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setProductID(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {p1, p3}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setDataSize(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {p1, p5}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->setFee(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TAG"

    const-string p3, "Exception"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->postPolicyAgree()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->fetchPayInfo()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->fetchProductList()V

    return-void
.end method

.method public fetchPayInfo()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->fetchPayInfo()V

    return-void
.end method

.method public fetchPolicyUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;->fetchPolicyUpdate()V

    return-void
.end method

.method public fetchProductList()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->fetchProductList()V

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

.method public getPolicyUpdateFail()V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "getPolicyUpdateFail: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getPolicyUpdateSuccess(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyCode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getRtnCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getData()Lcom/miui/networkassistant/ui/bean/PolicyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/PolicyData;->getPolicyTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPolicy:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyCode;->getData()Lcom/miui/networkassistant/ui/bean/PolicyData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PolicyData;->getNeedAgree()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->needShow:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

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

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0626

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f08047b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->deleteNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->deleteNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e00f2

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IPolicyUpdateView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->fetchPolicyUpdate()V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const-string v0, "slot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCurrentNum:I

    const-string v0, "phoneNum"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    new-instance p1, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;-><init>(Lcom/miui/networkassistant/ui/presenter/IproductListView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCurrentNum:I

    iget-object v2, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    aput-object v2, p1, v0

    const p1, 0x7f0b0d5c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPhoneNum:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCarrier:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->getPolicyByNet()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCarrier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCurrentNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCarrier()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mCurrentNum:I

    aget-object p1, p1, v0

    const-string v0, "empty"

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setCarrier(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->setCarrier(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->fetchProductList()V

    :cond_2
    new-instance p1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->phoneNumberObserver:Landroid/text/TextWatcher;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->initData()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0577

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->abnormalView:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b080e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0b0661

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    const v0, 0x7f0b0ca5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    const v0, 0x7f0b061f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080d97

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isNoNet:Z

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProductListPresenter:Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/ProductListPresenter;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayOrderInfoPresenter:Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/PayOrderInfoPresenter;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;->onDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->trafficPurchaseDialog:Lcom/miui/networkassistant/ui/dialog/TrafficPurchaseDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->phoneNumberObserver:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_5
    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public postPolicyAgree()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mGetPolicyUpdatePresenter:Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/presenter/GetPolicyUpdatePresenter;->postPolicyAgree()V

    return-void
.end method

.method public postPolicyFail()V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "postPolicyFail: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public postPolicySuccess(Lcom/miui/networkassistant/ui/bean/PolicyCode;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyCode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPolicy:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->needShow:Z

    const-string p1, "TAG"

    const-string v0, "postPolicySuccess: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveOrderInfo(Lcom/miui/networkassistant/ui/bean/PayData;)V
    .locals 2
    .param p1    # Lcom/miui/networkassistant/ui/bean/PayData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PayData;->getData()Lcom/miui/networkassistant/ui/bean/DataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/DataInfo;->getPayURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PayData;->getData()Lcom/miui/networkassistant/ui/bean/DataInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/DataInfo;->getProductOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/PayData;->getData()Lcom/miui/networkassistant/ui/bean/DataInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/DataInfo;->getNonce()Ljava/lang/String;

    move-result-object p1

    const-string v1, "nonce"

    invoke-static {v1, p1}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->setNonce(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "productOrderId"

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/bean/ParamsUtils;->setOrderID(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mPayUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showData(Lcom/miui/networkassistant/ui/bean/Card;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/bean/Card;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->updateProductList(Lcom/miui/networkassistant/ui/bean/Card;)V

    return-void
.end method

.method public showError()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->isNormalNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->viewPager:Lcom/miui/networkassistant/ui/view/MyViewPager;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b080e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    const v1, 0x7f0b0ca5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1203e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->noNetwork:Landroid/view/View;

    const v1, 0x7f0b061f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080d9b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public showErrorDialog()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    new-instance v0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$4;-><init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

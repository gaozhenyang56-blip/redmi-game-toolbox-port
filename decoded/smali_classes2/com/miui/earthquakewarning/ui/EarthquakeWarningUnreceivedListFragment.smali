.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$MyListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UnreceivedListFragment"


# instance fields
.field private adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

.field private mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

.field private volatile mProvince2Signs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->showData(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->lambda$initView$0()V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;Lcom/miui/earthquakewarning/model/WarningModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->lambda$initView$1(Lcom/miui/earthquakewarning/model/WarningModel;)V

    return-void
.end method

.method private synthetic lambda$initView$0()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->loadSignatures()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->parseSignatures(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->mProvince2Signs:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initView$1(Lcom/miui/earthquakewarning/model/WarningModel;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->supportMap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.earthquake.detail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "magnitude"

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "longitude"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "latitude"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "distance"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "intensity"

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "epicenter"

    iget-object v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "startTime"

    iget-wide v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "isAll"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const v2, 0x7f1207e4

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->mProvince2Signs:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->mProvince2Signs:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f120747

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    move-object v2, p1

    :cond_1
    aput-object v2, v3, v5

    invoke-virtual {v4, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "signature"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "com.miui.securityadd"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "UnreceivedListFragment"

    const-string v0, "can not find detail page"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private loadSignatures()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/FileUtils;->getSignatureFromData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ICL"

    invoke-static {v0}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/utils/FileUtils;->saveSignatureToData(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private parseSignatures(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "datas"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "district"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "signs"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private showData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/WarningModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/view/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/p;->submitList(Ljava/util/List;)V

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

.method protected initView()V
    .locals 4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/a1;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/a1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const v0, 0x7f0b06d7

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    const v1, 0x7f0b0379

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/earthquakewarning/view/EmptyView;

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->mEmptyView:Lcom/miui/earthquakewarning/view/EmptyView;

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;->adapter:Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;

    new-instance v1, Lcom/miui/earthquakewarning/ui/b1;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/b1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter;->setListener(Lcom/miui/earthquakewarning/ui/EarthquakeWarningListAdapter$ClickListener;)V

    new-instance v0, Lcom/miui/earthquakewarning/service/RequestWarningListTask;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/service/RequestWarningListTask;-><init>()V

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$MyListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$MyListener;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment;Lcom/miui/earthquakewarning/ui/EarthquakeWarningUnreceivedListFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/RequestWarningListTask;->setListener(Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e0148

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

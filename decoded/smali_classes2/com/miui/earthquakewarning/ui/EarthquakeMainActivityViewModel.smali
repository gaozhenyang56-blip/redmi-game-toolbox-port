.class public final Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EarthquakeMainViewModel"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final SOS_CONTACTS_URI:Landroid/net/Uri;

.field private final contactMergedLiveData:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subscribeLiveData:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->Companion:Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    const-string v0, "content://com.android.settings.emergency.SosContactsProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->SOS_CONTACTS_URI:Landroid/net/Uri;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->subscribeLiveData:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->contactMergedLiveData:Landroidx/lifecycle/c0;

    return-void
.end method

.method public static synthetic a(Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->getSubscribeCities$lambda$1(Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;Ljava/util/List;)V

    return-void
.end method

.method private static final getSubscribeCities$lambda$1(Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;Ljava/util/List;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    const/4 v11, 0x2

    if-ge v0, v3, :cond_1

    if-lt v0, v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->setSelect(Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->subscribeLiveData:Landroidx/lifecycle/c0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, "\u3001"

    invoke-static/range {v2 .. v10}, Lqj/l;->E(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lak/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v11, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120345

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->subscribeLiveData:Landroidx/lifecycle/c0;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private final realMergeContacts()V
    .locals 5

    const-string v0, "EarthquakeMainViewModel"

    :try_start_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getContactName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "no need to merge contact"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "number"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->SOS_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge contact success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v1, "success"

    goto :goto_0

    :cond_1
    const-string v1, "fail"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "realMergeContacts: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public final getContanctMergedLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->contactMergedLiveData:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public final getLocation(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltj/d<",
            "-",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2;-><init>(Landroid/content/Context;Ltj/d;)V

    invoke-static {v0, v1, p2}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getSubscribeCities()V
    .locals 2

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;-><init>(I)V

    new-instance v1, Lcom/miui/earthquakewarning/ui/b;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/b;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageSubscribeDataTask$CallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final getSubscribeLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->subscribeLiveData:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public final mergeContacts()V
    .locals 2

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->realMergeContacts()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setContact(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setContactName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->contactMergedLiveData:Landroidx/lifecycle/c0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    return-void
.end method

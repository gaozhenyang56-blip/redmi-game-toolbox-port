.class final Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.earthquakewarning.ui.EarthquakeWarningMainFragment$getLocation$1"
    f = "EarthquakeWarningMainFragment.kt"
    i = {}
    l = {
        0xab
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/earthquakewarning/model/AreaCodeResult;Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->invokeSuspend$lambda$1$lambda$0(Lcom/miui/earthquakewarning/model/AreaCodeResult;Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->invokeSuspend$lambda$1(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 3

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/miui/earthquakewarning/ui/p0;

    invoke-direct {v1, p1, p0}, Lcom/miui/earthquakewarning/ui/p0;-><init>(Lcom/miui/earthquakewarning/model/AreaCodeResult;Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static final invokeSuspend$lambda$1$lambda$0(Lcom/miui/earthquakewarning/model/AreaCodeResult;Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/util/List;)V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCityId()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getDistrictId()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v5}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCounties()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "counties"

    invoke-static {v5, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v5, v4}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->access$isDistrictSupport(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->setTopicForPush(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-direct {p1, v0, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/miui/earthquakewarning/utils/LocationRecorder;->Companion:Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "requireContext()"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/miui/earthquakewarning/utils/LocationRecorder$Companion;->getLocation(Landroid/content/Context;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/location/Location;

    if-nez p1, :cond_3

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_3
    new-instance v0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;-><init>()V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    new-instance v3, Lcom/miui/earthquakewarning/ui/o0;

    invoke-direct {v3, v1}, Lcom/miui/earthquakewarning/ui/o0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {v0, v3}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->setListener(Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

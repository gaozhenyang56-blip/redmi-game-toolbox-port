.class public Lve/k;
.super Lve/b;
.source "SourceFile"


# static fields
.field private static k:Lve/k;

.field private static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Z


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/miui/gamebooster/model/m;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;

.field private j:Lj6/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lve/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lve/k;->i:Landroid/os/Handler;

    new-instance v0, Lve/k$a;

    invoke-direct {v0, p0}, Lve/k$a;-><init>(Lve/k;)V

    iput-object v0, p0, Lve/k;->j:Lj6/b;

    const-string v0, "01-18-12"

    invoke-virtual {p0, v0}, Lve/b;->B(Ljava/lang/String;)V

    const-string v0, "https://adv.sec.miui.com/game2/gameAdv"

    invoke-virtual {p0, v0}, Lve/b;->C(Ljava/lang/String;)V

    const-string v0, "https://adv.sec.miui.com/gameTurbo/gcgt/tab/config"

    iput-object v0, p0, Lve/k;->g:Ljava/lang/String;

    invoke-static {}, La8/y0;->a()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lve/k;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Lx4/a0;->r(Ljava/util/List;)Z

    move-result v0

    sput-boolean v0, Lve/k;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUseLocalConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lve/k;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActiveRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic F(Lve/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lve/k;->Y(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic G(Lve/k;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lve/k;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic H(Lve/k;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lve/k;->e0(Ljava/lang/String;Z)V

    return-void
.end method

.method private I(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/miui/gamebooster/model/g;

    invoke-direct {v1}, Lcom/miui/gamebooster/model/g;-><init>()V

    invoke-static {p2}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/g;

    :cond_0
    invoke-virtual {v1}, Lcom/miui/gamebooster/model/g;->j()Z

    move-result v2

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/g;->i()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowGrade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", installSort = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AbsActiveRepository"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/model/ActiveModel;

    move-object v6, v5

    check-cast v6, Lcom/miui/gamebooster/model/g;

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lve/k;->O(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    move v1, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/i;

    if-lt v1, p3, :cond_3

    instance-of v5, v4, Lcom/miui/gamebooster/model/g;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lcom/miui/gamebooster/model/g;

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v6, p3

    invoke-virtual {v5, v6}, Lcom/miui/gamebooster/model/g;->k(I)V

    invoke-virtual {v5, v2}, Lcom/miui/gamebooster/model/g;->m(Z)V

    if-le v1, p3, :cond_3

    invoke-virtual {v5, v3}, Lcom/miui/gamebooster/model/g;->l(Z)V

    :cond_3
    invoke-direct {p0, p2, v4, p1}, Lve/k;->c0(Ljava/util/HashMap;Lcom/miui/gamebooster/model/i;Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private J(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/g;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/g;->i()Z

    move-result p1

    return p1
.end method

.method private K(Lcom/miui/gamebooster/model/ActiveModel;)Ljava/lang/String;
    .locals 2

    instance-of v0, p1, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getPriority()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private O(Ljava/util/List;)Ljava/util/HashMap;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/ActiveModel;

    instance-of v3, v2, Lcom/miui/gamebooster/model/i;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/miui/gamebooster/model/i;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/common/f;->e(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "progress"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", progress = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbsActiveRepository"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public static declared-synchronized R()Lve/k;
    .locals 2

    const-class v0, Lve/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lve/k;->k:Lve/k;

    if-nez v1, :cond_0

    new-instance v1, Lve/k;

    invoke-direct {v1}, Lve/k;-><init>()V

    sput-object v1, Lve/k;->k:Lve/k;

    :cond_0
    sget-object v1, Lve/k;->k:Lve/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private T(Lcom/miui/gamebooster/model/ActiveNewModel;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result p1

    const v0, 0x1cd62

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private U(Lcom/miui/gamebooster/model/ActiveModel;)Z
    .locals 3

    instance-of v0, p1, Lcom/miui/gamebooster/model/ActiveNewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v0

    const v2, 0x1cd5f

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result p1

    const v0, 0x1cd64

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private V(Lcom/miui/gamebooster/model/ActiveModel;Lcom/miui/gamebooster/model/n;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private W(Lcom/miui/gamebooster/model/ActiveModel;Lcom/miui/gamebooster/model/n;)Z
    .locals 1

    instance-of v0, p1, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getFunctionId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getFunctionId()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/n;->e()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic Y(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lve/k;->a0(Ljava/lang/String;)V

    return-void
.end method

.method private a0(Ljava/lang/String;)V
    .locals 5

    const-string v0, "data"

    const-string v1, "AbsActiveRepository"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullGameCenterTitleDataFromServerInternal: pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "packageName"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "versionCode"

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-static {v4, p1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lve/k;->g:Ljava/lang/String;

    new-instance v3, Lp4/i;

    const-string v4, "game_toolbox_game_center"

    invoke-direct {v3, v4}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1, v3}, Leg/j;->j(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullGameCenterTitleDataFromServerInternal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "retCode"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullGameCenterTitleDataFromServerInternal: data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "priorityTabType"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {v0}, La8/u0;->q(Z)V

    const-string v0, "gcRedDotOption"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, La8/u0;->r(Z)V

    const-string v0, "gcRedDotIcon"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La8/u0;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catch_0
    const-string p1, "error proccess active with some exceptions"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private c0(Ljava/util/HashMap;Lcom/miui/gamebooster/model/i;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/gamebooster/model/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/miui/gamebooster/model/i;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p1, 0x65

    :goto_0
    invoke-virtual {p2, p1}, Lcom/miui/gamebooster/model/i;->f(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/i;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sget v0, Lcom/miui/common/f$b;->a:I

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p3, 0xbbf

    if-ne p1, p3, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private e0(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lve/k;->h:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lve/k;->h:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/m;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/m;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/m;->e()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/i;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p2, :cond_0

    const/16 v2, 0x65

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/miui/gamebooster/model/i;->f(I)V

    move-object v2, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    instance-of v0, v2, Lcom/miui/gamebooster/model/g;

    if-eqz v0, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update casual game model : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", installed = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbsActiveRepository"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public L(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveModel;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/ActiveModel;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invlid query "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbsActiveRepository"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public declared-synchronized M(Ljava/lang/String;Z)Lcom/miui/gamebooster/model/m;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, La8/o0;->f()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "AbsActiveRepository"

    const-string p2, "nothing when close recommend"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/gamebooster/model/m;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/model/m;-><init>(Ljava/util/List;Ljava/util/List;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object p2, p0, Lve/k;->h:Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p1, "AbsActiveRepository"

    const-string p2, "GameBox - hit cache!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lve/k;->h:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/m;

    new-instance p2, Lcom/miui/gamebooster/model/m;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/m;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/m;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/m;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/m;->e()Z

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/model/m;-><init>(Ljava/util/List;Ljava/util/List;IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Lcom/miui/gamebooster/model/m;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/model/m;-><init>(Ljava/util/List;Ljava/util/List;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v3, 0x1cd60

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/ActiveModel;

    instance-of v4, v2, Lcom/miui/gamebooster/model/g;

    if-eqz v4, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v4, v2, Lcom/miui/gamebooster/model/h;

    if-eqz v4, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v4, v2, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v4

    if-eq v4, v3, :cond_6

    move-object v3, v2

    check-cast v3, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v3

    const v4, 0x1cd61

    if-ne v3, v4, :cond_3

    :cond_6
    invoke-direct {p0, v2}, Lve/k;->K(Lcom/miui/gamebooster/model/ActiveModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v5, Lve/k$b;

    invoke-direct {v5, p0}, Lve/k$b;-><init>(Lve/k;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/ActiveModel;->isValid()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_14

    move v5, v2

    move p2, v4

    move v6, p2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge p2, v7, :cond_13

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v7, v5}, Lcom/miui/gamebooster/model/ActiveModel;->setItemRow(I)V

    check-cast v7, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v7

    if-eq v7, v3, :cond_d

    move v7, v2

    goto :goto_3

    :cond_d
    move v7, v4

    :goto_3
    if-lez p2, :cond_e

    add-int/lit8 v8, p2, -0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gamebooster/model/ActiveModel;

    check-cast v8, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v8}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v8

    if-ne v8, v3, :cond_e

    move v8, v2

    goto :goto_4

    :cond_e
    move v8, v4

    :goto_4
    if-ne v6, v2, :cond_10

    if-eqz v8, :cond_f

    if-nez v7, :cond_f

    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    :cond_f
    if-eqz v8, :cond_11

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x2

    goto :goto_5

    :cond_10
    if-eqz v7, :cond_12

    if-eqz v8, :cond_12

    :cond_11
    :goto_5
    add-int/lit8 v5, v5, 0x1

    :cond_12
    :goto_6
    add-int/2addr v6, v2

    rem-int/lit8 v6, v6, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_13
    move v2, v5

    :cond_14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v0}, Lve/k;->J(Ljava/util/List;)Z

    move-result v5

    sget-boolean v6, Lsl/a;->a:Z

    if-nez v6, :cond_15

    invoke-virtual {p0}, Lve/k;->X()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v6

    invoke-static {v6}, La8/o;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-direct {p0, p2, v0, v1}, Lve/k;->I(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/ActiveModel;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gamebooster/model/ActiveModel;->setItemRow(I)V

    move v2, v6

    goto :goto_7

    :cond_15
    move-object v2, p2

    new-instance p2, Lcom/miui/gamebooster/model/m;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/model/m;-><init>(Ljava/util/List;Ljava/util/List;IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public N(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveNewModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/ActiveModel;

    instance-of v2, v1, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v2

    const v3, 0x1cd68

    if-ne v2, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lve/k$c;

    invoke-direct {p1, p0}, Lve/k$c;-><init>(Lve/k;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method public P(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFunctionDataV2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AbsActiveRepository"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static/range {p1 .. p3}, Lt6/a;->g(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v3

    :cond_0
    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gamebooster/model/ActiveModel;

    instance-of v7, v6, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v8

    const v9, 0x1cd5f

    if-eq v8, v9, :cond_2

    const v9, 0x1cd62

    if-eq v8, v9, :cond_2

    const v9, 0x1cd64

    if-eq v8, v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v1}, Lcom/miui/gamebooster/model/ActiveNewModel;->isSupportFunction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getFunctionId()I

    move-result v11

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Lt6/a;->b(I)I

    move-result v14

    invoke-direct {v0, v7}, Lve/k;->T(Lcom/miui/gamebooster/model/ActiveNewModel;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Ln6/h;->c:Ln6/h;

    goto :goto_1

    :cond_4
    sget-object v8, Ln6/h;->b:Ln6/h;

    :goto_1
    move-object v10, v8

    sget v8, Lt6/a;->x:I

    if-ne v11, v8, :cond_6

    rem-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    new-instance v8, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v16

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    sget v8, Lt6/a;->l:I

    if-ne v11, v8, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v8}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v8

    sget v9, Lt6/a;->x:I

    if-ne v8, v9, :cond_7

    goto :goto_0

    :cond_7
    new-instance v8, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v16

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La8/o0;->c()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/gamebooster/model/n;->p(J)V

    goto/16 :goto_6

    :cond_8
    sget v8, Lt6/a;->p:I

    if-ne v11, v8, :cond_c

    invoke-static/range {p2 .. p3}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object v8

    invoke-virtual {v8}, Lx6/b;->c()Z

    move-result v8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v9

    invoke-static {v9}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v9

    new-instance v17, Lcom/miui/gamebooster/model/n;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v8, :cond_9

    const v14, 0x7f120a52

    goto :goto_2

    :cond_9
    const v14, 0x7f120a4f

    :goto_2
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_b

    if-eqz v9, :cond_a

    const v8, 0x7f08060c

    goto :goto_3

    :cond_a
    const v8, 0x7f08060d

    goto :goto_3

    :cond_b
    const v8, 0x7f080600

    :goto_3
    move v14, v8

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v17

    goto/16 :goto_6

    :cond_c
    sget v8, Lt6/a;->A:I

    if-eq v11, v8, :cond_10

    sget v8, Lt6/a;->z:I

    if-eq v11, v8, :cond_10

    sget v8, Lt6/a;->y:I

    if-ne v11, v8, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getFunctionId()I

    move-result v8

    const v9, 0x98e568

    if-ne v8, v9, :cond_f

    new-instance v8, Lcom/miui/gamebooster/model/n;

    invoke-direct {v0, v6}, Lve/k;->U(Lcom/miui/gamebooster/model/ActiveModel;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Ln6/h;->b:Ln6/h;

    goto :goto_4

    :cond_e
    sget-object v6, Ln6/h;->c:Ln6/h;

    :goto_4
    move-object/from16 v16, v6

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getFunctionId()I

    move-result v17

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveModel;->getTitle()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getFunctionId()I

    move-result v6

    invoke-static {v6}, Lt6/a;->b(I)I

    move-result v20

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getAiSearchUrl()Ljava/lang/String;

    move-result-object v22

    move-object v15, v8

    invoke-direct/range {v15 .. v22}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    new-instance v8, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v16

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    :goto_5
    invoke-static/range {p2 .. p3}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object v8

    invoke-virtual {v8}, Lx6/b;->c()Z

    move-result v8

    if-eqz v8, :cond_11

    goto/16 :goto_0

    :cond_11
    new-instance v8, Lcom/miui/gamebooster/model/n;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v16

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v8}, Lcom/miui/gamebooster/model/n;->j()Ln6/h;

    move-result-object v6

    sget-object v9, Ln6/h;->c:Ln6/h;

    if-ne v6, v9, :cond_12

    add-int/lit8 v5, v5, 0x1

    :cond_12
    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveModel;->getDataId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/miui/gamebooster/model/n;->q(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getMentionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/miui/gamebooster/model/n;->t(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getBubbleTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/miui/gamebooster/model/n;->o(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveModel;->isHasRedPointShow()Z

    move-result v6

    invoke-virtual {v8, v6}, Lcom/miui/gamebooster/model/n;->s(Z)V

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveNewModel;->getDepApkData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/miui/gamebooster/model/n;->r(Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    invoke-static {v5, v3}, Lt6/a;->a(ILjava/util/List;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFunctionDataV2: models = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lve/h;

    invoke-direct {v1, p0, p1}, Lve/h;-><init>(Lve/k;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lve/b;->f:Z

    return v0
.end method

.method public X()Z
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public Z(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lve/k;->M(Ljava/lang/String;Z)Lcom/miui/gamebooster/model/m;

    move-result-object p1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lve/k;->h:Ljava/lang/ref/SoftReference;

    iget-object p1, p0, Lve/k;->j:Lj6/b;

    invoke-static {p1}, Lj6/a;->b(Lj6/b;)Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b0()V
    .locals 2

    const-string v0, "AbsActiveRepository"

    const-string v1, "resetGameCenterTitleData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, La8/u0;->q(Z)V

    invoke-static {v0}, La8/u0;->r(Z)V

    const-string v0, ""

    invoke-static {v0}, La8/u0;->m(Ljava/lang/String;)V

    return-void
.end method

.method public d0(Ljava/lang/String;Lcom/miui/gamebooster/model/n;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-direct {p0, v0, p2}, Lve/k;->V(Lcom/miui/gamebooster/model/ActiveModel;Lcom/miui/gamebooster/model/n;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0, p2}, Lve/k;->W(Lcom/miui/gamebooster/model/ActiveModel;Lcom/miui/gamebooster/model/n;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    instance-of v1, v0, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getMentionType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/model/ActiveModel;->setHasRedPointShow(Z)V

    invoke-virtual {p2, p1}, Lcom/miui/gamebooster/model/n;->s(Z)V

    :cond_4
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lve/b;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lve/k;->h:Ljava/lang/ref/SoftReference;

    return-void
.end method

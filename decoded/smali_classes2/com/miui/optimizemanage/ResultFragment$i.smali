.class Lcom/miui/optimizemanage/ResultFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/ResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/ResultFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$i;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/miui/optimizemanage/optimizeresult/j;Ljava/util/List;Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/optimizemanage/ResultFragment$i;->b(Lcom/miui/optimizemanage/optimizeresult/j;Ljava/util/List;Lcom/miui/optimizemanage/ResultFragment;)V

    return-void
.end method

.method private static synthetic b(Lcom/miui/optimizemanage/optimizeresult/j;Ljava/util/List;Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/ResultFragment;->i0(Lcom/miui/optimizemanage/ResultFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const-string v2, "om_adv_data"

    invoke-static {v1, v2}, Leg/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/optimizemanage/optimizeresult/e;->c(Lorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/e;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const-string v3, "data_config"

    invoke-static {v2, v3}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/e;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "dataVersionOm"

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Luf/b;->l(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/e;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "om_request_mode"

    invoke-virtual {v2, v4, v3}, Luf/b;->l(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    const-string v3, "ResultFragment"

    const-string v4, "omdatamodel create error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/miui/optimizemanage/ResultFragment$i;->a:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizemanage/ResultFragment;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2}, Lcom/miui/optimizemanage/ResultFragment;->g0(Lcom/miui/optimizemanage/ResultFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/miui/optimizemanage/ResultFragment;->d0(Lcom/miui/optimizemanage/ResultFragment;)Ljava/util/List;

    move-result-object v5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/e;->h()Ljava/util/List;

    move-result-object v0

    :cond_5
    new-instance v6, Lcom/miui/optimizemanage/optimizeresult/l;

    invoke-direct {v6}, Lcom/miui/optimizemanage/optimizeresult/l;-><init>()V

    invoke-virtual {v6, v4}, Lcom/miui/optimizemanage/optimizeresult/l;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/e;->b()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/e;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljb/c;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3, v1}, Lcom/miui/optimizemanage/optimizeresult/e;->j(Landroid/content/Context;Ljava/util/List;)Lcom/miui/optimizemanage/optimizeresult/k;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    invoke-static {v2}, Lcom/miui/optimizemanage/ResultFragment;->h0(Lcom/miui/optimizemanage/ResultFragment;)Lx9/c;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v2}, Lcom/miui/optimizemanage/ResultFragment;->h0(Lcom/miui/optimizemanage/ResultFragment;)Lx9/c;

    move-result-object v0

    invoke-virtual {v0}, Lx9/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/international/bean/OptimizeGlobalAdBean;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v5}, Lcom/miui/international/bean/OptimizeGlobalAdBean;->addGlobalAd(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v2, v5}, Lcom/miui/optimizemanage/ResultFragment;->e0(Lcom/miui/optimizemanage/ResultFragment;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    :cond_9
    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/miui/optimizemanage/optimizeresult/e;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    invoke-static {v2}, Lcom/miui/optimizemanage/ResultFragment;->f0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/optimizemanage/optimizeresult/j;

    move-result-object v0

    invoke-static {v2}, Lcom/miui/optimizemanage/ResultFragment;->x0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v1

    new-instance v3, Lcom/miui/optimizemanage/g;

    invoke-direct {v3, v0, v5, v2}, Lcom/miui/optimizemanage/g;-><init>(Lcom/miui/optimizemanage/optimizeresult/j;Ljava/util/List;Lcom/miui/optimizemanage/ResultFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_3
    return-void
.end method

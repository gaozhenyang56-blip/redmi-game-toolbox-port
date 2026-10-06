.class public Lbg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/MainFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/phonemanage/PhoneManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/securityscan/MainFragment;Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbg/c;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbg/c;->c:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lbg/c;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lbg/c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Lbg/a;
    .locals 9

    const-string v0, "dataVersionHomePage"

    const-string v1, "initSucess"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lbg/c;->c:Landroid/content/Context;

    const-string v4, "data_config"

    invoke-static {v3, v4}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "dataVersion"

    const-string v7, ""

    invoke-virtual {v3, v0, v7}, Luf/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_0

    const-string v4, "init"

    const-string v6, "1"

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v5}, Lsf/d;->F(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_7

    iget-object v5, p0, Lbg/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/securityscan/MainFragment;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/miui/securityscan/MainFragment;->O1()I

    move-result v7

    invoke-virtual {v5}, Lcom/miui/securityscan/MainFragment;->N1()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v6

    move v7, v5

    :goto_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v6, v7, v5}, Lsf/d;->h(Lorg/json/JSONObject;III)Lsf/d;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lsf/d;->i()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lsf/d;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Luf/b;->l(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v5}, Lsf/d;->s()I

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-virtual {v3, v1, v6}, Luf/b;->m(Ljava/lang/String;Z)Z

    :cond_3
    invoke-virtual {v5}, Lsf/d;->x()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "securityscan_homelist_cache"

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lbg/c;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Leg/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/miui/securityscan/MainFragment;->s1:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v7}, Lsf/d;->n(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v5}, Lsf/d;->e()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v5}, Lsf/d;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lbg/c;->c:Landroid/content/Context;

    invoke-static {v3, v1, v4}, Leg/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lsf/d;->j(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/MainFragment;->s1:Ljava/util/ArrayList;

    :cond_6
    :goto_1
    move v6, v7

    goto :goto_2

    :cond_7
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_8

    new-instance v0, Lbg/a;

    invoke-direct {v0, v5, v6}, Lbg/a;-><init>(Lsf/d;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "HomePageAndPmDataTask"

    const-string v3, "load homepage data "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_3
    invoke-direct {p0}, Lbg/c;->c()V

    return-object v2
.end method

.method private b()Lbg/a;
    .locals 8

    const-string v0, "dataVersion_phoneManage"

    const-string v1, "initSucess_phoneManage"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lbg/c;->c:Landroid/content/Context;

    const-string v4, "data_config"

    invoke-static {v3, v4}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "dataVersion"

    const-string v7, ""

    invoke-virtual {v3, v0, v7}, Luf/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_0

    const-string v4, "init"

    const-string v6, "1"

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v5}, Lsf/d;->G(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lsf/d;->g(Lorg/json/JSONObject;I)Lsf/d;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lsf/d;->i()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lsf/d;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Luf/b;->l(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {v5}, Lsf/d;->s()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    invoke-virtual {v3, v1, v6}, Luf/b;->m(Ljava/lang/String;Z)Z

    :cond_2
    invoke-virtual {v5}, Lsf/d;->x()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "phonemanage_data_cache"

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lbg/c;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Leg/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lsf/d;->m()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v5}, Lsf/d;->e()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Lsf/d;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lbg/c;->c:Landroid/content/Context;

    invoke-static {v0, v1, v4}, Leg/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v5, v2

    :cond_6
    :goto_0
    if-eqz v5, :cond_7

    new-instance v0, Lbg/a;

    invoke-direct {v0, v5}, Lbg/a;-><init>(Lsf/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "HomePageAndPmDataTask"

    const-string v3, "load phone manage data error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_1
    return-object v2
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lbg/c;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lpf/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbg/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leg/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lpf/g;->w()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbg/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Leg/r;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    invoke-static {v2}, Lpf/g;->x(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbg/a;

    iget-object v0, p0, Lbg/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/phonemanage/PhoneManagerFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lbg/a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lbg/a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lbg/a;->b()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->u1(Ljava/util/List;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->V0()V

    :cond_3
    return v3

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbg/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lbg/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Lbg/a;->c()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lbg/a;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_5
    iget-object v2, p0, Lbg/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/MainFragment;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lbg/a;->a()Lsf/d;

    move-result-object v4

    invoke-virtual {v4}, Lsf/d;->r()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/securityscan/MainFragment;->f1:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lbg/a;->e()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, v2, Lcom/miui/securityscan/MainFragment;->Q:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v2, Lcom/miui/securityscan/MainFragment;->R:Z

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lbg/a;->a()Lsf/d;

    move-result-object p1

    iput-object p1, v2, Lcom/miui/securityscan/MainFragment;->S:Lsf/d;

    goto :goto_1

    :cond_7
    :goto_0
    iput-object v0, v2, Lcom/miui/securityscan/MainFragment;->S:Lsf/d;

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/MainFragment;->X2(Ljava/util/ArrayList;)V

    :cond_8
    :goto_1
    move v2, v3

    :cond_9
    iget-object p1, p0, Lbg/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/MainFragment;

    if-nez v2, :cond_a

    if-eqz p1, :cond_a

    iput-object v0, p1, Lcom/miui/securityscan/MainFragment;->S:Lsf/d;

    :cond_a
    return v3
.end method

.method public run()V
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lbg/c;->a()Lbg/a;

    move-result-object v0

    invoke-static {}, Lx4/t;->w()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lbg/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lbg/c;->b()Lbg/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lbg/c;->a()Lbg/a;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {}, Lx4/t;->w()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    iget-object v3, p0, Lbg/c;->d:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lbg/c;->d:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void
.end method

.class Lcom/miui/gamebooster/ui/BoosterFragment$e0;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Lcom/miui/gamebooster/model/b0;",
        "Lcom/miui/gamebooster/model/b0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/BoosterFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Lcom/miui/gamebooster/model/b0;Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 8

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/b0;->f()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/a0;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/a0;->d()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/a0;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3}, La8/c2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/a0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, La8/c2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_2

    cmp-long v2, v6, v2

    if-gez v2, :cond_2

    invoke-static {p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->A0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/MainTopContentFrame;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/a0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->setBusinessText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/a0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->C0(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/gamebooster/model/a0;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/a0;->c()I

    move-result v1

    const-string v2, "gb_notification_business_period"

    invoke-static {v2, v1}, Lr4/a;->p(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r0()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Lcom/miui/gamebooster/service/IGameBooster;->S6()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoadXunyouDataTask"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Object;)Lcom/miui/gamebooster/model/b0;
    .locals 6

    const-string p1, "gbxunyoubusiness"

    const-string v0, "gamebooster"

    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/ui/BoosterFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->y0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->z0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lef/x;->z()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v2

    :cond_2
    :try_start_1
    invoke-static {v0, p1, v1}, La8/y;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/miui/gamebooster/model/b0;->d(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/b0;

    move-result-object v2

    :cond_3
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/miui/gamebooster/model/b0;

    aput-object v2, v4, v3

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v1}, Lcom/miui/gamebooster/model/b0;->h(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/miui/gamebooster/model/b0;->d(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/b0;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v4, ""

    invoke-static {v0, p1, v4, v1}, La8/y;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/miui/gamebooster/model/b0;->f()Ljava/util/List;

    invoke-static {v0, p1, v4, v1}, La8/y;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v5

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "LoadXunyouDataTask"

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v2

    :goto_1
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    throw p1

    :cond_5
    :goto_2
    return-object v2
.end method

.method protected c(Lcom/miui/gamebooster/model/b0;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->a(Lcom/miui/gamebooster/model/b0;Lcom/miui/gamebooster/ui/BoosterFragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected varargs d([Lcom/miui/gamebooster/model/b0;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object p1, p1, v1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->a(Lcom/miui/gamebooster/model/b0;Lcom/miui/gamebooster/ui/BoosterFragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->b([Ljava/lang/Object;)Lcom/miui/gamebooster/model/b0;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/b0;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->c(Lcom/miui/gamebooster/model/b0;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/miui/gamebooster/model/b0;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$e0;->d([Lcom/miui/gamebooster/model/b0;)V

    return-void
.end method

.class public Lbg/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lbg/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lwf/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwf/b;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lbg/e;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbg/e;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lbg/a;
    .locals 7

    const-string p1, "dataVersionScanResult"

    const-string v0, "initSucessResult"

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Lbg/e;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-static {v2}, Lpf/g;->G(Ljava/lang/String;)V

    iget-object v1, p0, Lbg/e;->a:Landroid/content/Context;

    const-string v3, "data_config"

    invoke-static {v1, v3}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "dataVersion"

    const-string v6, ""

    invoke-virtual {v1, p1, v6}, Luf/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_1

    const-string v3, "init"

    const-string v5, "1"

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v4}, Lsf/d;->H(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v4, v3}, Lsf/d;->g(Lorg/json/JSONObject;I)Lsf/d;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lsf/d;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lsf/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Luf/b;->l(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v3}, Lsf/d;->s()I

    move-result p1

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    invoke-virtual {v1, v0, v4}, Luf/b;->m(Ljava/lang/String;Z)Z

    :cond_3
    iget-object p1, p0, Lbg/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwf/b;

    if-eqz p1, :cond_5

    invoke-interface {p1, v3}, Lwf/b;->Y(Lsf/d;)V

    goto :goto_0

    :cond_4
    move-object v3, v2

    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    new-instance p1, Lbg/a;

    invoke-direct {p1, v3}, Lbg/a;-><init>(Lsf/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "LoadScanResultAdvertisementDataTask"

    const-string v1, "load scanresult data "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    move-object p1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v2

    :cond_7
    return-object p1

    :cond_8
    :goto_2
    return-object v2
.end method

.method protected b(Lbg/a;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbg/a;->b()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lbg/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lwf/b;->R(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbg/e;->a([Ljava/lang/Void;)Lbg/a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lbg/a;

    invoke-virtual {p0, p1}, Lbg/e;->b(Lbg/a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lbg/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lwf/b;->R(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

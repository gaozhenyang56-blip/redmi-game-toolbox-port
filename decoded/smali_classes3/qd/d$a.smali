.class Lqd/d$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/d;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ll4/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqd/d$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;"
        }
    .end annotation

    const/16 p1, 0x13

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lqd/e;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lqd/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lqd/e;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ll4/e;->l(I)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-static {v3, v2}, Ll4/e;->e(Lorg/json/JSONObject;Z)Ll4/e;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lqd/e;->a()Z

    move-result v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-nez v3, :cond_2

    const-string v3, "init"

    const-string v6, "1"

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lqd/d$a;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Ll4/e;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Ll4/e;->e(Lorg/json/JSONObject;Z)Ll4/e;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, ""

    if-nez v5, :cond_4

    :cond_3
    :try_start_2
    invoke-virtual {v1, v6}, Lqd/e;->d(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ll4/e;->f()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, v4}, Lqd/e;->c(Z)V

    :cond_5
    invoke-virtual {v5}, Ll4/e;->g()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v3}, Lqd/e;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v5

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    const-string v3, "DataModelManager"

    const-string v4, "preload data"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ll4/e;->g()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lqd/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lqd/d$a;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lqd/d$a;->b(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-static {}, Lqd/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

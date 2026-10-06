.class Lcom/miui/antivirus/result/c0$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/result/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/result/c0$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/result/c0$e;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const-string p1, "initSucess"

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "data_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lef/x;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/antivirus/result/h;->b()Lcom/miui/antivirus/result/f;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antivirus/result/c0;->b(Lcom/miui/antivirus/result/f;)Lcom/miui/antivirus/result/f;

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/result/c0;->a()Lcom/miui/antivirus/result/f;

    move-result-object v1

    const-string v3, "CleanResultControl"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "layout_data"

    if-nez v1, :cond_2

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v7, v1}, Lcom/miui/antivirus/result/f;->f(Lorg/json/JSONObject;Z)Lcom/miui/antivirus/result/f;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/antivirus/result/f;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Lcom/miui/antivirus/result/c0;->b(Lcom/miui/antivirus/result/f;)Lcom/miui/antivirus/result/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v7, "exception when load cache in PreloadDataTask :"

    invoke-static {v3, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/miui/antivirus/result/c0;->a()Lcom/miui/antivirus/result/f;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "******************"

    invoke-static {}, Lcom/miui/antivirus/result/c0;->a()Lcom/miui/antivirus/result/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/antivirus/result/f;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/miui/antivirus/result/h;->b()Lcom/miui/antivirus/result/f;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antivirus/result/c0;->b(Lcom/miui/antivirus/result/f;)Lcom/miui/antivirus/result/f;

    :cond_4
    invoke-static {}, Lcom/miui/antivirus/result/c0;->c()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-nez v1, :cond_6

    const-string v1, "init"

    const-string v8, "1"

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {v7}, Lcom/miui/antivirus/result/f;->l(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5}, Lcom/miui/antivirus/result/f;->f(Lorg/json/JSONObject;Z)Lcom/miui/antivirus/result/f;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/miui/antivirus/result/h;->b()Lcom/miui/antivirus/result/f;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/antivirus/result/c0;->b(Lcom/miui/antivirus/result/f;)Lcom/miui/antivirus/result/f;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Lcom/miui/antivirus/result/f;->h()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v7}, Lcom/miui/antivirus/result/f;->e()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v7}, Lcom/miui/antivirus/result/c0;->b(Lcom/miui/antivirus/result/f;)Lcom/miui/antivirus/result/f;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    invoke-virtual {v7}, Lcom/miui/antivirus/result/f;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "exception when "

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_3
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/c0$e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

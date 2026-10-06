.class Lcom/miui/antivirus/result/ScanResultFrame$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/result/ScanResultFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/miui/antivirus/result/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/result/ScanResultFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/result/ScanResultFrame;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lcom/miui/antivirus/result/f;
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/ScanResultFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/miui/antivirus/result/f;->l(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/miui/antivirus/result/f;->f(Lorg/json/JSONObject;Z)Lcom/miui/antivirus/result/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "CleanResultFrame"

    const-string v2, "msg"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected b(Lcom/miui/antivirus/result/f;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/ScanResultFrame;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/ScanResultFrame;->c(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/antivirus/result/f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antivirus/result/f;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->e(Lcom/miui/antivirus/result/ScanResultFrame;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "initSucess"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-static {v0, p1}, Lcom/miui/antivirus/result/ScanResultFrame;->f(Lcom/miui/antivirus/result/ScanResultFrame;Lcom/miui/antivirus/result/f;)Lcom/miui/antivirus/result/f;

    invoke-virtual {p1}, Lcom/miui/antivirus/result/f;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, v2}, Lcom/miui/antivirus/result/ScanResultFrame;->g(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z

    return-void

    :cond_3
    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->h(Lcom/miui/antivirus/result/ScanResultFrame;)Lx9/a;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->h(Lcom/miui/antivirus/result/ScanResultFrame;)Lx9/a;

    move-result-object v1

    invoke-virtual {v1}, Lx9/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/international/bean/AntiGlobalAdBean;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/miui/international/bean/AntiGlobalAdBean;->addGlobalAd(Ljava/util/List;)Z

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->d(Lcom/miui/antivirus/result/ScanResultFrame;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    :goto_1
    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_6
    :goto_2
    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->a(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/n;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/antivirus/result/ScanResultFrame;->d(Lcom/miui/antivirus/result/ScanResultFrame;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/ScanResultFrame$d;->a([Ljava/lang/Object;)Lcom/miui/antivirus/result/f;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/antivirus/result/f;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/ScanResultFrame$d;->b(Lcom/miui/antivirus/result/f;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/ScanResultFrame;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/ScanResultFrame;->c(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.class public Lbg/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbg/b;->a:Landroid/content/Context;

    :cond_0
    iput-boolean p2, p0, Lbg/b;->b:Z

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lbg/b;->a:Landroid/content/Context;

    const-string v1, "data_config"

    invoke-static {v0, v1}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dataVsersionAm"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Luf/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dataVersion"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbg/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lh3/h;->e(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "request_mode"

    const-string v3, "old"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lbg/b;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lpf/i;->m(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lbg/b;->a:Landroid/content/Context;

    const-string v2, "app_manager_adv"

    invoke-static {v1, v2, v0}, Leg/h;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LoadAppManagerAdvTask"

    const-string v2, "loadAppManagerAdv writeStringToFileDir error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lbg/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    invoke-static {}, Lx4/t;->p()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, La8/m;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lbg/b;->b:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lbg/b;->a:Landroid/content/Context;

    const-string v1, "app_manager_adv"

    invoke-static {p1, v1}, Leg/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lbg/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lpf/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string p1, "old"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lbg/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lpf/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "new"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :catch_0
    :goto_0
    invoke-direct {p0}, Lbg/b;->b()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbg/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.class public Lx7/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx7/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/miui/gamebooster/model/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lx7/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lx7/a$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lx7/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lx7/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lx7/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lx7/a;->e:Lx7/a$a;

    iput-object p5, p0, Lx7/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/miui/gamebooster/model/a;
    .locals 6

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/16 p1, 0x13

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Lef/x;->z()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lx7/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lx7/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lx7/a;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, La8/y;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/gamebooster/model/a;->c(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/a;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "packageName"

    iget-object v3, p0, Lx7/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/miui/gamebooster/model/a;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/gamebooster/model/a;->c(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/a;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/a;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lx7/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lx7/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lx7/a;->a:Landroid/content/Context;

    invoke-static {v3, v4, v1, v5}, La8/y;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :cond_3
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LoadAppInfoTask"

    const-string v3, "msg"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v0

    :goto_0
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method

.method protected b(Lcom/miui/gamebooster/model/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lx7/a;->e:Lx7/a$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lx7/a$a;->a(Lcom/miui/gamebooster/model/a;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lx7/a;->a([Ljava/lang/Void;)Lcom/miui/gamebooster/model/a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/a;

    invoke-virtual {p0, p1}, Lx7/a;->b(Lcom/miui/gamebooster/model/a;)V

    return-void
.end method

.class Lcom/miui/securityscan/model/ModelUpdater$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/ModelUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/model/ModelUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/ModelUpdater;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/ModelUpdater$a;->b:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/ModelUpdater$a;->a:Landroid/content/Context;

    return-void
.end method

.method private b()I
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater$a;->b:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelUpdater;->access$100(Lcom/miui/securityscan/model/ModelUpdater;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelFactory;->getScanItemJSONStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    invoke-static {}, Lpf/g;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lx4/x1;->c(J)I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/securityscan/model/ModelUpdater$a;->b:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-static {p1}, Lcom/miui/securityscan/model/ModelUpdater;->access$100(Lcom/miui/securityscan/model/ModelUpdater;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx4/u;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/miui/securityscan/model/ModelUpdater$a;->b()I

    move-result p1

    iget-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater$a;->a:Landroid/content/Context;

    new-instance v1, Lp4/i;

    const-string v2, "securityscan_modelupdate"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lp4/c;->d(Landroid/content/Context;ILp4/i;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/securityscan/model/ModelUpdater;->access$200(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lpf/g;->p()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scanitem.json_v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/securityscan/model/ModelUpdater$a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-static {p1, v4}, Lbl/d;->a(Ljava/io/File;Ljava/io/File;)Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lpf/g;->O(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lpf/g;->D(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected c(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/securityscan/model/ModelUpdater$a;->b:Lcom/miui/securityscan/model/ModelUpdater;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/securityscan/model/ModelUpdater;->access$002(Lcom/miui/securityscan/model/ModelUpdater;Z)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/ModelUpdater$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/ModelUpdater$a;->c(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/miui/securityscan/model/ModelUpdater$a;->b:Lcom/miui/securityscan/model/ModelUpdater;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/ModelUpdater;->access$002(Lcom/miui/securityscan/model/ModelUpdater;Z)Z

    return-void
.end method

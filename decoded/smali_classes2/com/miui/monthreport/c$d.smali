.class Lcom/miui/monthreport/c$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/monthreport/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/monthreport/b;

.field final synthetic b:Lcom/miui/monthreport/c;


# direct methods
.method public constructor <init>(Lcom/miui/monthreport/c;Lcom/miui/monthreport/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error_code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error"

    const-string v4, "Unknown error"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p1, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->h(Lcom/miui/monthreport/c;)Lcom/miui/monthreport/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    invoke-virtual {v1}, Lcom/miui/monthreport/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/monthreport/a;->c(Ljava/util/List;)Ljava/lang/Exception;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/monthreport/c;->k(Lcom/miui/monthreport/c;Ljava/lang/Exception;)Ljava/lang/Exception;

    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upload successfully"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {v0}, Lcom/miui/monthreport/c;->l(Lcom/miui/monthreport/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lma/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "module"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {v1}, Lcom/miui/monthreport/c;->l(Lcom/miui/monthreport/c;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lp4/i;

    const-string v3, "monthreport_taskmanager"

    invoke-direct {v2, v3}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v3, "https://api.sec.miui.com/data/check"

    const-string v4, "5fdd8678-cddf-4269-bb73-48187445bba7"

    invoke-static {v1, v3, v0, v4, v2}, Lp4/c;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "code"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {v0}, Lcom/miui/monthreport/c;->l(Lcom/miui/monthreport/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {v0}, Lcom/miui/monthreport/c;->h(Lcom/miui/monthreport/c;)Lcom/miui/monthreport/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/monthreport/a;->e(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    const/16 v0, 0x4e20

    if-lt p1, v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Rejected : many events upload in mobile network"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method protected varargs c([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10

    array-length v0, p1

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    iget-object v2, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Module %s task is null."

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {v2}, Lcom/miui/monthreport/c;->j(Lcom/miui/monthreport/c;)Ljava/lang/Exception;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/monthreport/b;->e(Ljava/lang/String;Ljava/lang/Exception;)Lcom/miui/monthreport/b;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    :cond_1
    iget-object v2, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    invoke-virtual {v2}, Lcom/miui/monthreport/b;->i()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Module %s has no data."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/miui/monthreport/c$d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/monthreport/c$d;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-static {}, Lcom/miui/monthreport/c;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uploading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    invoke-virtual {v1}, Lcom/miui/monthreport/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->l(Lcom/miui/monthreport/c;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "https://data.sec.miui.com/data/upload"

    iget-object p1, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    invoke-virtual {p1}, Lcom/miui/monthreport/b;->j()Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "5fdd8678-cddf-4269-bb73-48187445bba7"

    new-instance v9, Lp4/i;

    const-string p1, "monthreport_taskmanager_uploadtask"

    invoke-direct {v9, p1}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static/range {v4 .. v9}, Lp4/c;->b(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/monthreport/c$d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const/16 p1, 0x66

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/c$d;->c([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/Integer;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-wide/32 v0, 0x493e0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->c(Lcom/miui/monthreport/c;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/monthreport/b;->k()V

    iget-object p1, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    invoke-virtual {p1}, Lcom/miui/monthreport/b;->c()I

    move-result p1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->c(Lcom/miui/monthreport/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {v2}, Lcom/miui/monthreport/c;->c(Lcom/miui/monthreport/c;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    iget-object v4, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    invoke-virtual {v3}, Lcom/miui/monthreport/b;->c()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {p1}, Lcom/miui/monthreport/c;->c(Lcom/miui/monthreport/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/monthreport/c$d;->b:Lcom/miui/monthreport/c;

    invoke-static {v2}, Lcom/miui/monthreport/c;->c(Lcom/miui/monthreport/c;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Lcom/miui/monthreport/c$d;->a:Lcom/miui/monthreport/b;

    invoke-virtual {v4}, Lcom/miui/monthreport/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/c$d;->e(Ljava/lang/Integer;)V

    return-void
.end method

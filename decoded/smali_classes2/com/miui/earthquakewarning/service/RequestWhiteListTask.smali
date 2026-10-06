.class public Lcom/miui/earthquakewarning/service/RequestWhiteListTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/service/RequestWhiteListTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/miui/earthquakewarning/model/WhiteListResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestWhiteListTask"


# instance fields
.field private listener:Lcom/miui/earthquakewarning/service/RequestWhiteListTask$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/WhiteListResult;
    .locals 5

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/net/b;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    const-string v4, "userId"

    invoke-direct {v1, v4, v3}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/net/b;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    const-string v4, "group"

    invoke-direct {v1, v4, p1}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/miui/common/net/b;

    const-string v1, "biz"

    const-string v4, "earthquake"

    invoke-direct {p1, v1, v4}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "f31feb6a-a0a2-4b43-b724-c8edc6d65b49"

    invoke-static {v0, p1}, Lcom/miui/common/net/d;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/miui/common/net/b;

    const-string v4, "sign"

    invoke-direct {v1, v4, p1}, Lcom/miui/common/net/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/net/b;

    if-nez v3, :cond_1

    const-string v3, "&"

    goto :goto_1

    :cond_1
    const-string v3, "?"

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/common/net/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/common/net/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.sec.miui.com/universalWhitelist/checkUserId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lp4/i;

    const-string v1, "ew_requestwhitelist"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/miui/common/net/a;->a(Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/miui/earthquakewarning/model/WhiteListResult;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/WhiteListResult;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/model/WhiteListResult;->setCode(I)V

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;-><init>()V

    const-string v2, "checkResult"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;->setCheckResult(Z)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/model/WhiteListResult;->setData(Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "RequestWhiteListTask"

    const-string v1, "parse json failed"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/RequestWhiteListTask;->doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/WhiteListResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/miui/earthquakewarning/model/WhiteListResult;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/RequestWhiteListTask;->listener:Lcom/miui/earthquakewarning/service/RequestWhiteListTask$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/service/RequestWhiteListTask$Listener;->onPost(Lcom/miui/earthquakewarning/model/WhiteListResult;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/earthquakewarning/model/WhiteListResult;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/RequestWhiteListTask;->onPostExecute(Lcom/miui/earthquakewarning/model/WhiteListResult;)V

    return-void
.end method

.method public setListener(Lcom/miui/earthquakewarning/service/RequestWhiteListTask$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/RequestWhiteListTask;->listener:Lcom/miui/earthquakewarning/service/RequestWhiteListTask$Listener;

    return-void
.end method

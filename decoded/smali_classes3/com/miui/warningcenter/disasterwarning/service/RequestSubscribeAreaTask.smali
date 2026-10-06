.class public Lcom/miui/warningcenter/disasterwarning/service/RequestSubscribeAreaTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/service/RequestSubscribeAreaTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private parse(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/service/RequestSubscribeAreaTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    new-instance v4, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;

    invoke-direct {v4}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;-><init>()V

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCode(I)V

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setProvince(Ljava/lang/String;)V

    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-virtual {v4, v6}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setCity(Ljava/lang/String;)V

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/miui/warningcenter/disasterwarning/model/AreaModel;->setRegion(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Lcom/miui/warningcenter/disasterwarning/db/InsertAreaDataTask;

    invoke-direct {p1, v0, v1}, Lcom/miui/warningcenter/disasterwarning/db/InsertAreaDataTask;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/warningcenter/disasterwarning/Utils;->setUpdateAreaTime(J)V

    invoke-static {v2}, Lcom/miui/warningcenter/disasterwarning/Utils;->setFirstUpdateDisasterArea(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "WcDisasterTask"

    const-string v0, "RequestSubscribeAreaTask parse json failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/service/RequestSubscribeAreaTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/AreaModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "info"

    const-string v1, "all"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp4/i;

    const-string v1, "ew_requestwarninglist"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://api.sec.miui.com/12379/warning/getRegionInfo"

    const-string v2, "7war5230-a1cf-3k79-ec73-75cb82145n5x"

    invoke-static {p1, v1, v2, v0}, Leg/j;->r(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/service/RequestSubscribeAreaTask;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.class public abstract Lve/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected final c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lve/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lve/b;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lve/b;->e:Ljava/util/HashMap;

    return-void
.end method

.method private E(Lcom/miui/gamebooster/model/m;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_2

    sget-boolean v0, Lsl/a;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/m;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lk5/a;->b()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/ActiveModel;->getItemRow()I

    move-result v7

    const/4 v8, 0x0

    const-string v6, "gamebooster_gameturbo_content_fill"

    move v2, v1

    move-object v3, p2

    move v5, p1

    invoke-static/range {v2 .. v8}, Lcom/miui/gamebooster/utils/a$n;->h(ILjava/lang/String;Lcom/miui/gamebooster/model/ActiveModel;ZLjava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lve/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lve/b;->r(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    :try_start_0
    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/ActiveModel;

    instance-of v4, v3, Lcom/miui/gamebooster/model/ActiveNewModel;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v4

    const v7, 0x1cd5f

    if-eq v4, v7, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v4

    const v7, 0x1cd62

    if-ne v4, v7, :cond_3

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveModel;->getExpireTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveModel;->getExpireTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lve/b;->f(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v6

    :goto_2
    invoke-virtual {v3}, Lcom/miui/gamebooster/model/ActiveModel;->getDataId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    if-eqz v5, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lve/b;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lve/b;->s(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_8
    :goto_4
    return-void

    :catch_0
    invoke-direct {p0, p1}, Lve/b;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lve/b;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/ActiveModel;
    .locals 2

    const-string v0, "modelType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "showType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lve/b;->h(I)Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lve/b;->g()Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Ls5/a;->f(Landroid/content/Context;)Ls5/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls5/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private g()Lcom/miui/gamebooster/model/ActiveModel;
    .locals 2

    iget-object v0, p0, Lve/b;->a:Ljava/lang/String;

    const-string v1, "01-18-12"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-direct {v0}, Lcom/miui/gamebooster/model/ActiveNewModel;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-direct {v0}, Lcom/miui/gamebooster/model/ActiveModel;-><init>()V

    return-object v0
.end method

.method private h(I)Lcom/miui/gamebooster/model/ActiveModel;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/miui/gamebooster/model/h;

    invoke-direct {p1}, Lcom/miui/gamebooster/model/h;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/miui/gamebooster/model/g;

    invoke-direct {p1}, Lcom/miui/gamebooster/model/g;-><init>()V

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error causal game type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbsActiveRepository"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lve/b;->a:Ljava/lang/String;

    const-string v1, "01-18-12"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lve/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private n(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lve/b;->g()Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/model/ActiveModel;->createModelByJson(Lorg/json/JSONObject;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, v0, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/miui/gamebooster/model/ActiveNewModel;

    const-string v3, "template"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->setTemplate(I)V

    :cond_0
    iget-object p1, p0, Lve/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/model/ActiveModel;->setChannel(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private o(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lve/b;->d(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveModel;->createModelByJson(Lorg/json/JSONObject;)V

    instance-of v4, v2, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/miui/gamebooster/model/ActiveNewModel;

    const-string v5, "template"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/gamebooster/model/ActiveNewModel;->setTemplate(I)V

    :cond_2
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveModel;->setType(Ljava/lang/String;)V

    iget-object v3, p0, Lve/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/ActiveModel;->setChannel(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private q(Ljava/lang/String;)Z
    .locals 10

    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/ActiveModel;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getPreReqeustTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    :try_start_0
    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getPeriod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v6, 0x0

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/ActiveModel;->getPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v8, 0x3c

    mul-long/2addr v1, v8

    mul-long/2addr v1, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v1, v8

    goto :goto_1

    :cond_4
    move-wide v1, v6

    :goto_1
    cmp-long v3, v1, v6

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    const-wide/32 v1, 0x36ee80

    :goto_2
    cmp-long v1, v4, v1

    if-lez v1, :cond_1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "AbsActiveRepository"

    const-string v3, "number format error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_3
    return v0
.end method

.method private synthetic r(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lve/b;->y(Ljava/lang/String;)V

    return-void
.end method

.method private s(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "v"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/ActiveModel;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/ActiveModel;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "modelList"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeLocalDataString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AbsActiveRepository"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object v0
.end method

.method private t(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "showType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lve/b;->h(I)Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/miui/gamebooster/model/ActiveModel;->createModelByJson(Lorg/json/JSONObject;)V

    const-string v2, "template"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/miui/gamebooster/model/ActiveModel;->setTemplateId(I)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_2
    const-string p1, "AbsActiveRepository"

    const-string p2, "activity list is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private u(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "distribution"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lve/b;->t(Lorg/json/JSONObject;Ljava/util/List;)V

    const-string p1, "AbsActiveRepository"

    const-string p2, "parseCasualGameItems"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_6

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lve/b;->g()Lcom/miui/gamebooster/model/ActiveModel;

    move-result-object v3

    instance-of v4, v3, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/gamebooster/model/ActiveModel;->createModelByJson(Lorg/json/JSONObject;)V

    if-eqz v4, :cond_4

    move-object v2, v3

    check-cast v2, Lcom/miui/gamebooster/model/ActiveNewModel;

    const-string v4, "template"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/gamebooster/model/ActiveNewModel;->setTemplate(I)V

    :cond_4
    if-eqz v3, :cond_5

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/gamebooster/model/ActiveModel;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lve/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/miui/gamebooster/model/ActiveModel;->setChannel(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private v(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "v"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lve/b;->n(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string p1, "modelList"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lve/b;->o(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLocalListData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbsActiveRepository"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private y(Ljava/lang/String;)V
    .locals 12

    const-string v0, "AbsActiveRepository"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullActiveDataFromServerInternal: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "channel"

    iget-object v5, p0, Lve/b;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "s"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "setting"

    invoke-static {}, La8/o0;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "3"

    goto :goto_0

    :cond_0
    const-string v5, "2"

    :goto_0
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lve/b;->b:Ljava/lang/String;

    const-string v5, "https://adv.sec.miui.com/game2/gameAdv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    const-string v5, "highEnergyVersion"

    const-string v6, "com.xiaomi.migameservice"

    invoke-static {v4, v6}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dvtp"

    sget-boolean v6, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v6, :cond_1

    const-string v6, "tablet"

    goto :goto_1

    :cond_1
    const-string v6, "phone"

    :goto_1
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "gameVersion"

    const/16 v6, 0x2713

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lsl/a;->a:Z

    if-nez v5, :cond_2

    const-string v5, "com.xiaomi.gamecenter"

    invoke-static {v4, v5}, Lw2/p;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lf7/b;->m()Z

    move-result v6

    const-string v7, "sgv"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sum"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "mds"

    invoke-static {v4}, Lcom/miui/common/f;->c(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v4, "ctst"

    invoke-static {}, La8/o0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "act"

    const-string v5, "coin"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lve/b;->b:Ljava/lang/String;

    new-instance v5, Lp4/i;

    const-string v6, "gamebooster_active"

    invoke-direct {v5, v6}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Leg/j;->t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lx4/q0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lve/b;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lve/b;->l()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v7, v1, v2}, Lcom/miui/gamebooster/model/ActiveModel;->setPreReqeustTime(J)V

    iget-object v8, p0, Lve/b;->a:Ljava/lang/String;

    const-string v9, "01-18-12"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveModel;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {}, Lcom/miui/gamebooster/utils/c;->j()Lcom/miui/gamebooster/utils/c;

    move-result-object v9

    if-eqz v8, :cond_5

    sget-object v8, Lve/d;->d:Lve/d;

    goto :goto_3

    :cond_5
    sget-object v8, Lve/d;->c:Lve/d;

    :goto_3
    const-string v10, "receive"

    invoke-static {v8, v7, v10}, Lcom/miui/gamebooster/utils/c;->h(Lve/d;Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveTrackModel;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/miui/gamebooster/utils/c;->f(Lcom/miui/gamebooster/model/ActiveTrackModel;)V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/ActiveModel;->getDataId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/ActiveModel;->getDataId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/ActiveModel;->isHasRedPointShow()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/gamebooster/model/ActiveModel;->setHasRedPointShow(Z)V

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/ActiveModel;->isHasBubbleShow()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/gamebooster/model/ActiveModel;->setHasBubbleShow(Z)V

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/ActiveModel;->getHasClickTimes()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/gamebooster/model/ActiveModel;->setHasClickTimes(I)V

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/ActiveModel;->getHasShowTimes()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/gamebooster/model/ActiveModel;->setHasShowTimes(I)V

    goto/16 :goto_2

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pullActiveDataFromServerInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lx4/q0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lve/b;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6}, Lve/b;->s(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lve/b;->x(Ljava/util/List;)V

    invoke-virtual {p0}, Lve/b;->p()V

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lve/k;->Z(Ljava/lang/String;)V

    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lve/k;->M(Ljava/lang/String;Z)Lcom/miui/gamebooster/model/m;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lve/b;->E(Lcom/miui/gamebooster/model/m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_b
    :goto_4
    return-void

    :catch_0
    const-string p1, "error proccess active with some exceptions"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method


# virtual methods
.method public A(Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/ActiveModel;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lve/b;->a:Ljava/lang/String;

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lve/b;->b:Ljava/lang/String;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lve/b;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lve/b;->s(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lve/b;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AbsActiveRepository"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lve/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " firstUseGameToolboxV2!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActiveRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lve/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Ls5/a;->f(Landroid/content/Context;)Ls5/a;

    move-result-object v0

    invoke-virtual {v0}, Ls5/a;->b()Ls5/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ls5/a$a;->c(Ljava/lang/String;Z)Ls5/a$a;

    move-result-object v0

    invoke-virtual {v0}, Ls5/a$a;->a()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lve/b;->b(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lve/b;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, La8/k0;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lve/a;

    invoke-direct {v1, p0, p1}, Lve/a;-><init>(Lve/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lve/b;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lve/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, v0}, Lve/b;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lve/b;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "AbsActiveRepository"

    const-string v2, "error proccess cache "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public k(Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveModel;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveModelFromCache: pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActiveRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lve/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/ActiveModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/ActiveModel;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lve/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0, p1}, Lve/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lve/c;

    invoke-direct {v0}, Lve/c;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/ActiveModel;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/miui/gamebooster/model/ActiveModel;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1
.end method

.method protected l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected p()V
    .locals 1

    iget-object v0, p0, Lve/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected w(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lve/b;->a:Ljava/lang/String;

    const-string v2, "01-18-12"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lve/b;->u(Lorg/json/JSONObject;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lve/b;->u(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    :goto_1
    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "AbsActiveRepository"

    const-string v2, "parse json error"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-object v1
.end method

.method protected x(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/ActiveModel;

    instance-of v1, v0, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v1

    const v2, 0x1cd60

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->getTemplate()I

    move-result v0

    const v1, 0x1cd61

    if-ne v0, v1, :cond_1

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lve/b;->f:Z

    :cond_3
    iget-boolean p1, p0, Lve/b;->f:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const-string v0, "key_currentbooster_pkg_uid"

    invoke-static {v0, p1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v0, "gameturbo_support_area"

    const-string v1, "content"

    invoke-static {v0, p1, v1}, Lcom/miui/gamebooster/utils/a$n;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lve/b;->f:Z

    invoke-virtual {p0, p1}, Lve/b;->D(Ljava/lang/String;)V

    iget-object p1, p0, Lve/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lve/b;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

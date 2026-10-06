.class public Lcom/miui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JSONPath"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    const-string v0, "JSONPath"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    :goto_0
    if-nez v1, :cond_2

    return-object v2

    :cond_2
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    :try_start_0
    array-length v5, p1

    if-ge v4, v5, :cond_a

    aget-object v5, p1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    instance-of v6, v1, Lorg/json/JSONObject;

    if-eqz v6, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    instance-of v5, v1, Lorg/json/JSONArray;

    if-eqz v5, :cond_7

    move-object v5, v1

    check-cast v5, Lorg/json/JSONArray;

    if-ne v8, v7, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_7
    if-eqz v1, :cond_9

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v5, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    return-object v2

    :cond_a
    :goto_5
    return-object v1

    :catch_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

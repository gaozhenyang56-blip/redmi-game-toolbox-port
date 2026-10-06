.class public Lmj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String; = "mj.c"


# instance fields
.field private a:Lmj/a;

.field private b:Lmj/b;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmj/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmj/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmj/c;->g:Z

    iput-object p1, p0, Lmj/c;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmj/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lmj/c;->c:I

    return v0
.end method

.method public c(Lorg/json/JSONObject;)Z
    .locals 8

    const-string v0, "combi"

    const-string v1, "body"

    const-string v2, "address"

    const-string v3, "name"

    const-string v4, "sms_type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "assist"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return v7

    :cond_0
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmj/c;->c:I

    :cond_1
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v5, p0, Lmj/c;->g:Z

    :cond_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmj/c;->d:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lmj/a;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v3, v2}, Lmj/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lmj/c;->a:Lmj/a;

    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lmj/b;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v2, v1}, Lmj/b;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lmj/c;->b:Lmj/b;

    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmj/c;->f:Ljava/util/List;

    move v1, v7

    :goto_0
    if-lt v1, v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmj/c;->f:Ljava/util/List;

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    iget-object p1, p0, Lmj/c;->a:Lmj/a;

    if-nez p1, :cond_8

    iget-object p1, p0, Lmj/c;->b:Lmj/b;

    if-nez p1, :cond_8

    iget-object p1, p0, Lmj/c;->f:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_8

    return v7

    :cond_8
    return v5

    :catch_0
    sget-object p1, Lmj/c;->h:Ljava/lang/String;

    const-string v0, "JSONException when decode features."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lmj/c;->g:Z

    return v0
.end method

.method public e(Lkj/b;)Z
    .locals 8

    iget-object v0, p0, Lmj/c;->a:Lmj/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmj/a;->b(Lkj/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lmj/c;->b:Lmj/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmj/b;->b(Lkj/b;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lmj/c;->f:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-lt v5, v4, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    aget-object v6, v3, v5

    iget-object v7, p0, Lmj/c;->e:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmj/c;

    invoke-virtual {v6, p1}, Lmj/c;->e(Lkj/b;)Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

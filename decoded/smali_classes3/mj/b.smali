.class public Lmj/b;
.super Lmj/e;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field i:[I

.field j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmj/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmj/b;->k:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "struct_types"

    const-string v1, "num_types"

    const-string v2, "body_len"

    invoke-direct {p0, p1}, Lmj/e;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v4

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v9, p0, Lmj/b;->h:Ljava/util/List;

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lmj/b;->h:Ljava/util/List;

    :cond_1
    iget-object v9, p0, Lmj/b;->h:Ljava/util/List;

    new-array v7, v7, [I

    aput v6, v7, v4

    aput v5, v7, v8

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lmj/b;->i:[I

    move v2, v4

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lmj/b;->i:[I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmj/b;->j:[I

    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v4, v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lmj/b;->j:[I

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    aput v1, v0, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    sget-object p1, Lmj/b;->k:Ljava/lang/String;

    const-string v0, "JSONException when decode KEY_TYPE features."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public b(Lkj/b;)Z
    .locals 10

    invoke-virtual {p1}, Lkj/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lmj/b;->h:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lmj/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget v5, v4, v3

    if-gt v5, v0, :cond_0

    aget v4, v4, v2

    if-gt v0, v4, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lmj/b;->i:[I

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    iget-object v0, p1, Lkj/b;->n:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    move v0, v3

    move v1, v0

    :goto_1
    iget-object v4, p1, Lkj/b;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, p1, Lkj/b;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkj/b$a;

    iget-object v5, p0, Lmj/b;->i:[I

    array-length v6, v5

    move v7, v3

    :goto_2
    if-lt v7, v6, :cond_5

    goto :goto_3

    :cond_5
    aget v8, v5, v7

    iget v9, v4, Lkj/b$a;->a:I

    if-ne v9, v8, :cond_6

    move v1, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-nez v1, :cond_9

    :cond_8
    :goto_5
    return v3

    :cond_9
    iget-object v0, p0, Lmj/b;->j:[I

    if-eqz v0, :cond_c

    array-length v0, v0

    if-lez v0, :cond_c

    invoke-virtual {p1}, Lkj/b;->j()I

    move-result v0

    iget-object v1, p0, Lmj/b;->j:[I

    array-length v4, v1

    move v5, v3

    :goto_6
    if-lt v5, v4, :cond_a

    move v2, v3

    goto :goto_7

    :cond_a
    aget v6, v1, v5

    and-int/2addr v6, v0

    if-eqz v6, :cond_b

    :goto_7
    if-nez v2, :cond_c

    return v3

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lkj/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmj/e;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

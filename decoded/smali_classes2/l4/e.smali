.class public Ll4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll4/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll4/e;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Ll4/m;)V
    .locals 5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "003"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ll4/m;->e(Lorg/json/JSONObject;)Ll4/m;

    move-result-object v2

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ll4/m;->d(Ll4/m;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Ll4/e;Ljava/lang/String;Ll4/d;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ll4/e;",
            "Ljava/lang/String;",
            "Ll4/d;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v7, p3

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v0, 0x0

    move-object/from16 v9, p4

    move v10, v0

    :goto_0
    if-ge v10, v8, :cond_d

    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v0, "type"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ll4/h;->h(Lorg/json/JSONObject;)Ll4/h;

    move-result-object v0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static {v0, v13, v14}, Ll4/e;->h(Ll4/h;Ljava/util/ArrayList;Ljava/util/Set;)Ll4/h;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    invoke-direct {v7, v0}, Ll4/e;->c(Ll4/b;)V

    :cond_0
    move-object/from16 v15, p5

    goto :goto_2

    :cond_1
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    const-string v2, "003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ll4/m;->e(Lorg/json/JSONObject;)Ll4/m;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    const-string v2, "004"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Ll4/n;

    invoke-direct {v0, v1}, Ll4/n;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const v2, 0x7f120c33

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_3
    invoke-virtual {v0, v9}, Ll4/n;->g(Ljava/lang/String;)V

    move-object/from16 v15, p5

    invoke-static {v7, v15, v0}, Ll4/e;->d(Ll4/e;Ll4/d;Ll4/b;)V

    :cond_4
    :goto_2
    move/from16 v17, v8

    goto/16 :goto_6

    :cond_5
    move-object/from16 v15, p5

    const-string v2, "005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    iget-object v0, v7, Ll4/e;->g:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ll4/k;

    if-nez v0, :cond_4

    iget-object v0, v7, Ll4/e;->g:Ljava/util/ArrayList;

    new-instance v1, Ll4/k;

    invoke-direct {v1}, Ll4/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v2, "rowType"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "card"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "template"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ll4/d;->i(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "list"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v5, Ll4/d;

    invoke-direct {v5, v12}, Ll4/d;-><init>(Lorg/json/JSONObject;)V

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v5}, Ll4/d;->g()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    new-instance v1, Ll4/m;

    invoke-direct {v1}, Ll4/m;-><init>()V

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Ll4/m;->j(I)V

    invoke-static {v0, v1}, Ll4/e;->a(Lorg/json/JSONArray;Ll4/m;)V

    invoke-virtual {v1}, Ll4/m;->g()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_a

    iget-object v0, v7, Ll4/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v7, v1}, Ll4/e;->c(Ll4/b;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ll4/d;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {v7, v5}, Ll4/e;->c(Ll4/b;)V

    :cond_9
    const-string v1, "title"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v16, v5

    move/from16 v17, v8

    move v8, v6

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Ll4/e;->b(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Ll4/e;Ljava/lang/String;Ll4/d;Z)V

    goto :goto_4

    :cond_a
    :goto_3
    move-object/from16 v16, v5

    move/from16 v17, v8

    move v8, v6

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ll4/d;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "module"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v0, v8, :cond_c

    new-instance v0, Ll4/c;

    invoke-direct {v0, v12}, Ll4/c;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual/range {v16 .. v16}, Ll4/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll4/c;->d(Ljava/lang/String;)V

    :goto_5
    invoke-direct {v7, v0}, Ll4/e;->c(Ll4/b;)V

    goto :goto_6

    :cond_b
    move/from16 v17, v8

    const-string v2, "020"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ll4/l;

    invoke-direct {v0, v1}, Ll4/l;-><init>(Lorg/json/JSONObject;)V

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v17

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private c(Ll4/b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ll4/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ll4/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ll4/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static d(Ll4/e;Ll4/d;Ll4/b;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Ll4/e;->c(Ll4/b;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ll4/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ll4/d;->h()I

    move-result v0

    invoke-virtual {p1}, Ll4/d;->f()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p2}, Ll4/e;->c(Ll4/b;)V

    :cond_1
    invoke-virtual {p1, p2}, Ll4/d;->d(Ll4/b;)V

    invoke-direct {p0}, Ll4/e;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ll4/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Ll4/e;->c(Ll4/b;)V

    :goto_0
    instance-of p0, p2, Ll4/n;

    if-eqz p0, :cond_3

    check-cast p2, Ll4/n;

    invoke-virtual {p1}, Ll4/d;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ll4/n;->f(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static e(Lorg/json/JSONObject;Z)Ll4/e;
    .locals 11

    new-instance v7, Ll4/e;

    invoke-direct {v7}, Ll4/e;-><init>()V

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Ll4/e;->a:Ljava/lang/String;

    const-string v1, "dataVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Ll4/e;->b:Ljava/lang/String;

    const-string v1, "layoutId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Ll4/e;->c:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    iput-boolean v1, v7, Ll4/e;->d:Z

    const-string v1, "tn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Ll4/e;->e:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ll4/e;->k(Z)V

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    const-string v3, "functions"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(I)V

    if-eqz p0, :cond_5

    move v6, v8

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_3

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move p0, v8

    :goto_2
    if-ge p0, v4, :cond_5

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "002"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "functionId"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    const/4 p0, 0x0

    move-object v0, v2

    move-object v1, v3

    move-object v2, v5

    move-object v3, v7

    move-object v5, p0

    move v6, p1

    invoke-static/range {v0 .. v6}, Ll4/e;->b(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Ll4/e;Ljava/lang/String;Ll4/d;Z)V

    iget-object p0, v7, Ll4/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, v7, Ll4/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ll4/k;

    if-eqz p0, :cond_6

    iget-object p0, v7, Ll4/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    return-object v7
.end method

.method public static h(Ll4/h;Ljava/util/ArrayList;Ljava/util/Set;)Ll4/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/h;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ll4/h;"
        }
    .end annotation

    const-string v0, "functionId"

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ll4/h;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_5

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ll4/h;->h(Lorg/json/JSONObject;)Ll4/h;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_5
    return-object v1
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static j(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "channel"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lpf/g;->v()Z

    move-result p0

    invoke-static {}, Lpf/g;->w()Z

    move-result v0

    const-string v1, "1"

    const-string v2, "setting"

    if-nez v0, :cond_1

    const-string p0, "2"

    :goto_0
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p0, "3"

    goto :goto_0

    :goto_1
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_3

    const-string p0, "nt"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance p0, Lp4/i;

    const-string v0, "common_datamodel"

    invoke-direct {p0, v0}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v0, "https://adv.sec.miui.com/info/layout"

    invoke-static {p1, v0, p0}, Leg/j;->t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(I)V
    .locals 0

    sput p0, Ll4/e;->h:I

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    iget-boolean v0, p0, Ll4/e;->d:Z

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll4/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll4/e;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Ll4/e;->f:Z

    return-void
.end method

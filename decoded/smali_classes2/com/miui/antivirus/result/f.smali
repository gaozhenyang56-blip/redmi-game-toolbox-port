.class public Lcom/miui/antivirus/result/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static i:I = 0x2

.field private static j:I = 0x1


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


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

    iput-object v0, p0, Lcom/miui/antivirus/result/f;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/f;->h:Z

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lcom/miui/antivirus/result/k;)V
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

    invoke-static {v2}, Lcom/miui/antivirus/result/k;->d(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/k;

    move-result-object v2

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/miui/antivirus/result/k;->b(Lcom/miui/antivirus/result/k;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/antivirus/result/f;Ljava/lang/String;Lcom/miui/antivirus/result/e;Z)V
    .locals 17
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
            "Lcom/miui/antivirus/result/f;",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/result/e;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/miui/antivirus/result/e;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    move v12, v10

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v13, p4

    const/4 v14, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v14, v0, :cond_19

    if-nez v14, :cond_2

    if-eqz v12, :cond_3

    :cond_2
    if-nez v11, :cond_4

    :cond_3
    move v0, v10

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr v1, v10

    if-eq v14, v1, :cond_6

    if-nez v11, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    move-object/from16 v15, p0

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v15, p0

    move v1, v10

    :goto_5
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v2, "type"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "002"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v3}, Lcom/miui/antivirus/result/g;->e(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/g;

    move-result-object v2

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    invoke-static {v2, v5, v4}, Lcom/miui/antivirus/result/f;->i(Lcom/miui/antivirus/result/g;Ljava/util/ArrayList;Ljava/util/Set;)Lcom/miui/antivirus/result/g;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/result/c;->setTop(Z)V

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/result/c;->setBottom(Z)V

    invoke-direct {v7, v2}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    :cond_7
    move v5, v10

    goto/16 :goto_b

    :cond_8
    move-object/from16 v5, p1

    move-object/from16 v4, p2

    const-string v10, "001"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v9, "template"

    if-nez v10, :cond_13

    const-string v10, "0010"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto/16 :goto_9

    :cond_9
    const-string v10, "003"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v3}, Lcom/miui/antivirus/result/k;->d(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/k;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/result/c;->setTop(Z)V

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/result/c;->setBottom(Z)V

    invoke-direct {v7, v2}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    goto :goto_6

    :cond_a
    const-string v10, "004"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const v6, 0x7f120c33

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_b
    new-instance v2, Lcom/miui/antivirus/result/l;

    invoke-direct {v2, v3}, Lcom/miui/antivirus/result/l;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v13}, Lcom/miui/antivirus/result/l;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/result/c;->setTop(Z)V

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/result/c;->setBottom(Z)V

    invoke-static {v7, v8, v2}, Lcom/miui/antivirus/result/f;->d(Lcom/miui/antivirus/result/f;Lcom/miui/antivirus/result/e;Lcom/miui/antivirus/result/c;)V

    :cond_c
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_b

    :cond_d
    const-string v0, "rowType"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "card"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/antivirus/result/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    const-string v0, "list"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v9, Lcom/miui/antivirus/result/e;

    invoke-direct {v9, v6}, Lcom/miui/antivirus/result/e;-><init>(Lorg/json/JSONObject;)V

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {v9}, Lcom/miui/antivirus/result/e;->h()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    new-instance v1, Lcom/miui/antivirus/result/k;

    invoke-direct {v1}, Lcom/miui/antivirus/result/k;-><init>()V

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/k;->j(I)V

    invoke-static {v0, v1}, Lcom/miui/antivirus/result/f;->a(Lorg/json/JSONArray;Lcom/miui/antivirus/result/k;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/result/k;->f()I

    move-result v0

    const/4 v2, 0x3

    const/4 v10, 0x0

    if-lt v0, v2, :cond_11

    invoke-virtual {v1, v10}, Lcom/miui/antivirus/result/c;->setTop(Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/result/c;->setBottom(Z)V

    invoke-direct {v7, v9}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    invoke-direct {v7, v1}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    goto :goto_7

    :cond_f
    const/4 v10, 0x0

    invoke-virtual {v9}, Lcom/miui/antivirus/result/e;->l()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {v7, v9}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    :cond_10
    const-string v1, "title"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object v5, v9

    move-object v10, v6

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/miui/antivirus/result/f;->b(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/antivirus/result/f;Ljava/lang/String;Lcom/miui/antivirus/result/e;Z)V

    goto :goto_8

    :cond_11
    :goto_7
    move-object v10, v6

    :goto_8
    invoke-virtual {v9}, Lcom/miui/antivirus/result/e;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "module"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    new-instance v0, Lcom/miui/antivirus/result/d;

    invoke-direct {v0, v10}, Lcom/miui/antivirus/result/d;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v9}, Lcom/miui/antivirus/result/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/d;->a(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    goto/16 :goto_6

    :cond_12
    move v5, v1

    goto :goto_b

    :cond_13
    :goto_9
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v14, :cond_14

    const/16 v4, 0x46

    if-ne v2, v4, :cond_14

    goto/16 :goto_6

    :cond_14
    if-eqz p6, :cond_c

    sget v4, Lcom/miui/antivirus/result/f;->j:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v6, 0x6d

    if-eqz v4, :cond_15

    goto :goto_a

    :cond_15
    if-eq v2, v6, :cond_16

    sget v4, Lcom/miui/antivirus/result/f;->j:I

    add-int/2addr v4, v5

    sput v4, Lcom/miui/antivirus/result/f;->j:I

    sget v9, Lcom/miui/antivirus/result/f;->i:I

    add-int/2addr v9, v5

    if-ne v4, v9, :cond_16

    sput v5, Lcom/miui/antivirus/result/f;->j:I

    :cond_16
    :goto_a
    const-string v4, ""

    invoke-static {v3, v4}, Lcom/miui/antivirus/result/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/antivirus/result/c;

    move-result-object v3

    if-eqz v3, :cond_18

    instance-of v9, v3, Lcom/miui/antivirus/result/b;

    if-eqz v9, :cond_17

    move-object v9, v3

    check-cast v9, Lcom/miui/antivirus/result/b;

    iget-object v10, v7, Lcom/miui/antivirus/result/f;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/miui/antivirus/result/b;->y(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/antivirus/result/c;->setTop(Z)V

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/result/c;->setBottom(Z)V

    invoke-virtual {v9, v4}, Lcom/miui/antivirus/result/b;->u(Ljava/lang/String;)V

    :cond_17
    invoke-static {v7, v8, v3}, Lcom/miui/antivirus/result/f;->d(Lcom/miui/antivirus/result/f;Lcom/miui/antivirus/result/e;Lcom/miui/antivirus/result/c;)V

    if-ne v2, v6, :cond_18

    if-eqz v8, :cond_18

    invoke-virtual {v8, v3}, Lcom/miui/antivirus/result/e;->c(Lcom/miui/antivirus/result/c;)V

    :cond_18
    :goto_b
    add-int/lit8 v14, v14, 0x1

    move v10, v5

    goto/16 :goto_2

    :cond_19
    return-void
.end method

.method private c(Lcom/miui/antivirus/result/c;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/result/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/result/c;->setTestKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static d(Lcom/miui/antivirus/result/f;Lcom/miui/antivirus/result/e;Lcom/miui/antivirus/result/c;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antivirus/result/e;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/antivirus/result/e;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/antivirus/result/e;->g()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    :cond_1
    invoke-virtual {p1, p2}, Lcom/miui/antivirus/result/e;->c(Lcom/miui/antivirus/result/c;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/result/f;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/miui/antivirus/result/c;->setTestKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/miui/antivirus/result/f;->c(Lcom/miui/antivirus/result/c;)V

    :goto_0
    instance-of p0, p2, Lcom/miui/antivirus/result/l;

    if-eqz p0, :cond_3

    check-cast p2, Lcom/miui/antivirus/result/l;

    invoke-virtual {p1}, Lcom/miui/antivirus/result/e;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/miui/antivirus/result/l;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static f(Lorg/json/JSONObject;Z)Lcom/miui/antivirus/result/f;
    .locals 9

    new-instance v7, Lcom/miui/antivirus/result/f;

    invoke-direct {v7}, Lcom/miui/antivirus/result/f;-><init>()V

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/antivirus/result/f;->b:Ljava/lang/String;

    const-string v1, "dataVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/antivirus/result/f;->c:Ljava/lang/String;

    const-string v1, "layoutId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/antivirus/result/f;->d:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v7, Lcom/miui/antivirus/result/f;->e:Z

    const-string v1, "tn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/antivirus/result/f;->f:Ljava/lang/String;

    const-string v1, "lang"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/antivirus/result/f;->g:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    const-string v4, "functions"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(I)V

    if-eqz p0, :cond_4

    move v6, v3

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_2

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v3, p0, :cond_4

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v8, "002"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "functionId"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    const/4 v6, 0x0

    move-object v0, v2

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    move-object v4, p0

    move-object v5, v6

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/antivirus/result/f;->b(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/Set;Lcom/miui/antivirus/result/f;Ljava/lang/String;Lcom/miui/antivirus/result/e;Z)V

    return-object v7

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lcom/miui/antivirus/result/g;Ljava/util/ArrayList;Ljava/util/Set;)Lcom/miui/antivirus/result/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/antivirus/result/g;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/antivirus/result/g;"
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

    invoke-virtual {p0}, Lcom/miui/antivirus/result/g;->g()I

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
    invoke-static {p0}, Lcom/miui/antivirus/result/g;->e(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/g;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static l(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, "channel"

    const-string v3, "1"

    if-eqz v1, :cond_1

    const-string v0, "01-16"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nt"

    goto :goto_0

    :cond_1
    const-string v1, "01-10"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lq2/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "landingPageUrlType"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx4/a0;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ua"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vs_version"

    :goto_0
    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lpf/g;->v()Z

    move-result v0

    invoke-static {}, Lpf/g;->w()Z

    move-result v1

    const-string v2, "setting"

    if-nez v1, :cond_2

    const-string v0, "2"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    sget-object v0, Leg/j$b;->b:Leg/j$b;

    new-instance v1, Lp4/i;

    const-string v2, "antivirus_datamodel_post"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "https://adv.sec.miui.com/info/layout"

    const-string v3, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    invoke-static {p0, v2, v0, v3, v1}, Lxe/a;->f(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/result/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/result/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/result/f;->e:Z

    return v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/f;->c:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/antivirus/result/f;->a:Ljava/util/List;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/f;->b:Ljava/lang/String;

    return-void
.end method

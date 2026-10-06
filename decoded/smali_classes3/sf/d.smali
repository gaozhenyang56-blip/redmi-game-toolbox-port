.class public Lsf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static o:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsf/d;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsf/d;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsf/d;->b:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lsf/d;->k:Ljava/lang/String;

    return-void
.end method

.method private static A(Lcom/miui/common/card/models/PopularActionCardModel;Lorg/json/JSONArray;)V
    .locals 19

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Leg/m;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Leg/d;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lsf/b;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "title"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "summary"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "icon"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "action"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "color4intro"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "color4bright"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "color4dark"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "dataId"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v7, "statKey"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v17, v5

    goto :goto_1

    :cond_2
    move-object/from16 v17, v4

    goto :goto_1

    :cond_3
    move-object/from16 v17, v7

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v11, v7, Lcd/b;

    if-eqz v11, :cond_4

    check-cast v7, Lcd/b;

    iget-object v7, v7, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v11}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    :cond_6
    if-eqz v6, :cond_4

    :cond_7
    new-instance v4, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v7, v4

    move-object/from16 v18, v15

    move-object/from16 v16, v5

    invoke-direct/range {v7 .. v17}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_8

    sget-object v4, Leg/m;->a:Landroid/util/ArrayMap;

    move-object/from16 v5, v18

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    :cond_8
    if-eqz v4, :cond_9

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Lcom/miui/common/card/models/PopularActionCardModel;->addItem(Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;)V

    goto :goto_2

    :cond_9
    move-object/from16 v5, p0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private static B(Lcom/miui/common/card/models/PopularActionCardModel;Lorg/json/JSONArray;)V
    .locals 20

    invoke-static {}, Leg/m;->a()V

    invoke-static {}, Leg/m;->c()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Leg/d;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lsf/b;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_c

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "title"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "summary"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "icon"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "action"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "dataId"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v8, "statKey"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v18, v6

    goto :goto_1

    :cond_2
    move-object/from16 v18, v5

    goto :goto_1

    :cond_3
    move-object/from16 v18, v8

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v2

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v12, v8, Lcd/b;

    if-eqz v12, :cond_4

    check-cast v8, Lcd/b;

    iget-object v8, v8, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v12}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v7, 0x1

    :cond_6
    if-eqz v7, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v5, Leg/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;

    new-instance v19, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    invoke-virtual {v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->getIconBgRes()I

    move-result v12

    const/4 v13, -0x1

    invoke-virtual {v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->getBrightBgColor()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->getDarkBgColor()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->getIntroColor()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v19

    move-object/from16 v17, v6

    invoke-direct/range {v8 .. v18}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_a

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_2
    sget-object v9, Leg/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    invoke-virtual {v9}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    invoke-virtual/range {v19 .. v19}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v6, v19

    invoke-virtual {v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->getBrightBgColor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->setBrightBgColor(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->getDarkBgColor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->setDarkBgColor(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->getIntroColor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->setIntroColor(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;->getIconBgRes()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;->setIconBgRes(I)V

    move-object/from16 v5, p0

    invoke-virtual {v5, v6}, Lcom/miui/common/card/models/PopularActionCardModel;->addItem(Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;)V

    goto :goto_3

    :cond_b
    move-object/from16 v5, p0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private static C(Lsf/d;Lorg/json/JSONObject;I)V
    .locals 2

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "placeholder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lsf/d;->c(Lsf/d;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, v0}, Lsf/d;->d(Lsf/d;Lorg/json/JSONObject;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static D(Lsf/d;Lcom/miui/common/card/models/TitleCardModel;Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;Lcd/a;Lcom/miui/common/card/models/FuncListTopScrollCardModel;Lorg/json/JSONObject;I)V
    .locals 9

    move-object v0, p0

    move-object v8, p1

    move-object v1, p6

    move/from16 v2, p7

    const-string v3, "type"

    invoke-virtual {p6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "template"

    invoke-virtual {p6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "data"

    invoke-virtual {p6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v1, "001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v2, v4, v5}, Lcom/miui/common/card/models/AdvCardModel;->parse(Lsf/d;IILorg/json/JSONObject;)Lcom/miui/common/card/models/BaseCardModel;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_6

    :goto_0
    invoke-virtual {p1, v1}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x640

    if-ne v4, v1, :cond_2

    invoke-static {}, Ldd/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Leg/d;->a(Landroid/content/Context;)Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2, v1}, Leg/d;->b(Landroid/content/Context;Ljava/util/List;)Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    move-result-object v1

    :goto_1
    iget-object v0, v0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    move v1, v4

    move-object v2, v5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/miui/common/card/models/FunctionCardModel;->parse(ILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;Lcd/a;Lcom/miui/common/card/models/FuncListTopScrollCardModel;)Lcom/miui/common/card/models/FunctionCardModel;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_6

    goto :goto_0

    :cond_3
    const-string v1, "003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2, v4, v5}, Lcom/miui/common/card/models/ActivityCardModel;->parse(IILorg/json/JSONObject;)Lcom/miui/common/card/models/ActivityCardModel;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_6

    goto :goto_0

    :cond_4
    const-string v1, "004"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v2, v4, v5, p1}, Lcom/miui/common/card/models/NewsCardModel;->parse(IILorg/json/JSONObject;Lcom/miui/common/card/models/TitleCardModel;)Lcom/miui/common/card/models/NewsCardModel;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_6

    goto :goto_0

    :cond_5
    const-string v0, "005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public static E(Ljava/util/Map;)Ljava/lang/String;
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
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "1"

    const-string v2, "channel"

    if-eqz v0, :cond_1

    const-string v0, "02-24"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nt"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "01-24"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "landingPageUrlType"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx4/a0;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ua"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p0}, Lsf/d;->a(Ljava/util/Map;)V

    invoke-static {}, Lpf/g;->v()Z

    move-result v0

    invoke-static {}, Lpf/g;->w()Z

    move-result v2

    const-string v3, "setting"

    if-nez v2, :cond_2

    const-string v0, "2"

    :goto_1
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v0, "3"

    goto :goto_1

    :goto_2
    new-instance v0, Lp4/i;

    const-string v1, "securityscan_postfirstaidscanresult"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://adv.sec.miui.com/info/layout"

    invoke-static {p0, v1, v0}, Lxe/a;->e(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
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

    const/4 v2, 0x0

    const-string v3, "rep"

    const-string v4, "isBInstalled"

    const-string v5, "isAInstalled"

    const-string v6, "channel"

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    invoke-static {}, Lx4/t;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "13-02-01"

    goto :goto_0

    :cond_1
    const-string v1, "15-01-01"

    :goto_0
    invoke-interface {p0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.whatsapp"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.facebook.katana"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.facebook.orca"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.facebook.lite"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v7

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "false"

    goto :goto_4

    :cond_4
    invoke-static {}, Lx4/t;->E()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "13-01-01"

    goto :goto_3

    :cond_5
    const-string v1, "11-01-01"

    :goto_3
    invoke-interface {p0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx4/k0;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hp_version"

    const-string v1, "2"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-static {v3}, Ldd/a;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    if-ge v2, v4, :cond_6

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "popularActions"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isSupportLB"

    const-string v2, "true"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lpf/g;->v()Z

    move-result v0

    invoke-static {}, Lpf/g;->w()Z

    move-result v2

    const-string v3, "setting"

    if-nez v2, :cond_8

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    if-eqz v0, :cond_9

    const-string v0, "1"

    goto :goto_6

    :cond_9
    const-string v0, "3"

    :goto_6
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    new-instance v0, Lp4/i;

    const-string v1, "securityscan_posthomepage"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://adv.sec.miui.com/info/layout"

    invoke-static {p0, v1, v0}, Leg/j;->t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
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
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "15-02-01"

    goto :goto_0

    :cond_1
    const-string v0, "11-02-01"

    :goto_0
    const-string v1, "channel"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "landingPageUrlType"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lsf/d;->a(Ljava/util/Map;)V

    invoke-static {}, Lpf/g;->v()Z

    move-result v0

    invoke-static {}, Lpf/g;->w()Z

    move-result v1

    const-string v2, "setting"

    if-nez v1, :cond_2

    const-string v0, "2"

    :goto_1
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "1"

    goto :goto_1

    :cond_3
    const-string v0, "3"

    goto :goto_1

    :goto_2
    new-instance v0, Lp4/i;

    const-string v1, "securityscan_postphonemanagedata"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://adv.sec.miui.com/info/layout"

    invoke-static {p0, v1, v0}, Lxe/a;->e(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/util/Map;)Ljava/lang/String;
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
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "1"

    const-string v2, "channel"

    if-eqz v0, :cond_1

    const-string v0, "01-14"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nt"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "01-6"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "landingPageUrlType"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx4/a0;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ua"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p0}, Lsf/d;->a(Ljava/util/Map;)V

    invoke-static {}, Lpf/g;->v()Z

    move-result v0

    invoke-static {}, Lpf/g;->w()Z

    move-result v2

    const-string v3, "setting"

    if-nez v2, :cond_2

    const-string v0, "2"

    :goto_1
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v0, "3"

    goto :goto_1

    :goto_2
    new-instance v0, Lp4/i;

    const-string v1, "securityscan_postscanresult"

    invoke-direct {v0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://adv.sec.miui.com/info/layout"

    invoke-static {p0, v1, v0}, Lxe/a;->e(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, "isBInstalled"

    const-string v3, "isAInstalled"

    if-eqz v1, :cond_2

    const-string v1, "com.whatsapp"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.facebook.katana"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.facebook.orca"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.facebook.lite"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Lcom/miui/common/card/models/FuncListTopScrollCardModel;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lof/i;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lof/i$d;

    if-lt v5, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    iget-object v9, v6, Lof/i$d;->a:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lof/i$d;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v4

    :goto_1
    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    new-instance v7, Lcom/miui/common/card/functions/FuncTopBannerScrollData;

    invoke-direct {v7}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;-><init>()V

    iget v8, v6, Lof/i$d;->c:I

    iput v8, v7, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->iconRes:I

    iget-object v8, v6, Lof/i$d;->a:Ljava/lang/String;

    iput-object v8, v7, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->id:Ljava/lang/String;

    iget-object v8, v6, Lof/i$d;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setSummary(Ljava/lang/String;)V

    :try_start_0
    iget-object v8, v6, Lof/i$d;->b:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    new-instance v9, Lcom/miui/common/card/functions/CommonFunction;

    invoke-direct {v9, v8}, Lcom/miui/common/card/functions/CommonFunction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v9, v4}, Lcom/miui/common/card/functions/CommonFunction;->setRecordClickState(Z)V

    iget-object v8, v6, Lof/i$d;->a:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/miui/common/card/functions/CommonFunction;->setId(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setCommonFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    iget-object v6, v6, Lof/i$d;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/miui/common/card/functions/FuncTopBannerScrollData;->setAction(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "DataModel"

    const-string v8, "add notification link data error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/miui/common/card/models/FunctionCardModel;->setFuncTopBannerScrollDataList(Ljava/util/List;)V

    return v4

    :cond_6
    return v3
.end method

.method private static c(Lsf/d;)V
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/PlaceHolderCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/PlaceHolderCardModel;-><init>()V

    iget-object p0, p0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static d(Lsf/d;Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "template"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v5, :cond_2

    if-eq v2, v3, :cond_8

    const/16 v7, 0x585

    if-eq v2, v7, :cond_7

    const/16 v7, 0x9

    if-eq v2, v7, :cond_6

    const/16 v7, 0xa

    if-eq v2, v7, :cond_5

    const/16 v7, 0x641

    if-eq v2, v7, :cond_4

    const/16 v7, 0x642

    if-eq v2, v7, :cond_3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v7, Lcd/a;

    invoke-direct {v7}, Lcd/a;-><init>()V

    move/from16 v9, p2

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v13, v7

    goto/16 :goto_5

    :pswitch_1
    const-wide/32 v9, 0x5265c00

    invoke-static {v9, v10}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ldd/d;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    if-eqz v7, :cond_1

    new-instance v7, Lcd/f;

    invoke-direct {v7}, Lcd/f;-><init>()V

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v9, p2

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    goto/16 :goto_5

    :pswitch_2
    new-instance v7, Lcd/b;

    invoke-direct {v7}, Lcd/b;-><init>()V

    :goto_2
    move/from16 v9, p2

    goto/16 :goto_4

    :cond_2
    :pswitch_3
    move/from16 v9, p2

    goto/16 :goto_3

    :cond_3
    new-instance v7, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;

    invoke-direct {v7}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;-><init>()V

    goto :goto_2

    :cond_4
    new-instance v7, Lcom/miui/common/card/models/PopularActionCardModel;

    invoke-direct {v7}, Lcom/miui/common/card/models/PopularActionCardModel;-><init>()V

    move/from16 v9, p2

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v6, v7

    goto :goto_5

    :cond_5
    new-instance v7, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;

    invoke-direct {v7}, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;-><init>()V

    move/from16 v9, p2

    move-object v10, v6

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v12, v7

    goto :goto_5

    :cond_6
    new-instance v7, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    invoke-direct {v7}, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;-><init>()V

    move/from16 v9, p2

    move-object v10, v6

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object v11, v7

    goto :goto_5

    :cond_7
    new-instance v7, Lcom/miui/common/card/models/FuncListTopScrollCardModel;

    invoke-direct {v7}, Lcom/miui/common/card/models/FuncListTopScrollCardModel;-><init>()V

    move/from16 v9, p2

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v7

    goto :goto_5

    :cond_8
    new-instance v7, Lcom/miui/common/card/models/AdvListTitleCardModel;

    move/from16 v9, p2

    invoke-direct {v7, v9}, Lcom/miui/common/card/models/AdvListTitleCardModel;-><init>(I)V

    goto :goto_4

    :goto_3
    new-instance v7, Lcom/miui/common/card/models/ListTitleCardModel;

    invoke-direct {v7}, Lcom/miui/common/card/models/ListTitleCardModel;-><init>()V

    :goto_4
    move-object v11, v6

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v10, v7

    :goto_5
    if-eqz v10, :cond_d

    iget-object v7, v8, Lsf/d;->c:Ljava/lang/String;

    const-string v15, "11-01-01"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v8, Lsf/d;->c:Ljava/lang/String;

    const-string v15, "15-01-01"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v8, Lsf/d;->c:Ljava/lang/String;

    const-string v15, "13-01-01"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v8, Lsf/d;->c:Ljava/lang/String;

    const-string v15, "13-02-01"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v10, v4}, Lcom/miui/common/card/models/TitleCardModel;->setHomePageFunc(Z)V

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual {v10, v5}, Lcom/miui/common/card/models/TitleCardModel;->setHomePageFunc(Z)V

    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lcom/miui/common/card/models/TitleCardModel;->setId(J)V

    invoke-virtual {v10, v1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    const/16 v3, 0x57b

    if-ne v2, v3, :cond_b

    const-string v3, "subTitle"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    const-string v3, "subVisible"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v10, v3}, Lcom/miui/common/card/models/BaseCardModel;->setSubVisible(Z)V

    :cond_b
    const-string v3, "visible"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v10, v3}, Lcom/miui/common/card/models/TitleCardModel;->setVisible(Z)V

    const/4 v3, -0x1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_c

    const-string v2, "position"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/miui/common/card/models/TitleCardModel;->setPosition(I)V

    goto :goto_8

    :cond_c
    invoke-virtual {v10, v3}, Lcom/miui/common/card/models/TitleCardModel;->setPosition(I)V

    :goto_8
    invoke-virtual {v10}, Lcom/miui/common/card/models/TitleCardModel;->clear()V

    iget-object v2, v8, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v11, :cond_e

    iget-object v2, v8, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v12, :cond_f

    iget-object v2, v8, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v13, :cond_10

    iget-object v2, v8, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz v14, :cond_11

    iget-object v2, v8, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string v2, "list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v6, :cond_14

    invoke-virtual {v6, v1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    if-eqz v7, :cond_13

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_12

    invoke-static {v6, v7}, Lsf/d;->B(Lcom/miui/common/card/models/PopularActionCardModel;Lorg/json/JSONArray;)V

    goto :goto_9

    :cond_12
    invoke-static {v6, v7}, Lsf/d;->A(Lcom/miui/common/card/models/PopularActionCardModel;Lorg/json/JSONArray;)V

    :cond_13
    :goto_9
    iget-object v0, v8, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v7, :cond_15

    const/4 v15, 0x0

    :goto_a
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_15

    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v16, v7

    move/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lsf/d;->z(Lsf/d;Lcom/miui/common/card/models/TitleCardModel;Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;Lcd/a;Lcom/miui/common/card/models/FuncListTopScrollCardModel;Lorg/json/JSONObject;I)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v16

    goto :goto_a

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x579
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lorg/json/JSONObject;I)Lsf/d;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, p1, v0, v0}, Lsf/d;->h(Lorg/json/JSONObject;III)Lsf/d;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lorg/json/JSONObject;III)Lsf/d;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lsf/d;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v10, Lsf/d;

    invoke-direct {v10}, Lsf/d;-><init>()V

    iget-object v2, v10, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    iput v11, v10, Lsf/d;->n:I

    const-string v2, "isOverseaChannel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v10, Lsf/d;->j:Z

    const-string v2, "lang"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lsf/d;->k:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lsf/d;->c:Ljava/lang/String;

    const-string v2, "dataVersion"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lsf/d;->d:Ljava/lang/String;

    const-string v2, "layoutId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lsf/d;->e:Ljava/lang/String;

    const-string v2, "tn"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lsf/d;->f:Ljava/lang/String;

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lsf/d;->m:I

    const-string v2, "forceRefresh"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v10, Lsf/d;->g:Z

    const-string v2, "extraData"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "screenInsurance"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "buy"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v10, Lsf/d;->h:Z

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lsf/d;->i:Ljava/lang/String;

    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v12, v10, Lsf/d;->l:Z

    goto :goto_0

    :cond_1
    iput-boolean v11, v10, Lsf/d;->l:Z

    :goto_0
    if-eqz v0, :cond_2

    move v13, v11

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_2

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lsf/d;->z(Lsf/d;Lcom/miui/common/card/models/TitleCardModel;Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;Lcd/a;Lcom/miui/common/card/models/FuncListTopScrollCardModel;Lorg/json/JSONObject;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v3, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v6, v10, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2b

    iget-object v6, v10, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v7, v6, Lcom/miui/common/card/models/TitleCardModel;

    if-eqz v7, :cond_28

    check-cast v6, Lcom/miui/common/card/models/TitleCardModel;

    iget-object v7, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    if-eqz v7, :cond_23

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_23

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelTemplate()I

    move-result v9

    const/16 v13, 0x642

    if-eq v9, v13, :cond_19

    const/4 v13, 0x4

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    new-instance v8, Lcd/e;

    invoke-direct {v8}, Lcd/e;-><init>()V

    invoke-virtual {v8, v12}, Lcd/g;->setTopRow(Z)V

    invoke-virtual {v8, v12}, Lcd/g;->setBottomRow(Z)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    iget-object v15, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-le v15, v13, :cond_4

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_5

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    iget-object v13, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/common/card/GridFunctionData;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v12, 0x1

    const/4 v13, 0x4

    goto :goto_3

    :cond_4
    iget-object v2, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {v8, v9}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v8}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    :pswitch_1
    move v2, v13

    invoke-static {v8, v2}, Lsf/d;->o(II)I

    move-result v2

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v2, :cond_2a

    new-instance v11, Lcd/g;

    invoke-direct {v11}, Lcd/g;-><init>()V

    const/4 v12, 0x1

    if-ne v2, v12, :cond_6

    invoke-virtual {v11, v12}, Lcd/g;->setTopRow(Z)V

    :goto_6
    invoke-virtual {v11, v12}, Lcd/g;->setBottomRow(Z)V

    goto :goto_7

    :cond_6
    if-nez v9, :cond_7

    invoke-virtual {v11, v12}, Lcd/g;->setTopRow(Z)V

    goto :goto_7

    :cond_7
    add-int/lit8 v13, v2, -0x1

    if-ne v9, v13, :cond_8

    goto :goto_6

    :cond_8
    :goto_7
    mul-int/lit8 v12, v9, 0x4

    add-int/lit8 v13, v12, 0x4

    if-le v13, v8, :cond_9

    move v13, v8

    :cond_9
    iget-object v14, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v14, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :pswitch_2
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v8, :cond_a

    new-instance v9, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-direct {v9}, Lcom/miui/common/card/models/FuncGrid6CardModel;-><init>()V

    invoke-virtual {v9, v2}, Lcom/miui/common/card/models/FuncGrid6CardModel;->setIndexInGridSix(I)V

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    iget-object v11, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v9, v11}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v9}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :pswitch_3
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v8, :cond_b

    new-instance v9, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    invoke-direct {v9}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    iget-object v11, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v9, v11}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v9}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    rem-int v2, v8, p2

    if-eqz v2, :cond_c

    rem-int v8, v8, p2

    sub-int v2, p2, v8

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v2, :cond_c

    new-instance v9, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    invoke-direct {v9}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionDataList(Ljava/util/List;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v9}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_c
    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int v2, v2, p2

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_18

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    div-int v9, v6, p2

    rem-int v12, v6, p2

    const/4 v13, 0x1

    if-gt v2, v13, :cond_10

    if-nez v12, :cond_d

    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopLeft:Z

    :goto_c
    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomLeft:Z

    goto :goto_e

    :cond_d
    add-int/lit8 v9, p2, -0x1

    if-ne v12, v9, :cond_e

    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRight:Z

    :goto_d
    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRight:Z

    goto :goto_e

    :cond_e
    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopMiddle:Z

    :cond_f
    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomMiddle:Z

    goto :goto_e

    :cond_10
    if-lez v9, :cond_13

    add-int/lit8 v13, v2, -0x1

    if-ge v9, v13, :cond_13

    if-nez v12, :cond_11

    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleLeft:Z

    goto :goto_e

    :cond_11
    const/4 v13, 0x1

    add-int/lit8 v9, p2, -0x1

    if-ne v12, v9, :cond_12

    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleRight:Z

    goto :goto_e

    :cond_12
    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddle:Z

    goto :goto_e

    :cond_13
    const/4 v13, 0x1

    if-nez v9, :cond_16

    if-nez v12, :cond_14

    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopLeft:Z

    goto :goto_e

    :cond_14
    add-int/lit8 v9, p2, -0x1

    if-ne v12, v9, :cond_15

    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRight:Z

    goto :goto_e

    :cond_15
    iput-boolean v13, v8, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopMiddle:Z

    goto :goto_e

    :cond_16
    if-nez v12, :cond_17

    goto :goto_c

    :cond_17
    add-int/lit8 v9, p2, -0x1

    if-ne v12, v9, :cond_f

    goto :goto_d

    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_4

    :cond_19
    const/4 v11, 0x0

    iget-object v2, v10, Lsf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v10, Lsf/d;->b:Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    iget-object v8, v10, Lsf/d;->b:Ljava/util/ArrayList;

    invoke-static {v2, v8}, Leg/d;->c(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    div-int v8, v8, p3

    const/4 v9, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_22

    new-instance v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;

    invoke-direct {v12}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;-><init>()V

    add-int/lit8 v13, v9, 0x1

    iput v13, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->position:I

    div-int v14, v9, p3

    rem-int v15, v9, p3

    move-object/from16 v16, v2

    const/4 v11, 0x1

    add-int/lit8 v2, v8, -0x1

    if-ne v14, v2, :cond_1c

    if-nez v15, :cond_1a

    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isBottomLeft:Z

    goto :goto_10

    :cond_1a
    add-int/lit8 v2, p3, -0x1

    if-ne v15, v2, :cond_1b

    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isBottomRight:Z

    goto :goto_10

    :cond_1b
    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isBottomMiddle:Z

    goto :goto_10

    :cond_1c
    if-nez v14, :cond_1f

    if-nez v15, :cond_1d

    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isTopLeft:Z

    goto :goto_10

    :cond_1d
    add-int/lit8 v2, p3, -0x1

    if-ne v15, v2, :cond_1e

    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isTopRight:Z

    goto :goto_10

    :cond_1e
    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isTopMiddle:Z

    goto :goto_10

    :cond_1f
    if-nez v15, :cond_20

    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isMiddleLeft:Z

    goto :goto_10

    :cond_20
    add-int/lit8 v2, p3, -0x1

    if-ne v15, v2, :cond_21

    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isMiddleRight:Z

    goto :goto_10

    :cond_21
    iput-boolean v11, v12, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;->isMiddle:Z

    :goto_10
    invoke-virtual {v12, v11}, Lcom/miui/common/card/models/FunctionCardModel;->setHomePageFunc(Z)V

    iget-object v2, v6, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v12, v2}, Lcom/miui/common/card/models/FunctionCardModel;->setGridFunctionData(Lcom/miui/common/card/GridFunctionData;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v12}, Lcom/miui/common/card/models/TitleCardModel;->addSubCardModelList(Lcom/miui/common/card/models/BaseCardModel;)V

    move v9, v13

    move-object/from16 v2, v16

    const/4 v11, 0x0

    goto :goto_f

    :cond_22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_4

    :cond_23
    invoke-virtual {v6}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelTemplate()I

    move-result v2

    const/4 v7, 0x7

    if-eq v2, v7, :cond_24

    goto :goto_14

    :cond_24
    invoke-virtual {v6}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_2a

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v9, v8, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v9, :cond_27

    check-cast v8, Lcom/miui/common/card/models/NewsCardModel;

    const/4 v9, 0x1

    if-ne v6, v9, :cond_25

    invoke-virtual {v8, v9}, Lcom/miui/common/card/models/NewsCardModel;->setTopRow(Z)V

    :goto_12
    invoke-virtual {v8, v9}, Lcom/miui/common/card/models/NewsCardModel;->setBottomRow(Z)V

    goto :goto_13

    :cond_25
    if-nez v7, :cond_26

    invoke-virtual {v8, v9}, Lcom/miui/common/card/models/NewsCardModel;->setTopRow(Z)V

    goto :goto_13

    :cond_26
    add-int/lit8 v11, v6, -0x1

    if-ne v7, v11, :cond_27

    goto :goto_12

    :cond_27
    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_28
    instance-of v2, v6, Lcom/miui/common/card/models/FuncListTopScrollCardModel;

    if-eqz v2, :cond_29

    move-object v4, v6

    check-cast v4, Lcom/miui/common/card/models/FuncListTopScrollCardModel;

    goto :goto_14

    :cond_29
    instance-of v2, v6, Lcom/miui/common/card/models/PopularActionCardModel;

    if-eqz v2, :cond_2a

    move-object v5, v6

    check-cast v5, Lcom/miui/common/card/models/PopularActionCardModel;

    :cond_2a
    :goto_14
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_2b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2c
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    :goto_16
    if-ltz v2, :cond_2d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, v10, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_2d
    move/from16 v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    if-nez v4, :cond_2e

    new-instance v0, Lcom/miui/common/card/models/FuncListTopScrollCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/FuncListTopScrollCardModel;-><init>()V

    invoke-static {v0}, Lsf/d;->b(Lcom/miui/common/card/models/FuncListTopScrollCardModel;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v10, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_17

    :cond_2e
    invoke-static {v4}, Lsf/d;->b(Lcom/miui/common/card/models/FuncListTopScrollCardModel;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, v10, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2f
    :goto_17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_30

    const-string v2, "zh_cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    if-eqz v5, :cond_30

    iget-object v0, v10, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_30
    monitor-exit v1

    return-object v10

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x579
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, v2, Lcom/miui/common/card/models/AdvCardModel;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/miui/common/card/models/ActivityCardModel;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v3, :cond_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_9

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, v2, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    invoke-virtual {v3}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v3, v2, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;

    invoke-virtual {v3}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    instance-of v3, v2, Lcd/a;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lcd/a;

    invoke-virtual {v3}, Lcom/miui/common/card/models/FunctionCardModel;->getFuncTopBannerScrollDataList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-lez v1, :cond_b

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v2, :cond_a

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v2, :cond_a

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v2, :cond_c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    const/4 p0, 0x0

    :cond_e
    :goto_3
    return-object p0
.end method

.method public static o(II)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    rem-int v0, p0, p1

    div-int/2addr p0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public static y(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lx4/f1;->c(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private static z(Lsf/d;Lcom/miui/common/card/models/TitleCardModel;Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;Lcd/a;Lcom/miui/common/card/models/FuncListTopScrollCardModel;Lorg/json/JSONObject;I)V
    .locals 2

    const-string v0, "rowType"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p0 .. p7}, Lsf/d;->D(Lsf/d;Lcom/miui/common/card/models/TitleCardModel;Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;Lcd/a;Lcom/miui/common/card/models/FuncListTopScrollCardModel;Lorg/json/JSONObject;I)V

    goto :goto_0

    :cond_0
    const-string p1, "card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, p6, p7}, Lsf/d;->C(Lsf/d;Lorg/json/JSONObject;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public I(I)V
    .locals 0

    iput p1, p0, Lsf/d;->n:I

    return-void
.end method

.method public e()Z
    .locals 2

    invoke-virtual {p0}, Lsf/d;->l()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lsf/d;->v()Z

    move-result v1

    if-eqz v1, :cond_0

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

.method public f()Z
    .locals 2

    invoke-virtual {p0}, Lsf/d;->l()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lsf/d;->v()Z

    move-result v1

    if-nez v1, :cond_0

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

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsf/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lsf/d;->n:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsf/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lsf/d;->n(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public n(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsf/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    iget-boolean v5, p0, Lsf/d;->j:Z

    invoke-virtual {v4, v5}, Lcom/miui/common/card/models/BaseCardModel;->setOverseaChannel(Z)V

    iget-object v5, p0, Lsf/d;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/common/card/models/BaseCardModel;->setLanguage(Ljava/lang/String;)V

    instance-of v5, v4, Lcom/miui/common/card/models/TitleCardModel;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Lcom/miui/common/card/models/TitleCardModel;

    invoke-virtual {v5}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Lcom/miui/common/card/models/TitleCardModel;->isVisible()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/BaseCardModel;

    if-eqz v5, :cond_4

    const/4 v7, 0x1

    if-nez v4, :cond_3

    instance-of v8, v5, Lcom/miui/common/card/models/FuncGridBaseCardModel;

    if-eqz v8, :cond_2

    check-cast v5, Lcom/miui/common/card/models/FuncGridBaseCardModel;

    :goto_2
    invoke-virtual {v5, v7}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->setPreviousLine(Z)V

    goto :goto_3

    :cond_2
    instance-of v8, v5, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v8, :cond_4

    check-cast v5, Lcom/miui/common/card/models/NewsCardModel;

    invoke-virtual {v5, v7}, Lcom/miui/common/card/models/NewsCardModel;->setPreviousLine(Z)V

    goto :goto_3

    :cond_3
    instance-of v8, v5, Lcom/miui/common/card/models/FuncGridBaseCardModel;

    if-eqz v8, :cond_4

    check-cast v5, Lcom/miui/common/card/models/FuncGridBaseCardModel;

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lsf/d;->a:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsf/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsf/d;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lsf/d;->m:I

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lsf/d;->g:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lsf/d;->j:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lsf/d;->h:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lsf/d;->l:Z

    return v0
.end method

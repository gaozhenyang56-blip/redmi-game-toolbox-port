.class public Lhf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "sim_id_1"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_6

    const-string v6, "CKKeywordsBlack"

    const-string v7, "CKCallTransfer"

    const-string v8, "CKRepeatedMarkNum"

    const-string v9, "CKHarass"

    const-string v10, "CKSell"

    const-string v11, "CKAgent"

    const-string v12, "CKFraud"

    const-string v13, "CKOverseaCallModes"

    const-string v14, "CKEmptyCallModes"

    const-string v15, "CKServiceSmsModes"

    move-object/from16 v16, v4

    const-string v4, "CKContactCallModes"

    move-object/from16 v17, v6

    const-string v6, "CKContactSmsModes"

    move-object/from16 v18, v7

    const-string v7, "CKStrangerCallModes"

    move-object/from16 v19, v8

    const-string v8, "CKStrangerSmsModes"

    move-object/from16 v20, v9

    const-string v9, "CKNotificationShowType"

    move-object/from16 v21, v10

    const-string v10, "CKAntispamEnable"

    move-object/from16 v22, v11

    const-string v11, "notes"

    move-object/from16 v23, v11

    const-string v11, "sim_id"

    move-object/from16 v24, v11

    const-string v11, "type"

    const/16 v25, 0x0

    move-object/from16 v26, v11

    if-eqz v5, :cond_1d

    :try_start_1
    const-string v5, "sim_id_1"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v28, v10

    const/4 v10, 0x1

    invoke-static {v1, v10, v11}, Lm2/a;->t(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_1
    move-object/from16 v28, v10

    :goto_0
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v1, v10, v11}, Lm2/a;->z(Landroid/content/Context;II)V

    :cond_2
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "stranger_sms_mode"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v29, v8

    const/4 v8, 0x1

    invoke-static {v1, v10, v8, v11}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    move-object/from16 v29, v8

    :goto_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "stranger_call_mode"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v1, v8, v11, v10}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_4
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "contact_sms_mode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v1, v8, v11, v10}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_5
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "contact_call_mode"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v1, v8, v11, v10}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_6
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "service_sms_mode"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v1, v8, v11, v10}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_7
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "empty_call_mode"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v1, v8, v11, v10}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_8
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "oversea_call_mode"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v1, v8, v11, v10}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_9
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v3, :cond_a

    const/4 v8, 0x1

    goto :goto_2

    :cond_a
    move/from16 v8, v25

    :goto_2
    const/4 v10, 0x1

    invoke-static {v1, v10, v8}, Le2/b;->v(Landroid/content/Context;IZ)V

    :cond_b
    move-object/from16 v8, v22

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v3, :cond_c

    const/4 v10, 0x1

    goto :goto_3

    :cond_c
    move/from16 v10, v25

    :goto_3
    const/4 v11, 0x1

    invoke-static {v1, v11, v10}, Le2/b;->q(Landroid/content/Context;IZ)V

    :cond_d
    move-object/from16 v10, v21

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v3, :cond_e

    move-object/from16 v21, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v21, v10

    move/from16 v11, v25

    const/4 v10, 0x1

    :goto_4
    invoke-static {v1, v10, v11}, Le2/b;->z(Landroid/content/Context;IZ)V

    goto :goto_5

    :cond_f
    move-object/from16 v21, v10

    :goto_5
    move-object/from16 v10, v20

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v3, :cond_10

    move-object/from16 v20, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_10
    move-object/from16 v20, v10

    move/from16 v11, v25

    const/4 v10, 0x1

    :goto_6
    invoke-static {v1, v10, v11}, Le2/b;->w(Landroid/content/Context;IZ)V

    goto :goto_7

    :cond_11
    move-object/from16 v20, v10

    :goto_7
    move-object/from16 v10, v19

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v19, v10

    const/4 v10, 0x1

    invoke-static {v10, v11}, Le2/b;->x(IZ)V

    goto :goto_8

    :cond_12
    move-object/from16 v19, v10

    :goto_8
    move-object/from16 v10, v18

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v18, v10

    const/4 v10, 0x1

    invoke-static {v10, v11}, Le2/b;->t(IZ)V

    goto :goto_9

    :cond_13
    move-object/from16 v18, v10

    :goto_9
    move-object/from16 v10, v17

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    move-object/from16 v22, v8

    move-object/from16 v17, v10

    move/from16 v10, v25

    :goto_a
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v10, v8, :cond_15

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v30, v11

    const/4 v11, 0x1

    invoke-static {v1, v8, v11, v11}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v31

    if-nez v31, :cond_14

    sget-object v11, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move/from16 v31, v3

    const-string v3, "data"

    invoke-virtual {v11, v3, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v8, v24

    invoke-virtual {v3, v8, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v24, v12

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v11, v26

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v12, v16

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    move/from16 v31, v3

    move-object/from16 v8, v24

    move-object/from16 v11, v26

    move-object/from16 v24, v12

    move-object/from16 v12, v16

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v26, v11

    move-object/from16 v16, v12

    move-object/from16 v12, v24

    move-object/from16 v11, v30

    move/from16 v3, v31

    move-object/from16 v24, v8

    goto :goto_a

    :cond_15
    move/from16 v31, v3

    goto :goto_c

    :cond_16
    move/from16 v31, v3

    move-object/from16 v22, v8

    move-object/from16 v17, v10

    :goto_c
    move-object/from16 v8, v24

    move-object/from16 v11, v26

    move-object/from16 v24, v12

    move-object/from16 v12, v16

    const-string v3, "CKKeywordsWhite"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "CKKeywordsWhite"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object/from16 v16, v13

    move/from16 v10, v25

    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_19

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v26, v3

    const/4 v3, 0x4

    move-object/from16 v30, v14

    const/4 v14, 0x1

    invoke-static {v1, v13, v3, v14}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v14, "data"

    invoke-virtual {v3, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v8, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v11, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v26

    move-object/from16 v14, v30

    goto :goto_d

    :cond_18
    move-object/from16 v16, v13

    :cond_19
    move-object/from16 v30, v14

    const-string v3, "CKPhoneList"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "CKPhoneList"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v10, v25

    :goto_e
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_1c

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "number"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v26, v3

    move-object/from16 v3, v23

    :try_start_3
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto :goto_f

    :cond_1a
    const-string v23, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_f
    move-object/from16 v32, v15

    move-object/from16 v15, v23

    move-object/from16 v23, v4

    :try_start_4
    const-string v4, "state"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v33, v6

    const/4 v6, 0x1

    :try_start_5
    invoke-static {v1, v14, v4, v13, v6}, Lm2/f;->z(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v34

    if-nez v34, :cond_1b

    sget-object v6, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v34, v7

    :try_start_6
    const-string v7, "number"

    invoke-virtual {v6, v7, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "state"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v11, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    goto :goto_12

    :cond_1b
    move-object/from16 v34, v7

    :goto_10
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v23

    move-object/from16 v15, v32

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v23, v3

    move-object/from16 v3, v26

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    move-object/from16 v33, v6

    :goto_11
    move-object/from16 v34, v7

    goto :goto_12

    :catch_3
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v32, v15

    goto :goto_12

    :catch_4
    move-exception v0

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v32, v15

    move-object/from16 v3, v23

    move-object/from16 v23, v4

    :goto_12
    move-object v4, v0

    :try_start_7
    sget-object v6, Lhf/b;->a:Ljava/lang/String;

    const-string v7, "restore phone list JSON failed. "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_1c
    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v32, v15

    move-object/from16 v3, v23

    move-object/from16 v23, v4

    :goto_13
    const-string v4, "CKMmsModes"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "mms_mode"

    const-string v6, "CKMmsModes"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v1, v4, v6, v5}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_14

    :cond_1d
    move/from16 v31, v3

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v29, v8

    move-object/from16 v28, v10

    move-object/from16 v30, v14

    move-object/from16 v32, v15

    move-object/from16 v3, v23

    move-object/from16 v8, v24

    move-object/from16 v11, v26

    move-object/from16 v23, v4

    move-object/from16 v24, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v13

    :cond_1e
    :goto_14
    const-string v4, "sim_id_2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "sim_id_2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v5, v28

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_1f

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v1, v7, v5}, Lm2/a;->t(Landroid/content/Context;IZ)V

    :cond_1f
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5, v7}, Lm2/a;->z(Landroid/content/Context;II)V

    :cond_20
    move-object/from16 v5, v29

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "stranger_sms_mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v6, v7, v5}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_21
    move-object/from16 v5, v34

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string v6, "stranger_call_mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v6, v7, v5}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_22
    move-object/from16 v5, v33

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    const-string v6, "contact_sms_mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v6, v7, v5}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_23
    move-object/from16 v5, v23

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-string v6, "contact_call_mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v6, v7, v5}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_24
    move-object/from16 v5, v32

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v6, "service_sms_mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v6, v7, v5}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_25
    move-object/from16 v5, v30

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "empty_call_mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v6, v7, v5}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_26
    move-object/from16 v5, v16

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, "oversea_call_mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v6, v7, v5}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_27
    move-object/from16 v5, v24

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    if-eqz v31, :cond_28

    const/4 v5, 0x1

    goto :goto_15

    :cond_28
    move/from16 v5, v25

    :goto_15
    invoke-static {v1, v7, v5}, Le2/b;->v(Landroid/content/Context;IZ)V

    :cond_29
    move-object/from16 v5, v22

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    if-eqz v31, :cond_2a

    const/4 v5, 0x1

    goto :goto_16

    :cond_2a
    move/from16 v5, v25

    :goto_16
    invoke-static {v1, v7, v5}, Le2/b;->q(Landroid/content/Context;IZ)V

    :cond_2b
    move-object/from16 v5, v21

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    if-eqz v31, :cond_2c

    const/4 v5, 0x1

    goto :goto_17

    :cond_2c
    move/from16 v5, v25

    :goto_17
    invoke-static {v1, v7, v5}, Le2/b;->z(Landroid/content/Context;IZ)V

    :cond_2d
    move-object/from16 v5, v20

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    if-eqz v31, :cond_2e

    const/4 v5, 0x1

    goto :goto_18

    :cond_2e
    move/from16 v5, v25

    :goto_18
    invoke-static {v1, v7, v5}, Le2/b;->w(Landroid/content/Context;IZ)V

    :cond_2f
    move-object/from16 v5, v19

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v7, v5}, Le2/b;->x(IZ)V

    :cond_30
    move-object/from16 v5, v18

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v7, v5}, Le2/b;->t(IZ)V

    :cond_31
    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move/from16 v6, v25

    :goto_19
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_33

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v1, v9, v10, v7}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v13

    if-nez v13, :cond_32

    sget-object v10, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v13, "data"

    invoke-virtual {v10, v13, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_32
    const/4 v10, 0x1

    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_33
    const-string v5, "CKKeywordsWhite"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    const-string v5, "CKKeywordsWhite"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move/from16 v6, v25

    :goto_1b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_35

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v1, v9, v10, v7}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_34

    sget-object v10, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v13, "data"

    invoke-virtual {v10, v13, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_35
    const-string v5, "CKPhoneList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    const-string v5, "CKPhoneList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_7} :catch_6

    move/from16 v6, v25

    :goto_1c
    :try_start_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_38

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "number"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1d

    :cond_36
    const-string v13, ""

    :goto_1d
    const-string v14, "state"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v1, v10, v14, v9, v7}, Lm2/f;->z(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v15

    if-nez v15, :cond_37

    sget-object v15, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    const-string v7, "number"

    invoke-virtual {v15, v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v3, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "state"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_37
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    goto :goto_1c

    :catch_5
    move-exception v0

    move-object v3, v0

    :try_start_9
    sget-object v5, Lhf/b;->a:Ljava/lang/String;

    const-string v6, "restore phone list JSON failed. "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    const-string v3, "CKMmsModes"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "mms_mode"

    const-string v5, "CKMmsModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v1, v3, v5, v4}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_39
    const-string v3, "CKAutoUpdateLibrary"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "CKAutoUpdateLibrary"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v3}, Lm2/a;->A(Landroid/content/Context;Z)V

    :cond_3a
    const-string v3, "CKSimsShareSettings"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "CKSimsShareSettings"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v3}, Lm2/a;->u(Landroid/content/Context;Z)V

    :cond_3b
    const-string v3, "CKReportedNumberGuideFraud"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "mark_guide_fraud"

    const-string v4, "CKReportedNumberGuideFraud"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v1, v3, v4}, Lm2/a;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3c
    const-string v3, "CKReportedNumberGuideAgent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "mark_guide_agent"

    const-string v4, "CKReportedNumberGuideAgent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v1, v3, v4}, Lm2/a;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3d
    const-string v3, "CKReportedNumberGuideSell"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "mark_guide_sell"

    const-string v4, "CKReportedNumberGuideSell"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v3, v2}, Lm2/a;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "antispam"

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Landroid/content/OperationApplicationException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    goto :goto_1e

    :catch_7
    move-exception v0

    :goto_1e
    move-object v1, v0

    sget-object v2, Lhf/b;->a:Ljava/lang/String;

    const-string v3, "restore antispam settings JSON failed. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 44

    move-object/from16 v1, p0

    const-string v2, "empty_call_mode"

    const-string v3, "CKEmptyCallModes"

    const-string v4, "service_sms_mode"

    const-string v5, "CKServiceSmsModes"

    const-string v6, "contact_call_mode"

    const-string v7, "CKContactCallModes"

    const-string v8, "contact_sms_mode"

    const-string v9, "CKContactSmsModes"

    const-string v10, "stranger_call_mode"

    const-string v11, "state"

    const-string v12, "CKStrangerCallModes"

    const-string v13, "notes"

    const-string v14, "stranger_sms_mode"

    const-string v15, "CKStrangerSmsModes"

    move-object/from16 v16, v3

    const-string v3, "number"

    move-object/from16 v17, v2

    const-string v2, "CKNotificationShowType"

    move-object/from16 v18, v5

    const-string v5, "CKAntispamEnable"

    move-object/from16 v19, v4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v20, v4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v21, v7

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v22, v7

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v23, v6

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v24, v9

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v25, v8

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v26, v12

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v27, v10

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    sget-object v29, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v34, v15

    const/4 v15, 0x2

    new-array v0, v15, [Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    const/16 v35, 0x0

    aput-object v30, v0, v35

    const/16 v30, 0x4

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v0, v15

    const/16 v30, 0x0

    const-string v31, "type = ? OR type = ? "

    const/16 v33, 0x0

    move-object/from16 v32, v0

    invoke-virtual/range {v28 .. v33}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    move-object/from16 v28, v14

    const-string v14, "sim_id"

    move-object/from16 v29, v2

    const-string v2, "type"

    if-eqz v15, :cond_3

    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data"

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v30, v4

    :try_start_1
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v31, v5

    :try_start_2
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x1

    if-ne v1, v5, :cond_1

    if-ne v4, v1, :cond_0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    if-ne v4, v1, :cond_2

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v4, v30

    move-object/from16 v5, v31

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v30, v4

    :goto_2
    move-object/from16 v31, v5

    :goto_3
    :try_start_3
    sget-object v1, Lhf/b;->a:Ljava/lang/String;

    const-string v4, "Get keyword list JSON failed. "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    invoke-static {v15}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    :goto_5
    invoke-static {v15}, Lbl/e;->a(Ljava/io/Closeable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    sget-object v37, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v38, "number"

    const-string v39, "notes"

    const-string v40, "state"

    const-string v41, "sim_id"

    const-string v42, "type"

    const-string v43, "sync_dirty"

    filled-new-array/range {v38 .. v43}, [Ljava/lang/String;

    move-result-object v38

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v35

    const-string v1, "2"

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/16 v41, 0x0

    const-string v39, "type = ? OR type = ?"

    move-object/from16 v40, v0

    invoke-virtual/range {v36 .. v41}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_6
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "sync_dirty"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    goto :goto_6

    :cond_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v32, v14

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v33, v8

    :try_start_5
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v8, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v4, 0x1

    if-ne v15, v4, :cond_5

    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    :cond_5
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    move-object/from16 v14, v32

    move-object/from16 v8, v33

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v33, v8

    :goto_8
    :try_start_6
    sget-object v2, Lhf/b;->a:Ljava/lang/String;

    const-string v3, "Get phone list JSON failed. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_a

    :goto_9
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_6
    move-object/from16 v33, v8

    :goto_a
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x1

    move-object/from16 v1, p0

    :try_start_7
    invoke-static {v1, v2}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v0

    move-object/from16 v5, v29

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v8, v28

    invoke-static {v1, v8, v2, v2}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v11, v34

    invoke-virtual {v3, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v13, v27

    invoke-static {v1, v13, v2, v2}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v14, v26

    invoke-virtual {v3, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v15, v25

    invoke-static {v1, v15, v2, v2}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v2, v24

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    move-object/from16 v23, v6

    const/4 v6, 0x1

    invoke-static {v1, v10, v6, v6}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v6, v21

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v21, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v10

    const/4 v10, 0x1

    invoke-static {v1, v6, v10, v10}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v10, v18

    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v6

    const/4 v6, 0x1

    invoke-static {v1, v10, v6, v6}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v6, v16

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKOverseaCallModes"

    move-object/from16 v16, v6

    const-string v6, "oversea_call_mode"

    move-object/from16 v25, v10

    const/4 v10, 0x1

    invoke-static {v1, v6, v10, v10}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKFraud"

    invoke-static {v1, v10}, Le2/b;->i(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKAgent"

    invoke-static {v1, v10}, Le2/b;->f(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKSell"

    invoke-static {v1, v10}, Le2/b;->m(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKHarass"

    invoke-static {v1, v10}, Le2/b;->j(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKRepeatedMarkNum"

    invoke-static {v10}, Le2/b;->k(I)Z

    move-result v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKCallTransfer"

    invoke-static {v10}, Le2/b;->g(I)Z

    move-result v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKKeywordsBlack"

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKKeywordsWhite"

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKPhoneList"

    invoke-virtual {v3, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKMmsModes"

    const-string v6, "mms_mode"

    const/4 v7, 0x2

    const/4 v9, 0x1

    invoke-static {v1, v6, v9, v7}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v1, v7}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    move-object/from16 v6, v22

    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v1, v7}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x1

    invoke-static {v1, v8, v7, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {v6, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v1, v13, v7, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {v6, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v1, v15, v7, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v2, v19

    invoke-static {v1, v2, v7, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v2, v21

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v2, v17

    invoke-static {v1, v2, v7, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v2, v18

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v2, v25

    invoke-static {v1, v2, v7, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    move-object/from16 v2, v16

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKOverseaCallModes"

    const-string v2, "oversea_call_mode"

    invoke-static {v1, v2, v7, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKFraud"

    invoke-static {v1, v7}, Le2/b;->i(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKAgent"

    invoke-static {v1, v7}, Le2/b;->f(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKSell"

    invoke-static {v1, v7}, Le2/b;->m(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKHarass"

    invoke-static {v1, v7}, Le2/b;->j(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKRepeatedMarkNum"

    invoke-static {v7}, Le2/b;->k(I)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKCallTransfer"

    invoke-static {v7}, Le2/b;->g(I)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKKeywordsBlack"

    move-object/from16 v2, v23

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKKeywordsWhite"

    move-object/from16 v2, v33

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKPhoneList"

    move-object/from16 v2, v24

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKMmsModes"

    const-string v2, "mms_mode"

    const/4 v4, 0x2

    invoke-static {v1, v2, v4, v4}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "sim_id_1"
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v2, v20

    :try_start_8
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sim_id_2"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKAutoUpdateLibrary"

    invoke-static/range {p0 .. p0}, Lm2/a;->n(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKSimsShareSettings"

    invoke-static/range {p0 .. p0}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKReportedNumberGuideFraud"

    const-string v3, "mark_guide_fraud"

    invoke-static {v1, v3}, Lm2/a;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKReportedNumberGuideAgent"

    const-string v3, "mark_guide_agent"

    invoke-static {v1, v3}, Lm2/a;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKReportedNumberGuideSell"

    const-string v3, "mark_guide_sell"

    invoke-static {v1, v3}, Lm2/a;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v2, v20

    :goto_b
    sget-object v1, Lhf/b;->a:Ljava/lang/String;

    const-string v3, "Get mode JSON failed. "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-object v2
.end method

.class public Lhf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "CKVirusCloudScan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lo2/h;->V(Z)V

    :cond_1
    const-string v0, "CKInstallMonitor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lw2/c;->b(Landroid/content/Context;Z)V

    :cond_2
    const-string v0, "CKVirusEngine"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2/h;->B(Ljava/lang/String;)V

    invoke-static {p0}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object v1

    invoke-virtual {v1}, Lo2/b;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v2

    new-instance v3, Lhf/c$a;

    invoke-direct {v3, v1, v0, v2}, Lhf/c$a;-><init>(Ljava/util/List;Ljava/lang/String;Lp9/a;)V

    invoke-virtual {v2, v3}, Lp9/a;->g(Lp9/a$b;)V

    :cond_3
    const-string v0, "CKVirusAutoUpdateTencent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "key_database_auto_update_enabled_TENCENT"

    invoke-static {v1, v0}, Lo2/h;->A(Ljava/lang/String;Z)V

    :cond_4
    const-string v0, "CKVirusAutoUpdateAVL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "key_database_auto_update_enabled_AVL"

    invoke-static {v1, v0}, Lo2/h;->A(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/antivirus/whitelist/d;->d(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/d;

    move-result-object p0

    const-string v0, "CKVirusWhiteListTrojan"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "md5"

    const-string v3, "virusName"

    const-string v4, "pkgName"

    const-string v5, "dirPath"

    const-string v6, "desc"

    const-string v7, "appLabel"

    const-string v8, "scanItemType"

    const-string v9, "INSTALLED_APP"

    const/4 v10, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    move v1, v10

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_8

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_7

    new-instance v12, Lcom/miui/antivirus/model/d;

    invoke-direct {v12}, Lcom/miui/antivirus/model/d;-><init>()V

    sget-object v13, Lo2/g$l;->c:Lo2/g$l;

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->O(Lo2/g$l;)V

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lo2/g$k;->a:Lo2/g$k;

    goto :goto_1

    :cond_6
    sget-object v13, Lo2/g$k;->b:Lo2/g$k;

    :goto_1
    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->N(Lo2/g$k;)V

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->C(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->U(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->R(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->I(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->V(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/miui/antivirus/model/d;->H(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Lcom/miui/antivirus/whitelist/d;->j(Lcom/miui/antivirus/model/d;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const-string v0, "CKVirusWhiteListRisk"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b

    move v1, v10

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_b

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_a

    new-instance v12, Lcom/miui/antivirus/model/d;

    invoke-direct {v12}, Lcom/miui/antivirus/model/d;-><init>()V

    sget-object v13, Lo2/g$l;->b:Lo2/g$l;

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->O(Lo2/g$l;)V

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    sget-object v13, Lo2/g$k;->a:Lo2/g$k;

    goto :goto_3

    :cond_9
    sget-object v13, Lo2/g$k;->b:Lo2/g$k;

    :goto_3
    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->N(Lo2/g$k;)V

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->C(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->U(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->R(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->I(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/miui/antivirus/model/d;->V(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/miui/antivirus/model/d;->H(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Lcom/miui/antivirus/whitelist/d;->j(Lcom/miui/antivirus/model/d;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const-string p0, "CKVirusOfficialList"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_e

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lo2/h;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_d

    invoke-virtual {p0, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_d
    invoke-static {p1}, Lo2/h;->T(Ljava/util/ArrayList;)V

    :cond_e
    return-void
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 15

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "CKVirusEngine"

    invoke-static {}, Lo2/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "CKVirusAutoUpdateTencent"

    const-string v2, "key_database_auto_update_enabled_TENCENT"

    invoke-static {v2}, Lo2/h;->o(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "CKVirusAutoUpdateAVL"

    const-string v2, "key_database_auto_update_enabled_AVL"

    invoke-static {v2}, Lo2/h;->o(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/antivirus/whitelist/d;->d(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/d;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lcom/miui/antivirus/whitelist/d;->f()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "md5"

    const-string v5, "virusName"

    const-string v6, "pkgName"

    const-string v7, "dirPath"

    const-string v8, "desc"

    const-string v9, "appLabel"

    const-string v10, "scanVirusType"

    const-string v11, "scanItemType"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/antivirus/whitelist/d$c;

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    iget-object v14, v12, Lcom/miui/antivirus/whitelist/d$c;->a:Ljava/lang/String;

    invoke-virtual {v13, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v14, v12, Lcom/miui/antivirus/whitelist/d$c;->b:Ljava/lang/String;

    invoke-virtual {v13, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v14, v12, Lcom/miui/antivirus/whitelist/d$c;->c:Ljava/lang/String;

    invoke-virtual {v13, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v14, v12, Lcom/miui/antivirus/whitelist/d$c;->d:Ljava/lang/String;

    invoke-virtual {v13, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v14, v12, Lcom/miui/antivirus/whitelist/d$c;->e:Ljava/lang/String;

    invoke-virtual {v13, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v14, v12, Lcom/miui/antivirus/whitelist/d$c;->f:Ljava/lang/String;

    invoke-virtual {v13, v6, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v14, v12, Lcom/miui/antivirus/whitelist/d$c;->g:Ljava/lang/String;

    invoke-virtual {v13, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v12, Lcom/miui/antivirus/whitelist/d$c;->h:Ljava/lang/String;

    invoke-virtual {v13, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v3, "CKVirusWhiteListTrojan"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lcom/miui/antivirus/whitelist/d;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/whitelist/d$b;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    iget-object v13, v3, Lcom/miui/antivirus/whitelist/d$b;->a:Ljava/lang/String;

    invoke-virtual {v12, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v13, v3, Lcom/miui/antivirus/whitelist/d$b;->b:Ljava/lang/String;

    invoke-virtual {v12, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v13, v3, Lcom/miui/antivirus/whitelist/d$b;->c:Ljava/lang/String;

    invoke-virtual {v12, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v13, v3, Lcom/miui/antivirus/whitelist/d$b;->d:Ljava/lang/String;

    invoke-virtual {v12, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v13, v3, Lcom/miui/antivirus/whitelist/d$b;->e:Ljava/lang/String;

    invoke-virtual {v12, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v13, v3, Lcom/miui/antivirus/whitelist/d$b;->f:Ljava/lang/String;

    invoke-virtual {v12, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v13, v3, Lcom/miui/antivirus/whitelist/d$b;->g:Ljava/lang/String;

    invoke-virtual {v12, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v3, Lcom/miui/antivirus/whitelist/d$b;->h:Ljava/lang/String;

    invoke-virtual {v12, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v1, "CKVirusWhiteListRisk"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lo2/h;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const-string v1, "CKVirusOfficialList"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "CKVirusCloudScan"

    invoke-static {}, Lo2/h;->w()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "CKInstallMonitor"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lw2/c;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const-string p0, "AntivirusBackupHelper"

    const-string v1, "Save settings to cloud failed. "

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

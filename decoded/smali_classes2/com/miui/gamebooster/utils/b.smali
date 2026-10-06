.class public Lcom/miui/gamebooster/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/utils/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGtAutoAddGameConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GTCCManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/gamebooster/utils/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, La8/j0;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/utils/b$a;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/miui/gamebooster/utils/b$a;->b()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/miui/gamebooster/utils/b$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/miui/gamebooster/utils/b$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/miui/gamebooster/utils/b$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lx4/f1;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lf7/c;->c(Landroid/content/Context;)Lf7/c;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v8}, Lf7/c;->a(Ljava/lang/String;I)Z

    move-result v6

    invoke-static {v4}, Lcom/miui/gamebooster/utils/b$a;->a(Lcom/miui/gamebooster/utils/b$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/miui/gamebooster/utils/a$n;->n(Ljava/lang/String;Z)V

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/utils/b$a;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "version"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Ls5/a;->f(Landroid/content/Context;)Ls5/a;

    move-result-object p0

    invoke-virtual {p0}, Ls5/a;->c()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_1

    return-object v0

    :cond_1
    const-string v7, "expireTime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v3, v7, v3

    if-lez v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v7, v3

    if-gtz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "pkgs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    new-instance v9, Lcom/miui/gamebooster/utils/b$a;

    invoke-direct {v9, v4, v7, v8}, Lcom/miui/gamebooster/utils/b$a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ls5/a;->b()Ls5/a$a;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Ls5/a$a;->b(J)Ls5/a$a;

    move-result-object p0

    invoke-virtual {p0}, Ls5/a$a;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "GTCCManager"

    const-string v2, "parseConfig: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

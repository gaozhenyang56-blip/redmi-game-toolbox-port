.class public Lp7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/d$b;,
        Lp7/d$a;
    }
.end annotation


# static fields
.field private static b:Lp7/d;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "shoulder_key_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lp7/d;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized b()Lp7/d;
    .locals 2

    const-class v0, Lp7/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp7/d;->b:Lp7/d;

    if-nez v1, :cond_0

    new-instance v1, Lp7/d;

    invoke-direct {v1}, Lp7/d;-><init>()V

    sput-object v1, Lp7/d;->b:Lp7/d;

    :cond_0
    sget-object v1, Lp7/d;->b:Lp7/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f()Z
    .locals 2

    const-string v0, "is_first_guide_show_step1"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    const-string v0, "shoulderkey_button_guide"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j()V
    .locals 2

    const-string v0, "is_first_guide_show_step1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static k()V
    .locals 2

    const-string v0, "shoulderkey_button_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()Lp7/d$a;
    .locals 2

    new-instance v0, Lp7/d$a;

    iget-object v1, p0, Lp7/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lp7/d$a;-><init>(Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "shoulder_key_light_effect_selected"

    invoke-static {v0, p1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 2

    const-string v0, "shoulder_key_switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Lp7/d;->a:Landroid/content/SharedPreferences;

    const-string v1, "is_first_add_config"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "shoulderkey_game_light_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public i(Ljava/lang/String;)Lp7/d$b;
    .locals 11

    const-string v0, "upY"

    const-string v1, "upX"

    const-string v2, "downY"

    const-string v3, "downX"

    const-string v4, "y"

    const-string v5, "x"

    new-instance v6, Lp7/d$b;

    invoke-direct {v6, p1}, Lp7/d$b;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lp7/d;->a:Landroid/content/SharedPreferences;

    const-string v8, ""

    invoke-interface {v7, p1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "left"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v8, "right"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "showFloatingBtn"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lp7/d$b;->b:Z

    iget-object v7, v6, Lp7/d$b;->d:Landroid/graphics/Point;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Point;->set(II)V

    iget-object v7, v6, Lp7/d$b;->e:Landroid/graphics/Point;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Point;->set(II)V

    iget-object v7, v6, Lp7/d$b;->f:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Point;->set(II)V

    const-string v7, "leftConfig"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lp7/d$b;->h:Z

    const-string v7, "leftSingle"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v6, Lp7/d$b;->g:Z

    iget-object p1, v6, Lp7/d$b;->i:Landroid/graphics/Point;

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Point;->set(II)V

    iget-object p1, v6, Lp7/d$b;->j:Landroid/graphics/Point;

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Point;->set(II)V

    iget-object p1, v6, Lp7/d$b;->k:Landroid/graphics/Point;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    const-string p1, "rightConfig"

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v6, Lp7/d$b;->m:Z

    const-string p1, "rightSingle"

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v6, Lp7/d$b;->l:Z

    const/4 p1, 0x1

    iput-boolean p1, v6, Lp7/d$b;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v6
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shoulder_key_light_effect_selected"

    invoke-static {v0, p1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Z)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "shoulderkey_game_light_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public n(Z)V
    .locals 1

    const-string v0, "shoulder_key_switch"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.class Lcom/miui/gamebooster/utils/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/utils/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/utils/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/utils/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/c;->u()V

    iget-object v0, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gb_active_track"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/utils/c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/c;->a(Lcom/miui/gamebooster/utils/c;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v2, v0, v1}, Lcom/miui/gamebooster/utils/c;->b(Lcom/miui/gamebooster/utils/c;Ljava/util/Map;Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "gb_active_click_track"

    invoke-virtual {v0, v2, v3}, Lcom/miui/gamebooster/utils/c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v2, v0}, Lcom/miui/gamebooster/utils/c;->a(Lcom/miui/gamebooster/utils/c;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v2, v0, v1}, Lcom/miui/gamebooster/utils/c;->b(Lcom/miui/gamebooster/utils/c;Ljava/util/Map;Lorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "gb_active_view_track"

    invoke-virtual {v0, v2, v3}, Lcom/miui/gamebooster/utils/c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v2, v0}, Lcom/miui/gamebooster/utils/c;->a(Lcom/miui/gamebooster/utils/c;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v2, v0, v1}, Lcom/miui/gamebooster/utils/c;->b(Lcom/miui/gamebooster/utils/c;Ljava/util/Map;Lorg/json/JSONArray;)V

    const-string v0, "key_active_track_for_h5"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v2, v0}, Lcom/miui/gamebooster/utils/c;->c(Lcom/miui/gamebooster/utils/c;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v2, v0, v1}, Lcom/miui/gamebooster/utils/c;->b(Lcom/miui/gamebooster/utils/c;Ljava/util/Map;Lorg/json/JSONArray;)V

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "report"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    const-string v1, "vtb_gb_active"

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v1, "https://data.sec.miui.com/adv/game_ad/report"

    new-instance v2, Lp4/i;

    const-string v3, "gamebooster_active_track"

    invoke-direct {v2, v3}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Leg/j;->t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Lcom/miui/gamebooster/utils/c$c;

    invoke-static {v0, v1}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/utils/c$c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/c$c;->a()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "gamebooster_key_active_track"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lr4/a;->q(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/miui/gamebooster/utils/c$b;->a:Lcom/miui/gamebooster/utils/c;

    invoke-static {v0}, Lcom/miui/gamebooster/utils/c;->d(Lcom/miui/gamebooster/utils/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/miui/gamebooster/utils/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post error with some exceptions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

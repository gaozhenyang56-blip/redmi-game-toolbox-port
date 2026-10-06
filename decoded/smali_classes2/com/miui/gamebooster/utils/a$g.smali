.class public Lcom/miui/gamebooster/utils/a$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, La8/g0;->M()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lu6/f;->b()Z

    move-result v1

    invoke-static {}, Lm6/a;->n()Z

    move-result v2

    const-string v3, "\u5f00\u542f"

    const-string v4, "\u5173\u95ed"

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    const-string v2, "wlan_optimize_status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, p0}, Lx4/f1;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, -0x1

    goto :goto_1

    :cond_2
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_1
    invoke-static {p0}, La8/g0;->o(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    const-string v1, "gb_ai_accelerate"

    invoke-static {v1, p0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v3

    goto :goto_2

    :cond_3
    move-object p0, v4

    :goto_2
    const-string v1, "ai_data_accelerate_status"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, La8/g0;->u()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lm6/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    const-string p0, "cellular_network_optimization"

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p0, "net_optimize_edit_status"

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

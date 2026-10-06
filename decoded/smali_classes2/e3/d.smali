.class public Le3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Le3/d;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 3

    const-string v0, "am_notification_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_show_uninstall_notify_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()I
    .locals 2

    const-string v0, "more_month_not_uesed_appcount"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "am_notification_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_show_uninstall_notify_time"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->n(Ljava/lang/String;J)V

    return-void
.end method

.method public static k(I)V
    .locals 1

    const-string v0, "more_month_not_uesed_appcount"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 5

    iget-object v0, p0, Le3/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->Y(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/appmanager/AppManageUtils;->u()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x5265c00

    invoke-static {v2, v3}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->A0(Z)V

    :cond_1
    invoke-virtual {p0}, Le3/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lpf/g;->k()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lpf/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/appmanager/AppManageUtils;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-static {}, Lcom/miui/appmanager/AppManageUtils;->i0()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public d()Z
    .locals 4

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Le3/d;->a:Landroid/content/Context;

    const-string v1, "data_config"

    invoke-static {v0, v1}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object v0

    const-string v1, "am_ads_enable"

    invoke-virtual {v0, v1}, Luf/b;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v3}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Le3/d;->h(Z)V

    invoke-virtual {v0, v1}, Luf/b;->c(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1, v3}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Le3/d;->b:Landroid/content/ContentResolver;

    const-string v1, "com.miui.thirdappassistant.switch.key_can_use"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Le3/d;->b:Landroid/content/ContentResolver;

    const-string v1, "am_show_system_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Le3/d;->b:Landroid/content/ContentResolver;

    const-string v1, "am_update_app_notify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public h(Z)V
    .locals 1

    const-string v0, "am_ads_enable"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, Le3/d;->b:Landroid/content/ContentResolver;

    const-string v1, "com.miui.thirdappassistant.switch.key_can_use"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, Le3/d;->b:Landroid/content/ContentResolver;

    const-string v1, "am_show_system_apps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public m(Z)V
    .locals 2

    iget-object v0, p0, Le3/d;->b:Landroid/content/ContentResolver;

    const-string v1, "am_update_app_notify"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

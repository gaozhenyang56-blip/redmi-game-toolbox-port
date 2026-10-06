.class public Lbe/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_center_is_5g_mode_enable"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-static {p0}, Lme/h;->c(Landroid/content/Context;)Z

    move-result v5

    if-eq v0, v5, :cond_2

    invoke-static {v0}, Lme/h;->k(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v3}, Lme/h;->i(I)Z

    move-result v0

    invoke-static {v4}, Lme/h;->i(I)Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "power_center_is_5g_mode_enable_slot0"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v6, "power_center_is_5g_mode_enable_slot1"

    invoke-static {p0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne v5, v4, :cond_3

    if-nez v0, :cond_3

    invoke-static {v4, v3}, Lme/h;->m(ZI)V

    :cond_3
    if-ne p0, v4, :cond_4

    if-nez v1, :cond_4

    invoke-static {v4, v4}, Lme/h;->m(ZI)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isPhoneIdleState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lme/h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lme/h;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lbe/d;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lbe/d;->c(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 8

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isPhoneIdleState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lme/h;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lme/h;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lme/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const-class v0, Lbe/d;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_center_is_5g_mode_enable"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1}, Lme/h;->c(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "power_center_is_5g_mode_enable"

    if-eqz v2, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v5}, Lme/h;->k(Z)V

    :cond_3
    invoke-static {v5}, Lme/h;->i(I)Z

    move-result v1

    invoke-static {v4}, Lme/h;->i(I)Z

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "power_center_is_5g_mode_enable_slot0"

    if-eqz v1, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "power_center_is_5g_mode_enable_slot1"

    if-eqz v2, :cond_5

    move v6, v4

    goto :goto_2

    :cond_5
    move v6, v5

    :goto_2
    invoke-static {p1, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_6

    invoke-static {v5, v5}, Lme/h;->m(ZI)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v5, v4}, Lme/h;->m(ZI)V

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

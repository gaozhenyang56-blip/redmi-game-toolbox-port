.class public Lhf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    const-string p0, "CKGameBox"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->h0(Z)V

    :cond_1
    const-string p0, "CKSlipBox"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->w0(Z)V

    :cond_2
    const-string p0, "CKPerformanceBooster"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->V(Z)V

    invoke-static {p0}, Lm6/a;->U(Z)V

    invoke-static {p0}, Lm6/a;->T(Z)V

    :cond_3
    const-string p0, "CKPerformanceBoosterWifi"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->V(Z)V

    :cond_4
    const-string p0, "CKPerformanceBoosterTouch"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->U(Z)V

    :cond_5
    const-string p0, "CKPerformanceBoosterAudio"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->T(Z)V

    :cond_6
    const-string p0, "CKNetBooster"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->n0(Z)V

    :cond_7
    const-string p0, "CKHandsFree"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->j0(Z)V

    :cond_8
    const-string p0, "CKFunctionShield"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->d0(Z)V

    :cond_9
    const-string p0, "CKShieldKeyboard"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->R(Z)V

    :cond_a
    const-string p0, "CKShieldAutoBright"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->r0(Z)V

    :cond_b
    const-string p0, "CKShieldEyeShield"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->s0(Z)V

    :cond_c
    const-string p0, "CKShieldThreeFinger"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->u0(Z)V

    :cond_d
    const-string p0, "CKShieldPullNotificationBar"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->t0(Z)V

    :cond_e
    const-string p0, "CKShieldDisableVoiceTrigger"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lm6/a;->Y(Z)V

    :cond_f
    const-string p0, "CKShieldNum"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lm6/a;->e0(I)V

    :cond_10
    return-void
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    :try_start_0
    const-string p0, "CKGameBox"

    invoke-static {}, Lm6/a;->w()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKSlipBox"

    const/4 v1, 0x1

    invoke-static {v1}, Lm6/a;->K(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKPerformanceBoosterWifi"

    invoke-static {}, Lm6/a;->n()Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKPerformanceBoosterTouch"

    invoke-static {}, Lm6/a;->m()Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKPerformanceBoosterAudio"

    invoke-static {}, Lm6/a;->l()Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKNetBooster"

    invoke-static {v1}, Lm6/a;->C(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKHandsFree"

    invoke-static {v1}, Lm6/a;->y(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKFunctionShield"

    invoke-static {v1}, Lm6/a;->u(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKShieldKeyboard"

    invoke-static {v1}, Lm6/a;->k(Z)Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKShieldAutoBright"

    const/4 v1, 0x0

    invoke-static {v1}, Lm6/a;->F(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKShieldEyeShield"

    invoke-static {v1}, Lm6/a;->G(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKShieldThreeFinger"

    invoke-static {v1}, Lm6/a;->I(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKShieldPullNotificationBar"

    invoke-static {v1}, Lm6/a;->H(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKShieldDisableVoiceTrigger"

    invoke-static {v1}, Lm6/a;->q(Z)Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "CKShieldNum"

    invoke-static {v1}, Lm6/a;->c(I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "GameBoosterSettingsCloudBackupHelper"

    const-string v1, "Save settings to cloud failed. "

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

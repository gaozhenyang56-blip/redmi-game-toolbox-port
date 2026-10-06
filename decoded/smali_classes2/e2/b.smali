.class public Le2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(I)V
    .locals 1

    const-string v0, "unread_mms_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static B(I)V
    .locals 1

    const-string v0, "unread_phone_count"

    invoke-static {v0, p0}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, p3}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, p3}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "backsound_index"

    goto :goto_0

    :cond_0
    const-string p0, "backsound_index_sim_2"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c()J
    .locals 3

    const-string v0, "clouds_data_version_new"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()I
    .locals 2

    const-string v0, "unread_mms_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 2

    const-string v0, "unread_phone_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "agent_num_state"

    goto :goto_0

    :cond_0
    const-string p1, "agent_num_state_sim_2"

    :goto_0
    invoke-static {p0, p1, v0}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static g(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "is_call_transfer_blocked"

    goto :goto_0

    :cond_0
    const-string p0, "is_call_transfer_blocked_sim_2"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "fraud_num_state"

    goto :goto_0

    :cond_0
    const-string p1, "fraud_num_state_sim_2"

    :goto_0
    invoke-static {p0, p1, v0}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static j(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "harass_num_state"

    goto :goto_0

    :cond_0
    const-string p1, "harass_num_state_sim_2"

    :goto_0
    invoke-static {p0, p1, v0}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static k(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "is_repeated_marked_number_permit"

    goto :goto_0

    :cond_0
    const-string p0, "is_repeated_marked_number_permit_sim_2"

    :goto_0
    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static l()Z
    .locals 2

    const-string v0, "reported_number_settings_reset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "sell_num_state"

    goto :goto_0

    :cond_0
    const-string p1, "sell_num_state_sim_2"

    :goto_0
    invoke-static {p0, p1, v0}, Lm2/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static n(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "mark_time_agent"

    goto :goto_0

    :cond_0
    const-string p1, "mark_time_agent_sim_2"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static o(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "mark_time_fraud"

    goto :goto_0

    :cond_0
    const-string p1, "mark_time_fraud_sim_2"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static p(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "mark_time_sell"

    goto :goto_0

    :cond_0
    const-string p1, "mark_time_sell_sim_2"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static q(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "agent_num_state"

    goto :goto_0

    :cond_0
    const-string p1, "agent_num_state_sim_2"

    :goto_0
    xor-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, p3}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Lr4/a;->p(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static s(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "backsound_index"

    goto :goto_0

    :cond_0
    const-string p0, "backsound_index_sim_2"

    :goto_0
    invoke-static {p0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public static t(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "is_call_transfer_blocked"

    goto :goto_0

    :cond_0
    const-string p0, "is_call_transfer_blocked_sim_2"

    :goto_0
    invoke-static {p0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static u(J)V
    .locals 1

    const-string v0, "clouds_data_version_new"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public static v(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "fraud_num_state"

    goto :goto_0

    :cond_0
    const-string p1, "fraud_num_state_sim_2"

    :goto_0
    xor-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static w(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "harass_num_state"

    goto :goto_0

    :cond_0
    const-string p1, "harass_num_state_sim_2"

    :goto_0
    xor-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static x(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "is_repeated_marked_number_permit"

    goto :goto_0

    :cond_0
    const-string p0, "is_repeated_marked_number_permit_sim_2"

    :goto_0
    invoke-static {p0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static y(Z)V
    .locals 1

    const-string v0, "reported_number_settings_reset"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static z(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "sell_num_state"

    goto :goto_0

    :cond_0
    const-string p1, "sell_num_state_sim_2"

    :goto_0
    xor-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lm2/a;->y(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

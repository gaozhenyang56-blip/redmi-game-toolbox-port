.class public Lfe/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()J
    .locals 3

    const-string v0, "key_last_kill_running_app_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)V
    .locals 1

    const-string v0, "key_last_kill_running_app_time"

    invoke-static {v0, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.class public Lsd/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mReferrer"

    invoke-static {p0, v0, v1}, Lbh/f;->i(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lsd/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lgd/c;->U0()Z

    move-result v0

    invoke-static {v0}, Lhd/a;->p0(Z)V

    invoke-static {}, Lgd/c;->V0()Z

    move-result v0

    invoke-static {v0}, Lhd/a;->r0(Z)V

    invoke-static {}, Lgd/c;->D0()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lhd/a;->s0(J)V

    return-void
.end method

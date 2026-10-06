.class public Lpg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 2

    const-string v0, "key_superpower_autoenter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 2

    const-string v0, "key_superpower_autoleave"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 2

    const-string v0, "key_superpower_dialog_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Z)V
    .locals 1

    const-string v0, "key_superpower_from_tiantong"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static e(Z)V
    .locals 1

    const-string v0, "key_superpower_autoleave"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static f(Z)V
    .locals 1

    const-string v0, "key_superpower_dialog_enable"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

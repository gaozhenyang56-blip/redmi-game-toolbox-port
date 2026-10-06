.class public final Lah/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "android.provider.MiuiSettings$AntiSpam"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, "isAntiSpam"

    invoke-virtual {v0, p0, v2, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lbh/d$a;->a()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lm2/a;->t(Landroid/content/Context;IZ)V

    invoke-static {p0}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lm2/a;->t(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method

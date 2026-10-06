.class public Ld7/x;
.super Ld7/v;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/v;-><init>(I)V

    const/4 p1, 0x1

    iput p1, p0, Ld7/v;->b:I

    return-void
.end method

.method public static f()Z
    .locals 2

    const-string v0, "pre_shoudler_guide_show"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ld7/x;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Ld7/x;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp7/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static i()V
    .locals 2

    const-string v0, "pre_shoudler_guide_show"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/Context;ZI)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ld7/v;->b(Landroid/content/Context;ZI)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ld7/x;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected c()V
    .locals 1

    const-string v0, "shoulder_key_guide_first"

    invoke-static {v0}, Lp7/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lp7/d;->j()V

    return-void
.end method

.method protected d()V
    .locals 1

    const-string v0, "shoulder_key_guide_pannel_show"

    invoke-static {v0}, Lp7/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ld7/x;->i()V

    return-void
.end method

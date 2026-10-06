.class public Lwd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lud/j;->b()Lud/j;

    move-result-object p1

    invoke-virtual {p1}, Lud/j;->f()V

    invoke-static {}, Lme/b;->E()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lme/d0;->g()V

    :cond_0
    invoke-static {}, Lme/b;->e()V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lme/b;->L()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lme/b;->E()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lme/b;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lme/b;->o()I

    :cond_4
    const-string p1, "BatteryInit"

    const-string v0, "init complete"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

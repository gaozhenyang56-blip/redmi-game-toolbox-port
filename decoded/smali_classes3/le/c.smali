.class public Lle/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12128d

    invoke-virtual {v0, v1}, Lw4/b$b;->r(I)Lw4/b$b;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120379

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.powercenter.high"

    invoke-virtual {v0, v3, v2}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    const v2, 0x7f080e94

    invoke-virtual {v0, v2}, Lw4/b$b;->q(I)Lw4/b$b;

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    const v2, 0x7f0808a0

    :cond_0
    invoke-virtual {v0, v2}, Lw4/b$b;->v(I)Lw4/b$b;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    const v1, 0x7f121290

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12128e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    invoke-virtual {v0, v2}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw4/b$b;->j(Z)Lw4/b$b;

    invoke-virtual {v0, v1}, Lw4/b$b;->t(Z)Lw4/b$b;

    invoke-virtual {v0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "unoffoical_battery_enter_way"

    const-string v2, "unoffical_battery_notification"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    invoke-virtual {v0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->G1()V

    return-void
.end method

.class public Lme/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const v0, 0x7f120ee6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120455

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/miui/powercenter/PowerCenter;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "requestCode"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "enter_homepage_way"

    const-string v5, "consume_abnormal_notification"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    const/high16 v5, 0xc000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/2addr v6, v4

    const-string v7, "miui.showAction"

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v6, Lw4/b$b;

    invoke-direct {v6, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v7, 0x7f120379

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v7, "com.miui.powercenter.high"

    invoke-virtual {v0, v7, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    const v0, 0x7f08089f

    invoke-virtual {p0, v0}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const v0, 0x7f0808a0

    :cond_0
    invoke-virtual {p0, v0}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v5}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    invoke-virtual {v6}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->s()V

    return-void
.end method

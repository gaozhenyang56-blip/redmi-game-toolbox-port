.class Lfe/b$a;
.super Lw4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lfe/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfe/b;)V
    .locals 1

    invoke-direct {p0}, Lw4/e;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfe/b$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private c()Z
    .locals 4

    invoke-static {}, Lgd/c;->f0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgd/c;->a2(J)V

    return v3

    :cond_0
    invoke-static {v0, v1}, Lme/b0;->l(J)I

    move-result v0

    invoke-static {}, Lfe/b;->e()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private d()Z
    .locals 4

    invoke-static {}, Lgd/c;->g0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgd/c;->b2(J)V

    return v3

    :cond_0
    invoke-static {v0, v1}, Lme/b0;->l(J)I

    move-result v0

    invoke-static {}, Lfe/b;->e()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-static {}, Lgd/c;->b0()I

    move-result v0

    invoke-static {}, Lfe/b;->f()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static e(Landroid/content/Context;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100081

    invoke-virtual {v0, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120f17

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120455

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/miui/powercenter/PowerCenter;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "enter_homepage_way"

    const-string v7, "daily_battery_scan_problem_notification"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0xc000000

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/2addr v6, v1

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

    invoke-virtual {p0, v3}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    const v0, 0x7f08089f

    invoke-virtual {p0, v0}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p0

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    const v0, 0x7f0808a0

    :cond_0
    invoke-virtual {p0, v0}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v5}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    invoke-virtual {v6}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->b0()V

    return-void
.end method

.method public static f(Landroid/content/Context;I)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100082

    invoke-virtual {v0, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120f18

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120edf

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/miui/powercenter/PowerCenter;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "enter_homepage_way"

    const-string v7, "daily_battery_scan_suggest_notification"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0xc000000

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/2addr v6, v1

    const-string v7, "miui.showAction"

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v6, Lw4/b$b;

    invoke-direct {v6, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lw4/b$b;->r(I)Lw4/b$b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v6, 0x7f120379

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v6, "com.miui.powercenter.high"

    invoke-virtual {v0, v6, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v3, 0x7f08089f

    if-eqz v0, :cond_0

    const v0, 0x7f0808a0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lw4/b$b;->q(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v5}, Lw4/b$b;->k(Landroid/os/Bundle;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    invoke-static {}, Lhd/a;->d0()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lfe/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfe/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x40b

    if-eq v1, v2, :cond_1

    invoke-static {}, Lfe/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object p1

    invoke-virtual {p1}, Lfe/l;->o()I

    move-result p1

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v1

    invoke-virtual {v1}, Lfe/l;->r()I

    move-result v1

    invoke-static {}, Lfe/b;->b()I

    move-result v2

    if-lt p1, v2, :cond_2

    invoke-direct {p0}, Lfe/b$a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lfe/b;->c(Lfe/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lfe/b$a;->e(Landroid/content/Context;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgd/c;->a2(J)V

    goto :goto_0

    :cond_2
    sget-object p1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "venus"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lfe/b$a;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lfe/b;->c(Lfe/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1}, Lme/t;->n()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    invoke-static {v0}, Lfe/b;->c(Lfe/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lfe/b$a;->f(Landroid/content/Context;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgd/c;->b2(J)V

    invoke-static {}, Lgd/c;->b0()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Lgd/c;->W1(I)V

    :cond_3
    :goto_0
    return-void
.end method

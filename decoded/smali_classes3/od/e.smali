.class public Lod/e;
.super Lod/a;
.source "SourceFile"


# instance fields
.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lod/c$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lod/a;-><init>(Landroid/content/Context;Lod/c$c;)V

    new-instance p1, Lod/e$a;

    invoke-direct {p1, p0}, Lod/e$a;-><init>(Lod/e;)V

    iput-object p1, p0, Lod/e;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lod/e;->h()V

    return-void
.end method

.method public static synthetic e(Lod/e;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lod/e;->i(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic f(Lod/e;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lod/e;->g(Landroid/content/Context;I)V

    return-void
.end method

.method private g(Landroid/content/Context;I)V
    .locals 2

    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object v0

    invoke-virtual {v0}, Lde/i;->J()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lod/d;

    invoke-direct {v1, p0, p1, p2}, Lod/d;-><init>(Lod/e;Landroid/content/Context;I)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic i(Landroid/content/Context;I)V
    .locals 7

    invoke-static {p1}, Lme/d0;->d(Landroid/content/Context;)J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userActiveTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "LpdChargeWarning"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide v5, 0x9a7ec800L

    cmp-long p1, v3, v5

    const/4 v3, 0x1

    if-gez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lme/d0;->f(J)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lme/f;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lme/q;->a()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloud limit,portDampEnable:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lme/f;->b(Ljava/lang/String;)V

    if-eq p2, v3, :cond_2

    iget-boolean p1, p0, Lod/a;->c:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lod/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lde/j;->e(Landroid/content/Context;)V

    :cond_2
    return-void

    :cond_3
    if-ne p2, v3, :cond_5

    const-string p1, "type_lpd"

    invoke-virtual {p0, p1}, Lod/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "frequency limit,frequencyCanShow:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lme/f;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "1"

    invoke-static {p1}, Lme/f;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lod/a;->a:Lod/c$c;

    if-eqz p1, :cond_6

    const-string p2, "MODE_LPD"

    invoke-interface {p1, p2}, Lod/c$c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lod/a;->c:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lod/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lde/j;->e(Landroid/content/Context;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lce/c;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-static {v1}, Lce/c;->k(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lce/c;->d()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Lce/c;->k(I)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lce/c;->j(J)V

    const-string v0, "LpdChargeWarning"

    const-string v1, "showCountAdd: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.ACTION_MOISTURE_DET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lod/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lod/e;->d:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string v0, "LpdChargeWarning"

    const-string v1, "init: registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

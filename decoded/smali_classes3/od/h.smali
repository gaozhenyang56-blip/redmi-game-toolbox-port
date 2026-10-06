.class public Lod/h;
.super Lod/a;
.source "SourceFile"


# instance fields
.field private d:Lee/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lod/c$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lod/a;-><init>(Landroid/content/Context;Lod/c$c;)V

    invoke-virtual {p0}, Lod/h;->h()V

    return-void
.end method

.method public static synthetic e(Lod/h;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lod/h;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic f(Lod/h;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lod/h;->i(Landroid/content/Intent;)V

    return-void
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lde/i;->M()Lde/i;

    move-result-object p1

    new-instance v0, Lod/g;

    invoke-direct {v0, p0, p2}, Lod/g;-><init>(Lod/h;Landroid/content/Intent;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lde/i;->h0(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic i(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.MIUI_PC_BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "miui.intent.extra.EXTRA_NTC_ALARM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lgd/c;->H()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPortNTC status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",cloudNtcEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NtcChargeWarning"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "type_ntc"

    invoke-virtual {p0, p1}, Lod/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lod/a;->a:Lod/c$c;

    if-eqz p1, :cond_1

    const-string v0, "MODE_NTC"

    invoke-interface {p1, v0}, Lod/c$c;->a(Ljava/lang/String;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    invoke-static {}, Lce/c;->b()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-static {v1}, Lce/c;->l(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lce/c;->e()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Lce/c;->l(I)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lce/c;->i(J)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lod/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lee/d;

    invoke-direct {v0}, Lee/d;-><init>()V

    iput-object v0, p0, Lod/h;->d:Lee/d;

    iget-object v1, p0, Lod/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lee/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lod/h;->d:Lee/d;

    new-instance v1, Lod/f;

    invoke-direct {v1, p0}, Lod/f;-><init>(Lod/h;)V

    invoke-virtual {v0, v1}, Lee/d;->b(Lee/d$b;)V

    return-void
.end method

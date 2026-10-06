.class Lee/e$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/e;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lee/e;


# direct methods
.method constructor <init>(Lee/e;)V
    .locals 0

    iput-object p1, p0, Lee/e$a;->a:Lee/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.miui.powerkeeper.action.HIGH_FPS_NOTIFY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lgd/c;->Q()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lgd/c;->R()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p1}, Lde/j;->X(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lgd/c;->K1(J)V

    const-string p1, "notify"

    invoke-static {p1}, Lhd/a;->t0(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

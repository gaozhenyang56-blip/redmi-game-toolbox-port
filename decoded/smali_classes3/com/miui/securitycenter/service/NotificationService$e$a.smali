.class Lcom/miui/securitycenter/service/NotificationService$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/service/NotificationService$e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/service/NotificationService;

.field final synthetic b:Lcom/miui/securitycenter/service/NotificationService$e;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/NotificationService$e;Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/NotificationService$e$a;->b:Lcom/miui/securitycenter/service/NotificationService$e;

    iput-object p2, p0, Lcom/miui/securitycenter/service/NotificationService$e$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lx4/t;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$e$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v2}, Lcom/miui/securitycenter/service/NotificationService;->f(Lcom/miui/securitycenter/service/NotificationService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/securitycenter/service/NotificationService$e$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v6}, Lcom/miui/securitycenter/service/NotificationService;->h(Lcom/miui/securitycenter/service/NotificationService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "memDiff : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", timeDiff : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lx4/q0;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/miui/securitycenter/service/NotificationService$e$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v4}, Lcom/miui/securitycenter/service/NotificationService;->f(Lcom/miui/securitycenter/service/NotificationService;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const-string v2, "cycle_memory"

    invoke-static {v2}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$e$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/securitycenter/service/NotificationService;->e(Lcom/miui/securitycenter/service/NotificationService;J)V

    iget-object v2, p0, Lcom/miui/securitycenter/service/NotificationService$e$a;->a:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v2, v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->g(Lcom/miui/securitycenter/service/NotificationService;J)J

    :cond_1
    iget-object v0, p0, Lcom/miui/securitycenter/service/NotificationService$e$a;->b:Lcom/miui/securitycenter/service/NotificationService$e;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class public final Lcom/miui/securityscan/scanner/o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/o;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/scanner/o;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .locals 3
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    instance-of p1, p3, Lcom/miui/antivirus/model/i;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->c()Ljava/util/List;

    move-result-object p2

    move-object v0, p3

    check-cast v0, Lcom/miui/antivirus/model/i;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/i;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "de.sourceDir"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/antivirus/model/i;->g()Lo2/b$d;

    move-result-object p2

    sget-object v0, Lo2/b$d;->a:Lo2/b$d;

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->f()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->A()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o;->D()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/securityscan/scanner/m;->g(Landroid/content/Context;)Lcom/miui/securityscan/scanner/m;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->A()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/scanner/m;->e(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;I)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;I)V"
        }
    .end annotation

    sget-object p1, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p2, v0, :cond_0

    const-string p2, "VirusScanManager"

    const-string v0, "full scan real finish==="

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "key_full_scan_time"

    invoke-static {p2, v0, v1}, Lr4/a;->q(Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo2/h;->K(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->e()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-string p2, "full_scan"

    invoke-static {p2, v0, v1}, Lqf/c;->Q0(Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    sget-object v0, Lcom/miui/securityscan/scanner/o$d$a;->a:Lcom/miui/securityscan/scanner/o$d$a;

    invoke-virtual {p2, v0}, Lcom/miui/securityscan/scanner/o;->s(Lak/l;)V

    :cond_0
    iget-object p2, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {p2}, Lcom/miui/securityscan/scanner/o;->D()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p1, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o;->z()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "VirusScanManager"

    const-string v1, "start full scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "VirusScanManager"

    const-string v1, "full scan onInterrupted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->D()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "time_out"

    invoke-static {v0}, Lqf/c;->K0(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o$d;->a:Lcom/miui/securityscan/scanner/o;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->p()V

    return-void
.end method

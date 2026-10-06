.class Lo2/g$a;
.super Lcom/miui/guardprovider/VirusObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private l:J

.field final synthetic m:Lo2/g;


# direct methods
.method constructor <init>(Lo2/g;)V
    .locals 2

    iput-object p1, p0, Lo2/g$a;->m:Lo2/g;

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo2/g$a;->l:J

    return-void
.end method


# virtual methods
.method public Z0(I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo2/g$a;->l:J

    iget-object v0, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {}, Lw2/t;->u()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lo2/g;->b(Lo2/g;Ljava/util/List;)Ljava/util/List;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo2/g$a;->b7(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V

    :cond_0
    return-void
.end method

.method public b7(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 4

    const-string p1, "PaySafetyCheckManager"

    const-string p2, "virus scan finished ..."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {p1}, Lo2/g;->e(Lo2/g;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {p2}, Lo2/g;->f(Lo2/g;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    iget-object p2, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v0}, Lo2/g;->g(Lo2/g;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object p2, p0, Lcom/miui/guardprovider/VirusObserver;->a:Lo2/g$i;

    invoke-interface {p2}, Lo2/g$i;->f()V

    iget-object p2, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo2/g$a;->l:J

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lo2/g;->h(Lo2/g;J)J

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {p2}, Lo2/g;->i(Lo2/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    iget-object v0, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {v0}, Lo2/g;->i(Lo2/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const-string p2, "PaySafetyCheckManager"

    const-string v0, "signature scan first finished , now virus scan finished !"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/guardprovider/VirusObserver;->a:Lo2/g$i;

    invoke-interface {p2}, Lo2/g$i;->h()V

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public q7(II[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 9

    const/4 p1, 0x0

    aget-object v0, p3, p1

    iget p2, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-static {p2}, Lw2/v;->a(I)Lo2/g$l;

    move-result-object p2

    iget-object p3, p0, Lo2/g$a;->m:Lo2/g;

    iget-object v1, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->path:Ljava/lang/String;

    invoke-static {p3, v1}, Lo2/g;->c(Lo2/g;Ljava/lang/String;)Lcom/miui/antivirus/model/d;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3, p2}, Lcom/miui/antivirus/model/d;->O(Lo2/g$l;)V

    iget-object v1, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusDescription:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/miui/antivirus/model/d;->U(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/miui/antivirus/model/d;->V(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {p3, v1}, Lcom/miui/antivirus/model/d;->E(Lcom/miui/antivirus/model/d$c;)V

    sget-object v1, Lcom/miui/antivirus/model/d$b;->b:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {p3, v1}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    iget-object v1, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->extras:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/miui/antivirus/model/d;->F(Ljava/lang/String;)V

    iget-object v1, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {v1}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Le3/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {v1}, Lo2/g;->a(Lo2/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "PaySafetyCheckManager"

    if-eqz v1, :cond_0

    sget-object v1, Lo2/g$l;->a:Lo2/g$l;

    if-eq p2, v1, :cond_0

    invoke-virtual {p3, v1}, Lcom/miui/antivirus/model/d;->O(Lo2/g$l;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not report because installer is in white list! installer = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", virusLevel: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lo2/g$l;->d:Lo2/g$l;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/miui/guardprovider/VirusObserver;->a:Lo2/g$i;

    invoke-interface {v1, p3}, Lo2/g$i;->g(Lcom/miui/antivirus/model/d;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/guardprovider/VirusObserver;->a:Lo2/g$i;

    invoke-interface {v1, p3}, Lo2/g$i;->k(Lcom/miui/antivirus/model/d;)V

    :goto_0
    sget-object v1, Lo2/g$l;->a:Lo2/g$l;

    if-eq v1, p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground scan : virus risk = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; virusLevel = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget p2, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-static {p2}, Lw2/v;->b(I)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {p2}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lw2/p;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lw2/t;->A()Z

    move-result p2

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const v7, 0x7f1213f5

    if-eqz p2, :cond_2

    iget-object p2, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {p2}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v8, "all"

    aput-object v8, v1, p1

    invoke-virtual {p2, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1, v5, v6}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lo2/g$a;->m:Lo2/g;

    invoke-static {p2}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->engineName:Ljava/lang/String;

    aput-object v8, v1, p1

    invoke-virtual {p2, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    const-string v1, "yyyy-MM-dd"

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v1

    const-string v6, "SECURITY_SCAN_FOREGROUND"

    invoke-virtual {p3}, Lcom/miui/antivirus/model/d;->y()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/miui/antivirus/model/d;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lq2/b;->d(Lcom/miui/guardprovider/aidl/VirusInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

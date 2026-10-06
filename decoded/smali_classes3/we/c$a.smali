.class Lwe/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwe/c;->k(Landroid/content/Context;Lwe/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lwe/c$c;

.field final synthetic c:Lwe/c;


# direct methods
.method constructor <init>(Lwe/c;Landroid/content/Context;Lwe/c$c;)V
    .locals 0

    iput-object p1, p0, Lwe/c$a;->c:Lwe/c;

    iput-object p2, p0, Lwe/c$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lwe/c$a;->b:Lwe/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lwe/c$a;->c:Lwe/c;

    invoke-static {v0}, Lwe/c;->b(Lwe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe/c$a;->c:Lwe/c;

    invoke-static {v0}, Lwe/c;->c(Lwe/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwe/c;->l(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lwe/c;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwe/c$a;->c:Lwe/c;

    iget-object v2, p0, Lwe/c$a;->a:Landroid/content/Context;

    const-string v3, "miuisec_net"

    invoke-static {v2, v3}, Lwe/e;->e(Landroid/content/Context;Ljava/lang/String;)Lwe/e$c;

    move-result-object v2

    invoke-static {v1, v2}, Lwe/c;->f(Lwe/c;Lwe/e$c;)Lwe/e$c;

    sget-boolean v1, Luf/a;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "AuthManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t is null = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lwe/c$a;->c:Lwe/c;

    invoke-static {v3}, Lwe/c;->e(Lwe/c;)Lwe/e$c;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lwe/c$a;->c:Lwe/c;

    invoke-static {v3}, Lwe/c;->c(Lwe/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwe/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lwe/c$a;->b:Lwe/c$c;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lwe/c$a;->c:Lwe/c;

    invoke-static {v2}, Lwe/c;->c(Lwe/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lwe/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lwe/c$a;->c:Lwe/c;

    invoke-virtual {v3}, Lwe/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lwe/c$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

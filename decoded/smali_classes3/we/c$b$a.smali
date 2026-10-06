.class Lwe/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwe/c$b;->b(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwe/c$b;


# direct methods
.method constructor <init>(Lwe/c$b;)V
    .locals 0

    iput-object p1, p0, Lwe/c$b$a;->a:Lwe/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lwe/c$b$a;->a:Lwe/c$b;

    iget-object v0, v0, Lwe/c$b;->a:Lwe/c;

    invoke-static {v0}, Lwe/c;->c(Lwe/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwe/c;->l(Landroid/content/Context;)V

    invoke-static {}, Lwe/c;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwe/c$b$a;->a:Lwe/c$b;

    iget-object v1, v1, Lwe/c$b;->a:Lwe/c;

    invoke-static {v1}, Lwe/c;->c(Lwe/c;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "miuisec_net"

    invoke-static {v2, v3}, Lwe/e;->e(Landroid/content/Context;Ljava/lang/String;)Lwe/e$c;

    move-result-object v2

    invoke-static {v1, v2}, Lwe/c;->f(Lwe/c;Lwe/e$c;)Lwe/e$c;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

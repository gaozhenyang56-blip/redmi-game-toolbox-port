.class Li4/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li4/a$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Li4/a$b;


# direct methods
.method constructor <init>(Li4/a$b;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Li4/a$b$a;->b:Li4/a$b;

    iput-object p2, p0, Li4/a$b$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Li4/a$b$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li4/a$b$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Li4/a$b$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li4/a$b$a;->b:Li4/a$b;

    iget-object v1, v1, Li4/a$b;->a:Li4/a;

    invoke-static {v1}, Li4/a;->a(Li4/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Li4/a$b$a;->b:Li4/a$b;

    iget-object v0, v0, Li4/a$b;->a:Li4/a;

    invoke-static {v0}, Li4/a;->b(Li4/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li4/a$b$a;->b:Li4/a$b;

    iget-object v0, v0, Li4/a$b;->a:Li4/a;

    invoke-static {v0}, Li4/a;->b(Li4/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li4/a$d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Li4/a$d;->x()V

    :cond_2
    iget-object v0, p0, Li4/a$b$a;->b:Li4/a$b;

    iget-object v0, v0, Li4/a$b;->a:Li4/a;

    invoke-static {v0}, Li4/a;->c(Li4/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li4/a$b$a;->b:Li4/a$b;

    iget-object v1, v1, Li4/a$b;->a:Li4/a;

    invoke-static {v1}, Li4/a;->d(Li4/a;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

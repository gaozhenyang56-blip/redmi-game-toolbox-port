.class Lcom/gzy/redmiport/ForegroundMonitor$1$2;
.super Ljava/lang/Object;
.source "ForegroundMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/ForegroundMonitor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gzy/redmiport/ForegroundMonitor$1;

.field private final synthetic val$callback:Ljava/lang/Object;

.field private final synthetic val$info:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/gzy/redmiport/ForegroundMonitor$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 34
    iput-object p1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$2;->this$1:Lcom/gzy/redmiport/ForegroundMonitor$1;

    iput-object p2, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$2;->val$callback:Ljava/lang/Object;

    iput-object p3, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$2;->val$info:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 34
    # getter for: Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->access$2()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$2;->val$callback:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 35
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$2;->val$callback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onForegroundInfoChanged"

    iget-object v2, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$2;->val$info:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$2;->val$callback:Ljava/lang/Object;

    iget-object v2, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$2;->val$info:Ljava/lang/Object;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_33

    .line 36
    goto :goto_39

    :catchall_33
    move-exception v0

    const-string v1, "Original foreground listener"

    invoke-static {v1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_39
    return-void
.end method

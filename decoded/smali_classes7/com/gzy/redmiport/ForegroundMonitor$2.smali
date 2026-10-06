.class Lcom/gzy/redmiport/ForegroundMonitor$2;
.super Ljava/lang/Object;
.source "ForegroundMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/ForegroundMonitor;->unavailable(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Ljava/lang/Object;

.field private final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/gzy/redmiport/ForegroundMonitor$2;->val$callback:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gzy/redmiport/ForegroundMonitor$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 41
    # getter for: Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->access$2()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$2;->val$callback:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/gzy/redmiport/ForegroundMonitor$2;->val$callback:Ljava/lang/Object;

    check-cast v0, Lcom/gzy/redmiport/ForegroundMonitor$Listener;

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$2;->val$reason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/gzy/redmiport/ForegroundMonitor$Listener;->onUnavailable(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

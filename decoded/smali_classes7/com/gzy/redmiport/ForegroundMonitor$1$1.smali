.class Lcom/gzy/redmiport/ForegroundMonitor$1$1;
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

.field private final synthetic val$pkg:Ljava/lang/String;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/gzy/redmiport/ForegroundMonitor$1;Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 5

    .line 28
    iput-object p1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$1;->this$1:Lcom/gzy/redmiport/ForegroundMonitor$1;

    iput-object p2, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$1;->val$callback:Ljava/lang/Object;

    iput-object p3, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 28
    # getter for: Lcom/gzy/redmiport/ForegroundMonitor;->subscriptions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->access$2()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$1;->val$callback:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$1;->val$callback:Ljava/lang/Object;

    check-cast v0, Lcom/gzy/redmiport/ForegroundMonitor$Listener;

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/gzy/redmiport/ForegroundMonitor$1$1;->val$uid:I

    invoke-interface {v0, v1, v2}, Lcom/gzy/redmiport/ForegroundMonitor$Listener;->onForegroundPackage(Ljava/lang/String;I)V

    :cond_17
    return-void
.end method

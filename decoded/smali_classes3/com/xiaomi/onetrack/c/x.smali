.class Lcom/xiaomi/onetrack/c/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/c/v;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/v;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/x;->a:Lcom/xiaomi/onetrack/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/c/x;->a:Lcom/xiaomi/onetrack/c/v;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/v;->a(Lcom/xiaomi/onetrack/c/v;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/x;->a:Lcom/xiaomi/onetrack/c/v;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/v;->a(Lcom/xiaomi/onetrack/c/v;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

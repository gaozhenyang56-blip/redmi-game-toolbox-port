.class Lcom/xiaomi/onetrack/api/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/aq;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/as;->a:Lcom/xiaomi/onetrack/api/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/c/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/as;->a:Lcom/xiaomi/onetrack/api/aq;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/aq;->a(Lcom/xiaomi/onetrack/api/aq;)V

    return-void
.end method

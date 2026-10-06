.class Lcom/xiaomi/onetrack/c/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/c/v;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/v;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/w;->b:Lcom/xiaomi/onetrack/c/v;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/c/w;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/onetrack/c/w;->b:Lcom/xiaomi/onetrack/c/v;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/c/v;->a()V

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/c/w;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v3, v1, v3

    const/4 v3, 0x2

    aput v3, v1, v3

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, v1, v2

    invoke-static {v3}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/c/w;->b:Lcom/xiaomi/onetrack/c/v;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/xiaomi/onetrack/c/w;->b:Lcom/xiaomi/onetrack/c/v;

    int-to-long v6, v4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netReceiver error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTimer"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

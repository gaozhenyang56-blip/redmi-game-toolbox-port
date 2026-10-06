.class Lcom/xiaomi/onetrack/api/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/onetrack/api/ao;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/ao;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ap;->b:Lcom/xiaomi/onetrack/api/ao;

    iput p2, p0, Lcom/xiaomi/onetrack/api/ap;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/onetrack/c/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/onetrack/api/ap;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/c/y;->a()Lcom/xiaomi/onetrack/c/y;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/onetrack/c/y;->a(IZ)V

    invoke-static {}, Lcom/xiaomi/onetrack/c/y;->a()Lcom/xiaomi/onetrack/c/y;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/xiaomi/onetrack/c/y;->a(IZ)V

    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    :cond_1
    return-void
.end method

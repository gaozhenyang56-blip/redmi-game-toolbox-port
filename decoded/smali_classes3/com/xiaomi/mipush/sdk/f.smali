.class public Lcom/xiaomi/mipush/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p0;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->e:Lcom/xiaomi/mipush/sdk/o0;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/p0;->b(Lcom/xiaomi/mipush/sdk/o0;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "ASSEMBLE_PUSH :  register fun touch os when network change!"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/xiaomi/mipush/sdk/a;->register()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/f;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/xiaomi/mipush/sdk/f;->a:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    :cond_0
    sput-wide v0, Lcom/xiaomi/mipush/sdk/f;->a:J

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/f;->b:Z

    return v0
.end method

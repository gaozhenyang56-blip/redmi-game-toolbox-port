.class Lcom/xiaomi/push/service/u0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/v0;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/u0$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    iget-wide v0, p0, Lcom/xiaomi/push/service/u0$c;->c:J

    iget-wide v2, p0, Lcom/xiaomi/push/service/u0$c;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b()J
    .locals 5

    iget-wide v0, p0, Lcom/xiaomi/push/service/u0$c;->d:J

    iget-wide v2, p0, Lcom/xiaomi/push/service/u0$c;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

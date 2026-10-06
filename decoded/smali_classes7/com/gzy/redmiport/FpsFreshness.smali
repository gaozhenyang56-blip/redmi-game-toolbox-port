.class public final Lcom/gzy/redmiport/FpsFreshness;
.super Ljava/lang/Object;
.source "FpsFreshness.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static value(JJJ)J
    .registers 9

    .line 5
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1b

    cmp-long v0, p2, v0

    if-lez v0, :cond_1b

    const-wide/32 v0, 0x2faf080

    add-long/2addr v0, p4

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1b

    sub-long/2addr p4, p2

    const-wide/32 p2, 0x59682f00

    cmp-long p2, p4, p2

    if-gtz p2, :cond_1b

    goto :goto_1d

    :cond_1b
    const-wide/16 p0, -0x1

    :goto_1d
    return-wide p0
.end method

.class public Lcom/miui/powercenter/legacypowerrank/HardwareRankFragment;
.super Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerRankFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected c0()I
    .locals 4

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->j()D

    move-result-wide v0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->l()D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected e0()I
    .locals 1

    const v0, 0x7f121296

    return v0
.end method

.method protected g0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

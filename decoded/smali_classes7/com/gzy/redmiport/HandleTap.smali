.class public final Lcom/gzy/redmiport/HandleTap;
.super Ljava/lang/Object;
.source "HandleTap.java"


# instance fields
.field private active:Z

.field private downAt:J

.field private downX:F

.field private downY:F

.field private moved:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(IJFFII)Z
    .registers 11

    .line 9
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_13

    if-ne p7, v0, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/gzy/redmiport/HandleTap;->active:Z

    iput-boolean v1, p0, Lcom/gzy/redmiport/HandleTap;->moved:Z

    iput-wide p2, p0, Lcom/gzy/redmiport/HandleTap;->downAt:J

    iput p4, p0, Lcom/gzy/redmiport/HandleTap;->downX:F

    iput p5, p0, Lcom/gzy/redmiport/HandleTap;->downY:F

    return v1

    .line 10
    :cond_13
    iget-boolean v2, p0, Lcom/gzy/redmiport/HandleTap;->active:Z

    if-nez v2, :cond_18

    return v1

    .line 11
    :cond_18
    if-ne p7, v0, :cond_58

    const/4 p7, 0x3

    if-eq p1, p7, :cond_58

    const/4 p7, 0x5

    if-eq p1, p7, :cond_58

    const/4 p7, 0x6

    if-ne p1, p7, :cond_24

    goto :goto_58

    .line 12
    :cond_24
    iget p7, p0, Lcom/gzy/redmiport/HandleTap;->downX:F

    sub-float/2addr p4, p7

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    int-to-float p6, p6

    cmpl-float p4, p4, p6

    if-gtz p4, :cond_3b

    iget p4, p0, Lcom/gzy/redmiport/HandleTap;->downY:F

    sub-float/2addr p5, p4

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p4, p4, p6

    if-lez p4, :cond_3d

    :cond_3b
    iput-boolean v0, p0, Lcom/gzy/redmiport/HandleTap;->moved:Z

    .line 13
    :cond_3d
    if-ne p1, v0, :cond_57

    iget-boolean p1, p0, Lcom/gzy/redmiport/HandleTap;->moved:Z

    if-nez p1, :cond_53

    iget-wide p4, p0, Lcom/gzy/redmiport/HandleTap;->downAt:J

    cmp-long p1, p2, p4

    if-ltz p1, :cond_53

    iget-wide p4, p0, Lcom/gzy/redmiport/HandleTap;->downAt:J

    sub-long/2addr p2, p4

    const-wide/16 p4, 0x12c

    cmp-long p1, p2, p4

    if-gez p1, :cond_53

    goto :goto_54

    :cond_53
    move v0, v1

    :goto_54
    iput-boolean v1, p0, Lcom/gzy/redmiport/HandleTap;->active:Z

    return v0

    .line 14
    :cond_57
    return v1

    .line 11
    :cond_58
    :goto_58
    iput-boolean v1, p0, Lcom/gzy/redmiport/HandleTap;->active:Z

    return v1
.end method

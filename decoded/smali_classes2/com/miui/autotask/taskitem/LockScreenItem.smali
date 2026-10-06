.class public abstract Lcom/miui/autotask/taskitem/LockScreenItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field public static final LOCK_10_MIN:I = 0xa

.field public static final LOCK_15_MIN:I = 0xf

.field public static final LOCK_30_MIN:I = 0x1e

.field public static final LOCK_5_MIN:I = 0x5

.field public static final LOCK_NOW:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TaskItem_LockScreenConditionItem"


# instance fields
.field private lockScreenTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method

.method private static v(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0x1e

    return p0

    :cond_0
    const/16 p0, 0xf

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f080417

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f080416

    return v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f080418

    return v0
.end method

.method public l()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;->w()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/LockScreenItem;->lockScreenTime:I

    return v0
.end method

.method public x()J
    .locals 4

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;->w()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public y()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;->w()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public z(I)V
    .locals 0

    invoke-static {p1}, Lcom/miui/autotask/taskitem/LockScreenItem;->v(I)I

    move-result p1

    iput p1, p0, Lcom/miui/autotask/taskitem/LockScreenItem;->lockScreenTime:I

    return-void
.end method

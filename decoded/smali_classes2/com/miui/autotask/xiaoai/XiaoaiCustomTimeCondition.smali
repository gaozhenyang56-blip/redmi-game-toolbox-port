.class public Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;
.super Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;
.source "SourceFile"


# instance fields
.field private endTime:I

.field private excludeTime:I

.field private repeatType:I

.field private startTime:I

.field private timeType:I

.field private weekDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/xiaoai/XiaoaiTaskItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->endTime:I

    return v0
.end method

.method public getExcludeTime()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->excludeTime:I

    return v0
.end method

.method public getGreyIconResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIconResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRepeatType()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->repeatType:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->startTime:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeType()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->timeType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTranIconResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWeekDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->weekDays:Ljava/util/List;

    return-object v0
.end method

.method public isSetFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setEndTime(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->endTime:I

    return-void
.end method

.method public setExcludeTime(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->excludeTime:I

    return-void
.end method

.method public setRepeatType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->repeatType:I

    return-void
.end method

.method public setStartTime(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->startTime:I

    return-void
.end method

.method public setTimeType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->timeType:I

    return-void
.end method

.method public setWeekDays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->weekDays:Ljava/util/List;

    return-void
.end method

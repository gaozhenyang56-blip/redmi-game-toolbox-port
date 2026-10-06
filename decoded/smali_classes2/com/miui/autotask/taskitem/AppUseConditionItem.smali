.class public Lcom/miui/autotask/taskitem/AppUseConditionItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field public static final MIN_APP_USE_DURATION:J = 0x493e0L


# instance fields
.field private accumulateDuration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ac"
    .end annotation
.end field

.field protected meetCondition:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mc"
    .end annotation
.end field

.field protected pkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field protected startRecord:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sr"
    .end annotation
.end field

.field protected useDuration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->meetCondition:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->startRecord:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->accumulateDuration:J

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->accumulateDuration:J

    iget-wide v2, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->useDuration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->accumulateDuration:J

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->meetCondition:Z

    return-void
.end method

.method public D(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->startRecord:J

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_app_use_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->meetCondition:Z

    return v0
.end method

.method public v(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->accumulateDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->accumulateDuration:J

    :cond_0
    return-void
.end method

.method public w()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->accumulateDuration:J

    return-wide v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public y()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->startRecord:J

    return-wide v0
.end method

.method public z()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AppUseConditionItem;->useDuration:J

    return-wide v0
.end method

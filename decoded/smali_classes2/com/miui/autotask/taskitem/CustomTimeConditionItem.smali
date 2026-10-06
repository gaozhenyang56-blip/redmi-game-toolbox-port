.class public Lcom/miui/autotask/taskitem/CustomTimeConditionItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field public static final IN_TIMING:I = 0x1

.field private static final RESERVED_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "NewAutoTaskManager-Time"

.field public static final TIME_PERIOD:I = 0x2


# instance fields
.field private endTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field

.field private excludeTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field private repeat:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private startTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "e"
    .end annotation
.end field

.field private timeType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "g"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method

.method public static v(Z)Z
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lme/i;->c(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-static {v1, v0}, Lme/i;->b(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v1, v0}, Lme/i;->b(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_0
    return v3

    :cond_1
    return v4

    :cond_2
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    const/4 v2, 0x6

    if-gt v0, v2, :cond_3

    return v4

    :cond_3
    if-eqz p0, :cond_4

    if-ne v0, v1, :cond_4

    move v3, v4

    :cond_4
    return v3
.end method

.method private static y(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit8 v2, p0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%02d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->startTime:I

    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->timeType:I

    return v0
.end method

.method public C(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->endTime:I

    return-void
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->excludeTime:I

    return-void
.end method

.method public E(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->repeat:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    return-void
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->startTime:I

    return-void
.end method

.method public G(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->timeType:I

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0803dc

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803db

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_custom_time_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->k(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->B()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->x()I

    move-result v0

    invoke-static {v0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->y(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->B()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x7f1202e5

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->A()I

    move-result v4

    invoke-static {v4}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->y(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->w()I

    move-result v3

    invoke-static {v3}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->y(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f1202ea

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803dd

    return v0
.end method

.method public l()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->B()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public m()Z
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly1/a;->a(J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->c()I

    move-result v4

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu3/h;->s1(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    const/16 v7, 0x7f

    if-eq v4, v7, :cond_4

    const/16 v7, 0x80

    if-eq v4, v7, :cond_2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    sub-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->f(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    invoke-static {v5}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->v(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    return v6

    :cond_4
    :goto_0
    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0xea60

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NewAutoTaskManager-Time"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->B()I

    move-result v2

    const-wide/16 v4, 0x2710

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x1

    if-ne v2, v9, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute time = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->x()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->x()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v2, v7

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5

    move v6, v9

    :cond_5
    return v6

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "st = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->A()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", et = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->w()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->A()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v2, v7

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    move v2, v9

    goto :goto_1

    :cond_7
    move v2, v6

    :goto_1
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->w()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v10, v3

    mul-long/2addr v10, v7

    add-long/2addr v10, v4

    cmp-long v0, v0, v10

    if-gtz v0, :cond_8

    move v0, v9

    goto :goto_2

    :cond_8
    move v0, v6

    :goto_2
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->A()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->w()I

    move-result v3

    if-ge v1, v3, :cond_a

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    move v6, v9

    :cond_9
    return v6

    :cond_a
    if-nez v2, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    move v6, v9

    :cond_c
    return v6
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->endTime:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->excludeTime:I

    return v0
.end method

.method public z()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->repeat:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    if-nez v0, :cond_0

    const-string v0, "NewAutoTaskManager-Time"

    const-string v1, "getRepeat, repeat == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->repeat:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->repeat:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    return-object v0
.end method

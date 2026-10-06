.class public Lcom/miui/autotask/taskitem/InCallConditionItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field public static final CALL:I = 0x67

.field public static final MISSING:I = 0x68

.field public static final NO_IN_CALL:I = 0x69


# instance fields
.field private inCallType:I
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


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f08040c

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f08040b

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_incall_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/InCallConditionItem;->v()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const v0, 0x7f12031f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f1218aa

    goto :goto_0

    :pswitch_2
    const v0, 0x7f121a0e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a0e

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f08040d

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/InCallConditionItem;->v()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public m()Z
    .locals 6

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/InCallConditionItem;->v()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iget v0, v0, Lu3/h;->i:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v4

    iget-wide v4, v4, Lu3/h;->g:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    :pswitch_2
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iget v0, v0, Lu3/h;->i:I

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/InCallConditionItem;->inCallType:I

    return v0
.end method

.method public w()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/InCallConditionItem;->v()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/taskitem/InCallConditionItem;->inCallType:I

    return-void
.end method

.method public y(I)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x67

    goto :goto_0

    :cond_0
    const/16 p1, 0x68

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/autotask/taskitem/InCallConditionItem;->x(I)V

    return-void
.end method

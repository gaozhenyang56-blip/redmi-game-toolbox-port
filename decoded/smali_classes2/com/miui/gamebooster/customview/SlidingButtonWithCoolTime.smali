.class public Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;
.super Lcom/miui/gamebooster/customview/SlidingButtonWithoutPressState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime$a;
    }
.end annotation


# instance fields
.field private b:J

.field private c:J

.field private d:Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/SlidingButtonWithoutPressState;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->b:J

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->c:J

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->d:Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime$a;->onClick()V

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->b:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->c:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->b:J

    :cond_2
    invoke-super {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setClickInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->c:J

    return-void
.end method

.method public setOnDisableTouchListener(Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->d:Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime$a;

    return-void
.end method

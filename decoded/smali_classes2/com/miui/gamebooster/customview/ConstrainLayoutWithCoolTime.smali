.class public Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;

.field private c:Lcom/miui/gamebooster/customview/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->a:J

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->c:Lcom/miui/gamebooster/customview/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/gamebooster/customview/m;->a()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->b:Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->b:Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;

    invoke-interface {v0}, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setClickInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->a:J

    return-void
.end method

.method public setDefaultIntervalProvider(Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->b:Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime$a;

    return-void
.end method

.method public setOnViewDisableTouchListener(Lcom/miui/gamebooster/customview/m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/ConstrainLayoutWithCoolTime;->c:Lcom/miui/gamebooster/customview/m;

    return-void
.end method

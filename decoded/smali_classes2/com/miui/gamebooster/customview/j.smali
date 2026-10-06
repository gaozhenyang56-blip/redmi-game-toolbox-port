.class public Lcom/miui/gamebooster/customview/j;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/customview/j$a;

.field private b:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/customview/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V



    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    new-instance v0, Lcom/miui/gamebooster/customview/j$a;

    invoke-direct {v0, p0, p2}, Lcom/miui/gamebooster/customview/j$a;-><init>(Lcom/miui/gamebooster/customview/j;F)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/j;->a:Lcom/miui/gamebooster/customview/j$a;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/j;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/j;->b:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/j;->a:Lcom/miui/gamebooster/customview/j$a;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/j$a;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/miui/gamebooster/customview/j;->d:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/j;->e:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/gamebooster/customview/j;->e:I

    iget v3, p0, Lcom/miui/gamebooster/customview/j;->c:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/j;->b:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->h(Z)V

    :cond_2
    iput v1, p0, Lcom/miui/gamebooster/customview/j;->e:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/j;->d:I

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/j;->a:Lcom/miui/gamebooster/customview/j$a;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/j$a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.class public Lcom/miui/gamebooster/view/SeekBarLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:I

.field private e:F

.field private f:Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->d:I

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->b:F

    iget v1, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->a:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->d:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->e:F

    goto :goto_1

    :cond_0
    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->c:Z

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->c:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->b:F

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->b()V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->f:Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->e:F

    invoke-interface {p1, p0, v0}, Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;->u(Lcom/miui/gamebooster/view/SeekBarLinearLayout;F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->a:F

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->a()V

    :cond_2
    :goto_0
    return v1
.end method

.method public setOnLinearLayoutClickListener(Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->f:Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;

    return-void
.end method

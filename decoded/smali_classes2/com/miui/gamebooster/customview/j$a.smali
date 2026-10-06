.class Lcom/miui/gamebooster/customview/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/notification/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/customview/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:F

.field private b:Z

.field private c:F

.field private d:F

.field final synthetic e:Lcom/miui/gamebooster/customview/j;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/customview/j;F)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/j$a;->e:Lcom/miui/gamebooster/customview/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/gamebooster/customview/j$a;->a:F

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/j$a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/j$a;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/j$a;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_0

    iget p1, p0, Lcom/miui/gamebooster/customview/j$a;->a:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/j$a;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/j$a;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/j$a;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/customview/j$a;->c:F

    :cond_2
    iput-boolean v1, p0, Lcom/miui/gamebooster/customview/j$a;->b:Z

    :goto_0
    iget-boolean p1, p0, Lcom/miui/gamebooster/customview/j$a;->b:Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/j$a;->a(Landroid/view/MotionEvent;)V

    :cond_1
    iget-boolean p1, p0, Lcom/miui/gamebooster/customview/j$a;->b:Z

    return p1
.end method

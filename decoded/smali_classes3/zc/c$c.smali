.class Lzc/c$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lzc/c;


# direct methods
.method private constructor <init>(Lzc/c;)V
    .locals 0

    iput-object p1, p0, Lzc/c$c;->a:Lzc/c;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzc/c;Lzc/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lzc/c$c;-><init>(Lzc/c;)V

    return-void
.end method

.method private a(Landroid/view/View;FF)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lzc/c$c;->a(Landroid/view/View;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lzc/c$c;->a:Lzc/c;

    invoke-static {v0}, Lzc/c;->g(Lzc/c;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzc/c$c;->a:Lzc/c;

    invoke-static {v0}, Lzc/c;->h(Lzc/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lzc/c$c;->a:Lzc/c;

    invoke-static {v2}, Lzc/c;->i(Lzc/c;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lzc/c$c;->a:Lzc/c;

    invoke-static {v2}, Lzc/c;->l(Lzc/c;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-direct {p0, v0, v1, p1}, Lzc/c$c;->a(Landroid/view/View;FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

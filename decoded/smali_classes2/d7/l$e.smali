.class Ld7/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/l;->T(Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

.field final synthetic c:Lcom/miui/gamebooster/windowmanager/newbox/d0;

.field final synthetic d:Landroid/view/WindowManager;

.field final synthetic e:Ld7/l;


# direct methods
.method constructor <init>(Ld7/l;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Lcom/miui/gamebooster/windowmanager/newbox/d0;Landroid/view/WindowManager;)V
    .locals 0

    iput-object p1, p0, Ld7/l$e;->e:Ld7/l;

    iput-object p2, p0, Ld7/l$e;->a:Landroid/view/View;

    iput-object p3, p0, Ld7/l$e;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iput-object p4, p0, Ld7/l$e;->c:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    iput-object p5, p0, Ld7/l$e;->d:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ld7/l$e;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/l$e;->d(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ld7/l$e;)V
    .locals 0

    invoke-direct {p0}, Ld7/l$e;->f()V

    return-void
.end method

.method public static synthetic c(Ld7/l$e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/l$e;->e(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    iget-object p1, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {p1}, Ld7/l;->v(Ld7/l;)V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {p1}, Ld7/l;->v(Ld7/l;)V

    return-void
.end method

.method private synthetic f()V
    .locals 1

    iget-object v0, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v0}, Ld7/l;->v(Ld7/l;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Ld7/l$e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Ld7/l$e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GTGuideManager"

    const-string v1, "onGlobalLayout: targetView was removed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Ld7/l$e;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Ld7/l$e;->e:Ld7/l;

    iget-object v2, p0, Ld7/l$e;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0233

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Ld7/l;->k(Ld7/l;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v1}, Ld7/l;->j(Ld7/l;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ld7/a;

    invoke-direct {v2, v0}, Ld7/a;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v0}, Ld7/l;->j(Ld7/l;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ld7/l;->s(Ld7/l;Landroid/view/View;)V

    iget-object v0, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v0}, Ld7/l;->j(Ld7/l;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0858

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Ld7/l$e;->c:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v3, 0x1

    aget v1, v1, v3

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v0}, Ld7/l;->j(Ld7/l;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ld7/l$e;->c:Lcom/miui/gamebooster/windowmanager/newbox/d0;

    const v2, 0x7f0b01a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ld7/p;

    invoke-direct {v2, p0, v1}, Ld7/p;-><init>(Ld7/l$e;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ld7/l$e;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v1}, Ld7/l;->j(Ld7/l;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v2}, Ld7/l;->t(Ld7/l;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v0}, Ld7/l;->j(Ld7/l;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ld7/q;

    invoke-direct {v1, p0}, Ld7/q;-><init>(Ld7/l$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ld7/l$e;->e:Ld7/l;

    invoke-static {v0}, Ld7/l;->j(Ld7/l;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ld7/r;

    invoke-direct {v1, p0}, Ld7/r;-><init>(Ld7/l$e;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

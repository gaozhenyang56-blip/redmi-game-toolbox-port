.class Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;
.super Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$d;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->R(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->V(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;I)I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->setMainViewHeight(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->O(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    new-instance v0, Lcom/miui/gamebooster/windowmanager/a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/windowmanager/a;-><init>(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->P(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;Z)Z

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$c;->a:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->Q(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;Z)Z

    return-void
.end method

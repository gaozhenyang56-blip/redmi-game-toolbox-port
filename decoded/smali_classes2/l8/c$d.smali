.class public Ll8/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll8/c$d;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll8/c$d;->b:Z

    iput-object p1, p0, Ll8/c$d;->c:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Ll8/c$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Ll8/c$d;->b:Z

    return p1
.end method

.method static synthetic b(Ll8/c$d;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ll8/c$d;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Ll8/c$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Ll8/c$d;->a:Z

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-wide/16 v0, 0xfa

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ll8/c$d$b;

    invoke-direct {p1, p0}, Ll8/c$d$b;-><init>(Ll8/c$d;)V

    iget-boolean v2, p0, Ll8/c$d;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Ll8/c$d;->c:Landroid/view/View;

    invoke-virtual {v2, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Ll8/c$d;->a:Z

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x3f8ccccd    # 1.1f

    iput-boolean v2, p0, Ll8/c$d;->b:Z

    iget-object v2, p0, Ll8/c$d;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Ll8/c$d$a;

    invoke-direct {v0, p0}, Ll8/c$d$a;-><init>(Ll8/c$d;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean p2, p0, Ll8/c$d;->a:Z

    :goto_0
    return p2
.end method

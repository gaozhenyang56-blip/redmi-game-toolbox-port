.class Ll8/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll8/c$d;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll8/c$d;


# direct methods
.method constructor <init>(Ll8/c$d;)V
    .locals 0

    iput-object p1, p0, Ll8/c$d$a;->a:Ll8/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ll8/c$d$a;->a:Ll8/c$d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ll8/c$d;->a(Ll8/c$d;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ll8/c$d$a;->a:Ll8/c$d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ll8/c$d;->a(Ll8/c$d;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ll8/c$d$a;->a:Ll8/c$d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ll8/c$d;->a(Ll8/c$d;Z)Z

    return-void
.end method

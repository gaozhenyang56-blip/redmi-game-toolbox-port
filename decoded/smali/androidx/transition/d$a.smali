.class Landroidx/transition/d$a;
.super Landroidx/transition/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/transition/d;


# direct methods
.method constructor <init>(Landroidx/transition/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/d$a;->b:Landroidx/transition/d;

    iput-object p2, p0, Landroidx/transition/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/d$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/transition/b0;->g(Landroid/view/View;F)V

    iget-object v0, p0, Landroidx/transition/d$a;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/b0;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    return-void
.end method

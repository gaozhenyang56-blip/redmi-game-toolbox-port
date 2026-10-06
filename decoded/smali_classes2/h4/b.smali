.class public Lh4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh4/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lh4/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh4/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lh4/b$a;

    invoke-direct {v0, p0}, Lh4/b$a;-><init>(Lh4/b;)V

    iput-object v0, p0, Lh4/b;->d:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lh4/b;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lh4/b;)I
    .locals 0

    iget p0, p0, Lh4/b;->b:I

    return p0
.end method

.method static synthetic b(Lh4/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lh4/b;->a:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)Lh4/b;
    .locals 2

    iget-object v0, p0, Lh4/b;->a:Ljava/util/ArrayList;

    new-instance v1, Lh4/b$b;

    invoke-direct {v1, p1, p2, p3}, Lh4/b$b;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh4/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lh4/b;->b:I

    iget-object v0, p0, Lh4/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lh4/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget v0, p0, Lh4/b;->b:I

    iget-object v1, p0, Lh4/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh4/b;->a:Ljava/util/ArrayList;

    iget v1, p0, Lh4/b;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/b$b;

    invoke-static {v0}, Lh4/b$b;->a(Lh4/b$b;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lh4/b$b;->c(Lh4/b$b;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1
    iget p1, p0, Lh4/b;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lh4/b;->b:I

    iget-object v2, p0, Lh4/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object p1, p0, Lh4/b;->c:Landroid/os/Handler;

    iget-object v2, p0, Lh4/b;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    iget v0, p0, Lh4/b;->b:I

    iget-object v1, p0, Lh4/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh4/b;->a:Ljava/util/ArrayList;

    iget v1, p0, Lh4/b;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/b$b;

    invoke-static {v0}, Lh4/b$b;->c(Lh4/b$b;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    iget v0, p0, Lh4/b;->b:I

    iget-object v1, p0, Lh4/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh4/b;->a:Ljava/util/ArrayList;

    iget v1, p0, Lh4/b;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/b$b;

    invoke-static {v0}, Lh4/b$b;->a(Lh4/b$b;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lh4/b$b;->c(Lh4/b$b;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.class Landroidx/transition/q$b;
.super Landroidx/transition/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/transition/q;


# direct methods
.method constructor <init>(Landroidx/transition/q;)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/n;-><init>()V

    iput-object p1, p0, Landroidx/transition/q$b;->a:Landroidx/transition/q;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/q$b;->a:Landroidx/transition/q;

    iget v1, v0, Landroidx/transition/q;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/q;->c:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/q;->d:Z

    invoke-virtual {v0}, Landroidx/transition/Transition;->end()V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Landroidx/transition/q$b;->a:Landroidx/transition/q;

    iget-boolean v0, p1, Landroidx/transition/q;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/transition/Transition;->start()V

    iget-object p1, p0, Landroidx/transition/q$b;->a:Landroidx/transition/q;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/transition/q;->d:Z

    :cond_0
    return-void
.end method

.class public Landroidx/transition/b;
.super Landroidx/transition/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/q;-><init>()V

    invoke-direct {p0}, Landroidx/transition/b;->u()V

    return-void
.end method

.method private u()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/transition/q;->r(I)Landroidx/transition/q;

    new-instance v1, Landroidx/transition/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/transition/d;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/q;->f(Landroidx/transition/Transition;)Landroidx/transition/q;

    move-result-object v1

    new-instance v2, Landroidx/transition/c;

    invoke-direct {v2}, Landroidx/transition/c;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/transition/q;->f(Landroidx/transition/Transition;)Landroidx/transition/q;

    move-result-object v1

    new-instance v2, Landroidx/transition/d;

    invoke-direct {v2, v0}, Landroidx/transition/d;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/transition/q;->f(Landroidx/transition/Transition;)Landroidx/transition/q;

    return-void
.end method

.class Landroidx/transition/o$a$a;
.super Landroidx/transition/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/o$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm/a;

.field final synthetic b:Landroidx/transition/o$a;


# direct methods
.method constructor <init>(Landroidx/transition/o$a;Lm/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/o$a$a;->b:Landroidx/transition/o$a;

    iput-object p2, p0, Landroidx/transition/o$a$a;->a:Lm/a;

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

    iget-object v0, p0, Landroidx/transition/o$a$a;->a:Lm/a;

    iget-object v1, p0, Landroidx/transition/o$a$a;->b:Landroidx/transition/o$a;

    iget-object v1, v1, Landroidx/transition/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lm/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$g;)Landroidx/transition/Transition;

    return-void
.end method

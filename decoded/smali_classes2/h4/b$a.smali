.class Lh4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh4/b;


# direct methods
.method constructor <init>(Lh4/b;)V
    .locals 0

    iput-object p1, p0, Lh4/b$a;->a:Lh4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh4/b$a;->a:Lh4/b;

    invoke-static {v0}, Lh4/b;->b(Lh4/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh4/b$a;->a:Lh4/b;

    invoke-static {v1}, Lh4/b;->a(Lh4/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/b$b;

    invoke-static {v0}, Lh4/b$b;->a(Lh4/b$b;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lh4/b$b;->b(Lh4/b$b;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lh4/b$a;->a:Lh4/b;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

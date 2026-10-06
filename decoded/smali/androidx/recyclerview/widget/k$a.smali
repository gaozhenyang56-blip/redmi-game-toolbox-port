.class Landroidx/recyclerview/widget/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/k;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v1, v0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$c0;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v1, v0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$c0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k;->s(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v1, v0, Landroidx/recyclerview/widget/k;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->h0(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

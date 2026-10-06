.class Ly5/i$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5/i;->F(Lc6/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc6/c;

.field final synthetic b:I

.field final synthetic c:Ly5/i;


# direct methods
.method constructor <init>(Ly5/i;Lc6/c;I)V
    .locals 0

    iput-object p1, p0, Ly5/i$g;->c:Ly5/i;

    iput-object p2, p0, Ly5/i$g;->a:Lc6/c;

    iput p3, p0, Ly5/i$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Ly5/i$g;->a:Lc6/c;

    invoke-static {}, Lx5/p;->t0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lc6/c;->q(Z)V

    iget-object v0, p0, Ly5/i$g;->c:Ly5/i;

    invoke-static {v0}, Ly5/i;->i(Ly5/i;)Ly5/c;

    move-result-object v0

    iget v1, p0, Ly5/i$g;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    iget-object v0, p0, Ly5/i$g;->c:Ly5/i;

    invoke-static {v0}, Ly5/i;->k(Ly5/i;)Lcom/miui/gamebooster/beauty/conversation/view/GestureEffectView;

    move-result-object v1

    invoke-static {v0, v1}, Ly5/i;->l(Ly5/i;Landroid/view/View;)V

    iget-object v0, p0, Ly5/i$g;->c:Ly5/i;

    invoke-static {v0}, Ly5/i;->m(Ly5/i;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Ly5/i$g;->c:Ly5/i;

    invoke-static {v2}, Ly5/i;->n(Ly5/i;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ly5/i;->o(Ly5/i;Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

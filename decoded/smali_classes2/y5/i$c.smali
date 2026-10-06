.class Ly5/i$c;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5/i;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly5/i;


# direct methods
.method constructor <init>(Ly5/i;)V
    .locals 0

    iput-object p1, p0, Ly5/i$c;->a:Ly5/i;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    iget-object p1, p0, Ly5/i$c;->a:Ly5/i;

    invoke-static {p1}, Ly5/i;->h(Ly5/i;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iget-object v0, p0, Ly5/i$c;->a:Ly5/i;

    invoke-static {v0}, Ly5/i;->i(Ly5/i;)Ly5/c;

    move-result-object v0

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->T()Lx5/e;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Ly5/i;->j(Ly5/i;Landroidx/recyclerview/widget/RecyclerView;Ly5/c;Lx5/e;)V

    :cond_0
    return-void
.end method

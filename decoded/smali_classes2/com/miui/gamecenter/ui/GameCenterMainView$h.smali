.class public final Lcom/miui/gamecenter/ui/GameCenterMainView$h;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamecenter/ui/GameCenterMainView;->K(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;Lq6/f;Landroid/util/SparseBooleanArray;Lak/p;Lak/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$n;

.field final synthetic b:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Loj/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/miui/gamecenter/ui/GameCenterMainView;

.field final synthetic d:Landroid/util/SparseBooleanArray;

.field final synthetic e:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic f:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Loj/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$n;Lak/a;Lcom/miui/gamecenter/ui/GameCenterMainView;Landroid/util/SparseBooleanArray;Lq6/f;Lak/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$n;",
            "Lak/a<",
            "Loj/t;",
            ">;",
            "Lcom/miui/gamecenter/ui/GameCenterMainView;",
            "Landroid/util/SparseBooleanArray;",
            "Lq6/f<",
            "*>;",
            "Lak/p<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->a:Landroidx/recyclerview/widget/RecyclerView$n;

    iput-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->b:Lak/a;

    iput-object p3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->c:Lcom/miui/gamecenter/ui/GameCenterMainView;

    iput-object p4, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->d:Landroid/util/SparseBooleanArray;

    iput-object p5, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->e:Lq6/f;

    iput-object p6, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->f:Lak/p;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->a:Landroidx/recyclerview/widget/RecyclerView$n;

    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r([I)[I

    move-result-object p1

    aget p1, p1, p3

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object p2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->a:Landroidx/recyclerview/widget/RecyclerView$n;

    instance-of v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    goto :goto_1

    :cond_2
    instance-of v2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_3

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p([I)[I

    move-result-object p2

    aget p2, p2, p3

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    if-eq p1, v1, :cond_8

    if-ne p2, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object p3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->b:Lak/a;

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->a:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result p3

    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->c:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v2}, Lcom/miui/gamecenter/ui/GameCenterMainView;->n(Lcom/miui/gamecenter/ui/GameCenterMainView;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->c:Lcom/miui/gamecenter/ui/GameCenterMainView;

    invoke-static {v2}, Lcom/miui/gamecenter/ui/GameCenterMainView;->g(Lcom/miui/gamecenter/ui/GameCenterMainView;)Z

    move-result v2

    if-eqz v2, :cond_5

    sub-int/2addr p3, v1

    if-ne p1, p3, :cond_5

    iget-object p3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->b:Lak/a;

    invoke-interface {p3}, Lak/a;->invoke()Ljava/lang/Object;

    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrolled: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "GameCenterMainView"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt p2, p1, :cond_8

    :goto_2
    iget-object p3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->a:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->c:Lcom/miui/gamecenter/ui/GameCenterMainView;

    iget-object v3, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->d:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->e:Lq6/f;

    iget-object v5, p0, Lcom/miui/gamecenter/ui/GameCenterMainView$h;->f:Lak/p;

    invoke-static {v2, p3}, Lcom/miui/gamecenter/ui/GameCenterMainView;->o(Lcom/miui/gamecenter/ui/GameCenterMainView;Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p3

    if-nez p3, :cond_7

    if-eqz v4, :cond_6

    invoke-virtual {v4, p2}, Lq6/f;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    goto :goto_3

    :cond_6
    move-object p3, v0

    :goto_3
    if-eqz p3, :cond_7

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, p3}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eq p2, p1, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    return-void
.end method

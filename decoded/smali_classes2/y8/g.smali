.class public Ly8/g;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb9/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb9/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly8/g;->c:I

    iput v0, p0, Ly8/g;->d:I

    const-string v0, "GameBoxBusinessItemDecoration"

    iput-object v0, p0, Ly8/g;->e:Ljava/lang/String;

    iput p1, p0, Ly8/g;->a:I

    iput-object p2, p0, Ly8/g;->b:Ljava/util/List;

    invoke-direct {p0}, Ly8/g;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ly8/g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ly8/g;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb9/c;

    instance-of v2, v1, Lb9/b;

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget v2, p0, Ly8/g;->c:I

    if-ne v2, v3, :cond_0

    iput v0, p0, Ly8/g;->c:I

    goto :goto_1

    :cond_0
    instance-of v1, v1, Lb9/a;

    if-eqz v1, :cond_1

    iget v1, p0, Ly8/g;->d:I

    if-ne v1, v3, :cond_1

    iput v0, p0, Ly8/g;->d:I

    :cond_1
    :goto_1
    iget v1, p0, Ly8/g;->d:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Ly8/g;->c:I

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Ly8/g;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly8/g;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fbp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly8/g;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget p4, p0, Ly8/g;->a:I

    div-int/lit8 p4, p4, 0x2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p4, p0, Ly8/g;->a:I

    div-int/lit8 p4, p4, 0x2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget p4, p0, Ly8/g;->c:I

    if-ne p3, p4, :cond_1

    const/4 p4, 0x0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iget p4, p0, Ly8/g;->a:I

    div-int/lit8 p4, p4, 0x2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    add-int/2addr p3, v0

    iget p4, p0, Ly8/g;->d:I

    if-ne p3, p4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p2, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    goto :goto_1

    :cond_2
    iget p2, p0, Ly8/g;->a:I

    :goto_1
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

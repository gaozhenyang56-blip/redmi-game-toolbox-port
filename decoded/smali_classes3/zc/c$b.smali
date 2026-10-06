.class Lzc/c$b;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzc/c;->u(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroidx/core/view/h;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic c:Lzc/c;


# direct methods
.method constructor <init>(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    iput-object p1, p0, Lzc/c$b;->c:Lzc/c;

    iput-object p2, p0, Lzc/c$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>()V

    new-instance v0, Landroidx/core/view/h;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lzc/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lzc/c$c;-><init>(Lzc/c;Lzc/c$a;)V

    invoke-direct {v0, p2, v1}, Landroidx/core/view/h;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lzc/c$b;->a:Landroidx/core/view/h;

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lzc/c$b;->c:Lzc/c;

    invoke-static {v0}, Lzc/c;->g(Lzc/c;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzc/c$b;->a:Landroidx/core/view/h;

    invoke-virtual {v0, p1}, Landroidx/core/view/h;->a(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lzc/c$b;->c:Lzc/c;

    invoke-static {v0}, Lzc/c;->h(Lzc/c;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzc/c$b;->c:Lzc/c;

    invoke-static {v0}, Lzc/c;->h(Lzc/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lzc/c$b;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lzc/c$b;->c:Lzc/c;

    invoke-static {v1}, Lzc/c;->g(Lzc/c;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lzc/c$b;->c:Lzc/c;

    invoke-static {v1}, Lzc/c;->i(Lzc/c;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lzc/c$b;->c:Lzc/c;

    invoke-static {v2}, Lzc/c;->j(Lzc/c;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lzc/c$b;->c:Lzc/c;

    invoke-static {v2}, Lzc/c;->k(Lzc/c;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p2}, Lzc/c$b;->b(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p2}, Lzc/c$b;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

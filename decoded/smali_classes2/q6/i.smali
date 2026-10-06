.class public final Lq6/i;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lq6/i;->b:Landroid/util/SparseArray;

    const/4 p2, 0x0

    iput-object p2, p0, Lq6/i;->c:Ljava/lang/Object;

    iput-object p1, p0, Lq6/i;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Lq6/i;
    .locals 1

    new-instance v0, Lq6/i;

    invoke-direct {v0, p0, p1}, Lq6/i;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/view/ViewGroup;IZ)Lq6/i;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_0

    new-instance p2, Lq6/i;

    invoke-direct {p2, p0, p1}, Lq6/i;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2

    :cond_0
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-nez p2, :cond_2

    instance-of p2, p1, Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lq6/i;

    invoke-direct {p1, p0, p2}, Lq6/i;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p1

    :cond_2
    :goto_0
    new-instance p2, Lq6/i;

    invoke-direct {p2, p0, p1}, Lq6/i;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lq6/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public e(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lq6/i;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lq6/i;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public f(ILjava/lang/String;)Lq6/i;
    .locals 0

    invoke-virtual {p0, p1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

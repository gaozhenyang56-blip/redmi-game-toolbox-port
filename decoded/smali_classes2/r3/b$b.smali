.class Lr3/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lr3/b;


# direct methods
.method constructor <init>(Lr3/b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lr3/b$b;->d:Lr3/b;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0b71

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lr3/b$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0b76

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lr3/b$b;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0b75

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lr3/b$b;->c:Landroid/widget/TextView;

    new-instance p1, Lr3/c;

    invoke-direct {p1, p0, p2}, Lr3/c;-><init>(Lr3/b$b;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lr3/b$b;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/b$b;->b(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lr3/b$b;->d:Lr3/b;

    invoke-static {p2}, Lr3/b;->k(Lr3/b;)Lr3/b$a;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr3/b$b;->d:Lr3/b;

    invoke-static {p2}, Lr3/b;->k(Lr3/b;)Lr3/b$a;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v0

    invoke-interface {p2, p1, v0}, Lr3/b$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

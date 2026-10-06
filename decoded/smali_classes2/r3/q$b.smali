.class Lr3/q$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/CheckBox;

.field final synthetic g:Lr3/q;


# direct methods
.method constructor <init>(Lr3/q;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lr3/q$b;->g:Lr3/q;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0b71

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lr3/q$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0b76

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lr3/q$b;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0b75

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lr3/q$b;->c:Landroid/widget/TextView;

    const p1, 0x7f0b0b70

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lr3/q$b;->d:Landroid/widget/ImageView;

    const p1, 0x7f0b0b6f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lr3/q$b;->e:Landroid/widget/ImageView;

    const p1, 0x7f0b038f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lr3/q$b;->f:Landroid/widget/CheckBox;

    iget-object p1, p0, Lr3/q$b;->d:Landroid/widget/ImageView;

    new-instance v0, Lr3/r;

    invoke-direct {v0, p0}, Lr3/r;-><init>(Lr3/q$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lr3/s;

    invoke-direct {p1, p0}, Lr3/s;-><init>(Lr3/q$b;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lr3/q$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lr3/q$b;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lr3/q$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lr3/q$b;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lr3/q$b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lr3/q$b;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lr3/q$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lr3/q$b;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lr3/q$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lr3/q$b;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lr3/q$b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lr3/q$b;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lr3/q$b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lr3/q$b;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h(Lr3/q$b;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lr3/q$b;->f:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lr3/q$b;->g:Lr3/q;

    invoke-static {p1}, Lr3/q;->l(Lr3/q;)Lr3/q$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr3/q$b;->g:Lr3/q;

    invoke-static {p1}, Lr3/q;->l(Lr3/q;)Lr3/q$a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lr3/q$a;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lr3/q$b;->g:Lr3/q;

    invoke-static {p1}, Lr3/q;->l(Lr3/q;)Lr3/q$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr3/q$b;->g:Lr3/q;

    invoke-static {p1}, Lr3/q;->l(Lr3/q;)Lr3/q$a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lr3/q$a;->a(I)V

    :cond_0
    return-void
.end method

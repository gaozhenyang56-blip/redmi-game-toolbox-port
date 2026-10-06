.class public Lf5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

.field private d:[Ljava/lang/String;

.field private final e:Landroidx/recyclerview/widget/RecyclerView;

.field private final f:Landroidx/recyclerview/widget/GridLayoutManager;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DockAlphabetIndexer"

    iput-object v0, p0, Lf5/e;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lf5/e;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lf5/e;->h:I

    iput-boolean v0, p0, Lf5/e;->i:Z

    iput v0, p0, Lf5/e;->j:I

    iput-object p2, p0, Lf5/e;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lf5/e;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p4, p0, Lf5/e;->g:Ljava/util/List;

    invoke-direct {p0, p1}, Lf5/e;->o(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lf5/e;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf5/e;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lf5/e;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lf5/e;->n(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lf5/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf5/e;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lf5/e;C)Z
    .locals 0

    invoke-direct {p0, p1}, Lf5/e;->p(C)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lf5/e;)I
    .locals 0

    iget p0, p0, Lf5/e;->j:I

    return p0
.end method

.method static synthetic f(Lf5/e;I)I
    .locals 0

    iput p1, p0, Lf5/e;->j:I

    return p1
.end method

.method static synthetic g(Lf5/e;)Z
    .locals 0

    iget-boolean p0, p0, Lf5/e;->i:Z

    return p0
.end method

.method static synthetic h(Lf5/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lf5/e;->i:Z

    return p1
.end method

.method static synthetic i(Lf5/e;)I
    .locals 0

    iget p0, p0, Lf5/e;->h:I

    return p0
.end method

.method static synthetic j(Lf5/e;I)I
    .locals 0

    iput p1, p0, Lf5/e;->h:I

    return p1
.end method

.method static synthetic k(Lf5/e;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lf5/e;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic l(Lf5/e;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lf5/e;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic m(Lf5/e;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
    .locals 0

    iget-object p0, p0, Lf5/e;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    return-object p0
.end method

.method private n(Ljava/lang/String;)I
    .locals 5

    const-string v0, "#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move p1, v2

    :goto_0
    iget-object v0, p0, Lf5/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lf5/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/c;

    invoke-virtual {v0}, Lg5/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lf5/e;->p(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v0, v2

    :goto_1
    iget-object v3, p0, Lf5/e;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lf5/e;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/c;

    invoke-virtual {v3}, Lg5/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method private o(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b0569

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0568

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    iput-object p1, p0, Lf5/e;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    new-instance v0, Lf5/e$a;

    invoke-direct {v0, p0}, Lf5/e$a;-><init>(Lf5/e;)V

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->setSectionIndexer(Landroid/widget/SectionIndexer;)V

    iget-object p1, p0, Lf5/e;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    new-instance v0, Lf5/e$b;

    invoke-direct {v0, p0}, Lf5/e$b;-><init>(Lf5/e;)V

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->k(Lmiuix/miuixbasewidget/widget/AlphabetIndexer$e;)V

    iget-object p1, p0, Lf5/e;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lf5/e$c;

    invoke-direct {v0, p0}, Lf5/e$c;-><init>(Lf5/e;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method

.method private p(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public q()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lf5/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/j;

    instance-of v4, v2, Lg5/c;

    if-eqz v4, :cond_0

    check-cast v2, Lg5/c;

    invoke-virtual {v2}, Lg5/c;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lf5/e;->p(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    const-string v2, "#"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAlphaSections: alphaSections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DockAlphabetIndexer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lf5/e;->d:[Ljava/lang/String;

    return-void
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf5/e;->i:Z

    iget-object v0, p0, Lf5/e;->c:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->G(II)V

    iput-boolean v1, p0, Lf5/e;->i:Z

    return-void
.end method

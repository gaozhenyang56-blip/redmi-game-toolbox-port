.class public Ld8/f;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/f$d;,
        Ld8/f$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lh8/b$a;

.field private c:Lg8/b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lh8/b$a;Lg8/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh8/h;",
            ">;",
            "Lh8/b$a;",
            "Lg8/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld8/f;->d:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Ld8/f;->e:I

    iput-object p1, p0, Ld8/f;->a:Ljava/util/List;

    iput-object p2, p0, Ld8/f;->b:Lh8/b$a;

    iput-object p3, p0, Ld8/f;->c:Lg8/b;

    sget-object p1, Ld8/f$b;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 p3, 0x6

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iput p3, p0, Ld8/f;->e:I

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    move v0, p3

    :goto_0
    iput v0, p0, Ld8/f;->e:I

    :goto_1
    return-void
.end method

.method static synthetic b(Ld8/f;)Lh8/b$a;
    .locals 0

    iget-object p0, p0, Ld8/f;->b:Lh8/b$a;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget v2, p0, Ld8/f;->e:I

    mul-int/2addr p2, v2

    add-int/2addr v2, p2

    iget-object v3, p0, Ld8/f;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v3, Ld8/f$c;

    iget-object v4, p0, Ld8/f;->a:Ljava/util/List;

    invoke-interface {v4, p2, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {v3, p2}, Ld8/f$c;-><init>(Ljava/util/List;)V

    iget-object p2, p0, Ld8/f;->d:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Ld8/f$a;

    invoke-direct {p2, p0}, Ld8/f$a;-><init>(Ld8/f;)V

    invoke-virtual {v1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Ld8/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Ld8/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ld8/f;->e:I

    div-int v2, v0, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    return v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Ld8/f;->c(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

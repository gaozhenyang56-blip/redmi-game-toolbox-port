.class public Lt5/r;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/r$c;,
        Lt5/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/miui/gamebooster/model/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Z

.field private c:Lt5/r$c;

.field private d:Lt5/r$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/f;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lt5/r;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lt5/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lt5/r;->b:Z

    return p1
.end method

.method static synthetic b(Lt5/r;)Lt5/r$c;
    .locals 0

    iget-object p0, p0, Lt5/r;->c:Lt5/r$c;

    return-object p0
.end method

.method static synthetic c(Lt5/r;)V
    .locals 0

    invoke-direct {p0}, Lt5/r;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/f;

    instance-of v4, v3, Lcom/miui/gamebooster/model/x;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lcom/miui/gamebooster/model/z;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/miui/gamebooster/model/z;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/z;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/y;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/y;->j()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lt5/r;->d:Lt5/r$b;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lt5/r$b;->a(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public e()V
    .locals 5

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/f;

    instance-of v2, v1, Lcom/miui/gamebooster/model/z;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/miui/gamebooster/model/z;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/z;->i()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/z;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/y;

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/y;->k(Z)V

    goto :goto_1

    :cond_0
    instance-of v1, v1, Lcom/miui/gamebooster/model/x;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt5/r;->d:Lt5/r$b;

    if-eqz v1, :cond_1

    invoke-interface {v1, v3}, Lt5/r$b;->a(Z)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/f;

    instance-of v2, v1, Lcom/miui/gamebooster/model/x;

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lcom/miui/gamebooster/model/z;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/miui/gamebooster/model/z;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/z;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/y;

    invoke-virtual {v2, p1}, Lcom/miui/gamebooster/model/y;->k(Z)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lt5/r;->notifyDataSetChanged()V

    return-void
.end method

.method public g(Lt5/r$b;)V
    .locals 0

    iput-object p1, p0, Lt5/r;->d:Lt5/r$b;

    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/f;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/f;->c()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/f;

    if-nez p2, :cond_0

    iget-object p2, p0, Lt5/r;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/f;->b()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/gamebooster/model/f;->a(Landroid/view/View;)Lt5/b;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lt5/b;

    :goto_0
    iget-boolean v1, p0, Lt5/r;->b:Z

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/model/f;->f(Z)V

    new-instance v1, Lt5/r$a;

    invoke-direct {v1, p0}, Lt5/r$a;-><init>(Lt5/r;)V

    invoke-virtual {p3, p2, p1, v0, v1}, Lt5/b;->a(Landroid/view/View;ILjava/lang/Object;Lt5/r$c;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/model/f;->d()I

    move-result v0

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lt5/r;->b:Z

    return-void
.end method

.method public i(Lt5/r$c;)V
    .locals 0

    iput-object p1, p0, Lt5/r;->c:Lt5/r$c;

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

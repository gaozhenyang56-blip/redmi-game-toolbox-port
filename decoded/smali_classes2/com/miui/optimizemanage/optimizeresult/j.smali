.class public Lcom/miui/optimizemanage/optimizeresult/j;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/miui/optimizemanage/optimizeresult/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/miui/optimizemanage/optimizeresult/j;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/j;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/j;->c:Ljava/util/Set;

    return-void
.end method

.method private c(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizemanage/optimizeresult/c;

    invoke-virtual {v2}, Lcom/miui/optimizemanage/optimizeresult/c;->isNeedTrack()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(I)Lcom/miui/optimizemanage/optimizeresult/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizemanage/optimizeresult/c;

    return-object p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/j;->a(I)Lcom/miui/optimizemanage/optimizeresult/c;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizemanage/optimizeresult/c;

    invoke-virtual {p1}, Lcom/miui/optimizemanage/optimizeresult/c;->getLayoutIdType()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/c;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/j;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/c;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/optimizemanage/optimizeresult/c;->createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/d;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/optimizemanage/optimizeresult/d;

    :goto_0
    invoke-virtual {p3, p2, v0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;->a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/c;->isNeedTrack()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/optimizemanage/optimizeresult/j;->c:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/j;->c(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;->setSequence(I)V

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p3

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/c;->getCardName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lgb/b;->B(Ljava/lang/String;I)V

    :cond_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lcom/miui/optimizemanage/optimizeresult/c;->getLayoutTypeCount()I

    move-result v0

    return v0
.end method

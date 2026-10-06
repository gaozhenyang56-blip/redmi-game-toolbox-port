.class Lj3/c$c;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lj3/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj3/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lj3/c;


# direct methods
.method constructor <init>(Lj3/c;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lj3/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj3/c$c;->b:Lj3/c;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lj3/c$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Lj3/b;
    .locals 1

    iget-object v0, p0, Lj3/c$c;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj3/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj3/c$c;->a(I)Lj3/b;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object p2, p0, Lj3/c$c;->b:Lj3/c;

    invoke-static {p2}, Lj3/c;->e(Lj3/c;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e0081

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lj3/c$e;

    iget-object v0, p0, Lj3/c$c;->b:Lj3/c;

    invoke-direct {p3, v0}, Lj3/c$e;-><init>(Lj3/c;)V

    const v0, 0x7f0b00af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lj3/c$e;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b00b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lj3/c$e;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lj3/c$e;

    :goto_0
    iget-object v0, p0, Lj3/c$c;->b:Lj3/c;

    invoke-static {v0}, Lj3/c;->f(Lj3/c;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    const v0, 0x7f0809df

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0700b6

    if-nez p1, :cond_2

    const v1, 0x7f08032d

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lj3/c$c;->b:Lj3/c;

    invoke-static {v1}, Lj3/c;->e(Lj3/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v2, v0, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lj3/c$c;->b:Lj3/c;

    invoke-static {v1}, Lj3/c;->g(Lj3/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    const v1, 0x7f08032c

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lj3/c$c;->b:Lj3/c;

    invoke-static {v1}, Lj3/c;->e(Lj3/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v2, v2, v2, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_3
    const v0, 0x7f08032b

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_1
    invoke-virtual {p0, p1}, Lj3/c$c;->a(I)Lj3/b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lj3/c$c;->b:Lj3/c;

    invoke-static {v1}, Lj3/c;->c(Lj3/c;)I

    move-result v1

    if-ne v1, p1, :cond_4

    iget-object p1, p3, Lj3/c$e;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p3, Lj3/c$e;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lj3/c$c;->b:Lj3/c;

    invoke-static {v1}, Lj3/c;->e(Lj3/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060088

    goto :goto_2

    :cond_4
    iget-object p1, p3, Lj3/c$e;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p3, Lj3/c$e;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lj3/c$c;->b:Lj3/c;

    invoke-static {v1}, Lj3/c;->e(Lj3/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060091

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p3, Lj3/c$e;->b:Landroid/widget/TextView;

    iget-object p3, v0, Lj3/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-object p2
.end method

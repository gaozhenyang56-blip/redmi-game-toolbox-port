.class public Ld8/f$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh8/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Ld8/f$c;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    rem-int/lit8 v0, p2, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f2b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v4, v2

    move v2, v1

    move v1, v4

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    invoke-static {}, Lj8/s;->g()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public b(I)Lh8/h;
    .locals 1

    iget-object v0, p0, Ld8/f$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/h;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Ld8/f$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld8/f$c;->b(I)Lh8/h;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0557

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Ld8/f$d;

    invoke-direct {p3}, Ld8/f$d;-><init>()V

    const v0, 0x7f0b0bd4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ld8/f$d;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ld8/f$d;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0506

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Ld8/f$d;->b:Landroid/widget/ImageView;

    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Ld8/f$d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Ld8/f$c;->b(I)Lh8/h;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2}, Lh8/h;->h(ILandroid/view/View;)V

    :cond_1
    invoke-direct {p0, p2, p1}, Ld8/f$c;->a(Landroid/view/View;I)V

    return-object p2
.end method

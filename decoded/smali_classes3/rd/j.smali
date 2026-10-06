.class public Lrd/j;
.super Ll4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/j$b;,
        Lrd/j$c;
    }
.end annotation


# instance fields
.field private d:J

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ll4/b;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrd/j;->d:J

    new-instance v0, Lrd/j$a;

    invoke-direct {v0, p0}, Lrd/j$a;-><init>(Lrd/j;)V

    iput-object v0, p0, Lrd/j;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic d(Lrd/j;)J
    .locals 2

    iget-wide v0, p0, Lrd/j;->d:J

    return-wide v0
.end method

.method static synthetic e(Lrd/j;J)J
    .locals 0

    iput-wide p1, p0, Lrd/j;->d:J

    return-wide p1
.end method

.method static synthetic f(Lrd/j;)I
    .locals 0

    iget p0, p0, Ll4/b;->a:I

    return p0
.end method

.method static synthetic g(Lrd/j;[Lrd/j$c;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lrd/j;->h([Lrd/j$c;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private h([Lrd/j$c;Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrd/j$c;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v3, v3, Lrd/j$c;->a:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    aget-object v2, p1, v0

    iget-object v2, v2, Lrd/j$c;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    aget-object v2, p1, v0

    iget-object v2, v2, Lrd/j$c;->c:Landroid/widget/TextView;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhe/a;

    iget-object v3, v3, Lhe/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v2, p1, v0

    iget-object v2, v2, Lrd/j$c;->d:Landroid/widget/TextView;

    const v3, 0x7f1201e5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhe/a;

    iget-wide v5, v5, Lhe/a;->c:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhe/a;

    iget v2, v2, Lhe/a;->d:I

    if-lez v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, Lrd/j$c;->b:Landroid/widget/ImageView;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhe/a;

    iget v3, v3, Lhe/a;->d:I

    invoke-static {v2, v3}, Lme/a;->g(Landroid/widget/ImageView;I)V

    goto :goto_3

    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhe/a;

    iget-object v2, v2, Lhe/a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhe/a;

    iget v2, v2, Lhe/a;->e:I

    invoke-static {v2}, Lme/m;->b(I)I

    move-result v2

    invoke-static {v2}, Lx4/b2;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhe/a;

    iget-object v4, v4, Lhe/a;->a:Ljava/lang/String;

    invoke-static {v4}, Lme/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhe/a;

    iget v3, v3, Lhe/a;->e:I

    invoke-static {p2, v2, v3}, Lx4/b2;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lrd/j$c;->b:Landroid/widget/ImageView;

    goto :goto_2

    :cond_2
    aget-object v2, p1, v0

    iget-object v2, v2, Lrd/j$c;->b:Landroid/widget/ImageView;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhe/a;

    iget-object v3, v3, Lhe/a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lme/a;->h(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lrd/j$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private i([Lrd/j$c;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lrd/j$b;

    iget v1, p0, Ll4/b;->a:I

    invoke-direct {v0, p0, p2, p1, v1}, Lrd/j$b;-><init>(Lrd/j;Landroid/content/Context;[Lrd/j$c;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7f0b0598

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p4, 0x7f0b0599

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    const v0, 0x7f0b059a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x3

    new-array v1, v1, [Lrd/j$c;

    new-instance v2, Lrd/j$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lrd/j$c;-><init>(Lrd/j$a;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iput-object p1, v2, Lrd/j$c;->a:Landroid/view/ViewGroup;

    const v5, 0x7f0b0506

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lrd/j$c;->b:Landroid/widget/ImageView;

    aget-object v2, v1, v4

    const v6, 0x7f0b0bc9

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lrd/j$c;->c:Landroid/widget/TextView;

    aget-object v2, v1, v4

    const v4, 0x7f0b0891

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v2, Lrd/j$c;->d:Landroid/widget/TextView;

    new-instance p1, Lrd/j$c;

    invoke-direct {p1, v3}, Lrd/j$c;-><init>(Lrd/j$a;)V

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iput-object p4, p1, Lrd/j$c;->a:Landroid/view/ViewGroup;

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p1, Lrd/j$c;->b:Landroid/widget/ImageView;

    aget-object p1, v1, v2

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p1, Lrd/j$c;->c:Landroid/widget/TextView;

    aget-object p1, v1, v2

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/j$c;->d:Landroid/widget/TextView;

    new-instance p1, Lrd/j$c;

    invoke-direct {p1, v3}, Lrd/j$c;-><init>(Lrd/j$a;)V

    const/4 p4, 0x2

    aput-object p1, v1, p4

    iput-object v0, p1, Lrd/j$c;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p1, Lrd/j$c;->b:Landroid/widget/ImageView;

    aget-object p1, v1, p4

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p1, Lrd/j$c;->c:Landroid/widget/TextView;

    aget-object p1, v1, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/j$c;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lrd/j;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x1020019

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p4, p0, Lrd/j;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lrd/j$c;

    :goto_0
    invoke-static {p2}, Lx4/h0;->b(Landroid/view/View;)Z

    invoke-direct {p0, v1, p3}, Lrd/j;->i([Lrd/j$c;Landroid/content/Context;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e03f9

    return v0
.end method

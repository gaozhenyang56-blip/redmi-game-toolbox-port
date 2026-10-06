.class public Lh8/i;
.super Lh8/b;
.source "SourceFile"


# instance fields
.field private d:Lg8/b;

.field private e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg8/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lh8/b;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lh8/i;->f:Ljava/util/List;

    iput-object p2, p0, Lh8/i;->d:Lg8/b;

    return-void
.end method

.method private h(Lcom/miui/gamebooster/videobox/view/VBIndicatorView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lh8/i;->o()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;->setTotalCount(I)V

    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-object v2, Lh8/i$b;->a:[I

    iget-object v3, p0, Lh8/i;->d:Lg8/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x7f071f0e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lj8/p;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lh8/i;->o()I

    move-result v2

    if-gt v2, v4, :cond_2

    invoke-direct {p0}, Lh8/i;->q()Z

    move-result v2

    if-nez v2, :cond_2

    const v3, 0x7f071f10

    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lh8/i;->e:Z

    if-eqz v2, :cond_2

    const v3, 0x7f071f0f

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private j(Landroidx/viewpager/widget/ViewPager;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v2, Lh8/i$b;->a:[I

    iget-object v3, p0, Lh8/i;->d:Lg8/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f071d35

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const v2, 0x7f071d36

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected static m()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "VBFunctionGroup"

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locale.getLanguage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLanguage error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private q()Z
    .locals 2

    invoke-static {}, Lh8/i;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(Lh8/h;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh8/i;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh8/i;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public k(ILandroid/view/View;Lh8/b$a;)V
    .locals 3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lh8/i;->d:Lg8/b;

    sget-object v0, Lg8/b;->f:Lg8/b;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld8/m$b;

    iget-object p2, p1, Ld8/m$b;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lh8/i;->i(Landroid/view/View;)V

    iget-object p2, p1, Ld8/m$b;->c:Lcom/miui/gamebooster/videobox/view/VBIndicatorView;

    invoke-direct {p0, p2}, Lh8/i;->h(Lcom/miui/gamebooster/videobox/view/VBIndicatorView;)V

    iget-object p2, p1, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0, p2}, Lh8/i;->j(Landroidx/viewpager/widget/ViewPager;)V

    iget-object p2, p1, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Ld8/f;

    iget-object v0, p0, Lh8/i;->f:Ljava/util/List;

    iget-object v1, p0, Lh8/i;->d:Lg8/b;

    iget-boolean v2, p0, Lh8/i;->e:Z

    invoke-direct {p2, v0, p3, v1, v2}, Ld8/f;-><init>(Ljava/util/List;Lh8/b$a;Lg8/b;Z)V

    iget-object p3, p1, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    goto :goto_0

    :cond_1
    instance-of p3, p2, Ld8/f;

    if-eqz p3, :cond_2

    check-cast p2, Ld8/f;

    invoke-virtual {p2}, Ld8/f;->d()V

    :cond_2
    :goto_0
    iget-object p2, p1, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    new-instance p3, Lh8/i$a;

    invoke-direct {p3, p0, p1}, Lh8/i$a;-><init>(Lh8/i;Ld8/m$b;)V

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh8/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh8/i;->f:Ljava/util/List;

    return-object v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lh8/i;->d:Lg8/b;

    sget-object v1, Lg8/b;->f:Lg8/b;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0e0556

    return v0

    :cond_0
    const v0, 0x7f0e052b

    return v0
.end method

.method public o()I
    .locals 5

    iget-object v0, p0, Lh8/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lh8/i;->d:Lg8/b;

    sget-object v2, Lg8/b;->a:Lg8/b;

    const/4 v3, 0x6

    const/4 v4, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lg8/b;->b:Lg8/b;

    if-eq v1, v2, :cond_2

    sget-object v2, Lg8/b;->g:Lg8/b;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lh8/i;->e:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    div-int v1, v0, v3

    rem-int/2addr v0, v3

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public p()Lg8/b;
    .locals 1

    iget-object v0, p0, Lh8/i;->d:Lg8/b;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lh8/i;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/i;->e:Z

    return-void
.end method

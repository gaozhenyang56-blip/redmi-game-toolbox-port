.class Ld8/n$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/n;->m(Landroid/content/Context;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld8/n;


# direct methods
.method constructor <init>(Ld8/n;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ld8/n$c;->a:Ld8/n;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Ld8/n$c;)V
    .locals 0

    invoke-direct {p0}, Ld8/n$c;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ld8/n$c;->a:Ld8/n;

    invoke-static {v2}, Ld8/n;->g(Ld8/n;)Ld8/m;

    move-result-object v2

    invoke-virtual {v2}, Ld8/m;->getCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ld8/n$c;->a:Ld8/n;

    invoke-static {v2}, Ld8/n;->g(Ld8/n;)Ld8/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Ld8/m;->a(I)Lh8/i;

    move-result-object v2

    invoke-virtual {v2}, Lh8/i;->p()Lg8/b;

    move-result-object v2

    sget-object v4, Lg8/b;->a:Lg8/b;

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Ld8/n$c;->a:Ld8/n;

    invoke-static {v2}, Ld8/n;->g(Ld8/n;)Ld8/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Ld8/m;->a(I)Lh8/i;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lh8/i;->l()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v2}, Lh8/i;->l()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/h;

    invoke-virtual {v4}, Lh8/h;->j()Lg8/a;

    move-result-object v4

    sget-object v5, Lg8/a;->j:Lg8/a;

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lh8/i;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/h;

    invoke-static {}, Lj8/a;->g()Z

    move-result v2

    invoke-virtual {v0, v2}, Lh8/h;->l(Z)V

    move-object v3, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Ld8/n$c;->a:Ld8/n;

    invoke-static {v0}, Ld8/n;->h(Ld8/n;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ld8/m$b;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld8/m$b;

    iget-object v1, v0, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v1

    instance-of v1, v1, Ld8/f;

    if-eqz v1, :cond_3

    iget-object v0, v0, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    check-cast v0, Ld8/f;

    invoke-virtual {v0}, Ld8/f;->d()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Ld8/n$c;->a:Ld8/n;

    invoke-static {p1}, Ld8/n;->f(Ld8/n;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Ld8/p;

    invoke-direct {p2, p0}, Ld8/p;-><init>(Ld8/n$c;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

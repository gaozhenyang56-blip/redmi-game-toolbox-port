.class public Ld8/m;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/m$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/i;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lh8/b$a;

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh8/b$a;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld8/m;->a:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ld8/m;->c:Z

    if-eqz p3, :cond_0

    invoke-static {p1}, Lf8/a;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lf8/a;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object p3

    :goto_0
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Ld8/m;->b:Lh8/b$a;

    invoke-direct {p0}, Ld8/m;->b()Z

    move-result p2

    iput-boolean p2, p0, Ld8/m;->c:Z

    iput-object p1, p0, Ld8/m;->d:Landroid/content/Context;

    return-void
.end method

.method private b()Z
    .locals 4

    iget-object v0, p0, Ld8/m;->a:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ld8/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/i;

    invoke-virtual {v2}, Lh8/i;->p()Lg8/b;

    move-result-object v2

    sget-object v3, Lg8/b;->e:Lg8/b;

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private d()V
    .locals 8

    iget-object v0, p0, Ld8/m;->a:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld8/m;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/i;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lh8/i;->p()Lg8/b;

    move-result-object v3

    sget-object v4, Lg8/b;->e:Lg8/b;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lh8/i;->p()Lg8/b;

    move-result-object v3

    sget-object v4, Lg8/b;->f:Lg8/b;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lh8/i;->p()Lg8/b;

    move-result-object v3

    sget-object v4, Lg8/b;->c:Lg8/b;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lh8/i;->l()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/h;

    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string v6, "item_title"

    invoke-virtual {v4}, Lh8/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "position"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "turbo_pkg"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ld8/m$a;->a:[I

    invoke-virtual {v4}, Lh8/h;->j()Lg8/a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    invoke-virtual {v4}, Lh8/h;->j()Lg8/a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const-string v4, "\u53cc\u82af\u89c6\u6548"

    :goto_2
    const-string v6, "content_type"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "video_function_show"

    invoke-static {v4, v5}, Lcom/miui/gamebooster/utils/a$o;->c(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "VBContainerAdapter"

    const-string v2, "track error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public a(I)Lh8/i;
    .locals 1

    iget-object v0, p0, Ld8/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/i;

    return-object p1
.end method

.method public c(Z)V
    .locals 4

    iget-object v0, p0, Ld8/m;->a:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, La8/t;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ld8/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/i;

    invoke-virtual {v1}, Lh8/i;->p()Lg8/b;

    move-result-object v2

    sget-object v3, Lg8/b;->b:Lg8/b;

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lh8/i;->p()Lg8/b;

    move-result-object v2

    sget-object v3, Lg8/b;->g:Lg8/b;

    if-ne v2, v3, :cond_2

    :cond_3
    invoke-virtual {v1}, Lh8/i;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/h;

    invoke-virtual {v1}, Lh8/h;->j()Lg8/a;

    move-result-object v2

    sget-object v3, Lg8/a;->m:Lg8/a;

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, p1}, Lh8/h;->m(Z)V

    :cond_5
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Ld8/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld8/m;->a(I)Lh8/i;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Ld8/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/i;

    invoke-virtual {p1}, Lh8/i;->p()Lg8/b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Ld8/m;->a(I)Lh8/i;

    move-result-object v0

    invoke-virtual {v0}, Lh8/i;->n()I

    move-result v1

    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Ld8/m$b;

    invoke-direct {p3}, Ld8/m$b;-><init>()V

    const v1, 0x7f0b0ccb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Ld8/m$b;->a:Landroid/view/View;

    const v1, 0x7f0b0d6a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p3, Ld8/m$b;->b:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0b0d69

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/videobox/view/VBIndicatorView;

    iput-object v1, p3, Ld8/m$b;->c:Lcom/miui/gamebooster/videobox/view/VBIndicatorView;

    const v1, 0x7f0b0dae

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p3, Ld8/m$b;->d:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0083

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p3, Ld8/m$b;->e:Landroid/view/ViewGroup;

    const v1, 0x7f0b0471

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Ld8/m$b;->g:Landroid/widget/TextView;

    const v1, 0x7f0b046d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Ld8/m$b;->h:Landroid/widget/TextView;

    const v1, 0x7f0b046c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    iput-object v1, p3, Ld8/m$b;->f:Lcom/miui/gamebooster/windowmanager/newbox/NewToolBatteryView;

    const v1, 0x7f0b055c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Ld8/m$b;->o:Landroid/widget/ImageView;

    const v1, 0x7f0b0cf3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Ld8/m$b;->p:Landroid/widget/TextView;

    const v1, 0x7f0b0ce1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Ld8/m$b;->q:Landroid/widget/TextView;

    const v1, 0x7f0b0c23

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Ld8/m$b;->t:Landroid/view/View;

    const v1, 0x7f0b01a2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p3, Ld8/m$b;->s:Landroid/widget/Button;

    const v1, 0x7f0b0558

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Ld8/m$b;->r:Landroid/widget/ImageView;

    const v1, 0x7f0b07a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p3, Ld8/m$b;->i:Landroid/widget/RadioGroup;

    const v1, 0x7f0b0bb7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p3, Ld8/m$b;->j:Landroid/widget/RadioButton;

    const v1, 0x7f0b02cb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p3, Ld8/m$b;->k:Landroid/widget/RadioButton;

    const v1, 0x7f0b0bb8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Ld8/m$b;->l:Landroid/view/View;

    const v1, 0x7f0b01ad

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Ld8/m$b;->m:Landroid/widget/TextView;

    const v1, 0x7f0b01a8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Ld8/m$b;->n:Landroid/widget/TextView;

    instance-of v1, v0, Lh8/q;

    if-eqz v1, :cond_0

    const v1, 0x7f0b02cc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p3, Ld8/m$b;->d:Landroid/widget/FrameLayout;

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-boolean p3, p0, Ld8/m;->c:Z

    invoke-virtual {v0, p3}, Lh8/i;->s(Z)V

    iget-object p3, p0, Ld8/m;->b:Lh8/b$a;

    invoke-virtual {v0, p1, p2, p3}, Lh8/i;->k(ILandroid/view/View;Lh8/b$a;)V

    invoke-direct {p0}, Ld8/m;->d()V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lg8/b;->values()[Lg8/b;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

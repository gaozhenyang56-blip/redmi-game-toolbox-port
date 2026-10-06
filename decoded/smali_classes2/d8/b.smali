.class public Ld8/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/b$b;,
        Ld8/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld8/b;->a:Ljava/util/List;

    invoke-direct {p0}, Ld8/b;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lg8/a;->g:Lg8/a;

    invoke-static {v0, v1}, Lf8/a;->e(Landroid/content/Context;Lg8/a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld8/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Lh8/b;
    .locals 1

    iget-object v0, p0, Ld8/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/b;

    return-object p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Ld8/b;->a:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld8/b;->b()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Ld8/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ld8/b;->a(I)Lh8/b;

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

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0530

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Ld8/b$b;

    invoke-direct {p3}, Ld8/b$b;-><init>()V

    iget-object v0, p3, Ld8/b$b;->a:Ld8/b$a;

    const v1, 0x7f0b0cf5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ld8/b$a;->b:Landroid/widget/TextView;

    iget-object v0, p3, Ld8/b$b;->a:Ld8/b$a;

    const v1, 0x7f0b055d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ld8/b$a;->d:Landroid/widget/ImageView;

    iget-object v0, p3, Ld8/b$b;->a:Ld8/b$a;

    const v1, 0x7f0b0560

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ld8/b$a;->e:Landroid/widget/ImageView;

    iget-object v0, p3, Ld8/b$b;->a:Ld8/b$a;

    const v1, 0x7f0b09de

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v1, v0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v0, p3, Ld8/b$b;->a:Ld8/b$a;

    const v1, 0x7f0b0599

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Ld8/b$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p3, Ld8/b$b;->a:Ld8/b$a;

    const v1, 0x7f0b0561

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Ld8/b$a;->f:Landroid/view/View;

    iget-object v0, p3, Ld8/b$b;->a:Ld8/b$a;

    const v1, 0x7f0b0c59

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ld8/b$a;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ld8/b$b;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld8/b$b;

    iget-object p3, p3, Ld8/b$b;->a:Ld8/b$a;

    iget-object v0, p0, Ld8/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/b;

    invoke-virtual {p3, p1, p0}, Ld8/b$a;->b(Lh8/b;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-object p2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lh8/a;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    invoke-virtual {v0, p2}, Lh8/a;->l(Z)V

    if-eqz p2, :cond_3

    invoke-static {}, Lj8/p;->n()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lh8/a;->g()I

    move-result p2

    const/16 v1, 0x8

    if-eq p2, v1, :cond_2

    const/16 v1, 0x9

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Li8/c;->V()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_2
    invoke-static {}, Li8/c;->r()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    :goto_0
    invoke-virtual {v0, p1}, Lh8/a;->onClick(Landroid/view/View;)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lh8/a;->g()I

    move-result p1

    invoke-virtual {v0}, Lh8/a;->j()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/utils/a$o;->v(IZ)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "AdvancedSettingsAdapter"

    const-string p2, "Model can not be null and must be instance of AdvancedSettingsModel"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

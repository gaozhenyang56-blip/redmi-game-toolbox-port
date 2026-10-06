.class public Lcom/miui/optimizecenter/storage/view/PreferenceListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->e()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lab/g;",
            ">;",
            "Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lab/g;

    invoke-virtual {v0}, Lab/g;->f()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lab/f;->d(Landroid/content/Context;)Lab/f;

    move-result-object v1

    invoke-virtual {v0}, Lab/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lab/f;->a(Ljava/lang/String;)Lab/b;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->a(Lab/g;Lab/b;Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

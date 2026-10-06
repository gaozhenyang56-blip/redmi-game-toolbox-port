.class Lmiuix/nestedheader/widget/NestedHeaderLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->R(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    if-eqz p1, :cond_0

    invoke-static {v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->P(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->N(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->S(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->S(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$e;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$e;->e(Z)V

    :cond_1
    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->Q(Lmiuix/nestedheader/widget/NestedHeaderLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/k;)V
    .locals 6

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010590

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Ltm/b;->b:[I

    goto :goto_0

    :cond_0
    sget-object v1, Ltm/a;->b:[I

    :goto_0
    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v4}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->N(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lmiuix/view/k;->d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v0, Ltm/d;->a:[I

    goto :goto_1

    :cond_1
    sget-object v0, Ltm/c;->a:[I

    :goto_1
    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$b;->a:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {v3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->O(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result v3

    const/16 v4, 0x42

    if-eqz v3, :cond_2

    new-array v3, v2, [I

    const/4 v5, 0x0

    aget v1, v1, v5

    aput v1, v3, v5

    new-array v1, v2, [I

    aget v0, v0, v5

    aput v0, v1, v5

    invoke-virtual {p1, v3, v1, v4}, Lmiuix/view/k;->k([I[II)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1, v0, v4}, Lmiuix/view/k;->k([I[II)V

    :goto_2
    return-void
.end method

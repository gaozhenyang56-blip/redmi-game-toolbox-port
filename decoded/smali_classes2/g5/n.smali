.class public abstract Lg5/n;
.super Lg5/i;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lg5/j;

.field public c:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public d:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lg5/j;)V
    .locals 1

    invoke-direct {p0}, Lg5/i;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg5/n;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg5/n;->e:Z

    iput-object p1, p0, Lg5/n;->b:Lg5/j;

    return-void
.end method

.method public static synthetic c(Lg5/n;Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/n;->h(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method private synthetic h(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    invoke-virtual {p0}, Lg5/n;->e()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg5/n;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ll5/b;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lg5/m;

    invoke-direct {v1, p0, p1}, Lg5/m;-><init>(Lg5/n;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lq6/i;

    const v1, 0x7f0b0a5c

    invoke-virtual {v0, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b0a5d

    invoke-virtual {v0, v2}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lg5/n;->e:Z

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Lq6/i;->d()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lg5/n;->d:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v0, p0, Lg5/n;->c:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lg5/n;->e:Z

    if-nez v1, :cond_0

    const/16 v1, 0x4c

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lg5/n;->e:Z

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget v0, p0, Lg5/n;->d:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lg5/n;->e:Z

    if-nez v0, :cond_2

    const v0, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-boolean v0, p0, Lg5/n;->e:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected d()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lg5/n;->b:Lg5/j;

    instance-of v1, v0, Lg5/f;

    if-eqz v1, :cond_0

    check-cast v0, Lg5/f;

    invoke-virtual {v0}, Lg5/f;->d()Lf5/d;

    move-result-object v0

    iget-object v1, v0, Lf5/d;->b:Ljava/lang/String;

    iget-object v0, v0, Lf5/d;->c:Ljava/lang/String;

    invoke-static {v1, v0}, La8/a0;->n(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Li5/c;

    if-eqz v1, :cond_1

    check-cast v0, Li5/c;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Li5/c;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg5/n;->b:Lg5/j;

    instance-of v1, v0, Lg5/f;

    if-eqz v1, :cond_0

    check-cast v0, Lg5/f;

    invoke-virtual {v0}, Lg5/f;->d()Lf5/d;

    move-result-object v0

    iget-object v0, v0, Lf5/d;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Li5/c;

    if-eqz v1, :cond_1

    check-cast v0, Li5/c;

    invoke-virtual {v0}, Li5/c;->h()Li5/a;

    move-result-object v0

    iget-object v0, v0, Li5/a;->g:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract f(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected g()I
    .locals 2

    iget-object v0, p0, Lg5/n;->b:Lg5/j;

    instance-of v1, v0, Lg5/f;

    if-eqz v1, :cond_0

    check-cast v0, Lg5/f;

    invoke-virtual {v0}, Lg5/f;->d()Lf5/d;

    move-result-object v0

    iget v0, v0, Lf5/d;->a:I

    return v0

    :cond_0
    instance-of v0, v0, Li5/c;

    const/4 v0, -0x1

    return v0
.end method

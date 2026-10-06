.class public Ll8/c$c;
.super Landroidx/viewpager/widget/ViewPager$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lt5/i;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lt5/i;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$l;-><init>()V

    iput-object p1, p0, Ll8/c$c;->a:Lt5/i;

    iput-object p2, p0, Ll8/c$c;->b:Landroid/widget/TextView;

    iput-object p3, p0, Ll8/c$c;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 8

    iget-object v0, p0, Ll8/c$c;->a:Lt5/i;

    invoke-virtual {v0}, Lt5/i;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Ll8/c$c;->a:Lt5/i;

    invoke-virtual {v3, v2}, Lt5/i;->B(I)Lt5/i$b;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {v3}, Lt5/i;->z(Lt5/i$b;)Landroid/widget/ImageView;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_4

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    invoke-static {}, Ll8/c;->j()F

    move-result v7

    :goto_2
    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Ll8/c;->j()F

    move-result v6

    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {v3, v5}, Lt5/i;->E(Lt5/i$b;Z)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ll8/c$c;->a:Lt5/i;

    invoke-virtual {v0, p1}, Lt5/i;->j(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Ll8/c$c;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Ll8/c$c;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Ll8/c$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Ll8/c$c;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ll8/c$c;->a:Lt5/i;

    invoke-virtual {v0, p1}, Lt5/i;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "add_game_fake_pkg_name"

    :cond_8
    invoke-static {p1}, Lc7/c;->K(Ljava/lang/String;)V

    return-void
.end method

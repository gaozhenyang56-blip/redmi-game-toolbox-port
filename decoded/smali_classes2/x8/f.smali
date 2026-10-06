.class public final Lx8/f;
.super Lx8/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx8/c<",
        "Lb9/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lx8/c;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07083d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lx8/c;->i(F)V

    return-void
.end method

.method public static synthetic j(Lq6/i;Lb9/e$a;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lx8/f;->l(Lq6/i;Lb9/e$a;ILandroid/view/View;)V

    return-void
.end method

.method private static final l(Lq6/i;Lb9/e$a;ILandroid/view/View;)V
    .locals 1

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Le9/b;->a:Le9/b;

    invoke-virtual {p0}, Lq6/i;->d()Landroid/content/Context;

    move-result-object p0

    const-string v0, "holder.context"

    invoke-static {p0, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb9/e$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Le9/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb9/e$a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lb9/e$a;->c()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p2, p0, p1, p3}, Le9/a;->h(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0191

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lb9/e$a;

    invoke-virtual {p0, p1, p2, p3}, Lx8/f;->k(Lq6/i;Lb9/e$a;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lb9/e$a;

    invoke-virtual {p0, p1, p2}, Lx8/f;->m(Lb9/e$a;I)Z

    move-result p1

    return p1
.end method

.method public k(Lq6/i;Lb9/e$a;I)V
    .locals 3
    .param p1    # Lq6/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lb9/e$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const v0, 0x7f0b029e

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lb9/e$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0b0807

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lb9/e$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p2}, Lb9/e$a;->d()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0544

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v1, v2}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lx8/c;->g()Lrh/c;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lx4/o0;->h(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    if-eqz p3, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b63

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lx8/e;

    invoke-direct {v1, p1, p2, p3}, Lx8/e;-><init>(Lq6/i;Lb9/e$a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public m(Lb9/e$a;I)Z
    .locals 0
    .param p1    # Lb9/e$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.class public Lg5/d;
.super Lg5/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg5/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 3

    instance-of v0, p1, Ld5/d$b;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    check-cast p1, Ld5/d$b;

    iget-object v0, p1, Ld5/d$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Ld5/d$b;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lq6/i;

    if-eqz v0, :cond_1

    check-cast p1, Lq6/i;

    const v0, 0x7f0b0332

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ldb/i;->k(Landroid/view/View;I)V

    const v0, 0x7f0b0530

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Ldb/i;->k(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

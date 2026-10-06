.class public final Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mFloatTimeTitle"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->x0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;I)V

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->r0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/m;

    move-result-object p1

    invoke-virtual {p1}, Ljc/m;->G()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const-string p2, "mLayoutManager"

    if-nez p1, :cond_1

    invoke-static {p2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Try loading more info for {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->q0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "} ..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MIUIPrivacy-AppUsage2"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->s0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/m;

    move-result-object v0

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->q0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ljc/m;->A(Ljc/m;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/m;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljc/m;->H(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/e;

    move-result-object p1

    const-string p2, "mAdapter"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Ljc/e;->getItemCount()I

    move-result p1

    const-string v1, "mFloatTimeTitle"

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->k0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "mSpringLayout"

    invoke-static {p1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    const-string v3, "mLayoutManager"

    if-nez v2, :cond_4

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v0

    :cond_4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/e;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {p2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v4, v0

    :cond_5
    invoke-virtual {v4, v2}, Ljc/e;->l(I)Ljc/f;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v5}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v0

    :cond_6
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v6}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->e0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/e;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-static {p2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljc/e;->l(I)Ljc/f;

    move-result-object p2

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v6}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v0

    :cond_8
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-lez p3, :cond_d

    instance-of p2, p2, Ljc/k;

    if-eqz p2, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I

    move-result p3

    if-ge p2, p3, :cond_a

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v0

    :cond_9
    iget-object p3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I

    move-result p3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr p3, v2

    int-to-float p3, p3

    sub-float p3, p1, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setY(F)V

    :cond_a
    instance-of p2, v4, Ljc/k;

    if-eqz p2, :cond_11

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result p2

    if-gtz p2, :cond_11

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v0

    :cond_b
    invoke-virtual {v4}, Ljc/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_c

    :goto_1
    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v0, p2

    goto :goto_3

    :cond_d
    if-gez p3, :cond_11

    instance-of p2, p2, Ljc/k;

    if-eqz p2, :cond_11

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p3}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I

    move-result p3

    if-gt p2, p3, :cond_10

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_e

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v0

    :cond_e
    invoke-virtual {v4}, Ljc/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_f

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    move-object v0, p2

    :goto_2
    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->g0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I

    move-result p2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    sub-float/2addr p1, p2

    goto :goto_3

    :cond_10
    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$h;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_1

    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    :cond_11
    return-void
.end method

.class public final Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mFloatTimeTitle"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->p0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;I)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lx4/o0;->n()Lrh/d;

    move-result-object p1

    invoke-virtual {p1}, Lrh/d;->x()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->n0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)V

    invoke-static {}, Lx4/o0;->n()Lrh/d;

    move-result-object p2

    invoke-virtual {p2}, Lrh/d;->y()V

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/m;

    move-result-object p2

    invoke-virtual {p2}, Ljc/m;->F()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    const-string v2, "mLayoutManager"

    if-nez p2, :cond_3

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v1

    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    iget-object v3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {v3}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_5

    const-string p2, "MIUIPrivacy-AllUsage1"

    const-string v0, "Try loading more info ..."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/m;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p1, v1}, Ljc/m;->C(Ljc/m;ZIILjava/lang/Object;)V

    :cond_5
    :goto_0
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

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->f0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/e;

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

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;

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
    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->l0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Lmiuix/springback/view/SpringBackLayout;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "mSpringLayout"

    invoke-static {p1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {v2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    const-string v3, "mLayoutManager"

    if-nez v2, :cond_4

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v2, v0

    :cond_4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object v4, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {v4}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->f0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/e;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {p2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v4, v0

    :cond_5
    invoke-virtual {v4, v2}, Ljc/e;->l(I)Ljc/f;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {v5}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {v3}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v5, v0

    :cond_6
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {v6}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->f0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/e;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-static {p2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v6, v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljc/e;->l(I)Ljc/f;

    move-result-object p2

    iget-object v6, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {v6}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->j0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

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

    iget-object p3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p3}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)I

    move-result p3

    if-ge p2, p3, :cond_a

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v0

    :cond_9
    iget-object p3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p3}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)I

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

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v0

    :cond_b
    invoke-virtual {v4}, Ljc/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;

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

    iget-object p3, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p3}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)I

    move-result p3

    if-gt p2, p3, :cond_10

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_e

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p2, v0

    :cond_e
    invoke-virtual {v4}, Ljc/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_f

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    move-object v0, p2

    :goto_2
    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->h0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)I

    move-result p2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    sub-float/2addr p1, p2

    goto :goto_3

    :cond_10
    iget-object p2, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$f;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p2}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->i0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_1

    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    :cond_11
    return-void
.end method

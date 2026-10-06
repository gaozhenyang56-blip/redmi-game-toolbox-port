.class Lcom/miui/securityscan/MainFragment$u;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->s1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Z

.field final synthetic f:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel$FuncTopBannerScrollHolder;

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel$FuncTopBannerGlobalScrollHolder;

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "scMainActivity"

    const-string v0, "viewpager stop auto scroll"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    iget-object p1, p1, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewRvAdapter;->resetViewPager()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0, p1}, Lcom/miui/securityscan/MainFragment;->q0(Lcom/miui/securityscan/MainFragment;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {p2, p1}, Lcom/miui/securityscan/MainFragment;->s0(Lcom/miui/securityscan/MainFragment;Z)Z

    const/4 p1, 0x0

    :cond_2
    iput-boolean p1, p0, Lcom/miui/securityscan/MainFragment$u;->e:Z

    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {p2}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {p2}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {v1}, Lcom/miui/securityscan/MainFragment;->t0(Lcom/miui/securityscan/MainFragment;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {v2}, Lcom/miui/securityscan/MainFragment;->t0(Lcom/miui/securityscan/MainFragment;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    iget-object v3, v3, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v3, v0}, Lcom/miui/common/card/CardViewRvAdapter;->setDefaultStatShow(Z)V

    iget-object v3, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {v3}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {v4}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {v4}, Lcom/miui/securityscan/MainFragment;->n0(Lcom/miui/securityscan/MainFragment;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {v4}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/securityscan/MainFragment;->o0(Lcom/miui/securityscan/MainFragment;I)I

    :cond_1
    add-int v4, p2, v1

    if-ne v4, v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {v3}, Lcom/miui/securityscan/MainFragment;->n0(Lcom/miui/securityscan/MainFragment;)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-static {}, Lqf/c;->O()V

    :cond_2
    iget-boolean v2, p0, Lcom/miui/securityscan/MainFragment$u;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/miui/securityscan/MainFragment$u;->c:I

    if-ge v2, v1, :cond_3

    iget-object v2, p0, Lcom/miui/securityscan/MainFragment$u;->a:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/securityscan/MainFragment$u;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/miui/securityscan/MainFragment$u;->d:I

    add-int/lit8 v5, v4, -0x1

    if-le v2, v5, :cond_4

    iget-object v2, p0, Lcom/miui/securityscan/MainFragment$u;->b:Landroid/view/View;

    goto :goto_0

    :cond_4
    :goto_1
    iput v1, p0, Lcom/miui/securityscan/MainFragment$u;->c:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/miui/securityscan/MainFragment$u;->d:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/securityscan/MainFragment$u;->a:Landroid/view/View;

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$u;->b:Landroid/view/View;

    :cond_5
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->r0(Lcom/miui/securityscan/MainFragment;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-lez p3, :cond_6

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1, v3}, Lcom/miui/securityscan/MainFragment;->s0(Lcom/miui/securityscan/MainFragment;Z)Z

    invoke-static {}, Lqf/c;->O0()V

    :cond_6
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$u;->f:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->u0(Lcom/miui/securityscan/MainFragment;)V

    :cond_7
    :goto_2
    return-void
.end method

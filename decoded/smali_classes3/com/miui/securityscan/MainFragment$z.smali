.class Lcom/miui/securityscan/MainFragment$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "z"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/MainFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/miui/securityscan/scanner/a;

.field private d:Lzf/d;

.field private e:Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

.field private f:I

.field private g:Ljava/lang/Integer;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainFragment;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainFragment$z;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/securityscan/MainFragment$z;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$z;->e:Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    return-void
.end method

.method public b(Lcom/miui/securityscan/scanner/a;Lzf/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$z;->c:Lcom/miui/securityscan/scanner/a;

    iput-object p2, p0, Lcom/miui/securityscan/MainFragment$z;->d:Lzf/d;

    return-void
.end method

.method public c(Lzf/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$z;->d:Lzf/d;

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/MainFragment$z;->f:I

    return-void
.end method

.method public e(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$z;->g:Ljava/lang/Integer;

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainFragment$z;->h:Z

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/securityscan/MainFragment$z;->b:I

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v1, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v1

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/common/card/models/CommonlyUsedFunctionCardTitleModel;

    if-eqz v5, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eq v2, v3, :cond_a

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    const/4 v1, 0x7

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(II)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v1, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v1}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v1

    move v2, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/miui/securityscan/MainFragment$z;->e:Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eq v2, v3, :cond_a

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->n:Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainFragment;->q0(Lcom/miui/securityscan/MainFragment;Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->D0:Lna/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Lna/a;->c(Landroid/app/Activity;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->c3()I

    move-result v0

    if-lez v0, :cond_a

    iget-boolean v1, p0, Lcom/miui/securityscan/MainFragment$z;->h:Z

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcg/a;->a(I)V

    goto/16 :goto_4

    :pswitch_5
    iput-boolean v5, v0, Lcom/miui/securityscan/MainFragment;->b:Z

    iget-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->i0:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->h0:Z

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->w0:Ljava/util/List;

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_6
    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->i1(Lcom/miui/securityscan/MainFragment;)Lrf/b;

    move-result-object v1

    iget-boolean v1, v1, Lrf/b;->b:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$z;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainFragment;->j1(Lcom/miui/securityscan/MainFragment;I)V

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/MainFragment$z;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lwf/a;->setScoreText(I)V

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/MainFragment$z;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lwf/a;->setResultScoreText(I)V

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->m1(Lcom/miui/securityscan/MainFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/securityscan/MainFragment$z;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lwf/a;->f(II)V

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->m1(Lcom/miui/securityscan/MainFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/securityscan/MainFragment$z;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lwf/a;->q(II)V

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->m1(Lcom/miui/securityscan/MainFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/securityscan/MainFragment$z;->g:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lwf/a;->k(II)V

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->T2()V

    goto/16 :goto_4

    :pswitch_7
    iget v0, v0, Lcom/miui/securityscan/MainFragment;->B:I

    if-eq v0, v5, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/miui/securityscan/e;

    invoke-direct {v2, v0, v1}, Lcom/miui/securityscan/e;-><init>(J)V

    invoke-static {v2}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->H(J)V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->y2()I

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {v0, v5}, Lcom/miui/securityscan/MainFragment;->z2(Z)I

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->g1(Lcom/miui/securityscan/MainFragment;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->K1()V

    goto/16 :goto_4

    :pswitch_a
    iput-boolean v5, v0, Lcom/miui/securityscan/MainFragment;->g0:Z

    goto/16 :goto_4

    :pswitch_b
    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    invoke-interface {v1}, Lwf/a;->stopPlay()V

    sget-object v1, Lzf/b;->a:Lzf/b;

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainFragment;->d1(Lcom/miui/securityscan/MainFragment;Lzf/b;)Lzf/b;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->e1(Lcom/miui/securityscan/MainFragment;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->e1(Lcom/miui/securityscan/MainFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, v0, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-virtual {v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->c()V

    iput v4, v0, Lcom/miui/securityscan/MainFragment;->B:I

    const/4 v1, 0x0

    xor-int/2addr v1, v5

    invoke-virtual {v0, v1, v4}, Lcom/miui/securityscan/MainFragment;->l2(ZZ)V

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->E0(Lcom/miui/securityscan/MainFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f121601

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/MainFragment;->f1(Lcom/miui/securityscan/MainFragment;J)J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/MainFragment;->I0(Lcom/miui/securityscan/MainFragment;J)J

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainFragment;->q0(Lcom/miui/securityscan/MainFragment;Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_8

    return-void

    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->w0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/MainSpringBackLayout;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Leg/t;->i(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v1

    invoke-interface {v1}, Lwf/a;->d()V

    const v1, 0x7f120c9f

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lwf/a;->setStatusTopText(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lwf/a;->setStatusBottomText(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_c
    iget-object v1, v0, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->c1(Lcom/miui/securityscan/MainFragment;)I

    move-result v2

    iget-object v3, v0, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->c1(Lcom/miui/securityscan/MainFragment;)I

    move-result v0

    iget v4, p0, Lcom/miui/securityscan/MainFragment$z;->f:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_4

    :pswitch_d
    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->p0(Lcom/miui/securityscan/MainFragment;)Lcom/miui/common/customview/HpAutoPasteRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_3

    :pswitch_e
    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$z;->d:Lzf/d;

    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->a(Lzf/d;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$z;->d:Lzf/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/MainFragment$z;->d:Lzf/d;

    invoke-static {v2, v3}, Leg/q;->b(Landroid/content/Context;Lzf/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzf/d;->b(Ljava/lang/String;)V

    const-string v1, "scMainActivity"

    const-string v2, "PopOptimizeEntryListener  onFinishScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->w2()V

    goto :goto_4

    :pswitch_f
    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$z;->d:Lzf/d;

    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/miui/securityscan/MainFragment$z;->c:Lcom/miui/securityscan/scanner/a;

    iget-object v3, v3, Lcom/miui/securityscan/scanner/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/miui/securityscan/ui/main/OptimizingBar;->e(Lzf/d;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->m:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$z;->d:Lzf/d;

    iget-object v2, p0, Lcom/miui/securityscan/MainFragment$z;->c:Lcom/miui/securityscan/scanner/a;

    iget v3, v2, Lcom/miui/securityscan/scanner/a;->a:I

    mul-int/lit8 v3, v3, 0x64

    iget v2, v2, Lcom/miui/securityscan/scanner/a;->b:I

    div-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/miui/securityscan/ui/main/OptimizingBar;->d(Lzf/d;I)V

    goto :goto_4

    :pswitch_10
    iput-boolean v5, v0, Lcom/miui/securityscan/MainFragment;->i0:Z

    :goto_2
    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->L1()V

    goto :goto_4

    :pswitch_11
    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->J0(Lcom/miui/securityscan/MainFragment;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->b1(Lcom/miui/securityscan/MainFragment;)V

    iput-boolean v5, v0, Lcom/miui/securityscan/MainFragment;->f0:Z

    goto :goto_4

    :goto_3
    :pswitch_12
    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->a1(Lcom/miui/securityscan/MainFragment;)V

    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

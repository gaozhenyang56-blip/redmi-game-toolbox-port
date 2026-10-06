.class public Lcom/miui/securityscan/OptimizeAndResultActivity;
.super Lcom/miui/securityscan/BaseAdvActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lwf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/OptimizeAndResultActivity$t;,
        Lcom/miui/securityscan/OptimizeAndResultActivity$q;,
        Lcom/miui/securityscan/OptimizeAndResultActivity$s;,
        Lcom/miui/securityscan/OptimizeAndResultActivity$u;,
        Lcom/miui/securityscan/OptimizeAndResultActivity$r;
    }
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:J

.field private D:J

.field private E:I

.field private F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/Object;

.field private O:Lwf/a;

.field private P:I

.field private Q:Z

.field private R:Lcom/miui/securityscan/OptimizeAndResultActivity$r;

.field private b:Lcom/miui/securityscan/ui/main/OptimizingBar;

.field private c:Lcom/miui/common/customview/ActionBarContainer;

.field private d:Landroid/view/ViewStub;

.field private e:Landroid/view/ViewStub;

.field private f:Landroid/view/View;

.field private g:Lcom/miui/common/customview/AutoPasteListView;

.field public h:Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;

.field public i:Lcom/miui/common/card/CardViewAdapter;

.field public j:Lzf/h;

.field private k:Lcom/miui/securityscan/scanner/f;

.field private l:Lcom/miui/securityscan/scanner/e;

.field private m:Lrf/b;

.field private n:Lrf/f;

.field private o:Lcom/miui/securityscan/scanner/j;

.field private p:Lrf/j;

.field private q:Lbg/e;

.field private r:Lsf/j;

.field private s:Lsf/k;

.field private t:Lbg/d;

.field private u:Lcom/miui/securityscan/scanner/h;

.field private v:Landroid/animation/AnimatorSet;

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lna/a;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/BaseAdvActivity;-><init>()V

    new-instance v0, Lzf/h;

    invoke-direct {v0, p0}, Lzf/h;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->N:Ljava/lang/Object;

    iput v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    return-void
.end method

.method private A0()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->D:J

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->T0()V

    iget-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->Q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f071671

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v2

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/securityscan/OptimizeAndResultActivity$m;

    invoke-direct {v3, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$m;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/miui/securityscan/OptimizeAndResultActivity$n;

    invoke-direct {v3, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$n;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0}, Lwf/a;->t()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leg/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v3, v0}, Lwf/a;->setStatusTopText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v3, v0}, Lwf/a;->setStatusBottomText(Ljava/lang/String;)V

    iput v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->g:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->B0()V

    invoke-static {}, Lqf/c;->q0()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->h:Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;

    invoke-static {v0}, Leg/t;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->h:Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->h:Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/NativeInterstitialAdLayout;->a(I)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$o;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$o;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$p;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$p;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    const-wide/16 v2, 0x898

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private B0()V
    .locals 11

    invoke-static {}, Lsf/c;->i()V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->M:Ljava/lang/String;

    invoke-static {v0}, Lsf/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v7, v5, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v7}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Lcom/miui/common/card/models/TitleCardModel;->getPosition()I

    move-result v9

    if-eq v9, v6, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Lcom/miui/common/card/models/TitleCardModel;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v7, v5, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v7, :cond_2

    move-object v7, v5

    check-cast v7, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v7}, Lcom/miui/common/card/models/AdvCardModel;->getPosition()I

    move-result v8

    if-eq v8, v6, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/miui/common/card/models/AdvCardModel;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v5, v5, Lcom/miui/common/card/models/PlaceHolderCardModel;

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_3
    if-eq v4, v6, :cond_d

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->l:Lcom/miui/securityscan/scanner/e;

    invoke-static {v1, v3}, Lsf/c;->p(Lcom/miui/securityscan/scanner/k$i;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "advMap size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",  models.size() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",  max size is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OptimizeAndResultActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    :goto_4
    if-ge v8, v5, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/models/BaseCardModel;

    if-eqz v9, :cond_7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v10, v9, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v10, :cond_6

    check-cast v9, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v9}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    new-instance v9, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v9}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v10}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advMap is not empty when for() finished, the map size is  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v3, v2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v3, :cond_a

    check-cast v2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    new-instance v2, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v2}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->l:Lcom/miui/securityscan/scanner/e;

    invoke-static {v2, v1}, Lsf/c;->p(Lcom/miui/securityscan/scanner/k$i;Z)Ljava/util/ArrayList;

    move-result-object v6

    :cond_c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-static {v0}, Lsf/c;->f(Ljava/util/ArrayList;)V

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->l:Lcom/miui/securityscan/scanner/e;

    invoke-static {v0, v1}, Lsf/c;->e(Lcom/miui/securityscan/scanner/k$i;Z)V

    :goto_7
    invoke-static {}, Lsf/c;->a()V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_e

    invoke-static {}, Lsf/c;->q()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lsf/c;->h(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/common/card/CardViewAdapter;->setModelList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_e
    return-void
.end method

.method private E0()V
    .locals 3

    new-instance v0, Lcom/miui/common/card/CardViewAdapter;

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/common/card/CardViewAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    iget-boolean v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->Q:Z

    invoke-virtual {v0, v1}, Lcom/miui/common/card/CardViewAdapter;->setFoldDevice(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    iget v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    invoke-virtual {v0, v1}, Lcom/miui/common/card/CardViewAdapter;->setScreenSize(I)V

    const v0, 0x7f0b0a28

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->d:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$j;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$j;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method private F0()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/f;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/f;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->k:Lcom/miui/securityscan/scanner/f;

    new-instance v0, Lcom/miui/securityscan/scanner/e;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/e;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->l:Lcom/miui/securityscan/scanner/e;

    new-instance v0, Lrf/b;

    invoke-direct {v0, p0}, Lrf/b;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->m:Lrf/b;

    new-instance v0, Lrf/f;

    invoke-direct {v0, p0}, Lrf/f;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->n:Lrf/f;

    new-instance v0, Lcom/miui/securityscan/scanner/j;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/j;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->o:Lcom/miui/securityscan/scanner/j;

    new-instance v0, Lcom/miui/securityscan/scanner/h;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/h;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->u:Lcom/miui/securityscan/scanner/h;

    new-instance v0, Lrf/j;

    invoke-direct {v0, p0}, Lrf/j;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->p:Lrf/j;

    new-instance v0, Lsf/j;

    invoke-direct {v0, p0}, Lsf/j;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->r:Lsf/j;

    new-instance v0, Lsf/k;

    invoke-direct {v0, p0}, Lsf/k;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->s:Lsf/k;

    return-void
.end method

.method private G0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->e:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f0b058f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->e:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$k;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$k;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->e:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method private H0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0}, Lwf/a;->j()V

    return-void
.end method

.method private I0()Z
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private K0()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/u0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lx9/d;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    check-cast v0, Lx9/d;

    invoke-virtual {v0, p0}, Lx9/b;->e(Landroidx/lifecycle/v;)V

    new-instance v0, Lbg/e;

    invoke-direct {v0, p0}, Lbg/e;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->q:Lbg/e;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private L0()V
    .locals 3

    new-instance v0, Lbg/d;

    invoke-direct {v0, p0}, Lbg/d;-><init>(Lwf/b;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->t:Lbg/d;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private N0(Lzf/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshOptimizingUi  optimizeItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzf/d;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptimizeAndResultActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lzf/d;->d:Lzf/d;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    new-instance v1, Lzf/c;

    invoke-direct {v1, p0}, Lzf/c;-><init>(Lwf/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->g(Lzf/d;Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    const v1, 0x7f120faa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->e(Lzf/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->g(Lzf/d;Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->u:Lcom/miui/securityscan/scanner/h;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/h;->b(Ljava/lang/ref/WeakReference;)V

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->u:Lcom/miui/securityscan/scanner/h;

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/scanner/k;->r(Lzf/d;Lcom/miui/securityscan/scanner/k$l;)V

    :goto_0
    return-void
.end method

.method private P0()V
    .locals 3

    new-instance v0, Lcom/miui/securityscan/OptimizeAndResultActivity$r;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$r;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->R:Lcom/miui/securityscan/OptimizeAndResultActivity$r;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_mi_ime_opened"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->R:Lcom/miui/securityscan/OptimizeAndResultActivity$r;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private S0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0}, Lwf/a;->e()V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->H0()V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->G0()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->B:J

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->k:Lcom/miui/securityscan/scanner/f;

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->n:Lrf/f;

    iget-object v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->m:Lrf/b;

    iget-object v4, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->o:Lcom/miui/securityscan/scanner/j;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/securityscan/scanner/k;->w(Lcom/miui/securityscan/scanner/k$k;Lrf/i;Lrf/c;Lcom/miui/securityscan/scanner/k$m;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->M0()V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->K0()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->L0()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->C:J

    return-void
.end method

.method private T0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0}, Lwf/a;->u()V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->v:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->y0(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->f:Landroid/view/View;

    invoke-static {v0, v1, v2}, Leg/t;->k(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->v:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private V0()V
    .locals 3

    iget v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->c:Lcom/miui/common/customview/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ActionBarContainer;->setIsShowSecondTitle(Z)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->c:Lcom/miui/common/customview/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/common/customview/ActionBarContainer;->b()V

    :goto_1
    return-void
.end method

.method private W0()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/OptimizeAndResultActivity$s;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$s;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic i0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->f:Landroid/view/View;

    return-object p0
.end method

.method private init()V
    .locals 4

    const v0, 0x7f0b083b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-static {}, Lx4/a0;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e02c8

    goto :goto_0

    :cond_0
    const v1, 0x7f0e02c7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->Q:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/k;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lef/x;->p(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v0

    :goto_1
    invoke-static {}, Lpf/g;->d()I

    move-result v1

    iput v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->A:I

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v2, v1, v0}, Lwf/a;->k(II)V

    const v1, 0x7f0b0841

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/ui/main/OptimizingBar;

    iput-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    invoke-virtual {v1, v3}, Lcom/miui/securityscan/ui/main/OptimizingBar;->b(Landroid/os/Handler;)V

    const v1, 0x7f0b0014

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/common/customview/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->c:Lcom/miui/common/customview/ActionBarContainer;

    const v3, 0x7f12020e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/common/customview/ActionBarContainer;->setTitle(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->Q:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->c:Lcom/miui/common/customview/ActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/miui/common/customview/ActionBarContainer;->setIsShowSecondTitle(Z)V

    :cond_3
    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->c:Lcom/miui/common/customview/ActionBarContainer;

    new-instance v2, Lcom/miui/securityscan/OptimizeAndResultActivity$h;

    invoke-direct {v2, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$h;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/common/customview/ActionBarContainer;->setActionBarEventListener(Lcom/miui/common/customview/ActionBarContainer$a;)V

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v1, v0}, Lwf/a;->setScoreText(I)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    const v1, 0x7f121607

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lwf/a;->setStatusTopText(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->x:Ljava/util/List;

    return-void
.end method

.method static synthetic j0(Lcom/miui/securityscan/OptimizeAndResultActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic k0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lrf/j;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->p:Lrf/j;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result p0

    return p0
.end method

.method static synthetic m0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lna/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->y:Lna/a;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/securityscan/ui/main/OptimizingBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/securityscan/OptimizeAndResultActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->A:I

    return p0
.end method

.method static synthetic p0(Lcom/miui/securityscan/OptimizeAndResultActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->E:I

    return p0
.end method

.method static synthetic q0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/common/customview/AutoPasteListView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->g:Lcom/miui/common/customview/AutoPasteListView;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/securityscan/OptimizeAndResultActivity;Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->g:Lcom/miui/common/customview/AutoPasteListView;

    return-object p1
.end method

.method static synthetic s0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->F:Z

    return p0
.end method

.method static synthetic t0(Lcom/miui/securityscan/OptimizeAndResultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->F:Z

    return p1
.end method

.method static synthetic u0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lwf/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    return-object p0
.end method

.method static synthetic v0(Lcom/miui/securityscan/OptimizeAndResultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->E0()V

    return-void
.end method

.method static synthetic w0(Lcom/miui/securityscan/OptimizeAndResultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->A0()V

    return-void
.end method

.method static synthetic x0(Lcom/miui/securityscan/OptimizeAndResultActivity;)Lcom/miui/common/customview/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->c:Lcom/miui/common/customview/ActionBarContainer;

    return-object p0
.end method

.method private y0(Landroid/animation/AnimatorSet;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public C0()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->G:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->J:Z

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0}, Lwf/a;->stopPlay()V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0}, Lwf/a;->p()V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$l;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$l;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public D0(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_2

    instance-of v1, p1, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->isSafe()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    :cond_0
    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->O0()I

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Leg/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0, p1}, Lwf/a;->setStatusTopText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0, p1}, Lwf/a;->setStatusBottomText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-static {p0}, Leg/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lwf/a;->setActionButtonText(Ljava/lang/String;)V

    return-void
.end method

.method public E(Lna/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->y:Lna/a;

    :cond_0
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-static {v0, p1}, Lsf/c;->r(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public J0()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->y:Lna/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lna/a;->a()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public L(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    sget-object v1, Lzf/d;->d:Lzf/d;

    invoke-virtual {v0, v1, p1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->d(Lzf/d;I)V

    return-void
.end method

.method public M()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    sget-object v1, Lzf/d;->d:Lzf/d;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->a(Lzf/d;)V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v1}, Leg/q;->b(Landroid/content/Context;Lzf/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzf/d;->b(Ljava/lang/String;)V

    const-string v0, "OptimizeAndResultActivity"

    const-string v1, "ClearAccelerationListener  onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->M0()V

    return-void
.end method

.method public M0()V
    .locals 5

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/k;->o()Lzf/d;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "refreshOptimizingUi"

    const-string v1, "refreshOptimizingUi  optimizeItem == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->B:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->B:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OptimizeTime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Lqf/c;->S(J)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0}, Lwf/a;->getScoreText()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lqf/c;->R(J)V

    new-instance v0, Lcom/miui/securityscan/OptimizeAndResultActivity$u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/securityscan/OptimizeAndResultActivity$u;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity$h;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v1

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    iget v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->A:I

    invoke-interface {v2, v3, v1}, Lwf/a;->r(II)V

    invoke-static {p0, v1}, Lef/x;->j0(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->k()I

    move-result v2

    invoke-static {p0, v2}, Lef/x;->c0(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->U0(I)V

    const v1, 0x7f120d85

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->h()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lsm/a;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lzf/e;

    invoke-direct {v1, v0, v3}, Lzf/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v0

    sget-object v2, Lzf/f$a;->b:Lzf/f$a;

    const-string v3, "CLEAN_UNUSED_MEMORY"

    invoke-virtual {v0, v2, v3, v1}, Lzf/f;->d(Lzf/f$a;Ljava/lang/String;Lzf/e;)V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$i;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$i;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->N0(Lzf/d;)V

    :goto_0
    return-void
.end method

.method public N(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/securityscan/BaseAdvActivity;->e0(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;II)V

    return-void
.end method

.method public O0()I
    .locals 3

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    iget v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->A:I

    invoke-interface {v1, v2}, Lwf/a;->s(I)I

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->U0(I)V

    return v0
.end method

.method public P()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$d;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$d;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Q0(Lwf/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    return-void
.end method

.method public R(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public R0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->M:Ljava/lang/String;

    return-void
.end method

.method public U()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->x:Ljava/util/List;

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->k()I

    move-result v0

    const/16 v1, 0x64

    rsub-int/lit8 v0, v0, 0x64

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->x:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v3}, Lwf/a;->getScoreText()I

    move-result v3

    if-ne v2, v1, :cond_1

    if-ge v3, v1, :cond_1

    move v2, v3

    :cond_1
    sub-int/2addr v0, v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    div-int/2addr v0, v3

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Lcom/miui/securityscan/OptimizeAndResultActivity$q;

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/OptimizeAndResultActivity$q;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public U0(I)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->L:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->W0()V

    :cond_0
    return-void
.end method

.method public W(Lzf/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/OptimizeAndResultActivity$c;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;Lzf/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public X0(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v0, Lcom/miui/common/card/models/ScanResultTopCardModel;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071a38

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->Q:Z

    if-eqz v3, :cond_3

    iget v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a39

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a3a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_3
    add-int/2addr v2, p1

    check-cast v0, Lcom/miui/common/card/models/ScanResultTopCardModel;

    invoke-virtual {v0, v2}, Lcom/miui/common/card/models/ScanResultTopCardModel;->setHeight(I)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a3b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p1

    check-cast v0, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ScanResultTopCardLiteModel;->setHeight(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method public Y(Lsf/d;)V
    .locals 2

    invoke-virtual {p1}, Lsf/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lsf/d;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpf/g;->G(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/scanner/ScoreManager;->D(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lpf/g;->G(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public Y0()I
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v0}, Lwf/a;->getScoreText()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->B0()V

    invoke-virtual {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->O0()I

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0}, Leg/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v2, v1}, Lwf/a;->setStatusTopText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v2, v1}, Lwf/a;->setStatusBottomText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    invoke-interface {v1}, Lwf/a;->getScoreText()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$e;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$e;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/miui/securityscan/model/AbsModel;->optimize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->z0()V

    :cond_0
    return-void
.end method

.method public f(Lcom/miui/securityscan/model/GroupModel;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/miui/securityscan/model/GroupModel;->optimize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public f0(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/common/card/models/BaseCardModel;",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_a

    iget-object p3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p3, p1}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    iget-object p3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p3}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p3}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    if-eqz p3, :cond_a

    instance-of v0, p1, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/TitleCardModel;->getId()J

    move-result-wide v2

    move-object v4, v1

    check-cast v4, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v4}, Lcom/miui/common/card/models/TitleCardModel;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_2
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    if-eqz p2, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_8
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_a
    return-void
.end method

.method public g0(Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2, p1}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    iget-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p2}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    instance-of v0, p1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/miui/common/card/models/AdvCardModel;

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move-object v0, v1

    :cond_4
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->w:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    :cond_5
    return-void
.end method

.method public h()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$f;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$f;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isUninstalledDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(Lcom/miui/securityscan/scanner/a;Lzf/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/securityscan/OptimizeAndResultActivity$b;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;Lzf/d;Lcom/miui/securityscan/scanner/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onActivityCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e02cb

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->init()V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->F0()V

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->S0()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->r:Lsf/j;

    invoke-virtual {v0, v1}, Lsf/h;->f(Lsf/h$b;)V

    invoke-static {p1}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->s:Lsf/k;

    invoke-virtual {p1, v0}, Lsf/e;->l(Lsf/e$c;)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityDestroy()V

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->q:Lbg/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->t:Lbg/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->r:Lsf/j;

    invoke-virtual {v1, v2}, Lsf/h;->g(Lsf/h$b;)V

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->s:Lsf/k;

    invoke-virtual {v0, v1}, Lsf/e;->p(Lsf/e$c;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0x67

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_4

    const-string p1, "unClearedCacheSize"

    const-wide/16 v3, -0x1

    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->f:Landroid/view/View;

    if-eqz p2, :cond_4

    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    const-string p2, "isCleanCanceled"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->f:Landroid/view/View;

    if-eqz p1, :cond_4

    const-wide/16 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/securityscan/scanner/ScoreManager;->O(J)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->f:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_1
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->p:Lrf/j;

    iput-boolean v2, p1, Lrf/j;->b:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->p:Lrf/j;

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/scanner/k;->z(Lrf/i;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onActivityResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->L:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->D:J

    iget v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lqf/c;->q0()V

    :cond_0
    iget-boolean v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->K:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->W0()V

    :cond_1
    iput-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->K:Z

    :cond_2
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->L:Z

    iget v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    if-ne v1, v0, :cond_1

    iget-wide v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->D:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->D:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lqf/c;->g0(J)V

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lqf/c;->T(J)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01a4

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0a50

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/securityscan/ui/settings/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f120097

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":miui:starting_window_label"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "securitysettings"

    invoke-static {p1}, Lqf/c;->M(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->Q:Z

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iget v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->V0()V

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->P:I

    invoke-virtual {p1, v0}, Lcom/miui/common/card/CardViewAdapter;->setScreenSize(I)V

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0, p0, p1}, Lcom/miui/common/base/e;->c(Lcom/miui/common/base/BaseActivity;Landroid/os/Bundle;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->P0()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/securityscan/BaseAdvActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->d()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->R:Lcom/miui/securityscan/OptimizeAndResultActivity$r;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    int-to-float p1, p1

    sget v0, Ltm/e;->d:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->E:I

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->b:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->E:I

    invoke-virtual {p1, v0, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->f(Landroid/content/res/Configuration;I)V

    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->O:Lwf/a;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->E:I

    invoke-interface {p1, v0}, Lwf/a;->setResultStatusTextPadding(I)V

    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->K:Z

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/securityscan/scanner/ScoreManager;->S(Landroid/content/Context;)V

    invoke-static {}, Lpf/g;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lpf/g;->F(Z)V

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->p:Lrf/j;

    iput-boolean v0, v1, Lrf/j;->b:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->p:Lrf/j;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/k;->z(Lrf/i;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->e()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->g()V

    return-void
.end method

.method public s(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v1, Lcom/miui/securityscan/OptimizeAndResultActivity$g;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/OptimizeAndResultActivity$g;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public z(Landroid/os/Message;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_3

    const/16 p1, 0x6a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x6b

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->i:Lcom/miui/common/card/CardViewAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->O0()I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/securityscan/OptimizeAndResultActivity;->z0()V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/OptimizeAndResultActivity;->D0(Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->p:Lrf/j;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lrf/j;->b:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->p:Lrf/j;

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/scanner/k;->z(Lrf/i;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public z0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->N:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->C:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x190

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->z:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->I:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->I:Z

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->j:Lzf/h;

    new-instance v3, Lcom/miui/securityscan/OptimizeAndResultActivity$a;

    invoke-direct {v3, p0}, Lcom/miui/securityscan/OptimizeAndResultActivity$a;-><init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/k;->m()V

    iget-object v1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity;->m:Lrf/b;

    iput-boolean v2, v1, Lrf/b;->b:Z

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

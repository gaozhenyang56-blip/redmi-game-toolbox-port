.class public Lcom/miui/firstaidkit/FirstAidKitActivity;
.super Lcom/miui/securityscan/BaseAdvActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/firstaidkit/FirstAidKitActivity$h;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$k;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$b;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$f;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$d;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$i;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$j;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$g;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$c;,
        Lcom/miui/firstaidkit/FirstAidKitActivity$e;
    }
.end annotation


# instance fields
.field private A:I

.field public B:Ljava/lang/String;

.field private C:Z

.field public b:Lo5/b;

.field private c:Lcom/miui/firstaidkit/a;

.field private d:Lcom/miui/firstaidkit/ui/ProgressLayout;

.field private e:Lcom/miui/common/customview/AutoPasteListView;

.field public f:Lcom/miui/common/card/CardViewAdapter;

.field private g:Landroid/view/View;

.field private h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

.field private i:I

.field private j:I

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/miui/common/customview/ActionBarContainer;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo5/e;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Z

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lr5/a;

.field private u:Lo5/c;

.field private v:Lo5/a;

.field private w:Lw9/b;

.field private x:Landroid/animation/AnimatorSet;

.field private y:Landroid/animation/AnimatorSet;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/BaseAdvActivity;-><init>()V

    new-instance v0, Lo5/b;

    invoke-direct {v0, p0}, Lo5/b;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->b:Lo5/b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->p:Ljava/lang/Object;

    return-void
.end method

.method private B0(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->n:Lcom/miui/common/customview/ActionBarContainer;

    iget-boolean v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->C:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ActionBarContainer;->setIsShowSecondTitle(Z)V

    return-void
.end method

.method private C0()V
    .locals 11

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    invoke-virtual {v0}, Lcom/miui/common/ui/a;->d()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    invoke-virtual {v0}, Lcom/miui/common/ui/a;->b()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3e428f5c    # 0.19f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v5, "alpha"

    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x190

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->g:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->m:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->g:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->k:Landroid/widget/ImageView;

    const v9, 0x3fdae148    # 1.71f

    if-eqz v3, :cond_0

    invoke-virtual {v3, v9}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->k:Landroid/widget/ImageView;

    iget v10, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->A:I

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->l:Landroid/widget/ImageView;

    iget v10, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->A:I

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Llb/a;->h()V

    new-instance v3, Lcom/miui/firstaidkit/FirstAidKitActivity$k;

    invoke-direct {v3, p0}, Lcom/miui/firstaidkit/FirstAidKitActivity$k;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    invoke-static {v3}, Llb/a;->d(Llb/a$d;)V

    const v3, 0x3f147ae1    # 0.58f

    invoke-static {v4, v3}, Llb/a;->g(FF)V

    new-instance v3, Lcom/miui/firstaidkit/FirstAidKitActivity$h;

    invoke-direct {v3, p0, v9}, Lcom/miui/firstaidkit/FirstAidKitActivity$h;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;F)V

    invoke-static {v3}, Llb/a;->c(Llb/a$c;)V

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->g:Landroid/view/View;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->m:Landroid/widget/TextView;

    new-array v6, v2, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->x:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v8

    const/4 v1, 0x1

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->C:Z

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private D0()V
    .locals 11

    invoke-static {}, Lsf/c;->j()V

    invoke-static {}, Lsf/c;->d()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->s:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v6, v4, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v6}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Lcom/miui/common/card/models/TitleCardModel;->getPosition()I

    move-result v8

    if-eq v8, v5, :cond_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Lcom/miui/common/card/models/TitleCardModel;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v6, v4, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v6}, Lcom/miui/common/card/models/AdvCardModel;->getPosition()I

    move-result v7

    if-eq v7, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/miui/common/card/models/AdvCardModel;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v6, v4, Lcom/miui/common/card/models/LineCardModel;

    if-eqz v6, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v4, v4, Lcom/miui/common/card/models/PlaceHolderCardModel;

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v5

    :goto_4
    if-eq v3, v5, :cond_f

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {p0}, Lsf/c;->m(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "advMap size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",  models.size() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",  max size is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FirstAidKitActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_5
    if-ge v8, v5, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/models/BaseCardModel;

    if-eqz v9, :cond_9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v10, v9, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v10, :cond_8

    check-cast v9, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v9}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advMap is not empty when for() finished, the map size is  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v4, v2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v4, :cond_c

    check-cast v2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_d
    invoke-static {p0}, Lsf/c;->m(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    :cond_e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v3, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-static {v0}, Lsf/c;->g(Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_f
    invoke-static {p0}, Lsf/c;->c(Landroid/content/Context;)V

    :goto_8
    invoke-static {}, Lsf/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsf/c;->h(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0}, Lcom/miui/common/card/CardViewAdapter;->setModelList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_10
    return-void
.end method

.method private F0()V
    .locals 2

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->n:Lcom/miui/common/customview/ActionBarContainer;

    const v1, 0x7f12088a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ActionBarContainer;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->K0()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->n:Lcom/miui/common/customview/ActionBarContainer;

    new-instance v1, Lcom/miui/firstaidkit/FirstAidKitActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/FirstAidKitActivity$a;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/ActionBarContainer;->setActionBarEventListener(Lcom/miui/common/customview/ActionBarContainer$a;)V

    return-void
.end method

.method private G0()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->z:I

    return-void
.end method

.method private H0()V
    .locals 3

    new-instance v0, Lr5/a;

    invoke-direct {v0, p0}, Lr5/a;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->t:Lr5/a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private K0()V
    .locals 4

    invoke-static {}, Lx4/t;->h()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lx4/t;->B(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->n:Lcom/miui/common/customview/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/miui/common/customview/ActionBarContainer;->setIsShowSecondTitle(Z)V

    const v0, 0x7f070d7d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f070da5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070d96

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->L0(III)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x9

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->n:Lcom/miui/common/customview/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/miui/common/customview/ActionBarContainer;->setIsShowSecondTitle(Z)V

    const v0, 0x7f070d7e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f070da6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070d97

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->B0(Landroid/content/res/Configuration;)V

    const v0, 0x7f070d7c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v2, 0x7f070d72

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070d78

    goto :goto_0

    :goto_1
    return-void
.end method

.method private L0(III)V
    .locals 0

    iput p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->A:I

    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->d:Lcom/miui/firstaidkit/ui/ProgressLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->d:Lcom/miui/firstaidkit/ui/ProgressLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private M0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1208a6

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1208a5

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/firstaidkit/FirstAidKitActivity$i;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/FirstAidKitActivity$i;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v2, 0x7f120f48

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private O0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->q:Z

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->j:I

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->c:Lcom/miui/firstaidkit/a;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->b:Lo5/b;

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/a;->k(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->I0()V

    return-void
.end method

.method private P0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->q:Z

    if-nez v1, :cond_0

    const-string v1, "FirstAidKitActivity"

    const-string v2, "stopScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->A0()V

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->c:Lcom/miui/firstaidkit/a;

    invoke-virtual {v1}, Lcom/miui/firstaidkit/a;->f()I

    move-result v1

    iput v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->r:Z

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->Q0()V

    iput-boolean v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->q:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private Q0()V
    .locals 4

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->j:I

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->S0(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->b:Lo5/b;

    new-instance v1, Lcom/miui/firstaidkit/FirstAidKitActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/FirstAidKitActivity$b;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private S0(I)V
    .locals 5

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f0805d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10002e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602cd

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->r:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1208b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f0805d4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1208b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f0805d2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602cc

    goto :goto_0

    :goto_2
    return-void
.end method

.method static synthetic i0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->i:I

    return p0
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0b0b0e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-static {}, Lx4/a0;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0503

    goto :goto_0

    :cond_0
    const v1, 0x7f0e0502

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0b090f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/ui/ProgressLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->d:Lcom/miui/firstaidkit/ui/ProgressLayout;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/ui/ProgressLayout;->b()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->d:Lcom/miui/firstaidkit/ui/ProgressLayout;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->b:Lo5/b;

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/ui/ProgressLayout;->a(Landroid/os/Handler;)V

    const v0, 0x7f0b0708

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->g:Landroid/view/View;

    const v0, 0x7f0b05f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f0b0989

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f0b0ce4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->e:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setAlignItem(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->e:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->e:Lcom/miui/common/customview/AutoPasteListView;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->e:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setTopDraggable(Z)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->e:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/firstaidkit/FirstAidKitActivity$e;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/FirstAidKitActivity$e;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteListView$c;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->e:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0b0707

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    invoke-virtual {v0}, Lcom/miui/common/ui/a;->c()V

    return-void
.end method

.method static synthetic j0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->A:I

    return p0
.end method

.method static synthetic l0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/FirstAidAnimView;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->z:I

    return p0
.end method

.method static synthetic p0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->o:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->j:I

    return p0
.end method

.method static synthetic r0(Lcom/miui/firstaidkit/FirstAidKitActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->j:I

    return p1
.end method

.method static synthetic s0(Lcom/miui/firstaidkit/FirstAidKitActivity;I)I
    .locals 1

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->j:I

    return v0
.end method

.method static synthetic t0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->c:Lcom/miui/firstaidkit/a;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/firstaidkit/FirstAidKitActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->S0(I)V

    return-void
.end method

.method static synthetic v0(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->D0()V

    return-void
.end method

.method static synthetic w0(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->P0()V

    return-void
.end method

.method static synthetic x0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/ProgressLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->d:Lcom/miui/firstaidkit/ui/ProgressLayout;

    return-object p0
.end method

.method static synthetic y0(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->C0()V

    return-void
.end method

.method private z0(Landroid/animation/AnimatorSet;)V
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
.method public A0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->c:Lcom/miui/firstaidkit/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/firstaidkit/a;->e()V

    :cond_0
    return-void
.end method

.method public E0()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->i:I

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->D0()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->y:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->z0(Landroid/animation/AnimatorSet;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->d:Lcom/miui/firstaidkit/ui/ProgressLayout;

    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->e:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0, v1, v2}, Leg/t;->k(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->y:Landroid/animation/AnimatorSet;

    invoke-static {}, Lqf/c;->D()V

    return-void
.end method

.method public I0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->c:Lcom/miui/firstaidkit/a;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/a;->h()Lo5/e;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->q:Z

    if-nez v0, :cond_0

    const-string v0, "FirstAidKitActivity"

    const-string v2, "refreshOptimizingUi turnToResult"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->r:Z

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->Q0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->q:Z

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string v1, "FirstAidKitActivity"

    const-string v2, "refreshOptimizingUi popOptimizeEntry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->c:Lcom/miui/firstaidkit/a;

    new-instance v2, Lcom/miui/firstaidkit/FirstAidKitActivity$d;

    invoke-direct {v2, p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity$d;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;Lo5/e;)V

    invoke-virtual {v1, v0, v2}, Lcom/miui/firstaidkit/a;->i(Lo5/e;Lp5/b;)V

    :goto_0
    return-void
.end method

.method public J0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->c:Lcom/miui/firstaidkit/a;

    new-instance v1, Lcom/miui/firstaidkit/FirstAidKitActivity$c;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/FirstAidKitActivity$c;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->b:Lo5/b;

    invoke-virtual {v0, v1, v2}, Lcom/miui/firstaidkit/a;->l(Lcom/miui/firstaidkit/a$g;Landroid/os/Handler;)V

    return-void
.end method

.method public N0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1208a6

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1208a5

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/firstaidkit/FirstAidKitActivity$j;

    invoke-direct {v1, p0}, Lcom/miui/firstaidkit/FirstAidKitActivity$j;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v2, 0x7f120f48

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public R0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->n:Lcom/miui/common/customview/ActionBarContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/common/customview/ActionBarContainer;->c(I)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMainPageGroupModel position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirstAidKitActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p3, p1}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    iget-object p3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p3}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p3}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object p3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->s:Ljava/util/ArrayList;

    if-eqz p3, :cond_c

    instance-of v0, p1, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/TitleCardModel;->getId()J

    move-result-wide v2

    move-object v4, v1

    check-cast v4, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v4}, Lcom/miui/common/card/models/TitleCardModel;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_4
    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->s:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    if-eqz p2, :cond_c

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_a
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_2
    return-void
.end method

.method public g0(Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMainPageSingleModel position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirstAidKitActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2, p1}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    iget-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {p2}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->s:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    instance-of v0, p1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/miui/common/card/models/AdvCardModel;

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v4

    if-eq v3, v4, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    move-object v0, v1

    :cond_6
    iget-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->s:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lsf/c;->u(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public isUninstalledDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onActivityCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e02be

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "enter_homepage_way"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "00001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "firstaidkit_from_security_home"

    :goto_0
    invoke-static {p1}, Lqf/c;->F(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "00006"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "firstaidkit_from_security_result"

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstaidkit_channel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lw9/b;->b()Lw9/b;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->w:Lw9/b;

    invoke-virtual {p1, p0}, Lw9/b;->c(Ljava/lang/Object;)V

    new-instance p1, Lo5/c;

    invoke-direct {p1, p0}, Lo5/c;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->u:Lo5/c;

    new-instance p1, Lo5/a;

    invoke-direct {p1, p0}, Lo5/a;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->v:Lo5/a;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->i:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->o:Ljava/util/Map;

    invoke-static {p0}, Lcom/miui/firstaidkit/a;->g(Landroid/content/Context;)Lcom/miui/firstaidkit/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->c:Lcom/miui/firstaidkit/a;

    new-instance p1, Lcom/miui/common/card/CardViewAdapter;

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->b:Lo5/b;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v0, v1}, Lcom/miui/common/card/CardViewAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->F0()V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->G0()V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->O0()V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->H0()V

    invoke-static {p0}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->v:Lo5/a;

    invoke-virtual {p1, v0}, Lsf/h;->f(Lsf/h$b;)V

    invoke-static {p0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->u:Lo5/c;

    invoke-virtual {p1, v0}, Lsf/e;->l(Lsf/e$c;)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityDestroy()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->t:Lr5/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-static {p0}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->v:Lo5/a;

    invoke-virtual {v0, v1}, Lsf/h;->g(Lsf/h$b;)V

    invoke-static {p0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->u:Lo5/c;

    invoke-virtual {v0, v1}, Lsf/e;->p(Lsf/e$c;)V

    invoke-static {}, Lsf/c;->t()V

    invoke-static {}, Llb/a;->f()V

    invoke-static {}, Llb/a;->e()V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->x:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->z0(Landroid/animation/AnimatorSet;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->y:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->z0(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->i:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->J0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityResume()V

    invoke-static {}, Lqf/c;->C()V

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lqf/c;->D()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->i:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->M0()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->K0()V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b090f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d77

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070d76

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0ae7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d79

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->B0(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0, p0, p1}, Lcom/miui/common/base/e;->c(Lcom/miui/common/base/BaseActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->h:Lcom/miui/firstaidkit/ui/FirstAidAnimView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/common/ui/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->b:Lo5/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->w:Lw9/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lw9/b;->e(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_4

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->w:Lw9/b;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/AdvInternationalCardModel;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lsf/f;->j(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->w:Lw9/b;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lw9/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->onDestroy()V

    :cond_4
    invoke-super {p0}, Lcom/miui/securityscan/BaseAdvActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->d()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->e()V

    return-void
.end method

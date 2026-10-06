.class public Lt8/g;
.super Lt8/a;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# instance fields
.field private d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/miui/gamebooster/LevelSeekBarViewV2;

.field private n:Lcom/miui/gamebooster/LevelSeekBarViewV2;

.field private o:Lcom/miui/gamebooster/LevelSeekBarViewV2;

.field private p:Lcom/miui/gamebooster/LevelSeekBarViewV2;

.field private q:Lt7/d;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private final v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lt8/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lt8/g;->r:I

    iput p1, p0, Lt8/g;->s:I

    iput p1, p0, Lt8/g;->t:I

    iput p1, p0, Lt8/g;->u:I

    const/4 p1, 0x2

    iput p1, p0, Lt8/g;->v:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e020f

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lt8/g;->k()V

    return-void
.end method

.method public static synthetic g(Lt8/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lt8/g;->o(I)V

    return-void
.end method

.method public static synthetic h(Lt8/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lt8/g;->l(I)V

    return-void
.end method

.method public static synthetic i(Lt8/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lt8/g;->m(I)V

    return-void
.end method

.method public static synthetic j(Lt8/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lt8/g;->n(I)V

    return-void
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {v0, v1, v2}, Lt7/b;->e(Ljava/lang/String;I)Lt7/d;

    move-result-object v0

    iput-object v0, p0, Lt8/g;->q:Lt7/d;

    const v0, 0x7f0b0b25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lt8/g;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const v0, 0x7f0b03e4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lt8/g;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const v0, 0x7f0b04fe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lt8/g;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const v0, 0x7f0b0a52

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lt8/g;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    invoke-virtual {v0}, Lt7/b;->l()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt8/g;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lt8/g;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v4, p0, Lt8/g;->q:Lt7/d;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lt7/d;->b()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4, v3, v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v0, p0, Lt8/g;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v0, v4}, La8/b;->t(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b0b26

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lt8/g;->i:Landroid/view/View;

    const v0, 0x7f0b0a3c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iput-object v0, p0, Lt8/g;->m:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    new-instance v4, Lt8/c;

    invoke-direct {v4, p0}, Lt8/c;-><init>(Lt8/g;)V

    invoke-virtual {v0, v4}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setOnLevelChangeListener(Lcom/miui/gamebooster/LevelSeekBarViewV2$a;)V

    iget-object v0, p0, Lt8/g;->q:Lt7/d;

    invoke-virtual {v0}, Lt7/d;->b()I

    move-result v0

    iput v0, p0, Lt8/g;->r:I

    iget-object v0, p0, Lt8/g;->q:Lt7/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lt7/d;->b()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Lt8/g;->setSuperCoreBarState(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lt8/g;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    invoke-virtual {v0}, Lt7/b;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lt8/g;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lt8/g;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v4, p0, Lt8/g;->q:Lt7/d;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lt7/d;->a()I

    move-result v4

    if-ne v4, v2, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {v0, v4, v3, v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v0, p0, Lt8/g;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lt8/g;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    invoke-virtual {v0}, Lt7/b;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lt8/g;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lt8/g;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v4, p0, Lt8/g;->q:Lt7/d;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lt7/d;->c()I

    move-result v4

    if-lez v4, :cond_6

    move v4, v2

    goto :goto_5

    :cond_6
    move v4, v3

    :goto_5
    invoke-virtual {v0, v4, v3, v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v0, p0, Lt8/g;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lt8/g;->j:Landroid/view/View;

    const v0, 0x7f0b0a35

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iput-object v0, p0, Lt8/g;->n:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    new-instance v4, Lt8/d;

    invoke-direct {v4, p0}, Lt8/d;-><init>(Lt8/g;)V

    invoke-virtual {v0, v4}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setOnLevelChangeListener(Lcom/miui/gamebooster/LevelSeekBarViewV2$a;)V

    iget-object v0, p0, Lt8/g;->q:Lt7/d;

    invoke-virtual {v0}, Lt7/d;->c()I

    move-result v0

    iput v0, p0, Lt8/g;->s:I

    iget-object v0, p0, Lt8/g;->q:Lt7/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lt7/d;->c()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v3

    :goto_6
    invoke-direct {p0, v0}, Lt8/g;->setHotAreaBarState(Z)V

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lt8/g;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    invoke-virtual {v0}, Lt7/b;->j()Z

    move-result v0

    const/high16 v4, 0x40600000    # 3.5f

    if-eqz v0, :cond_c

    iget-object v0, p0, Lt8/g;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0, v4}, La8/b;->t(F)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0b0a53

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lt8/g;->k:Landroid/view/View;

    const v0, 0x7f0b0a3b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iput-object v0, p0, Lt8/g;->o:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    new-instance v5, Lt8/e;

    invoke-direct {v5, p0}, Lt8/e;-><init>(Lt8/g;)V

    invoke-virtual {v0, v5}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setOnLevelChangeListener(Lcom/miui/gamebooster/LevelSeekBarViewV2$a;)V

    iget-object v0, p0, Lt8/g;->q:Lt7/d;

    invoke-virtual {v0}, Lt7/d;->e()I

    move-result v0

    iput v0, p0, Lt8/g;->t:I

    iget-object v0, p0, Lt8/g;->q:Lt7/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lt7/d;->e()I

    move-result v0

    if-lez v0, :cond_9

    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v3

    :goto_8
    invoke-direct {p0, v0}, Lt8/g;->setShakeBarState(Z)V

    :cond_a
    iget-object v0, p0, Lt8/g;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v5, p0, Lt8/g;->q:Lt7/d;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lt7/d;->e()I

    move-result v5

    if-lez v5, :cond_b

    move v5, v2

    goto :goto_9

    :cond_b
    move v5, v3

    :goto_9
    invoke-virtual {v0, v5, v3, v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v0, p0, Lt8/g;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    goto :goto_a

    :cond_c
    iget-object v0, p0, Lt8/g;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    const v0, 0x7f0b020a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lt8/g;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0, v4}, La8/b;->t(F)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    invoke-virtual {v0}, Lt7/b;->n()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f0b074e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lt8/g;->l:Landroid/view/View;

    const v0, 0x7f0b0a39

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iput-object v0, p0, Lt8/g;->p:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    new-instance v1, Lt8/f;

    invoke-direct {v1, p0}, Lt8/f;-><init>(Lt8/g;)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setOnLevelChangeListener(Lcom/miui/gamebooster/LevelSeekBarViewV2$a;)V

    iget-object v0, p0, Lt8/g;->q:Lt7/d;

    invoke-virtual {v0}, Lt7/d;->d()I

    move-result v0

    iput v0, p0, Lt8/g;->u:I

    iget-object v0, p0, Lt8/g;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iget-object v1, p0, Lt8/g;->q:Lt7/d;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lt7/d;->d()I

    move-result v1

    if-lez v1, :cond_d

    move v1, v2

    goto :goto_b

    :cond_d
    move v1, v3

    :goto_b
    invoke-virtual {v0, v1, v3, v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v0, p0, Lt8/g;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    iget-object v0, p0, Lt8/g;->q:Lt7/d;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lt7/d;->d()I

    move-result v0

    if-lez v0, :cond_e

    goto :goto_c

    :cond_e
    move v2, v3

    :goto_c
    invoke-direct {p0, v2}, Lt8/g;->setRestrainBarState(Z)V

    goto :goto_d

    :cond_f
    iget-object v0, p0, Lt8/g;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    return-void
.end method

.method private synthetic l(I)V
    .locals 3

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lt7/b;->r(ILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuperCoreBarlevel\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMotionView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic m(I)V
    .locals 3

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lt7/b;->s(ILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotAreaBarlevel\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMotionView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic n(I)V
    .locals 3

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lt7/b;->v(ILjava/lang/String;I)V

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v1, p0, Lt8/a;->b:I

    invoke-static {p1, v0, v1}, Lcom/miui/gamebooster/utils/a$m;->b(ILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShakeBarlevel\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMotionView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic o(I)V
    .locals 3

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lt7/b;->u(ILjava/lang/String;I)V

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v1, p0, Lt8/a;->b:I

    invoke-static {p1, v0, v1}, Lcom/miui/gamebooster/utils/a$m;->e(ILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestrainBarlevel\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMotionView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setHotAreaBarState(Z)V
    .locals 3

    iget-object v0, p0, Lt8/g;->j:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lt8/g;->n:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iget v0, p0, Lt8/g;->s:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setCurrentLevel(I)V

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget v0, p0, Lt8/g;->s:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    :cond_2
    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lt7/b;->s(ILjava/lang/String;I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {p1, v1, v0, v2}, Lt7/b;->s(ILjava/lang/String;I)V

    iput v1, p0, Lt8/g;->s:I

    :goto_2
    return-void
.end method

.method private setRestrainBarState(Z)V
    .locals 3

    iget-object v0, p0, Lt8/g;->l:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lt8/g;->p:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iget v0, p0, Lt8/g;->u:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setCurrentLevel(I)V

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget v0, p0, Lt8/g;->u:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    :cond_2
    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lt7/b;->u(ILjava/lang/String;I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {p1, v1, v0, v2}, Lt7/b;->u(ILjava/lang/String;I)V

    iput v1, p0, Lt8/g;->u:I

    :goto_2
    return-void
.end method

.method private setShakeBarState(Z)V
    .locals 3

    iget-object v0, p0, Lt8/g;->k:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lt8/g;->o:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iget v0, p0, Lt8/g;->t:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setCurrentLevel(I)V

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget v0, p0, Lt8/g;->t:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    :cond_2
    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lt7/b;->v(ILjava/lang/String;I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {p1, v1, v0, v2}, Lt7/b;->v(ILjava/lang/String;I)V

    iput v1, p0, Lt8/g;->t:I

    :goto_2
    return-void
.end method

.method private setSuperCoreBarState(Z)V
    .locals 3

    iget-object v0, p0, Lt8/g;->i:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lt8/g;->m:Lcom/miui/gamebooster/LevelSeekBarViewV2;

    iget v0, p0, Lt8/g;->r:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/LevelSeekBarViewV2;->setCurrentLevel(I)V

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget v0, p0, Lt8/g;->r:I

    if-nez v0, :cond_2

    const/4 v0, 0x2

    :cond_2
    iget-object v1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lt7/b;->r(ILjava/lang/String;I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v2, p0, Lt8/a;->b:I

    invoke-virtual {p1, v1, v0, v2}, Lt7/b;->r(ILjava/lang/String;I)V

    iput v1, p0, Lt8/g;->r:I

    :goto_2
    return-void
.end method


# virtual methods
.method public getTitle()I
    .locals 1

    const v0, 0x7f120add

    return v0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lt8/g;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_1

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, La8/b;->t(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lt8/g;->setSuperCoreBarState(Z)V

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v1, p0, Lt8/a;->b:I

    invoke-virtual {p1, p2, v0, v1}, Lt7/b;->r(ILjava/lang/String;I)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$m;->d(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lt8/g;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v1, p0, Lt8/a;->b:I

    invoke-virtual {p1, p2, v0, v1}, Lt7/b;->t(ZLjava/lang/String;I)V

    invoke-static {p2}, Lcom/miui/gamebooster/utils/a$m;->c(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lt8/g;->f:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2}, Lt8/g;->setHotAreaBarState(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lt8/g;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    const/high16 v0, 0x40600000    # 3.5f

    invoke-virtual {p1, v0}, La8/b;->t(F)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2}, Lt8/g;->setShakeBarState(Z)V

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    iget-object p1, p0, Lt8/a;->a:Ljava/lang/String;

    iget p2, p0, Lt8/a;->b:I

    invoke-static {v1, p1, p2}, Lcom/miui/gamebooster/utils/a$m;->b(ILjava/lang/String;I)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    iget-object v0, p0, Lt8/a;->a:Ljava/lang/String;

    iget v1, p0, Lt8/a;->b:I

    invoke-virtual {p1, p2, v0, v1}, Lt7/b;->v(ILjava/lang/String;I)V

    iget-object p1, p0, Lt8/a;->a:Ljava/lang/String;

    iget v0, p0, Lt8/a;->b:I

    invoke-static {p2, p1, v0}, Lcom/miui/gamebooster/utils/a$m;->b(ILjava/lang/String;I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lt8/g;->h:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_8

    invoke-direct {p0, p2}, Lt8/g;->setRestrainBarState(Z)V

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    iget-object p1, p0, Lt8/a;->a:Ljava/lang/String;

    iget p2, p0, Lt8/a;->b:I

    invoke-static {v1, p1, p2}, Lcom/miui/gamebooster/utils/a$m;->e(ILjava/lang/String;I)V

    :cond_8
    :goto_2
    return-void
.end method

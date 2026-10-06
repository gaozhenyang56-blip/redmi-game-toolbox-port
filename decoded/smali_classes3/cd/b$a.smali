.class public Lcd/b$a;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/FrameLayout;

.field private final c:Landroid/widget/GridLayout;

.field private d:Z

.field private final e:Landroid/content/Context;

.field private final f:Le3/d;

.field private g:I

.field public h:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcd/b$a;->d:Z

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const v1, 0x7f080e64

    invoke-virtual {v0, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcd/b$a;->h:Lrh/c;

    const v0, 0x7f0b06c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcd/b$a;->a:Landroid/view/View;

    const v0, 0x7f0b0407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcd/b$a;->b:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0489

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcd/b$a;->e:Landroid/content/Context;

    new-instance v1, Le3/d;

    invoke-direct {v1, p1}, Le3/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcd/b$a;->f:Le3/d;

    const/4 p1, 0x3

    iput p1, p0, Lcd/b$a;->g:I

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    return-void
.end method

.method private c(Landroid/view/View;Lcd/b;)V
    .locals 11

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v2}, Lcom/miui/common/card/GridFunctionData;->isEditVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/GridFunctionData;

    iget-object v5, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0267

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b0bc9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b0600

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0b0b16

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/securityscan/ui/main/WaveTextView;

    const v10, 0x7f0b0506

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Lcom/miui/common/card/GridFunctionData;->setMarquee(Z)V

    iget-boolean v6, p0, Lcd/b$a;->d:Z

    if-eqz v6, :cond_2

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v9}, Lcd/b$a;->d(Lcom/miui/common/card/GridFunctionData;Ljava/lang/String;Lcom/miui/securityscan/ui/main/WaveTextView;)V

    :goto_2
    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->isUseLocalPic()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getLocalPicResoourceId()I

    move-result v3

    invoke-direct {p0, v5, v3}, Lcd/b$a;->fillIconViews(Landroid/widget/ImageView;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getIcon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcd/b$a;->h:Lrh/c;

    invoke-static {v3, v5, v4}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcd/b$a;->g:I

    const/4 v1, 0x4

    if-le p1, v0, :cond_6

    div-int v3, p1, v0

    mul-int/2addr v3, v0

    sub-int/2addr p1, v3

    move v0, v2

    :goto_4
    iget-object v3, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_8

    add-int v3, v2, p1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-ge p1, v0, :cond_7

    :goto_6
    iget-object p1, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_8

    iget-object p1, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object p1, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_8

    iget-object p1, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p0, p2}, Lcd/b$a;->e(Lcom/miui/common/card/models/BaseCardModel;)V

    return-void
.end method

.method private d(Lcom/miui/common/card/GridFunctionData;Ljava/lang/String;Lcom/miui/securityscan/ui/main/WaveTextView;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldd/d;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f1211ee

    invoke-virtual {p3, p2}, Lcom/miui/securityscan/ui/main/WaveTextView;->setText(I)V

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->isDoNewAnim()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/miui/securityscan/ui/main/WaveTextView;->f()V

    invoke-virtual {p1, v1}, Lcom/miui/common/card/GridFunctionData;->setDoNewAnim(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lpf/g;->k()I

    move-result p2

    iget-object v0, p0, Lcd/b$a;->f:Le3/d;

    invoke-virtual {v0}, Le3/d;->c()Z

    move-result v0

    if-lez p2, :cond_5

    if-eqz v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpf/g;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Lcom/miui/securityscan/ui/main/WaveTextView;->setText(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const-string v0, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v2, 0x1dcd6500

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcd/b$a;->e:Landroid/content/Context;

    invoke-static {p2}, Ldd/d;->h(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ldd/d;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    cmp-long p2, v4, v2

    if-lez p2, :cond_5

    :goto_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, v4, v5, v1}, Lx4/j0;->d(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v0, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcd/b$a;->e:Landroid/content/Context;

    invoke-static {p2}, Ldd/d;->f(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Ldd/d;->d()Z

    move-result p2

    if-eqz p2, :cond_5

    cmp-long p2, v4, v2

    if-lez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private f(Lcom/miui/common/card/GridFunctionData;Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {p3}, Ldd/d;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3, v1}, Ldd/d;->j(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Ldd/d;->l(Z)V

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    const-string p1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Ldd/d;->k(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/appmanager/AppManageUtils;->v0(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->A0(Z)V

    iget-object p1, p0, Lcd/b$a;->e:Landroid/content/Context;

    check-cast p1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->s0()V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const p1, 0x7f0b0b16

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/ui/main/WaveTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private fillIconViews(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public e(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 4

    check-cast p1, Lcd/b;

    invoke-virtual {p1}, Lcd/b;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lcd/b;->d(I)V

    iget-object p1, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const-string v2, "scaleY"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    const/16 v0, 0x1f6

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcd/b;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->isFoldDevice()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    sget-object p3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cetus"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getScreenSize()I

    move-result p3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_1

    const/4 v3, 0x4

    if-ne p3, v3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v0

    :goto_1
    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    :goto_2
    iput v2, p0, Lcd/b$a;->g:I

    iget-object p3, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p3, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    :cond_3
    iget-object p3, p2, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-boolean p3, p2, Lcom/miui/common/card/models/BaseCardModel;->subVisible:Z

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    iget-object p3, p0, Lcom/miui/common/card/BaseViewHolder;->summaryView:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v0, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcd/b$a;->a:Landroid/view/View;

    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcd/b;->b()Z

    move-result p3

    iput-boolean p3, p0, Lcd/b$a;->d:Z

    iget-object p3, p0, Lcd/b$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcd/b$a;->b:Landroid/widget/FrameLayout;

    const v2, 0x7f0807c9

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    const v2, 0x7f0807b8

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcd/b$a;->d:Z

    const v2, 0x7f07041f

    const v3, 0x7f07089b

    const v4, 0x7f071894

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcd/b$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f07066c

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {v0, v2, v3, v4, p3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    const v5, 0x7f0707c7

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v1, v1, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcd/b$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {v0, v5, v3, v4, p3}, Landroid/view/View;->setPadding(IIII)V

    :goto_5
    iget-boolean p3, p0, Lcd/b$a;->d:Z

    if-eqz p3, :cond_8

    const p3, 0x7f0e041b

    goto :goto_6

    :cond_8
    const p3, 0x7f0e041d

    :goto_6
    iget-object v0, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v2, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    :goto_7
    iget-object v2, p2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v3, p3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    iget v0, p0, Lcd/b$a;->g:I

    iget-object v2, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Lcd/b$a;->g:I

    rem-int/2addr v2, v3

    sub-int/2addr v0, v2

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_a

    iget-object v3, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcd/b$a;->c:Landroid/widget/GridLayout;

    invoke-virtual {v4, p3, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    invoke-direct {p0, p1, p2}, Lcd/b$a;->c(Landroid/view/View;Lcd/b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    instance-of v1, v0, Lcom/miui/common/card/GridFunctionData;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcd/b$a;->d:Z

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    const/16 v1, 0x192

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "enter_homepage_way"

    const-string v4, "phone_manage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "back"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v3, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "enter_way"

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v3, "#Intent;action=miui.intent.action.KIDMODE_ENTRANCE;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "enter_kid_space_channel"

    const-string v4, "phonemanage_page"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v3, "#Intent;action=miui.intent.action.ZMAN_SECURITY_SHARE_SETTING;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcd/b$a;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-direct {p0, v0, p1, v1}, Lcd/b$a;->f(Lcom/miui/common/card/GridFunctionData;Landroid/view/View;Ljava/lang/String;)V

    sget-object v3, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p1, p0, Lcd/b$a;->e:Landroid/content/Context;

    invoke-static {p1, v2}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v3, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.MiCloudFindDeviceStatusActivity;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, p0, Lcd/b$a;->e:Landroid/content/Context;

    invoke-static {p1, v2}, Lx4/t;->P(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v3, "#Intent;action=miui.intent.action.SIM_LOCK_CHOOSE;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/simlock/c;->s(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcd/b$a;->e:Landroid/content/Context;

    invoke-static {p1, v2}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcd/b$a;->e:Landroid/content/Context;

    const v2, 0x7f120210

    invoke-static {p1, v2}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_8
    :goto_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance v2, Lcd/b$a$a;

    invoke-direct {v2, p0, v1}, Lcd/b$a$a;-><init>(Lcd/b$a;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lef/z;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "PMTitleViewHolder"

    const-string v2, "onClick error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getDataId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object p1

    :cond_a
    invoke-static {p1}, Lqf/c;->m0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    const/16 v0, 0x259

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    return-void
.end method

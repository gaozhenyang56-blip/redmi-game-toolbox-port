.class public Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncGridBaseCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncGridBaseViewHolder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FuncGrid4ViewHolder"


# instance fields
.field private cardColorfulPaddingBottom:I

.field private cardColorfulPaddingTop:I

.field private context:Landroid/content/Context;

.field private functionView:Landroid/view/View;

.field private iconImageView:Landroid/widget/ImageView;

.field private menuFuncBinder:Lsf/i;

.field public options:Lrh/c;

.field private redcotView:Landroid/widget/ImageView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    sget-object v1, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v1}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->options:Lrh/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07162b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingBottom:I

    const v1, 0x7f07162d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingTop:I

    invoke-virtual {p0, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method private fillIconViews(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setRedcotView(Lcom/miui/common/card/GridFunctionData;Landroid/widget/ImageView;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lpf/i;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    instance-of p1, p2, Lsf/i;

    if-eqz p1, :cond_0

    check-cast p2, Lsf/i;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->menuFuncBinder:Lsf/i;

    :cond_0
    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    move-object/from16 v2, p2

    check-cast v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/FunctionCardModel;->getGridFunctionData()Lcom/miui/common/card/GridFunctionData;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    instance-of v4, v2, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    const v7, 0x7f0807bc

    if-eqz v4, :cond_20

    invoke-static {}, Lx4/t;->p()Z

    move-result v4

    const v8, 0x7f0807ba

    const v10, 0x7f0807bd

    const v11, 0x7f0807bb

    const v12, 0x7f0807b9

    if-nez v4, :cond_11

    invoke-static {v2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->access$000(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopLeft:Z

    if-eqz v4, :cond_4

    iget-boolean v13, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomLeft:Z

    if-eqz v13, :cond_4

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v12

    :cond_3
    :goto_2
    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_4
    iget-boolean v13, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRight:Z

    if-eqz v13, :cond_5

    iget-boolean v14, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRight:Z

    if-eqz v14, :cond_5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_5
    iget-boolean v14, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopMiddle:Z

    if-eqz v14, :cond_6

    iget-boolean v15, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomMiddle:Z

    if-eqz v15, :cond_6

    :goto_3
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    iget v2, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingBottom:I

    invoke-virtual {v1, v6, v6, v6, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_10

    :cond_6
    if-eqz v4, :cond_9

    if-eqz v5, :cond_8

    :cond_7
    :goto_5
    const v9, 0x7f0807be

    goto :goto_7

    :cond_8
    :goto_6
    move v9, v10

    :goto_7
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_9
    if-eqz v14, :cond_b

    :cond_a
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_8
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/16 :goto_10

    :cond_b
    if-eqz v13, :cond_c

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_c
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomLeft:Z

    if-eqz v4, :cond_d

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_d
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRight:Z

    if-eqz v4, :cond_e

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_e
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomMiddle:Z

    if-eqz v4, :cond_f

    goto :goto_3

    :cond_f
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleLeft:Z

    if-eqz v4, :cond_10

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_10
    iget-boolean v2, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleRight:Z

    if-eqz v2, :cond_a

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_11
    :goto_9
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopLeft:Z

    const v13, 0x7f0807c5

    const v14, 0x7f0807c3

    if-eqz v4, :cond_14

    iget-boolean v15, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomLeft:Z

    if-eqz v15, :cond_14

    if-eqz v5, :cond_12

    goto :goto_b

    :cond_12
    :goto_a
    move v13, v14

    :cond_13
    :goto_b
    invoke-virtual {v1, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    :cond_14
    iget-boolean v15, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopRight:Z

    if-eqz v15, :cond_15

    iget-boolean v9, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRight:Z

    if-eqz v9, :cond_15

    if-eqz v5, :cond_13

    goto :goto_a

    :cond_15
    iget-boolean v9, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isTopMiddle:Z

    if-eqz v9, :cond_16

    iget-boolean v13, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomMiddle:Z

    if-eqz v13, :cond_16

    const v2, 0x7f0807c4

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_c
    iget v2, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingTop:I

    iget v4, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingBottom:I

    invoke-virtual {v1, v6, v2, v6, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_10

    :cond_16
    const v13, 0x7f0807c1

    const v14, 0x7f0807bf

    if-eqz v4, :cond_19

    if-eqz v5, :cond_17

    goto :goto_e

    :cond_17
    :goto_d
    move v13, v14

    :cond_18
    :goto_e
    invoke-virtual {v1, v13}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_f

    :cond_19
    if-eqz v9, :cond_1a

    const v2, 0x7f0807c0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_f
    iget v2, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingTop:I

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_10

    :cond_1a
    if-eqz v15, :cond_1b

    if-eqz v5, :cond_18

    goto :goto_d

    :cond_1b
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomLeft:Z

    if-eqz v4, :cond_1c

    if-eqz v5, :cond_2

    goto/16 :goto_2

    :cond_1c
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomRight:Z

    if-eqz v4, :cond_1d

    if-eqz v5, :cond_3

    goto/16 :goto_1

    :cond_1d
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isBottomMiddle:Z

    if-eqz v4, :cond_1e

    goto/16 :goto_3

    :cond_1e
    iget-boolean v4, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleLeft:Z

    if-eqz v4, :cond_1f

    if-eqz v5, :cond_8

    goto/16 :goto_5

    :cond_1f
    iget-boolean v2, v2, Lcom/miui/common/card/models/FuncGridBaseCardModel;->isMiddleRight:Z

    if-eqz v2, :cond_a

    if-eqz v5, :cond_7

    goto/16 :goto_6

    :cond_20
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    :goto_10
    iget-object v1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    if-eqz v3, :cond_22

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->redcotView:Landroid/widget/ImageView;

    invoke-direct {v0, v3, v1}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->setRedcotView(Lcom/miui/common/card/GridFunctionData;Landroid/widget/ImageView;)V

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->isUseLocalPic()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getLocalPicResoourceId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->fillIconViews(Landroid/widget/ImageView;I)V

    goto :goto_11

    :cond_21
    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->options:Lrh/c;

    invoke-static {v1, v2, v4}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_11
    invoke-virtual/range {p2 .. p2}, Lcom/miui/common/card/models/BaseCardModel;->isDefaultStatShow()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lqf/c;->w0(Landroid/content/Context;Lcom/miui/common/card/GridFunctionData;)V

    goto :goto_12

    :cond_22
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_23
    :goto_12
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0b0267

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    const v0, 0x7f0b060c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    const v0, 0x7f0b0cf3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    const v0, 0x7f0b062c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->redcotView:Landroid/widget/ImageView;

    invoke-static {}, Lx4/y1;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    new-array v0, p1, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v4, v4}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, p1, [Lmiuix/animation/ITouchStyle$TouchType;

    sget-object v5, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    aput-object v5, v4, v2

    invoke-interface {v1, v3, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView:Landroid/view/View;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, p1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "FuncGrid4ViewHolder"

    const-string v0, "no support folme"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v0, "00001"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    instance-of v2, v1, Lcom/miui/common/card/GridFunctionData;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "enter_homepage_way"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "track_gamebooster_enter_way"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enter_way"

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.MiCloudFindDeviceStatusActivity;end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lx4/t;->P(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "#Intent;action=miui.intent.action.SIM_LOCK_CHOOSE;end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/simlock/c;->s(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    const v3, 0x7f120210

    invoke-static {v0, v3}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lpf/i;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lpf/i;->t(Landroid/content/Context;Ljava/lang/String;Z)V

    const v0, 0x7f0b062c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    check-cast p1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1, v2}, Lcom/miui/securityscan/MainActivity;->E0(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lqf/c;->v0(Ljava/lang/String;)V

    :cond_7
    const-string p1, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {p1}, Lqf/c;->H(Landroid/content/Context;)V

    :cond_8
    iget-object p1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    const-string v0, "data_config"

    invoke-static {p1, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p1

    const-string v0, "is_homepage_operated"

    invoke-virtual {p1, v0, v3}, Luf/b;->p(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "FuncGrid4ViewHolder"

    const-string v1, "onClick error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    return-void
.end method

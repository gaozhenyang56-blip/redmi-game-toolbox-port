.class public Lcom/miui/dock/sidebar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/RectF;

.field private static final b:Landroid/graphics/RectF;

.field private static final c:Landroid/graphics/RectF;

.field private static final d:Landroid/graphics/RectF;

.field private static final e:Landroid/graphics/RectF;

.field private static final f:Lcom/miui/dock/sidebar/SidebarAnimParams;

.field private static g:Z

.field private static h:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private static final i:Lmiuix/animation/base/AnimConfig;

.field private static final j:Lmiuix/animation/base/AnimConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/miui/dock/sidebar/a;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/miui/dock/sidebar/a;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/miui/dock/sidebar/a;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/miui/dock/sidebar/a;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/miui/dock/sidebar/a;->e:Landroid/graphics/RectF;

    new-instance v0, Lcom/miui/dock/sidebar/SidebarAnimParams;

    invoke-direct {v0}, Lcom/miui/dock/sidebar/SidebarAnimParams;-><init>()V

    sput-object v0, Lcom/miui/dock/sidebar/a;->f:Lcom/miui/dock/sidebar/SidebarAnimParams;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/dock/sidebar/a;->g:Z

    const/4 v0, -0x1

    sput v0, Lcom/miui/dock/sidebar/a;->h:I

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const-string v4, "x"

    const-wide/16 v5, -0x2

    invoke-virtual {v0, v4, v5, v6, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const-string v4, "y"

    invoke-virtual {v0, v4, v5, v6, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const-string v4, "alpha"

    invoke-virtual {v0, v4, v5, v6, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lcom/miui/dock/sidebar/a;->i:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const-string v3, "width"

    invoke-virtual {v0, v3, v5, v6, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v1, v1, [F

    fill-array-data v1, :array_6

    const-string v2, "height"

    invoke-virtual {v0, v2, v5, v6, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lcom/miui/dock/sidebar/a;->j:Lmiuix/animation/base/AnimConfig;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_4
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_5
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data

    :array_6
    .array-data 4
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method static synthetic a(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/dock/sidebar/a;->l(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method public static b(Lmiuix/animation/listener/UpdateInfo;)F
    .locals 6

    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    iget-wide v3, v0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    cmpl-double v0, v1, v3

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    float-to-double v0, v0

    iget-object p0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    sub-double/2addr v0, v2

    iget-wide v4, p0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private static c(Lcom/miui/dock/sidebar/j;)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->o()Ls8/h;

    move-result-object v0

    invoke-virtual {v0}, Ls8/h;->Q()Lo7/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->n()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo7/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lx4/y1;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060d1f

    goto :goto_0

    :cond_0
    const v0, 0x7f060d1e

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    const v0, 0x7f060d1d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static d(Lcom/miui/dock/sidebar/j;)V
    .locals 13

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->v()Lcom/miui/dock/sidebar/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/c;->g()I

    move-result v1

    sput v1, Lcom/miui/dock/sidebar/a;->h:I

    sget-object v1, Lcom/miui/dock/sidebar/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->g()V

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineViewLoc on screen x = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  y = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, v3, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SidebarAnimUtils"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/dock/sidebar/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    aget v7, v3, v4

    int-to-float v7, v7

    aget v8, v3, v5

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v10, v7, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    iget v11, v7, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    sget-object v12, Lcom/miui/dock/sidebar/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v12, v9, v8, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/miui/dock/sidebar/a;->b:Landroid/graphics/RectF;

    iget v8, v12, Landroid/graphics/RectF;->left:F

    aget v9, v3, v4

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v5}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->h(Z)I

    move-result v9

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/dock/sidebar/a;->b:Landroid/graphics/RectF;

    iget v8, v12, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v4}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->h(Z)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aget v9, v3, v4

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v4}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->h(Z)I

    move-result v9

    :goto_0
    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, p0, Landroid/graphics/RectF;->right:F

    sget-object p0, Lcom/miui/dock/sidebar/a;->b:Landroid/graphics/RectF;

    iget v8, v12, Landroid/graphics/RectF;->top:F

    aget v3, v3, v5

    int-to-float v3, v3

    sub-float/2addr v8, v3

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    iput v8, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    iput v8, p0, Landroid/graphics/RectF;->bottom:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sLineInitBounds = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sLineTargetBounds = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sPanelInitBounds = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " sPanelTargetBounds = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/miui/dock/sidebar/a;->g:Z

    new-array p0, v5, [Ljava/lang/Object;

    sget-object v0, Lcom/miui/dock/sidebar/a;->f:Lcom/miui/dock/sidebar/SidebarAnimParams;

    aput-object v0, p0, v4

    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "translateX"

    aput-object v1, v0, v4

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v5

    const-string v3, "scale"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "x"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "y"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "width"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "height"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "alpha"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xe

    const-string v2, "radius"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {}, Lcom/miui/common/e;->b()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lm5/g;->c(Landroid/content/res/Resources;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    sget-object p0, Lcom/miui/dock/sidebar/a;->i:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/base/AnimConfig;->clear()V

    sget-object p0, Lcom/miui/dock/sidebar/a;->j:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/base/AnimConfig;->clear()V

    sget-object p0, Lcom/miui/dock/sidebar/a;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public static e(Lcom/miui/dock/sidebar/j;F)Z
    .locals 1

    const v0, 0x7f071a84

    invoke-virtual {p0, v0}, Lcom/miui/dock/sidebar/j;->m(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/miui/dock/sidebar/a;->h:I

    return-void
.end method

.method public static g(Lcom/miui/dock/sidebar/j;)V
    .locals 2

    sget v0, Lcom/miui/dock/sidebar/a;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->v()Lcom/miui/dock/sidebar/c;

    move-result-object p0

    sget v0, Lcom/miui/dock/sidebar/a;->h:I

    invoke-virtual {p0, v0}, Lcom/miui/dock/sidebar/c;->s(I)V

    :cond_0
    return-void
.end method

.method public static h(Landroid/view/View;F)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha: alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarAnimUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, p1

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static i(Lcom/miui/dock/sidebar/j;F)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->o()Ls8/h;

    move-result-object v0

    invoke-virtual {v0}, Ls8/h;->Z()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->n()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->n()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    neg-float v3, v2

    :goto_0
    invoke-static {p0, v3, v1}, Lcom/miui/dock/sidebar/a;->j(Lcom/miui/dock/sidebar/j;FF)V

    :cond_2
    invoke-static {p0, p1}, Lcom/miui/dock/sidebar/a;->e(Lcom/miui/dock/sidebar/j;F)Z

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSlidingTargetView: translateX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " scale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " toPanel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " needToPanel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/miui/dock/sidebar/a;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SidebarAnimUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/miui/dock/sidebar/a;->g:Z

    if-eq v3, p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->v()Lcom/miui/dock/sidebar/c;

    move-result-object v3

    invoke-static {p0}, Lcom/miui/dock/sidebar/a;->c(Lcom/miui/dock/sidebar/j;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/dock/sidebar/c;->s(I)V

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    neg-float v2, v2

    :goto_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v2, v1, v0}, Lcom/miui/dock/sidebar/a;->k(Lcom/miui/dock/sidebar/j;ZFFLjava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public static j(Lcom/miui/dock/sidebar/j;FF)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translateXAndScale: left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " translateX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarAnimUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateXAndScale sSidebarAnimParams: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/dock/sidebar/a;->f:Lcom/miui/dock/sidebar/SidebarAnimParams;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v4, "translate_and_scale"

    invoke-direct {v2, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-string v4, "translateX"

    invoke-virtual {v2, v4, p1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const-string v2, "scale"

    invoke-virtual {p1, v2, p2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array p2, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->enableStartImmediately(Z)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/miui/dock/sidebar/a$a;

    invoke-direct {v4, p0}, Lcom/miui/dock/sidebar/a$a;-><init>(Lcom/miui/dock/sidebar/j;)V

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, p2, v3

    invoke-interface {v1, p1, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static k(Lcom/miui/dock/sidebar/j;ZFFLjava/lang/Runnable;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerTransform: toPanel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " currentToPanel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/dock/sidebar/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sidebarWrapper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarAnimUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerTransform sSidebarAnimParams: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/dock/sidebar/a;->f:Lcom/miui/dock/sidebar/SidebarAnimParams;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v4, "transform"

    invoke-direct {v2, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-string v4, "translateX"

    invoke-virtual {v2, v4, p2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const-string v2, "scale"

    invoke-virtual {p2, v2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v4, p3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, "x"

    invoke-virtual {p2, v5, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    if-eqz p1, :cond_1

    move v4, p3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v5, "y"

    invoke-virtual {p2, v5, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    if-eqz p1, :cond_2

    move v4, p3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const-string v5, "width"

    invoke-virtual {p2, v5, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    if-eqz p1, :cond_3

    move v4, p3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    const-string v5, "height"

    invoke-virtual {p2, v5, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move p3, v2

    :goto_4
    const-string v2, "alpha"

    invoke-virtual {p2, v2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    invoke-static {}, Lcom/miui/common/e;->b()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lm5/g;->c(Landroid/content/res/Resources;)F

    move-result p3

    const-string v2, "radius"

    invoke-virtual {p2, v2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/String;F)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    if-eqz p1, :cond_5

    sget-object v2, Lcom/miui/dock/sidebar/a;->i:Lmiuix/animation/base/AnimConfig;

    goto :goto_5

    :cond_5
    sget-object v2, Lcom/miui/dock/sidebar/a;->j:Lmiuix/animation/base/AnimConfig;

    :goto_5
    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Lcom/miui/dock/sidebar/a$b;

    invoke-direct {v4, p0, p4}, Lcom/miui/dock/sidebar/a$b;-><init>(Lcom/miui/dock/sidebar/j;Ljava/lang/Runnable;)V

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, p3, v3

    invoke-interface {v1, p2, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    sput-boolean p1, Lcom/miui/dock/sidebar/a;->g:Z

    return-void
.end method

.method private static l(Lcom/miui/dock/sidebar/j;)V
    .locals 10

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sget-object v2, Lcom/miui/dock/sidebar/a;->f:Lcom/miui/dock/sidebar/SidebarAnimParams;

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getX()F

    move-result v3

    sget-object v4, Lcom/miui/dock/sidebar/a;->a:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sget-object v6, Lcom/miui/dock/sidebar/a;->b:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v5, v7}, Lmiuix/animation/Folme;->valueFromPer(FFF)F

    move-result v3

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getTranslateX()F

    move-result v5

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getY()F

    move-result v3

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget v7, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v5, v7}, Lmiuix/animation/Folme;->valueFromPer(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getWidth()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v5, v7, v8}, Lmiuix/animation/Folme;->valueFromPer(FFF)F

    move-result v5

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getScale()F

    move-result v7

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getHeight()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v4, v6}, Lmiuix/animation/Folme;->valueFromPer(FFF)F

    move-result v4

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v3, Lcom/miui/dock/sidebar/a;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "SidebarAnimUtils"

    const-string v0, "updateSidebarUI: nothing to update!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getX()F

    move-result v3

    sget-object v4, Lcom/miui/dock/sidebar/a;->c:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sget-object v6, Lcom/miui/dock/sidebar/a;->d:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v3, v5, v7}, Lmiuix/animation/Folme;->valueFromPer(FFF)F

    move-result v3

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getTranslateX()F

    move-result v5

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getY()F

    move-result v3

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget v7, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v5, v7}, Lmiuix/animation/Folme;->valueFromPer(FFF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getWidth()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v5, v7, v8}, Lmiuix/animation/Folme;->valueFromPer(FFF)F

    move-result v5

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getScale()F

    move-result v7

    mul-float/2addr v5, v7

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getHeight()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v5, v4, v7}, Lmiuix/animation/Folme;->valueFromPer(FFF)F

    move-result v4

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getRadius()F

    move-result v4

    invoke-virtual {v3}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockLayout()Lcom/miui/gamebooster/windowmanager/newbox/e;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockLayout()Lcom/miui/gamebooster/windowmanager/newbox/e;

    move-result-object v5

    invoke-static {v5, v4}, Lx4/k;->a(Landroid/view/View;F)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    move v8, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    :goto_0
    invoke-virtual {v3, v8}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->v()Lcom/miui/dock/sidebar/c;

    move-result-object v9

    invoke-virtual {v9, v0, v4}, Lcom/miui/dock/sidebar/c;->m(Landroid/graphics/RectF;F)V

    if-eqz v5, :cond_3

    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v4, v3, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->f:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v0, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->n()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, La8/k2;->l(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    sub-float/2addr v4, v5

    iget v0, v3, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    add-float/2addr v0, v4

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v7, v1, Landroid/graphics/RectF;->top:F

    :cond_4
    invoke-virtual {v3, v7}, Landroid/view/View;->setY(F)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getAlpha()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2}, Lcom/miui/dock/sidebar/SidebarAnimParams;->getAlpha()F

    move-result p0

    invoke-virtual {v3, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

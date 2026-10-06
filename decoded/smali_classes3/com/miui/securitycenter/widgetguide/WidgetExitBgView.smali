.class public Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/PorterDuffXfermode;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x3c900000    # -240.0f

    iput p2, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->f:F

    const/high16 p2, -0x3c380000    # -400.0f

    iput p2, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->g:F

    const/16 p2, 0x4b0

    iput p2, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->h:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lgf/c;->a:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->i:I

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->k:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->k:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lgf/b;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->i:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    iget v3, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->i:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->j:I

    int-to-float v0, v0

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v0, v3

    iget v3, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->f:F

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x4072c00000000000L    # 300.0

    mul-double/2addr v6, v8

    double-to-float v0, v6

    add-float/2addr v3, v0

    iput v3, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->d:F

    iget v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->g:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->e:F

    iget-object v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v5, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->d:F

    iget v6, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->e:F

    iget v3, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->h:I

    int-to-float v7, v3

    iget v8, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->c:I

    const/4 v9, -0x1

    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v3, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->d:F

    iget v3, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->e:F

    iget v4, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->h:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->j:I

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->j:I

    :goto_1
    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securitycenter/widgetguide/WidgetExitBgView;->c:I

    return-void
.end method

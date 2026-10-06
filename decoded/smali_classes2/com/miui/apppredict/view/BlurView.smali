.class public Lcom/miui/apppredict/view/BlurView;
.super Lcom/miui/blur/sdk/backdrop/a;
.source "SourceFile"


# static fields
.field private static final n:Z

.field private static final o:Lcom/miui/blur/sdk/backdrop/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/miui/apppredict/view/BlurView;->n:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/blur/sdk/backdrop/r$b;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/r$b;-><init>()V

    const/16 v2, 0x7d

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/miui/blur/sdk/backdrop/r$b;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/r$b;-><init>()V

    :goto_1
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/r$b;->b()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    sput-object v0, Lcom/miui/apppredict/view/BlurView;->o:Lcom/miui/blur/sdk/backdrop/r;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getBlurOutline(Landroid/graphics/Outline;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/16 v3, 0x42

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v3, v1, -0x42

    int-to-float v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v3, Landroid/graphics/RectF;

    const/16 v5, 0x84

    int-to-float v5, v5

    invoke-direct {v3, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v3, v6, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v3, Landroid/graphics/RectF;

    add-int/lit16 v7, v1, -0x84

    int-to-float v7, v7

    int-to-float v1, v1

    invoke-direct {v3, v7, v4, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v6, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-static {p1, v0}, Lq3/a;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/r;
    .locals 1

    sget-object v0, Lcom/miui/apppredict/view/BlurView;->o:Lcom/miui/blur/sdk/backdrop/r;

    return-object v0
.end method

.method public getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/r;
    .locals 1

    sget-object v0, Lcom/miui/apppredict/view/BlurView;->o:Lcom/miui/blur/sdk/backdrop/r;

    return-object v0
.end method

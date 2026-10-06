.class public Lcom/miui/blur/sdk/backdrop/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Outline;

.field private final c:Landroid/graphics/Rect;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/q;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iput-object v1, p0, Lcom/miui/blur/sdk/backdrop/q;->b:Landroid/graphics/Outline;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/blur/sdk/backdrop/q;->c:Landroid/graphics/Rect;

    sget-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->b:Z

    iput-boolean v1, p0, Lcom/miui/blur/sdk/backdrop/q;->d:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 11

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/r;->d()[Lcom/miui/blur/sdk/backdrop/r$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget v4, v3, Lcom/miui/blur/sdk/backdrop/r$a;->a:I

    iget-object v3, v3, Lcom/miui/blur/sdk/backdrop/r$a;->b:Landroid/graphics/BlendMode;

    invoke-direct {p0, v4, v3}, Lcom/miui/blur/sdk/backdrop/q;->f(ILandroid/graphics/BlendMode;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    move-result v3

    int-to-float v8, v3

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    move-result v3

    int-to-float v9, v3

    iget-object v10, p0, Lcom/miui/blur/sdk/backdrop/q;->a:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 4

    invoke-interface {p3}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/blur/sdk/backdrop/r;->d()[Lcom/miui/blur/sdk/backdrop/r$a;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    iget v3, v2, Lcom/miui/blur/sdk/backdrop/r$a;->a:I

    iget-object v2, v2, Lcom/miui/blur/sdk/backdrop/r$a;->b:Landroid/graphics/BlendMode;

    invoke-direct {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/q;->f(ILandroid/graphics/BlendMode;)V

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/q;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 11

    invoke-interface {p4}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/blur/sdk/backdrop/r;->d()[Lcom/miui/blur/sdk/backdrop/r$a;

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    iget v3, v2, Lcom/miui/blur/sdk/backdrop/r$a;->a:I

    iget-object v2, v2, Lcom/miui/blur/sdk/backdrop/r$a;->b:Landroid/graphics/BlendMode;

    invoke-direct {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/q;->f(ILandroid/graphics/BlendMode;)V

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v10, p0, Lcom/miui/blur/sdk/backdrop/q;->a:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, p3

    move v9, p3

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(ILandroid/graphics/BlendMode;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/q;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/q;->a:Landroid/graphics/Paint;

    invoke-static {p1, p2}, Lcom/miui/blur/sdk/backdrop/g;->a(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;F)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/q;->d:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/r;->d()[Lcom/miui/blur/sdk/backdrop/r$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/q;->b:Landroid/graphics/Outline;

    invoke-interface {p2, v0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurOutline(Landroid/graphics/Outline;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/q;->b:Landroid/graphics/Outline;

    iget v0, v0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p3, p0, Lcom/miui/blur/sdk/backdrop/q;->b:Landroid/graphics/Outline;

    iget-object p3, p3, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/blur/sdk/backdrop/q;->c(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/q;->b:Landroid/graphics/Outline;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/q;->c:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/backdrop/e;->a(Landroid/graphics/Outline;Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/q;->c:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/miui/blur/sdk/backdrop/q;->d(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/q;->b(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/blur/sdk/backdrop/q;->d:Z

    return-void
.end method

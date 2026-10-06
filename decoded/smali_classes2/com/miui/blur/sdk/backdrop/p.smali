.class Lcom/miui/blur/sdk/backdrop/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/blur/sdk/backdrop/p$a;
    }
.end annotation


# static fields
.field private static final s:Lcom/miui/blur/sdk/backdrop/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/blur/sdk/backdrop/s<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final t:I


# instance fields
.field private final a:Landroid/view/ViewRootImpl;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/renderscript/RenderScript;

.field private final f:Landroid/renderscript/ScriptIntrinsicBlur;

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/graphics/Outline;

.field private final i:Ljava/lang/Object;

.field private final j:[I

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Point;

.field private m:Lcom/miui/blur/sdk/backdrop/p$a;

.field private n:F

.field private o:F

.field private p:Z

.field private final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/blur/sdk/backdrop/s;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/miui/blur/sdk/backdrop/s;-><init>(I)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/p;->s:Lcom/miui/blur/sdk/backdrop/s;

    sget-object v0, Lcom/miui/blur/sdk/backdrop/r;->f:Lcom/miui/blur/sdk/backdrop/r;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/r;->c()I

    move-result v0

    sput v0, Lcom/miui/blur/sdk/backdrop/p;->t:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewRootImpl;Landroid/renderscript/RenderScript;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/blur/sdk/backdrop/p;->d:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->h:Landroid/graphics/Outline;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->i:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->j:[I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->k:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->l:Landroid/graphics/Point;

    sget v2, Lcom/miui/blur/sdk/backdrop/p;->t:I

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/blur/sdk/backdrop/p;->o:F

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->q:Ljava/util/Set;

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/p;->a:Landroid/view/ViewRootImpl;

    iput-object p4, p0, Lcom/miui/blur/sdk/backdrop/p;->g:Landroid/os/Handler;

    iput-object p3, p0, Lcom/miui/blur/sdk/backdrop/p;->e:Landroid/renderscript/RenderScript;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {p3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->f:Landroid/renderscript/ScriptIntrinsicBlur;

    iget p2, p0, Lcom/miui/blur/sdk/backdrop/p;->o:F

    invoke-virtual {p1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/p;->o(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/miui/blur/sdk/backdrop/p;Landroid/graphics/GraphicBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/p;->p(Landroid/graphics/GraphicBuffer;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/blur/sdk/backdrop/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/p;->n()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->q:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/miui/blur/sdk/backdrop/j;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/j;-><init>()V

    invoke-static {v1, v0}, Lcom/miui/blur/sdk/backdrop/h;->a(Ljava/util/Set;Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private g(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 11

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/miui/blur/sdk/backdrop/p;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

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

    invoke-direct {p0, v4, v3}, Lcom/miui/blur/sdk/backdrop/p;->s(ILandroid/graphics/BlendMode;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    move-result v3

    int-to-float v8, v3

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    move-result v3

    int-to-float v9, v3

    iget-object v10, p0, Lcom/miui/blur/sdk/backdrop/p;->d:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

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

    invoke-direct {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/p;->s(ILandroid/graphics/BlendMode;)V

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 11

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v8, p0, Lcom/miui/blur/sdk/backdrop/p;->c:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, p3

    move v7, p3

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

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

    invoke-direct {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/p;->s(ILandroid/graphics/BlendMode;)V

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v10, p0, Lcom/miui/blur/sdk/backdrop/p;->d:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, p3

    move v9, p3

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(Landroid/graphics/GraphicBuffer;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/miui/blur/sdk/backdrop/p$a;

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->e:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/p;->f:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/miui/blur/sdk/backdrop/p$a;-><init>(IILandroid/renderscript/RenderScript;Landroid/renderscript/ScriptIntrinsicBlur;)V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->c:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/p$a;->c(Lcom/miui/blur/sdk/backdrop/p$a;)Landroid/graphics/BitmapShader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->b:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->l:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    :goto_0
    int-to-float p1, p1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/p$a;->a(Lcom/miui/blur/sdk/backdrop/p$a;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/p;->n:F

    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->q:Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/d;->a(Ljava/util/Set;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/blur/sdk/backdrop/o;

    invoke-direct {v1}, Lcom/miui/blur/sdk/backdrop/o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    sget v1, Lcom/miui/blur/sdk/backdrop/p;->t:I

    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/blur/sdk/backdrop/p;->o:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/p;->o:F

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p;->f:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    :cond_0
    return-void
.end method

.method private l(Landroid/graphics/GraphicBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/p$a;->a(Lcom/miui/blur/sdk/backdrop/p$a;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/p$a;->b(Lcom/miui/blur/sdk/backdrop/p$a;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p1

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/k;

    invoke-direct {v1, p1}, Lcom/miui/blur/sdk/backdrop/k;-><init>(Lcom/miui/blur/sdk/backdrop/p$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    :cond_1
    return-void
.end method

.method private synthetic n()V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/p$a;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    :cond_0
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->f:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method private static synthetic o(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)I
    .locals 0

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/r;->c()I

    move-result p0

    return p0
.end method

.method private synthetic p(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/p;->p:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/p;->q(Landroid/graphics/GraphicBuffer;)V

    :cond_0
    return-void
.end method

.method private q(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/p;->l(Landroid/graphics/GraphicBuffer;)V

    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/p;->j(Landroid/graphics/GraphicBuffer;)V

    const-string v0, "attachAndProcessBuffer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/p$a;->d(Landroid/graphics/GraphicBuffer;)V

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    invoke-virtual {p1}, Lcom/miui/blur/sdk/backdrop/p$a;->e()V

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/p;->d()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private s(ILandroid/graphics/BlendMode;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->d:Landroid/graphics/Paint;

    invoke-static {p1, p2}, Lcom/miui/blur/sdk/backdrop/g;->a(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    return-void
.end method

.method private v(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;Lcom/miui/blur/sdk/backdrop/p$a;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/p;->j:[I

    invoke-interface {p1, v3}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/p;->j:[I

    aget v2, p1, v2

    aget p1, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/miui/blur/sdk/backdrop/p;->n:F

    div-float/2addr v1, v3

    sget-object v3, Lcom/miui/blur/sdk/backdrop/p;->s:Lcom/miui/blur/sdk/backdrop/s;

    invoke-virtual {v3}, Lcom/miui/blur/sdk/backdrop/s;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p2}, Lcom/miui/blur/sdk/backdrop/p$a;->a(Lcom/miui/blur/sdk/backdrop/p$a;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {p2}, Lcom/miui/blur/sdk/backdrop/p$a;->b(Lcom/miui/blur/sdk/backdrop/p$a;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v4, v0, v5, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4, v1, v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    neg-int v0, v2

    int-to-float v0, v0

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v4, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v4}, Lcom/miui/blur/sdk/backdrop/s;->c(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/miui/blur/sdk/backdrop/p$a;->c(Lcom/miui/blur/sdk/backdrop/p$a;)Landroid/graphics/BitmapShader;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method e()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/p;->p:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p;->a:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurLayerHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->r:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/view/MiuiCompositionSamplingListener;->unregister(Landroid/view/MiuiCompositionSamplingListener;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->r:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->b(Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->r:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    :cond_0
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->g:Landroid/os/Handler;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/n;

    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/backdrop/n;-><init>(Lcom/miui/blur/sdk/backdrop/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->m:Lcom/miui/blur/sdk/backdrop/p$a;

    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/miui/blur/sdk/backdrop/p;->v(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;Lcom/miui/blur/sdk/backdrop/p$a;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->h:Landroid/graphics/Outline;

    invoke-interface {p2, v0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurOutline(Landroid/graphics/Outline;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->h:Landroid/graphics/Outline;

    iget v0, v0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->h:Landroid/graphics/Outline;

    iget-object v0, v0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/blur/sdk/backdrop/p;->h(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->h:Landroid/graphics/Outline;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p;->k:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/backdrop/e;->a(Landroid/graphics/Outline;Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->k:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p;->h:Landroid/graphics/Outline;

    invoke-static {v1}, Lcom/miui/blur/sdk/backdrop/f;->a(Landroid/graphics/Outline;)F

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/blur/sdk/backdrop/p;->i(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/p;->g(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method m()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method r(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p;->q:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/p;->k()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method t()V
    .locals 5

    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->a()Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->r:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/l;

    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/backdrop/l;-><init>(Lcom/miui/blur/sdk/backdrop/p;)V

    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->d(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->q:Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/d;->a(Ljava/util/Set;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/blur/sdk/backdrop/m;

    invoke-direct {v1}, Lcom/miui/blur/sdk/backdrop/m;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    const v1, 0x1312d00

    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/p;->a:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlurLayerHolder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p;->a:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getSurfaceControl"

    invoke-static {v1, v4, v3}, Lcom/miui/blur/sdk/backdrop/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/p;->a:Landroid/view/ViewRootImpl;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/view/SurfaceControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/p;->r:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    check-cast v1, Landroid/view/SurfaceControl;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v2, v1, v4, v0}, Landroid/view/MiuiCompositionSamplingListener;->register(Landroid/view/MiuiCompositionSamplingListener;ILandroid/view/SurfaceControl;FI)V

    :cond_0
    return-void
.end method

.method u(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/p;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/p;->q:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/p;->k()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.class public final Lcom/miui/gamebooster/framerate/FrameRateView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/framerate/FrameRateView$a;,
        Lcom/miui/gamebooster/framerate/FrameRateView$b;,
        Lcom/miui/gamebooster/framerate/FrameRateView$c;,
        Lcom/miui/gamebooster/framerate/FrameRateView$d;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFrameRateView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameRateView.kt\ncom/miui/gamebooster/framerate/FrameRateView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,331:1\n1855#2,2:332\n2645#2:341\n1864#2,3:343\n13674#3,3:334\n76#4,4:337\n1#5:342\n*S KotlinDebug\n*F\n+ 1 FrameRateView.kt\ncom/miui/gamebooster/framerate/FrameRateView\n*L\n171#1:332,2\n261#1:341\n261#1:343,3\n201#1:334,3\n213#1:337,4\n261#1:342\n*E\n"
    }
.end annotation


# static fields
.field public static final t:Lcom/miui/gamebooster/framerate/FrameRateView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private portNoData:Z
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcom/miui/gamebooster/framerate/FrameRateView$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Lcom/miui/gamebooster/framerate/FrameRateView$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lak/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/q<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:F

.field private final o:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final q:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final s:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/framerate/FrameRateView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/framerate/FrameRateView$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/framerate/FrameRateView;->t:Lcom/miui/gamebooster/framerate/FrameRateView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/framerate/FrameRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->e:Landroid/graphics/Path;

    sget-object p3, Lcom/miui/gamebooster/framerate/FrameRateView$c;->a:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    iput-object p3, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->f:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    sget-object p3, Lcom/miui/gamebooster/framerate/FrameRateView$b;->d:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    iput-object p3, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->m:Landroid/util/SparseArray;

    sget-object p3, Lef/y;->m1:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_0

    const p3, 0x7f070eae

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->a:I

    const/4 p2, 0x2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eqz p3, :cond_1

    const p4, 0x7f070eaf

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_2

    const p3, 0x7f070ead

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->c:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lcom/miui/gamebooster/framerate/FrameRateView$e;->a:Lcom/miui/gamebooster/framerate/FrameRateView$e;

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->o:Loj/f;

    new-instance p1, Lcom/miui/gamebooster/framerate/FrameRateView$i;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/framerate/FrameRateView$i;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->p:Loj/f;

    new-instance p1, Lcom/miui/gamebooster/framerate/FrameRateView$h;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/framerate/FrameRateView$h;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->q:Loj/f;

    new-instance p1, Lcom/miui/gamebooster/framerate/FrameRateView$f;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/framerate/FrameRateView$f;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->r:Loj/f;

    new-instance p1, Lcom/miui/gamebooster/framerate/FrameRateView$g;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/framerate/FrameRateView$g;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->s:Loj/f;

    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->portNoData:Z
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILbk/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/framerate/FrameRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/framerate/FrameRateView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->l(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    return-void
.end method

.method public static final synthetic b(Lcom/miui/gamebooster/framerate/FrameRateView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->b:I

    return p0
.end method

.method public static final synthetic c(Lcom/miui/gamebooster/framerate/FrameRateView;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getTextAreaWidth()I

    move-result p0

    return p0
.end method

.method private final e()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FrameRateView\'s status is not thread-safe, public method must be called on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final f(IIF)Landroid/graphics/PointF;
    .locals 1

    int-to-float p2, p2

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getCoordinatorSizeX()F

    move-result v0

    mul-float/2addr p2, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/framerate/FrameRateView;->h(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/framerate/FrameRateView;->i(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/framerate/FrameRateView;->i(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result p1

    :cond_0
    mul-float/2addr p1, p3

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method

.method private final getCoordinatorSizeX()F
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->n:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getTextAreaWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0xf0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->n:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textAreaWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getTextAreaWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", innerPadding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MAX_FRAME_RATE_DATA_COUNT = 240"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameRateView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->n:F

    return v0
.end method

.method private final getLinePaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->o:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getScaleTextX()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->r:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getScaleTextYArray()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->s:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private final getTextAreaWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->q:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->p:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final j()Landroid/graphics/Path;
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/framerate/FrameRateView;->i(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lqj/l;->n()V

    :cond_0
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v3, v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->f(IIF)Landroid/graphics/PointF;

    move-result-object v4

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v4

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_1
    iget v3, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v4

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    move v3, v5

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final k()V
    .locals 1

    new-instance v0, Ls6/a;

    invoke-direct {v0, p0}, Ls6/a;-><init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    iput-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private static final l(Lcom/miui/gamebooster/framerate/FrameRateView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->n()V

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->m()V

    return-void
.end method

.method private final m()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->f:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0805e3

    goto :goto_0

    :cond_0
    const v0, 0x7f0805e4

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->j:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->k:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->k:Landroid/graphics/Rect;

    :cond_1
    iput-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->j:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final n()V
    .locals 12

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->f:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "#FF001F"

    goto :goto_0

    :cond_0
    const-string v0, "#FF001F"

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getCoordinatorSizeX()F

    move-result v6

    mul-float/2addr v6, v3

    const/4 v7, 0x0

    const/4 v3, 0x2

    new-array v8, v3, [I

    const/4 v3, 0x0

    aput v3, v8, v3

    aput v0, v8, v1

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->c:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private final o(I)V
    .locals 4

    int-to-float v0, p1

    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$b;->e:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->g(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v2

    const/4 v3, 0x5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$b;->d:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->g(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v2

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->g(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v2

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$b;->c:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->g(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v2

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->g(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v2

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/miui/gamebooster/framerate/FrameRateView$b;->b:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/framerate/FrameRateView;->g(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v2

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avgFrameRate is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newScaleMode is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", oldScaleMode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameRateView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    if-ne v1, p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchScaleMode from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final varargs d([I)V
    .locals 7
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "frameRates"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1
    if-eqz v0, :port_input_done
    const/4 v0, 0x0
    aget v0, p1, v0
    if-gez v0, :port_real_data
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->portNoData:Z
    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->i:Lak/q;
    if-eqz v0, :port_no_listener
    const/4 v1, -0x1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface {v0, v1, v1, v1}, Lak/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :port_no_listener
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :port_input_done
    return-void
    :port_real_data
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->portNoData:Z
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->e()V

    array-length v0, p1

    const-string v3, "frameRateList[frameRateList.size - 1]"

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lqj/f;->u([II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lqj/l;->v(Ljava/lang/Iterable;)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/framerate/FrameRateView;->o(I)V

    array-length v0, p1

    sub-int/2addr v0, v2

    aget v0, p1, v0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    aget v4, p1, v4

    :goto_1
    sub-int/2addr v0, v4

    goto :goto_2

    :cond_2
    aget v0, p1, v1

    iget-object v4, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lqj/l;->N(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lqj/l;->H(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lqj/l;->v(Ljava/lang/Iterable;)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/miui/gamebooster/framerate/FrameRateView;->o(I)V

    iget-object v4, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_1

    :goto_2
    const/16 v4, 0xf0

    invoke-static {p1, v4}, Lqj/f;->u([II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_4

    iget-object v5, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->i:Lak/q;

    if-eqz p1, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lqj/l;->v(Ljava/lang/Iterable;)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1, v2}, Lak/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->n()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F
    .locals 1
    .param p1    # Lcom/miui/gamebooster/framerate/FrameRateView$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/framerate/FrameRateView$b;->b()[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    int-to-float p1, p1

    return p1
.end method

.method public final getFrameRateChangeListener()Lak/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lak/q<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->i:Lak/q;

    return-object v0
.end method

.method public final h(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F
    .locals 1
    .param p1    # Lcom/miui/gamebooster/framerate/FrameRateView$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/framerate/FrameRateView$b;->b()[I

    move-result-object p1

    const/4 v0, 0x2

    aget p1, p1, v0

    int-to-float p1, p1

    return p1
.end method

.method public final i(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F
    .locals 1
    .param p1    # Lcom/miui/gamebooster/framerate/FrameRateView$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/framerate/FrameRateView;->g(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/framerate/FrameRateView;->h(Lcom/miui/gamebooster/framerate/FrameRateView$b;)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->k()V

    const-string v0, "FrameRateView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    const-string v0, "FrameRateView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->m:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->j:Landroid/graphics/Bitmap;

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
    iget-boolean v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->portNoData:Z
    if-eqz v0, :port_draw_ready
    const-string v1, "暂无 FPS 数据"
    const/high16 v2, 0x41400000
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I
    move-result v3
    int-to-float v3, v3
    const/high16 v4, 0x40000000
    div-float/2addr v3, v4
    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getTextPaint()Landroid/graphics/Paint;
    move-result-object v4
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    return-void
    :port_draw_ready


    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->h:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    sget-object v1, Loj/t;->a:Loj/t;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->h:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->j:Landroid/graphics/Bitmap;
    if-eqz v1, :port_draw_wait
    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->l:Landroid/graphics/Rect;
    if-nez v2, :port_bitmap_ready
    :port_draw_wait
    return-void
    :port_bitmap_ready


    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->k:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->l:Landroid/graphics/Rect;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->j()Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getLinePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->g:Lcom/miui/gamebooster/framerate/FrameRateView$b;

    invoke-virtual {v1}, Lcom/miui/gamebooster/framerate/FrameRateView$b;->b()[I

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v4, v1, v0

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getScaleTextX()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getScaleTextYArray()[I

    move-result-object v7

    aget v3, v7, v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->l:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->getTextAreaWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->a:I

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->l:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public final p(Lcom/miui/gamebooster/framerate/FrameRateView$c;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/framerate/FrameRateView$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "styleMode"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->e()V

    iget-object v0, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->f:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->f:Lcom/miui/gamebooster/framerate/FrameRateView$c;

    invoke-direct {p0}, Lcom/miui/gamebooster/framerate/FrameRateView;->k()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFrameRateChangeListener(Lak/q;)V
    .locals 0
    .param p1    # Lak/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/q<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/gamebooster/framerate/FrameRateView;->i:Lak/q;

    return-void
.end method

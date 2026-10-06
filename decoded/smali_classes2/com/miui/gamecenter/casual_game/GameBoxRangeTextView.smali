.class public final Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
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

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iput-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->b:Ljava/lang/String;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILbk/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IIFF)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->h:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->i:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    iput p4, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->e:F

    iput p5, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->f:F

    iget-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    iget-object p4, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    const/4 p5, 0x0

    invoke-virtual {p2, p1, p5, p3, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->g:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->h:Ljava/lang/String;

    iget v1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->d:F

    iget-object v2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->i:Ljava/lang/String;

    iget v1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->g:F

    iget v2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->d:F

    iget-object v3, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->f:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float p1, p2, p1

    const/4 v0, 0x2

    int-to-float v1, v0

    div-float/2addr p1, v1

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->c:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/2addr p2, v0

    int-to-float p2, p2

    add-float/2addr p2, p1

    iput p2, p0, Lcom/miui/gamecenter/casual_game/GameBoxRangeTextView;->d:F

    return-void
.end method

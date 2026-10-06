.class public Lcom/miui/networkassistant/ui/view/RoundImageView;
.super Lcom/miui/securitycenter/ad/view/AdImageView;
.source "SourceFile"


# instance fields
.field private needStat:Z

.field private radius:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/securitycenter/ad/view/AdImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lef/y;->D3:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/miui/networkassistant/ui/view/RoundImageView;->needStat:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    new-array p1, p1, [F

    aput v0, p1, v6

    aput v0, p1, v5

    aput v2, p1, p2

    aput v2, p1, v3

    aput v4, p1, v1

    const/4 p2, 0x5

    aput v4, p1, p2

    const/4 p2, 0x6

    aput p3, p1, p2

    const/4 p2, 0x7

    aput p3, p1, p2

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/RoundImageView;->radius:[F

    return-void
.end method


# virtual methods
.method public needStat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/RoundImageView;->needStat:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/RoundImageView;->radius:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

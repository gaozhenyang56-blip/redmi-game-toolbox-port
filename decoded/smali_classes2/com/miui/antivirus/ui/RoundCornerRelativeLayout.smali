.class public Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final d:[I


# instance fields
.field private a:[F

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040657

    aput v2, v0, v1

    sput-object v0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->c:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->d:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    new-array p1, p1, [F

    aput p2, p1, v1

    const/4 p3, 0x1

    aput p2, p1, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    const/4 p3, 0x3

    aput p2, p1, p3

    const/4 p3, 0x4

    aput p2, p1, p3

    const/4 p3, 0x5

    aput p2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    const/4 p3, 0x7

    aput p2, p1, p3

    iput-object p1, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->a:[F

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->a:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/RoundCornerRelativeLayout;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

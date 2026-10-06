.class public Lmiuix/bottomsheet/BottomSheetView$b;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/bottomsheet/BottomSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    iput p1, p0, Lmiuix/bottomsheet/BottomSheetView$b;->a:F

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Path;
    .locals 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/16 v2, 0x8

    new-array v2, v2, [F

    iget v3, p0, Lmiuix/bottomsheet/BottomSheetView$b;->a:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v5, 0x2

    aput v3, v2, v5

    const/4 v5, 0x3

    aput v3, v2, v5

    const/4 v3, 0x4

    const/4 v5, 0x0

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v5, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v1, v1

    int-to-float p1, p1

    invoke-direct {v3, v4, v4, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v2, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-object v0
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetView$b;->a(Landroid/view/View;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method

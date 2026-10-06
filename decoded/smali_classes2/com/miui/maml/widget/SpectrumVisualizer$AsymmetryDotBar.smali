.class Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 13

    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-float v2, v1

    iget-object v3, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    aget v3, v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    iget v9, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v3, v9

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    mul-int v8, v2, v9

    if-ge v8, v1, :cond_0

    iget-object v4, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    mul-int v5, v9, v8

    mul-int v7, v9, p2

    sub-int v10, v1, v8

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v6, v9

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

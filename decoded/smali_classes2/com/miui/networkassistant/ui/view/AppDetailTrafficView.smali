.class public Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;
    }
.end annotation


# static fields
.field public static final DAY_TYPE:I = 0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0xc

.field public static final HOUR_TYPE:I = 0x0

.field private static final LINE_X_HOUR:I

.field private static final LINE_Y:I = 0x6

.field private static final PLAS_PERCENT:I = 0x4

.field private static final PLAS_SPACE_PERCENT:I = 0x3

.field private static final PLAS_TOTAL:I = 0x7

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_END:Ljava/lang/String; = "24:00"

.field private static final TEXT_START:Ljava/lang/String; = "0:00"

.field private static final TOP_MARGIN:I = 0xc

.field private static final X_AXIS_MARGIN:I = 0xf

.field private static final X_AXIS_TEXT_Y_OFFSET:I = 0x2

.field private static final Y_AXIS_MARGIN:I = 0x12


# instance fields
.field private height:F

.field lastX:F

.field private mChartDragListener:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;

.field private mDashPaint:Landroid/graphics/Paint;

.field private mData:[J

.field private mDataHeight:[F

.field private mDensity:F

.field private mEndTimeTxt:Ljava/lang/String;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mFocus:I

.field private mHighLightPaint:Landroid/graphics/Paint;

.field private mMaxValue:J

.field private mRoundRectSize:F

.field private mStartTimeTxt:Ljava/lang/String;

.field private mTextColor:I

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mTextWidth:F

.field private mTopMargin:F

.field private mType:I

.field private mXAxisMargin:F

.field private mXTextMaxWidth:F

.field private mXValueTexts:[Ljava/lang/String;

.field private mXValues:[J

.field private mYAxisMargin:F

.field private plasWidth:F

.field private stepWidth:F

.field private textY:F

.field private validHeight:F

.field private width:F

.field private x:F

.field private xLineSize:I

.field private xStep:F

.field private y:F

.field private yStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->TAG:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    :goto_0
    sput v0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->LINE_X_HOUR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFocus:I

    sget p1, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->LINE_X_HOUR:I

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->xLineSize:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFocus:I

    sget p1, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->LINE_X_HOUR:I

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->xLineSize:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFocus:I

    sget p1, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->LINE_X_HOUR:I

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->xLineSize:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->init()V

    return-void
.end method

.method private checkFocus(FFFF)V
    .locals 3

    iget p3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    sub-float/2addr p1, p3

    const/4 p3, 0x0

    :goto_0
    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->xLineSize:I

    if-ge p3, v0, :cond_4

    int-to-float v0, p3

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->stepWidth:F

    mul-float v2, v0, v1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpg-float v1, p1, v2

    if-gez v1, :cond_3

    iget p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFocus:I

    if-ne p1, p3, :cond_0

    return-void

    :cond_0
    iput p3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFocus:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->stepWidth:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    add-float/2addr v1, v2

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mType:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->plasWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    :goto_1
    add-float/2addr v1, v0

    sub-float/2addr p4, p2

    iget p2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->height:F

    add-float/2addr p4, p2

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDataHeight:[F

    aget p2, p2, p3

    sub-float/2addr p4, p2

    invoke-interface {p1, v1, p4, p3}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;->onDragStart(FFI)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private dividerX()V
    .locals 9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValues:[J

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValueTexts:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValues:[J

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValues:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    int-to-long v5, v1

    iget-wide v7, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mMaxValue:J

    mul-long/2addr v5, v7

    array-length v3, v2

    sub-int/2addr v3, v4

    int-to-long v3, v3

    div-long/2addr v5, v3

    aput-wide v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42180000    # 38.0f

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDensity:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXTextMaxWidth:F

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValueTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    int-to-long v2, v1

    iget-wide v5, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mMaxValue:J

    mul-long/2addr v2, v5

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatMaxBytes(J)J

    move-result-wide v5

    long-to-float v3, v5

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValues:[J

    array-length v3, v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValueTexts:[Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v0

    const-string v2, "%.01f"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValueTexts:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXTextMaxWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    iput v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXTextMaxWidth:F

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private drawAxes(Landroid/graphics/Canvas;)V
    .locals 9

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    iget v4, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->y:F

    iget v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->width:F

    iget-object v5, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDashPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->textY:F

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "0:00"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->width:F

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->textY:F

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "24:00"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mData:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mStartTimeTxt:Ljava/lang/String;

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->textY:F

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mData:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->stepWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mEndTimeTxt:Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->textY:F

    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-gt v0, v1, :cond_4

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->y:F

    int-to-float v2, v0

    iget v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->yStep:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    iget v6, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->width:F

    iget-object v8, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDashPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXValueTexts:[Ljava/lang/String;

    if-eqz v2, :cond_3

    aget-object v2, v2, v0

    iget v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    iget v4, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mYAxisMargin:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    iget v4, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDensity:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private drawBarChart(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mData:[J

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mData:[J

    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDataHeight:[F

    long-to-float v2, v2

    iget v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->validHeight:F

    mul-float/2addr v2, v3

    iget-wide v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mMaxValue:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    aput v2, v1, v0

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    int-to-float v3, v0

    iget v4, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->stepWidth:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iget v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFocus:I

    if-eq v0, v3, :cond_3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mHighLightPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFillPaint:Landroid/graphics/Paint;

    :goto_3
    iget v8, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->y:F

    sub-float v6, v8, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->plasWidth:F

    add-float v7, v1, v2

    iget v10, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mRoundRectSize:F

    move-object v4, p1

    move v5, v1

    move v9, v10

    move-object v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v8, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->y:F

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mRoundRectSize:F

    sub-float v6, v8, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->plasWidth:F

    add-float v7, v1, v2

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static getMaxValue([J)J
    .locals 7

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    aget-wide v1, p0, v1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-wide v4, p0, v3

    cmp-long v6, v4, v1

    if-lez v6, :cond_1

    move-wide v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private init()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060b2a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setTextColor(I)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->setTextSize(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "0:00"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextWidth:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDashPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFillPaint:Landroid/graphics/Paint;

    const v2, -0xff6601

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mHighLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mHighLightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mHighLightPaint:Landroid/graphics/Paint;

    const v1, 0x330099ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDensity:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTopMargin:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mRoundRectSize:F

    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mYAxisMargin:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXAxisMargin:F

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private initValue()V
    .locals 5

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXTextMaxWidth:F

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mYAxisMargin:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->x:F

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->height:F

    iget v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextHeight:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mXAxisMargin:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->y:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->textY:F

    iget v1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTopMargin:F

    sub-float v3, v2, v1

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->yStep:F

    iget v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->width:F

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->xLineSize:I

    mul-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    div-float/2addr v3, v0

    iput v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->xStep:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->validHeight:F

    const/high16 v0, 0x40e00000    # 7.0f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->stepWidth:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->plasWidth:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->drawAxes(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->drawBarChart(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->width:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->height:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mFocus:I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;->onDragEnd()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->lastX:F

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->checkFocus(FFFF)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public setChartDragListener(Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/AppDetailTrafficView$ChartDragListener;

    return-void
.end method

.method public setData([JI)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->TAG:Ljava/lang/String;

    const-string p2, "AppDetailTrafficView.java: data is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mData:[J

    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mDataHeight:[F

    iput p2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mType:I

    if-nez p2, :cond_1

    sget p2, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->LINE_X_HOUR:I

    goto :goto_0

    :cond_1
    array-length p2, p1

    :goto_0
    iput p2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->xLineSize:I

    invoke-static {p1}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->getMaxValue([J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mMaxValue:J

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->dividerX()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->initValue()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDurations(JJ)V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x2

    new-array p2, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, p2, v3

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v2

    const-string v4, "%d-%d"

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mStartTimeTxt:Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-array p2, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mEndTimeTxt:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextColor:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextSize:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AppDetailTrafficView;->mTextHeight:F

    :cond_1
    return-void
.end method

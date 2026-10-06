.class public Lcom/miui/networkassistant/ui/view/TrafficDetailView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;
    }
.end annotation


# static fields
.field public static final DAY_TYPE:I = 0x1

.field private static final DEFAULT_TEXT_SIZE:I = 0xc

.field public static final HOUR_TYPE:I = 0x0

.field private static final LINE:I = 0x5

.field private static final PLAS_PERCENT:I = 0x2

.field private static final PLAS_SPACE_PERCENT:I = 0x1

.field private static final PLAS_TOTAL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TrafficDetailView"

.field private static final TOP_MARGIN:I = 0xc

.field private static final X_AXIS_MARGIN:I = 0x3

.field private static final X_AXIS_TEXT_Y_OFFSET:I = 0x2

.field private static final Y_AXIS_MARGIN:I = 0x3


# instance fields
.field private invalid:Z

.field private mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

.field private mDashPaint:Landroid/graphics/Paint;

.field private mData:[J

.field private mDensity:F

.field private mEndTimeTxt:Ljava/lang/String;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mHighLightPaint:Landroid/graphics/Paint;

.field private mIsDragging:Z

.field private mLocation:[I

.field private mMaxValue:J

.field private mMonthMaxDay:I

.field private mPlasWidth:F

.field private mPoints:[F

.field private mScaledTouchSlop:I

.field private mStartTimeTxt:Ljava/lang/String;

.field private mTextColor:I

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mTopMargin:F

.field private mTouch:I

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mType:I

.field private mXAxisMargin:F

.field private mXTextMaxWidth:F

.field private mXValueTexts:[Ljava/lang/String;

.field private mXValues:[J

.field private mYAxisMargin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private dividerX()V
    .locals 9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    aput-wide v3, v0, v2

    const/4 v2, 0x4

    const-wide/16 v5, 0x4

    mul-long/2addr v5, v3

    const-wide/16 v7, 0x5

    div-long/2addr v5, v7

    aput-wide v5, v0, v2

    const/4 v2, 0x3

    const-wide/16 v5, 0x3

    mul-long/2addr v5, v3

    div-long/2addr v5, v7

    aput-wide v5, v0, v2

    const/4 v2, 0x2

    const-wide/16 v5, 0x2

    mul-long/2addr v5, v3

    div-long/2addr v5, v7

    aput-wide v5, v0, v2

    div-long v5, v3, v7

    const/4 v2, 0x1

    aput-wide v5, v0, v2

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    aput-wide v5, v0, v2

    invoke-static {v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatMaxBytes(J)J

    move-result-wide v3

    const/high16 v0, 0x42180000    # 38.0f

    iget v5, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDensity:F

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXTextMaxWidth:F

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValues:[J

    aget-wide v7, v6, v2

    invoke-static {v5, v7, v8, v3, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatUniteUnit(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v5, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXTextMaxWidth:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXTextMaxWidth:F

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
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

.method private init(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getActualMaxDayOfMonth()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMonthMaxDay:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x66000000

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->setTextColor(I)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->setTextSize(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x66ff0000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mFillPaint:Landroid/graphics/Paint;

    const v1, -0x4f1f01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mHighLightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mHighLightPaint:Landroid/graphics/Paint;

    const v1, -0xb04401

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDensity:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTopMargin:F

    const/16 v0, 0x1f

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mScaledTouchSlop:I

    iget p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDensity:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v1, p1, v0

    iput v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mYAxisMargin:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXAxisMargin:F

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private rectContains(FF)I
    .locals 3

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    aget v1, v1, v0

    sub-float v1, p1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPlasWidth:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXTextMaxWidth:F

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mYAxisMargin:F

    add-float v10, v1, v2

    int-to-float v1, v9

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextHeight:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXAxisMargin:F

    sub-float/2addr v1, v2

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v12, v1, v11

    int-to-float v13, v8

    iget-object v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v12

    move v4, v13

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mType:I

    if-nez v1, :cond_1

    add-int/lit8 v1, v9, -0x2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "0:00"

    invoke-virtual {v7, v3, v10, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mStartTimeTxt:Ljava/lang/String;

    add-int/lit8 v2, v9, -0x2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v10, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    iget v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTopMargin:F

    sub-float v1, v12, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v14, v1, v2

    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v15

    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move v1, v12

    const/4 v5, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v5, v2, :cond_2

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mYAxisMargin:F

    sub-float v3, v10, v3

    iget v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextHeight:F

    div-float/2addr v4, v11

    add-float/2addr v4, v1

    iget-object v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sub-float v17, v1, v14

    iget-object v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mDashPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, v17

    move v4, v13

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v1, v17

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mXValueTexts:[Ljava/lang/String;

    aget-object v2, v3, v2

    iget v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mYAxisMargin:F

    sub-float v3, v10, v3

    iget v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextHeight:F

    div-float/2addr v4, v11

    add-float/2addr v1, v4

    iget-object v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mType:I

    if-nez v1, :cond_3

    const/16 v1, 0x18

    goto :goto_2

    :cond_3
    iget v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMonthMaxDay:I

    :goto_2
    move v14, v1

    int-to-double v1, v8

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    float-to-double v3, v10

    sub-double/2addr v1, v3

    double-to-float v1, v1

    mul-int/lit8 v2, v14, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTopMargin:F

    sub-float v8, v12, v2

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    array-length v15, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v16, v1, v2

    mul-float/2addr v1, v11

    iput v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPlasWidth:F

    move v11, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_8

    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    aget-wide v2, v1, v10

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    long-to-float v1, v2

    mul-float/2addr v1, v8

    iget-wide v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    sub-float v3, v12, v1

    iget v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    if-ne v10, v1, :cond_5

    iget v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPlasWidth:F

    add-float v4, v11, v1

    iget-object v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mHighLightPaint:Landroid/graphics/Paint;

    goto :goto_5

    :cond_5
    iget v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPlasWidth:F

    add-float v4, v11, v1

    iget-object v6, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mFillPaint:Landroid/graphics/Paint;

    :goto_5
    move-object/from16 v1, p1

    move v2, v11

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    aput v11, v1, v10

    goto :goto_6

    :cond_6
    iget-boolean v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    aput v11, v1, v10

    :cond_7
    :goto_6
    add-float v11, v11, v16

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mType:I

    if-nez v2, :cond_9

    add-int/lit8 v9, v9, -0x2

    int-to-float v2, v9

    iget-object v3, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    const-string v4, "24:00"

    invoke-virtual {v7, v4, v13, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_9
    cmpl-float v2, v11, v13

    if-lez v2, :cond_a

    goto :goto_7

    :cond_a
    move v13, v11

    :goto_7
    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mEndTimeTxt:Ljava/lang/String;

    add-int/lit8 v9, v9, -0x2

    int-to-float v3, v9

    iget-object v4, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v13, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v11, v13

    :goto_8
    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-boolean v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    if-eqz v1, :cond_c

    move v1, v10

    :goto_9
    if-ge v1, v14, :cond_b

    iget-object v2, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mPoints:[F

    aput v11, v2, v10

    add-float v11, v11, v16

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

    :cond_c
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mIsDragging:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,Y :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TrafficDetailView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, -0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_3

    const/4 v6, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v6, :cond_3

    goto/16 :goto_1

    :cond_1
    const-string v0, "MotionEvent.ACTION_MOVE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mIsDragging:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->rectContains(FF)I

    move-result p1

    iget v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    if-eq p1, v1, :cond_6

    if-eq p1, v5, :cond_6

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-interface {v1, v0, v2, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;->onDragMove(FFI)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mScaledTouchSlop:I

    div-int/2addr v2, v6

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->onStartTrackingTouch()V

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->rectContains(FF)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    if-eq p1, v5, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-interface {v1, v0, v2, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;->onDragStart(FFI)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->onStopTrackingTouch()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;->onDragEnd()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    :cond_5
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRawX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRawY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownY:F

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownX:F

    invoke-direct {p0, v0, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->rectContains(FF)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent mTouch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouch:I

    if-eq p1, v5, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTouchDownX:F

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mLocation:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;->onDragStart(FFI)V

    goto/16 :goto_0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mIsDragging:Z

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v4
.end method

.method public setChartDragListener(Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mChartDragListener:Lcom/miui/networkassistant/ui/view/TrafficDetailView$ChartDragListener;

    return-void
.end method

.method public setData([JI)V
    .locals 2

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mData:[J

    iput p2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mType:I

    invoke-static {p1}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->getMaxValue([J)J

    move-result-wide p1

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mMaxValue:J

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->dividerX()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->invalid:Z

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

    iput-object p2, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mStartTimeTxt:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mEndTimeTxt:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextColor:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextSize:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextSize:I

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextPaint:Landroid/graphics/Paint;

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

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TrafficDetailView;->mTextHeight:F

    :cond_1
    return-void
.end method

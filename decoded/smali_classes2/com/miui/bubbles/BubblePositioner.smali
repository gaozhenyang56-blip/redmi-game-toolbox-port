.class public Lcom/miui/bubbles/BubblePositioner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EDGE_AREA:I = 0x64

.field public static final OUTER_AREA:I = 0x190

.field public static final SLOW_SPEED:I = 0x5dc

.field public static final SPLIT_AREA:I = 0xc8

.field public static final STOP_SPEED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.Positioner"


# instance fields
.field private final mAvailableRegion:Landroid/graphics/Rect;

.field private mBubbleGap:I

.field private final mBubbleRectMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleShownPartSize:I

.field private mBubbleSize:I

.field private final mContext:Landroid/content/Context;

.field private final mFreeformAcessibleRegion:Landroid/graphics/Rect;

.field private final mFreeformRegion:Landroid/graphics/Rect;

.field private mMinBubbleSpace:I

.field private final mScreenRegion:Landroid/graphics/Rect;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mFreeformRegion:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mFreeformAcessibleRegion:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/miui/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getBubbleSpaceMiniGap()I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/BubblePositioner;->mMinBubbleSpace:I

    invoke-static {}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getBubbleGap()I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    invoke-virtual {p0}, Lcom/miui/bubbles/BubblePositioner;->update()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/bubbles/BubblePositioner;->lambda$adjustEdgeToAvoidIntersect$0(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method private calculateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    int-to-float v4, v4

    invoke-static {v4, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    float-to-int p3, p3

    iget-object v3, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-string v5, "MiuiBubbles.Positioner"

    const/high16 v6, 0x40000000    # 2.0f

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_0

    iget-object p3, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    sub-int/2addr p3, v0

    int-to-float p3, p3

    div-float/2addr p3, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateRect: nowGapX = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v1

    add-float/2addr p3, v0

    int-to-float v0, v2

    sub-float/2addr p3, v0

    float-to-int p3, p3

    :cond_0
    iget v0, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_1

    int-to-float v1, p2

    mul-float v2, v0, v6

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float v0, v0

    div-float/2addr v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateRect: nowGapY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    int-to-float v2, p2

    sub-float/2addr v1, v2

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    float-to-int p4, p4

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/n1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int v0, p4, p2

    iget-object v1, p0, Lcom/miui/bubbles/BubblePositioner;->mFreeformAcessibleRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_2

    sub-int p4, v1, p2

    :cond_2
    iget p2, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    add-int v0, p3, p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getFreeFormAccessibleArea()Landroid/graphics/Rect;
    .locals 10

    const-string v0, "MiuiBubbles.Positioner"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :try_start_0
    const-string v2, "android.util.MiuiMultiWindowUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/graphics/Rect;

    const-string v4, "getFreeFormAccessibleArea"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    aput-object v7, v5, v8

    invoke-static {v7}, Lx4/n1;->a(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v2, v3, v4, v6, v5}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreeFormAccessibleArea: rect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getSidebarLineRect(Z)Landroid/graphics/Rect;
    .locals 9

    const-string v0, "MiuiBubbles.Positioner"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/miui/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidebar_bounds"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "l"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    if-ne p1, v8, :cond_2

    const-string p1, "t"

    invoke-virtual {v5, p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "r"

    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v6, p1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "getSidebarLineRect"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSidebarLineRect: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static synthetic lambda$adjustEdgeToAvoidIntersect$0(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public static mergeXY(FF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private outerScreen(FI)Z
    .locals 1

    int-to-float v0, p2

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static scaleCenterHorizontalWidth(Landroid/graphics/Rect;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    add-int/2addr p2, v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static scaleSizeCenter(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr p1, v0

    add-int/2addr p2, v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private updateInternal(Landroid/graphics/Insets;Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mFreeformAcessibleRegion:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/miui/bubbles/BubblePositioner;->getFreeFormAccessibleArea()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mFreeformRegion:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit16 v1, v1, 0xc8

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit16 v3, v3, -0xc8

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Insets;->left:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    iget v2, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget v1, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getBubbleSize()I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    invoke-static {}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getBubbleShownWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleShownPartSize:I

    return-void
.end method


# virtual methods
.method public adjustEdgeToAvoidIntersect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/bubbles/BubblePositioner;->adjustEdgeToAvoidIntersect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public adjustEdgeToAvoidIntersect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_0

    if-gez v5, :cond_1

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    if-ge v5, v6, :cond_1

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AETOI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " isReload = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isOnLeft = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MiuiBubbles.Positioner"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    if-eqz v5, :cond_3

    iget v7, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleShownPartSize:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    :cond_3
    iget-object v7, v0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleShownPartSize:I

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->right:I

    :goto_3
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-ne v7, v8, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustEdgeToAvoidIntersect bubbleRect error! mBubbleSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->left:I

    :cond_4
    invoke-direct {v0, v5}, Lcom/miui/bubbles/BubblePositioner;->getSidebarLineRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v7, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v9, v4

    :goto_4
    if-ge v9, v7, :cond_9

    iget-object v10, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    if-nez v10, :cond_6

    goto :goto_6

    :cond_6
    iget v11, v10, Landroid/graphics/Rect;->left:I

    if-gez v11, :cond_7

    move v11, v3

    goto :goto_5

    :cond_7
    move v11, v4

    :goto_5
    if-eq v11, v5, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    new-instance v3, Lcom/miui/bubbles/i;

    invoke-direct {v3}, Lcom/miui/bubbles/i;-><init>()V

    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AETOI: sideViewList "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_b

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    iget v14, v0, Lcom/miui/bubbles/BubblePositioner;->mMinBubbleSpace:I

    sub-int/2addr v13, v14

    iget-object v15, v0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v14

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-direct {v10, v11, v3, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lt v3, v11, :cond_a

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Lcom/miui/bubbles/BubblePositioner;->mMinBubbleSpace:I

    add-int/2addr v3, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    iget-object v7, v0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v3

    iget v8, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    if-lt v7, v8, :cond_c

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget-object v10, v0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v8, v3, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AETOI: availableRectList "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const v7, 0x7fffffff

    move v8, v4

    move v9, v7

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_11

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-static {v10, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v8, v10, Landroid/graphics/Rect;->top:I

    if-ge v5, v8, :cond_d

    :goto_9
    sub-int/2addr v8, v5

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_a

    :cond_d
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    if-le v5, v8, :cond_e

    goto :goto_9

    :cond_e
    :goto_a
    move v9, v7

    goto :goto_b

    :cond_f
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v1, Landroid/graphics/Rect;->top:I

    iget v13, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-le v9, v11, :cond_10

    move-object v3, v10

    move v9, v11

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_11
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AETOI: minDistance="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\tfinalAvailableRect="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v9, v7, :cond_13

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v7, :cond_12

    const-string v5, "AETOI: up"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    goto :goto_c

    :cond_12
    const-string v5, "AETOI: down"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    :goto_c
    sub-int/2addr v3, v5

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_13
    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AETOI: bubbleRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tScreenRegion="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tbubble="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public finalBounds(Lcom/miui/bubbles/Bubble;Lcom/miui/bubbles/data/FreeformMode;FF)Landroid/graphics/Rect;
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpl-float v4, p3, v4

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    int-to-float v7, v2

    div-float/2addr v7, v5

    cmpg-float v5, p4, v7

    if-gez v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    sget-object v7, Lcom/miui/bubbles/BubblePositioner$1;->$SwitchMap$com$miui$bubbles$data$FreeformMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v7, p2

    const/4 v7, 0x2

    if-eq p2, v6, :cond_8

    if-eq p2, v7, :cond_7

    const/4 v8, 0x3

    if-eq p2, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Lx4/g;->e()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Lcom/miui/bubbles/Bubble;->smallWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/2addr p2, v7

    iget-object p1, p1, Lcom/miui/bubbles/Bubble;->smallWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v7

    iget p3, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    div-int/lit8 p4, p3, 0x2

    sub-int v7, p2, p4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v7

    sub-int/2addr v3, p3

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    add-int/2addr v3, v7

    :goto_2
    if-eqz v5, :cond_4

    iget v2, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    add-int/2addr v2, p1

    goto :goto_3

    :cond_4
    iget v4, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, p1

    :goto_3
    sub-int/2addr v2, p4

    add-int p4, v3, p3

    add-int/2addr p3, v2

    invoke-virtual {v0, v3, v2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    if-le p2, p1, :cond_5

    move v1, v6

    :cond_5
    iget-object p1, p0, Lcom/miui/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, -0x1

    invoke-static {p1, p2, p3, p4, v1}, Landroid/util/MiuiMultiWindowUtils;->findNearestCorner(Landroid/content/Context;FFIZ)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_6
    iget-object p1, p1, Lcom/miui/bubbles/Bubble;->smallWindowBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/miui/bubbles/BubblePositioner;->calculateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    :goto_4
    iget p1, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    invoke-static {v0, p1, p1}, Lcom/miui/bubbles/BubblePositioner;->scaleSizeCenter(Landroid/graphics/Rect;II)V

    goto :goto_6

    :cond_7
    iget-object p1, p1, Lcom/miui/bubbles/Bubble;->mAppBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/miui/bubbles/BubblePositioner;->calculateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    goto :goto_6

    :cond_8
    float-to-int p2, p4

    iget p3, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    if-eqz v4, :cond_9

    div-int/lit8 p4, p3, 0x2

    add-int/2addr v3, p4

    iget p4, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    sub-int/2addr v3, p4

    div-int/2addr p3, v7

    sub-int/2addr v3, p3

    goto :goto_5

    :cond_9
    neg-int p4, p3

    div-int/2addr p4, v7

    iget v1, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    add-int/2addr p4, v1

    div-int/2addr p3, v7

    sub-int v3, p4, p3

    :goto_5
    iget p3, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleGap:I

    sub-int/2addr v2, p3

    iget p4, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    sub-int/2addr v2, p4

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget p3, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    add-int p4, v3, p3

    add-int/2addr p3, p2

    invoke-virtual {v0, v3, p2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/bubbles/BubblePositioner;->adjustEdgeToAvoidIntersect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;)V

    :goto_6
    return-object v0
.end method

.method public finalModeIsEdge(FFFFFF)Z
    .locals 4

    float-to-double p4, p5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p4

    float-to-double v2, p6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr p4, v0

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    double-to-float p4, p4

    const/high16 p5, 0x447a0000    # 1000.0f

    cmpg-float p4, p4, p5

    const/4 p5, 0x1

    if-gez p4, :cond_0

    move p4, p5

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/bubbles/BubblePositioner;->isOutsideScreen(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    return p5

    :cond_1
    if-nez p4, :cond_2

    const/16 p1, 0x64

    :goto_1
    invoke-direct {p0, p3, p1}, Lcom/miui/bubbles/BubblePositioner;->outerScreen(FI)Z

    move-result p1

    return p1

    :cond_2
    const/16 p1, 0xc8

    goto :goto_1
.end method

.method public getAllowablePosBounds()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    iget v2, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleShownPartSize:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    return-object v0
.end method

.method public getAvailableRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mAvailableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBubbleRect(Lcom/miui/bubbles/Bubble;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method

.method public getBubbleSize()I
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleSize:I

    return v0
.end method

.method public guessMode(FLcom/miui/bubbles/data/FreeformMode;)Lcom/miui/bubbles/data/FreeformMode;
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Lcom/miui/bubbles/BubblePositioner;->outerScreen(FI)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/bubbles/data/FreeformMode;->MODE_EDGE:Lcom/miui/bubbles/data/FreeformMode;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public isOutsideScreen(FF)Z
    .locals 2

    const/high16 v0, -0x3c380000    # -400.0f

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/miui/bubbles/BubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBubbleRemoved(Lcom/miui/bubbles/Bubble;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setBubbleRect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update()V
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/BubblePositioner;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {v0}, Landroidx/window/layout/c;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Landroidx/core/view/m3;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update positioner: insets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiBubbles.Positioner"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/miui/bubbles/BubblePositioner;->updateInternal(Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    return-void
.end method

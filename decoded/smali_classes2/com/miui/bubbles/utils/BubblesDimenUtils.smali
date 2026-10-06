.class public Lcom/miui/bubbles/utils/BubblesDimenUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DP_BUBBLES_CORNER_RADIUS:I = 0x12

.field private static final DP_BUBBLES_SHOWN_WIDTH:I = 0x18

.field private static final DP_BUBBLE_GAP:I = 0x23

.field private static final DP_BUBBLE_ICON_SIZE:I = 0x38

.field private static final DP_BUBBLE_SIZE:I = 0x40

.field private static final DP_MINI_GAP_BUBBLES:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBubbleCornerRadius()I
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getDimensWithoutAutoDensity(I)I

    move-result v0

    return v0
.end method

.method public static getBubbleGap()I
    .locals 1

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getDimensWithoutAutoDensity(I)I

    move-result v0

    return v0
.end method

.method public static getBubbleIconSize()I
    .locals 1

    const/16 v0, 0x38

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getDimensWithoutAutoDensity(I)I

    move-result v0

    return v0
.end method

.method public static getBubbleShownWidth()I
    .locals 1

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getDimensWithoutAutoDensity(I)I

    move-result v0

    return v0
.end method

.method public static getBubbleSize()I
    .locals 1

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getDimensWithoutAutoDensity(I)I

    move-result v0

    return v0
.end method

.method public static getBubbleSpaceMiniGap()I
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubblesDimenUtils;->getDimensWithoutAutoDensity(I)I

    move-result v0

    return v0
.end method

.method private static getDimensWithoutAutoDensity(I)I
    .locals 1

    invoke-static {}, Lmiuix/autodensity/f;->j()Lmiuix/autodensity/f;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/f;->k()Lmiuix/autodensity/d;

    move-result-object v0

    iget v0, v0, Lmiuix/view/f;->e:F

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

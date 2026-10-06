.class public Lcom/miui/powercenter/batteryhistory/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I

.field b:[Landroid/graphics/Paint;

.field c:I

.field d:[I

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/t;->d:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/powercenter/batteryhistory/t;->e:I

    if-eq p2, v1, :cond_2

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/t;->c:I

    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/t;->f:I

    if-ne p1, v2, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/powercenter/batteryhistory/t;->c:I

    :cond_1
    iget v1, p0, Lcom/miui/powercenter/batteryhistory/t;->c:I

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/powercenter/batteryhistory/t;->c:I

    iput p2, p0, Lcom/miui/powercenter/batteryhistory/t;->e:I

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/t;->f:I

    :cond_2
    return-void
.end method

.method public b(Landroid/graphics/Canvas;IIIZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    add-int v2, v1, p4

    const/4 v3, 0x0

    move/from16 v5, p2

    move v4, v3

    :goto_0
    iget v6, v0, Lcom/miui/powercenter/batteryhistory/t;->c:I

    if-ge v3, v6, :cond_3

    iget-object v6, v0, Lcom/miui/powercenter/batteryhistory/t;->d:[I

    aget v6, v6, v3

    const v7, 0xffff

    and-int/2addr v7, v6

    if-eqz p5, :cond_0

    sub-int v7, p2, v7

    :cond_0
    const/high16 v8, -0x10000

    and-int/2addr v6, v8

    shr-int/lit8 v6, v6, 0x10

    if-eqz v4, :cond_2

    iget-object v8, v0, Lcom/miui/powercenter/batteryhistory/t;->b:[Landroid/graphics/Paint;

    array-length v9, v8

    if-lt v4, v9, :cond_1

    array-length v4, v8

    add-int/lit8 v4, v4, -0x1

    :cond_1
    int-to-float v10, v5

    int-to-float v11, v1

    int-to-float v12, v7

    int-to-float v13, v2

    aget-object v14, v8, v4

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    move v5, v7

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c(I)V
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/t;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/powercenter/batteryhistory/t;->a(II)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    if-lez p1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/t;->d:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/t;->d:[I

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/t;->c:I

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/t;->e:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/t;->f:I

    return-void
.end method

.method public e([I)V
    .locals 3

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/t;->a:[I

    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/t;->b:[Landroid/graphics/Paint;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/t;->b:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/t;->b:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/t;->b:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

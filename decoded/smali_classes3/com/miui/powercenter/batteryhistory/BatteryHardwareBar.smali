.class public Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;
    }
.end annotation


# instance fields
.field a:Lcom/miui/powercenter/batteryhistory/t;

.field b:Landroid/text/TextPaint;

.field c:Landroid/graphics/Path;

.field d:Landroid/graphics/Path;

.field e:Landroid/graphics/Path;

.field f:Landroid/graphics/Path;

.field g:Landroid/graphics/Path;

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:Z

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/miui/powercenter/batteryhistory/t;

    invoke-direct {p2}, Lcom/miui/powercenter/batteryhistory/t;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->a:Lcom/miui/powercenter/batteryhistory/t;

    new-instance p2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->c:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->d:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->e:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->f:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->g:Landroid/graphics/Path;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->r:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->a:Lcom/miui/powercenter/batteryhistory/t;

    const/4 v1, 0x7

    new-array v1, v1, [I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060c05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060c06

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060c07

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v4, 0x2

    aput v2, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060c08

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v4, 0x3

    aput v2, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060c09

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v4, 0x4

    aput v2, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060c0a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v4, 0x5

    aput v2, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060c0b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v4, 0x6

    aput v2, v1, v4

    invoke-virtual {p2, v1}, Lcom/miui/powercenter/batteryhistory/t;->e([I)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p2, Landroid/text/TextPaint;->density:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070263

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    const-string p2, "mipro"

    invoke-static {p2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f060b94

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const-string p1, "ro.radio.noril"

    invoke-static {p1, v3}, Lx4/v1;->a(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->q:Z

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->a()V

    return-void
.end method

.method private d(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->k:I

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->h:I

    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method a()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070261

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->j:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->i:I

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->j:I

    add-int v3, v1, v2

    add-int/2addr v3, v0

    iget-boolean v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->q:Z

    if-nez v4, :cond_0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    add-int v0, v1, v2

    :goto_0
    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->p:I

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->p:I

    :goto_1
    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->m:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->m:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->n:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->o:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->l:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->k:I

    return-void
.end method

.method b(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->c()Z

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->q:Z

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->p:I

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->a:Lcom/miui/powercenter/batteryhistory/t;

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->h:I

    move-object v1, p1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/powercenter/batteryhistory/t;->b(Landroid/graphics/Canvas;IIIZ)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v6

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->p:I

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->j:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lme/w;->Y(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f060bb6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1203a0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v6

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->m:I

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->j:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->f:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1203a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v6

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->n:I

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->j:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->h:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1203a4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->o:I

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->j:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->l:I

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->j:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060bb7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12039f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->k:I

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->j:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public c()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->r:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar$a;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;Ljava/util/List;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->d(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->a:Lcom/miui/powercenter/batteryhistory/t;

    invoke-virtual {p2, p1}, Lcom/miui/powercenter/batteryhistory/t;->d(I)V

    return-void
.end method

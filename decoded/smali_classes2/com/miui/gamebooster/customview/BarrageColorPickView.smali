.class public Lcom/miui/gamebooster/customview/BarrageColorPickView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/customview/BarrageColorPickView$a;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[I

.field private g:[I

.field private h:Lcom/miui/gamebooster/customview/BarrageColorPickView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/customview/BarrageColorPickView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/customview/BarrageColorPickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x42100000    # 36.0f

    invoke-static {p2, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p3, v0}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p3

    const/4 v1, 0x2

    mul-int/2addr p3, v1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p2, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p3

    mul-int/2addr p3, v1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41900000    # 18.0f

    invoke-static {p2, p3}, La8/k2;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->e:I

    new-array p2, p1, [I

    const p3, 0x7f06031b

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p3

    const/4 v0, 0x0

    aput p3, p2, v0

    const p3, 0x7f06031c

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p3

    const/4 v2, 0x1

    aput p3, p2, v2

    const p3, 0x7f06031d

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p3

    aput p3, p2, v1

    const p3, 0x7f06031e

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p3

    const/4 v3, 0x3

    aput p3, p2, v3

    const p3, 0x7f06031f

    invoke-direct {p0, p3}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p3

    const/4 v4, 0x4

    aput p3, p2, v4

    iput-object p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    new-array p1, p1, [I

    const p2, 0x7f060320

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p2

    aput p2, p1, v0

    const p2, 0x7f060321

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p2

    aput p2, p1, v2

    const p2, 0x7f060322

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p2

    aput p2, p1, v1

    const p2, 0x7f060323

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p2

    aput p2, p1, v3

    const p2, 0x7f060324

    invoke-direct {p0, p2}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p2

    aput p2, p1, v4

    iput-object p1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->g:[I

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    array-length p1, p1

    if-ge v0, p1, :cond_0

    new-instance p1, Lcom/miui/gamebooster/customview/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    aget v3, p2, v0

    iget v4, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->a:I

    iget v5, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->b:I

    iget-object p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->g:[I

    aget v6, p2, v0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/customview/i;-><init>(Landroid/content/Context;IIII)V

    new-instance p2, Lcom/miui/gamebooster/customview/d;

    invoke-direct {p2, p0, v0}, Lcom/miui/gamebooster/customview/d;-><init>(Lcom/miui/gamebooster/customview/BarrageColorPickView;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/customview/BarrageColorPickView;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->d(ILandroid/view/View;)V

    return-void
.end method

.method private c(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private synthetic d(ILandroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->h:Lcom/miui/gamebooster/customview/BarrageColorPickView$a;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    aget v0, v0, p1

    invoke-interface {p2, p1, v0}, Lcom/miui/gamebooster/customview/BarrageColorPickView$a;->a(II)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->setColorSelected(I)V

    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    return p1

    :cond_0
    const p1, 0x7f060e6a

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c(I)I

    move-result p1

    return p1
.end method

.method public getNormalColorList()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    iget p1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->a:I

    iget p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->b:I

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    move v0, p5

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p4, v1, :cond_2

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v2, p5, p1

    add-int v3, p2, v0

    invoke-virtual {v1, p5, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget v1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c:I

    add-int/2addr v1, p1

    add-int/2addr p5, v1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    iget v1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->d:I

    rem-int v1, p4, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eq p4, v1, :cond_0

    iget p5, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->b:I

    iget v1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->e:I

    add-int/2addr p5, v1

    add-int/2addr v0, p5

    move p5, p3

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget p1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->d:I

    iget-object p2, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    iget v0, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->c:I

    mul-int/2addr p2, v0

    iget v0, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->a:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    array-length v0, p1

    iget v1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->d:I

    div-int/2addr v0, v1

    array-length p1, p1

    rem-int/2addr p1, v1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget p1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->b:I

    mul-int/2addr p1, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->e:I

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAvailable(Z)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/customview/i;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gamebooster/customview/i;->b()V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/miui/gamebooster/customview/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/customview/BarrageColorPickView;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to setDisableStyle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", disable : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setColorPickListener(Lcom/miui/gamebooster/customview/BarrageColorPickView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->h:Lcom/miui/gamebooster/customview/BarrageColorPickView$a;

    return-void
.end method

.method public setColorSelected(I)V
    .locals 4

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->f:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/customview/i;

    if-ne v1, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/customview/i;->setSelect(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/gamebooster/customview/BarrageColorPickView;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail select color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.class Lcom/miui/applicationlock/FirstUseAppLockActivity$c;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/FirstUseAppLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/FirstUseAppLockActivity;


# direct methods
.method public constructor <init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity$c;->a:Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-direct {p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget p4, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p4, p7

    add-int/2addr p4, p7

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, p4

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    add-int/lit8 p1, p1, 0x18

    return p1
.end method

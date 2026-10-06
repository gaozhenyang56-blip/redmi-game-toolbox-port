.class public Lne/d;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Z

.field private b:[I

.field private c:F

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lne/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lne/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0717c6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lne/d;->c:F

    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 p3, 0x8

    new-array p3, p3, [F

    iget v0, p0, Lne/d;->c:F

    const/4 v1, 0x0

    aput v0, p3, v1

    const/4 v1, 0x1

    aput v0, p3, v1

    const/4 v1, 0x2

    aput v0, p3, v1

    const/4 v1, 0x3

    aput v0, p3, v1

    const/4 v1, 0x4

    aput v0, p3, v1

    const/4 v1, 0x5

    aput v0, p3, v1

    const/4 v1, 0x6

    aput v0, p3, v1

    const/4 v1, 0x7

    aput v0, p3, v1

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p3, p0, Lne/d;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p3, p0, Lne/d;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060bb4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method


# virtual methods
.method public getCorner()F
    .locals 1

    iget v0, p0, Lne/d;->c:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lne/d;->a:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lne/d;->a:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lne/d;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lne/d;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lne/d;->b:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lne/d;->b:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setCorner(F)V
    .locals 0

    iput p1, p0, Lne/d;->c:F

    return-void
.end method

.method public setImageResources([I)V
    .locals 0

    iput-object p1, p0, Lne/d;->b:[I

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lne/d;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lne/d;->setChecked(Z)V

    return-void
.end method

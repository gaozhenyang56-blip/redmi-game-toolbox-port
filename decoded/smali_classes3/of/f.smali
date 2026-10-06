.class public Lof/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:[I

.field protected static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lof/f;->a:[I

    new-array v0, v2, [I

    sput-object v0, Lof/f;->b:[I

    return-void
.end method

.method public static a(FII)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([FF)V

    new-instance p0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-static {p0, p1}, Lof/f;->b(Landroid/graphics/drawable/shapes/RoundRectShape;I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-static {p0, p2}, Lof/f;->b(Landroid/graphics/drawable/shapes/RoundRectShape;I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p0

    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v0, Lof/f;->a:[I

    invoke-virtual {p2, v0, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object p0, Lof/f;->b:[I

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method private static b(Landroid/graphics/drawable/shapes/RoundRectShape;I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

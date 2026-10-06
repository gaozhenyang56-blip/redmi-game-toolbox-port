.class Lcom/miui/gamebooster/view/IncomingCallFloatBall$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/view/IncomingCallFloatBall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/view/IncomingCallFloatBall;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall$c;->a:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;Lcom/miui/gamebooster/view/IncomingCallFloatBall$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall$c;-><init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;)V

    return-void
.end method


# virtual methods
.method public a(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, p2

    iget p3, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    float-to-int p1, v1

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroid/graphics/Point;

    check-cast p3, Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gamebooster/view/IncomingCallFloatBall$c;->a(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

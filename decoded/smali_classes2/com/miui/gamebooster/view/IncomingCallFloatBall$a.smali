.class Lcom/miui/gamebooster/view/IncomingCallFloatBall$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/view/IncomingCallFloatBall;->d(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/view/IncomingCallFloatBall;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall$a;->a:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall$a;->a:Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->h(II)V

    return-void
.end method

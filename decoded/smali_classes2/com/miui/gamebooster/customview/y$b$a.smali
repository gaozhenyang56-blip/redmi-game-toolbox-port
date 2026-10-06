.class Lcom/miui/gamebooster/customview/y$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y$b;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/y$b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$b$a;->a:Lcom/miui/gamebooster/customview/y$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$b$a;->a:Lcom/miui/gamebooster/customview/y$b;

    iget-object v0, v0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->k(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/customview/VoiceModeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$b$a;->a:Lcom/miui/gamebooster/customview/y$b;

    iget-object v0, v0, Lcom/miui/gamebooster/customview/y$b;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/y;->k(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/customview/VoiceModeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/VoiceModeView;->setProgress(F)V

    :cond_0
    return-void
.end method

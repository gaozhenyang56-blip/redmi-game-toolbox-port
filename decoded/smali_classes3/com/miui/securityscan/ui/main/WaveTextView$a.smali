.class Lcom/miui/securityscan/ui/main/WaveTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/WaveTextView;->d(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/securityscan/ui/main/WaveTextView;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/WaveTextView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView$a;->b:Lcom/miui/securityscan/ui/main/WaveTextView;

    iput p2, p0, Lcom/miui/securityscan/ui/main/WaveTextView$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView$a;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView$a;->b:Lcom/miui/securityscan/ui/main/WaveTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/securityscan/ui/main/WaveTextView;->c(Lcom/miui/securityscan/ui/main/WaveTextView;F)F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView$a;->b:Lcom/miui/securityscan/ui/main/WaveTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/securityscan/ui/main/WaveTextView;->b(Lcom/miui/securityscan/ui/main/WaveTextView;F)F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView$a;->b:Lcom/miui/securityscan/ui/main/WaveTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/securityscan/ui/main/WaveTextView;->a(Lcom/miui/securityscan/ui/main/WaveTextView;F)F

    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView$a;->b:Lcom/miui/securityscan/ui/main/WaveTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

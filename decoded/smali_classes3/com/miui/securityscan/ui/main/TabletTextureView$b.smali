.class Lcom/miui/securityscan/ui/main/TabletTextureView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/TabletTextureView;->s(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/main/TabletTextureView;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/TabletTextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/TabletTextureView$b;->a:Lcom/miui/securityscan/ui/main/TabletTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/TabletTextureView$b;->a:Lcom/miui/securityscan/ui/main/TabletTextureView;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/ui/main/TabletTextureView;->setRenderState(F)V

    return-void
.end method

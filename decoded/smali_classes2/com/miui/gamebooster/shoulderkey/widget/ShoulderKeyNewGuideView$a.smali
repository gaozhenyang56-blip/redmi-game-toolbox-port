.class Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;
.super La8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;->g(Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic b:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic c:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;->c:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;

    iput-object p2, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p3, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, La8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;->c:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyNewGuideView$a;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->n()V

    :cond_0
    return-void
.end method

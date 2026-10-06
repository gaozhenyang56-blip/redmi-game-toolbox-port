.class Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$a;
.super La8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$a;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;

    invoke-direct {p0}, La8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$a;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView$a;->a:Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;

    invoke-static {p1}, Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;->f(Lcom/miui/gamebooster/shoulderkey/widget/ShoulderKeyGuideView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->n()V

    :cond_0
    return-void
.end method

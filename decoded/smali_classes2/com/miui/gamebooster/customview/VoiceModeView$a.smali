.class Lcom/miui/gamebooster/customview/VoiceModeView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/VoiceModeView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/VoiceModeView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/VoiceModeView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView$a;->a:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/VoiceModeView$a;->a:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/VoiceModeView;->a(Lcom/miui/gamebooster/customview/VoiceModeView;)Lcom/miui/gamebooster/customview/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/h;->g(I)V

    return-void
.end method

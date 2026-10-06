.class Lcom/miui/gamebooster/customview/VoiceModeView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView$b;->a:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView$b;->a:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/VoiceModeView;->a(Lcom/miui/gamebooster/customview/VoiceModeView;)Lcom/miui/gamebooster/customview/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/customview/h;->g(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/VoiceModeView$b;->a:Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/VoiceModeView;->a(Lcom/miui/gamebooster/customview/VoiceModeView;)Lcom/miui/gamebooster/customview/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/customview/h;->g(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

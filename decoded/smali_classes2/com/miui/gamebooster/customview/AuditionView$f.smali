.class Lcom/miui/gamebooster/customview/AuditionView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/AuditionView;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/AuditionView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/AuditionView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$f;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$f;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->B(Lcom/miui/gamebooster/customview/AuditionView;)Lcom/miui/gamebooster/customview/RecordVolumView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$f;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->E(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/AuditionView$f;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/AuditionView;->F(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010047

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/AuditionView$f;->a:Lcom/miui/gamebooster/customview/AuditionView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/AuditionView;->G(Lcom/miui/gamebooster/customview/AuditionView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

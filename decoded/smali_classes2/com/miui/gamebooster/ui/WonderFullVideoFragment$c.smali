.class Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->v0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$c;->a:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

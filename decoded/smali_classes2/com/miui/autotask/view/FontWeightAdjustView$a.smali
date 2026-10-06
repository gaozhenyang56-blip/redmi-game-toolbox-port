.class Lcom/miui/autotask/view/FontWeightAdjustView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/view/FontWeightAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/view/FontWeightAdjustView;


# direct methods
.method constructor <init>(Lcom/miui/autotask/view/FontWeightAdjustView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView$a;->a:Lcom/miui/autotask/view/FontWeightAdjustView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView$a;->a:Lcom/miui/autotask/view/FontWeightAdjustView;

    invoke-static {p1, p2}, Lcom/miui/autotask/view/FontWeightAdjustView;->a(Lcom/miui/autotask/view/FontWeightAdjustView;I)I

    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView$a;->a:Lcom/miui/autotask/view/FontWeightAdjustView;

    invoke-static {p1}, Lcom/miui/autotask/view/FontWeightAdjustView;->c(Lcom/miui/autotask/view/FontWeightAdjustView;)F

    move-result p3

    invoke-static {p1, p3}, Lcom/miui/autotask/view/FontWeightAdjustView;->b(Lcom/miui/autotask/view/FontWeightAdjustView;F)F

    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView$a;->a:Lcom/miui/autotask/view/FontWeightAdjustView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView$a;->a:Lcom/miui/autotask/view/FontWeightAdjustView;

    invoke-static {p1}, Lcom/miui/autotask/view/FontWeightAdjustView;->d(Lcom/miui/autotask/view/FontWeightAdjustView;)Lcom/miui/autotask/view/FontWeightAdjustView$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView$a;->a:Lcom/miui/autotask/view/FontWeightAdjustView;

    invoke-static {p1}, Lcom/miui/autotask/view/FontWeightAdjustView;->d(Lcom/miui/autotask/view/FontWeightAdjustView;)Lcom/miui/autotask/view/FontWeightAdjustView$b;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/miui/autotask/view/FontWeightAdjustView$b;->a(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
